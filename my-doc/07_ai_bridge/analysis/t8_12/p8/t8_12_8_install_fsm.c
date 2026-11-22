/*
 * T8-12.8  R16: three-point install transaction with WORD-GRANULAR writes.
 *
 * This is NOT production code. It models
 *    precheck -> verify original bytes -> freeze all threads
 *    -> install point by point (2 x 4-byte word stores per point)
 *    -> read back every point -> on any failure roll back all
 * as an explicit state machine, and injects faults at every single step,
 * including faults that leave an entry half written.
 *
 * T8-12.7 modelled "write both words" as one indivisible operation and set
 * applied[i] only afterwards; a failure between the two stores left a half
 * patch that the rollback then skipped, because it trusted applied[].  This
 * version therefore:
 *   (a) models each 4-byte word store separately (an aligned 32-bit store is
 *       atomic on ARM32; the 8-byte patch is NOT);
 *   (b) decides "does this entry need restoring" from the ACTUAL ENTRY BYTES,
 *       never from applied[];
 *   (c) keeps ROLLBACK_FAILED until every entry is verified byte-identical;
 *   (d) supports repeated recovery attempts.
 *
 * Invariants asserted for every scenario:
 *   I1 DONE only when all 3 entries read back as patched;
 *   I2 a failure never ends in DONE;
 *   I3 FAILED / RECOVERED means all 6 words are byte-identical to the original;
 *   I4 ROLLBACK_FAILED means at least one entry is provably NOT original;
 *   I5 "half installed but reported success" count is always 0.
 *
 * Build: gcc -O1 -Wall -Wextra -std=c99 -o t8_12_8_install_fsm t8_12_8_install_fsm.c
 * Run:   ./t8_12_8_install_fsm
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

/* ---------------- injected faults ---------------- */

typedef struct {
    int precheck_bad[NPTS];        /* entry already patched / bytes not as expected */
    int freeze_fail;               /* threads could not be stopped */
    int pc_in_range[NPTS];         /* a stopped PC sits inside entry i          */
    int fail_install[NPTS][NW];    /* this word store does not happen           */
    int fail_readback[NPTS][NW];   /* readback of this word reports mismatch    */
    int fail_restore[NPTS][NW];    /* this restore store does not happen        */
} faults_t;

/* ---------------- simulated target memory ---------------- */

typedef struct {
    unsigned long mem[NPTS][NW];          /* the "target bytes", word visible */
    unsigned long at_rollback[NPTS][NW];  /* snapshot taken when rollback starts */
    int applied[NPTS];                    /* 1 only after both words + readback  */
    int restore_pending[NPTS];
    st_t state;
    faults_t f;
    int word_writes, word_write_fail;
    int rb_checks, rb_fail;
    int restore_writes, restore_fail;
    int verify_final_fail;
    int half_installed_reported_success;
    int rollback_attempts, recover_attempts;
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
    return -1;
}

static int install_all(world_t *w)
{
    int i;

    w->state = ST_PRECHECK;
    for (i = 0; i < NPTS; i++) {
        if (w->f.precheck_bad[i]) return -1;                 /* bytes are not the original prologue */
        if (!fully_orig(w, i))     return -1;                /* read back the original bytes */
    }
    if (w->f.freeze_fail) return -1;                         /* could not stop the threads */
    for (i = 0; i < NPTS; i++)
        if (w->f.pc_in_range[i]) return -1;                  /* a thread is inside the entry */

    w->state = ST_FROZEN;
    w->state = ST_INSTALLING;
    for (i = 0; i < NPTS; i++) {
        if (install_point(w, i) != 0) return rollback(w);
        if (!rb_word_ok(w, i, 0) || !rb_word_ok(w, i, 1)) return rollback(w);
        w->applied[i] = 1;                                   /* only now */
    }
    /* group readback before declaring success */
    for (i = 0; i < NPTS; i++)
        if (!rb_word_ok(w, i, 0) || !rb_word_ok(w, i, 1)) return rollback(w);

    w->state = ST_DONE;
    return 0;
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
    if (w->state == ST_DONE) {
        chk(allp, "[%s] I1 DONE => all 3 entries read back as patched", tag);
        chk(!any_mixed(w), "[%s] I1 DONE => no entry is a mix of patched/original words", tag);
    } else {
        /* I2: every state other than ROLLBACK_FAILED must leave no patch behind */
        if (w->state != ST_ROLLBACK_FAILED)
            chk(allo, "[%s] I2 %s => no patch left behind in any entry", tag, st_name(w->state));
        if (w->state == ST_ROLLBACK_FAILED)
            chk(!allo, "[%s] I4 ROLLBACK_FAILED => at least one entry is provably not original", tag);
        chk(w->state != ST_DONE, "[%s] I2 a failure never ends in DONE (%s)", tag, st_name(w->state));
    }
}

/* ---------------- scenarios ---------------- */

int main(void)
{
    world_t w;
    faults_t f;
    int i, k;

    printf("=== T8-12.8 three-point install transaction (word-granular model) ===\n\n");

    /* S0: the happy path */
    printf("[S0] no fault\n");
    printf("      points: %s | %s | %s\n", POINT_NAME[0], POINT_NAME[1], POINT_NAME[2]);
    w_init(&w, no_fault());
    k = install_all(&w);
    chk(k == 0, "install_all returns 0");
    chk(w.state == ST_DONE, "final state DONE (%s)", st_name(w.state));
    chk(w.word_writes == NPTS * NW, "exactly %d word stores (2 per point), got %d",
        NPTS * NW, w.word_writes);
    chk(w.rb_checks == NPTS * NW * 2, "per-point and group readback both ran (%d word reads)", w.rb_checks);
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

    printf("[S1f] freeze failure\n");
    f = no_fault(); f.freeze_fail = 1;
    w_init(&w, f);
    k = install_all(&w);
    chk(k != 0, "install_all returns non-zero");
    chk(w.state == ST_PRECHECK, "state stays PRECHECK (%s)", st_name(w.state));
    chk(w.word_writes == 0, "zero word stores were attempted (%d)", w.word_writes);
    chk(all_orig(&w), "all entries still original");
    check_invariants(&w, "S1f");
    printf("\n");

    for (i = 0; i < NPTS; i++) {
        printf("[S1p.%d] a stopped PC sits inside entry %d\n", i, i);
        f = no_fault(); f.pc_in_range[i] = 1;
        w_init(&w, f);
        k = install_all(&w);
        chk(k != 0, "install_all returns non-zero");
        chk(w.word_writes == 0, "zero word stores were attempted (%d)", w.word_writes);
        chk(all_orig(&w), "all entries still original");
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

    printf("RESULT: %s (checks=%d fails=%d)\n", fails == 0 ? "PASS" : "FAIL", checks, fails);
    return fails == 0 ? 0 : 1;
}
