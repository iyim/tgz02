/*
 * t8_05_switch_test.c -- T8-05 host test: production nlu_switch.c (NOT a look-alike)
 *
 * Target under test: android/nlu_switch.c (compiled into this executable directly).
 * Covered:
 *   A) default state = not installed / takeover off; the four-row truth table
 *   B) "enable before install" is refused and does NOT report success
 *   C) installing the hook never enables takeover implicitly (and does not touch it)
 *   D) takeover off takes effect immediately for the very next reader
 *   E) fail-closed when the session table is not ready (ready=0)
 *   F) uninstalling the entry patch forces takeover off (no self-contradictory state)
 *   G) concurrent toggling from 8 threads: readers only ever see a valid mode,
 *      counters stay consistent with the number of operations issued
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

/* ---------------------------------------------------------------- A + B */
static void test_basic(void)
{
    nls_state s;

    printf("\n[A] default state and truth table\n");
    nls_init(&s);
    check(nls_installed(&s) == 0, "A1 fresh state: not installed");
    check(nls_takeover(&s) == 0, "A2 fresh state: takeover off");
    check(nls_mode(&s, 1) == NLS_PASS, "A3 not installed + off -> PASS (factory behaviour)");
    check(nls_mode(&s, 0) == NLS_PASS, "A4 not installed + off -> PASS even when state is not ready");

    printf("\n[B] enable before install must be refused\n");
    check(nls_set_takeover(&s, 1) == NLS_E_UNSAFE, "B1 set_takeover(1) without patch -> NLS_E_UNSAFE");
    check(nls_takeover(&s) == 0, "B2 refused request leaves takeover OFF (no fake success)");
    check(s.refused_on == 1, "B3 refusal is counted (refused_on=%lu)", s.refused_on);
    check(nls_mode(&s, 1) == NLS_PASS, "B4 still factory behaviour after refused enable");

    printf("\n[C] installing the patch must not enable takeover\n");
    check(nls_set_installed(&s, 1) == NLS_OK, "C1 mark installed");
    check(nls_installed(&s) == 1, "C2 installed reads back as 1");
    check(nls_takeover(&s) == 0, "C3 installing does NOT enable takeover");
    check(nls_mode(&s, 1) == NLS_PASS, "C4 installed + off -> PASS (callbacks pass through)");
    check(s.install_marks == 1, "C5 install mark counted once");

    printf("\n[D] explicit enable, then immediate disable\n");
    check(nls_set_takeover(&s, 1) == NLS_OK, "D1 set_takeover(1) with patch in place -> NLS_OK");
    check(nls_takeover(&s) == 1, "D2 readback is 1");
    check(nls_mode(&s, 1) == NLS_DECIDE, "D3 installed + on -> DECIDE");
    check(strcmp(nls_mode_name(NLS_DECIDE), "decide") == 0, "D4 mode name for decide");
    check(s.sets_on == 1, "D5 sets_on counted");

    check(nls_set_takeover(&s, 0) == NLS_OK, "D6 set_takeover(0) always allowed");
    check(nls_takeover(&s) == 0, "D7 the very next read is already 0 (immediate)");
    check(nls_mode(&s, 1) == NLS_PASS, "D8 mode is PASS immediately after disable");
    check(s.sets_off == 1, "D9 sets_off counted");

    printf("\n[E] fail-closed while takeover is on\n");
    (void)nls_set_takeover(&s, 1);
    check(nls_mode(&s, 0) == NLS_FAILCLOSED, "E1 on + state not ready -> FAILCLOSED (never PASS)");
    check(nls_mode(&s, 1) == NLS_DECIDE, "E2 on + ready -> DECIDE");
    check(strcmp(nls_mode_name(NLS_FAILCLOSED), "failclosed") == 0, "E3 mode name for failclosed");
    nls_note_init_failure(&s, 1);
    check(s.init_failed == 1, "E4 init failure recorded");
    check(nls_mode(&s, 0) == NLS_FAILCLOSED, "E5 init failure keeps fail-closed");
    check(nls_mode(&s, 1) == NLS_DECIDE,
          "E6 init-failure flag alone does not force FAILCLOSED (ready is the authority)");
    nls_note_init_failure(&s, 0);

    printf("\n[F] uninstall forces takeover off\n");
    (void)nls_set_takeover(&s, 1);
    check(nls_set_installed(&s, 0) == NLS_OK, "F1 mark uninstalled");
    check(nls_installed(&s) == 0, "F2 installed=0");
    check(nls_takeover(&s) == 0, "F3 takeover forced off by uninstall");
    check(nls_mode(&s, 1) == NLS_PASS, "F4 no patch -> PASS");
    check(s.uninstall_marks == 1, "F5 uninstall mark counted");
    check(nls_set_takeover(&s, 1) == NLS_E_UNSAFE,
          "F6 re-enable after uninstall refused again");
}

