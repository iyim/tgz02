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
    ST_IDLE = 0, ST_PRECHECK, ST_FROZEN, ST_POSTFREEZE_VERIFY, ST_INSTALLING,
    ST_ROLLING_BACK, ST_DONE, ST_FAILED, ST_ROLLBACK_FAILED, ST_RECOVERED, ST_ABORTED
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
    case ST_ABORTED: return "ABORTED";
    case ST_POSTFREEZE_VERIFY: return "POSTFREEZE_VERIFY";
    }
    return "?";
}

#define NTH      4                 /* target threads; per-thread state is a bit */
#define TH_BIT(i) (1u << (i))

/* ---------------- verdict ---------------- */

typedef enum {
    V_NONE = 0,
    V_SUCCESS,
    V_INSTALL_FAILED,
    V_ROLLBACK_FAILED,
    V_RESUME_FAILED,
    V_ROLLBACK_AND_RESUME_FAILED,
    V_ENTRY_CHANGED_BY_OTHERS
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
    case V_ENTRY_CHANGED_BY_OTHERS: return "ENTRY_CHANGED_BY_OTHERS";
    }
    return "?";
}

/* ---------------- injected faults ---------------- */

typedef struct {
    int precheck_bad[NPTS];        /* entry already patched / bytes not as expected */
    unsigned target_mask;          /* thread set to stop (0 = all NTH threads)    */
    int freeze_fail_at;            /* attach of thread n fails (-1 = never)       */
    int resume_fail_at;            /* resume of thread n fails (-1 = never)       */
    int pc_in_range[NPTS];         /* a stopped PC sits inside entry i            */
    int external_write_after_freeze[NPTS]; /* a foreign writer rewrites entry i   */
    unsigned long external_w0, external_w1;/* the bytes that foreign writer left  */
    int fail_install[NPTS][NW];    /* this word store does not happen             */
    int fail_readback[NPTS][NW];   /* readback of this word reports mismatch      */
    int fail_restore[NPTS][NW];    /* this restore store does not happen          */
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
    /* per-thread freeze / resume lifecycle */
    unsigned target_mask, frozen_mask, resumed_mask, resume_failed_mask;
    int freeze_count, resume_count;
    int freeze_fail_hits, resume_fail_hits;
    int postfreeze_checks, postfreeze_mismatch;   /* mismatch = entry index or -1 */
    int external_touched;
    unsigned long external_w0, external_w1;       /* bytes the foreign writer left */
    int order_violation;
    long ev;                              /* monotonic event counter            */
    long ev_freeze, ev_postfreeze_verify, ev_pc_check, ev_first_store, ev_group_readback;
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
    w->postfreeze_mismatch = -1;
}

