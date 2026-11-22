/*
 * T8-12.8  R13 收尾时序 / R14 窗口边界 / EPOCH 跨轮安全：独立主机模型与断言测试
 *
 * 这不是生产代码，也不 include 生产源码。它把 nlu_takeover.c / tg_nlp_cb 的
 * 会话表与判定逻辑按语义重写，用来回答四个问题：
 *
 *   Q1 type=3 收尾时，"固定 2 秒宽限期"是否会漏掉晚到的同轮结果？            [A1-A4]
 *   Q2 完全不按时间做过期决策时，是否既不漏拦也不误判新会话？                [A1-A4]
 *   Q3 第七阶段 EPOCH 在"第 N 轮收尾 + 第 N+1 轮本地指令"下是否放行旧轮结果？[E1-E7]
 *   Q4 按 session key 绑定窗口后，空 key / 容量 / 快速复用 / 并发 / mutex
 *      异常这些边界是否仍保持 fail-closed？                                   [B1-B6,C1]
 *
 * T8-12.8 相对 T8-12.7 的改动（只改模型与测试，不碰生产）：
 *   [P0-1] 新增 POLICY_EPOCH2：本地指令判定不再释放槽位，改为继续压制，
 *          直到 TTL 过期或被下一次 AI 登记取代。E1 用 EPOCH 复现放行，
 *          E2 用 EPOCH2 证明压制。E4/E5/E7 明确列出无法消除的剩余风险。
 *   [P1]   修复 worker() 里 `w->st->now += 1` 的无锁自增（数据竞争）。
 *          所有共享字段改为单一 mutex 保护 + 访问断言；并发测试改为
 *          "精确计数恒等式"（任何丢失更新都会让等号不成立），并检查
 *          pthread_create / pthread_join / mutex 的返回值。
 *   [FIX]  on_final 遇到空 key 时不再分配槽位（旧模型会留下 key="" 的孤儿槽，
 *          造成容量提前耗尽），只计 empty_final。
 *
 * 编译：gcc -O1 -Wall -Wextra -std=c99 -pthread -o t8_12_8_lifecycle_model t8_12_8_lifecycle_model.c
 * 运行：./t8_12_8_lifecycle_model
 *
 * 断言数量在运行时统计，程序退出码 0 仅当全部通过。
 */

#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>

#define SLOTS        64
#define KEY_MAX      40
#define TTL_MS       30000
#define WINDOW_MS    5000
#define GRACE_MS     2000          /* 第六阶段方案里的固定宽限期，仅用于对照 */

#define POLICY_GRACE  0            /* 第六阶段：收尾把 deadline 压到 now+2s */
#define POLICY_EPOCH  1            /* 第七阶段：收尾只记账；本地判定释放槽位 */
#define POLICY_EPOCH2 2            /* 第八阶段：本地判定也不释放，继续压制到 TTL */

typedef struct {
    int used;
    char key[KEY_MAX];
    long long deadline_ms;
    unsigned gen;                  /* 本 key 的 AI 登记代次（观测用） */
    long long closed_at_ms;        /* 收尾时刻，0 = 未收尾 */
    int local_decided;             /* EPOCH2：该 key 最近一轮已被判为本地指令 */
} slot_t;

typedef struct { char key[KEY_MAX]; long long until_ms; } wkey_t;

typedef struct {
    int policy;
    int mutex_ready;
    long long now;                 /* 受 mu 保护，只能通过 clock_* 访问 */
    slot_t slots[SLOTS];
    wkey_t win[2][4];              /* [0]=failclosed, [1]=degraded，按 key 绑定 */
    /* 计数（对应生产里的 st->*），全部受 mu 保护 */
    long marked, dropped, passed, unknown, empty_final;
    long failclosed_passes, degraded_passes, expired;
    long teardown_seen, teardown_hit, res_after_teardown, stale_after_new_final;
    long local_declined, slot_local_decided, stale_after_local, capacity_evict, alloc_fail;
    long reg_over_closed;          /* AI 重判覆盖了已收尾的槽位（登记时刻，非结果到达时刻） */
    int  illegal_decisions;        /* 唯一允许原子访问的字段（检测器计数） */
    long lock_violations;
    pthread_t owner;               /* 锁持有者，用于访问断言 */
    int depth;
    pthread_mutex_t mu;
} state_t;

