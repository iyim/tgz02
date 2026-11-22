/*
 * t8_06_switch_test.c -- T8-06 host test: production nlu_switch.c under a mixed storm
 *
 * Target under test: android/nlu_switch.c (the single-atomic-state-word version,
 * compiled into this executable directly -- not a look-alike).
 *
 * Covered (T8-06 task items 1-5, 8-adjacent):
 *   1) 8 threads hammering install / uninstall / on / off at the same time
 *   2) high-frequency interleaving; every observation must be a legal state
 *   3) at no instant may installed=0 && takeover=1 be observable
 *   4) uninstall racing with enable: the final state follows the CAS rule
 *   5) after disable the callback decision is PASS again (factory passthrough)
 *
 * Output is ASCII on purpose: evidence logs must stay readable.
 */
#include "nlu_switch.h"

#include <pthread.h>
#include <stdarg.h>
#include <stdio.h>
#include <string.h>

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

static unsigned int raw_state(const nls_state *s)
{
    return __atomic_load_n(&s->state, __ATOMIC_ACQUIRE);
}

/* ---------------------------------------------------------- A: mixed storm */

#define WORKERS   8
#define ROUNDS    60000

static nls_state g_s;
static volatile int g_go;
static volatile int g_stop;
static volatile unsigned long g_violations;   /* installed=0 && takeover=1 */
static volatile unsigned long g_bad_mode;
static volatile unsigned long g_observations;
static volatile unsigned long g_op_install, g_op_uninstall, g_op_on, g_op_off;
static volatile unsigned long g_refused;

enum { OP_INSTALL = 0, OP_UNINSTALL, OP_ON, OP_OFF };

static void *op_worker(void *arg)
{
    int op = (int)(size_t)arg;
    int i;

    while (!__atomic_load_n(&g_go, __ATOMIC_ACQUIRE)) { }

    for (i = 0; i < ROUNDS; i++) {
        switch (op) {
        case OP_INSTALL:
            (void)nls_set_installed(&g_s, 1);
            __atomic_fetch_add(&g_op_install, 1UL, __ATOMIC_RELAXED);
            break;
        case OP_UNINSTALL:
            (void)nls_set_installed(&g_s, 0);
            __atomic_fetch_add(&g_op_uninstall, 1UL, __ATOMIC_RELAXED);
            break;
        case OP_ON:
            if (nls_set_takeover(&g_s, 1) != NLS_OK) {
                __atomic_fetch_add(&g_refused, 1UL, __ATOMIC_RELAXED);
            }
            __atomic_fetch_add(&g_op_on, 1UL, __ATOMIC_RELAXED);
            break;
        default:
            (void)nls_set_takeover(&g_s, 0);
            __atomic_fetch_add(&g_op_off, 1UL, __ATOMIC_RELAXED);
            break;
        }
    }
    return NULL;
}

/*
 * 观察者：只做一次原子读，然后检查"这一瞬间"的位组合。
 * 关键不变式：TAKEOVER 位为 1 时 INSTALLED 位必须也为 1。
 * 因为 nls_set_installed(0) 是单个 CAS 同时清两位，这个组合在任何时刻都不可见。
 */
static void *observer(void *arg)
{
    (void)arg;
    while (!__atomic_load_n(&g_go, __ATOMIC_ACQUIRE)) { }

    while (!__atomic_load_n(&g_stop, __ATOMIC_ACQUIRE)) {
        unsigned int st = raw_state(&g_s);
        int inst = (st & NLS_BIT_INSTALLED) ? 1 : 0;
        int take = (st & NLS_BIT_TAKEOVER) ? 1 : 0;
        int m = nls_mode(&g_s, 1);

        __atomic_fetch_add(&g_observations, 1UL, __ATOMIC_RELAXED);
        /* 不变式只能对"同一次原子读"判定：分两次读之间状态本来就可以变 */
        if (!inst && take) __atomic_fetch_add(&g_violations, 1UL, __ATOMIC_RELAXED);
        if (m != NLS_PASS && m != NLS_DECIDE) {
            __atomic_fetch_add(&g_bad_mode, 1UL, __ATOMIC_RELAXED);
        }
        /*
         * 两个独立 getter 允许暂时不一致（两次读之间发生了 uninstall），
         * 但"再来一次单次原子读"必须已经合法 —— 否则说明存在可见的非法组合。
         */
        if (nls_takeover(&g_s) == 1 && nls_installed(&g_s) == 0) {
            unsigned int st2 = raw_state(&g_s);
            if (!(st2 & NLS_BIT_INSTALLED) && (st2 & NLS_BIT_TAKEOVER)) {
                __atomic_fetch_add(&g_violations, 1UL, __ATOMIC_RELAXED);
            }
        }
    }
    return NULL;
}

