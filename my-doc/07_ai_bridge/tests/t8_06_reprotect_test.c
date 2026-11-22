/*
 * t8_06_reprotect_test.c -- T8-06 host test: production nlu_patch.c, page-protection
 * restore failure handling (NP_E_REPROTECT).
 *
 * Target under test: android/nlu_patch.c, driven against an 8-byte "entry" in plain
 * memory. The page protection itself is a hook, so the exact failure matrix required
 * by T8-06 section 4.4 can be injected:
 *
 *   A) restore succeeds                       -> NP_OK
 *   B) install: machine code written, restore fails -> NP_E_REPROTECT (never NP_OK)
 *   C) second call retries the restore and succeeds -> NP_OK, prot_dirty cleared
 *   D) restore fails repeatedly               -> NP_E_REPROTECT every time
 *   E) uninstall: entry restored, restore fails -> NP_E_REPROTECT, entry really is
 *      the original prologue (the message must say so)
 *   F) sweep: whenever the restore failed in a transaction, that transaction must
 *      not return NP_OK
 *   G) snapshot / error-name surface
 */
#include "nlu_patch.h"

#include <stdarg.h>
#include <stdio.h>
#include <string.h>

#define PRO_W0 0xE92D4FF0u
#define PRO_W1 0xE28DB01Cu
#define PAT_W0 0xE51FF004u
#define PAT_W1 0x7F001234u

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

static uint32_t g_entry[2];
static int g_reprot_calls;
static int g_reprot_fail_first;    /* fail the first N calls */
static int g_reprot_fail_all;      /* 1 = every call fails */
static int g_unprot_calls;
static int g_flush_calls;

static int h_unprotect(void *ud, const char *what, char *err, size_t cap)
{
    (void)ud;
    (void)what;
    (void)err;
    (void)cap;
    g_unprot_calls++;
    return 0;
}

static int h_reprotect(void *ud, char *err, size_t cap)
{
    (void)ud;
    g_reprot_calls++;
    if (g_reprot_fail_all || (g_reprot_fail_first > 0 && g_reprot_calls <= g_reprot_fail_first)) {
        if (err != NULL && cap > 0) {
            snprintf(err, cap, "mprotect restore refused by test (call %d)", g_reprot_calls);
        }
        return -1;
    }
    return 0;
}

static void h_flush(void *ud, uint32_t *p, int n) { (void)ud; (void)p; (void)n; g_flush_calls++; }

static np_patch g_pp;

static void setup(void)
{
    const uint32_t expect[2] = { PRO_W0, PRO_W1 };
    const uint32_t patch[2]  = { PAT_W0, PAT_W1 };

    g_entry[0] = PRO_W0;
    g_entry[1] = PRO_W1;
    g_reprot_calls = 0;
    g_reprot_fail_first = 0;
    g_reprot_fail_all = 0;
    g_unprot_calls = 0;
    g_flush_calls = 0;
    np_init(&g_pp, g_entry, expect, patch);
    g_pp.ud = NULL;
    g_pp.flush = h_flush;
    g_pp.unprotect = h_unprotect;
    g_pp.reprotect = h_reprotect;
}

static void test_a_normal(void)
{
    printf("\n[A] restore succeeds\n");
    setup();
    check(np_install(&g_pp, 1) == NP_OK, "A1 install -> NP_OK");
    check(g_reprot_calls == 1, "A2 reprotect called exactly once (%d)", g_reprot_calls);
    check(g_pp.reprotect_ok == 1, "A3 reprotect_ok=1");
    check(g_pp.reprotect_fails == 0, "A4 reprotect_fails=0");
    check(g_pp.prot_dirty == 0, "A5 prot_dirty=0");
    check(np_uninstall(&g_pp, 1) == NP_OK, "A6 uninstall -> NP_OK");
    check(g_pp.reprotect_ok == 2, "A7 reprotect_ok=2 after uninstall");
    check(g_pp.prot_dirty == 0, "A8 prot_dirty still 0");
}

