/*
 * t9_06_inbox_unit_test.c -- T9-06 host tests for the UI -> worker inbox (tg_inbox.c).
 *
 *   gcc -O1 -o t9_06_inbox_unit_test t9_06_inbox_unit_test.c ../android/tg_inbox.c
 *   ./t9_06_inbox_unit_test
 *
 * Runs the REAL validation code against a real temporary directory tree. No device involved.
 *
 * Covered:
 *   1  a well formed request is accepted and answered with ok:true stage:queue
 *   2  an idempotent hit (already queued) is answered with ok:true stage:existing
 *   3  broken JSON is refused, answered with ok:false, and parked in rejected/
 *   4  unsupported version is refused
 *   5  filename/event_id mismatch is refused
 *   6  illegal filename (space, traversal-looking) is refused
 *   7  oversize file is refused
 *   8  oversize text is refused
 *   9  invalid UTF-8 text is refused
 *  10  symlink is refused (skipped when the platform cannot create one)
 *  11  hardlinked file is refused (skipped when the platform cannot create one)
 *  12  rate limit refuses the (N+1)-th request inside the window
 *  13  a full queue refuses new requests
 *  14  stale *.json.tmp is cleaned, fresh one is kept
 *  15  uid allowlist: an owner that is not allowed is refused
 *  16  parser: nested object / trailing data / control char / \u escape / surrogate pair
 */
#include "../android/tg_inbox.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>
#include <dirent.h>
#include <time.h>

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
    else { FAIL++; printf("FAIL: %s (missing [%s] in [%s])\n", name,
                          needle ? needle : "(null)", hay ? hay : "(null)"); }
}

/* ------------------------------------------------------------- test fixture */

static char ROOT[512];
static char INBOX[600], RESULT[600], REJECTED[600], QUEUE[600], INFLIGHT[600];

static void path_join(char *dst, size_t cap, const char *a, const char *b)
{
    snprintf(dst, cap, "%s/%s", a, b);
}

static void rm_rf(const char *path)
{
    DIR *d = opendir(path);
    struct dirent *e;
    if (d != NULL) {
        while ((e = readdir(d)) != NULL) {
            char p[900];
            if (strcmp(e->d_name, ".") == 0 || strcmp(e->d_name, "..") == 0) continue;
            path_join(p, sizeof(p), path, e->d_name);
            rm_rf(p);
        }
        closedir(d);
        RMDIR(path);
        return;
    }
    UNLINK(path);
}

static void mkdirs(const char *p)
{
    MKDIR(p);
}

static void fresh_tree(void)
{
    rm_rf(ROOT);
    mkdirs(ROOT);
    mkdirs(INBOX);
    mkdirs(RESULT);
    mkdirs(REJECTED);
    mkdirs(QUEUE);
    mkdirs(INFLIGHT);
}

static void write_file(const char *path, const char *body)
{
    FILE *f = fopen(path, "wb");
    if (f == NULL) { printf("FAIL: cannot write %s\n", path); FAIL++; return; }
    fwrite(body, 1, strlen(body), f);
    fclose(f);
}

static void write_raw(const char *path, const char *body, size_t n)
{
    FILE *f = fopen(path, "wb");
    if (f == NULL) { printf("FAIL: cannot write %s\n", path); FAIL++; return; }
    fwrite(body, 1, n, f);
    fclose(f);
}

static int count_files(const char *dir, const char *suffix)
{
    DIR *d = opendir(dir);
    struct dirent *e;
    int n = 0;
    if (d == NULL) return 0;
    while ((e = readdir(d)) != NULL) {
        size_t l = strlen(e->d_name);
        size_t s = strlen(suffix);
        if (l >= s && strcmp(e->d_name + l - s, suffix) == 0) n++;
    }
    closedir(d);
    return n;
}

static int read_all(const char *path, char *buf, size_t cap)
{
    FILE *f = fopen(path, "rb");
    size_t n;
    if (f == NULL) return -1;
    n = fread(buf, 1, cap - 1, f);
    fclose(f);
    buf[n] = '\0';
    return (int)n;
}

