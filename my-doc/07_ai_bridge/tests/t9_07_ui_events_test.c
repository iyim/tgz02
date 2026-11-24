/*
 * t9_07_ui_events_test.c -- T9-07 host tests for the worker's read-only UI outlet (ui_events.c).
 *
 *   gcc -O1 -o t9_07_ui_events_test t9_07_ui_events_test.c \
 *       ../android/ui_events.c ../android/worker_util.c
 *   ./t9_07_ui_events_test
 *
 * Runs the REAL publishing code against a real temporary directory. No device involved.
 *
 * Covered:
 *   1  init creates <dir>/events, starts at seq 0, reports "ready"
 *   2  one publish -> one file, named with the sequence, JSON well formed, no tmp left
 *   3  the record carries kind/session/event_id/route/skill/user/reply/reply_bytes
 *   4  quotes, backslashes and control characters are escaped (still one single line)
 *   5  an over-long text field is cut on a codepoint boundary and says so ("*_cut":1)
 *   6  a text that fits is not marked as cut
 *   7  the sequence continues after a restart (max file on disk + 1)
 *   8  the sequence restarts at 1 when the events directory is empty again
 *   9  pruning keeps the newest N files and deletes the oldest ones
 *  10  status.public.json is replaced atomically, never left as a tmp file
 *  11  an uninitialised ctx publishes nothing (fail closed)
 *  12  empty fields stay empty, a NULL kind defaults to "turn"
 *  13  one record stays bounded well below the module's JSON ceiling
 */
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

static void ckc(const char *hay, const char *needle, const char *name)
{
    if (hay != NULL && needle != NULL && strstr(hay, needle) != NULL) { PASS++; }
    else { FAIL++; printf("FAIL: %s (missing [%s])\n", name, needle ? needle : "(null)"); }
}

static void ck_not(const char *hay, const char *needle, const char *name)
{
    if (hay != NULL && needle != NULL && strstr(hay, needle) == NULL) { PASS++; }
    else { FAIL++; printf("FAIL: %s (unexpected [%s])\n", name, needle ? needle : "(null)"); }
}

/* ------------------------------------------------------------- test fixture */

static char ROOT[512];
static char EVENTSDIR[600];
static char STATUS[600];

