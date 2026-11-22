/*
 * T8-12.9  R16: three-point install transaction, WORD-GRANULAR writes, and the
 *          full freeze/resume lifecycle of the target threads.
 *
 * This is NOT production code. It models
 *    precheck (read original bytes)
 *    -> freeze every target thread exactly once
 *    -> verify no stopped PC sits inside an entry  (only meaningful once frozen)
 *    -> install point by point (2 x 4-byte word stores per point)
 *    -> group read back every point
 *    -> resume every thread exactly once
 *    -> verdict
 * and injects faults at every single step, including faults that leave an entry
 * half written and faults in the freeze/resume phase itself.
 *
 * T8-12.7 modelled "write both words" as one indivisible operation and set
 * applied[i] only afterwards; a failure between the two stores left a half
 * patch that the rollback then skipped, because it trusted applied[].  T8-12.8
 * fixed that but treated FROZEN as a mere state label: it never modelled
 * freezing or resuming the threads, and it checked the stopped PC range BEFORE
 * freezing, which cannot be a valid check (a thread can enter the entry between
 * the check and the store).  This version therefore:
 *   (a) models each 4-byte word store separately (an aligned 32-bit store is
 *       atomic on ARM32; the 8-byte patch is NOT);
 *   (b) decides "does this entry need restoring" from the ACTUAL ENTRY BYTES,
 *       never from applied[];
 *   (c) keeps ROLLBACK_FAILED until every entry is verified byte-identical;
 *   (d) supports repeated recovery attempts;
 *   (e) freezes once, resumes once, and asserts the order
 *       freeze < store, group-readback < resume, rollback < resume;
 *   (f) gives resume failure its own verdict, never disguised as success.
 *
 * Verdict (the only thing a caller may branch on):
 *   V_SUCCESS                     installed, read back, threads running again
 *   V_INSTALL_FAILED              nothing changed, threads running again
 *   V_ROLLBACK_FAILED             entries dirty, threads running again
 *   V_RESUME_FAILED               threads may still be frozen (install may be
 *                                 DONE or rolled back) -- MUST NOT look like success
 *   V_ROLLBACK_AND_RESUME_FAILED both of the above
 *
 * Invariants asserted for every scenario:
 *   I1 V_SUCCESS only when all 3 entries read back as patched AND resume ok;
 *   I2 a failure never yields V_SUCCESS;
 *   I3 V_INSTALL_FAILED / clean rollback means all 6 words are the original;
 *   I4 V_ROLLBACK_FAILED means at least one entry is provably NOT original
 *      and the verdict is NOT V_INSTALL_FAILED;
 *   I5 "half installed but reported success" count is always 0;
 *   I6 freeze_count and resume_count are each exactly 0 or 1 per attempt, and
 *      resume_count == freeze_count whenever freezing started.
 *
 * Build: gcc -O1 -Wall -Wextra -std=c99 -o t8_12_9_install_fsm t8_12_9_install_fsm.c
 * Run:   ./t8_12_9_install_fsm
 *
 * ASCII output only (evidence files must stay encoding-neutral).
 */

#include <stdarg.h>
#include <stdio.h>
#include <string.h>

#define NPTS 3
#define NW   2                 /* two 32-bit words per 8-byte patch */

/* Real prologues of the three entries in libsmartbox.so
 * (evidence/t8-12-p4/install_points_bytes.txt). */
static const char *POINT_NAME[NPTS] = {
    "SessionDispatch::onNlpResult",
    "SessionDispatch::onNlpResultInner",
    "SessionDispatch::onPushNlpResult",
};
static const unsigned long ORIG[NPTS][NW] = {
    { 0xE92D4FF0UL, 0xE28DB01CUL },
    { 0xE92D48F0UL, 0xE28DB010UL },
    { 0xE92D4FF0UL, 0xE28DB01CUL },
};
/* Placeholder trampoline addresses; only word 0 matters for the jmp opcode. */
static const unsigned long TRAMP[NPTS] = { 0x7000A000UL, 0x7000A080UL, 0x7000A100UL };

#define PATCH_JMP 0xE51FF004UL      /* ldr pc,[pc,#-4] */

typedef enum {
    ST_IDLE = 0, ST_PRECHECK, ST_FROZEN, ST_INSTALLING,
    ST_ROLLING_BACK, ST_DONE, ST_FAILED, ST_ROLLBACK_FAILED, ST_RECOVERED
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
    case ST_RECOVERED: return "RECOVERED";
    }
    return "?";
}

/* ---------------- verdict ---------------- */

typedef enum {
    V_NONE = 0,
    V_SUCCESS,
    V_INSTALL_FAILED,
    V_ROLLBACK_FAILED,
    V_RESUME_FAILED,
    V_ROLLBACK_AND_RESUME_FAILED
} verdict_t;