/* ------------------------------------------------------------ G: threads */
#define TOGGLERS 4
#define READERS  4
#define ROUNDS   200000

static nls_state g_shared;
static volatile int g_go;
static volatile unsigned long g_bad_modes;
static volatile unsigned long g_reader_reads;

static void *toggler(void *arg)
{
    int i;
    (void)arg;
    while (!__atomic_load_n(&g_go, __ATOMIC_ACQUIRE)) { }
    for (i = 0; i < ROUNDS; i++) {
        (void)nls_set_takeover(&g_shared, 1);
        (void)nls_set_takeover(&g_shared, 0);
    }
    return NULL;
}

static void *reader(void *arg)
{
    int i;
    (void)arg;
    while (!__atomic_load_n(&g_go, __ATOMIC_ACQUIRE)) { }
    for (i = 0; i < ROUNDS; i++) {
        int m = nls_mode(&g_shared, 1);
        if (m != NLS_PASS && m != NLS_DECIDE) {
            __atomic_fetch_add(&g_bad_modes, 1UL, __ATOMIC_RELAXED);
        }
        if (nls_installed(&g_shared) != 1) {
            __atomic_fetch_add(&g_bad_modes, 1UL, __ATOMIC_RELAXED);
        }
        __atomic_fetch_add(&g_reader_reads, 1UL, __ATOMIC_RELAXED);
    }
    return NULL;
}

static void test_concurrent(void)
{
    pthread_t th[TOGGLERS + READERS];
    int i;

    printf("\n[G] %d togglers + %d readers x %d rounds on one nls_state\n",
           TOGGLERS, READERS, ROUNDS);
    nls_init(&g_shared);
    (void)nls_set_installed(&g_shared, 1);

    for (i = 0; i < TOGGLERS; i++) {
        check(pthread_create(&th[i], NULL, toggler, NULL) == 0, "G1 toggler %d started", i);
    }
    for (i = 0; i < READERS; i++) {
        check(pthread_create(&th[TOGGLERS + i], NULL, reader, NULL) == 0, "G2 reader %d started", i);
    }
    __atomic_store_n(&g_go, 1, __ATOMIC_RELEASE);
    for (i = 0; i < TOGGLERS + READERS; i++) pthread_join(th[i], NULL);

    check(g_bad_modes == 0,
          "G3 every observed mode was valid (bad=%lu) -- no torn/undefined value", g_bad_modes);
    check(g_reader_reads >= (unsigned long)READERS * ROUNDS,
          "G4 readers completed their rounds (%lu)", g_reader_reads);
    /* 只有 toggler 在开，读者从不开；开-关成对，最后一次关写完之后留下的要么 0 要么 1 */
    check(g_shared.sets_on == (unsigned long)TOGGLERS * ROUNDS,
          "G5 sets_on matches issued enables (%lu)", g_shared.sets_on);
    check(g_shared.sets_off >= (unsigned long)TOGGLERS * ROUNDS,
          "G6 sets_off matches issued disables (%lu)", g_shared.sets_off);
    check(g_shared.refused_on == 0, "G7 installed stayed 1 -> no refusal (%lu)", g_shared.refused_on);
    check(nls_installed(&g_shared) == 1, "G8 installed flag survived the storm");
    printf("  sets_on=%lu sets_off=%lu reads=%lu bad=%lu\n",
           g_shared.sets_on, g_shared.sets_off, g_reader_reads, g_bad_modes);
}

static void test_arg(void)
{
    printf("\n[H] argument handling\n");
    check(nls_installed(NULL) == 0, "H1 nls_installed(NULL) == 0");
    check(nls_takeover(NULL) == 0, "H2 nls_takeover(NULL) == 0");
    check(nls_mode(NULL, 1) == NLS_PASS, "H3 nls_mode(NULL) == PASS");
    check(nls_set_installed(NULL, 1) == NLS_E_ARG, "H4 set_installed(NULL) == NLS_E_ARG");
    check(nls_set_takeover(NULL, 0) == NLS_E_ARG, "H5 set_takeover(NULL) == NLS_E_ARG");
    nls_init(NULL);   /* must not crash */
    nls_note_init_failure(NULL, 1);
    check(strcmp(nls_mode_name(12345), "?") == 0, "H6 unknown mode name");
}

int main(void)
{
    printf("T8-05 switch test (production nlu_switch.c)\n");
    test_basic();
    test_concurrent();
    test_arg();
    printf("\nRESULT: pass=%d fail=%d\n", g_pass, g_fail);
    return (g_fail == 0) ? 0 : 1;
}
