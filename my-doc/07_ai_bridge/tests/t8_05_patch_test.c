/*
 * t8_05_patch_test.c -- T8-05 host test: production nlu_patch.c (NOT a look-alike)
 *
 * Target under test: android/nlu_patch.c, driven against a 8-byte "entry" in plain
 * memory (the production code only reads/writes instruction words; mprotect and the
 * icache flush are hooks, so the same transaction can run on the host).
 *
 * Covered:
 *   A) world_frozen=0 -> NP_E_UNFROZEN, not a single byte written
 *   B) normal install: verify prologue -> write -> readback -> state PATCHED,
 *      machine code recorded before/after, idempotent second install
 *   C) uninstall: verify -> restore -> readback -> IDLE, machine code recorded
 *   D) entry mismatch (foreign bytes): refuse both directions, never touch it
 *   E) freeze hook failure: abort before writing
 *   F) partial write then success on rollback: NP_E_WRITE + entry back to original
 *   G) partial write and rollback also fails: NP_E_RESTORE, never NP_OK
 *   H) uninstall mid-write failure: reports failure, retries, never claims success
 *   I) reentrancy: nested install -> NP_E_BUSY
 *   J) snapshot text carries all four machine-code records
 */
#include "nlu_patch.h"

#include <stdarg.h>
#include <stdio.h>
#include <string.h>

#define PRO_W0 0xE92D4FF0u     /* push {r4-r11, lr} */
#define PRO_W1 0xE28DB01Cu     /* add  r11, sp, #28 */
#define PAT_W0 0xE51FF004u     /* ldr  pc, [pc, #-4] */
#define PAT_W1 0x7F001234u     /* stub address (fake) */

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

/* ------------------------------------------------------- injectable hooks */

static uint32_t g_entry[2];

static int g_freeze_fail;
static int g_freeze_calls;
static int g_thaw_calls;
static int g_flush_calls;
static int g_unprot_calls;
static int g_reprot_calls;
static int g_unprot_fail;

/* write hook: fail exactly at the Nth write call (1-based); 0 = never fail */
static int g_fail_at_call;
static int g_fail_from_call;      /* fail every call >= N; 0 = off */
static int g_write_calls;
static int g_reenter_once;
static int g_reenter_rc;

static int h_freeze(void *ud, char *err, size_t cap)
{
    (void)ud;
    g_freeze_calls++;
    if (g_freeze_fail) {
        snprintf(err, cap, "frozen refused by test");
        return -1;
    }
    return 0;
}

static void h_thaw(void *ud) { (void)ud; g_thaw_calls++; }
static void h_flush(void *ud, uint32_t *p, int n) { (void)ud; (void)p; (void)n; g_flush_calls++; }

static int h_unprotect(void *ud, const char *what, char *err, size_t cap)
{
    (void)ud;
    (void)what;
    g_unprot_calls++;
    if (g_unprot_fail) {
        snprintf(err, cap, "mprotect refused by test");
        return -1;
    }
    return 0;
}

static void h_reprotect(void *ud) { (void)ud; g_reprot_calls++; }

static int h_write(void *ud, uint32_t *p, int idx, uint32_t w)
{
    np_patch *pp = (np_patch *)ud;

    g_write_calls++;
    if (g_reenter_once) {
        g_reenter_once = 0;
        g_reenter_rc = np_install(pp, 1);
    }
    if (g_fail_at_call > 0 && g_write_calls == g_fail_at_call) return -1;
    if (g_fail_from_call > 0 && g_write_calls >= g_fail_from_call) return -1;
    p[idx] = w;
    return 0;
}

static void reset_hooks(void)
{
    g_freeze_fail = 0;
    g_freeze_calls = g_thaw_calls = g_flush_calls = 0;
    g_unprot_calls = g_reprot_calls = 0;
    g_unprot_fail = 0;
    g_fail_at_call = 0;
    g_fail_from_call = 0;
    g_write_calls = 0;
    g_reenter_once = 0;
    g_reenter_rc = 0;
    g_entry[0] = PRO_W0;
    g_entry[1] = PRO_W1;
}

