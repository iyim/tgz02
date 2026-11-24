/*
 * t9_07r1f_kind_literal_test.c -- T9-07R1F host tests for the "kind must be a string" rule.
 *
 *   gcc -O1 -o t9_07r1f_kind_literal_test t9_07r1f_kind_literal_test.c ../android/tg_inbox.c
 *   ./t9_07r1f_kind_literal_test
 *
 * The T9-07R1 parser refused a numeric kind but let true/false/null fall through the generic
 * bare-literal branch, so they silently became the default "say". These tests pin the closed
 * hole and, just as important, pin that ordinary requests are still tolerated unchanged.
 *
 * Covered:
 *   1  kind:true is refused, and the reason names the real problem
 *   2  kind:false is refused
 *   3  kind:null is refused
 *   4  a numeric kind is still refused (T9-07R1 behaviour kept)
 *   5  an empty kind is refused
 *   6  an unknown string kind is refused
 *   7  "ask" is accepted
 *   8  "say" is accepted
 *   9  a request without kind is still accepted and means "say"
 *  10  bare literals on OTHER keys are still tolerated (old requests keep working)
 *  11  end to end: kind:true is refused by the inbox, answered ok:false, parked in rejected/
 *  12  end to end: a legacy request (no kind) is accepted with stage "queue"
 */
#include "../android/tg_inbox.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <dirent.h>
#include <unistd.h>

#ifdef _WIN32
#include <direct.h>
#include <io.h>
#define MKDIR(p) _mkdir(p)
#define RMDIR(p) _rmdir(p)
#define UNLINK(p) _unlink(p)
#else
#define MKDIR(p) mkdir((p), 0755)
#define RMDIR(p) rmdir(p)
#define UNLINK(p) unlink(p)
#endif

static int PASS = 0, FAIL = 0;

static void ck(int cond, const char *name)
{
    if (cond) { PASS++; }
    else { FAIL++; printf("FAIL: %s\n", name); }
}

static void cks(const char *got, const char *want, const char *name)
{
    if (got != NULL && want != NULL && strcmp(got, want) == 0) { PASS++; }
    else { FAIL++; printf("FAIL: %s (want [%s] got [%s])\n", name,
                          want ? want : "(null)", got ? got : "(null)"); }
}

static void ckc(const char *hay, const char *needle, const char *name)
{
    if (hay != NULL && needle != NULL && strstr(hay, needle) != NULL) { PASS++; }
    else { FAIL++; printf("FAIL: %s (missing [%s] in [%.160s])\n", name,
                          needle ? needle : "(null)", hay ? hay : "(null)"); }
}

/* ------------------------------------------------------------- fixture */

static char ROOT[400], INBOX[440], RESULT[440], REJECTED[440];

static void rm_rf(const char *path)
{
    DIR *d = opendir(path);
    if (d != NULL) {
        struct dirent *e;
        while ((e = readdir(d)) != NULL) {
            char p[600];
            if (strcmp(e->d_name, ".") == 0 || strcmp(e->d_name, "..") == 0) continue;
            snprintf(p, sizeof(p), "%s/%s", path, e->d_name);
            rm_rf(p);
        }
        closedir(d);
        RMDIR(path);
        return;
    }
    UNLINK(path);
}

static char *slurp(const char *path)
{
    static char buf[8192];
    FILE *f = fopen(path, "rb");
    size_t n;
    if (f == NULL) { buf[0] = '\0'; return buf; }
    n = fread(buf, 1, sizeof(buf) - 1, f);
    fclose(f);
    buf[n] = '\0';
    return buf;
}

static void write_req(const char *name, const char *body)
{
    char p[600];
    FILE *f;
    snprintf(p, sizeof(p), "%s/%s", INBOX, name);
    f = fopen(p, "wb");
    if (f == NULL) { printf("FAIL: cannot write %s\n", p); FAIL++; return; }
    fwrite(body, 1, strlen(body), f);
    fclose(f);
}

static int count_files(const char *dir)
{
    DIR *d = opendir(dir);
    struct dirent *e;
    int n = 0;
    if (d == NULL) return -1;
    while ((e = readdir(d)) != NULL) {
        if (strcmp(e->d_name, ".") == 0 || strcmp(e->d_name, "..") == 0) continue;
        n++;
    }
    closedir(d);
    return n;
}

typedef struct { int calls; char last_kind[16]; } cap_q;

static int cap_enqueue(void *ctx, const char *event_id, const char *text,
                       int text_bytes, const char *kind, char *err, size_t errlen)
{
    cap_q *q = (cap_q *)ctx;
    (void)event_id; (void)text; (void)text_bytes; (void)err; (void)errlen;
    q->calls++;
    snprintf(q->last_kind, sizeof(q->last_kind), "%s", kind != NULL ? kind : "(null)");
    return 0;
}