static faults_t no_fault(void)
{
    faults_t f;
    memset(&f, 0, sizeof(f));
    f.freeze_fail_at = -1;
    f.resume_fail_at = -1;
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

/* Freeze the target thread set, thread by thread. Exactly one call per attempt:
 * a per-entry freeze would leave windows between points. */
static int freeze_all(world_t *w)
{
    int i;
    if (w->freeze_count != 0) { w->order_violation++; return -1; }
    w->freeze_count++;
    w->ev_freeze = step(w);
    w->target_mask = w->f.target_mask ? w->f.target_mask : ((1u << NTH) - 1u);
    for (i = 0; i < NTH; i++) {
        if (!(w->target_mask & TH_BIT(i))) continue;
        if (w->f.freeze_fail_at == i) { w->freeze_fail_hits++; return -1; }
        w->frozen_mask |= TH_BIT(i);        /* thread i really is stopped now */
    }
    /* A foreign writer can still touch an entry between the precheck and the
     * moment the threads are actually stopped. Model that here: after the
     * freeze, before any of our stores. */
    for (i = 0; i < NPTS; i++) {
        if (!w->f.external_write_after_freeze[i]) continue;
        w->mem[i][0] = w->f.external_w0;
        w->mem[i][1] = w->f.external_w1;
        w->external_w0 = w->f.external_w0;
        w->external_w1 = w->f.external_w1;
        w->external_touched = 1;
    }
    return 0;
}

/* Re-read the entries AFTER the freeze and immediately before the first store.
 * The precheck alone cannot rule out a writer that ran in between. */
static int verify_after_freeze(world_t *w)
{
    int i;
    w->state = ST_POSTFREEZE_VERIFY;
    w->ev_postfreeze_verify = step(w);
    for (i = 0; i < NPTS; i++) {
        w->postfreeze_checks++;
        if (!fully_orig(w, i)) { w->postfreeze_mismatch = i; return -1; }
    }
    return 0;
}

/* Resume the threads that were actually frozen, one by one. Best effort: a
 * failing thread does not stop the others, but it is remembered by bit. */
static int resume_all(world_t *w)
{
    int i, rc = 0;
    if (w->frozen_mask == 0) return 0;                 /* nothing was stopped */
    if (w->resume_count != 0) { w->order_violation++; return -1; }
    w->resume_count++;
    w->ev_resume = step(w);
    for (i = 0; i < NTH; i++) {
        if (!(w->frozen_mask & TH_BIT(i))) continue;   /* only frozen threads */
        if (w->f.resume_fail_at == i) {
            w->resume_failed_mask |= TH_BIT(i);
            w->resume_fail_hits++;
            rc = -1;
            continue;
        }
        w->resumed_mask |= TH_BIT(i);
    }
    return rc;
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

static void decide_verdict(world_t *w, int install_ok, int aborted_external)
{
    int resume_ok = (w->resume_failed_mask == 0);
    if (w->state == ST_ROLLBACK_FAILED) {
        w->verdict = resume_ok ? V_ROLLBACK_FAILED : V_ROLLBACK_AND_RESUME_FAILED;
    } else if (!resume_ok) {
        /* the entries may be correct, but some thread is still stopped:
         * this must never be reported as success */
        w->verdict = V_RESUME_FAILED;
    } else if (install_ok) {
        w->verdict = V_SUCCESS;
    } else if (aborted_external) {
        /* we wrote nothing; the entry no longer holds our expected prologue and
         * the foreign bytes are left exactly as they are */
        w->verdict = V_ENTRY_CHANGED_BY_OTHERS;
    } else {
        w->verdict = V_INSTALL_FAILED;
    }
}

static int install_all(world_t *w)
{
    int i, install_ok = 1;

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

    if (freeze_all(w) != 0) {                        /* thread-by-thread stop */
        (void)resume_all(w);                         /* resume whatever was stopped */
        w->state = ST_FAILED;
        decide_verdict(w, 0, 0);
        return -1;
    }
    w->state = ST_FROZEN;

    /* (1) byte re-verification after the freeze, before anything is written */
    if (verify_after_freeze(w) != 0) {
        (void)resume_all(w);
        w->state = ST_ABORTED;
        decide_verdict(w, 0, 1);                     /* NO rollback: keep foreign bytes */
        return -1;
    }

    /* (2) only now is the stopped-PC check meaningful */
    w->ev_pc_check = step(w);
    for (i = 0; i < NPTS; i++) {
        if (w->f.pc_in_range[i]) {
            (void)resume_all(w);
            w->state = ST_FAILED;
            decide_verdict(w, 0, 0);
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
    (void)resume_all(w);
    if (install_ok) w->state = ST_DONE;
    decide_verdict(w, install_ok, 0);
    /* 0 means "the transaction really succeeded", i.e. V_SUCCESS only. A resume
     * failure leaves threads stopped, so it must not return 0. */
    return (w->verdict == V_SUCCESS) ? 0 : -1;
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
    w->verdict = (w->resume_failed_mask != 0) ? V_RESUME_FAILED : V_INSTALL_FAILED;
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

    /* I9: per-thread accounting. "at least one thread frozen" is NOT
     * "all target threads frozen". */
    chk((w->frozen_mask & ~w->target_mask) == 0,
        "[%s] I9 frozen set is a subset of the target set (target=%#x frozen=%#x)",
        tag, w->target_mask, w->frozen_mask);
    chk((w->resumed_mask & ~w->frozen_mask) == 0,
        "[%s] I9 only frozen threads were resumed (frozen=%#x resumed=%#x)",
        tag, w->frozen_mask, w->resumed_mask);
    chk((w->resume_failed_mask & ~w->frozen_mask) == 0,
        "[%s] I9 resume failures are a subset of the frozen set (frozen=%#x failed=%#x)",
        tag, w->frozen_mask, w->resume_failed_mask);
    chk((w->resumed_mask & w->resume_failed_mask) == 0,
        "[%s] I9 a thread is either resumed or failed, never both (%#x)",
        tag, w->resumed_mask & w->resume_failed_mask);
    if (w->freeze_count == 1)
        chk(__builtin_popcount(w->frozen_mask) == (w->f.target_mask ? __builtin_popcount(w->f.target_mask) : NTH)
            || w->freeze_fail_hits > 0,
            "[%s] I9 all target threads frozen unless a freeze fault was injected (frozen=%#x fail=%d)",
            tag, w->frozen_mask, w->freeze_fail_hits);
    if (w->frozen_mask && w->resume_count == 1)
        chk((w->resumed_mask | w->resume_failed_mask) == w->frozen_mask,
            "[%s] I9 every frozen thread is accounted for on resume (frozen=%#x ok=%#x failed=%#x)",
            tag, w->frozen_mask, w->resumed_mask, w->resume_failed_mask);
    if (w->frozen_mask && w->verdict != V_NONE)
        chk(w->resume_count == 1, "[%s] I6 anything frozen was resumed exactly once (%d)",
            tag, w->resume_count);

    /* I7: ordering evidence - freeze before the post-freeze re-verification,
     * that re-verification before the first store, group readback and rollback
     * before resume */
    if (w->ev_postfreeze_verify && w->ev_freeze)
        chk(w->ev_freeze < w->ev_postfreeze_verify,
            "[%s] I7 freeze(%ld) happened before the post-freeze re-verification(%ld)",
            tag, w->ev_freeze, w->ev_postfreeze_verify);
    if (w->ev_postfreeze_verify && w->ev_first_store)
        chk(w->ev_postfreeze_verify < w->ev_first_store,
            "[%s] I7 re-verification(%ld) happened before the first word store(%ld)",
            tag, w->ev_postfreeze_verify, w->ev_first_store);
    if (w->ev_postfreeze_verify && w->ev_pc_check)
        chk(w->ev_postfreeze_verify < w->ev_pc_check,
            "[%s] I7 re-verification(%ld) happened before the stopped-PC check(%ld)",
            tag, w->ev_postfreeze_verify, w->ev_pc_check);
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
        chk(w->resumed_mask == w->target_mask,
            "[%s] I1 SUCCESS => every target thread was resumed (target=%#x resumed=%#x)",
            tag, w->target_mask, w->resumed_mask);
    } else {
        chk(w->verdict != V_SUCCESS, "[%s] I2 a failure never yields SUCCESS (%s)",
            tag, v_name(w->verdict));
    }
    if (w->verdict == V_INSTALL_FAILED)
        chk(allo, "[%s] I3 %s => all 6 words byte-identical to the original",
            tag, v_name(w->verdict));
    if (w->verdict == V_RESUME_FAILED) {
        /* resume failure is independent of the entries: they may be fully
         * installed or fully rolled back, but a thread is still stopped */
        if (w->state == ST_DONE)
            chk(allp, "[%s] I3 RESUME_FAILED after a completed install => entries patched", tag);
        else if (w->state == ST_ABORTED)
            chk(!allo, "[%s] I3 RESUME_FAILED after an external-change abort => foreign bytes kept", tag);
        else
            chk(allo, "[%s] I3 RESUME_FAILED after a clean rollback => entries original", tag);
        chk(w->resume_failed_mask != 0, "[%s] I3 RESUME_FAILED => the failed set is not empty", tag);
    }
    if (w->verdict == V_ROLLBACK_FAILED || w->verdict == V_ROLLBACK_AND_RESUME_FAILED) {
        chk(!allo, "[%s] I4 %s => at least one entry is provably not original",
            tag, v_name(w->verdict));
        chk(w->verdict != V_INSTALL_FAILED,
            "[%s] I4 a failed rollback is not reported as a plain install failure", tag);
        chk(w->state != ST_DONE, "[%s] I4 a failed rollback is never reported as DONE", tag);
    }
    /* I10: an abort caused by a foreign writer must not write, must not roll
     * back over those bytes, and must keep them verbatim */
    if (w->verdict == V_ENTRY_CHANGED_BY_OTHERS) {
        chk(w->word_writes == 0,
            "[%s] I10 aborted => zero word stores were attempted (%d)", tag, w->word_writes);
        chk(w->postfreeze_mismatch >= 0,
            "[%s] I10 aborted => the post-freeze re-verification found entry %d",
            tag, w->postfreeze_mismatch);
        chk(w->restore_writes == 0,
            "[%s] I10 aborted => no old snapshot was written back (%d restore stores)",
            tag, w->restore_writes);
        {
            int pres = 1;
            for (i = 0; i < NPTS; i++)
                if (w->f.external_write_after_freeze[i] &&
                    (w->mem[i][0] != w->external_w0 || w->mem[i][1] != w->external_w1)) pres = 0;
            chk(pres, "[%s] I10 aborted => the foreign bytes are preserved verbatim", tag);
        }
        chk(w->state == ST_ABORTED, "[%s] I10 aborted => state ABORTED (%s)",
            tag, st_name(w->state));
    }
    if (w->f.resume_fail_at >= 0 && w->freeze_count)
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
    f = no_fault(); f.freeze_fail_at = 0;          /* thread 0 cannot be stopped */
    w_init(&w, f);
    k = install_all(&w);
    chk(k != 0, "install_all returns non-zero");
    chk(w.state == ST_FAILED, "final state FAILED, precheck passed and freeze then failed (%s)",
        st_name(w.state));
    chk(w.word_writes == 0, "zero word stores were attempted (%d)", w.word_writes);
    chk(all_orig(&w), "all entries still original");
    chk(w.freeze_count == 1 && w.frozen_mask == 0, "freeze attempted once, nothing stopped (frozen=%#x)", w.frozen_mask);
    chk(w.resume_count == 0, "nothing to resume (resume_count=%d)", w.resume_count);
    chk(w.verdict == V_INSTALL_FAILED, "verdict INSTALL_FAILED (%s)", v_name(w.verdict));
    check_invariants(&w, "S1f");
    printf("\n");

    printf("[S1q] freeze partially succeeds, then attach fails\n");
    f = no_fault(); f.freeze_fail_at = 2;          /* threads 0,1 stopped, then failure */
    w_init(&w, f);
    k = install_all(&w);
    chk(k != 0, "install_all returns non-zero");
    chk(w.word_writes == 0, "zero word stores were attempted (%d)", w.word_writes);
    chk(w.frozen_mask == (TH_BIT(0) | TH_BIT(1)), "threads 0 and 1 were stopped before the failure (frozen=%#x)", w.frozen_mask);
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
    f = no_fault(); f.resume_fail_at = 0;          /* thread 0 cannot be resumed */
    w_init(&w, f);
    k = install_all(&w);
    chk(k != 0, "install_all returns non-zero: a resume failure is never a success");
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
    f.resume_fail_at = 0;
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

    /* S13: a foreign writer changes an entry between the precheck and the
     * freeze. The post-freeze re-verification must catch it, we must write
     * nothing, and the foreign bytes must survive untouched. */
    for (i = 0; i < NPTS; i++) {
        printf("[S13.%d] entry %d is rewritten by someone else right after the freeze\n", i, i);
        f = no_fault();
        f.external_write_after_freeze[i] = 1;
        f.external_w0 = 0xE1A00000UL;      /* nop: clearly not our prologue */
        f.external_w1 = 0xE1A01001UL;
        w_init(&w, f);
        k = install_all(&w);
        chk(k != 0, "install_all returns non-zero");
        chk(w.postfreeze_checks == i + 1,
            "entries 0..%d were re-read, stopping at the mismatch (%d reads)",
            i, w.postfreeze_checks);
        chk(w.postfreeze_mismatch == i, "the mismatch was detected at entry %d (%d)",
            i, w.postfreeze_mismatch);
        chk(w.word_writes == 0, "no patch word was written at all (%d)", w.word_writes);
        chk(w.mem[i][0] == f.external_w0 && w.mem[i][1] == f.external_w1,
            "the foreign bytes are still there (0x%08lX | 0x%08lX)", w.mem[i][0], w.mem[i][1]);
        chk(w.restore_writes == 0, "no stale snapshot was written back (%d restore stores)",
            w.restore_writes);
        chk(w.state == ST_ABORTED, "state ABORTED (%s)", st_name(w.state));
        chk(w.verdict == V_ENTRY_CHANGED_BY_OTHERS,
            "verdict ENTRY_CHANGED_BY_OTHERS (%s)", v_name(w.verdict));
        chk(w.verdict != V_SUCCESS, "never SUCCESS");
        chk(w.frozen_mask == ((1u << NTH) - 1u), "all target threads were frozen (%#x)", w.frozen_mask);
        chk(w.resumed_mask == w.frozen_mask,
            "every frozen thread was resumed (frozen=%#x resumed=%#x)", w.frozen_mask, w.resumed_mask);
        chk(w.resume_count == 1, "resumed exactly once (%d)", w.resume_count);
        chk(w.ev_postfreeze_verify && w.ev_first_store == 0,
            "re-verification ran (%ld) and no store event was ever recorded (%ld)",
            w.ev_postfreeze_verify, w.ev_first_store);
        check_invariants(&w, "S13");
        printf("\n");
    }

    printf("[S13r] entry 1 rewritten after the freeze AND thread 2 cannot be resumed\n");
    f = no_fault();
    f.external_write_after_freeze[1] = 1;
    f.external_w0 = 0xE1A00000UL;
    f.external_w1 = 0xE1A01001UL;
    f.resume_fail_at = 2;
    w_init(&w, f);
    k = install_all(&w);
    chk(k != 0, "install_all returns non-zero");
    chk(w.word_writes == 0, "no patch word was written (%d)", w.word_writes);
    chk(w.mem[1][0] == f.external_w0 && w.mem[1][1] == f.external_w1,
        "the foreign bytes survive even when the resume fails");
    chk(w.resume_failed_mask == TH_BIT(2), "exactly thread 2 is left stopped (failed=%#x)",
        w.resume_failed_mask);
    chk(w.resumed_mask == (w.frozen_mask & ~TH_BIT(2)),
        "the other frozen threads were resumed (frozen=%#x resumed=%#x)",
        w.frozen_mask, w.resumed_mask);
    chk(w.verdict == V_RESUME_FAILED,
        "verdict RESUME_FAILED because a thread is still stopped (%s)", v_name(w.verdict));
    chk(w.verdict != V_ENTRY_CHANGED_BY_OTHERS && w.verdict != V_SUCCESS,
        "the resume failure takes precedence over the external-change verdict");
    check_invariants(&w, "S13r");
    printf("\n");

    /* S14: per-thread freeze / resume matrix. "at least one thread frozen" is
     * never treated as "all threads frozen". */
    printf("[S14.0] all target threads frozen, all resumed\n");
    w_init(&w, no_fault());
    k = install_all(&w);
    chk(k == 0, "install_all returns 0");
    chk(w.target_mask == ((1u << NTH) - 1u), "target set holds all %d threads (%#x)",
        NTH, w.target_mask);
    chk(w.frozen_mask == w.target_mask, "all target threads frozen (%#x)", w.frozen_mask);
    chk(w.resumed_mask == w.frozen_mask, "all frozen threads resumed (%#x)", w.resumed_mask);
    chk(w.resume_failed_mask == 0, "nothing failed to resume (%#x)", w.resume_failed_mask);
    chk(w.verdict == V_SUCCESS, "verdict SUCCESS (%s)", v_name(w.verdict));
    check_invariants(&w, "S14.0");
    printf("\n");

    for (i = 1; i < NTH; i++) {
        printf("[S14.1.%d] freeze fails at thread %d; the %d already-frozen threads must all resume\n",
               i, i, i);
        f = no_fault(); f.freeze_fail_at = i;
        w_init(&w, f);
        k = install_all(&w);
        chk(k != 0, "install_all returns non-zero");
        chk(w.frozen_mask == (((1u << i) - 1u) & w.target_mask),
            "exactly the first %d threads are frozen (frozen=%#x)", i, w.frozen_mask);
        chk(w.frozen_mask != w.target_mask, "a partial freeze is NOT reported as a full freeze");
        chk(w.resumed_mask == w.frozen_mask,
            "all frozen threads were resumed (frozen=%#x resumed=%#x)", w.frozen_mask, w.resumed_mask);
        chk(w.resume_failed_mask == 0, "no resume failure (%#x)", w.resume_failed_mask);
        chk(w.word_writes == 0, "no word was written (%d)", w.word_writes);
        chk(w.verdict == V_INSTALL_FAILED, "verdict INSTALL_FAILED (%s)", v_name(w.verdict));
        check_invariants(&w, "S14.1");
        printf("\n");
    }

    printf("[S14.2] freeze fails at thread 2 AND resuming thread 0 fails\n");
    f = no_fault(); f.freeze_fail_at = 2; f.resume_fail_at = 0;
    w_init(&w, f);
    k = install_all(&w);
    chk(k != 0, "install_all returns non-zero");
    chk(w.frozen_mask == (TH_BIT(0) | TH_BIT(1)), "threads 0,1 were frozen (%#x)", w.frozen_mask);
    chk(w.resumed_mask == TH_BIT(1), "only thread 1 was resumed (%#x)", w.resumed_mask);
    chk(w.resume_failed_mask == TH_BIT(0), "thread 0 is left stopped (%#x)", w.resume_failed_mask);
    chk((w.resumed_mask | w.resume_failed_mask) == w.frozen_mask,
        "every frozen thread is accounted for exactly once");
    chk(w.verdict == V_RESUME_FAILED, "verdict RESUME_FAILED (%s)", v_name(w.verdict));
    chk(w.verdict != V_INSTALL_FAILED && w.verdict != V_SUCCESS,
        "a leftover stopped thread is neither INSTALL_FAILED nor SUCCESS");
    check_invariants(&w, "S14.2");
    printf("\n");

    printf("[S14.3] all frozen, resuming thread 1 fails\n");
    f = no_fault(); f.resume_fail_at = 1;
    w_init(&w, f);
    k = install_all(&w);
    chk(k != 0, "install_all returns non-zero (resume did not complete)");
    chk(w.frozen_mask == w.target_mask, "all target threads were frozen (%#x)", w.frozen_mask);
    chk(w.resumed_mask == (w.target_mask & ~TH_BIT(1)),
        "the other three were resumed (%#x)", w.resumed_mask);
    chk(w.resume_failed_mask == TH_BIT(1), "exactly thread 1 is left stopped (%#x)",
        w.resume_failed_mask);
    chk(w.verdict == V_RESUME_FAILED, "verdict RESUME_FAILED (%s)", v_name(w.verdict));
    check_invariants(&w, "S14.3");
    printf("\n");

    printf("[S14.4] install fails, rollback succeeds, then every frozen thread is resumed\n");
    f = no_fault(); f.fail_install[1][1] = 1;
    w_init(&w, f);
    k = install_all(&w);
    chk(k != 0, "install_all returns non-zero");
    chk(w.state == ST_FAILED, "state FAILED (%s)", st_name(w.state));
    chk(w.resumed_mask == w.frozen_mask && w.resumed_mask == w.target_mask,
        "all frozen threads resumed after a clean rollback (frozen=%#x resumed=%#x)",
        w.frozen_mask, w.resumed_mask);
    chk(w.verdict == V_INSTALL_FAILED, "verdict INSTALL_FAILED (%s)", v_name(w.verdict));
    check_invariants(&w, "S14.4");
    printf("\n");

    printf("[S14.5] install fails, rollback fails, then every frozen thread is still resumed\n");
    f = no_fault(); f.fail_install[1][1] = 1; f.fail_restore[0][0] = 1;
    w_init(&w, f);
    k = install_all(&w);
    chk(k != 0, "install_all returns non-zero");
    chk(w.state == ST_ROLLBACK_FAILED, "state ROLLBACK_FAILED (%s)", st_name(w.state));
    chk(w.resumed_mask == w.frozen_mask,
        "a failed rollback never leaves the threads frozen (frozen=%#x resumed=%#x)",
        w.frozen_mask, w.resumed_mask);
    chk(w.verdict == V_ROLLBACK_FAILED, "verdict ROLLBACK_FAILED (%s)", v_name(w.verdict));
    check_invariants(&w, "S14.5");
    printf("\n");

    printf("[S14.6] sweep: no per-thread resume failure can ever look like success\n");
    {
        int ri, cases = 0, bad = 0;
        for (ri = 0; ri < NTH; ri++) {
            f = no_fault(); f.resume_fail_at = ri;
            w_init(&w, f);
            (void)install_all(&w);
            cases++;
            if (w.verdict == V_SUCCESS || w.verdict == V_INSTALL_FAILED) bad++;
            if (w.resume_failed_mask != TH_BIT(ri)) bad++;
            if ((w.resumed_mask | w.resume_failed_mask) != w.frozen_mask) bad++;
            if (w.resume_count != 1) bad++;
        }
        chk(bad == 0,
            "all %d single-thread resume failures: verdict not SUCCESS/INSTALL_FAILED, "
            "failed set exact, frozen set fully accounted (bad=%d)", cases, bad);
    }
    printf("\n");

    printf("RESULT: %s (checks=%d fails=%d)\n", fails == 0 ? "PASS" : "FAIL", checks, fails);
    return fails == 0 ? 0 : 1;
}
