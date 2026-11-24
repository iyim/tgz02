/*
 * t9_08b_r2_stop_test.c -- T9-08B-R2 host tests for the controlled stop request (kind=stop).
 *
 *   gcc -O1 -o t9_08b_r2_stop_test t9_08b_r2_stop_test.c ../android/tg_inbox.c
 *   ./t9_08b_r2_stop_test
 *
 * The stop path is the one that was defective in production: pressing 停止播报 sometimes made the
 * answer start again. The fix gives the stop request a target (tts_id) and makes it the ONLY way a
 * user stop enters the system, so the message contract has to be tight:
 *
 *   {"v":1,"kind":"stop","event_id":"stop-...","tts_id":5246498}
 *
 * These tests pin that contract and, just as important, that say/ask are untouched.
 *
 * Covered:
 *   1  a stop with a tts_id is parsed, and the target arrives at the callback unchanged
 *   2  the boundary value 2147483647 is accepted
 *   3  a stop WITHOUT tts_id is refused (never guessed, never treated as "stop all")
 *   4  tts_id 0 is refused
 *   5  a negative tts_id is refused
 *   6  tts_id as a string is refused
 *   7  tts_id as a bare literal (true) is refused
 *   8  tts_id above the range is refused
 *   9  a stop that also carries text is refused
 *  10  say with a tts_id is refused
 *  11  ask with a tts_id is refused
 *  12  legacy say (no kind) is still accepted unchanged
 *  13  ask is still accepted unchanged
 *  14  end to end: a stop reaches the worker with kind=stop, the target, and NO text
 *  15  end to end: the receipt of an accepted stop says stage=stop and ok=true
 *  16  end to end: a stop the worker refuses gets ok=false and is parked in rejected/
 *  17  end to end: a refused stop writes NO ok receipt anywhere
 *  18  end to end: when the speech queue is full a say is refused but a stop still gets through
 *  19  the stop attempt is counted separately (stats.stop_accepted)
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
    else { FAIL++; printf("FAIL: %s (missing [%s] in [%.200s])\n", name,
                          needle ? needle : "(null)", hay ? hay : "(null)"); }
}

/* ------------------------------------------------------------- fixture */

static char ROOT[400], INBOX[440], RESULT[440], REJECTED[440], QUEUE[440];

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

/* the fake worker: records what ti_poll handed over, and can refuse on demand */
typedef struct {
    int  calls;
    int  refuses;
    char last_kind[16];
    long last_tts_id;
    int  last_text_bytes;
} cap_q;

static int cap_enqueue(void *ctx, const char *event_id, const char *text,
                       int text_bytes, const char *kind, long tts_id,
                       char *err, size_t errlen)
{
    cap_q *q = (cap_q *)ctx;
    (void)event_id; (void)text;
    q->calls++;
    snprintf(q->last_kind, sizeof(q->last_kind), "%s", kind != NULL ? kind : "(null)");
    q->last_tts_id = tts_id;
    q->last_text_bytes = text_bytes;
    if (q->refuses) {
        if (err && errlen) snprintf(err, errlen, "cannot write the stop control file");
        return -1;
    }
    return 0;
}

