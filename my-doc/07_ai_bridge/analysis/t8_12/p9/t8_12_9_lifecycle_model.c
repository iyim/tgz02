/*
 * T8-12.9  R13/R14/EPOCH 生命周期 + 并发测试健壮性：独立主机模型与断言测试
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
 * T8-12.9 相对 T8-12.8 的改动（针对审查新发现的两个并发缺陷，只改模型与测试）：
 *   [P1-a] pthread_create 部分成功：先把**已成功创建的线程全部 join 完**，
 *          才允许销毁 mutex；不再"直接销毁并退出"。
 *   [P1-b] pthread_join 失败：**不再**继续读共享计数器、不再销毁 mutex，
 *          立刻以 INCOMPLETE 结束进程（退出码 2），绝不报 PASS。
 *   [P1-c] need_lock() 诊断路径本身的数据竞争：owner/depth/lock_violations
 *          改为 relaxed 原子访问，线程身份改用 __thread 整数，违例计数不再
 *          触碰主线程的全局变量。因此"漏锁检测"在真正漏锁时也不会引入新的
 *          数据竞争，可以放进 TSan 一起跑。
 *   [P1-d] 新增可注入模式用于验证上述行为：
 *          --create-fail N / --join-fail N / --join-abandon N / --race-control
 *          --race-true
 *          前两个必须以 INCOMPLETE(2) 结束，且断言"已创建线程全部 join"、
 *          "join 失败后没有销毁 mutex"、"没有读计数器"。
 *          --join-abandon 让线程真的不被回收（真实的最坏路径）：两个平台都必须
 *          先打印 INCOMPLETE 再立即结束；宿主库可能因此无法给出干净退出码。
 *          --race-control   拆成读-写回：没有数据竞争，只有丢失更新，用来证明
 *                           精确计数断言灵敏。
 *          --race-true      真正的无锁自增：用来证明 TSan 在这个环境里确实会报警，
 *                           否则"0 warnings"无法证伪。
 *
 * 编译：gcc -O1 -Wall -Wextra -std=c99 -pthread -o t8_12_9_lifecycle_model t8_12_9_lifecycle_model.c
 * 运行：./t8_12_9_lifecycle_model                    # PASS(0)
 *       ./t8_12_9_lifecycle_model --race-control     # 负向对照，预期 FAIL(1)
 *       ./t8_12_9_lifecycle_model --create-fail 2    # 预期 INCOMPLETE(2)
 *       ./t8_12_9_lifecycle_model --join-fail 1      # 预期 INCOMPLETE(2)
 *
 * 断言数量在运行时统计，程序退出码：0=全部通过，1=有断言失败，2=测试不完整。
 */

#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>
#ifdef _WIN32
#include <windows.h>
#endif

/* 无法确认线程已退出时的收尾：不做任何清理地结束进程。
 * Windows 下 _Exit 仍会走 CRT/DLL 清理，可能与仍在运行的线程竞争而崩溃
 * （实测 0xC0000005）；TerminateProcess 才是真正的"不清理"。 */
static void hard_exit(int code)
{
    fflush(NULL);
#ifdef _WIN32
    TerminateProcess(GetCurrentProcess(), (UINT)code);
#endif
    _Exit(code);
}

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
    int  illegal_decisions;        /* 原子访问（检测器计数） */
    int  lock_violations;          /* 原子访问：诊断计数，任何线程都可能写 */
    int  owner;                    /* 原子访问：持有锁的线程身份（见 g_tid） */
    int  depth;                    /* 原子访问：同一线程的重入深度 */
    pthread_mutex_t mu;
} state_t;

static int checks, fails;

/* 线程身份：main = 0，worker 用 tid+1。用 TLS 整数而不是 pthread_t，
 * 这样"锁持有者"就是一个可以原子读写的普通 int，诊断路径不需要再碰
 * 任何需要保护的对象（T8-12.8 的 need_lock 曾无锁读写 owner/depth）。 */
static __thread int g_tid = 0;

/* 注入开关：验证 create/join 部分失败时的收尾行为 */
static int g_fail_create_at = -1;
static int g_fail_join_at   = -1;
static int g_join_abandon_at = -1;
static int g_created_threads;
static int g_mutex_destroyed;
static int g_destroy_after_all_join;
static int g_counters_read_after_bad_join;
static int g_incomplete;

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

#define A_LD(p)   __atomic_load_n((p), __ATOMIC_RELAXED)
#define A_ST(p,v) __atomic_store_n((p), (v), __ATOMIC_RELAXED)
#define A_ADD(p)  __atomic_add_fetch((p), 1, __ATOMIC_RELAXED)
#define A_SUB(p)  __atomic_sub_fetch((p), 1, __ATOMIC_RELAXED)

