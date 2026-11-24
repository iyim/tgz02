/* t8_156_boot_scope_unit_test.c -- T8-15.6 boot-scope contract (host only)
 *
 * The code under test is the shared header android/tg_req_seq.h, i.e. exactly what the
 * worker and the native guard compile. No copies, no mocks.
 *
 * The two defects this pins down (found on the device after a reboot):
 *   1) the guard took the request file's value as its start-up baseline even when that
 *      value came from a previous boot (CLOCK_MONOTONIC restarted), so the new, smaller
 *      seq was rebased silently and re-listening stayed dead;
 *   2) a listen-hold expiry written before the reboot sat days in the future and kept
 *      suppressing auto-listening.
 *
 * Coverage:
 *   A tg_req_plausible(): the start-up acceptance window
 *   B start-up baseline policy: pre-boot values never become the baseline, same-boot
 *     restarts still do (so "already handled" requests do not fire again)
 *   C tg_hold_value_stale(): only previous-boot expiries are stale
 *   D regression: mid-run rules of tg_req_accept() are unchanged (future/too-old never
 *     fire, and the same anomalous value read repeatedly still never fires)
 *
 * host only: pwsh tests/run_t8_156_boot_scope_tests.ps1
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "tg_req_seq.h"

static int g_fail;
static int g_pass;

static void ok(int cond, const char *fmt, const char *arg)
{
    if (cond) { g_pass++; return; }
    g_fail++;
    printf("FAIL: ");
    printf(fmt, arg);
    printf("\n");
}

static void write_raw(const char *path, const char *text)
{
    FILE *f = fopen(path, "wb");

    if (f == NULL) { printf("FAIL: cannot create %s\n", path); g_fail++; return; }
    if (text != NULL) fwrite(text, 1, strlen(text), f);
    fclose(f);
}

/* The exact policy the guard now applies when it starts:
 *   read the file; adopt it as the baseline only if plausible "now". */
static void guard_startup(const char *path, long long now_ms, tg_req_state *out, int *adopted)
{
    long long v = 0;

    tg_req_state_init(out);
    *adopted = 0;
    if (tg_req_read(path, &v) == 0 && tg_req_plausible(v, now_ms)) {
        out->last_seq = v;
        *adopted = 1;
    }
}

