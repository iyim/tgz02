/*
 * t9_07r1_kind_test.c -- T9-07R1 host tests for the request-type protocol and the honest
 * failure fields of the UI event outlet.
 *
 *   gcc -O1 -o t9_07r1_kind_test t9_07r1_kind_test.c \
 *       ../android/tg_inbox.c ../android/ui_events.c ../android/worker_util.c
 *   ./t9_07r1_kind_test
 *
 * Runs the REAL parser / inbox scanner / event writer against temporary directories.
 *
 * Covered:
 *   1  a request without "kind" keeps the old meaning (say) and is not marked as typed
 *   2  "kind":"say" is accepted and reported to the worker as say
 *   3  "kind":"ask" is accepted and reported to the worker as ask
 *   4  an unknown kind is refused by the parser ("unsupported kind")
 *   5  an empty kind is refused
 *   6  a numeric kind is a protocol error, not a silent "say"
 *   7  kind together with v / event_id / text parses into one message
 *   8  the inbox writes stage "ai" into the receipt for ask and "queue" for say
 *   9  a bad kind is rejected end to end: receipt ok:false, file parked in rejected/
 *  10  the event record defaults to status "ok" with an empty reason
 *  11  a failed turn carries status "failed" and its reason, escaped, on one line
 *  12  the reason cannot break the record (truncated, still valid)
 */
#include "../android/tg_inbox.h"
#include "../android/ui_events.h"

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
    else { FAIL++; printf("FAIL: %s (missing [%s] in [%.200s])\n", name,
                          needle ? needle : "(null)", hay ? hay : "(null)"); }
}

/* ------------------------------------------------------------- fixture */

static char ROOT[400];
static char INBOX[440], RESULT[440], REJECTED[440];

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