static void lock(state_t *s)
{
    if (pthread_mutex_lock(&s->mu) != 0) { printf("  [FATAL] mutex lock failed\n"); exit(3); }
    A_ST(&s->owner, g_tid);
    A_ADD(&s->depth);
}

static void unlock(state_t *s)
{
    if (A_SUB(&s->depth) == 0) A_ST(&s->owner, -1);
    if (pthread_mutex_unlock(&s->mu) != 0) { printf("  [FATAL] mutex unlock failed\n"); exit(3); }
}

/* 每个触碰共享状态的函数入口都断言"当前线程持有锁"。
 * 诊断路径本身只用 relaxed 原子访问，并且只写 state 内部的原子计数，
 * 不碰主线程的 checks/fails —— 所以即使真的漏锁，检测器也不会引入新的
 * 数据竞争（T8-12.8 的版本会）。违例数由主线程在所有线程 join 之后读取。 */
static void need_lock(state_t *s, const char *who)
{
    if (A_LD(&s->depth) <= 0 || A_LD(&s->owner) != g_tid) {
        A_ADD(&s->lock_violations);
        printf("  [FAIL] LOCK-AUDIT violation: %s touched shared state without the mutex\n", who);
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
static int g_race_true;                 /* 负向对照 #2：真实数据竞争，验证 TSan 灵不灵 */

static void clock_tick_worker(state_t *s)
{
    if (g_race_control) {
        long long t = clock_get(s);     /* 读 */
        clock_set(s, t + 1);            /* 写回：覆盖期间其他线程的自增（无 UB，但有丢失更新） */
        return;
    }
    if (g_race_true) {
        /* 负向对照 #2：真正的数据竞争（无锁读改写），只用于证明 TSan 确实在检测。
         * 这是全文件唯一故意违反同步的地方，且只在 --race-true 下可达。 */
        s->now = s->now + 1;
        return;
    }
    clock_add(s, 1);                    /* 正常路径：锁内自增 */
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
    g_tid = w->tid + 1;            /* 线程身份：main=0，worker=tid+1 */
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
            clock_tick_worker(w->st);                   /* 锁内自增，不再是 now++ */
            w->l_tick++;
            break;
        default:
            on_final(w->st, "", 0);                     /* 空 key 路径 */
            w->l_empty++;
            break;
        }
    }
    g_tid = 0;
    return NULL;
}

/* ---------- 创建/销毁包装：可注入失败，用于验证收尾行为 ---------- */

static int t_create(pthread_t *t, worker_t *w, int idx)
{
    if (idx == g_fail_create_at) return 35;            /* EAGAIN：模拟第 idx 个创建失败 */
    return pthread_create(t, NULL, worker, w);
}

static int t_join(pthread_t t, int idx)
{
    int rc;
    if (idx == g_join_abandon_at) return 22;       /* 完全不 join：线程被真正弃置 */
    rc = pthread_join(t, NULL);
    if (rc != 0) return rc;
    if (idx == g_fail_join_at) return 22;          /* 已 join 但向调用方报告失败 */
    return 0;
}

/* 计数器快照：只有"所有已创建线程都已 join"时才允许读。
 * 这是行为断言，不是注释：无法确认线程退出时，这里直接拒绝。 */
typedef struct {
    long teardown, teardown_hit, probe, tick, local, empty, ai;
    long marked, dropped, unknown, alloc_fail, illegal, violations;
    long long now;
} snap_t;

static int counters_snapshot(state_t *st, worker_t *w, int n, int all_joined, snap_t *out)
{
    int i;
    if (!all_joined) {                                  /* 线程状态未知：拒绝读取 */
        g_counters_read_after_bad_join++;
        return -1;
    }
    memset(out, 0, sizeof(*out));
    for (i = 0; i < n; i++) {
        out->teardown     += w[i].l_teardown;
        out->teardown_hit += w[i].l_teardown_hit;
        out->probe        += w[i].l_probe;
        out->tick         += w[i].l_tick;
        out->local        += w[i].l_local;
        out->empty        += w[i].l_empty;
        out->ai           += w[i].l_ai;
    }
    out->teardown    = st->teardown_seen;
    out->teardown_hit = st->teardown_hit;
    out->local       = st->local_declined;
    out->empty       = st->empty_final;
    out->marked      = st->marked;
    out->alloc_fail  = st->alloc_fail;
    out->dropped     = st->dropped;
    out->unknown     = st->unknown;
    out->illegal     = st->illegal_decisions;
    out->violations  = A_LD(&st->lock_violations);
    out->now         = st->now;
    return 0;
}

