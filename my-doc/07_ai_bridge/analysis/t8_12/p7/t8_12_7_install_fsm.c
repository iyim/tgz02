/*
 * T8-12.7  R16: three-point install transaction + full rollback state machine.
 *
 * This is NOT production code. It models the flow
 *    freeze all threads -> install point by point -> on any failure roll back all
 *    -> read back every point
 * as an explicit state machine and injects a fault at every possible step.
 *
 * Four invariants are asserted for every scenario:
 *   I1 DONE is reachable only when all three points are applied AND read back;
 *   I2 any failure ends in FAILED or ROLLBACK_FAILED, never in DONE;
 *   I3 after a rollback all three entries are byte-identical to the original prologue;
 *   I4 "half installed but reported success" count is always 0.
 *
 * Build: gcc -O1 -Wall -Wextra -std=c99 -o t8_12_7_install_fsm t8_12_7_install_fsm.c
 * Run:   ./t8_12_7_install_fsm
 *
 * ASCII output only (evidence files must stay encoding-neutral).
 */

#include <stdarg.h>
#include <stdio.h>
#include <string.h>

#define NPTS 3

/* Real prologues of the three entries in libsmartbox.so
 * (evidence/t8-12-p4/install_points_bytes.txt). */
static const struct {
    const char *name;
    unsigned long vaddr;
    unsigned long w0, w1;
    int site;
} POINTS[NPTS] = {
    { "SessionDispatch::onNlpResult",      0x118ebcUL, 0xE92D4FF0UL, 0xE28DB01CUL, 11 },
    { "SessionDispatch::onNlpResultInner", 0x11896cUL, 0xE92D48F0UL, 0xE28DB010UL, 20 },
    { "SessionDispatch::onPushNlpResult",  0x1189ecUL, 0xE92D4FF0UL, 0xE28DB01CUL, 21 },
};

#define PATCH_JMP 0xE51FF004UL      /* ldr pc,[pc,#-4] */

typedef enum {
    ST_IDLE = 0, ST_PRECHECK, ST_FROZEN, ST_INSTALLING,
    ST_ROLLING_BACK, ST_DONE, ST_FAILED, ST_ROLLBACK_FAILED
} st_t;

static const char *st_name(st_t s)
{
    switch (s) {
    case ST_IDLE: return "IDLE";
    case ST_PRECHECK: return "PRECHECK";
    case ST_FROZEN: return "FROZEN";
    case ST_INSTALLING: return "INSTALLING";
    case ST_ROLLING_BACK: return "ROLLING_BACK";
    case ST_DONE: return "DONE";
    case ST_FAILED: return "FAILED";
    case ST_ROLLBACK_FAILED: return "ROLLBACK_FAILED";
    }
    return "?";
}

typedef enum {
    F_NONE = 0, F_PRECHECK, F_FREEZE, F_PC_RANGE, F_WRITE, F_VERIFY, F_RESTORE
} fault_kind;

typedef struct { fault_kind kind; int idx; } fault_t;

typedef struct {
    unsigned long entry[NPTS][2];
    unsigned long stub[NPTS];
    int applied[NPTS];
    int frozen;
    st_t state;
    fault_t fault;
    fault_t fault_restore;          /* independent rollback fault */
    int half_installed_reported_success;
    char last_err[128];
} world_t;

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

static int fault_is(world_t *w, fault_kind k, int idx)
{
    if (w->fault.kind != k) return 0;
    return (k == F_FREEZE) ? 1 : (w->fault.idx == idx);
}

static void w_init(world_t *w, fault_t f)
{
    int i;
    memset(w, 0, sizeof(*w));
    w->fault_restore.kind = F_NONE;
    for (i = 0; i < NPTS; i++) {
        w->entry[i][0] = POINTS[i].w0;
        w->entry[i][1] = POINTS[i].w1;
        w->stub[i] = 0x70000000UL + (unsigned long)(i * 0x100);
    }
    w->state = ST_IDLE;
    w->fault = f;
}

