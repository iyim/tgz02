/*
 * T8-12.7  R13 收尾时序 + R14 窗口作用域：独立主机模型与断言测试
 *
 * 这不是生产代码，也不 include 生产源码。它把 nlu_takeover.c / tg_nlp_cb 的
 * 会话表与判定逻辑按语义重写，用来回答三个问题：
 *
 *   Q1 type=3 收尾时，用"固定 2 秒宽限期"是否会漏掉晚到的同轮结果？
 *   Q2 如果完全不按时间做收尾过期（只保留 TTL + 下一次 on_final 重新判定），
 *      是否既不漏拦，也不会把新会话误判成旧会话？
 *   Q3 按 session key 绑定窗口后，空 key / 容量耗尽 / 快速复用 / 并发 / mutex
 *      异常这些边界是否仍保持 fail-closed？
 *
 * 编译：gcc -O1 -Wall -Wextra -std=c99 -pthread -o t8_12_7_lifecycle_model t8_12_7_lifecycle_model.c
 * 运行：./t8_12_7_lifecycle_model
 *
 * 断言数量在运行时统计，程序退出码 0 仅当全部通过。
 */

#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define SLOTS        64
#define KEY_MAX      40
#define TTL_MS       30000
#define WINDOW_MS    5000
#define GRACE_MS     2000          /* 第六阶段方案里的固定宽限期，仅用于对照 */

#define POLICY_GRACE 0             /* 第六阶段：收尾把 deadline 压到 now+2s */
#define POLICY_EPOCH 1             /* 第七阶段：收尾不动槽位，只记账 */

typedef struct {
    int used;
    char key[KEY_MAX];
    long long deadline_ms;
    unsigned gen;                  /* 本 key 的登记代次（仅观测/统计用） */
    long long closed_at_ms;        /* 收尾时刻，0 = 未收尾 */
} slot_t;

typedef struct { char key[KEY_MAX]; long long until_ms; } wkey_t;

typedef struct {
    int policy;
    int mutex_ready;
    long long now;
    slot_t slots[SLOTS];
    wkey_t win[2][4];              /* [0]=failclosed, [1]=degraded，按 key 绑定 */
    /* 计数（对应生产里的 st->*) */
    long marked, dropped, passed, unknown;
    long failclosed_passes, degraded_passes, expired;
    long teardown_seen, res_after_teardown, stale_after_new_final;
    pthread_mutex_t mu;
} state_t;

static int checks, fails;

#include <stdarg.h>
static void chk(int cond, const char *fmt, ...)
{
    char buf[512];
    va_list ap;
    va_start(ap, fmt);
    vsnprintf(buf, sizeof(buf), fmt, ap);
    va_end(ap);
    checks++;
    printf("  [%s] %s\n", cond ? "PASS" : "FAIL", buf);
    if (!cond) fails++;
}

static void lock(state_t *s) { pthread_mutex_lock(&s->mu); }
static void unlock(state_t *s) { pthread_mutex_unlock(&s->mu); }

static slot_t *find_locked(state_t *st, const char *key)
{
    int i;
    if (key == NULL || key[0] == '\0') return NULL;
    for (i = 0; i < SLOTS; i++)
        if (st->slots[i].used && strcmp(st->slots[i].key, key) == 0) return &st->slots[i];
    return NULL;
}

static slot_t *alloc_locked(state_t *st)
{
    int i;
    for (i = 0; i < SLOTS; i++) {
        if (!st->slots[i].used) return &st->slots[i];
        if (st->slots[i].deadline_ms <= st->now) { st->slots[i].used = 0; return &st->slots[i]; }
    }
    return NULL;
}

static void window_open(state_t *st, const char *key, int which)
{
    int i, slot = -1;
    for (i = 0; i < 4; i++) {
        if (st->win[which][i].until_ms > st->now && strcmp(st->win[which][i].key, key) == 0) { slot = i; break; }
        if (slot < 0 && st->win[which][i].until_ms <= st->now) slot = i;
    }
    if (slot < 0) slot = 0;
    snprintf(st->win[which][slot].key, KEY_MAX, "%s", key);
    st->win[which][slot].until_ms = st->now + WINDOW_MS;
}

