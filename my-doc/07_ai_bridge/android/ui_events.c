/*
 * ui_events.c -- T9-07 event/status outlet for the product UI (see ui_events.h).
 *
 * Design notes that matter for the audit:
 *   - every event is one small file, published with tmp + fsync + rename, so a reader can
 *     never see a half-written record and never needs an offset arithmetic;
 *   - the sequence number is derived from the files already on disk, so it keeps increasing
 *     across worker restarts without a second piece of state to keep in sync;
 *   - text is cut on a codepoint boundary and the record says so ("*_cut":1) instead of
 *     silently shipping a broken UTF-8 tail;
 *   - file mode/group are set *before* the rename, so the record is never visible with the
 *     wrong permissions even for an instant.
 */
#include "ui_events.h"
#include "worker_util.h"

#include <dirent.h>
#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>

#ifdef _WIN32
#include <io.h>
#define UE_FSYNC(fd) _commit(fd)
#else
#define UE_FSYNC(fd) fsync(fd)
#endif

/* --------------------------------------------------------------- helpers */

static void ue_set_error(ue_ctx *u, const char *what, const char *detail)
{
    if (u == NULL) return;
    snprintf(u->last_error, sizeof(u->last_error), "%s%s%s",
             what != NULL ? what : "",
             (detail != NULL && detail[0] != '\0') ? ": " : "",
             detail != NULL ? detail : "");
}

/*
 * Copy at most cap-1 bytes of src, backing off to a UTF-8 codepoint boundary.
 * Returns 1 when the source was cut (so the record can admit it), 0 otherwise.
 */
static int ue_copy_trunc(char *dst, size_t cap, const char *src)
{
    size_t n;
    size_t k;

    if (dst == NULL || cap == 0) return 0;
    dst[0] = '\0';
    if (src == NULL) return 0;
    n = strlen(src);
    if (n > cap - 1) {
        /* keep at most cap-1 bytes, then back off to a codepoint boundary: a cut record
         * must never end with a broken UTF-8 tail */
        k = cap - 1;
        while (k > 0 && (((unsigned char)src[k]) & 0xC0) == 0x80) k--;
        memcpy(dst, src, k);
        dst[k] = '\0';
        return 1;
    }
    memcpy(dst, src, n + 1);
    return 0;
}

/* gid == 0 means "no group ownership was requested": behave like a plain root-owned file */
static void ue_mode_public(const char *path, int is_dir)
{
    if (path == NULL) return;
    (void)chmod(path, is_dir ? 0755 : 0644);
}

size_t ue_escaped_len(const char *s)
{
    /* worst case: every byte becomes \u00XX (6 bytes) */
    return (s == NULL) ? 0 : strlen(s) * 6;
}

static void ue_apply_owner(ue_ctx *u, const char *path, int is_dir)
{
#ifndef _WIN32
    if (u == NULL || path == NULL) return;
    if (u->gid <= 0) return;
    if (chown(path, (uid_t)-1, (gid_t)u->gid) != 0) {
        if (u->gid_ok) {
            ue_set_error(u, "chown failed", path);
            u->gid_ok = 0;
        }
        return;
    }
    u->gid_ok = 1;
    (void)chmod(path, is_dir ? 0750 : 0640);
#else
    (void)u; (void)path; (void)is_dir;
#endif
}

/* highest sequence number already present, or 0 */
static long long ue_scan_max_seq(const char *dir)
{
    DIR *dp;
    struct dirent *de;
    long long max = 0;

    dp = opendir(dir);
    if (dp == NULL) return 0;
    while ((de = readdir(dp)) != NULL) {
        const char *n = de->d_name;
        char *end = NULL;
        long long v;
        size_t len;

        if (n[0] == '.') continue;                 /* tmp files and . / .. */
        len = strlen(n);
        if (len < 6 || strcmp(n + len - 5, ".json") != 0) continue;
        v = strtoll(n, &end, 10);
        if (end == n || end == NULL) continue;
        if (*end != '.') continue;                  /* must be <digits>.json */
        if (v > max) max = v;
    }
    closedir(dp);
    return max;
}