static void rm_rf(const char *path)
{
    DIR *d = opendir(path);
    if (d != NULL) {
        struct dirent *e;
        while ((e = readdir(d)) != NULL) {
            char p[900];
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
}

static char *slurp(const char *path)
{
    static char buf[200000];
    FILE *f = fopen(path, "rb");
    size_t n;
    if (f == NULL) { buf[0] = '\0'; return buf; }
    n = fread(buf, 1, sizeof(buf) - 1, f);
    fclose(f);
    buf[n] = '\0';
    return buf;
}

static int count_files(const char *dir)
{
    DIR *d = opendir(dir);
    struct dirent *e;
    int n = 0;
    if (d == NULL) return -1;
    while ((e = readdir(d)) != NULL) {
        if (e->d_name[0] == '.') continue;
        n++;
    }
    closedir(d);
    return n;
}

static int count_tmp(const char *dir)
{
    DIR *d = opendir(dir);
    struct dirent *e;
    int n = 0;
    if (d == NULL) return -1;
    while ((e = readdir(d)) != NULL) {
        if (strcmp(e->d_name, ".") == 0 || strcmp(e->d_name, "..") == 0) continue;
        if (e->d_name[0] == '.') n++;
    }
    closedir(d);
    return n;
}

/* strict-enough UTF-8 check: no dangling lead/continuation byte at the end */
static int utf8_tail_ok(const char *s)
{
    size_t n = strlen(s);
    size_t i = 0;
    while (i < n) {
        unsigned char c = (unsigned char)s[i];
        size_t need, k;
        if (c < 0x80) { i++; continue; }
        if ((c & 0xE0) == 0xC0) need = 1;
        else if ((c & 0xF0) == 0xE0) need = 2;
        else if ((c & 0xF8) == 0xF0) need = 3;
        else return 0;
        if (i + need >= n + 0) {
            if (i + need > n - 1) return 0;   /* truncated sequence */
        }
        for (k = 1; k <= need; k++) {
            if (i + k >= n) return 0;
            if (((unsigned char)s[i + k] & 0xC0) != 0x80) return 0;
        }
        i += need + 1;
    }
    return 1;
}

static int count_lines(const char *s)
{
    int n = 0;
    while (*s != '\0') { if (*s == '\n') n++; s++; }
    return n;
}

int main(void)
{
    ue_ctx u;
    ue_turn t;

    snprintf(ROOT, sizeof(ROOT), "t9_07_tmp_root");
    snprintf(EVENTSDIR, sizeof(EVENTSDIR), "%s/events", ROOT);
    snprintf(STATUS, sizeof(STATUS), "%s/status.public.json", ROOT);

    /* ---- 1 init ---- */
    fresh_tree();
    ck(ue_init(&u, ROOT, 0, 512, UE_MAX_TEXT) == 0, "1 init ok");
    ck(u.enabled == 1, "1 ctx enabled");
    ck(u.seq == 0, "1 seq starts at 0");
    ck(u.publish_err == 0, "1 no errors yet");
    ck(count_files(EVENTSDIR) == 0, "1 events dir is empty");

    /* ---- 2/3 one publish ---- */
    memset(&t, 0, sizeof(t));
    t.kind = "turn";
    t.session = "1968861";
    t.event_id = "t6-1178-1968861-g6";
    t.user = "\xe7\x8e\xb0\xe5\x9c\xa8\xe5\x87\xa0\xe7\x82\xb9";      /* 现在几点 */
    t.reply = "\xe7\x8e\xb0\xe5\x9c\xa8\xe6\x98\xaf 16:39";           /* 现在是 16:39 */
    t.route = "skill";
    t.skill = "time.query";
    t.reply_bytes = 15;
    ck(ue_publish(&u, &t) == 0, "2 publish ok");
    ck(u.seq == 1, "2 seq advanced to 1");
    ck(u.published == 1, "2 published counter");
    {
        char p[700];
        const char *body;
        snprintf(p, sizeof(p), "%s/000000000001.json", EVENTSDIR);
        body = slurp(p);
        ck(body[0] == '{', "2 record starts with {");
        ck(count_lines(body) == 1, "2 record is exactly one line");
        ckc(body, "\"v\":1", "2 version field");
        ckc(body, "\"seq\":1", "2 seq field");
        ckc(body, "\"kind\":\"turn\"", "3 kind");
        ckc(body, "\"session\":\"1968861\"", "3 session");
        ckc(body, "\"event_id\":\"t6-1178-1968861-g6\"", "3 event_id");
        ckc(body, "\"route\":\"skill\"", "3 route");
        ckc(body, "\"skill\":\"time.query\"", "3 skill");
        ckc(body, "\"user\":\"\xe7\x8e\xb0\xe5\x9c\xa8\xe5\x87\xa0\xe7\x82\xb9\"", "3 user text");
        ckc(body, "\"reply_bytes\":15", "3 reply_bytes");
        ckc(body, "\"user_cut\":0", "6 a fitting text is not marked as cut");
        ckc(body, "\"reply_cut\":0", "6 a fitting reply is not marked as cut");
    }
    ck(count_tmp(EVENTSDIR) == 0, "2 no tmp file left behind");

    /* ---- 4 escaping ---- */
    memset(&t, 0, sizeof(t));
    t.kind = "turn";
    t.user = "he said \"hi\"\\ and\ttab";
    t.reply = "line1";
    ck(ue_publish(&u, &t) == 0, "4 publish with quotes ok");
    {
        char p[700];
        const char *body;
        snprintf(p, sizeof(p), "%s/%012lld.json", EVENTSDIR, u.seq);
        body = slurp(p);
        ckc(body, "\\\"hi\\\"", "4 quotes escaped");
        ckc(body, "\\\\ and", "4 backslash escaped");
        ckc(body, "\\t", "4 tab escaped");
        ck(count_lines(body) == 1, "4 still one single line");
    }

    /* ---- 5/7/13 over-long text ---- */
    {
        static char big[4096];
        size_t i = 0;
        while (i + 3 < sizeof(big) - 1) {
            big[i++] = (char)0xE4; big[i++] = (char)0xB8; big[i++] = (char)0xAD;  /* 中 */
        }
        big[i] = '\0';
        memset(&t, 0, sizeof(t));
        t.kind = "turn";
        t.session = "s1";
        t.event_id = "e1";
        t.user = big;
        t.reply = big;
        ck(ue_publish(&u, &t) == 0, "5 publish over-long text ok");
        {
            char p[700];
            const char *body;
            long size;
            snprintf(p, sizeof(p), "%s/%012lld.json", EVENTSDIR, u.seq);
            body = slurp(p);
            ckc(body, "\"user_cut\":1", "5 over-long user marked as cut");
            ckc(body, "\"reply_cut\":1", "5 over-long reply marked as cut");
            size = (long)strlen(body);
            ck(size > 0 && size < UE_JSON_MAX, "13 one record stays under the ceiling");
            /* the escaped payload must still be valid UTF-8 after unescaping the tail */
            {
                const char *k = strstr(body, "\"user\":\"");
                char val[UE_MAX_TEXT * 6 + 16];
                const char *e;
                size_t n = 0;
                if (k != NULL) {
                    k += strlen("\"user\":\"");
                    e = strchr(k, '"');
                    if (e != NULL && (size_t)(e - k) < sizeof(val)) {
                        while (k < e && n + 1 < sizeof(val)) val[n++] = *k++;
                        while (n > 0 && (((unsigned char)val[n - 1]) & 0xC0) == 0x80) {
                            /* keep, just stop at the last complete codepoint */
                            break;
                        }
                        val[n] = '\0';
                        ck(utf8_tail_ok(val), "5 cut value ends on a codepoint boundary");
                        ck(strlen(val) <= UE_MAX_TEXT, "5 cut value respects the byte cap");
                    } else { FAIL++; printf("FAIL: 5 cannot read the user value\n"); }
                } else { FAIL++; printf("FAIL: 5 no user field\n"); }
            }
        }
    }

    /* ---- 7 sequence continues after a restart ---- */
    {
        long long before = u.seq;
        ue_ctx u2;
        ck(ue_init(&u2, ROOT, 0, 512, UE_MAX_TEXT) == 0, "7 re-init ok");
        ck(u2.seq == before, "7 seq restored from the files on disk");
        memset(&t, 0, sizeof(t));
        t.kind = "turn";
        t.user = "x";
        ck(ue_publish(&u2, &t) == 0, "7 publish after re-init ok");
        ck(u2.seq == before + 1, "7 sequence keeps increasing");
        u = u2;
    }

    /* ---- 8 empty directory resets the sequence ---- */
    {
        ue_ctx u3;
        rm_rf(EVENTSDIR);
        ck(ue_init(&u3, ROOT, 0, 512, UE_MAX_TEXT) == 0, "8 init on an empty dir ok");
        ck(u3.seq == 0, "8 seq back to 0");
        u = u3;
    }

    /* ---- 9 pruning ---- */
    {
        ue_ctx u4;
        long long i;
        rm_rf(EVENTSDIR);
        ck(ue_init(&u4, ROOT, 0, 8, UE_MAX_TEXT) == 0, "9 init with keep=8 ok");
        memset(&t, 0, sizeof(t));
        t.kind = "turn";
        t.user = "prune";
        for (i = 0; i < 20; i++) {
            t.event_id = "p";
            if (ue_publish(&u4, &t) != 0) { FAIL++; printf("FAIL: 9 publish %lld\n", i); break; }
        }
        ck(count_files(EVENTSDIR) == 8, "9 only 8 files remain");
        ck(u4.pruned == 12, "9 prune counter counts the deleted files");
        ck(u4.seq == 20, "9 sequence is unaffected by pruning");
        {
            char p[700];
            struct stat st;
            snprintf(p, sizeof(p), "%s/%012d.json", EVENTSDIR, 13);
            ck(stat(p, &st) == 0, "9 the newest files are kept");
            snprintf(p, sizeof(p), "%s/%012d.json", EVENTSDIR, 12);
            ck(stat(p, &st) != 0, "9 the oldest file is gone");
        }
        u = u4;
    }

    /* ---- 10 status file ---- */
    {
        const char *a = "{\"v\":1,\"state\":\"running\"}";
        const char *b = "{\"v\":1,\"state\":\"idle\"}";
        ck(ue_status_write(&u, a, strlen(a)) == 0, "10 status written");
        ckc(slurp(STATUS), "\"state\":\"running\"", "10 status content");
        ck(ue_status_write(&u, b, strlen(b)) == 0, "10 status replaced");
        ckc(slurp(STATUS), "\"state\":\"idle\"", "10 status replaced content");
        ck_not(slurp(STATUS), "running", "10 no stale tail from the previous write");
        ck(count_tmp(ROOT) == 0, "10 no tmp file left in the root dir");
    }

#ifndef _WIN32
    /* ---- mode: root-owned fallback is world readable, matching the documented default ---- */
    {
        struct stat st;
        snprintf(EVENTSDIR, sizeof(EVENTSDIR), "%s/events", ROOT);
        ck(stat(EVENTSDIR, &st) == 0, "14 events dir exists");
        ck((st.st_mode & 0777) == 0755, "14 events dir mode 0755 when no gid is given");
    }
#endif

    /* ---- 11/12 uninitialised ctx and defaults ---- */
    {
        ue_ctx u5;
        ue_defaults(&u5);
        ck(u5.enabled == 0, "11 defaults are disabled");
        memset(&t, 0, sizeof(t));
        t.kind = NULL;
        t.user = NULL;
        ck(ue_publish(&u5, &t) == -1, "11 publish on a disabled ctx fails closed");
        ck(ue_status_write(&u5, "{}", 2) == -1, "11 status write on a disabled ctx fails closed");
    }
    {
        ue_ctx u6;
        snprintf(EVENTSDIR, sizeof(EVENTSDIR), "%s/events", ROOT);
        rm_rf(EVENTSDIR);
        ck(ue_init(&u6, ROOT, 0, 512, UE_MAX_TEXT) == 0, "12 re-init ok");
        memset(&t, 0, sizeof(t));
        t.user = "";
        t.reply = "";
        ck(ue_publish(&u6, &t) == 0, "12 publish with empty fields ok");
        {
            char p[700];
            const char *body;
            snprintf(p, sizeof(p), "%s/%012lld.json", EVENTSDIR, u6.seq);
            body = slurp(p);
            ckc(body, "\"kind\":\"turn\"", "12 NULL kind defaults to turn");
            ckc(body, "\"user\":\"\"", "12 empty user stays empty");
            ckc(body, "\"reply\":\"\"", "12 empty reply stays empty");
            ckc(body, "\"user_cut\":0", "12 empty user is not cut");
        }
    }

    rm_rf(ROOT);
    printf("\nT9-07 ui events unit tests: %d passed, %d failed\n", PASS, FAIL);
    return FAIL == 0 ? 0 : 1;
}