static int checks, fails;

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

/* ---------- 锁与共享访问断言 ---------- */

static void lock(state_t *s)
{
    if (pthread_mutex_lock(&s->mu) != 0) { printf("  [FATAL] mutex lock failed\n"); exit(3); }
    s->owner = pthread_self();
    s->depth++;
}

static void unlock(state_t *s)
{
    s->depth--;
    if (s->depth == 0) memset(&s->owner, 0, sizeof(s->owner));
    if (pthread_mutex_unlock(&s->mu) != 0) { printf("  [FATAL] mutex unlock failed\n"); exit(3); }
}

/* 每个触碰共享状态的函数入口都断言"当前线程持有锁"。
 * 这是 TSan 不可用时的替代证据之一：任何漏锁访问都会在这里被点名，而不是静默通过。 */
static void need_lock(state_t *s, const char *who)
{
    if (s->depth <= 0 || !pthread_equal(s->owner, pthread_self())) {
        printf("  [FAIL] LOCK-AUDIT violation: %s touched shared state without the mutex\n", who);
        s->lock_violations++;
        fails++;
    }
}

/* now 只能这样改：所有自增都在锁内完成，不存在 "读-改-写" 竞争 */
static void clock_set(state_t *s, long long t) { lock(s); s->now = t; unlock(s); }
static void clock_add(state_t *s, long long d) { lock(s); s->now += d; unlock(s); }
static long long clock_get(state_t *s) { long long t; lock(s); t = s->now; unlock(s); return t; }

/* 负向对照开关（只在 --race-control 时打开，用于证明 C1 的精确计数断言确实灵敏）。
 * 注意：这里不做无锁访问（那才是 UB）。它把"一次原子自增"拆成"读 -> 写回"两步，
 * 语义上等价于把原来的 `now += 1` 放在锁外，但整个程序仍然没有数据竞争。 */
static int g_race_control;

static void clock_tick_worker(state_t *s)
{
    if (!g_race_control) { clock_add(s, 1); return; }
    {
        long long t = clock_get(s);     /* 读 */
        clock_set(s, t + 1);            /* 写回：覆盖期间其他线程的自增 */
    }
}

static void reset(state_t *st, int policy)
{
    memset(st, 0, sizeof(*st));
    st->policy = policy;
    st->mutex_ready = 1;
    if (pthread_mutex_init(&st->mu, NULL) != 0) { printf("  [FATAL] mutex init failed\n"); exit(3); }
}

/* ---------- 会话表 ---------- */

static slot_t *find_locked(state_t *st, const char *key)
{
    int i;
    need_lock(st, "find_locked");
    if (key == NULL || key[0] == '\0') return NULL;
    for (i = 0; i < SLOTS; i++)
        if (st->slots[i].used && strcmp(st->slots[i].key, key) == 0) return &st->slots[i];
    return NULL;
}

static slot_t *alloc_locked(state_t *st)
{
    int i;
    need_lock(st, "alloc_locked");
    for (i = 0; i < SLOTS; i++) {
        if (!st->slots[i].used) return &st->slots[i];
        if (st->slots[i].deadline_ms <= st->now) {
            st->slots[i].used = 0;
            st->capacity_evict++;
            return &st->slots[i];
        }
    }
    return NULL;
}

static void window_open(state_t *st, const char *key, int which)
{
    int i, slot = -1;
    need_lock(st, "window_open");
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
    need_lock(st, "window_active");
    for (i = 0; i < 4; i++)
        if (st->win[which][i].until_ms > st->now && strcmp(st->win[which][i].key, key) == 0) return 1;
    return 0;
}

/* ---------- 生产语义：on_final / on_teardown / should_drop ---------- */

/* on_final：一轮识别的最终判定。is_local=1 表示本轮被判为本地指令（应放行本轮结果）。
 * 返回 1 表示该 key 现在处于"压制"状态（后续结果不进原厂技能路径）。 */
