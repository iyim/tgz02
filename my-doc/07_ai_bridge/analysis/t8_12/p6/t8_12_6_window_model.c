/*
 * T8-12.6  R14 保护窗口策略：独立主机模型 + 断言测试
 *
 * 这不是生产代码，也不 include 生产源码。它把 `nlu_takeover.c` 里与
 * "两个 5 秒全局窗口" 相关的判定逻辑按语义等价地重写一遍，用于回答两个问题：
 *
 *   Q1 现状（POLICY_CURRENT，两个窗口是全局时间戳）是否会对**无关会话**误拦？
 *   Q2 改成"窗口按会话绑"（POLICY_SCOPED）能否消除误拦，同时**不引入 fail-open**？
 *
 * 两份策略共用同一套槽位/TTL/容量逻辑，只有窗口的作用域不同：
 *   CURRENT: failclosed_until_ms / degraded_until_ms 是全局量，任何"未登记"的
 *            session 在窗口内都会被丢。
 *   SCOPED : 同样的触发点，但窗口绑定到**触发它的那个 session key**，
 *            只有该 key 的"未登记"结果在窗口内被丢。
 *
 * 编译（主机，与生产二进制完全隔离）：
 *   gcc -O1 -Wall -Wextra -std=c99 -o window_model t8_12_6_window_model.c
 * 运行：
 *   ./window_model
 */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define T8_SLOTS        64
#define T8_KEY_MAX      40
#define T8_TTL_MS       30000
#define T8_WINDOW_MS    5000
#define T8_GRACE_MS     2000      /* 建议值：type=3 收尾后给同类结果的宽限 */

typedef struct {
    int  used;
    char key[T8_KEY_MAX];
    long long deadline_ms;
} slot_t;

typedef struct { char key[T8_KEY_MAX]; long long until_ms; } wkey_t;

typedef struct {
    int policy;                    /* 0 = CURRENT, 1 = SCOPED */
    slot_t slots[T8_SLOTS];
    long long failclosed_until_ms; /* CURRENT 专用 */
    long long degraded_until_ms;   /* CURRENT 专用 */
    wkey_t failclosed_keys[4];     /* SCOPED 专用：带窗口的 key */
    wkey_t degraded_keys[4];
    long long now;
    int mutex_ready;               /* 对应生产 st->mutex_ready */
} state_t;

static int checks = 0, fails = 0;

static void chk(int cond, const char *msg)
{
    checks++;
    printf("  [%s] %s\n", cond ? "PASS" : "FAIL", msg);
    if (!cond) fails++;
}

/* ---------- 槽位（两种策略共用） ---------- */

static slot_t *find(state_t *st, const char *key)
{
    int i;
    if (key == NULL || key[0] == '\0') return NULL;
    for (i = 0; i < T8_SLOTS; i++)
        if (st->slots[i].used && strcmp(st->slots[i].key, key) == 0)
            return &st->slots[i];
    return NULL;
}

static slot_t *alloc(state_t *st)
{
    int i;
    for (i = 0; i < T8_SLOTS; i++) {
        if (!st->slots[i].used) { st->slots[i].used = 1; return &st->slots[i]; }
        if (st->slots[i].deadline_ms <= st->now) { st->slots[i].used = 0; return &st->slots[i]; }
    }
    return NULL;
}

/* ---------- 窗口（唯一差异点） ---------- */

static void window_open(state_t *st, const char *key, int degraded)
{
    if (st->policy == 0) {
        if (degraded) st->degraded_until_ms = st->now + T8_WINDOW_MS;
        else          st->failclosed_until_ms = st->now + T8_WINDOW_MS;
    } else {
        wkey_t *arr = degraded ? st->degraded_keys : st->failclosed_keys;
        int i, slot = -1;
        for (i = 0; i < 4; i++) {
            if (arr[i].until_ms > st->now && strcmp(arr[i].key, key) == 0) { slot = i; break; }
            if (slot < 0 && arr[i].until_ms <= st->now) slot = i;   /* 复用过期项 */
        }
        if (slot < 0) slot = 0;
        snprintf(arr[slot].key, T8_KEY_MAX, "%s", key);
        arr[slot].until_ms = st->now + T8_WINDOW_MS;
    }
}