static int window_active(state_t *st, const char *key, int which)
{
    int i;
    for (i = 0; i < 4; i++)
        if (st->win[which][i].until_ms > st->now && strcmp(st->win[which][i].key, key) == 0) return 1;
    return 0;
}

/* onStream(isFinished=1)：判 AI/本地，登记或清槽。
 * is_local = 1 表示识别出"本地指令"（本应放行给原厂）。 */
static void on_final(state_t *st, const char *key, int is_local)
{
    slot_t *s;
    lock(st);
    s = find_locked(st, key);
    if (is_local) {
        if (s != NULL) { s->used = 0; }
        st->passed++;
        unlock(st);
        return;
    }
    if (s != NULL) {
        /* ★ 权威重判：新一轮覆盖旧决定 */
        if (s->closed_at_ms != 0) st->stale_after_new_final++;
        s->gen++;
        s->deadline_ms = st->now + TTL_MS;
        s->closed_at_ms = 0;
        st->marked++;
        unlock(st);
        return;
    }
    s = alloc_locked(st);
    if (s == NULL) { window_open(st, key, 1); unlock(st); return; }
    memset(s, 0, sizeof(*s));
    s->used = 1;
    snprintf(s->key, KEY_MAX, "%s", key);
    s->gen = 1;
    s->deadline_ms = st->now + TTL_MS;
    st->marked++;
    unlock(st);
}

/* 收尾（type=3）：按策略区分 */
static void on_teardown(state_t *st, const char *key)
{
    slot_t *s;
    lock(st);
    st->teardown_seen++;
    s = find_locked(st, key);
    if (s == NULL) { unlock(st); return; }
    s->closed_at_ms = st->now;
    if (st->policy == POLICY_GRACE) {
        if (s->deadline_ms > st->now + GRACE_MS) s->deadline_ms = st->now + GRACE_MS;
    }
    /* POLICY_EPOCH：不动 deadline，也不动 used —— 收尾不改变"这一轮要不要拦" */
    unlock(st);
}

/* tg_nlp_cb 的判定（type 分类与 mode 判断之后调用） */
static int should_drop(state_t *st, const char *key)
{
    slot_t *s;
    int rc;
    lock(st);
    if (!st->mutex_ready) { unlock(st); return 1; }          /* fail-closed，不碰共享状态 */
    if (key == NULL || key[0] == '\0') {
        window_open(st, "", 0);
        st->failclosed_passes++;
        unlock(st);
        return 1;
    }
    s = find_locked(st, key);
    if (s != NULL && s->deadline_ms <= st->now) { s->used = 0; st->expired++; s = NULL; }
    if (s != NULL) {
        if (s->closed_at_ms != 0) st->res_after_teardown++;
        st->dropped++;
        rc = 1;
    } else if (window_active(st, key, 0)) { st->failclosed_passes++; rc = 1; }
    else if (window_active(st, key, 1))   { st->degraded_passes++; rc = 1; }
    else { st->unknown++; rc = 0; }
    unlock(st);
    return rc;
}

static void reset(state_t *st, int policy)
{
    memset(st, 0, sizeof(*st));
    st->policy = policy;
    st->mutex_ready = 1;
    pthread_mutex_init(&st->mu, NULL);
}

/* ---------------- R13：时序模型 ---------------- */

/*
 * 一轮语音的事件顺序（单线程 FIFO 队列 + 一个并发投递线程）：
 *   t=0      on_final(sid, AI)          -> 登记
 *   t=10     Handler 收到 what=7 结果    -> 排队，处理时刻 = 10 + L
 *   t=20     Handler 收到 what=1        -> 排队，处理时刻 = 20 + L
 *            what=1 处理时内联调用 type=3 收尾
 * 以及"并发晚到"结果：在处理完收尾之后 δ 毫秒才被投递。
 *
 * 断言：不论 L 多大，先于收尾投递的结果一定在收尾之前被处理（单线程 FIFO 模型），
 *       所以两种策略都命中；而晚到 δ 的结果，GRACE 在 δ>2s 时漏拦，EPOCH 不漏。
 */