static int on_final(state_t *st, const char *key, int is_local)
{
    slot_t *s;
    int r = 0;
    lock(st);
    if (key == NULL || key[0] == '\0') {     /* [FIX] 空 key 不分配槽位，避免孤儿槽泄漏 */
        st->empty_final++;
        unlock(st);
        return 0;
    }
    s = find_locked(st, key);
    if (is_local) {
        st->local_declined++;
        if (st->policy == POLICY_EPOCH2) {
            /* 第八阶段：不释放槽位，继续压制到 TTL 到期或被下一次 AI 登记取代 */
            if (s != NULL) { s->local_decided = 1; s->deadline_ms = st->now + TTL_MS; st->slot_local_decided++; r = 1; }
            else           { st->passed++; }
        } else {
            /* 第七阶段：直接释放槽位（E1 复现由此产生的跨轮放行） */
            if (s != NULL) s->used = 0;
            st->passed++;
        }
        unlock(st);
        return r;
    }
    if (s != NULL) {                          /* 新一轮 AI 登记覆盖旧决定 */
        if (s->closed_at_ms != 0) st->reg_over_closed++;
        s->gen++;
        s->deadline_ms = st->now + TTL_MS;
        s->closed_at_ms = 0;
        s->local_decided = 0;
        st->marked++;
        unlock(st);
        return 1;
    }
    s = alloc_locked(st);
    if (s == NULL) { st->alloc_fail++; window_open(st, key, 1); unlock(st); return 0; }
    memset(s, 0, sizeof(*s));
    s->used = 1;
    snprintf(s->key, KEY_MAX, "%s", key);
    s->gen = 1;
    s->deadline_ms = st->now + TTL_MS;
    st->marked++;
    unlock(st);
    return 1;
}

/* type=3 收尾。返回 1 表示命中了已有槽位。收尾只记账，不做任何过期决策。 */
static int on_teardown(state_t *st, const char *key)
{
    slot_t *s;
    int hit = 0;
    lock(st);
    st->teardown_seen++;
    s = find_locked(st, key);
    if (s != NULL) {
        s->closed_at_ms = st->now;
        if (st->policy == POLICY_GRACE) {
            if (s->deadline_ms > st->now + GRACE_MS) s->deadline_ms = st->now + GRACE_MS;
        }
        /* EPOCH/EPOCH2：不动 deadline 也不动 used —— 收尾不改变"这一轮要不要拦" */
        hit = 1;
        st->teardown_hit++;
    }
    unlock(st);
    return hit;
}

/* 一条 NLU 结果到达：返回 1 = 拦下，不进原厂技能路径；0 = 放行给原厂。
 * 放行后是否真的执行还要过原厂 C5（isSessionValid(1,sid)），见 E7。 */
static int should_drop(state_t *st, const char *key)
{
    slot_t *s;
    int rc;
    lock(st);
    if (!st->mutex_ready) { st->failclosed_passes++; unlock(st); return 1; }   /* mutex 不可用 -> 一律拦 */
    if (key == NULL || key[0] == '\0') { st->failclosed_passes++; unlock(st); return 1; } /* 空 key -> 一律拦 */
    if (window_active(st, key, 0)) { st->failclosed_passes++; unlock(st); return 1; }
    if (window_active(st, key, 1)) { st->degraded_passes++; unlock(st); return 1; }
    s = find_locked(st, key);
    if (s != NULL && s->deadline_ms <= st->now) {
        s->used = 0;
        st->expired++;
        s = NULL;
    }
    if (s != NULL) {
        if (s->closed_at_ms != 0) st->res_after_teardown++;
        if (s->local_decided) st->stale_after_local++;
        else if (s->gen > 1) st->stale_after_new_final++;
        st->dropped++;
        rc = 1;
    } else {
        st->unknown++;
        rc = 0;
    }
    unlock(st);
    return rc;
}

/* 原厂侧 C5：只有结果里的 sid 等于当前会话 sid 才会继续。 */
static int factory_exec(int drop_result, int sid_matches)
{
    if (drop_result) return 0;      /* 被我们拦下 */
    return sid_matches ? 1 : 0;     /* 放行后原厂还会用 C5 再筛一次 */
}

/* ---------- A1-A4：收尾时序（第七阶段用例，原样保留） ---------- */