static void fresh_tree(void)
{
    rm_rf(ROOT);
    MKDIR(ROOT);
    MKDIR(INBOX);
    MKDIR(RESULT);
    MKDIR(REJECTED);
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

/* ------------------------------------------------------- enqueue capture */

typedef struct {
    int  calls;
    char last_id[80];
    char last_text[1200];
    char last_kind[16];
    int  rc;
} cap_q;

static int cap_enqueue(void *ctx, const char *event_id, const char *text,
                       int text_bytes, const char *kind, char *err, size_t errlen)
{
    cap_q *q = (cap_q *)ctx;
    q->calls++;
    snprintf(q->last_id, sizeof(q->last_id), "%s", event_id);
    if (text_bytes > 0 && (size_t)text_bytes < sizeof(q->last_text)) {
        memcpy(q->last_text, text, (size_t)text_bytes);
        q->last_text[text_bytes] = '\0';
    }
    snprintf(q->last_kind, sizeof(q->last_kind), "%s", kind != NULL ? kind : "(null)");
    (void)err; (void)errlen;
    return q->rc;
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

static int count_lines(const char *s)
{
    int n = 0;
    while (*s) { if (*s == '\n') n++; s++; }
    return n;
}

int main(void)
{
    ti_msg m;
    ti_cfg cfg;
    ti_stats st;
    char err[160];
    cap_q q;
    ue_ctx u;
    ue_turn t;

    snprintf(ROOT, sizeof(ROOT), "t9_07r1_tmp");
    snprintf(INBOX, sizeof(INBOX), "%s/inbox", ROOT);
    snprintf(RESULT, sizeof(RESULT), "%s/result", ROOT);
    snprintf(REJECTED, sizeof(REJECTED), "%s/rejected", ROOT);

    /* ---- 1..3 parser: absence, say, ask ---- */
    {
        const char *no_kind = "{\"v\":1,\"event_id\":\"e1\",\"text\":\"hi\"}";
        ck(ti_parse_msg(no_kind, strlen(no_kind), &m, err, sizeof(err)) == 0,
           "1 request without kind parses");
        cks(m.kind, "say", "1 defaults to say");
        ck(m.has_kind == 0, "1 not marked as an explicit kind");
    }
    {
        const char *say = "{\"v\":1,\"event_id\":\"e2\",\"text\":\"hi\",\"kind\":\"say\"}";
        ck(ti_parse_msg(say, strlen(say), &m, err, sizeof(err)) == 0, "2 say parses");
        cks(m.kind, "say", "2 kind is say");
        ck(m.has_kind == 1, "2 marked explicit");
    }
    {
        const char *ask = "{\"v\":1,\"event_id\":\"e3\",\"text\":\"hi\",\"kind\":\"ask\"}";
        ck(ti_parse_msg(ask, strlen(ask), &m, err, sizeof(err)) == 0, "3 ask parses");
        cks(m.kind, "ask", "3 kind is ask");
        ck(m.has_kind == 1, "3 marked explicit");
    }

    /* ---- 4..6 refusals ---- */
    {
        const char *bad = "{\"v\":1,\"event_id\":\"e4\",\"text\":\"hi\",\"kind\":\"speak\"}";
        ck(ti_parse_msg(bad, strlen(bad), &m, err, sizeof(err)) != 0, "4 unknown kind refused");
        ckc(err, "unsupported kind", "4 reason names the problem");
    }
    {
        const char *empty = "{\"v\":1,\"event_id\":\"e5\",\"text\":\"hi\",\"kind\":\"\"}";
        ck(ti_parse_msg(empty, strlen(empty), &m, err, sizeof(err)) != 0, "5 empty kind refused");
    }
    {
        const char *num = "{\"v\":1,\"event_id\":\"e6\",\"text\":\"hi\",\"kind\":1}";
        ck(ti_parse_msg(num, strlen(num), &m, err, sizeof(err)) != 0, "6 numeric kind refused");
        ckc(err, "kind must be a string", "6 reason is explicit");
    }

    /* ---- 7 all fields together ---- */
    {
        const char *full = "{\"v\":1,\"kind\":\"ask\",\"event_id\":\"e7\",\"text\":\"a\\u4e2d\"}";
        ck(ti_parse_msg(full, strlen(full), &m, err, sizeof(err)) == 0, "7 full request parses");
        cks(m.event_id, "e7", "7 event_id");
        cks(m.kind, "ask", "7 kind");
        ck(m.text_bytes == 4, "7 text decoded");
    }

    /* ---- 8 inbox integration: stage reflects the kind ---- */
    fresh_tree();
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
    write_req("ask1.json", "{\"v\":1,\"event_id\":\"ask1\",\"text\":\"question\",\"kind\":\"ask\"}");
    (void)ti_poll(&cfg, &st, cap_enqueue, &q);
    ck(q.calls == 1, "8 ask reached the worker");
    cks(q.last_kind, "ask", "8 worker sees kind=ask");
    {
        char p[600];
        snprintf(p, sizeof(p), "%s/ask1.json", RESULT);
        ckc(slurp(p), "\"stage\":\"ai\"", "8 receipt stage is ai");
        ckc(slurp(p), "\"ok\":true", "8 receipt is ok");
    }

    memset(&q, 0, sizeof(q));
    write_req("say1.json", "{\"v\":1,\"event_id\":\"say1\",\"text\":\"hello\",\"kind\":\"say\"}");
    (void)ti_poll(&cfg, &st, cap_enqueue, &q);
    cks(q.last_kind, "say", "8 worker sees kind=say");
    {
        char p[600];
        snprintf(p, sizeof(p), "%s/say1.json", RESULT);
        ckc(slurp(p), "\"stage\":\"queue\"", "8 receipt stage is queue");
    }

    memset(&q, 0, sizeof(q));
    write_req("old1.json", "{\"v\":1,\"event_id\":\"old1\",\"text\":\"legacy\"}");
    (void)ti_poll(&cfg, &st, cap_enqueue, &q);
    cks(q.last_kind, "say", "8 a legacy request is a say");
    {
        char p[600];
        snprintf(p, sizeof(p), "%s/old1.json", RESULT);
        ckc(slurp(p), "\"stage\":\"queue\"", "8 legacy receipt stage is queue");
    }

    /* ---- 9 bad kind end to end ---- */
    {
        char p[600];
        memset(&q, 0, sizeof(q));
        write_req("bad1.json",
                  "{\"v\":1,\"event_id\":\"bad1\",\"text\":\"x\",\"kind\":\"nope\"}");
        (void)ti_poll(&cfg, &st, cap_enqueue, &q);
        ck(q.calls == 0, "9 a bad kind never reaches the worker");
        snprintf(p, sizeof(p), "%s/bad1.json", RESULT);
        ckc(slurp(p), "\"ok\":false", "9 receipt says not ok");
        ckc(slurp(p), "unsupported kind", "9 receipt carries the reason");
        ck(count_files(REJECTED) == 1, "9 the request is parked in rejected/");
    }

    /* ---- 10..12 event record status/reason ---- */
    fresh_tree();
    ck(ue_init(&u, ROOT, 0, 512, UE_MAX_TEXT) == 0, "10 event outlet init");
    memset(&t, 0, sizeof(t));
    t.kind = "turn";
    t.event_id = "e10";
    t.user = "question";
    t.reply = "answer";
    t.route = "ai";
    t.reply_bytes = 6;
    ck(ue_publish(&u, &t) == 0, "10 published");
    {
        char p[600];
        snprintf(p, sizeof(p), "%s/events/%012lld.json", ROOT, u.seq);
        ckc(slurp(p), "\"status\":\"ok\"", "10 defaults to status ok");
        ckc(slurp(p), "\"reason\":\"\"", "10 reason is empty");
    }

    memset(&t, 0, sizeof(t));
    t.kind = "turn";
    t.event_id = "e11";
    t.user = "question";
    t.route = "ai";
    t.status = "failed";
    t.reason = "provider timeout \"after\\ 15s\"\nsecond line";
    ck(ue_publish(&u, &t) == 0, "11 failed turn published");
    {
        char p[600];
        const char *body;
        snprintf(p, sizeof(p), "%s/events/%012lld.json", ROOT, u.seq);
        body = slurp(p);
        ckc(body, "\"status\":\"failed\"", "11 status is failed");
        ckc(body, "\\\"after", "11 quotes in the reason are escaped");
        ckc(body, "\\nsecond line", "11 newline in the reason is escaped");
        ck(count_lines(body) == 1, "11 the record is still one single line");
        ckc(body, "\"reply\":\"\"", "11 a failure publishes no answer");
    }

    {
        static char big[900];
        memset(big, 'x', sizeof(big) - 1);
        big[sizeof(big) - 1] = '\0';
        memset(&t, 0, sizeof(t));
        t.kind = "turn";
        t.event_id = "e12";
        t.status = "failed";
        t.reason = big;
        ck(ue_publish(&u, &t) == 0, "12 oversized reason published");
        {
            char p[600];
            const char *body;
            snprintf(p, sizeof(p), "%s/events/%012lld.json", ROOT, u.seq);
            body = slurp(p);
            ck(count_lines(body) == 1, "12 record stays one line");
            ck((long)strlen(body) < UE_JSON_MAX, "12 record stays under the ceiling");
        }
    }

    rm_rf(ROOT);
    printf("\nT9-07R1 kind/status unit tests: %d passed, %d failed\n", PASS, FAIL);
    return FAIL == 0 ? 0 : 1;
}