/* delete the lowest sequence numbers until at most max_files remain */
static int ue_prune(ue_ctx *u)
{
    int removed = 0;
    int guard = 0;

    if (u == NULL || u->max_files <= 0) return 0;
    for (;;) {
        DIR *dp;
        struct dirent *de;
        long long lowest = 0;
        char lowest_name[64];
        int count = 0;

        if (++guard > UE_MAX_FILES + 64) break;
        dp = opendir(u->events_dir);
        if (dp == NULL) break;
        lowest_name[0] = '\0';
        while ((de = readdir(dp)) != NULL) {
            const char *n = de->d_name;
            char *end = NULL;
            long long v;
            size_t len;

            if (n[0] == '.') continue;
            len = strlen(n);
            if (len < 6 || strcmp(n + len - 5, ".json") != 0) continue;
            v = strtoll(n, &end, 10);
            if (end == n || *end != '.') continue;
            count++;
            if (lowest_name[0] == '\0' || v < lowest) {
                lowest = v;
                snprintf(lowest_name, sizeof(lowest_name), "%s", n);
            }
        }
        closedir(dp);
        if (count <= u->max_files || lowest_name[0] == '\0') break;
        {
            char path[UE_PATH_MAX + 80];
            snprintf(path, sizeof(path), "%s/%s", u->events_dir, lowest_name);
            if (unlink(path) != 0) break;
        }
        removed++;
        u->pruned++;
    }
    return removed;
}

/* --------------------------------------------------------------- public */

void ue_defaults(ue_ctx *u)
{
    if (u == NULL) return;
    memset(u, 0, sizeof(*u));
    u->enabled = 0;
    snprintf(u->dir, sizeof(u->dir), "%s", "/data/local/tmp/t9_ui");
    u->gid = 0;
    u->max_files = UE_MAX_FILES;
}

int ue_init(ue_ctx *u, const char *dir, int gid, int max_files, int max_text_bytes)
{
    (void)max_text_bytes;   /* kept in the signature for the caller's clarity */
    if (u == NULL || dir == NULL || dir[0] == '\0') return -1;

    ue_defaults(u);
    snprintf(u->dir, sizeof(u->dir), "%s", dir);
    if (snprintf(u->events_dir, sizeof(u->events_dir), "%s/%s", dir, UE_DIRNAME_EVENTS) >=
        (int)sizeof(u->events_dir)) {
        ue_set_error(u, "events dir path too long", dir);
        return -1;
    }
    if (snprintf(u->status_path, sizeof(u->status_path), "%s/%s", dir, UE_STATUS_NAME) >=
        (int)sizeof(u->status_path)) {
        ue_set_error(u, "status path too long", dir);
        return -1;
    }
    u->gid = (gid > 0) ? gid : 0;
    u->max_files = (max_files > 0) ? max_files : UE_MAX_FILES;
    u->gid_ok = (u->gid == 0) ? 1 : 0;

    if (wu_mkdir_p(u->dir) != 0) {
        ue_set_error(u, "cannot create dir", u->dir);
        return -1;
    }
    if (wu_mkdir_p(u->events_dir) != 0) {
        ue_set_error(u, "cannot create events dir", u->events_dir);
        return -1;
    }
    if (u->gid > 0) {
        ue_apply_owner(u, u->events_dir, 1);
        if (!u->gid_ok) {
            /* Publishing conversation text world-readable is the thing this module is
             * supposed to prevent, so refuse rather than degrade. */
            ue_set_error(u, "cannot set group ownership on", u->events_dir);
            return -1;
        }
    } else {
        ue_mode_public(u->events_dir, 1);
    }
    u->seq = ue_scan_max_seq(u->events_dir);
    (void)ue_prune(u);
    u->enabled = 1;
    return 0;
}