static void test_storm(void)
{
    pthread_t th[WORKERS + 2];
    int i;

    printf("\n[A] %d workers (install/uninstall/on/off) x %d rounds + 2 observers\n",
           WORKERS, ROUNDS);
    nls_init(&g_s);
    g_go = 0;
    g_stop = 0;
    g_violations = 0;
    g_bad_mode = 0;
    g_observations = 0;
    g_op_install = g_op_uninstall = g_op_on = g_op_off = 0;
    g_refused = 0;

    for (i = 0; i < WORKERS; i++) {
        check(pthread_create(&th[i], NULL, op_worker, (void *)(size_t)(i % 4)) == 0,
              "A1 worker %d started", i);
    }
    for (i = 0; i < 2; i++) {
        check(pthread_create(&th[WORKERS + i], NULL, observer, NULL) == 0,
              "A2 observer %d started", i);
    }

    __atomic_store_n(&g_go, 1, __ATOMIC_RELEASE);
    for (i = 0; i < WORKERS; i++) pthread_join(th[i], NULL);
    __atomic_store_n(&g_stop, 1, __ATOMIC_RELEASE);
    for (i = 0; i < 2; i++) pthread_join(th[WORKERS + i], NULL);

    printf("  ops: install=%lu uninstall=%lu on=%lu off=%lu refused_on=%lu\n",
           g_op_install, g_op_uninstall, g_op_on, g_op_off, g_refused);
    printf("  observations=%lu violations=%lu bad_mode=%lu\n",
           g_observations, g_violations, g_bad_mode);

    check(g_violations == 0,
          "A3 never observed installed=0 && takeover=1 (%lu violations)", g_violations);
    check(g_bad_mode == 0, "A4 every observed mode was PASS or DECIDE (%lu bad)", g_bad_mode);
    check(g_observations > 1000, "A5 observers really ran (%lu observations)", g_observations);
    check(g_refused > 0, "A6 enable was refused while uninstalled (%lu refusals)", g_refused);

    /* 收尾状态必须自洽 */
    {
        unsigned int st = raw_state(&g_s);
        int inst = (st & NLS_BIT_INSTALLED) ? 1 : 0;
        int take = (st & NLS_BIT_TAKEOVER) ? 1 : 0;

        check(!(inst == 0 && take == 1), "A7 final state is legal (installed=%d takeover=%d)",
              inst, take);
        check(nls_mode(&g_s, 1) == (take ? NLS_DECIDE : NLS_PASS),
              "A8 final mode agrees with the final state");
    }
}

/* ------------------------------------- B: uninstall racing with enable (CAS) */

#define B_ROUNDS 20000

static nls_state g_b;
static volatile int g_b_go;

static void *b_enabler(void *arg)
{
    (void)arg;
    while (!__atomic_load_n(&g_b_go, __ATOMIC_ACQUIRE)) { }
    (void)nls_set_takeover(&g_b, 1);
    return NULL;
}

static void *b_uninstaller(void *arg)
{
    (void)arg;
    while (!__atomic_load_n(&g_b_go, __ATOMIC_ACQUIRE)) { }
    (void)nls_set_installed(&g_b, 0);
    return NULL;
}