static int window_active(state_t *st, const char *key, int degraded)
{
    int i;
    if (st->policy == 0) {
        return degraded ? (st->degraded_until_ms > st->now)
                        : (st->failclosed_until_ms > st->now);
    }
    {
        wkey_t *arr = degraded ? st->degraded_keys : st->failclosed_keys;
        for (i = 0; i < 4; i++)
            if (arr[i].until_ms > st->now && strcmp(arr[i].key, key) == 0) return 1;
    }
    return 0;
}

/* ---------- 对外动作 ---------- */

/* onStream(isFinished=1)：登记"AI 结果应该被接管" */
static void on_final(state_t *st, const char *key)
{
    slot_t *s;
    int i;
    for (i = 0; i < T8_SLOTS; i++)                       /* 惰性清理过期槽 */
        if (st->slots[i].used && st->slots[i].deadline_ms <= st->now) st->slots[i].used = 0;

    s = find(st, key);
    if (s != NULL) { s->deadline_ms = st->now + T8_TTL_MS; return; }

    s = alloc(st);
    if (s == NULL) {                                     /* 容量耗尽 */
        window_open(st, key, 1);
        return;
    }
    memset(s, 0, sizeof(*s));
    s->used = 1;
    snprintf(s->key, T8_KEY_MAX, "%s", key);
    s->deadline_ms = st->now + T8_TTL_MS;
}

/* 收尾（type=3）：CURRENT 无对应实现；SCOPED 这里用"缩短截止时间"而不是立即清槽 */
static void on_teardown(state_t *st, const char *key)
{
    slot_t *s = find(st, key);
    if (s == NULL) return;
    if (st->policy == 0) {
        /* 现状：没有任何收尾钩子，只能等 30 s TTL */
        return;
    }
    /* 建议：不立即清槽（避免把仍在队列里的同轮结果放过去），把截止时间压到
     * min(原截止, now + GRACE)。宽限期后自然过期。 */
    if (s->deadline_ms > st->now + T8_GRACE_MS)
        s->deadline_ms = st->now + T8_GRACE_MS;
}

/* tg_nlp_cb 的判定（type 分类之后） */
static int should_drop(state_t *st, const char *key)
{
    slot_t *s;
    if (!st->mutex_ready) return 1;   /* 生产: if (!st->mutex_ready) return 1; */
    if (key != NULL && key[0] != '\0') {
        s = find(st, key);
        if (s != NULL && s->deadline_ms <= st->now) { s->used = 0; s = NULL; }
        if (s != NULL) return 1;                        /* 已登记：交给接管 */
    } else {
        window_open(st, "", 0);                         /* 会话缺失：开窗口 */
        return 1;                                       /* 当次必丢（fail-closed 不变） */
    }
    if (window_active(st, key, 0)) return 1;
    if (window_active(st, key, 1)) return 1;
    return 0;                                           /* 未登记且无窗口：放行 */
}

/* ---------- 场景 ---------- */

static void reset(state_t *st, int policy)
{
    memset(st, 0, sizeof(*st));
    st->policy = policy;
    st->mutex_ready = 1;
}