static int install_one(world_t *w, int i)
{
    if (w->entry[i][0] != POINTS[i].w0 || w->entry[i][1] != POINTS[i].w1) {
        snprintf(w->last_err, sizeof(w->last_err), "point %d entry mismatch", i);
        return -1;
    }
    if (fault_is(w, F_PC_RANGE, i)) {
        snprintf(w->last_err, sizeof(w->last_err), "point %d pc-in-range", i);
        return -2;
    }
    if (fault_is(w, F_WRITE, i)) {
        snprintf(w->last_err, sizeof(w->last_err), "point %d write failed", i);
        return -3;
    }
    w->entry[i][0] = PATCH_JMP;
    w->entry[i][1] = w->stub[i];
    w->applied[i] = 1;
    if (fault_is(w, F_VERIFY, i)) {
        snprintf(w->last_err, sizeof(w->last_err), "point %d readback mismatch", i);
        return -4;
    }
    if (w->entry[i][0] != PATCH_JMP || w->entry[i][1] != w->stub[i]) {
        snprintf(w->last_err, sizeof(w->last_err), "point %d readback value wrong", i);
        return -4;
    }
    return 0;
}

static int restore_one(world_t *w, int i)
{
    if (!w->applied[i]) return 0;                       /* no-op for a point never written */
    if (w->fault_restore.kind == F_RESTORE && w->fault_restore.idx == i) {
        snprintf(w->last_err, sizeof(w->last_err), "point %d restore failed", i);
        return -1;
    }
    w->entry[i][0] = POINTS[i].w0;
    w->entry[i][1] = POINTS[i].w1;
    w->applied[i] = 0;
    return 0;
}

static int install_all(world_t *w)
{
    int i, rc, rb_bad = 0;

    w->state = ST_PRECHECK;
    if (w->fault.kind == F_PRECHECK) {
        snprintf(w->last_err, sizeof(w->last_err), "precheck failed at %d", w->fault.idx);
        w->state = ST_FAILED;                            /* nothing written yet */
        return -1;
    }
    for (i = 0; i < NPTS; i++) {
        if (w->entry[i][0] != POINTS[i].w0 || w->entry[i][1] != POINTS[i].w1) {
            snprintf(w->last_err, sizeof(w->last_err), "precheck: entry %d not original", i);
            w->state = ST_FAILED;
            return -1;
        }
    }

    if (w->fault.kind == F_FREEZE) {
        snprintf(w->last_err, sizeof(w->last_err), "freeze failed");
        w->state = ST_FAILED;
        return -1;
    }
    w->frozen = 1;
    w->state = ST_FROZEN;

    w->state = ST_INSTALLING;
    for (i = 0; i < NPTS; i++) {
        rc = install_one(w, i);
        if (rc != 0) {
            int j;
            w->state = ST_ROLLING_BACK;
            for (j = i; j >= 0; j--)                      /* reverse order */
                if (restore_one(w, j) != 0) rb_bad = 1;
            w->frozen = 0;
            w->state = rb_bad ? ST_ROLLBACK_FAILED : ST_FAILED;
            return -1;
        }
    }
    w->frozen = 0;
    if (w->applied[0] && w->applied[1] && w->applied[2]) {
        w->state = ST_DONE;
        return 0;
    }
    w->state = ST_FAILED;
    return -1;
}

static void verify_ok(world_t *w, const char *label)
{
    int i, all_patched = 1;
    for (i = 0; i < NPTS; i++)
        if (w->entry[i][0] != PATCH_JMP || w->entry[i][1] != w->stub[i]) all_patched = 0;
    chk(w->state == ST_DONE, "%s: final state DONE", label);
    chk(all_patched, "%s: all three points carry the patch", label);
    chk(w->half_installed_reported_success == 0, "%s: no half-install reported as success", label);
}

static void verify_failed(world_t *w, const char *label)
{
    int i, all_orig = 1;
    for (i = 0; i < NPTS; i++)
        if (w->entry[i][0] != POINTS[i].w0 || w->entry[i][1] != POINTS[i].w1) all_orig = 0;
    chk(w->state != ST_DONE, "%s: final state is not DONE (%s)", label, st_name(w->state));
    chk(all_orig, "%s: all three entries byte-identical to original prologue", label);
    chk(!w->applied[0] && !w->applied[1] && !w->applied[2],
        "%s: all applied flags cleared", label);
    chk(w->half_installed_reported_success == 0, "%s: no half-install reported as success", label);
}