int main(void)
{
    ti_msg m;
    char err[160];

    /* ---- 1/2 a stop with a valid target ---- */
    {
        const char *s = "{\"v\":1,\"kind\":\"stop\",\"event_id\":\"s1\",\"tts_id\":5246498}";
        ck(ti_parse_msg(s, strlen(s), &m, err, sizeof(err)) == 0, "1 stop with tts_id accepted");
        cks(m.kind, "stop", "1 kind is stop");
        ck(m.has_tts_id == 1, "1 the target is marked present");
        ck(m.tts_id == 5246498L, "1 the target value survives the parse");
        ck(m.has_text == 0, "1 a stop carries no text");
    }
    {
        const char *s = "{\"v\":1,\"kind\":\"stop\",\"event_id\":\"s2\",\"tts_id\":2147483647}";
        ck(ti_parse_msg(s, strlen(s), &m, err, sizeof(err)) == 0,
           "2 the boundary 2147483647 is accepted");
        ck(m.tts_id == 2147483647L, "2 the boundary value is exact");
    }

    /* ---- 3..9 every malformed stop is refused, and never guessed ---- */
    {
        const char *s = "{\"v\":1,\"kind\":\"stop\",\"event_id\":\"s3\"}";
        ck(ti_parse_msg(s, strlen(s), &m, err, sizeof(err)) != 0, "3 stop without tts_id refused");
        ckc(err, "positive tts_id", "3 the reason names the missing target");
    }
    {
        const char *s = "{\"v\":1,\"kind\":\"stop\",\"event_id\":\"s4\",\"tts_id\":0}";
        ck(ti_parse_msg(s, strlen(s), &m, err, sizeof(err)) != 0, "4 tts_id 0 refused");
        ckc(err, "positive tts_id", "4 reason");
    }
    {
        const char *s = "{\"v\":1,\"kind\":\"stop\",\"event_id\":\"s5\",\"tts_id\":-5}";
        ck(ti_parse_msg(s, strlen(s), &m, err, sizeof(err)) != 0, "5 negative tts_id refused");
    }
    {
        const char *s = "{\"v\":1,\"kind\":\"stop\",\"event_id\":\"s6\",\"tts_id\":\"52\"}";
        ck(ti_parse_msg(s, strlen(s), &m, err, sizeof(err)) != 0, "6 quoted tts_id refused");
        ckc(err, "tts_id must be a number", "6 reason names the type problem");
    }
    {
        const char *s = "{\"v\":1,\"kind\":\"stop\",\"event_id\":\"s7\",\"tts_id\":true}";
        ck(ti_parse_msg(s, strlen(s), &m, err, sizeof(err)) != 0, "7 tts_id:true refused");
        ckc(err, "tts_id must be a number", "7 reason");
    }
    {
        const char *s = "{\"v\":1,\"kind\":\"stop\",\"event_id\":\"s8\",\"tts_id\":2147483648}";
        ck(ti_parse_msg(s, strlen(s), &m, err, sizeof(err)) != 0, "8 tts_id above the range refused");
        ckc(err, "out of range", "8 reason");
    }
    {
        const char *s = "{\"v\":1,\"kind\":\"stop\",\"event_id\":\"s9\","
                        "\"tts_id\":42,\"text\":\"hello\"}";
        ck(ti_parse_msg(s, strlen(s), &m, err, sizeof(err)) != 0, "9 stop with text refused");
        ckc(err, "does not take text", "9 reason");
    }

    /* ---- 10..13 the other kinds keep their exact old contract ---- */
    {
        const char *s = "{\"v\":1,\"kind\":\"say\",\"event_id\":\"s10\","
                        "\"text\":\"hi\",\"tts_id\":42}";
        ck(ti_parse_msg(s, strlen(s), &m, err, sizeof(err)) != 0, "10 say with tts_id refused");
        ckc(err, "only valid with kind stop", "10 reason");
    }
    {
        const char *s = "{\"v\":1,\"kind\":\"ask\",\"event_id\":\"s11\","
                        "\"text\":\"hi\",\"tts_id\":42}";
        ck(ti_parse_msg(s, strlen(s), &m, err, sizeof(err)) != 0, "11 ask with tts_id refused");
    }
    {
        const char *s = "{\"v\":1,\"event_id\":\"s12\",\"text\":\"hello\"}";
        ck(ti_parse_msg(s, strlen(s), &m, err, sizeof(err)) == 0, "12 legacy say still accepted");
        cks(m.kind, "say", "12 still a say");
        ck(m.has_tts_id == 0, "12 no target of its own");
    }
    {
        const char *s = "{\"v\":1,\"kind\":\"ask\",\"event_id\":\"s13\",\"text\":\"hello\"}";
        ck(ti_parse_msg(s, strlen(s), &m, err, sizeof(err)) == 0, "13 ask still accepted");
        cks(m.kind, "ask", "13 still an ask");
    }

    /* ---- 14..19 end to end through ti_poll ---- */
    snprintf(ROOT, sizeof(ROOT), "t9_08b_r2_tmp");
    snprintf(INBOX, sizeof(INBOX), "%s/inbox", ROOT);
    snprintf(RESULT, sizeof(RESULT), "%s/result", ROOT);
    snprintf(REJECTED, sizeof(REJECTED), "%s/rejected", ROOT);
    snprintf(QUEUE, sizeof(QUEUE), "%s/queue", ROOT);
    rm_rf(ROOT);
    MKDIR(ROOT); MKDIR(INBOX); MKDIR(RESULT); MKDIR(REJECTED); MKDIR(QUEUE);
    {
        ti_cfg cfg;
        ti_stats st;
        cap_q q;
        char p[600];

        ti_cfg_defaults(&cfg);
        snprintf(cfg.inbox_dir, sizeof(cfg.inbox_dir), "%s", INBOX);
        snprintf(cfg.result_dir, sizeof(cfg.result_dir), "%s", RESULT);
        snprintf(cfg.rejected_dir, sizeof(cfg.rejected_dir), "%s", REJECTED);
        snprintf(cfg.queue_dir, sizeof(cfg.queue_dir), "%s", QUEUE);
        cfg.inflight_dir[0] = '\0';
        cfg.enforce_uid = 0;
        cfg.rate_max = 0;
        cfg.queue_cap = 0;
        memset(&st, 0, sizeof(st));
        memset(&q, 0, sizeof(q));

        /* 14/15 an accepted stop */
        write_req("stop_ok.json",
                  "{\"v\":1,\"kind\":\"stop\",\"event_id\":\"stop_ok\",\"tts_id\":5246498}");
        (void)ti_poll(&cfg, &st, cap_enqueue, &q);
        ck(q.calls == 1, "14 the stop reached the worker callback");
        cks(q.last_kind, "stop", "14 the callback saw kind=stop");
        ck(q.last_tts_id == 5246498L, "14 the callback saw the target id");
        ck(q.last_text_bytes == 0, "14 nothing was pushed as speakable text");
        snprintf(p, sizeof(p), "%s/stop_ok.json", RESULT);
        ckc(slurp(p), "\"ok\":true", "15 the receipt is ok");
        ckc(slurp(p), "\"stage\":\"stop\"", "15 the receipt stage is stop");
        ck(st.stop_accepted == 1, "19 the stop is counted on its own");
        ck(count_files(INBOX) == 0, "15 the accepted request file is consumed");

        /* 16/17 a stop the worker refuses (the control file could not be written) */
        memset(&q, 0, sizeof(q));
        q.refuses = 1;
        write_req("stop_bad.json",
                  "{\"v\":1,\"kind\":\"stop\",\"event_id\":\"stop_bad\",\"tts_id\":7}");
        (void)ti_poll(&cfg, &st, cap_enqueue, &q);
        ck(q.calls == 1, "16 the refused stop still reached the worker (which said no)");
        snprintf(p, sizeof(p), "%s/stop_bad.json", RESULT);
        ckc(slurp(p), "\"ok\":false", "16 the receipt says not ok");
        ckc(slurp(p), "cannot write the stop control file", "16 the receipt carries the reason");
        ck(strstr(slurp(p), "\"stage\":\"stop\"") == NULL,
           "17 a refused stop does not claim the accepted stage");
        ck(count_files(REJECTED) == 1, "16 the refused request is parked in rejected/");
        ck(st.stop_accepted == 1, "19 a refused stop is not counted as accepted");

        /* 18 a full speech queue must not block a stop */
        memset(&q, 0, sizeof(q));
        q.refuses = 0;
        {
            FILE *f;
            snprintf(p, sizeof(p), "%s/busy-1.json", QUEUE);
            f = fopen(p, "wb");
            if (f) { fwrite("{}", 1, 2, f); fclose(f); }
        }
        cfg.queue_cap = 1;
        write_req("say_full.json",
                  "{\"v\":1,\"kind\":\"say\",\"event_id\":\"say_full\",\"text\":\"hello\"}");
        (void)ti_poll(&cfg, &st, cap_enqueue, &q);
        ck(q.calls == 0, "18 with the queue full a say is refused");
        snprintf(p, sizeof(p), "%s/say_full.json", RESULT);
        ckc(slurp(p), "queue full", "18 the say receipt says why");

        memset(&q, 0, sizeof(q));
        write_req("stop_full.json",
                  "{\"v\":1,\"kind\":\"stop\",\"event_id\":\"stop_full\",\"tts_id\":11}");
        (void)ti_poll(&cfg, &st, cap_enqueue, &q);
        ck(q.calls == 1, "18 with the queue full the stop STILL gets through");
        cks(q.last_kind, "stop", "18 it is still a stop");
        snprintf(p, sizeof(p), "%s/stop_full.json", RESULT);
        ckc(slurp(p), "\"ok\":true", "18 the stop receipt is ok");
        cfg.queue_cap = 0;
    }

    rm_rf(ROOT);
    printf("\nT9-08B-R2 controlled-stop unit tests: %d passed, %d failed\n", PASS, FAIL);
    return FAIL == 0 ? 0 : 1;
}