int main(void)
{
    state_t st;
    int i;

    printf("=== T8-12.6 R14 window policy model (host build) ===\n\n");

    /* S1：会话缺失（sid<=0 → key ""） */
    printf("[S1] 会话缺失：key=\"\" 触发 fail-closed 窗口\n");
    reset(&st, 0);
    chk(should_drop(&st, "") == 1, "CURRENT: 缺失会话当次被丢");
    chk(should_drop(&st, "42") == 1, "CURRENT: 无关会话 \"42\" 也被丢（误拦，复现）");
    reset(&st, 1);
    chk(should_drop(&st, "") == 1, "SCOPED : 缺失会话当次被丢（行为不变）");
    chk(should_drop(&st, "42") == 0, "SCOPED : 无关会话 \"42\" 不再被误拦");
    printf("\n");

    /* S2：容量耗尽 */
    printf("[S2] 槽位容量耗尽（64 槽全被占用后登记新会话 \"999\"）\n");
    reset(&st, 0);
    for (i = 0; i < T8_SLOTS; i++) { char k[16]; snprintf(k, sizeof(k), "s%d", i); on_final(&st, k); }
    on_final(&st, "999");
    chk(should_drop(&st, "999") == 1, "CURRENT: 溢出会话 \"999\" 被丢");
    chk(should_drop(&st, "12345") == 1, "CURRENT: 无关未登记会话也被丢（误拦，复现）");
    reset(&st, 1);
    for (i = 0; i < T8_SLOTS; i++) { char k[16]; snprintf(k, sizeof(k), "s%d", i); on_final(&st, k); }
    on_final(&st, "999");
    chk(should_drop(&st, "999") == 1, "SCOPED : 溢出会话 \"999\" 仍被丢（安全属性保留）");
    chk(should_drop(&st, "12345") == 0, "SCOPED : 无关未登记会话不再被误拦");
    printf("\n");

    /* S3：sid 复用（同一 key 在宽限期后重新登记） */
    printf("[S3] sid 复用：\"77\" 收尾后重新登记\n");
    reset(&st, 1);
    on_final(&st, "77");
    chk(should_drop(&st, "77") == 1, "SCOPED : 登记后立即命中（接管）");
    st.now += 50;
    chk(should_drop(&st, "77") == 1, "SCOPED : 同轮晚到的结果仍被接管（宽限期内不放行）");
    on_teardown(&st, "77");
    st.now += 100;
    chk(should_drop(&st, "77") == 1, "SCOPED : 收尾后 100ms 内仍命中（不放行，避免同轮漏拦）");
    st.now += T8_GRACE_MS + 1;
    chk(should_drop(&st, "77") == 0, "SCOPED : 宽限期过后自动放行（槽位不再长期占用）");
    on_final(&st, "77");
    chk(should_drop(&st, "77") == 1, "SCOPED : 新一轮登记后重新接管（sid 复用安全）");
    printf("\n");

    /* S4：正常会话结束 —— 与 S3 相同的宽限语义，但对照 CURRENT 的 TTL */
    printf("[S4] 正常结束：CURRENT 只能等 30s TTL\n");
    reset(&st, 0);
    on_final(&st, "88");
    on_teardown(&st, "88");
    st.now += 100;
    chk(should_drop(&st, "88") == 1, "CURRENT: 收尾后 100ms 仍命中（无收尾钩子）");
    st.now += T8_TTL_MS;
    chk(should_drop(&st, "88") == 0, "CURRENT: 直到 TTL 到期才放行（最长 30s 占用）");
    printf("\n");

    /* S5：takeover 状态异常 —— 窗口策略不改变 fail-closed */
    printf("[S5] 状态异常（mutex 不可用）：两条策略都必须 fail-closed\n");
    reset(&st, 0);
    st.mutex_ready = 0;
    chk(should_drop(&st, "42") == 1, "CURRENT: mutex 不可用 -> 已登记会话也丢（fail-closed）");
    chk(should_drop(&st, "") == 1, "CURRENT: mutex 不可用 -> 缺失会话也丢");
    reset(&st, 1);
    st.mutex_ready = 0;
    chk(should_drop(&st, "42") == 1, "SCOPED : mutex 不可用 -> 同样丢（窗口策略不参与该分支）");
    chk(should_drop(&st, "") == 1, "SCOPED : mutex 不可用 -> 缺失会话也丢");
    printf("\n");

    printf("RESULT: %s (checks=%d fails=%d)\n", fails == 0 ? "PASS" : "FAIL", checks, fails);
    return fails == 0 ? 0 : 1;
}