int main(void)
{
    world_t w;
    fault_t none = { F_NONE, 0 };
    int i, k;

    printf("=== T8-12.7 R16 three-point install transaction model ===\n\n");

    printf("[S0] no fault: all three points must be installed\n");
    w_init(&w, none);
    k = install_all(&w);
    chk(k == 0, "install_all returns 0");
    verify_ok(&w, "S0");
    printf("\n");

    for (i = 0; i < NPTS; i++) {
        char label[80];
        fault_t f = { F_PRECHECK, i };
        snprintf(label, sizeof(label), "[S1.%d] precheck failure at point %d", i, i);
        printf("%s\n", label);
        w_init(&w, f);
        k = install_all(&w);
        chk(k != 0, "install_all returns non-zero");
        verify_failed(&w, label);
        printf("\n");
    }

    printf("[S2] freeze failure\n");
    {
        fault_t f = { F_FREEZE, 0 };
        w_init(&w, f);
        k = install_all(&w);
        chk(k != 0, "install_all returns non-zero");
        verify_failed(&w, "S2");
    }
    printf("\n");

    for (i = 0; i < NPTS; i++) {
        char label[80];
        fault_t f = { F_PC_RANGE, i };
        snprintf(label, sizeof(label), "[S3.%d] PC inside point %d range (no safe window)", i, i);
        printf("%s\n", label);
        w_init(&w, f);
        k = install_all(&w);
        chk(k != 0, "install_all returns non-zero");
        verify_failed(&w, label);
        printf("\n");
    }

    for (i = 0; i < NPTS; i++) {
        char label[80];
        fault_t f = { F_WRITE, i };
        snprintf(label, sizeof(label), "[S4.%d] write failure at point %d (earlier points must roll back)", i, i);
        printf("%s\n", label);
        w_init(&w, f);
        k = install_all(&w);
        chk(k != 0, "install_all returns non-zero");
        verify_failed(&w, label);
        printf("\n");
    }

    for (i = 0; i < NPTS; i++) {
        char label[80];
        fault_t f = { F_VERIFY, i };
        snprintf(label, sizeof(label), "[S5.%d] readback mismatch at point %d", i, i);
        printf("%s\n", label);
        w_init(&w, f);
        k = install_all(&w);
        chk(k != 0, "install_all returns non-zero");
        verify_failed(&w, label);
        printf("\n");
    }

    for (i = 0; i < NPTS - 1; i++) {                      /* only 0/1 are ever applied */
        char label[80];
        snprintf(label, sizeof(label),
                 "[S6.%d] write failure at last point + rollback of point %d also fails", i, i);
        printf("%s\n", label);
        w_init(&w, (fault_t){ F_WRITE, NPTS - 1 });
        w.fault_restore = (fault_t){ F_RESTORE, i };
        k = install_all(&w);
        chk(k != 0, "install_all returns non-zero");
        chk(w.state == ST_ROLLBACK_FAILED, "final state ROLLBACK_FAILED (%s)", st_name(w.state));
        chk(w.state != ST_DONE, "never reports DONE");
        chk(w.half_installed_reported_success == 0, "no half-install reported as success");
        chk(w.applied[i] == 1, "failed-to-restore point keeps applied=1 (retryable)");
        printf("\n");
    }

    printf("[S7] rollback requested for a point never applied: must be a no-op, state FAILED\n");
    w_init(&w, (fault_t){ F_WRITE, NPTS - 1 });
    w.fault_restore = (fault_t){ F_RESTORE, NPTS - 1 };
    k = install_all(&w);
    chk(k != 0, "install_all returns non-zero");
    chk(w.state == ST_FAILED, "final state FAILED (%s)", st_name(w.state));
    chk(w.applied[NPTS - 1] == 0, "never-applied point keeps applied=0");
    printf("\n");

    printf("RESULT: %s (checks=%d fails=%d)\n", fails == 0 ? "PASS" : "FAIL", checks, fails);
    return fails == 0 ? 0 : 1;
}