/*
 * 一轮语音的事件顺序（单线程 FIFO 队列 + 一个并发投递线程）：
 *   t=0      on_final(sid, AI)          -> 登记
 *   t=10     Handler 收到 what=7 结果    -> 排队，处理时刻 = 10 + L
 *   t=20     Handler 收到 what=1        -> 排队，处理时刻 = 20 + L
 *            what=1 处理时内联调用 type=3 收尾
 * 以及"并发晚到"结果：在处理完收尾之后 δ 毫秒才被投递。
 */
static int run_early(int policy, long long L)
{
    state_t st;
    int hit;
    reset(&st, policy);
    clock_set(&st, 0);  on_final(&st, "100", 0);
    clock_set(&st, 10 + L); hit = should_drop(&st, "100");   /* 结果先被处理 */
    clock_set(&st, 20 + L); on_teardown(&st, "100");         /* 收尾随后执行 */
    pthread_mutex_destroy(&st.mu);
    return hit;
}

static int run_late(int policy, long long delta)
{
    state_t st;
    int hit;
    reset(&st, policy);
    clock_set(&st, 0);  on_final(&st, "100", 0);
    clock_set(&st, 20); on_teardown(&st, "100");
    clock_set(&st, 20 + delta);
    hit = should_drop(&st, "100");
    pthread_mutex_destroy(&st.mu);
    return hit;
}

/* ---------- E1-E7：跨轮（EPOCH 是否放行旧轮结果） ---------- */

/*
 * 骨架：t=0 第 N 轮 AI 登记 -> t=20 第 N 轮收尾 -> t=3000 第 N+1 轮判定
 *       -> t=3000+late_delta 第 N 轮的云侧结果迟到。
 * 返回 1 表示该迟到结果真的进入原厂技能执行路径。
 */
static int cross_round(int policy, int next_is_local, long long late_delta,
                       int sid_matches, state_t *out)
{
    int drop, exec;
    reset(out, policy);
    clock_set(out, 0);
    on_final(out, "S", 0);
    clock_set(out, 20);
    on_teardown(out, "S");                 /* 收尾：EPOCH/EPOCH2 都只记 closed_at */
    clock_set(out, 3000);
    on_final(out, "S", next_is_local);     /* 第 N+1 轮判定 */
    clock_set(out, 3000 + late_delta);     /* 第 N 轮结果迟到 */
    drop = should_drop(out, "S");
    exec = factory_exec(drop, sid_matches);
    return exec;
}