static np_patch g_pp;

/* hooks are reset on every fixture build; use_hooks=0 -> only flush/unprotect */
static void setup(int with_all_hooks)
{
    const uint32_t expect[2] = { PRO_W0, PRO_W1 };
    const uint32_t patch[2]  = { PAT_W0, PAT_W1 };

    reset_hooks();
    np_init(&g_pp, g_entry, expect, patch);
    g_pp.ud = &g_pp;
    g_pp.flush = h_flush;
    g_pp.unprotect = h_unprotect;
    g_pp.reprotect = h_reprotect;
    if (with_all_hooks) {
        g_pp.freeze = h_freeze;
        g_pp.thaw = h_thaw;
        g_pp.write = h_write;
    }
}

static void install_ok(void)
{
    setup(0);
    check(np_install(&g_pp, 1) == NP_OK, "fixture: install ok");
}

/* ------------------------------------------------------------------- tests */

static void test_a_unfrozen(void)
{
    printf("\n[A] refuse to patch without a frozen world\n");
    setup(0);
    check(np_install(&g_pp, 0) == NP_E_UNFROZEN, "A1 install(world_frozen=0) -> NP_E_UNFROZEN");
    check(g_entry[0] == PRO_W0 && g_entry[1] == PRO_W1, "A2 entry untouched (0x%08x 0x%08x)",
          g_entry[0], g_entry[1]);
    check(g_flush_calls == 0, "A3 no instruction-cache flush was even attempted");
    check(g_unprot_calls == 0, "A4 page protection was not touched");
    check(g_pp.install_refusals == 1, "A5 refusal counted");
    check(g_pp.install_fails == 0, "A6 refusal is not counted as a transaction failure");
    check(np_installed(&g_pp) == 0, "A7 still reported as not installed");
    check(strstr(g_pp.last_error, "not frozen") != NULL, "A8 reason recorded: %.60s", g_pp.last_error);

    check(np_uninstall(&g_pp, 0) == NP_E_UNFROZEN, "A9 uninstall(world_frozen=0) -> NP_E_UNFROZEN");
    check(g_entry[0] == PRO_W0, "A10 entry still untouched");
}

static void test_b_install(void)
{
    printf("\n[B] transactional install\n");
    setup(1);
    check(np_install(&g_pp, 1) == NP_OK, "B1 install -> NP_OK");
    check(g_entry[0] == PAT_W0, "B2 entry[0] is now the jump (0x%08x)", g_entry[0]);
    check(g_entry[1] == PAT_W1, "B3 entry[1] is now the stub literal (0x%08x)", g_entry[1]);
    check(np_installed(&g_pp) == 1, "B4 np_installed == 1");
    check(np_state(&g_pp) == NP_ST_PATCHED, "B5 state is PATCHED");
    check(g_pp.code_before[0] == PRO_W0 && g_pp.code_before[1] == PRO_W1,
          "B6 before-machine-code recorded");
    check(g_pp.code_after[0] == PAT_W0 && g_pp.code_after[1] == PAT_W1,
          "B7 after-machine-code recorded");
    check(g_pp.installs == 1, "B8 install counted once");
    check(g_pp.install_fails == 0 && g_pp.restore_fails == 0, "B9 no failures recorded");
    check(g_freeze_calls == 1 && g_thaw_calls == 1, "B10 freeze/thaw paired (%d/%d)",
          g_freeze_calls, g_thaw_calls);
    check(g_flush_calls == 2, "B11 icache flushed exactly once per written word (%d)", g_flush_calls);
    check(g_unprot_calls == 1 && g_reprot_calls == 1, "B12 unprotect/reprotect paired (%d/%d)",
          g_unprot_calls, g_reprot_calls);
    check(strstr(g_pp.last_error, "install ok") != NULL, "B13 ok message: %.70s", g_pp.last_error);

    printf("\n[B2] idempotent second install\n");
    check(np_install(&g_pp, 1) == NP_OK, "B14 install again -> NP_OK (idempotent)");
    check(g_pp.install_skips == 1, "B15 counted as a skip");
    check(g_pp.installs == 1, "B16 installs did not double count");
    check(g_entry[0] == PAT_W0, "B17 entry unchanged");
}