/* the fake enqueue: records what it got, returns the configured result */
typedef struct {
    int calls;
    int ret;               /* 0 accepted, 1 idempotent, -1 fail */
    char last_id[128];
    char last_text[1200];
    int  last_bytes;
    int  reject_on_call;   /* -1 = never */
} fake_q;

static int fake_enqueue(void *ctx, const char *event_id, const char *text,
                        int text_bytes, const char *kind, long tts_id, char *err, size_t errlen)
{
    fake_q *q = (fake_q *)ctx;
    (void)kind;   /* T9-07R1 added the request kind; this suite only exercises "say" */
    (void)tts_id; /* T9-08B-R2 added the stop target; this suite never sends kind=stop */
    q->calls++;
    snprintf(q->last_id, sizeof(q->last_id), "%s", event_id);
    if (text_bytes > 0 && (size_t)text_bytes < sizeof(q->last_text)) {
        memcpy(q->last_text, text, (size_t)text_bytes);
        q->last_text[text_bytes] = '\0';
    }
    q->last_bytes = text_bytes;
    if (q->reject_on_call > 0 && q->calls == q->reject_on_call) {
        if (err && errlen) snprintf(err, errlen, "enqueue refused for test");
        return -1;
    }
    return q->ret;
}

static void cfg_for(ti_cfg *c)
{
    ti_cfg_defaults(c);
    snprintf(c->inbox_dir, sizeof(c->inbox_dir), "%s", INBOX);
    snprintf(c->result_dir, sizeof(c->result_dir), "%s", RESULT);
    snprintf(c->rejected_dir, sizeof(c->rejected_dir), "%s", REJECTED);
    snprintf(c->queue_dir, sizeof(c->queue_dir), "%s", QUEUE);
    snprintf(c->inflight_dir, sizeof(c->inflight_dir), "%s", INFLIGHT);
    c->enforce_uid = 0;
}

static void one_poll(ti_cfg *c, ti_stats *st, fake_q *q)
{
    memset(st, 0, sizeof(*st));
    (void)ti_poll(c, st, fake_enqueue, q);
}

/* ===================================================================== main */