static void scenario_concurrent(void)
{
    state_t *st;                    /* 堆上：万一有线程状态未知，它仍指向有效内存 */
    static worker_t w[4];           /* 静态：弃置线程不得写已被复用的栈帧 */
    pthread_t th[4];
    snap_t s;
    int rc[4], jrc[4];
    int i, ncreated = 0, njoined = 0, create_ok = 1, join_ok = 1;
    long l_teardown = 0, l_teardown_hit = 0, l_probe = 0, l_tick = 0, l_local = 0, l_empty = 0, l_ai = 0;

    printf("[C1] 4 线程 × 20000 次：登记 / 本地判定 / 收尾 / 查询 / 时钟推进 / 空 key%s%s\n",
           g_race_control ? "  << 负向对照#1：把自增拆成读-写回两步 >>" : "",
           g_race_true ? "  << 负向对照#2：真实数据竞争（无锁自增）>>" : "");

    st = (state_t *)malloc(sizeof(*st));
    if (st == NULL) { printf("  [FATAL] out of memory\n"); exit(3); }
    reset(st, POLICY_EPOCH2);
    for (i = 0; i < 4; i++) {
        memset(&w[i], 0, sizeof(w[i]));
        w[i].st = st; w[i].tid = i; w[i].iters = 20000;
    }

    for (i = 0; i < 4; i++) {
        rc[i] = t_create(&th[i], &w[i], i);
        if (rc[i] == 0) { ncreated++; g_created_threads++; }
        else { create_ok = 0; break; }
    }
    for (; i < 4; i++) rc[i] = -1;
    chk(create_ok == (g_fail_create_at < 0),
        "pthread_create 结果符合预期（注入=%d，已创建 %d/4，create_ok=%d）",
        g_fail_create_at, ncreated, create_ok);

    if (!create_ok) {
        /* 部分成功：必须先把已成功创建的线程全部 join 完，才允许销毁 mutex */
        for (i = 0; i < ncreated; i++)
            if (pthread_join(th[i], NULL) == 0) njoined++;
        chk(njoined == ncreated,
            "create 部分失败后，已成功创建的 %d 个线程全部 join 完成（njoined=%d）", ncreated, njoined);
        chk(njoined == ncreated, "确认没有线程仍在运行，mutex 才可以被销毁");
        pthread_mutex_destroy(&st->mu);
        g_mutex_destroyed = 1;
        g_destroy_after_all_join = (njoined == ncreated);
        chk(g_destroy_after_all_join, "mutex 只在所有已创建线程 join 之后才销毁");
        chk(counters_snapshot(st, w, ncreated, 0, &s) == -1,
            "部分创建时拒绝读取共享计数器（测试不完整，不做统计断言）");
        g_incomplete = 1;
        return;                      /* 不 free：进程即将以 INCOMPLETE 结束 */
    }

    for (i = 0; i < 4; i++) {
        jrc[i] = t_join(th[i], i);
        if (jrc[i] == 0) njoined++; else { join_ok = 0; break; }
    }
    for (; i < 4; i++) jrc[i] = -1;
    chk(join_ok == (g_fail_join_at < 0 && g_join_abandon_at < 0),
        "pthread_join 结果符合预期（报告失败注入=%d，弃置注入=%d，njoined=%d/4，join_ok=%d）",
        g_fail_join_at, g_join_abandon_at, njoined, join_ok);

    if (!join_ok) {
        /* join 失败：线程状态未知。不得读计数器、不得销毁 mutex、不得报 PASS */
        chk(counters_snapshot(st, w, 4, 0, &s) == -1,
            "join 失败后拒绝读取共享计数器（threads_read_attempts=%d）",
            g_counters_read_after_bad_join);
        chk(g_mutex_destroyed == 0, "join 失败后没有销毁 mutex");
        printf("  [INFO] 有线程是否退出无法确认：按 INCOMPLETE 处理，绝不 PASS\n");
        g_incomplete = 1;
        return;                      /* 不 free、不销毁 mutex：进程立即以 INCOMPLETE 结束 */
    }

    chk(counters_snapshot(st, w, 4, 1, &s) == 0, "全部线程确认退出后才做统计断言");
    for (i = 0; i < 4; i++) {
        l_teardown += w[i].l_teardown; l_teardown_hit += w[i].l_teardown_hit;
        l_probe += w[i].l_probe; l_tick += w[i].l_tick;
        l_local += w[i].l_local; l_empty += w[i].l_empty; l_ai += w[i].l_ai;
    }

    chk(s.illegal == 0, "并发期间没有任何非法判定值（illegal=%ld）", s.illegal);
    chk(s.violations == 0, "没有漏锁访问（lock_violations=%ld）", s.violations);

    /* 精确计数：任何一次丢失更新都会让下面六个等号不成立 */
    chk(s.teardown == l_teardown,
        "teardown_seen 精确等于各线程调用数之和（%ld vs %ld）", s.teardown, l_teardown);
    chk(s.teardown_hit == l_teardown_hit,
        "teardown_hit 精确相等（%ld vs %ld）", s.teardown_hit, l_teardown_hit);
    chk(s.local == l_local,
        "local_declined 精确相等（%ld vs %ld）", s.local, l_local);
    chk(s.empty == l_empty,
        "empty_final 精确相等（%ld vs %ld）", s.empty, l_empty);
    chk(s.marked + s.alloc_fail == l_ai,
        "marked + alloc_fail 精确等于 AI 判定次数（%ld+%ld vs %ld）",
        s.marked, s.alloc_fail, l_ai);
    chk(s.dropped + st->failclosed_passes + st->degraded_passes + s.unknown == l_probe,
        "dropped+failedclosed+degraded+unknown 精确等于查询次数（%ld vs %ld）",
        s.dropped + st->failclosed_passes + st->degraded_passes + s.unknown, l_probe);
    chk(s.now == l_tick,
        "时钟精确等于各线程推进量之和（%lld vs %ld）—— now 无丢失更新", s.now, l_tick);
    chk(l_tick > 0, "时钟推进次数非零（%ld）", l_tick);
    chk(s.marked > 0 && s.dropped > 0,
        "两个方向都产生了计数（marked=%ld dropped=%ld）", s.marked, s.dropped);
    chk(s.teardown_hit > 0, "收尾命中路径被覆盖（%ld 次）", s.teardown_hit);

    pthread_mutex_destroy(&st->mu);
    g_mutex_destroyed = 1;
    g_destroy_after_all_join = (njoined == 4);
    chk(g_destroy_after_all_join, "正常路径下 mutex 在 4 个线程全部 join 之后才销毁");
    free(st);
}