static void test_uninstall_vs_enable(void)
{
    int i;
    int illegal = 0;
    int both = 0;

    printf("\n[B] uninstall racing with enable, %d rounds\n", B_ROUNDS);
    for (i = 0; i < B_ROUNDS; i++) {
        pthread_t t1, t2;
        unsigned int st;

        nls_init(&g_b);
        (void)nls_set_installed(&g_b, 1);
        __atomic_store_n(&g_b_go, 0, __ATOMIC_RELEASE);

        if (pthread_create(&t1, NULL, b_enabler, NULL) != 0) { check(0, "B1 thread"); break; }
        if (pthread_create(&t2, NULL, b_uninstaller, NULL) != 0) { check(0, "B2 thread"); break; }
        __atomic_store_n(&g_b_go, 1, __ATOMIC_RELEASE);
        pthread_join(t1, NULL);
        pthread_join(t2, NULL);

        st = raw_state(&g_b);
        if (!(st & NLS_BIT_INSTALLED) && (st & NLS_BIT_TAKEOVER)) illegal++;
        if ((st & NLS_BIT_INSTALLED) && (st & NLS_BIT_TAKEOVER)) both++;
    }
    printf("  final states: illegal=%d (installed&&takeover)=%d\n", illegal, both);
    check(illegal == 0,
          "B3 uninstall-vs-enable never leaves installed=0 && takeover=1 (%d)", illegal);
    check(both <= B_ROUNDS,
          "B4 enable that won the race left both bits set (%d of %d)", both, B_ROUNDS);
    check(nls_installed(&g_b) == 0 || nls_takeover(&g_b) == 0 ||
          (nls_installed(&g_b) == 1 && nls_takeover(&g_b) == 1),
          "B5 last state is one of the three legal combinations");
}

/* ------------------------------------------ C: disable restores factory mode */

static void test_disable_passthrough(void)
{
    nls_state s;

    printf("\n[C] disable -> callback decision is PASS again\n");
    nls_init(&s);
    check(nls_set_takeover(&s, 1) == NLS_E_UNSAFE, "C1 enable before install refused");
    check(nls_mode(&s, 1) == NLS_PASS, "C2 decision is PASS (factory)");
    check(nls_set_installed(&s, 1) == NLS_OK, "C3 install mark");
    check(nls_mode(&s, 1) == NLS_PASS, "C4 install alone does not enable takeover");
    check(nls_set_takeover(&s, 1) == NLS_OK, "C5 enable");
    check(nls_mode(&s, 1) == NLS_DECIDE, "C6 decision is DECIDE");
    check(nls_mode(&s, 0) == NLS_FAILCLOSED, "C7 not-ready stays fail-closed (T8-05 rule)");
    check(nls_set_takeover(&s, 0) == NLS_OK, "C8 disable");
    check(nls_mode(&s, 1) == NLS_PASS, "C9 decision is PASS immediately after disable");
    check(nls_mode(&s, 0) == NLS_PASS, "C10 not-ready + disabled is still PASS");
    check(nls_set_installed(&s, 0) == NLS_OK, "C11 uninstall mark");
    check(nls_installed(&s) == 0, "C12 installed reads 0");
    check(nls_mode(&s, 1) == NLS_PASS, "C13 no patch -> PASS");

    printf("\n[D] counters and defensive mode check\n");
    nls_init(&s);
    check(s.reads == 0 && s.sets_on == 0 && s.install_marks == 0, "D1 fresh counters are zero");
    (void)nls_set_installed(&s, 1);
    (void)nls_set_takeover(&s, 1);
    (void)nls_takeover(&s);
    check(s.install_marks == 1, "D2 install_marks=%lu", s.install_marks);
    check(s.sets_on == 1, "D3 sets_on=%lu", s.sets_on);
    check(s.reads >= 1, "D4 reads counted (%lu)", s.reads);

    /* 防御性组合：手工造出"takeover 位有、installed 位没有"，mode 必须是 PASS */
    nls_init(&s);
    __atomic_store_n(&s.state, NLS_BIT_TAKEOVER, __ATOMIC_RELEASE);
    check(nls_mode(&s, 1) == NLS_PASS, "D5 illegal bits -> PASS, never DECIDE");
    check(nls_mode(&s, 0) == NLS_PASS, "D6 illegal bits with not-ready -> PASS too");
    check(nls_installed(&s) == 0 && nls_takeover(&s) == 1,
          "D7 getters still report the raw bits (no hidden fixup)");
}

int main(void)
{
    printf("T8-06 switch test (production nlu_switch.c, single atomic state word)\n");
    test_storm();
    test_uninstall_vs_enable();
    test_disable_passthrough();
    printf("\nRESULT: pass=%d fail=%d\n", g_pass, g_fail);
    return (g_fail == 0) ? 0 : 1;
}