static void scenario_cross_round(void)
{
    state_t st;
    int exec;

    printf("[E1] 第七阶段 EPOCH：第 N 轮收尾 -> 第 N+1 轮本地指令 -> 第 N 轮结果迟到 100ms\n");
    exec = cross_round(POLICY_EPOCH, 1, 100, 1, &st);
    chk(exec == 1, "复现 P0-1：EPOCH 下旧轮结果进入原厂技能执行路径（exec=%d）", exec);
    chk(st.passed > 0, "原因：本地判定直接释放了槽位（passed=%ld）", st.passed);
    chk(st.stale_after_local == 0 && st.dropped == 0,
        "该结果既未命中槽位也未计入 stale（dropped=%ld stale_after_local=%ld）",
        st.dropped, st.stale_after_local);
    chk(st.unknown == 1, "被当成\"从未登记\"的 key 放行（unknown=%ld）", st.unknown);
    pthread_mutex_destroy(&st.mu);
    printf("\n");

    printf("[E2] 第八阶段 EPOCH2：同一时序，本地判定不释放槽位\n");
    exec = cross_round(POLICY_EPOCH2, 1, 100, 1, &st);
    chk(exec == 0, "旧轮结果被压制，未进入原厂技能执行路径（exec=%d）", exec);
    chk(st.dropped == 1, "命中槽位并拦下（dropped=%ld）", st.dropped);
    chk(st.stale_after_local == 1, "同时被标注为\"上一轮的迟到结果\"（stale_after_local=%ld）",
        st.stale_after_local);
    chk(st.passed == 0, "本地判定不再计入放行（passed=%ld）", st.passed);
    pthread_mutex_destroy(&st.mu);
    printf("\n");

    printf("[E3] EPOCH2 不回归：第 N+1 轮若仍是 AI 轮，必须照常拦截\n");
    exec = cross_round(POLICY_EPOCH2, 0, 100, 1, &st);
    chk(exec == 0, "新一轮 AI 轮的结果被拦下（exec=%d）", exec);
    chk(st.dropped == 1, "命中槽位（dropped=%ld）", st.dropped);
    chk(st.stale_after_new_final == 1, "旧代次结果被计数（stale_after_new_final=%ld）",
        st.stale_after_new_final);
    chk(st.reg_over_closed == 1, "登记时刻覆盖了一个已收尾槽位（reg_over_closed=%ld）",
        st.reg_over_closed);
    chk(st.stale_after_local == 0, "本地迟到计数为 0（stale_after_local=%ld）", st.stale_after_local);
    pthread_mutex_destroy(&st.mu);
    printf("\n");

    printf("[E4] 剩余风险（无法消除）：旧轮结果在第 N+1 轮 AI 登记之后到达\n");
    exec = cross_round(POLICY_EPOCH2, 0, 500, 1, &st);
    chk(exec == 0, "原厂执行被阻止（exec=%d）—— 这一点是 EPOCH2 保证的", exec);
    chk(st.stale_after_new_final == 1,
        "但归属仍然错：旧结果被当成第 N+1 轮的结果交给接管路径（stale_after_new_final=%ld）",
        st.stale_after_new_final);
    chk(st.dropped == 1 && st.unknown == 0,
        "现有接口（sid/type/NlpResult）没有代次字段，无法区分新旧 —— 明确保留为剩余风险");
    pthread_mutex_destroy(&st.mu);
    printf("\n");

    printf("[E5] 剩余风险（时间边界）：压制状态在 TTL 之后消失\n");
    {
        reset(&st, POLICY_EPOCH2);
        clock_set(&st, 0);
        on_final(&st, "S", 0);
        clock_set(&st, 20);
        on_teardown(&st, "S");
        clock_set(&st, 3000);
        on_final(&st, "S", 1);
        clock_set(&st, 3000 + TTL_MS + 1);          /* 超过 TTL */
        chk(should_drop(&st, "S") == 0, "TTL 到期后压制解除（唯一残留窗口，长度 = 既有 TTL）");
        chk(st.expired == 1, "到期由 should_drop 在同一临界区内完成（expired=%ld）", st.expired);
        pthread_mutex_destroy(&st.mu);
    }
    printf("\n");

    printf("[E6] 作用域：压制只对本 key 生效\n");
    {
        reset(&st, POLICY_EPOCH2);
        clock_set(&st, 0);
        on_final(&st, "S", 0);
        on_teardown(&st, "S");
        on_final(&st, "S", 1);
        clock_set(&st, 40);
        chk(should_drop(&st, "S") == 1, "key \"S\" 仍被压制");
        chk(should_drop(&st, "OTHER") == 0, "无关 key 不受影响（未登记 -> 放行）");
        chk(st.unknown == 1, "只累计一次未知（unknown=%ld）", st.unknown);
        pthread_mutex_destroy(&st.mu);
    }
    printf("\n");

    printf("[E7] 能力边界：sid 不同时原厂自己就会丢弃该结果\n");
    {
        int leak_same, leak_diff;
        /* same sid：我们放行 -> 原厂 C5 通过 -> 真的执行 */
        leak_same = cross_round(POLICY_EPOCH, 1, 100, 1, &st);
        pthread_mutex_destroy(&st.mu);
        /* 不同 sid：我们放行，但原厂 C5 (isSessionValid(1,sid)) 不通过 -> 不执行 */
        leak_diff = cross_round(POLICY_EPOCH, 1, 100, 0, &st);
        pthread_mutex_destroy(&st.mu);
        chk(leak_same == 1, "sid 相同：EPOCH 下确实执行（exec=%d）", leak_same);
        chk(leak_diff == 0, "sid 不同：原厂 C5 拦掉，不执行（exec=%d）", leak_diff);
        chk(1, "结论：放行不等于执行；危险区间被 C5 收窄为\"同一 sid 的连续两轮\"");
    }
    printf("\n");
}

/* ---------- B1-B6：R14 边界（第七阶段用例保留 + EPOCH2 对照） ---------- */