static void test_c_uninstall(void)
{
    printf("\n[C] transactional uninstall\n");
    install_ok();
    reset_hooks();
    g_entry[0] = PAT_W0;
    g_entry[1] = PAT_W1;
    np_sample(&g_pp);
    g_pp.flush = h_flush;
    g_pp.unprotect = h_unprotect;
    g_pp.reprotect = h_reprotect;
    g_pp.freeze = h_freeze;
    g_pp.thaw = h_thaw;

    check(np_uninstall(&g_pp, 1) == NP_OK, "C1 uninstall -> NP_OK");
    check(g_entry[0] == PRO_W0 && g_entry[1] == PRO_W1, "C2 original prologue restored");
    check(np_state(&g_pp) == NP_ST_IDLE, "C3 state back to IDLE");
    check(np_installed(&g_pp) == 0, "C4 np_installed == 0");
    check(g_pp.code_uninstall[0] == PRO_W0 && g_pp.code_uninstall[1] == PRO_W1,
          "C5 uninstall machine code recorded");
    check(g_pp.uninstalls == 1, "C6 uninstall counted");
    check(g_pp.uninstall_fails == 0 && g_pp.restore_fails == 0, "C7 no failure recorded");
    check(g_freeze_calls == 1 && g_thaw_calls == 1, "C8 freeze/thaw paired on uninstall");
    check(strstr(g_pp.last_error, "uninstall ok") != NULL, "C9 ok message: %.70s", g_pp.last_error);

    printf("\n[C2] uninstall when nothing is patched\n");
    check(np_uninstall(&g_pp, 1) == NP_E_NOT_PATCHED, "C10 -> NP_E_NOT_PATCHED");
    check(g_pp.uninstall_fails == 0, "C11 not a failure (nothing to restore)");
    check(g_entry[0] == PRO_W0, "C12 entry untouched");
    check(np_state(&g_pp) == NP_ST_IDLE, "C13 state still IDLE");
}

static void test_d_entry_mismatch(void)
{
    printf("\n[D] foreign bytes at the entry: refuse both directions\n");
    setup(0);
    g_entry[0] = 0xDEADBEEFu;
    g_entry[1] = 0xCAFEBABEu;
    (void)np_sample(&g_pp);
    check(np_state(&g_pp) == NP_ST_BROKEN, "D1 state is BROKEN");

    check(np_install(&g_pp, 1) == NP_E_ENTRY, "D2 install -> NP_E_ENTRY");
    check(g_entry[0] == 0xDEADBEEFu && g_entry[1] == 0xCAFEBABEu,
          "D3 entry not touched by the refused install");
    check(g_unprot_calls == 0, "D4 protection not touched");
    check(g_pp.install_fails == 1, "D5 counted as install failure");
    check(strstr(g_pp.last_error, "expected prologue") != NULL, "D6 reason: %.70s", g_pp.last_error);

    check(np_uninstall(&g_pp, 1) == NP_E_ENTRY, "D7 uninstall -> NP_E_ENTRY");
    check(g_entry[0] == 0xDEADBEEFu, "D8 entry still not touched");
    check(strstr(g_pp.last_error, "not touching") != NULL, "D9 reason: %.70s", g_pp.last_error);
}