/* 早到：结果在收尾之前被处理（单线程 FIFO 模型里 t=10+L 处就已处理） */
static int run_early(int policy, long long L)
{
    state_t st;
    int hit;
    reset(&st, policy);
    st.now = 0;      on_final(&st, "100", 0);
    st.now = 10 + L; hit = should_drop(&st, "100");     /* 结果先被处理 */
    st.now = 20 + L; on_teardown(&st, "100");           /* 收尾随后执行 */
    pthread_mutex_destroy(&st.mu);
    return hit;
}

/* 晚到：收尾已经执行完，delta 毫秒后才有一个并发投递的结果 */
static int run_late(int policy, long long delta)
{
    state_t st;
    int hit;
    reset(&st, policy);
    st.now = 0;  on_final(&st, "100", 0);
    st.now = 20; on_teardown(&st, "100");
    st.now = 20 + delta;
    hit = should_drop(&st, "100");
    pthread_mutex_destroy(&st.mu);
    return hit;
}
/* ---------------- R16 之外的边界场景（R14） ---------------- */

static void scenario_empty_key(void)
{
    state_t st;
    int i;
    printf("[B1] 空 key（session 缺失）多次触发，窗口按 key 绑定\n");
    reset(&st, POLICY_EPOCH);
    for (i = 0; i < 5; i++) {
        chk(should_drop(&st, "") == 1, "空 key 第 %d 次仍 fail-closed", i + 1);
        st.now += 10;
    }
    chk(should_drop(&st, "555") == 0, "空 key 的窗口不误伤具体会话 \"555\"");
    pthread_mutex_destroy(&st.mu);
}

static void scenario_capacity(void)
{
    state_t st;
    int i;
    char k[16];
    printf("[B2] 64 槽耗尽\n");
    reset(&st, POLICY_EPOCH);
    for (i = 0; i < SLOTS; i++) { snprintf(k, sizeof(k), "s%d", i); on_final(&st, k, 0); }
    on_final(&st, "overflow", 0);
    chk(should_drop(&st, "overflow") == 1, "溢出会话被 fail-closed 拦下");
    chk(should_drop(&st, "s0") == 1, "已有会话仍按登记拦截（不受溢出影响）");
    chk(should_drop(&st, "newcomer") == 0, "无关未登记会话不被误拦");
    pthread_mutex_destroy(&st.mu);
}

static void scenario_reuse(void)
{
    state_t st;
    printf("[B3] 同 sid 快速复用：收尾 -> 3s 后新一轮（AI）\n");
    reset(&st, POLICY_EPOCH);
    on_final(&st, "300", 0);
    chk(should_drop(&st, "300") == 1, "第一轮登记后命中");
    on_teardown(&st, "300");
    st.now += 3000;
    chk(should_drop(&st, "300") == 1, "收尾 3s 后、新一轮登记前：仍命中（不因收尾丢拦）");
    on_final(&st, "300", 0);
    chk(should_drop(&st, "300") == 1, "新一轮登记后仍命中（新代次接管）");
    st.now += 100;
    on_final(&st, "300", 1);            /* 新一轮被识别为本地指令 */
    chk(should_drop(&st, "300") == 0, "新一轮是本地指令 -> 清槽，云侧结果放行");
    pthread_mutex_destroy(&st.mu);
}

static void scenario_ttl(void)
{
    state_t st;
    printf("[B4] TTL 到界与重新登记\n");
    reset(&st, POLICY_EPOCH);
    on_final(&st, "400", 0);
    st.now += TTL_MS + 1;
    chk(should_drop(&st, "400") == 0, "TTL 到期后放行（唯一的时间判据就是 TTL）");
    on_final(&st, "400", 0);
    chk(should_drop(&st, "400") == 1, "到期后重新登记可再次接管（不残留旧窗口）");
    pthread_mutex_destroy(&st.mu);
}

static void scenario_mutex(void)
{
    state_t st;
    printf("[B5] mutex 不可用：必须 fail-closed\n");
    reset(&st, POLICY_EPOCH);
    on_final(&st, "600", 0);
    st.mutex_ready = 0;
    chk(should_drop(&st, "600") == 1, "已登记会话也拦（不碰共享状态）");
    chk(should_drop(&st, "") == 1, "空 key 也拦");
    chk(should_drop(&st, "never-seen") == 1, "未登记也拦（fail-closed 不退化）");
    pthread_mutex_destroy(&st.mu);
}