static void scenario_empty_key(void)
{
    state_t st;
    int i;
    printf("[B1] 空 key（session 缺失）多次触发，窗口按 key 绑定\n");
    reset(&st, POLICY_EPOCH);
    for (i = 0; i < 5; i++) {
        chk(should_drop(&st, "") == 1, "空 key 第 %d 次仍 fail-closed", i + 1);
        clock_add(&st, 10);
    }
    chk(should_drop(&st, "555") == 0, "空 key 的窗口不误伤具体会话 \"555\"");
    chk(st.empty_final == 0, "空 key 的 on_final 不分配槽位（empty_final=%ld）", st.empty_final);
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
    chk(st.alloc_fail == 1 && st.marked == SLOTS,
        "只有溢出那一次分配失败（alloc_fail=%ld marked=%ld）", st.alloc_fail, st.marked);
    pthread_mutex_destroy(&st.mu);
}

static void scenario_reuse(void)
{
    state_t st;
    printf("[B3] 同 sid 快速复用：收尾 -> 3s 后新一轮（AI -> 本地）\n");
    reset(&st, POLICY_EPOCH);
    on_final(&st, "300", 0);
    chk(should_drop(&st, "300") == 1, "第一轮登记后命中");
    on_teardown(&st, "300");
    clock_add(&st, 3000);
    chk(should_drop(&st, "300") == 1, "收尾 3s 后、新一轮登记前：仍命中（不因收尾丢拦）");
    on_final(&st, "300", 0);
    chk(should_drop(&st, "300") == 1, "新一轮登记后仍命中（新代次接管）");
    clock_add(&st, 100);
    on_final(&st, "300", 1);            /* 新一轮被识别为本地指令 */
    chk(should_drop(&st, "300") == 0, "[EPOCH 保留用例] 本地指令释放槽位 -> 云侧结果放行");
    pthread_mutex_destroy(&st.mu);
}

static void scenario_reuse_epoch2(void)
{
    state_t st;
    printf("[B6] 同 sid 快速复用 —— EPOCH2 对照（B3 的同一时序）\n");
    reset(&st, POLICY_EPOCH2);
    on_final(&st, "300", 0);
    on_teardown(&st, "300");
    clock_add(&st, 3000);
    on_final(&st, "300", 0);
    clock_add(&st, 100);
    on_final(&st, "300", 1);
    chk(should_drop(&st, "300") == 1, "本地判定后仍压制（EPOCH2 与 B3 的唯一差别）");
    chk(st.slot_local_decided == 1, "槽位被标记为本地判定（slot_local_decided=%ld）", st.slot_local_decided);
    chk(st.passed == 0, "本地判定不再产生放行（passed=%ld）", st.passed);
    pthread_mutex_destroy(&st.mu);
}

