/*
 * t8_04_boot_once_test.c -- T8-04 host 测试：一次性初始化闸门的并发正确性
 *
 * 被测对象：libtg_hook.c 里 nlu_boot_once()/nlu_want_enabled() 的**结构**
 *   （libtg_hook.c 依赖 dlfcn/link.h/android log，无法在 host 上直接链接，
 *     所以这里用同样的 pthread_once + 真实 t8_to_* 模块复现该闸门；
 *     并由 run_t8_04_host_tests.ps1 做源码断言，确保 libtg_hook.c 用的就是这个结构。）
 *
 * 覆盖：
 *   A) 8 线程同时首次调用：初始化体严格只执行一次；所有线程在初始化完成后才进入判定
 *   B) 初始化完成后热路径不再进初始化体
 *   C) 初始化失败（锁不可用）：仍然 fail-closed，不重试、不静默放行
 */
#include "nlu_takeover.h"

#include <pthread.h>
#include <stdarg.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>

static int g_pass;
static int g_fail;

static void check(int cond, const char *fmt, ...)
{
    va_list ap;

    if (cond) { g_pass++; return; }
    g_fail++;
    printf("  FAIL ");
    va_start(ap, fmt);
    vprintf(fmt, ap);
    va_end(ap);
    printf("\n");
}

/* ---------------- 闸门 A：正常初始化 ---------------- */

static pthread_once_t g_once_a = PTHREAD_ONCE_INIT;
static t8_to_state    g_to_a;
static volatile int   g_enabled_a;
static volatile int   g_init_runs_a;
static volatile int   g_done_a;
static volatile int   g_slow_ms_a;

static void boot_a(void)
{
    __atomic_add_fetch(&g_init_runs_a, 1, __ATOMIC_RELAXED);
    if (g_slow_ms_a > 0) usleep((useconds_t)g_slow_ms_a * 1000u);
    (void)t8_to_init(&g_to_a);
    (void)t8_to_enabled_set(&g_to_a, 1);
    g_enabled_a = 1;
    __atomic_store_n(&g_done_a, 1, __ATOMIC_RELEASE);
}

static int want_a(void)
{
    (void)pthread_once(&g_once_a, boot_a);
    return __atomic_load_n(&g_enabled_a, __ATOMIC_ACQUIRE);
}

typedef struct {
    int tid;
    int iters;
    int saw_not_ready;
    int wrong;
} ga_arg;

static void *worker_a(void *p)
{
    ga_arg *a = (ga_arg *)p;
    char sid[24];
    int i;

    for (i = 0; i < a->iters; i++) {
        int on = want_a();
        t8_to_why why = T8_TO_WHY_NONE;

        if (!__atomic_load_n(&g_done_a, __ATOMIC_ACQUIRE)) a->saw_not_ready++;
        if (!on) continue;
        snprintf(sid, sizeof(sid), "a%d-%d", a->tid, i);
        if (t8_to_on_final(&g_to_a, sid, "天猫精灵给我讲一个笑话", 1000 + i, 0x7F, &why) != T8_TO_TAKE)
            a->wrong++;
        if (t8_to_should_drop(&g_to_a, sid, 1000 + i) != 1) a->wrong++;
        t8_to_on_session_end(&g_to_a, sid);
    }
    return NULL;
}

/* ---------------- 闸门 C：初始化失败 ---------------- */

static pthread_once_t g_once_c = PTHREAD_ONCE_INIT;
static t8_to_state    g_to_c;
static volatile int   g_enabled_c;
static volatile int   g_init_runs_c;

static void boot_c(void)
{
    __atomic_add_fetch(&g_init_runs_c, 1, __ATOMIC_RELAXED);
    /* 刻意不调用 t8_to_init：等价于"锁初始化失败，mutex_ready=0" */
    (void)t8_to_enabled_set(&g_to_c, 1);
    g_enabled_c = 1;
}

static int want_c(void)
{
    (void)pthread_once(&g_once_c, boot_c);
    return __atomic_load_n(&g_enabled_c, __ATOMIC_ACQUIRE);
}