int main(void)
{
    const char *f = "t8_156_req.txt";
    tg_req_state st;
    long long now;
    int adopted;
    int i;

    /* ---------------- A: tg_req_plausible ---------------- */
    now = 543264;
    ok(tg_req_plausible(now, now) == 1, "A1 exact now (%s)", "");
    ok(tg_req_plausible(now - 1000, now) == 1, "A2 1 s old (%s)", "");
    ok(tg_req_plausible(now + 1000, now) == 1, "A3 1 s ahead within slack (%s)", "");
    ok(tg_req_plausible(now + 5000, now) == 0, "A4 5 s ahead = future (%s)", "");
    ok(tg_req_plausible(now - 119000, now) == 1, "A5 just inside the stale window (%s)", "");
    ok(tg_req_plausible(now - 121000, now) == 0, "A6 past the stale window (%s)", "");
    ok(tg_req_plausible(TG_REQ_MIN_SEQ - 1, now) == 0, "A7 below the minimum (%s)", "");
    ok(tg_req_plausible(0, now) == 0, "A8 zero (%s)", "");
    /* the real pre-reboot value measured on the device */
    ok(tg_req_plausible(166673741, 543264) == 0, "A9 real pre-boot value (%s)", "");
    /* a pre-boot value can also be SMALLER than now if the previous boot was short */
    ok(tg_req_plausible(12345, 900000) == 0, "A10 short previous boot (%s)", "");

    /* ---------------- B: start-up baseline policy ---------------- */
    /* B1: the device's actual failure - file holds the previous boot's seq */
    write_raw(f, "166673741\n");
    guard_startup(f, 543264, &st, &adopted);
    ok(adopted == 0, "B1 pre-boot value must not be adopted (%s)", "");
    ok(st.last_seq == -1, "B2 baseline stays empty (%s)", "");
    /* then the worker's first real request of this boot fires exactly once */
    now = 600000;
    write_raw(f, "594568\n");
    ok(strcmp(tg_req_accept(&st, 594568, 594568), "first") == 0, "B3 first request after boot fires (%s)", "");
    ok(tg_req_accept(&st, 594568, 600000) == NULL, "B4 duplicate does not fire (%s)", "");
    ok(st.last_code == TG_REQ_R_REPEAT, "B5 duplicate classified as repeat (%s)", "");
    ok(strcmp(tg_req_accept(&st, 601000, 601000), "new") == 0, "B6 next request fires (%s)", "");

    /* B7: a same-boot :core restart keeps the recent baseline (no spurious re-listen) */
    now = 900000;
    write_raw(f, "890000\n");
    guard_startup(f, now, &st, &adopted);
    ok(adopted == 1, "B7 plausible same-boot value is adopted (%s)", "");
    ok(st.last_seq == 890000, "B8 baseline is the adopted value (%s)", "");
    ok(tg_req_accept(&st, 890000, now) == NULL, "B9 already-handled request does not fire (%s)", "");
    ok(st.last_code == TG_REQ_R_REPEAT, "B10 ...classified as repeat (%s)", "");
    ok(strcmp(tg_req_accept(&st, 901000, 901000), "new") == 0, "B11 later request still fires (%s)", "");

    /* B12: short previous boot (small but too old) - also not adopted */
    write_raw(f, "12345\n");
    guard_startup(f, 900000, &st, &adopted);
    ok(adopted == 0, "B12 small pre-boot value not adopted (%s)", "");
    ok(strcmp(tg_req_accept(&st, 900500, 900500), "first") == 0, "B13 next request fires (%s)", "");

    /* B14: empty file - no baseline, first request fires (unchanged T8-15.5 behaviour) */
    write_raw(f, "");
    guard_startup(f, 900000, &st, &adopted);
    ok(adopted == 0, "B14 empty file adopts nothing (%s)", "");
    ok(strcmp(tg_req_accept(&st, 900700, 900700), "first") == 0, "B15 first request fires (%s)", "");

    /* ---------------- C: tg_hold_value_stale ---------------- */
    now = 800000;
    ok(tg_hold_value_stale(154215429, now) == 1, "C1 real pre-boot hold (%s)", "");
    ok(tg_hold_value_stale(now + 60000, now) == 0, "C2 60 s exit hold is fine (%s)", "");
    ok(tg_hold_value_stale(now + 20000, now) == 0, "C3 20 s stop hold is fine (%s)", "");
    ok(tg_hold_value_stale(now + 300000, now) == 0, "C4 exactly at the horizon is fine (%s)", "");
    ok(tg_hold_value_stale(now + 300001, now) == 1, "C5 one ms past the horizon is stale (%s)", "");
    ok(tg_hold_value_stale(now - 1000, now) == 0, "C6 already expired is not 'stale (%s)'", "");
    ok(tg_hold_value_stale(0, now) == 0, "C7 empty value is not 'stale' (%s)", "");

    /* ---------------- D: mid-run rules unchanged (T8-15.5R regression) ---------------- */
    tg_req_state_init(&st);
    st.last_seq = 700000;
    ok(tg_req_accept(&st, 9000000, 700000) == NULL, "D1 far future never fires (%s)", "");
    ok(st.last_seq == 700000, "D2 and never touches the baseline (%s)", "");
    ok(tg_req_accept(&st, 650000, 700000) == NULL, "D3 below baseline never fires (%s)", "");
    ok(st.last_seq == 650000, "D4 ...only rebases silently (%s)", "");
    ok(st.last_code == TG_REQ_R_BELOW, "D5 ...and is classified as below (%s)", "");
    st.last_seq = 700000;
    for (i = 0; i < 5; i++) {
        ok(tg_req_accept(&st, 8000000, 700000) == NULL, "D5 repeated anomaly never fires (%s)", "");
    }
    ok(st.last_seq == 700000, "D6 baseline survives repeated anomalies (%s)", "");
    /* the device's actual pair: same stale value read three times after the fix */
    write_raw(f, "166673741\n");
    guard_startup(f, 543264, &st, &adopted);
    for (i = 0; i < 3; i++) {
        long long v = 0;
        long long got;

        if (tg_req_read(f, &v) != 0) { ok(0, "D7 read failed (%s)", ""); break; }
        got = (v > st.last_seq) ? v : st.last_seq;   /* the loop's rebase rule for "below" */
        (void)got;
        ok(tg_req_accept(&st, v, 543264) == NULL, "D7 stale value read 3x never fires (%s)", "");
    }
    ok(strcmp(tg_req_accept(&st, 543700, 543700), "first") == 0, "D8 a real request right after still fires (%s)", "");

    printf("\nT8-15.6 boot-scope unit test: %d passed, %d failed\n", g_pass, g_fail);
    remove(f);
    return (g_fail == 0) ? 0 : 1;
}