static void test_b_install_restore_fails(void)
{
    printf("\n[B] install: machine code written, protection restore fails\n");
    setup();
    g_reprot_fail_first = 1;
    check(np_install(&g_pp, 1) == NP_E_REPROTECT, "B1 install -> NP_E_REPROTECT (not NP_OK)");
    check(g_entry[0] == PAT_W0 && g_entry[1] == PAT_W1,
          "B2 machine code really is the patch (0x%08x 0x%08x)", g_entry[0], g_entry[1]);
    check(np_installed(&g_pp) == 1, "B3 installed state is truthful (patch is in)");
    check(np_state(&g_pp) == NP_ST_PATCHED, "B4 state PATCHED");
    check(g_pp.installs == 0, "B5 NOT counted as a successful install");
    check(g_pp.install_fails == 1, "B6 counted as install failure");
    check(g_pp.reprotect_fails == 1, "B7 reprotect failure counted");
    check(g_pp.prot_dirty == 1, "B8 prot_dirty set for the next transaction");
    check(strstr(g_pp.last_error, "page protection restore FAILED") != NULL,
          "B9 message names the failure: %.80s", g_pp.last_error);
    check(strstr(g_pp.last_error, "e51ff004") != NULL,
          "B10 message carries the real entry machine code: %.80s", g_pp.last_error);
    check(strstr(g_pp.last_error, "install ok") != NULL,
          "B11 message keeps the original operation result: %.80s", g_pp.last_error);
    check(strstr(g_pp.last_error, "RWX") != NULL, "B12 message flags the RWX risk");
    check(np_err_name(NP_E_REPROTECT) != NULL &&
          strcmp(np_err_name(NP_E_REPROTECT), "reprotect") == 0,
          "B13 error name is 'reprotect'");

    printf("\n[C] second call retries the restore and succeeds\n");
    check(np_install(&g_pp, 1) == NP_OK, "C1 re-install (idempotent) -> NP_OK after retry");
    check(g_reprot_calls == 2, "C2 restore retried (%d calls)", g_reprot_calls);
    check(g_pp.reprotect_ok == 1, "C3 retry success counted");
    check(g_pp.prot_dirty == 0, "C4 prot_dirty cleared");
    check(g_pp.install_skips == 1, "C5 counted as a skip (patch was already in)");
    check(strstr(g_pp.last_error, "install skipped") != NULL,
          "C6 message: %.70s", g_pp.last_error);
}

static void test_d_repeated_failure(void)
{
    printf("\n[D] restore keeps failing\n");
    setup();
    g_reprot_fail_all = 1;
    check(np_install(&g_pp, 1) == NP_E_REPROTECT, "D1 install -> NP_E_REPROTECT");
    check(np_install(&g_pp, 1) == NP_E_REPROTECT, "D2 retry -> NP_E_REPROTECT again");
    check(np_install(&g_pp, 1) == NP_E_REPROTECT, "D3 third attempt -> NP_E_REPROTECT");
    check(g_pp.reprotect_fails == 3, "D4 three failures counted (%lu)", g_pp.reprotect_fails);
    check(g_pp.reprotect_ok == 0, "D5 no success recorded");
    check(g_pp.prot_dirty == 1, "D6 stays dirty");
    check(g_pp.installs == 0, "D7 never reported as a successful install");
    check(g_entry[0] == PAT_W0, "D8 machine code unchanged by the retries");
}