static void test_e_freeze_and_prot(void)
{
    printf("\n[E] abort paths that must not write\n");
    setup(1);
    g_freeze_fail = 1;
    check(np_install(&g_pp, 1) == NP_E_FREEZE, "E1 freeze failure -> NP_E_FREEZE");
    check(g_entry[0] == PRO_W0 && g_entry[1] == PRO_W1, "E2 entry untouched");
    check(g_thaw_calls == 0, "E3 thaw not called when freeze failed");
    check(g_write_calls == 0, "E4 no write attempted");
    check(strstr(g_pp.last_error, "nothing written") != NULL, "E5 reason: %.70s", g_pp.last_error);

    setup(1);
    g_unprot_fail = 1;
    check(np_install(&g_pp, 1) == NP_E_PROT, "E6 unprotect failure -> NP_E_PROT");
    check(g_entry[0] == PRO_W0, "E7 entry untouched");
    check(g_write_calls == 0, "E8 no write attempted");
    check(g_thaw_calls == 1, "E9 thaw still called (freeze succeeded)");
}

static void test_f_partial_then_rollback_ok(void)
{
    printf("\n[F] partial write, rollback succeeds\n");
    setup(1);
    g_fail_at_call = 2;        /* word[1] written, word[0] rejected */
    check(np_install(&g_pp, 1) == NP_E_WRITE, "F1 install -> NP_E_WRITE");
    check(g_entry[0] == PRO_W0 && g_entry[1] == PRO_W1,
          "F2 rollback restored BOTH words (0x%08x 0x%08x)", g_entry[0], g_entry[1]);
    check(g_pp.installs == 0, "F3 not counted as a successful install");
    check(g_pp.install_fails == 1, "F4 counted as failure");
    check(g_pp.restores == 1, "F5 rollback confirmed and counted");
    check(g_pp.restore_fails == 0, "F6 rollback did not fail");
    check(np_installed(&g_pp) == 0, "F7 reported as not installed");
    check(np_state(&g_pp) == NP_ST_IDLE, "F8 state back to IDLE");
    check(strstr(g_pp.last_error, "rollback confirmed") != NULL, "F9 reason: %.80s", g_pp.last_error);
}

static void test_g_partial_and_rollback_fails(void)
{
    printf("\n[G] partial write, rollback also fails -> never report success\n");
    setup(1);
    g_fail_from_call = 2;      /* every write from the 2nd call on fails */
    check(np_install(&g_pp, 1) == NP_E_RESTORE, "G1 install -> NP_E_RESTORE (not NP_OK)");
    check(g_entry[0] == PRO_W0 && g_entry[1] == PAT_W1,
          "G2 entry really is half patched (0x%08x 0x%08x)", g_entry[0], g_entry[1]);
    check(np_installed(&g_pp) == 0, "G3 not reported as installed");
    check(np_state(&g_pp) == NP_ST_BROKEN, "G4 state is BROKEN");
    check(g_pp.restore_fails == 1, "G5 restore failure counted");
    check(g_pp.restores == 0, "G6 no restore claimed");
    check(strstr(g_pp.last_error, "UNCONFIRMED") != NULL, "G7 says UNCONFIRMED: %.80s", g_pp.last_error);
}

static void test_h_uninstall_failures(void)
{
    printf("\n[H] uninstall failures must be reported, not papered over\n");
    /* H1: first write fails, retry succeeds -> entry restored but still a failure */
    setup(1);
    check(np_install(&g_pp, 1) == NP_OK, "H1 install ok");
    g_write_calls = 0;
    g_fail_at_call = 1;
    check(np_uninstall(&g_pp, 1) == NP_E_WRITE, "H2 uninstall -> NP_E_WRITE (write failed once)");
    check(g_entry[0] == PRO_W0 && g_entry[1] == PRO_W1, "H3 retry restored the entry anyway");
    check(g_pp.uninstalls == 0, "H4 not counted as a clean uninstall");
    check(g_pp.uninstall_fails == 1, "H5 counted as failure");
    check(g_pp.restores == 1, "H6 the retry that saved it is counted");
    check(strstr(g_pp.last_error, "re-verified") != NULL, "H7 reason: %.80s", g_pp.last_error);

    /* H2: every write fails -> entry stays patched, unconfirmed */
    setup(1);
    check(np_install(&g_pp, 1) == NP_OK, "H8 install ok");
    g_write_calls = 0;
    g_fail_from_call = 1;
    check(np_uninstall(&g_pp, 1) == NP_E_RESTORE, "H9 uninstall -> NP_E_RESTORE");
    check(g_entry[0] == PAT_W0 && g_entry[1] == PAT_W1, "H10 entry left patched");
    check(np_installed(&g_pp) == 1, "H11 still reported as installed (truthful)");
    check(g_pp.restore_fails == 1, "H12 restore failure counted");
    check(strstr(g_pp.last_error, "UNCONFIRMED") != NULL, "H13 says UNCONFIRMED: %.80s", g_pp.last_error);
}