int ue_publish(ue_ctx *u, const ue_turn *t)
{
    static char js[UE_JSON_MAX];
    static char user_esc[UE_MAX_TEXT * 6 + 16];
    static char reply_esc[UE_MAX_TEXT * 6 + 16];
    static char sess_esc[UE_MAX_ID * 6 + 16];
    static char ev_esc[UE_MAX_ID * 6 + 16];
    static char route_esc[48];
    static char skill_esc[64];
    static char status_esc[16];
    static char reason_esc[96 * 6 + 16];
    static char user_raw[UE_MAX_TEXT + 1];
    static char reply_raw[UE_MAX_TEXT + 1];
    static char sess_raw[UE_MAX_ID + 1];
    static char ev_raw[UE_MAX_ID + 1];

    char tmp[UE_PATH_MAX + 96];
    char dst[UE_PATH_MAX + 96];
    char ts[32];
    int user_cut, reply_cut;
    int fd;
    int n;
    long long seq;

    if (u == NULL || t == NULL) return -1;
    if (!u->enabled) return -1;

    user_cut = ue_copy_trunc(user_raw, sizeof(user_raw), t->user != NULL ? t->user : "");
    reply_cut = ue_copy_trunc(reply_raw, sizeof(reply_raw),
                              t->reply != NULL ? t->reply : "");
    (void)ue_copy_trunc(sess_raw, sizeof(sess_raw), t->session != NULL ? t->session : "");
    (void)ue_copy_trunc(ev_raw, sizeof(ev_raw), t->event_id != NULL ? t->event_id : "");
    (void)ue_copy_trunc(route_esc, sizeof(route_esc), t->route != NULL ? t->route : "");
    (void)ue_copy_trunc(skill_esc, sizeof(skill_esc), t->skill != NULL ? t->skill : "");
    (void)ue_copy_trunc(status_esc, sizeof(status_esc),
                        (t->status != NULL) ? t->status : "ok");

    /* the short fields are already truncated, so escaping them cannot overflow */
    wu_json_escape(sess_esc, sizeof(sess_esc), sess_raw);
    wu_json_escape(ev_esc, sizeof(ev_esc), ev_raw);
    wu_json_escape(user_esc, sizeof(user_esc), user_raw);
    wu_json_escape(reply_esc, sizeof(reply_esc), reply_raw);
    wu_json_escape(reason_esc, sizeof(reason_esc), t->reason != NULL ? t->reason : "");

    seq = u->seq + 1;
    wu_time_str(ts, sizeof(ts));

    n = snprintf(js, sizeof(js),
                 "{\"v\":1,\"seq\":%lld,\"ts\":\"%s\",\"ts_ms\":%lld,"
                 "\"kind\":\"%s\",\"session\":\"%s\",\"event_id\":\"%s\","
                 "\"route\":\"%s\",\"skill\":\"%s\",\"status\":\"%s\","
                 "\"user\":\"%s\",\"user_bytes\":%d,\"user_cut\":%d,"
                 "\"reply\":\"%s\",\"reply_bytes\":%d,\"reply_cut\":%d,\"reason\":\"%s\"}\n",
                 seq, ts, wu_wall_ms(),
                 (t->kind != NULL) ? t->kind : "turn",
                 sess_esc, ev_esc,
                 route_esc, skill_esc, status_esc,
                 user_esc, (int)strlen(user_raw), user_cut,
                 reply_esc, (t->reply_bytes > 0) ? t->reply_bytes : (int)strlen(reply_raw),
                 reply_cut, reason_esc);
    if (n <= 0 || n >= (int)sizeof(js)) {
        ue_set_error(u, "record too large", "");
        u->publish_err++;
        return -1;
    }

    if (snprintf(tmp, sizeof(tmp), "%s/.tmp.%lld.%lld", u->events_dir, (long long)getpid(), seq) >=
        (int)sizeof(tmp) ||
        snprintf(dst, sizeof(dst), "%s/%012lld.json", u->events_dir, seq) >= (int)sizeof(dst)) {
        ue_set_error(u, "path too long", u->events_dir);
        u->publish_err++;
        return -1;
    }

    fd = open(tmp, O_WRONLY | O_CREAT | O_TRUNC, 0640);
    if (fd < 0) {
        ue_set_error(u, "cannot create event file", tmp);
        u->publish_err++;
        return -1;
    }
    /* permissions/group before the rename: the record is never visible with the wrong mode */
    if (u->gid > 0) ue_apply_owner(u, tmp, 0);
    else            ue_mode_public(tmp, 0);
    if (wu_write_all(fd, js, (size_t)n) != 0 || UE_FSYNC(fd) != 0) {
        wu_close(fd);
        (void)wu_unlink(tmp);
        ue_set_error(u, "cannot write event file", tmp);
        u->publish_err++;
        return -1;
    }
    wu_close(fd);
    if (wu_rename_replace(tmp, dst) != 0) {
        (void)wu_unlink(tmp);
        ue_set_error(u, "rename failed", dst);
        u->publish_err++;
        return -1;
    }
    (void)wu_fsync_dir(u->events_dir);
    u->seq = seq;
    u->published++;
    (void)ue_prune(u);
    return 0;
}

int ue_status_write(ue_ctx *u, const char *json, size_t len)
{
    char tmp[UE_PATH_MAX + 64];
    int fd;

    if (u == NULL || !u->enabled || json == NULL || len == 0) return -1;
    if (snprintf(tmp, sizeof(tmp), "%s/.tmp.status.%lld", u->dir, (long long)getpid()) >=
        (int)sizeof(tmp)) {
        return -1;
    }
    fd = open(tmp, O_WRONLY | O_CREAT | O_TRUNC, 0640);
    if (fd < 0) {
        ue_set_error(u, "cannot create status file", tmp);
        return -1;
    }
    if (u->gid > 0) ue_apply_owner(u, tmp, 0);
    else            ue_mode_public(tmp, 0);
    if (wu_write_all(fd, json, len) != 0 || UE_FSYNC(fd) != 0) {
        wu_close(fd);
        (void)wu_unlink(tmp);
        ue_set_error(u, "cannot write status file", tmp);
        return -1;
    }
    wu_close(fd);
    if (wu_rename_replace(tmp, u->status_path) != 0) {
        (void)wu_unlink(tmp);
        ue_set_error(u, "status rename failed", u->status_path);
        return -1;
    }
    (void)wu_fsync_dir(u->dir);
    return 0;
}