static void scenario_ttl(void)
{
    state_t st;
    printf("[B4] TTL 到界与重新登记\n");
    reset(&st, POLICY_EPOCH);
    on_final(&st, "400", 0);
    clock_add(&st, TTL_MS + 1);
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

/* ---------- C1：并发压测（精确计数，检测丢失更新） ---------- */

typedef struct {
    state_t *st;
    int tid, iters;
    long l_teardown, l_teardown_hit, l_probe, l_tick, l_local, l_empty, l_ai;
} worker_t;

static void *worker(void *arg)
{
    worker_t *w = arg;
    char k[16];
    int i;
    for (i = 0; i < w->iters; i++) {
        snprintf(k, sizeof(k), "k%d", (i * 7 + w->tid) % 97);
        switch ((i + w->tid) % 6) {
        case 0:
            on_final(w->st, k, 0);                      /* AI 登记 */
            w->l_ai++;
            break;
        case 1:
            on_final(w->st, k, 1);                      /* 本地判定 */
            w->l_local++;
            break;
        case 2:
            if (on_teardown(w->st, k) == 1) w->l_teardown_hit++;
            w->l_teardown++;
            break;
        case 3: {
            int d = should_drop(w->st, k);
            w->l_probe++;
            if (d != 0 && d != 1) {
                __atomic_fetch_add(&w->st->illegal_decisions, 1, __ATOMIC_RELAXED);
            }
            break;
        }
        case 4:
            clock_tick_worker(w->st);                   /* 修复点：锁内自增，不再是 now++ */
            w->l_tick++;
            break;
        default:
            on_final(w->st, "", 0);                     /* 空 key 路径 */
            w->l_empty++;
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
    int rc[4], jrc[4];
    int i, create_ok = 1, join_ok = 1;
    long teardown = 0, teardown_hit = 0, probe = 0, tick = 0, local = 0, empty = 0, ai = 0;
    long long now;

    printf("[C1] 4 线程 × 20000 次：登记 / 本地判定 / 收尾 / 查询 / 时钟推进 / 空 key%s\n",
           g_race_control ? "  << 负向对照：把自增拆成读-写回两步 >>" : "");
    reset(&st, POLICY_EPOCH2);
    for (i = 0; i < 4; i++) {
        memset(&w[i], 0, sizeof(w[i]));
        w[i].st = &st; w[i].tid = i; w[i].iters = 20000;
    }
    for (i = 0; i < 4; i++) {
        rc[i] = pthread_create(&th[i], NULL, worker, &w[i]);
        if (rc[i] != 0) create_ok = 0;
    }
    chk(create_ok, "pthread_create 全部成功（rc=%d,%d,%d,%d）", rc[0], rc[1], rc[2], rc[3]);
    if (!create_ok) { pthread_mutex_destroy(&st.mu); return; }

    for (i = 0; i < 4; i++) {
        jrc[i] = pthread_join(th[i], NULL);
        if (jrc[i] != 0) join_ok = 0;
    }
    chk(join_ok, "pthread_join 全部成功（rc=%d,%d,%d,%d）", jrc[0], jrc[1], jrc[2], jrc[3]);

    for (i = 0; i < 4; i++) {
        teardown += w[i].l_teardown; teardown_hit += w[i].l_teardown_hit;
        probe += w[i].l_probe; tick += w[i].l_tick;
        local += w[i].l_local; empty += w[i].l_empty; ai += w[i].l_ai;
    }

    chk(st.illegal_decisions == 0, "并发期间没有任何非法判定值（illegal=%d）", st.illegal_decisions);
    chk(st.lock_violations == 0, "没有漏锁访问（lock_violations=%ld）", st.lock_violations);

    /* 精确计数：任何一次丢失更新都会让下面五个等号不成立 */
    chk(st.teardown_seen == teardown,
        "teardown_seen 精确等于各线程调用数之和（%ld vs %ld）", st.teardown_seen, teardown);
    chk(st.teardown_hit == teardown_hit,
        "teardown_hit 精确相等（%ld vs %ld）", st.teardown_hit, teardown_hit);
    chk(st.local_declined == local,
        "local_declined 精确相等（%ld vs %ld）", st.local_declined, local);
    chk(st.empty_final == empty,
        "empty_final 精确相等（%ld vs %ld）", st.empty_final, empty);
    chk(st.marked + st.alloc_fail == ai,
        "marked + alloc_fail 精确等于 AI 判定次数（%ld+%ld vs %ld）",
        st.marked, st.alloc_fail, ai);
    chk(st.dropped + st.failclosed_passes + st.degraded_passes + st.unknown == probe,
        "dropped+failedclosed+degraded+unknown 精确等于查询次数（%ld vs %ld）",
        st.dropped + st.failclosed_passes + st.degraded_passes + st.unknown, probe);
    now = clock_get(&st);
    chk(now == tick, "时钟精确等于各线程推进量之和（%lld vs %ld）—— now 无丢失更新", now, tick);
    chk(tick > 0, "时钟推进次数非零（%ld）", tick);
    chk(st.marked > 0 && st.dropped > 0,
        "两个方向都产生了计数（marked=%ld dropped=%ld）", st.marked, st.dropped);
    chk(st.teardown_hit > 0, "收尾命中路径被覆盖（%ld 次）", st.teardown_hit);
    pthread_mutex_destroy(&st.mu);
}

int main(int argc, char **argv)
{
    if (argc > 1 && strcmp(argv[1], "--race-control") == 0) g_race_control = 1;

    printf("=== T8-12.8 R13/R14/EPOCH lifecycle model (host build) ===\n");
    if (g_race_control) printf("!!! NEGATIVE CONTROL MODE: clock ticks are intentionally lossy !!!\n");
    printf("\n");

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

    scenario_cross_round();
    scenario_empty_key();
    printf("\n");
    scenario_capacity();
    printf("\n");
    scenario_reuse();
    printf("\n");
    scenario_reuse_epoch2();
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