int main(void)
{
    printf("=== T8-04 boot-once gate test (pthread_once) ===\n");

    /* ---------------- A) ---------------- */
    printf("\n[A] 8 threads x 300 iterations, first call races (init artificially slowed to 120 ms)\n");
    {
        enum { THREADS = 8, ITERS = 300 };
        pthread_t th[THREADS];
        ga_arg args[THREADS];
        int i;
        int saw = 0;
        int wrong = 0;

        g_slow_ms_a = 120;              /* 放大竞态窗口 */
        for (i = 0; i < THREADS; i++) {
            args[i].tid = i;
            args[i].iters = ITERS;
            args[i].saw_not_ready = 0;
            args[i].wrong = 0;
            check(pthread_create(&th[i], NULL, worker_a, &args[i]) == 0, "create thread %d", i);
        }
        for (i = 0; i < THREADS; i++) (void)pthread_join(th[i], NULL);
        for (i = 0; i < THREADS; i++) { saw += args[i].saw_not_ready; wrong += args[i].wrong; }

        printf("  init_runs=%d early_entries=%d wrong_decisions=%d\n", g_init_runs_a, saw, wrong);
        check(g_init_runs_a == 1, "init body must run exactly once (ran %d times)", g_init_runs_a);
        check(saw == 0, "no thread may enter the decision path before init completed (%d did)", saw);
        check(wrong == 0, "every decision must be consistent (%d wrong)", wrong);
        check(g_done_a == 1 && g_enabled_a == 1, "gate must end booted+enabled");
        check(g_to_a.mutex_ready == 1, "mutex must be initialised (ready=%d)", g_to_a.mutex_ready);
        check(t8_to_active(&g_to_a, 5000) == 0, "all sessions ended under concurrency");
        check(t8_to_should_drop(&g_to_a, "never-registered", 5000) == 0,
              "after boot, an unknown session passes normally");

        /* ---------------- B) ---------------- */
        printf("\n[B] hot path after boot does not re-enter the init body\n");
        {
            char sid[24];
            int before = g_init_runs_a;

            for (i = 0; i < 1000; i++) {
                (void)want_a();
                snprintf(sid, sizeof(sid), "hot-%d", i);
                (void)t8_to_on_final(&g_to_a, sid, "天猫精灵讲个笑话", 6000 + i, 0x7F, NULL);
                (void)t8_to_should_drop(&g_to_a, sid, 6000 + i);
                t8_to_on_session_end(&g_to_a, sid);
            }
            check(g_init_runs_a == before, "hot path must not run the init body again (%d -> %d)",
                  before, g_init_runs_a);
            printf("  init_runs still = %d after 1000 hot calls\n", g_init_runs_a);
        }
        t8_to_destroy(&g_to_a);
    }

    /* ---------------- C) ---------------- */
    printf("\n[C] init failure stays fail-closed (no retry, no silent pass)\n");
    {
        int i;
        int set_rc;

        printf("  want=%d\n", want_c());
        set_rc = t8_to_enabled_set(&g_to_c, 1);
        printf("  enabled=%d mutex_ready=%d enabled_set=%d init_error=%d\n",
               t8_to_enabled(&g_to_c), g_to_c.mutex_ready, set_rc, g_to_c.init_error);
        check(g_enabled_c == 1, "switch must read as ON so callers can see the failed state");
        check(g_to_c.mutex_ready == 0, "forced failure leaves the mutex uninitialised");
        check(t8_to_enabled(&g_to_c) == 1, "module reports enabled");
        check(g_to_c.init_error == 1, "module reports init_error");
        for (i = 0; i < 100; i++) {
            t8_to_why why = T8_TO_WHY_NONE;
            char sid[24];

            snprintf(sid, sizeof(sid), "fc-%d", i);
            check(t8_to_on_final(&g_to_c, sid, "天猫精灵给我讲一个笑话", 1000 + i, 0x7F, &why)
                      == T8_TO_TAKE_FAILCLOSED,
                  "iteration %d: must fail-closed", i);
            check(why == T8_TO_WHY_FAILCLOSED, "iteration %d: why=failclosed", i);
            check(t8_to_should_drop(&g_to_c, sid, 1000 + i) == 1,
                  "iteration %d: NLU result must be blocked", i);
            check(t8_to_should_drop(&g_to_c, "never-registered", 1000 + i) == 1,
                  "iteration %d: unknown session also blocked", i);
        }
        check(g_init_runs_c == 1, "failed init must not be retried (ran %d times)", g_init_runs_c);
        printf("  init_runs=%d (no retry); 100x2 calls all fail-closed\n", g_init_runs_c);
    }

    printf("\nRESULT: pass=%d fail=%d\n", g_pass, g_fail);
    return (g_fail == 0) ? 0 : 1;
}