/* ---------------- 并发压测 ---------------- */

typedef struct { state_t *st; int tid; int iters; } worker_t;

static void *worker(void *arg)
{
    worker_t *w = arg;
    char k[16];
    int i;
    for (i = 0; i < w->iters; i++) {
        snprintf(k, sizeof(k), "k%d", (i * 7 + w->tid) % 97);
        switch ((i + w->tid) % 5) {
        case 0: on_final(w->st, k, 0); break;
        case 1: on_final(w->st, k, 1); break;
        case 2: on_teardown(w->st, k); break;
        case 3: {
            int d = should_drop(w->st, k);
            if (d != 0 && d != 1) { printf("  [FAIL] 非法判定值 %d\n", d); fails++; }
            break;
        }
        default:
            w->st->now += 1;                     /* 推进时钟 */
            if ((i & 0x3F) == 0) on_final(w->st, "", 0);
            break;
        }
    }
    return NULL;
}

static void scenario_concurrent(void)
{
    state_t st;
    pthread_t th[4];
    worker_t w[4];
    int i;
    printf("[C1] 4 线程并发登记/收尾/查询/空 key\n");
    reset(&st, POLICY_EPOCH);
    for (i = 0; i < 4; i++) { w[i].st = &st; w[i].tid = i; w[i].iters = 20000; }
    for (i = 0; i < 4; i++) pthread_create(&th[i], NULL, worker, &w[i]);
    for (i = 0; i < 4; i++) pthread_join(th[i], NULL);
    chk(fails == 0, "并发期间没有任何非法判定值");
    chk(st.marked > 0 && st.dropped > 0, "并发产生了登记(%ld)与命中(%ld)两个方向的计数",
        st.marked, st.dropped);
    chk(st.teardown_seen > 0, "并发覆盖了收尾路径(%ld 次)", st.teardown_seen);
    pthread_mutex_destroy(&st.mu);
}

int main(void)
{


    printf("=== T8-12.7 R13/R14 lifecycle model (host build) ===\n\n");

    printf("[A1] 提前处理：结果在收尾之前被处理（队列延迟 2500ms）\n");
    chk(run_early(POLICY_GRACE, 2500) == 1, "GRACE : 早到结果命中（与队列延迟无关）");
    chk(run_early(POLICY_EPOCH, 2500) == 1, "EPOCH : 早到结果命中");

    printf("[A2] 晚到 delta=2500ms（大于 2 秒宽限）\n");
    chk(run_late(POLICY_GRACE, 2500) == 0, "GRACE : delta>2s 时漏拦（放行给原厂）——2 秒假设被证伪");
    chk(run_late(POLICY_EPOCH, 2500) == 1, "EPOCH : 仍然命中（收尾不参与过期决策）");

    printf("[A3] 晚到 delta=100ms（小于 2 秒宽限）\n");
    chk(run_late(POLICY_GRACE, 100) == 1, "GRACE : delta<2s 时命中（只在阈值内有效）");
    chk(run_late(POLICY_EPOCH, 100) == 1, "EPOCH : 同样命中");

    printf("[A4] 提前处理：队列延迟 8000ms（远超 2s）\n");
    chk(run_early(POLICY_GRACE, 8000) == 1, "GRACE : 早到结果仍命中");
    chk(run_early(POLICY_EPOCH, 8000) == 1, "EPOCH : 早到结果仍命中");
    printf("\n");
    scenario_empty_key();
    printf("\n");
    scenario_capacity();
    printf("\n");
    scenario_reuse();
    printf("\n");
    scenario_ttl();
    printf("\n");
    scenario_mutex();
    printf("\n");
    scenario_concurrent();
    printf("\n");

    printf("RESULT: %s (checks=%d fails=%d)\n", fails == 0 ? "PASS" : "FAIL", checks, fails);
    return fails == 0 ? 0 : 1;
}