static void test_i_reentrancy(void)
{
    printf("\n[I] reentrant install is refused, outer transaction still succeeds\n");
    setup(1);
    g_reenter_once = 1;
    check(np_install(&g_pp, 1) == NP_OK, "I1 outer install -> NP_OK");
    check(g_reenter_rc == NP_E_BUSY, "I2 nested install -> NP_E_BUSY");
    check(g_pp.busy_hits == 1, "I3 busy hit counted");
    check(g_entry[0] == PAT_W0 && g_entry[1] == PAT_W1, "I4 patch in place");
}

static void test_j_snapshot(void)
{
    char buf[512];
    char w[24];

    printf("\n[J] machine-code record and formatting\n");
    setup(0);
    np_words(g_pp.expect, 2, w, sizeof(w));
    check(strcmp(w, "e92d4ff0 e28db01c") == 0, "J1 np_words formats the prologue: %s", w);
    np_words(g_pp.patch, 2, w, sizeof(w));
    check(strcmp(w, "e51ff004 7f001234") == 0, "J2 np_words formats the patch: %s", w);

    check(np_install(&g_pp, 1) == NP_OK, "J3 install ok");
    np_snapshot(&g_pp, buf, sizeof(buf));
    check(strstr(buf, "state=patched") != NULL, "J4 snapshot state");
    check(strstr(buf, "before=[e92d4ff0 e28db01c]") != NULL, "J5 snapshot before");
    check(strstr(buf, "after=[e51ff004 7f001234]") != NULL, "J6 snapshot after");
    check(strstr(buf, "now=[e51ff004 7f001234]") != NULL, "J7 snapshot now");
    check(strstr(buf, "installs=1") != NULL, "J8 snapshot counters");
    check(np_uninstall(&g_pp, 1) == NP_OK, "J9 uninstall ok");
    np_snapshot(&g_pp, buf, sizeof(buf));
    check(strstr(buf, "state=idle") != NULL, "J10 snapshot state after uninstall");
    check(strstr(buf, "uninst=[e92d4ff0 e28db01c]") != NULL, "J11 snapshot uninstall record");
    printf("  snapshot: %s\n", buf);

    check(strcmp(np_err_name(NP_E_RESTORE), "restore") == 0, "J12 error name for restore");
    check(strcmp(np_state_name(NP_ST_BROKEN), "broken") == 0, "J13 state name for broken");
    check(strcmp(np_err_name(-999), "?") == 0, "J14 unknown error name");
    check(np_install(NULL, 1) == NP_E_ARG, "J15 np_install(NULL) -> NP_E_ARG");
    check(np_uninstall(NULL, 1) == NP_E_ARG, "J16 np_uninstall(NULL) -> NP_E_ARG");
    check(np_state(NULL) == NP_ST_BROKEN, "J17 np_state(NULL) == BROKEN");
}

int main(void)
{
    printf("T8-05 patch test (production nlu_patch.c)\n");
    test_a_unfrozen();
    test_b_install();
    test_c_uninstall();
    test_d_entry_mismatch();
    test_e_freeze_and_prot();
    test_f_partial_then_rollback_ok();
    test_g_partial_and_rollback_fails();
    test_h_uninstall_failures();
    test_i_reentrancy();
    test_j_snapshot();
    printf("\nRESULT: pass=%d fail=%d\n", g_pass, g_fail);
    return (g_fail == 0) ? 0 : 1;
}