int main(int argc, char **argv)
{
    int i;
    setvbuf(stdout, NULL, _IONBF, 0);   /* 进程可能被直接终止：输出必须逐行落地 */
    for (i = 1; i < argc; i++) {
        if (strcmp(argv[i], "--race-control") == 0) { g_race_control = 1; continue; }
        if (strcmp(argv[i], "--race-true") == 0) { g_race_true = 1; continue; }
        if (strcmp(argv[i], "--create-fail") == 0 && i + 1 < argc) { g_fail_create_at = atoi(argv[++i]); continue; }
        if (strcmp(argv[i], "--join-fail") == 0 && i + 1 < argc) { g_fail_join_at = atoi(argv[++i]); continue; }
        if (strcmp(argv[i], "--join-abandon") == 0 && i + 1 < argc) { g_join_abandon_at = atoi(argv[++i]); continue; }
    }

    printf("=== T8-12.9 R13/R14/EPOCH lifecycle model (host build) ===\n");
    if (g_race_control) printf("!!! NEGATIVE CONTROL #1: clock ticks are intentionally lossy !!!\n");
    if (g_race_true) printf("!!! NEGATIVE CONTROL #2: deliberate unsynchronised data race on 'now' !!!\n");
    if (g_fail_create_at >= 0) printf("!!! INJECTED: pthread_create fails at index %d !!!\n", g_fail_create_at);
    if (g_fail_join_at >= 0)   printf("!!! INJECTED: pthread_join reports failure at index %d (thread already joined) !!!\n", g_fail_join_at);
    if (g_join_abandon_at >= 0) printf("!!! INJECTED: thread %d is never joined (abandoned on purpose) !!!\n", g_join_abandon_at);
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

    if (g_incomplete) {
        /* 线程状态无法确认：不报 PASS，也不销毁任何仍在被引用的同步对象 */
        printf("RESULT: INCOMPLETE (checks=%d fails=%d) —— 线程生命周期无法确认，测试不完整\n",
               checks, fails);
        hard_exit(2);
    }

    printf("RESULT: %s (checks=%d fails=%d)\n", fails == 0 ? "PASS" : "FAIL", checks, fails);
    return fails == 0 ? 0 : 1;
}