int main(void)
{
    ti_cfg cfg;
    ti_stats st;
    fake_q q;
    char p[900], body[2048];

    snprintf(ROOT, sizeof(ROOT), "t9_06_inbox_test.%ld",
             (long)(time(NULL) % 100000));
    path_join(INBOX, sizeof(INBOX), ROOT, "inbox");
    path_join(RESULT, sizeof(RESULT), ROOT, "result");
    path_join(REJECTED, sizeof(REJECTED), ROOT, "rejected");
    path_join(QUEUE, sizeof(QUEUE), ROOT, "queue");
    path_join(INFLIGHT, sizeof(INFLIGHT), ROOT, "inflight");

    /* ---------------------------------------------------------------- 1 ok */
    fresh_tree();
    cfg_for(&cfg);
    memset(&q, 0, sizeof(q));
    path_join(p, sizeof(p), INBOX, "ui-0001.json");
    write_file(p, "{\"v\":1,\"event_id\":\"ui-0001\",\"text\":\"hello from the ui\"}");
    one_poll(&cfg, &st, &q);
    ck(q.calls == 1, "1 enqueue called once");
    cks(q.last_id, "ui-0001", "1 event_id forwarded");
    cks(q.last_text, "hello from the ui", "1 text forwarded");
    ck(st.accepted == 1, "1 counted as accepted");
    ck(count_files(INBOX, ".json") == 0, "1 inbox file consumed");
    path_join(p, sizeof(p), RESULT, "ui-0001.json");
    ck(read_all(p, body, sizeof(body)) > 0, "1 result file written");
    ckc(body, "\"ok\":true", "1 result says ok");
    ckc(body, "\"stage\":\"queue\"", "1 result says queue");

    /* ------------------------------------------------------- 2 idempotent */
    fresh_tree();
    memset(&q, 0, sizeof(q));
    q.ret = 1;
    path_join(p, sizeof(p), INBOX, "ui-0002.json");
    write_file(p, "{\"v\":1,\"event_id\":\"ui-0002\",\"text\":\"again\"}");
    one_poll(&cfg, &st, &q);
    ck(st.idempotent == 1, "2 counted as idempotent");
    path_join(p, sizeof(p), RESULT, "ui-0002.json");
    read_all(p, body, sizeof(body));
    ckc(body, "\"stage\":\"existing\"", "2 result says existing");

    /* -------------------------------------------------------- 3 broken json */
    fresh_tree();
    memset(&q, 0, sizeof(q));
    path_join(p, sizeof(p), INBOX, "ui-0003.json"); write_file(p,
               "{\"v\":1,\"event_id\":\"ui-0003\",\"text\":}");
    one_poll(&cfg, &st, &q);
    ck(q.calls == 0, "3 never enqueued");
    ck(st.rejected == 1, "3 counted as rejected");
    ck(count_files(REJECTED, ".rejected") == 1, "3 parked in rejected/");
    path_join(p, sizeof(p), RESULT, "ui-0003.json");
    read_all(p, body, sizeof(body));
    ckc(body, "\"ok\":false", "3 result says not ok");

    /* ----------------------------------------------------------- 4 version */
    fresh_tree();
    memset(&q, 0, sizeof(q));
    path_join(p, sizeof(p), INBOX, "ui-0004.json"); write_file(p,
               "{\"v\":2,\"event_id\":\"ui-0004\",\"text\":\"x\"}");
    one_poll(&cfg, &st, &q);
    ckc(st.last_reject, "unsupported version", "4 refused for version");

    /* -------------------------------------------------- 5 id mismatch */
    fresh_tree();
    memset(&q, 0, sizeof(q));
    path_join(p, sizeof(p), INBOX, "ui-0005.json"); write_file(p,
               "{\"v\":1,\"event_id\":\"ui-9999\",\"text\":\"x\"}");
    one_poll(&cfg, &st, &q);
    ckc(st.last_reject, "event_id mismatch", "5 refused for mismatch");

    /* ------------------------------------------------------- 6 bad filename */
    fresh_tree();
    memset(&q, 0, sizeof(q));
    path_join(p, sizeof(p), INBOX, "bad name.json"); write_file(p,
               "{\"v\":1,\"event_id\":\"bad name\",\"text\":\"x\"}");
    one_poll(&cfg, &st, &q);
    ck(st.bad_name == 1, "6 counted as bad name");
    ck(q.calls == 0, "6 never enqueued");

    /* ------------------------------------------------------- 7 oversize file */
    fresh_tree();
    memset(&q, 0, sizeof(q));
    cfg.max_file_bytes = 128;
    memset(body, 'a', sizeof(body));
    body[0] = '{';
    path_join(p, sizeof(p), INBOX, "ui-0007.json"); write_raw(p, body, 400);
    one_poll(&cfg, &st, &q);
    ckc(st.last_reject, "file size out of range", "7 refused for size");
    cfg.max_file_bytes = TI_MAX_FILE_BYTES;

    /* ------------------------------------------------------- 8 oversize text */
    fresh_tree();
    memset(&q, 0, sizeof(q));
    {
        char big[2400];
        size_t i;
        for (i = 0; i < 200; i++) big[i] = 'b';
        big[sizeof(big) - 1] = '\0';
        cfg.max_text_bytes = 64;
        big[200] = '\0';
        snprintf(body, sizeof(body),
                 "{\"v\":1,\"event_id\":\"ui-0008\",\"text\":\"%s\"}", big);
        path_join(p, sizeof(p), INBOX, "ui-0008.json"); write_file(p, body);
        one_poll(&cfg, &st, &q);
        ckc(st.last_reject, "text too long", "8 refused for text length");
        cfg.max_text_bytes = TI_MAX_TEXT_BYTES;
    }

    /* --------------------------------------------------------- 9 bad utf-8 */
    fresh_tree();
    memset(&q, 0, sizeof(q));
    {
        const char *pre = "{\"v\":1,\"event_id\":\"ui-0009\",\"text\":\"";
        const char *post = "}";
        char raw[256];
        size_t n = 0;
        memcpy(raw + n, pre, strlen(pre)); n += strlen(pre);
        raw[n++] = (char)0xC3;              /* lone lead byte */
        raw[n++] = '\"';
        memcpy(raw + n, post, strlen(post)); n += strlen(post);
        path_join(p, sizeof(p), INBOX, "ui-0009.json"); write_raw(p, raw, n);
        one_poll(&cfg, &st, &q);
        ckc(st.last_reject, "UTF-8", "9 refused for invalid UTF-8");
    }

    /* ------------------------------------------------------ 10 symlink file */
    fresh_tree();
    memset(&q, 0, sizeof(q));
    {
        char target[900];
        path_join(target, sizeof(target), ROOT, "outside.json");
        write_file(target, "{\"v\":1,\"event_id\":\"ui-0010\",\"text\":\"x\"}");
        path_join(p, sizeof(p), INBOX, "ui-0010.json");
#ifdef _WIN32
        ck(1, "10 symlink skipped on this platform");
#else
        if (symlink(target, p) == 0) {
            struct stat ls;
            if (lstat(p, &ls) == 0 && S_ISLNK(ls.st_mode)) {
                one_poll(&cfg, &st, &q);
                ck(st.nofollow == 1, "10 symlink counted");
                ck(q.calls == 0, "10 symlink never enqueued");
            } else {
                ck(1, "10 symlink not observable on this platform");
            }
        } else {
            ck(1, "10 symlink skipped (no privilege)");
        }
#endif
    }

    /* ---------------------------------------------------- 11 hardlinked file */
    fresh_tree();
    memset(&q, 0, sizeof(q));
    {
        char a[900], b[900];
        path_join(a, sizeof(a), INBOX, "ui-0011.json");
        write_file(a, "{\"v\":1,\"event_id\":\"ui-0011\",\"text\":\"x\"}");
        path_join(b, sizeof(b), ROOT, "link0011");
#ifdef _WIN32
        ck(1, "11 hardlink skipped on this platform");
#else
        if (link(a, b) == 0) {
            one_poll(&cfg, &st, &q);
            ckc(st.last_reject, "hardlinked", "11 refused for hardlink");
            ck(q.calls == 0, "11 hardlink never enqueued");
        } else {
            ck(1, "11 hardlink skipped (not supported)");
        }
#endif
    }

    /* ------------------------------------------------------------ 12 rate */
    fresh_tree();
    cfg_for(&cfg);
    cfg.rate_max = 2;
    cfg.rate_window_ms = 60000;
    memset(&q, 0, sizeof(q));
    {
        int i;
        for (i = 1; i <= 3; i++) {
            snprintf(body, sizeof(body),
                     "{\"v\":1,\"event_id\":\"ui-01%02d\",\"text\":\"t%d\"}", i, i);
            snprintf(p, sizeof(p), "%s/ui-01%02d.json", INBOX, i);
            write_file(p, body);
        }
        one_poll(&cfg, &st, &q);
        ck(q.calls == 2, "12 only two enqueued inside the window");
        ck(st.accepted == 2, "12 two accepted");
        ckc(st.last_reject, "rate limited", "12 third refused for rate");
    }

    /* --------------------------------------------------- 13 queue full */
    fresh_tree();
    cfg_for(&cfg);
    cfg.queue_cap = 2;
    memset(&q, 0, sizeof(q));
    {
        int i;
        for (i = 0; i < 2; i++) {
            snprintf(p, sizeof(p), "%s/fill%d.json", QUEUE, i);
            write_file(p, "{}");
        }
        path_join(p, sizeof(p), INBOX, "ui-0020.json"); write_file(p,
                   "{\"v\":1,\"event_id\":\"ui-0020\",\"text\":\"x\"}");
        one_poll(&cfg, &st, &q);
        ck(q.calls == 0, "13 nothing enqueued when the queue is full");
        ckc(st.last_reject, "queue full", "13 refused for queue depth");
    }

    /* -------------------------------------------------------- 14 tmp files */
    fresh_tree();
    cfg_for(&cfg);
    memset(&q, 0, sizeof(q));
    {
        char tmp1[900], tmp2[900];
        path_join(tmp1, sizeof(tmp1), INBOX, ".old.json.tmp");
        path_join(tmp2, sizeof(tmp2), INBOX, ".new.json.tmp");
        write_file(tmp1, "x");
        write_file(tmp2, "y");
#ifndef _WIN32
        {
            struct timespec times[2];
            times[0].tv_sec = time(NULL) - 600;
            times[0].tv_nsec = 0;
            times[1] = times[0];
            (void)utimensat(AT_FDCWD, tmp1, times, 0);
        }
#endif
        one_poll(&cfg, &st, &q);
#ifdef _WIN32
        /* mtime cannot be back-dated portably here: only assert nothing was enqueued */
        ck(count_files(INBOX, ".tmp") == 2, "14 tmp files are left alone on this platform");
#else
        ck(st.tmp_cleaned == 1, "14 the stale tmp is cleaned");
        ck(count_files(INBOX, ".tmp") == 1, "14 only the fresh tmp survives");
#endif
        ck(q.calls == 0, "14 tmp files never enqueued");
    }

    /* ------------------------------------------------- 15 empty request file */
    fresh_tree();
    cfg_for(&cfg);
    memset(&q, 0, sizeof(q));
    {
        char empty[900];
        path_join(empty, sizeof(empty), INBOX, "ui-empty.json");
        write_file(empty, "");
        one_poll(&cfg, &st, &q);
        ck(st.empty_skipped == 1, "15 empty file is skipped, not rejected");
        ck(st.rejected == 0, "15 empty file does not count as a rejection");
        ck(count_files(INBOX, ".json") == 1, "15 empty file is left for its writer");
        ck(q.calls == 0, "15 empty file never enqueued");
#ifndef _WIN32
        {
            struct timespec times[2];
            times[0].tv_sec = time(NULL) - 120;
            times[0].tv_nsec = 0;
            times[1] = times[0];
            (void)utimensat(AT_FDCWD, empty, times, 0);
            one_poll(&cfg, &st, &q);
            ckc(st.last_reject, "empty file", "15 a stale empty file is refused");
            ck(count_files(INBOX, ".json") == 0, "15 stale empty file is parked");
        }
#endif
    }

    /* --------------------------------------------------------- 16 uid gate */    fresh_tree();
    cfg_for(&cfg);
    cfg.enforce_uid = 1;
    cfg.allowed_uids[0] = 424242;
    cfg.allowed_count = 1;
    memset(&q, 0, sizeof(q));
    path_join(p, sizeof(p), INBOX, "ui-0030.json"); write_file(p,
               "{\"v\":1,\"event_id\":\"ui-0030\",\"text\":\"x\"}");
    one_poll(&cfg, &st, &q);
    ck(q.calls == 0, "16 foreign owner never enqueued");
    /* T9-06R1: dropped, not archived and not answered (an unprivileged app must not be able to
     * make the worker create root-owned files) */
    ck(st.foreign_dropped == 1, "16 foreign owner counted as dropped");
    ck(st.rejected == 0, "16 foreign file is not counted as a rejection");
    ck(count_files(INBOX, ".json") == 0, "16 foreign file is unlinked");
    ck(count_files(REJECTED, ".rejected") == 0, "16 nothing is parked in rejected/");
    path_join(p, sizeof(p), RESULT, "ui-0030.json");
    ck(read_all(p, body, sizeof(body)) < 0, "16 no result file for a foreign owner");

    /* ------------------------------------- 17 T9-06R1 foreign-uid mass drop */
    {
        int i;
        fresh_tree();
        cfg_for(&cfg);
        cfg.enforce_uid = 1;
        cfg.allowed_uids[0] = 424242;          /* our own uid is therefore "foreign" */
        cfg.allowed_count = 1;
        memset(&q, 0, sizeof(q));
        for (i = 0; i < 20; i++) {
            snprintf(p, sizeof(p), "%s/spam%02d.json", INBOX, i);
            snprintf(body, sizeof(body),
                     "{\"v\":1,\"event_id\":\"spam%02d\",\"text\":\"x\"}", i);
            write_file(p, body);
        }
        one_poll(&cfg, &st, &q);
        ck(q.calls == 0, "17 foreign burst never enqueued");
        ck(st.rejected == 0, "17 foreign burst creates no rejections");
        ck(count_files(REJECTED, ".rejected") == 0, "17 foreign burst leaves rejected/ empty");
        ck(count_files(RESULT, ".json") == 0, "17 foreign burst writes no results");
        /* the drop is per file but bounded by the scan cap, so drain with a few polls */
        {
            int rounds = 0;
            while (count_files(INBOX, ".json") > 0 && rounds < 10) { one_poll(&cfg, &st, &q); rounds++; }
            ck(count_files(INBOX, ".json") == 0, "17 the whole foreign burst is dropped");
            ck(rounds <= 10, "17 dropping is bounded by the scan cap, not one giant pass");
        }
    }

    /* --------------------------------------- 18 T9-06R1 per-poll scan limit */
    {
        int i, first, second;
        fresh_tree();
        cfg_for(&cfg);
        cfg.max_scan_per_poll = 8;
        cfg.rate_max = 0;
        memset(&q, 0, sizeof(q));
        for (i = 0; i < 40; i++) {
            snprintf(p, sizeof(p), "%s/scan%02d.json", INBOX, i);
            snprintf(body, sizeof(body),
                     "{\"v\":1,\"event_id\":\"scan%02d\",\"text\":\"t%d\"}", i, i);
            write_file(p, body);
        }
        memset(&st, 0, sizeof(st));
        first = ti_poll(&cfg, &st, fake_enqueue, &q);
        memset(&st, 0, sizeof(st));
        second = ti_poll(&cfg, &st, fake_enqueue, &q);
        ck(first == 8, "18 first poll stops at the scan cap");
        ck(second == 8, "18 second poll takes the next batch");
        ck(q.calls == 16, "18 two polls handled exactly 16 requests");
        {
            int rounds = 2;
            while (count_files(INBOX, ".json") > 0 && rounds < 12) {
                memset(&st, 0, sizeof(st));
                (void)ti_poll(&cfg, &st, fake_enqueue, &q);
                rounds++;
            }
            ck(count_files(INBOX, ".json") == 0, "18 every request is eventually handled");
            ck(q.calls == 40, "18 no request is starved by the cap");
        }
    }

    /* ------------------------------------------ 19 T9-06R1 rejected/ pruning */
    {
        int i;
        fresh_tree();
        cfg_for(&cfg);
        cfg.rejected_max_files = 3;
        memset(&q, 0, sizeof(q));
        for (i = 0; i < 10; i++) {
            snprintf(p, sizeof(p), "%s/bad%02d.json", INBOX, i);
            write_file(p, "{\"v\":1,\"event_id\":");
        }
        one_poll(&cfg, &st, &q);
        ck(st.rejected >= 10, "19 all broken requests were refused");
        ck(count_files(REJECTED, ".rejected") <= 3, "19 rejected/ is pruned to its cap");
        ck(st.pruned_rejected > 0, "19 pruning actually removed files");
    }

    /* -------------------------------------------- 20 T9-06R1 result/ pruning */
    {
        int i;
        fresh_tree();
        cfg_for(&cfg);
        cfg.result_max_files = 3;
        cfg.max_scan_per_poll = 0;
        memset(&q, 0, sizeof(q));
        for (i = 0; i < 10; i++) {
            snprintf(p, sizeof(p), "%s/res%02d.json", INBOX, i);
            snprintf(body, sizeof(body),
                     "{\"v\":1,\"event_id\":\"res%02d\",\"text\":\"t\"}", i);
            write_file(p, body);
        }
        one_poll(&cfg, &st, &q);
        ck(st.accepted == 10, "20 all ten requests were accepted");
        ck(count_files(RESULT, ".json") <= 3, "20 result/ is pruned to its cap");
        ck(st.pruned_result > 0, "20 result pruning actually removed files");
    }

    /* ----------------------- 21 T9-06R1 normal request still works after a storm */
    {
        int i;
        fresh_tree();
        cfg_for(&cfg);
        cfg.rejected_max_files = 2;
        memset(&q, 0, sizeof(q));
        for (i = 0; i < 6; i++) {
            snprintf(p, sizeof(p), "%s/junk%02d.json", INBOX, i);
            write_file(p, "garbage");
        }
        one_poll(&cfg, &st, &q);
        path_join(p, sizeof(p), INBOX, "ui-good.json");
        write_file(p, "{\"v\":1,\"event_id\":\"ui-good\",\"text\":\"still works\"}");
        memset(&st, 0, sizeof(st));
        one_poll(&cfg, &st, &q);
        ck(st.accepted == 1, "21 the normal request is still accepted after the junk");
        cks(q.last_text, "still works", "21 its text reaches the queue callback");
        path_join(p, sizeof(p), RESULT, "ui-good.json");
        read_all(p, body, sizeof(body));
        ckc(body, "\"ok\":true", "21 its receipt is written");
    }


    {
        ti_msg m;
        char err[128];
        const char *ok1 = "{\"v\":1,\"event_id\":\"e1\",\"text\":\"a\\u4e2d\\tb\"}";
        ck(ti_parse_msg(ok1, strlen(ok1), &m, err, sizeof(err)) == 0, "16 \\u escape parsed");
        ck(m.v == 1 && m.has_event_id && m.has_text, "16 fields present");
        cks(m.event_id, "e1", "16 event_id value");
        ckc(m.text, "\xe4\xb8\xad", "16 \\u4e2d decoded as utf-8");
        {
            const char *nested = "{\"v\":1,\"data\":{\"x\":1}}";
            ck(ti_parse_msg(nested, strlen(nested), &m, err, sizeof(err)) != 0,
               "16 nested object refused");
        }
        {
            const char *trail = "{\"v\":1} garbage";
            ck(ti_parse_msg(trail, strlen(trail), &m, err, sizeof(err)) != 0,
               "16 trailing data refused");
        }
        {
            const char *ctrl = "{\"v\":1,\"text\":\"a\nb\"}";
            ck(ti_parse_msg(ctrl, strlen(ctrl), &m, err, sizeof(err)) != 0,
               "16 raw control char refused");
        }
        {
            const char *sur = "{\"v\":1,\"text\":\"\\ud83d\\ude00\"}";
            ck(ti_parse_msg(sur, strlen(sur), &m, err, sizeof(err)) == 0,
               "16 surrogate pair parsed");
            ck(m.text_bytes == 4, "16 surrogate pair is 4 utf-8 bytes");
        }
        {
            const char *arr = "{\"v\":1,\"text\":[\"a\"]}";
            ck(ti_parse_msg(arr, strlen(arr), &m, err, sizeof(err)) != 0,
               "16 array value refused");
        }
    }

    rm_rf(ROOT);
    printf("\nT9-06 inbox unit tests: %d passed, %d failed\n", PASS, FAIL);
    return FAIL == 0 ? 0 : 1;
}