static void test_e_uninstall_restore_fails(void)
{
    printf("\n[E] uninstall: entry restored, protection restore fails\n");
    setup();
    check(np_install(&g_pp, 1) == NP_OK, "E1 install ok");
    g_reprot_fail_all = 1;
    check(np_uninstall(&g_pp, 1) == NP_E_REPROTECT, "E2 uninstall -> NP_E_REPROTECT");
    check(g_entry[0] == PRO_W0 && g_entry[1] == PRO_W1,
          "E3 entry IS the original prologue (0x%08x 0x%08x)", g_entry[0], g_entry[1]);
    check(np_state(&g_pp) == NP_ST_IDLE, "E4 state IDLE");
    check(g_pp.uninstalls == 0, "E5 NOT counted as a clean uninstall");
    check(g_pp.uninstall_fails == 1, "E6 counted as uninstall failure");
    check(g_pp.prot_dirty == 1, "E7 prot_dirty set");
    check(strstr(g_pp.last_error, "IS restored to the original prologue") != NULL,
          "E8 message distinguishes 'entry restored, protection failed': %.90s", g_pp.last_error);
    check(strstr(g_pp.last_error, "page protection restore FAILED") != NULL,
          "E9 names the protection failure");

    printf("\n[E2] retry after the entry is already original\n");
    g_reprot_fail_all = 0;
    check(np_uninstall(&g_pp, 1) == NP_E_NOT_PATCHED,
          "E10 uninstall again -> NP_E_NOT_PATCHED (nothing to restore)");
    check(g_pp.prot_dirty == 0, "E11 the pending restore was retried and cleared");
    check(g_pp.reprotect_ok == 2, "E12 retry success counted (%lu)", g_pp.reprotect_ok);
    check(g_entry[0] == PRO_W0, "E13 entry untouched by the retry");
}

static void test_f_sweep(void)
{
    int mode;

    printf("\n[F] sweep: a transaction whose restore failed never returns NP_OK\n");
    for (mode = 0; mode < 3; mode++) {
        unsigned long fails_before;
        int rc;

        setup();
        if (mode == 1) g_reprot_fail_first = 1;     /* 只第一次失败 */
        if (mode == 2) g_reprot_fail_all = 1;       /* 每次都失败 */

        fails_before = g_pp.reprotect_fails;
        rc = np_install(&g_pp, 1);
        if (g_pp.reprotect_fails > fails_before) {
            check(rc == NP_E_REPROTECT,
                  "F1 mode %d: restore failed -> rc=%d must be NP_E_REPROTECT", mode, rc);
            check(np_state(&g_pp) == NP_ST_PATCHED,
                  "F2 mode %d: machine code state is still reported truthfully", mode);
        } else {
            check(rc == NP_OK, "F3 mode %d: restore ok -> NP_OK", mode);
        }

        fails_before = g_pp.reprotect_fails;
        rc = np_uninstall(&g_pp, 1);
        if (g_pp.reprotect_fails > fails_before) {
            check(rc == NP_E_REPROTECT,
                  "F4 mode %d: uninstall restore failed -> rc=%d must be NP_E_REPROTECT", mode, rc);
        } else {
            check(rc == NP_OK, "F5 mode %d: uninstall clean -> NP_OK", mode);
        }
    }
}

static void test_g_snapshot(void)
{
    char buf[600];

    printf("\n[G] snapshot / textual surface\n");
    setup();
    g_reprot_fail_first = 1;
    (void)np_install(&g_pp, 1);
    np_snapshot(&g_pp, buf, sizeof(buf));
    check(strstr(buf, "prot_ok=0") != NULL, "G1 snapshot prot_ok: %.120s", buf);
    check(strstr(buf, "prot_fails=1") != NULL, "G2 snapshot prot_fails");
    check(strstr(buf, "err=reprotect") != NULL, "G3 snapshot error name");
    printf("  snapshot: %s\n", buf);

    setup();
    (void)np_install(&g_pp, 1);
    np_snapshot(&g_pp, buf, sizeof(buf));
    check(strstr(buf, "prot_ok=1") != NULL, "G4 snapshot prot_ok=1 on the happy path");
    check(strstr(buf, "err=ok") != NULL, "G5 snapshot err=ok");
}

int main(void)
{
    printf("T8-06 page-protection restore test (production nlu_patch.c)\n");
    test_a_normal();
    test_b_install_restore_fails();
    test_d_repeated_failure();
    test_e_uninstall_restore_fails();
    test_f_sweep();
    test_g_snapshot();
    printf("\nRESULT: pass=%d fail=%d\n", g_pass, g_fail);
    return (g_fail == 0) ? 0 : 1;
}