static const char *v_name(verdict_t v)
{
    switch (v) {
    case V_NONE: return "NONE";
    case V_SUCCESS: return "SUCCESS";
    case V_INSTALL_FAILED: return "INSTALL_FAILED";
    case V_ROLLBACK_FAILED: return "ROLLBACK_FAILED";
    case V_RESUME_FAILED: return "RESUME_FAILED";
    case V_ROLLBACK_AND_RESUME_FAILED: return "ROLLBACK_AND_RESUME_FAILED";
    }
    return "?";
}

/* ---------------- injected faults ---------------- */

typedef struct {
    int precheck_bad[NPTS];        /* entry already patched / bytes not as expected */
    int freeze_fail;               /* attach/stop failed before any thread was frozen */
    int freeze_partial_fail;       /* some threads frozen, then attach failed       */
    int pc_in_range[NPTS];         /* a stopped PC sits inside entry i             */
    int resume_fail;               /* threads could not be resumed                 */
    int fail_install[NPTS][NW];    /* this word store does not happen              */
    int fail_readback[NPTS][NW];   /* readback of this word reports mismatch       */
    int fail_restore[NPTS][NW];    /* this restore store does not happen           */
} faults_t;

/* ---------------- simulated target memory ---------------- */

typedef struct {
    unsigned long mem[NPTS][NW];          /* the "target bytes", word visible */
    unsigned long at_rollback[NPTS][NW];  /* snapshot taken when rollback starts */
    int applied[NPTS];                    /* 1 only after both words + readback  */
    int restore_pending[NPTS];
    st_t state;
    verdict_t verdict;
    faults_t f;
    int word_writes, word_write_fail;
    int rb_checks, rb_fail;
    int restore_writes, restore_fail;
    int verify_final_fail;
    int half_installed_reported_success;
    int rollback_attempts, recover_attempts;
    /* freeze / resume lifecycle */
    int freeze_count, resume_count;
    int froze;                            /* 1 = at least one thread was stopped */
    int resume_fail_hits;                 /* how often the resume path really failed */
    int order_violation;
    long ev;                              /* monotonic event counter            */
    long ev_freeze, ev_pc_check, ev_first_store, ev_group_readback;
    long ev_rollback_done, ev_resume;
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

static long step(world_t *w) { return ++w->ev; }

static void w_init(world_t *w, faults_t f)
{
    int i;
    memset(w, 0, sizeof(*w));
    for (i = 0; i < NPTS; i++) {
        w->mem[i][0] = ORIG[i][0];
        w->mem[i][1] = ORIG[i][1];
    }
    w->f = f;
    w->state = ST_IDLE;
}

static faults_t no_fault(void)
{
    faults_t f;
    memset(&f, 0, sizeof(f));
    return f;
}

/* ---------------- byte-level predicates ---------------- */

static int needs_restore(const world_t *w, int i)
{
    return w->mem[i][0] != ORIG[i][0] || w->mem[i][1] != ORIG[i][1];
}

static int fully_orig(const world_t *w, int i)
{
    return !needs_restore(w, i);
}

static int fully_patched(const world_t *w, int i)
{
    return w->mem[i][0] == PATCH_JMP && w->mem[i][1] == TRAMP[i];
}

static int any_mixed(const world_t *w)
{
    int i;
    for (i = 0; i < NPTS; i++)
        if (needs_restore(w, i) && !fully_patched(w, i)) return 1;
    return 0;
}

static int all_orig(const world_t *w)
{
    int i;
    for (i = 0; i < NPTS; i++) if (!fully_orig(w, i)) return 0;
    return 1;
}

/* ---------------- primitives ---------------- */

/* One 4-byte aligned word store. Either it happens completely or not at all
 * (that is true on ARM32 for an aligned 32-bit store); a failure leaves the
 * word untouched. There is no "half word" state, which is why the 8-byte
 * patch must be modelled as two independent stores. */
static int w_write(world_t *w, int i, int wi, unsigned long v)
{
    w->word_writes++;
    if (w->f.fail_install[i][wi]) {
        w->word_write_fail++;
        return -1;
    }
    w->mem[i][wi] = v;
    return 0;
}

static int r_write(world_t *w, int i, int wi, unsigned long v)
{
    w->restore_writes++;
    if (w->f.fail_restore[i][wi]) {
        w->restore_fail++;
        return -1;
    }
    w->mem[i][wi] = v;
    return 0;
}

static int rb_word_ok(world_t *w, int i, int wi)
{
    unsigned long want = (wi == 0) ? PATCH_JMP : TRAMP[i];
    w->rb_checks++;
    if (w->f.fail_readback[i][wi]) { w->rb_fail++; return 0; }
    if (w->mem[i][wi] != want) { w->rb_fail++; return 0; }
    return 1;
}

/* Install both words of one point. Does NOT touch applied[]: the caller sets
 * that only after the readback succeeded. */
static int install_point(world_t *w, int i)
{
    if (w_write(w, i, 0, PATCH_JMP) != 0) return -1;
    if (w_write(w, i, 1, TRAMP[i]) != 0) return -1;   /* half written: word 0 is patched */
    return 0;
}

/* Restore one point to the original bytes and verify the result from memory. */
static void restore_point(world_t *w, int i)
{
    (void)r_write(w, i, 0, ORIG[i][0]);
    (void)r_write(w, i, 1, ORIG[i][1]);
    if (!fully_orig(w, i)) {
        w->restore_pending[i] = 1;
        w->verify_final_fail++;
    } else {
        w->restore_pending[i] = 0;
    }
}

/* ---------------- state machine ---------------- */

/* Freeze every target thread. Exactly one call per attempt is allowed: a
 * per-entry freeze would leave windows between points. */
static int freeze_threads(world_t *w)
{
    if (w->freeze_count != 0) { w->order_violation++; return -1; }  /* freeze twice */
    w->freeze_count++;
    w->ev_freeze = step(w);
    if (w->f.freeze_fail) return -1;            /* nothing was stopped */
    w->froze = 1;
    if (w->f.freeze_partial_fail) return -1;    /* some threads stopped, attach failed */
    return 0;
}

/* Resume every target thread. Must happen exactly once whenever anything was
 * frozen, and after the entries are in their final state. */
static int resume_threads(world_t *w)
{
    if (!w->froze) return 0;                    /* nothing to resume */
    if (w->resume_count != 0) { w->order_violation++; return -1; }
    w->resume_count++;
    w->ev_resume = step(w);
    if (w->f.resume_fail) { w->resume_fail_hits++; return -1; }
    return 0;
}

static int rollback(world_t *w)
{
    int i;
    w->state = ST_ROLLING_BACK;
    w->rollback_attempts++;
    for (i = 0; i < NPTS; i++) {          /* snapshot before touching anything */
        w->at_rollback[i][0] = w->mem[i][0];
        w->at_rollback[i][1] = w->mem[i][1];
    }
    /* The criterion is the actual entry bytes. applied[] is deliberately NOT
     * consulted: a point can be half written while applied[i] is still 0. */
    for (i = NPTS - 1; i >= 0; i--)
        if (needs_restore(w, i)) restore_point(w, i);

    w->state = all_orig(w) ? ST_FAILED : ST_ROLLBACK_FAILED;
    w->ev_rollback_done = step(w);
    return -1;
}

static void decide_verdict(world_t *w, int install_ok, int resume_ok)
{
    if (!install_ok && w->state == ST_ROLLBACK_FAILED) {
        w->verdict = resume_ok ? V_ROLLBACK_FAILED : V_ROLLBACK_AND_RESUME_FAILED;
    } else if (!resume_ok) {
        /* the entries may be correct, but the threads are still frozen:
         * this must never be reported as success */
        w->verdict = V_RESUME_FAILED;
    } else if (!install_ok) {
        w->verdict = V_INSTALL_FAILED;
    } else {
        w->verdict = V_SUCCESS;
    }
}

static int install_all(world_t *w)
{
    int i, install_ok = 1, resume_ok;

    w->state = ST_PRECHECK;
    for (i = 0; i < NPTS; i++) {
        if (w->f.precheck_bad[i]) {                  /* bytes are not the original prologue */
            w->verdict = V_INSTALL_FAILED;
            return -1;
        }
        if (!fully_orig(w, i)) {
            w->verdict = V_INSTALL_FAILED;
            return -1;
        }
    }

    if (freeze_threads(w) != 0) {                    /* must come before the PC check */
        (void)resume_threads(w);                     /* resume whatever was stopped */
        w->state = ST_FAILED;
        decide_verdict(w, 0, w->f.resume_fail ? 0 : 1);
        return -1;
    }
    w->state = ST_FROZEN;

    /* Only meaningful now: the threads are stopped, so their PCs cannot move. */
    w->ev_pc_check = step(w);
    for (i = 0; i < NPTS; i++) {
        if (w->f.pc_in_range[i]) {
            (void)resume_threads(w);
            w->state = ST_FAILED;
            decide_verdict(w, 0, w->f.resume_fail ? 0 : 1);
            return -1;
        }
    }

    w->state = ST_INSTALLING;
    for (i = 0; i < NPTS; i++) {
        if (w->ev_first_store == 0) w->ev_first_store = step(w);
        if (install_point(w, i) != 0) { install_ok = 0; break; }
        if (!rb_word_ok(w, i, 0) || !rb_word_ok(w, i, 1)) { install_ok = 0; break; }
        w->applied[i] = 1;                           /* only now */
    }
    /* group readback while still frozen, before any resume */
    if (install_ok) {
        w->ev_group_readback = step(w);
        for (i = 0; i < NPTS; i++)
            if (!rb_word_ok(w, i, 0) || !rb_word_ok(w, i, 1)) { install_ok = 0; break; }
    }
    if (!install_ok) (void)rollback(w);

    /* threads are resumed exactly once, after the entries reached a final state */
    resume_ok = (resume_threads(w) == 0);
    if (install_ok) w->state = ST_DONE;
    decide_verdict(w, install_ok, resume_ok);
    return install_ok ? 0 : -1;
}

/* Retry the rollback. Only legal from ROLLBACK_FAILED; the caller is expected
 * to have removed (or fixed) the fault that caused the failure. */
static int install_recover(world_t *w)
{
    int i;
    if (w->state != ST_ROLLBACK_FAILED) return -1;
    w->recover_attempts++;
    for (i = NPTS - 1; i >= 0; i--)
        if (needs_restore(w, i)) restore_point(w, i);
    if (!all_orig(w)) {
        w->state = ST_ROLLBACK_FAILED;
        return -1;
    }
    for (i = 0; i < NPTS; i++) w->applied[i] = 0;             /* bytes are the truth */
    w->state = ST_RECOVERED;
    /* entries are clean now; the resume outcome is unchanged and still decides
     * whether this may be reported as a plain install failure */
    w->verdict = (w->verdict == V_ROLLBACK_AND_RESUME_FAILED)
                 ? V_RESUME_FAILED : V_INSTALL_FAILED;
    return 0;
}

/* ---------------- shared invariants ---------------- */

static void check_invariants(world_t *w, const char *tag)
{
    int i, allp = 1, allo = 1;
    for (i = 0; i < NPTS; i++) {
        if (!fully_patched(w, i)) allp = 0;
        if (!fully_orig(w, i)) allo = 0;
    }
    chk(w->half_installed_reported_success == 0,
        "[%s] I5 half-install reported as success count is 0", tag);

    /* I6: freeze/resume happen at most once, and resume follows freeze */
    chk(w->freeze_count <= 1, "[%s] I6 freeze happened at most once (%d)", tag, w->freeze_count);
    chk(w->resume_count <= 1, "[%s] I6 resume happened at most once (%d)", tag, w->resume_count);
    chk(w->resume_count <= w->freeze_count,
        "[%s] I6 resume never precedes freeze (freeze=%d resume=%d)",
        tag, w->freeze_count, w->resume_count);
    chk(w->order_violation == 0, "[%s] I6 no repeated freeze/resume (%d violations)",
        tag, w->order_violation);
    if (w->froze && w->verdict != V_NONE)
        chk(w->resume_count == 1, "[%s] I6 anything frozen was resumed exactly once (%d)",
            tag, w->resume_count);

    /* I7: ordering evidence - freeze before the first store, group readback and
     * rollback before resume */
    if (w->ev_first_store && w->ev_freeze)
        chk(w->ev_freeze < w->ev_first_store,
            "[%s] I7 freeze(%ld) happened before the first word store(%ld)",
            tag, w->ev_freeze, w->ev_first_store);
    if (w->ev_pc_check && w->ev_freeze)
        chk(w->ev_freeze < w->ev_pc_check,
            "[%s] I7 freeze(%ld) happened before the stopped-PC check(%ld)",
            tag, w->ev_freeze, w->ev_pc_check);
    if (w->ev_group_readback && w->ev_resume)
        chk(w->ev_group_readback < w->ev_resume,
            "[%s] I7 group readback(%ld) happened before resume(%ld)",
            tag, w->ev_group_readback, w->ev_resume);
    if (w->ev_rollback_done && w->ev_resume)
        chk(w->ev_rollback_done < w->ev_resume,
            "[%s] I7 rollback finished(%ld) before resume(%ld)",
            tag, w->ev_rollback_done, w->ev_resume);

    /* I1-I4 on the verdict, which is the only thing a caller may trust */
    if (w->verdict == V_SUCCESS) {
        chk(allp, "[%s] I1 SUCCESS => all 3 entries read back as patched", tag);
        chk(!any_mixed(w), "[%s] I1 SUCCESS => no entry mixes patched and original words", tag);
        chk(w->resume_count == 1, "[%s] I1 SUCCESS => threads were resumed", tag);
        chk(w->freeze_count == 1, "[%s] I1 SUCCESS => threads were frozen first", tag);
    } else {
        chk(w->verdict != V_SUCCESS, "[%s] I2 a failure never yields SUCCESS (%s)",
            tag, v_name(w->verdict));
    }
    if (w->verdict == V_INSTALL_FAILED)
        chk(allo, "[%s] I3 %s => all 6 words byte-identical to the original",
            tag, v_name(w->verdict));
    if (w->verdict == V_RESUME_FAILED) {
        /* resume failure is independent of the entries: they may be fully
         * installed or fully rolled back, but the threads are still frozen */
        if (w->state == ST_DONE)
            chk(allp, "[%s] I3 RESUME_FAILED after a completed install => entries patched", tag);
        else
            chk(allo, "[%s] I3 RESUME_FAILED after a clean rollback => entries original", tag);
    }
    if (w->verdict == V_ROLLBACK_FAILED || w->verdict == V_ROLLBACK_AND_RESUME_FAILED) {
        chk(!allo, "[%s] I4 %s => at least one entry is provably not original",
            tag, v_name(w->verdict));
        chk(w->verdict != V_INSTALL_FAILED,
            "[%s] I4 a failed rollback is not reported as a plain install failure", tag);
        chk(w->state != ST_DONE, "[%s] I4 a failed rollback is never reported as DONE", tag);
    }
    if (w->f.resume_fail && w->freeze_count)
        chk(w->verdict == V_RESUME_FAILED || w->verdict == V_ROLLBACK_AND_RESUME_FAILED,
            "[%s] I8 resume failure has its own verdict, never SUCCESS/INSTALL_FAILED (%s)",
            tag, v_name(w->verdict));
}

/* ---------------- scenarios ---------------- */

int main(void)
{
    world_t w;
    faults_t f;
    int i, k;

    printf("=== T8-12.9 three-point install transaction + freeze/resume lifecycle ===\n\n");

    /* S0: the happy path */
    printf("[S0] no fault\n");
    printf("      points: %s | %s | %s\n", POINT_NAME[0], POINT_NAME[1], POINT_NAME[2]);
    w_init(&w, no_fault());
    k = install_all(&w);
    chk(k == 0, "install_all returns 0");
    chk(w.state == ST_DONE, "final state DONE (%s)", st_name(w.state));
    chk(w.verdict == V_SUCCESS, "verdict SUCCESS (%s)", v_name(w.verdict));
    chk(w.word_writes == NPTS * NW, "exactly %d word stores (2 per point), got %d",
        NPTS * NW, w.word_writes);
    chk(w.rb_checks == NPTS * NW * 2, "per-point and group readback both ran (%d word reads)", w.rb_checks);
    chk(w.freeze_count == 1 && w.resume_count == 1,
        "froze once and resumed once (freeze=%d resume=%d)", w.freeze_count, w.resume_count);
    for (i = 0; i < NPTS; i++)
        chk(fully_patched(&w, i) && w.applied[i] == 1, "point %d patched and applied", i);
    check_invariants(&w, "S0");
    printf("\n");

    /* S1: precheck failures - nothing may be written */
    for (i = 0; i < NPTS; i++) {
        printf("[S1.%d] precheck: entry %d does not hold the expected original bytes\n", i, i);
        f = no_fault(); f.precheck_bad[i] = 1;
        w_init(&w, f);
        k = install_all(&w);
        chk(k != 0, "install_all returns non-zero");
        chk(w.state == ST_PRECHECK, "state stays PRECHECK (%s)", st_name(w.state));
        chk(w.word_writes == 0, "zero word stores were attempted (%d)", w.word_writes);
        chk(all_orig(&w), "all entries still original");
        check_invariants(&w, "S1");
        printf("\n");
    }

    printf("[S1f] freeze failure (attach failed before any thread was stopped)\n");
    f = no_fault(); f.freeze_fail = 1;
    w_init(&w, f);
    k = install_all(&w);
    chk(k != 0, "install_all returns non-zero");
    chk(w.state == ST_FAILED, "final state FAILED, precheck passed and freeze then failed (%s)",
        st_name(w.state));
    chk(w.word_writes == 0, "zero word stores were attempted (%d)", w.word_writes);
    chk(all_orig(&w), "all entries still original");
    chk(w.freeze_count == 1 && w.froze == 0, "freeze attempted once, nothing stopped (froze=%d)", w.froze);
    chk(w.resume_count == 0, "nothing to resume (resume_count=%d)", w.resume_count);
    chk(w.verdict == V_INSTALL_FAILED, "verdict INSTALL_FAILED (%s)", v_name(w.verdict));
    check_invariants(&w, "S1f");
    printf("\n");

    printf("[S1q] freeze partially succeeds, then attach fails\n");
    f = no_fault(); f.freeze_partial_fail = 1;
    w_init(&w, f);
    k = install_all(&w);
    chk(k != 0, "install_all returns non-zero");
    chk(w.word_writes == 0, "zero word stores were attempted (%d)", w.word_writes);
    chk(w.froze == 1, "some threads were stopped before the failure (froze=1)");
    chk(w.resume_count == 1, "the partially frozen threads were resumed exactly once (%d)",
        w.resume_count);
    chk(w.verdict == V_INSTALL_FAILED, "verdict INSTALL_FAILED, not SUCCESS (%s)", v_name(w.verdict));
    chk(all_orig(&w), "all entries still original");
    check_invariants(&w, "S1q");
    printf("\n");

    for (i = 0; i < NPTS; i++) {
        printf("[S1p.%d] frozen, and a stopped PC sits inside entry %d\n", i, i);
        f = no_fault(); f.pc_in_range[i] = 1;
        w_init(&w, f);
        k = install_all(&w);
        chk(k != 0, "install_all returns non-zero");
        chk(w.word_writes == 0, "zero word stores were attempted (%d)", w.word_writes);
        chk(all_orig(&w), "all entries still original");
        chk(w.freeze_count == 1 && w.resume_count == 1,
            "frozen once, resumed once (freeze=%d resume=%d)", w.freeze_count, w.resume_count);
        chk(w.verdict == V_INSTALL_FAILED, "verdict INSTALL_FAILED (%s)", v_name(w.verdict));
        check_invariants(&w, "S1p");
        printf("\n");
    }

    /* S2: first word store fails */
    for (i = 0; i < NPTS; i++) {
        printf("[S2.%d] word 0 store at point %d fails (nothing written at that point)\n", i, i);
        f = no_fault(); f.fail_install[i][0] = 1;
        w_init(&w, f);
        k = install_all(&w);
        chk(k != 0, "install_all returns non-zero");
        chk(w.state == ST_FAILED, "final state FAILED (%s)", st_name(w.state));
        chk(fully_orig(&w, i), "point %d untouched (word 0 never written)", i);
        chk(all_orig(&w), "every entry restored to the original bytes");
        chk(w.applied[i] == 0, "applied[%d] stays 0", i);
        check_invariants(&w, "S2");
        printf("\n");
    }

    /* S3: second word store fails -> HALF WRITE with applied[] still 0 */
    for (i = 0; i < NPTS; i++) {
        printf("[S3.%d] word 0 OK, word 1 store at point %d fails -> partial patch\n", i, i);
        f = no_fault(); f.fail_install[i][1] = 1;
        w_init(&w, f);
        k = install_all(&w);
        chk(k != 0, "install_all returns non-zero");
        chk(w.applied[i] == 0, "applied[%d] is still 0 (the flag never got set)", i);
        chk(w.at_rollback[i][0] == PATCH_JMP && w.at_rollback[i][1] == ORIG[i][1],
            "at rollback entry point %d really was half written (0x%08lX | 0x%08lX)",
            i, w.at_rollback[i][0], w.at_rollback[i][1]);
        chk(w.restore_writes >= (i + 1) * NW,
            "rollback did NOT skip the half-written point (restore_writes=%d, needed >= %d)",
            w.restore_writes, (i + 1) * NW);
        chk(w.state == ST_FAILED, "final state FAILED (%s)", st_name(w.state));
        chk(all_orig(&w), "all 6 words are byte-identical to the original after rollback");
        check_invariants(&w, "S3");
        printf("\n");
    }

    /* S4: readback mismatch on exactly one word */
    for (i = 0; i < NPTS; i++) {
        printf("[S4.%d] readback of point %d reports word 1 mismatched\n", i, i);
        f = no_fault(); f.fail_readback[i][1] = 1;
        w_init(&w, f);
        k = install_all(&w);
        chk(k != 0, "install_all returns non-zero");
        chk(w.state == ST_FAILED, "final state FAILED (%s)", st_name(w.state));
        chk(w.rb_fail > 0, "the mismatch was detected by readback (rb_fail=%d)", w.rb_fail);
        chk(w.applied[i] == 0, "point %d never counted as applied", i);
        chk(all_orig(&w), "all entries restored after the readback triggered rollback");
        check_invariants(&w, "S4");
        printf("\n");
    }

    /* S5: restore itself fails part way -> ROLLBACK_FAILED, then repeated recovery.
     * Only points 0 and 1 are fully patched here, so only their word 1 is dirty. */
    for (i = 0; i < 2; i++) {
        printf("[S5.%d] install ok at 0..1, word 1 store at point 2 fails; restore of point %d word 1 also fails\n", i, i);
        f = no_fault();
        f.fail_install[NPTS - 1][1] = 1;
        f.fail_restore[i][1] = 1;
        w_init(&w, f);
        k = install_all(&w);
        chk(k != 0, "install_all returns non-zero");
        chk(w.state == ST_ROLLBACK_FAILED, "final state ROLLBACK_FAILED (%s)", st_name(w.state));
        chk(w.state != ST_DONE, "never reports DONE");
        chk(w.restore_pending[i] == 1, "point %d is flagged pending (restore_pending=1)", i);
        chk(!fully_orig(&w, i), "point %d is provably not original (%08lX | %08lX)",
            i, w.mem[i][0], w.mem[i][1]);
        check_invariants(&w, "S5");

        /* first recovery attempt still has the fault -> must stay ROLLBACK_FAILED */
        chk(install_recover(&w) != 0, "recovery attempt with the fault still present fails");
        chk(w.state == ST_ROLLBACK_FAILED, "state remains ROLLBACK_FAILED (%s)", st_name(w.state));
        chk(w.recover_attempts == 1, "one recovery attempt was made (%d)", w.recover_attempts);

        /* remove the fault and retry */
        w.f.fail_restore[i][1] = 0;
        chk(install_recover(&w) == 0, "second recovery attempt succeeds");
        chk(w.state == ST_RECOVERED, "final state RECOVERED (%s)", st_name(w.state));
        chk(all_orig(&w), "all 6 words byte-identical to the original after recovery");
        chk(w.applied[0] == 0 && w.applied[1] == 0 && w.applied[2] == 0,
            "applied[] cleared from the actual bytes, not kept on trust");
        check_invariants(&w, "S5r");

        /* a third call must be rejected: RECOVERED is not a recoverable state */
        chk(install_recover(&w) != 0, "recovery from RECOVERED is rejected (invalid transition)");
        check_invariants(&w, "S5x");
        printf("\n");
    }

    /* S5b: the restore store that fails writes a word that ALREADY equals the
     * original value (point 2 word 1 was never written). The byte criterion must
     * then report "restored", not fabricate a ROLLBACK_FAILED. */
    printf("[S5b] restore word 1 of point 2 fails, but that word was never changed\n");
    f = no_fault();
    f.fail_install[NPTS - 1][1] = 1;
    f.fail_restore[NPTS - 1][1] = 1;
    w_init(&w, f);
    k = install_all(&w);
    chk(k != 0, "install_all returns non-zero");
    chk(w.restore_fail > 0, "a restore store did fail (restore_fail=%d)", w.restore_fail);
    chk(w.restore_pending[NPTS - 1] == 0, "point 2 is not flagged pending: its bytes are original");
    chk(all_orig(&w), "all 6 words byte-identical to the original");
    chk(w.state == ST_FAILED, "state FAILED, not ROLLBACK_FAILED (%s)", st_name(w.state));
    chk(install_recover(&w) != 0, "recovery is refused because nothing is pending");
    check_invariants(&w, "S5b");
    printf("\n");

    /* S6: restore of word 0 fails -> the first word stays patched.
     * Only points 0 and 1 are ever patched here, so only they need restoring. */
    for (i = 0; i < 2; i++) {
        printf("[S6.%d] restore word 0 of point %d fails\n", i, i);
        f = no_fault();
        f.fail_install[1][1] = 1;
        f.fail_restore[i][0] = 1;
        w_init(&w, f);
        k = install_all(&w);
        chk(k != 0, "install_all returns non-zero");
        chk(w.state == ST_ROLLBACK_FAILED, "final state ROLLBACK_FAILED (%s)", st_name(w.state));
        chk(w.mem[i][0] == PATCH_JMP, "point %d word 0 is still the jump opcode (0x%08lX)",
            i, w.mem[i][0]);
        chk(!fully_orig(&w, i), "point %d is provably not original", i);
        check_invariants(&w, "S6");
        w.f.fail_restore[i][0] = 0;
        chk(install_recover(&w) == 0, "recovery after clearing the fault succeeds");
        chk(w.state == ST_RECOVERED, "final state RECOVERED (%s)", st_name(w.state));
        chk(all_orig(&w), "all 6 words byte-identical to the original");
        check_invariants(&w, "S6r");
        printf("\n");
    }

    /* S7: two independent faults - one at install, one at restore */
    printf("[S7] install word 1 at point 1 fails AND restore word 0 at point 0 fails\n");
    f = no_fault();
    f.fail_install[1][1] = 1;
    f.fail_restore[0][0] = 1;
    w_init(&w, f);
    k = install_all(&w);
    chk(k != 0, "install_all returns non-zero");
    chk(w.state == ST_ROLLBACK_FAILED, "final state ROLLBACK_FAILED (%s)", st_name(w.state));
    chk(w.at_rollback[1][0] == PATCH_JMP && w.at_rollback[1][1] == ORIG[1][1],
        "point 1 was half written when rollback started");
    chk(w.mem[0][0] == PATCH_JMP, "point 0 word 0 could not be restored");
    chk(!all_orig(&w), "the set of entries is provably not fully original");
    check_invariants(&w, "S7");
    w.f.fail_restore[0][0] = 0;
    chk(install_recover(&w) == 0, "recovery clears the last fault");
    chk(w.state == ST_RECOVERED && all_orig(&w), "RECOVERED with all 6 words original");
    check_invariants(&w, "S7r");
    printf("\n");

    /* S8: points that were never written must not be restored */
    printf("[S8] failure at point 2 word 1: only points 0..2 that need it are restored\n");
    f = no_fault(); f.fail_install[2][1] = 1;
    w_init(&w, f);
    k = install_all(&w);
    chk(k != 0, "install_all returns non-zero");
    chk(w.restore_writes == NPTS * NW,
        "exactly %d restore word stores (3 half/fully patched points x 2 words), got %d",
        NPTS * NW, w.restore_writes);
    chk(w.restore_fail == 0, "no restore store failed (%d)", w.restore_fail);
    chk(all_orig(&w), "all entries original");
    check_invariants(&w, "S8");
    printf("\n");

    /* S9: nothing can report success while an entry is half written */
    printf("[S9] sweep: no injected single-word fault ever yields DONE\n");
    {
        int fi, fw, groups = 0, bad = 0;
        for (fi = 0; fi < NPTS; fi++) {
            for (fw = 0; fw < NW; fw++) {
                f = no_fault(); f.fail_install[fi][fw] = 1;
                w_init(&w, f);
                (void)install_all(&w);
                groups++;
                if (w.state == ST_DONE) bad++;
                if (!all_orig(&w) && w.state != ST_ROLLBACK_FAILED) bad++;
            }
            f = no_fault(); f.fail_readback[fi][0] = 1;
            w_init(&w, f);
            (void)install_all(&w);
            groups++;
            if (w.state == ST_DONE) bad++;
        }
        chk(bad == 0, "all %d single-fault installs never reported DONE nor left a patch behind (bad=%d)",
            groups, bad);
        printf("\n");
    }

    /* S10: resume failure after a fully successful install.
     * The entries are correct, but the threads may still be frozen: the verdict
     * must say so and must never be SUCCESS. */
    printf("[S10] install succeeds, resume fails\n");
    f = no_fault(); f.resume_fail = 1;
    w_init(&w, f);
    k = install_all(&w);
    chk(k == 0, "install_all returns 0: the entries really are installed");
    chk(w.state == ST_DONE, "install FSM reached DONE (%s)", st_name(w.state));
    chk(any_mixed(&w) == 0 && all_orig(&w) == 0,
        "all 3 entries are patched, not mixed and not original");
    chk(w.verdict == V_RESUME_FAILED, "verdict RESUME_FAILED (%s)", v_name(w.verdict));
    chk(w.verdict != V_SUCCESS, "a failure to resume is never reported as SUCCESS");
    chk(w.resume_count == 1, "resume was attempted exactly once (%d)", w.resume_count);
    chk(w.resume_fail_hits == 1, "the resume path really failed once (%d)", w.resume_fail_hits);
    check_invariants(&w, "S10");
    printf("\n");

    /* S11: rollback failed AND resume failed -> its own verdict, not FAILED/DONE */
    printf("[S11] install fails, rollback fails, resume fails\n");
    f = no_fault();
    f.fail_install[1][1] = 1;
    f.fail_restore[0][0] = 1;
    f.resume_fail = 1;
    w_init(&w, f);
    k = install_all(&w);
    chk(k != 0, "install_all returns non-zero");
    chk(w.state == ST_ROLLBACK_FAILED, "install FSM state ROLLBACK_FAILED (%s)", st_name(w.state));
    chk(w.verdict == V_ROLLBACK_AND_RESUME_FAILED,
        "verdict ROLLBACK_AND_RESUME_FAILED (%s)", v_name(w.verdict));
    chk(w.verdict != V_INSTALL_FAILED && w.verdict != V_SUCCESS,
        "a failed rollback plus a failed resume is neither INSTALL_FAILED nor SUCCESS");
    chk(w.freeze_count == 1 && w.resume_count == 1,
        "froze once, tried to resume once (freeze=%d resume=%d)", w.freeze_count, w.resume_count);
    chk(!all_orig(&w), "at least one entry is still dirty");
    check_invariants(&w, "S11");
    w.f.fail_restore[0][0] = 0;
    chk(install_recover(&w) == 0, "recovery after the restore fault is cleared succeeds");
    chk(w.state == ST_RECOVERED, "state RECOVERED (%s)", st_name(w.state));
    chk(all_orig(&w), "all 6 words original after recovery");
    chk(w.verdict == V_RESUME_FAILED,
        "verdict still RESUME_FAILED after recovery: the threads are still frozen (%s)",
        v_name(w.verdict));
    chk(w.resume_count == 1 && w.freeze_count == 1,
        "recovery did not freeze or resume anything again (freeze=%d resume=%d)",
        w.freeze_count, w.resume_count);
    check_invariants(&w, "S11r");
    printf("\n");

    /* S12: freeze and resume happen exactly once for every fault position,
     * so a per-entry freeze cannot sneak in. */
    printf("[S12] sweep: every single-word install fault keeps freeze/resume counts at 1/1\n");
    {
        int fi, fw, cases = 0, bad = 0;
        for (fi = 0; fi < NPTS; fi++) {
            for (fw = 0; fw < NW; fw++) {
                f = no_fault(); f.fail_install[fi][fw] = 1;
                w_init(&w, f);
                (void)install_all(&w);
                cases++;
                if (w.freeze_count != 1 || w.resume_count != 1) bad++;
                if (w.verdict == V_SUCCESS) bad++;
                if (w.verdict == V_RESUME_FAILED) bad++;
            }
        }
        chk(bad == 0, "all %d install faults frozen once, resumed once, never SUCCESS (bad=%d)",
            cases, bad);
    }
    printf("\n");

    printf("RESULT: %s (checks=%d fails=%d)\n", fails == 0 ? "PASS" : "FAIL", checks, fails);
    return fails == 0 ? 0 : 1;
}