int main(void)
{
    ti_msg m;
    char err[160];

    /* ---- 1..3 bare literals ---- */
    {
        const char *s = "{\"v\":1,\"event_id\":\"e1\",\"text\":\"hi\",\"kind\":true}";
        ck(ti_parse_msg(s, strlen(s), &m, err, sizeof(err)) != 0, "1 kind:true refused");
        ckc(err, "kind must be a string", "1 reason names the real problem");
    }
    {
        const char *s = "{\"v\":1,\"event_id\":\"e2\",\"text\":\"hi\",\"kind\":false}";
        ck(ti_parse_msg(s, strlen(s), &m, err, sizeof(err)) != 0, "2 kind:false refused");
        ckc(err, "kind must be a string", "2 reason");
    }
    {
        const char *s = "{\"v\":1,\"event_id\":\"e3\",\"text\":\"hi\",\"kind\":null}";
        ck(ti_parse_msg(s, strlen(s), &m, err, sizeof(err)) != 0, "3 kind:null refused");
        ckc(err, "kind must be a string", "3 reason");
    }

    /* ---- 4..6 the other refusals stay ---- */
    {
        const char *s = "{\"v\":1,\"event_id\":\"e4\",\"text\":\"hi\",\"kind\":1}";
        ck(ti_parse_msg(s, strlen(s), &m, err, sizeof(err)) != 0, "4 numeric kind refused");
        ckc(err, "kind must be a string", "4 reason");
    }
    {
        const char *s = "{\"v\":1,\"event_id\":\"e5\",\"text\":\"hi\",\"kind\":\"\"}";
        ck(ti_parse_msg(s, strlen(s), &m, err, sizeof(err)) != 0, "5 empty kind refused");
    }
    {
        const char *s = "{\"v\":1,\"event_id\":\"e6\",\"text\":\"hi\",\"kind\":\"speak\"}";
        ck(ti_parse_msg(s, strlen(s), &m, err, sizeof(err)) != 0, "6 unknown kind refused");
        ckc(err, "unsupported kind", "6 reason");
    }

    /* ---- 7..8 the two legal values ---- */
    {
        const char *s = "{\"v\":1,\"event_id\":\"e7\",\"text\":\"hi\",\"kind\":\"ask\"}";
        ck(ti_parse_msg(s, strlen(s), &m, err, sizeof(err)) == 0, "7 ask accepted");
        cks(m.kind, "ask", "7 kind is ask");
        ck(m.has_kind == 1, "7 marked explicit");
    }
    {
        const char *s = "{\"v\":1,\"event_id\":\"e8\",\"text\":\"hi\",\"kind\":\"say\"}";
        ck(ti_parse_msg(s, strlen(s), &m, err, sizeof(err)) == 0, "8 say accepted");
        cks(m.kind, "say", "8 kind is say");
    }

    /* ---- 9 no kind ---- */
    {
        const char *s = "{\"v\":1,\"event_id\":\"e9\",\"text\":\"hi\"}";
        ck(ti_parse_msg(s, strlen(s), &m, err, sizeof(err)) == 0, "9 legacy request accepted");
        cks(m.kind, "say", "9 defaults to say");
        ck(m.has_kind == 0, "9 not marked explicit");
    }

    /* ---- 10 bare literals elsewhere are still tolerated ---- */
    {
        const char *s = "{\"v\":1,\"event_id\":\"e10\",\"text\":\"hi\",\"extra\":true,"
                        "\"note\":null,\"flag\":false}";
        ck(ti_parse_msg(s, strlen(s), &m, err, sizeof(err)) == 0,
           "10 bare literals on other keys are tolerated");
        cks(m.kind, "say", "10 still a say");
        cks(m.event_id, "e10", "10 the fields are intact");
    }

    /* ---- 11/12 end to end ---- */
    snprintf(ROOT, sizeof(ROOT), "t9_07r1f_tmp");
    snprintf(INBOX, sizeof(INBOX), "%s/inbox", ROOT);
    snprintf(RESULT, sizeof(RESULT), "%s/result", ROOT);
    snprintf(REJECTED, sizeof(REJECTED), "%s/rejected", ROOT);
    rm_rf(ROOT);
    MKDIR(ROOT); MKDIR(INBOX); MKDIR(RESULT); MKDIR(REJECTED);
    {
        ti_cfg cfg;
        ti_stats st;
        cap_q q;

        ti_cfg_defaults(&cfg);
        snprintf(cfg.inbox_dir, sizeof(cfg.inbox_dir), "%s", INBOX);
        snprintf(cfg.result_dir, sizeof(cfg.result_dir), "%s", RESULT);
        snprintf(cfg.rejected_dir, sizeof(cfg.rejected_dir), "%s", REJECTED);
        cfg.queue_dir[0] = '\0';
        cfg.inflight_dir[0] = '\0';
        cfg.enforce_uid = 0;
        cfg.rate_max = 0;
        memset(&st, 0, sizeof(st));
        memset(&q, 0, sizeof(q));

        write_req("bad_true.json",
                  "{\"v\":1,\"event_id\":\"bad_true\",\"text\":\"x\",\"kind\":true}");
        (void)ti_poll(&cfg, &st, cap_enqueue, &q);
        ck(q.calls == 0, "11 kind:true never reaches the worker");
        {
            char p[600];
            snprintf(p, sizeof(p), "%s/bad_true.json", RESULT);
            ckc(slurp(p), "\"ok\":false", "11 the receipt says not ok");
            ckc(slurp(p), "kind must be a string", "11 the receipt carries the reason");
        }
        ck(count_files(REJECTED) == 1, "11 the request is parked in rejected/");

        memset(&q, 0, sizeof(q));
        write_req("legacy.json", "{\"v\":1,\"event_id\":\"legacy\",\"text\":\"hello\"}");
        (void)ti_poll(&cfg, &st, cap_enqueue, &q);
        ck(q.calls == 1, "12 the legacy request still reaches the worker");
        cks(q.last_kind, "say", "12 it is still a say");
        {
            char p[600];
            snprintf(p, sizeof(p), "%s/legacy.json", RESULT);
            ckc(slurp(p), "\"stage\":\"queue\"", "12 receipt stage is queue");
            ckc(slurp(p), "\"ok\":true", "12 receipt is ok");
        }
    }

    rm_rf(ROOT);
    printf("\nT9-07R1F kind-literal unit tests: %d passed, %d failed\n", PASS, FAIL);
    return FAIL == 0 ? 0 : 1;
}
