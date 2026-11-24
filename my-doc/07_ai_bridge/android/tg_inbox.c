/*
 * tg_inbox.c -- T9-06: strict validation of UI-submitted TTS requests (see tg_inbox.h).
 *
 * Pure POSIX, no Android APIs, no dynamic allocation: the same code runs in the worker on the
 * device and in the host test.
 */
#include "tg_inbox.h"

#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <time.h>
#include <unistd.h>
#include <dirent.h>

#ifndef O_NOFOLLOW
#define O_NOFOLLOW 0
#endif

#ifdef _WIN32
#include <io.h>
#define TI_FSYNC(fd) _commit(fd)
#define ti_lstat(p, st) stat((p), (st))
#ifndef S_ISLNK
#define S_ISLNK(m) 0
#endif
static long long ti_now_ms(void)
{
    return (long long)time(NULL) * 1000LL;   /* ms precision is not needed here */
}
#else
#define TI_FSYNC(fd) fsync(fd)
#define ti_lstat(p, st) lstat((p), (st))
static long long ti_now_ms(void)
{
    struct timespec ts;
    if (clock_gettime(CLOCK_REALTIME, &ts) != 0) return 0;
    return (long long)ts.tv_sec * 1000LL + ts.tv_nsec / 1000000LL;
}
#endif

void ti_cfg_defaults(ti_cfg *c)
{
    if (c == NULL) return;
    memset(c, 0, sizeof(*c));
    snprintf(c->inbox_dir, sizeof(c->inbox_dir), "%s", "/data/local/tmp/t9_ui/inbox");
    snprintf(c->result_dir, sizeof(c->result_dir), "%s", "/data/local/tmp/t9_ui/result");
    snprintf(c->rejected_dir, sizeof(c->rejected_dir), "%s", "/data/local/tmp/t9_ui/rejected");
    snprintf(c->queue_dir, sizeof(c->queue_dir), "%s", "/data/local/tmp/t5_bridge/tts/queue");
    snprintf(c->inflight_dir, sizeof(c->inflight_dir), "%s", "/data/local/tmp/t5_bridge/tts/inflight");
    c->queue_cap = 16;
    c->rate_max = 10;
    c->rate_window_ms = 10000;
    c->max_file_bytes = TI_MAX_FILE_BYTES;
    c->max_text_bytes = TI_MAX_TEXT_BYTES;
    c->max_scan_per_poll = 16;      /* a burst cannot stall the worker loop            */
    c->rejected_max_files = 32;     /* parked refusals are pruned to this many files   */
    c->result_max_files = 128;      /* answers are pruned to this many files           */
    c->enforce_uid = 1;
    c->verbose = 0;
}

/* ------------------------------------------------------------- housekeeping */

int ti_prune_dir(const char *dir, int max_files, ti_stats *st, long long *counter)
{
    int removed = 0;
    int guard = 0;

    (void)st;   /* counters are passed explicitly; st kept for signature symmetry */
    if (dir == NULL || dir[0] == '\0' || max_files <= 0) return 0;

    for (;;) {
        DIR *dp;
        struct dirent *de;
        char oldest[320];
        time_t oldest_mtime = 0;
        int count = 0;

        if (++guard > 256) break;   /* never spin forever */
        dp = opendir(dir);
        if (dp == NULL) break;
        oldest[0] = '\0';
        while ((de = readdir(dp)) != NULL) {
            char path[512];
            struct stat stbuf;
            if (strcmp(de->d_name, ".") == 0 || strcmp(de->d_name, "..") == 0) continue;
            snprintf(path, sizeof(path), "%s/%s", dir, de->d_name);
            if (ti_lstat(path, &stbuf) != 0 || !S_ISREG(stbuf.st_mode)) continue;
            count++;
            if (oldest[0] == '\0' || stbuf.st_mtime < oldest_mtime) {
                oldest_mtime = stbuf.st_mtime;
                snprintf(oldest, sizeof(oldest), "%s", de->d_name);
            }
        }
        closedir(dp);
        if (count <= max_files || oldest[0] == '\0') break;
        {
            char path[512];
            snprintf(path, sizeof(path), "%s/%s", dir, oldest);
            if (unlink(path) != 0) break;
        }
        removed++;
        if (counter != NULL) (*counter)++;
    }
    return removed;
}

/* --------------------------------------------------------------- primitives */

int ti_valid_event_id(const char *id)
{
    size_t n, i;
    if (id == NULL) return 0;
    n = strlen(id);
    if (n == 0 || n > TI_MAX_ID) return 0;
    if (strcmp(id, ".") == 0 || strcmp(id, "..") == 0) return 0;
    for (i = 0; i < n; i++) {
        char c = id[i];
        int ok = (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') ||
                 (c >= '0' && c <= '9') || c == '-' || c == '_' || c == '.';
        if (!ok) return 0;
    }
    return 1;
}

int ti_utf8_valid(const char *s, size_t n)
{
    size_t i = 0;
    while (i < n) {
        unsigned char c = (unsigned char)s[i];
        size_t need, k;
        unsigned int cp;
        if (c < 0x80) { i++; continue; }
        if ((c & 0xE0) == 0xC0) { need = 1; cp = c & 0x1F; }
        else if ((c & 0xF0) == 0xE0) { need = 2; cp = c & 0x0F; }
        else if ((c & 0xF8) == 0xF0) { need = 3; cp = c & 0x07; }
        else return 0;
        if (i + need >= n) return 0;
        for (k = 1; k <= need; k++) {
            unsigned char cc = (unsigned char)s[i + k];
            if ((cc & 0xC0) != 0x80) return 0;
            cp = (cp << 6) | (cc & 0x3F);
        }
        if (need == 1 && cp < 0x80) return 0;
        if (need == 2 && cp < 0x800) return 0;
        if (need == 3 && cp < 0x10000) return 0;
        if (cp > 0x10FFFF) return 0;
        if (cp >= 0xD800 && cp <= 0xDFFF) return 0;
        i += need + 1;
    }
    return 1;
}

/* ------------------------------------------------------------- json parser */

static void ti_skip_ws(const char **p, const char *end)
{
    while (*p < end && (**p == ' ' || **p == '\t' || **p == '\r' || **p == '\n')) (*p)++;
}

static int ti_hex4(const char *p, unsigned int *out)
{
    unsigned int v = 0;
    int i;
    for (i = 0; i < 4; i++) {
        char c = p[i];
        v <<= 4;
        if (c >= '0' && c <= '9') v |= (unsigned int)(c - '0');
        else if (c >= 'a' && c <= 'f') v |= (unsigned int)(c - 'a' + 10);
        else if (c >= 'A' && c <= 'F') v |= (unsigned int)(c - 'A' + 10);
        else return -1;
    }
    *out = v;
    return 0;
}

static int ti_put_utf8(char *out, size_t cap, size_t *used, unsigned int cp)
{
    if (cp < 0x80) {
        if (*used + 1 > cap) return -1;
        out[(*used)++] = (char)cp;
    } else if (cp < 0x800) {
        if (*used + 2 > cap) return -1;
        out[(*used)++] = (char)(0xC0 | (cp >> 6));
        out[(*used)++] = (char)(0x80 | (cp & 0x3F));
    } else if (cp < 0x10000) {
        if (*used + 3 > cap) return -1;
        out[(*used)++] = (char)(0xE0 | (cp >> 12));
        out[(*used)++] = (char)(0x80 | ((cp >> 6) & 0x3F));
        out[(*used)++] = (char)(0x80 | (cp & 0x3F));
    } else {
        if (*used + 4 > cap) return -1;
        out[(*used)++] = (char)(0xF0 | (cp >> 18));
        out[(*used)++] = (char)(0x80 | ((cp >> 12) & 0x3F));
        out[(*used)++] = (char)(0x80 | ((cp >> 6) & 0x3F));
        out[(*used)++] = (char)(0x80 | (cp & 0x3F));
    }
    return 0;
}

/* strict string: returns 0 on success, -1 on malformed input, -2 when out is too small */
static int ti_parse_string(const char **pp, const char *end, char *out, size_t cap,
                           size_t *outlen, char *err, size_t errlen)
{
    const char *p = *pp;
    size_t used = 0;
    if (p >= end || *p != '"') {
        if (err && errlen) snprintf(err, errlen, "expected string");
        return -1;
    }
    p++;
    while (p < end) {
        unsigned char c = (unsigned char)*p;
        if (c == '"') {
            p++;
            if (out && cap > 0) {
                if (used > cap - 1) return -2;
                out[used] = '\0';
            }
            if (outlen) *outlen = used;
            *pp = p;
            return 0;
        }
        if (c < 0x20) {
            if (err && errlen) snprintf(err, errlen, "control char in string");
            return -1;
        }
        if (c == '\\') {
            p++;
            if (p >= end) {
                if (err && errlen) snprintf(err, errlen, "truncated escape");
                return -1;
            }
            switch (*p) {
                case '"':  if (out) { if (used + 1 > cap) return -2; out[used++] = '"'; } else used++; p++; break;
                case '\\': if (out) { if (used + 1 > cap) return -2; out[used++] = '\\'; } else used++; p++; break;
                case '/':  if (out) { if (used + 1 > cap) return -2; out[used++] = '/'; } else used++; p++; break;
                case 'b':  if (out) { if (used + 1 > cap) return -2; out[used++] = '\b'; } else used++; p++; break;
                case 'f':  if (out) { if (used + 1 > cap) return -2; out[used++] = '\f'; } else used++; p++; break;
                case 'n':  if (out) { if (used + 1 > cap) return -2; out[used++] = '\n'; } else used++; p++; break;
                case 'r':  if (out) { if (used + 1 > cap) return -2; out[used++] = '\r'; } else used++; p++; break;
                case 't':  if (out) { if (used + 1 > cap) return -2; out[used++] = '\t'; } else used++; p++; break;
                case 'u': {
                    unsigned int cp;
                    if (p + 4 >= end) {
                        if (err && errlen) snprintf(err, errlen, "truncated \\u");
                        return -1;
                    }
                    if (ti_hex4(p + 1, &cp) != 0) {
                        if (err && errlen) snprintf(err, errlen, "bad \\u escape");
                        return -1;
                    }
                    p += 5;
                    if (cp >= 0xD800 && cp <= 0xDBFF) {
                        unsigned int lo;
                        if (p + 1 >= end || p[0] != '\\' || p[1] != 'u') {
                            if (err && errlen) snprintf(err, errlen, "unpaired surrogate");
                            return -1;
                        }
                        if (p + 5 >= end || ti_hex4(p + 2, &lo) != 0) {
                            if (err && errlen) snprintf(err, errlen, "bad low surrogate");
                            return -1;
                        }
                        p += 6;
                        cp = 0x10000 + ((cp - 0xD800) << 10) + (lo - 0xDC00);
                    }
                    if (out) {
                        if (ti_put_utf8(out, cap, &used, cp) != 0) return -2;
                    } else {
                        if (cp < 0x80) used += 1;
                        else if (cp < 0x800) used += 2;
                        else if (cp < 0x10000) used += 3;
                        else used += 4;
                    }
                    break;
                }
                default:
                    if (err && errlen) snprintf(err, errlen, "unsupported escape");
                    return -1;
            }
            continue;
        }
        if (out) {
            if (used + 1 > cap) return -2;
            out[used++] = (char)c;
        } else {
            used++;
        }
        p++;
    }
    if (err && errlen) snprintf(err, errlen, "unterminated string");
    return -1;
}

int ti_parse_msg(const char *buf, size_t len, ti_msg *m, char *err, size_t errlen)
{
    const char *p = buf, *end = buf + len;
    int depth = 0;

    if (m == NULL) return -1;
    memset(m, 0, sizeof(*m));
    /* T9-07R1: "say" is the default request type; only an explicit "kind":"ask" asks the worker
     * for an AI answer. Old requests (no kind field) therefore keep their old semantics. */
    snprintf(m->kind, sizeof(m->kind), "%s", TI_KIND_SAY);
    if (err && errlen) err[0] = '\0';
    if (buf == NULL || len == 0) {
        if (err && errlen) snprintf(err, errlen, "empty request");
        return -1;
    }

    ti_skip_ws(&p, end);
    if (p >= end || *p != '{') {
        if (err && errlen) snprintf(err, errlen, "not a json object");
        return -1;
    }
    p++;
    depth = 1;

    for (;;) {
        char key[32];
        size_t key_len = 0;
        ti_skip_ws(&p, end);
        if (p >= end) { if (err && errlen) snprintf(err, errlen, "truncated object"); return -1; }
        if (*p == '}') { p++; depth--; break; }
        if (ti_parse_string(&p, end, key, sizeof(key), &key_len, err, errlen) != 0) return -1;
        ti_skip_ws(&p, end);
        if (p >= end || *p != ':') {
            if (err && errlen) snprintf(err, errlen, "missing ':'");
            return -1;
        }
        p++;
        ti_skip_ws(&p, end);
        if (p >= end) { if (err && errlen) snprintf(err, errlen, "truncated value"); return -1; }

        if (*p == '"') {
            char val[TI_MAX_TEXT_BYTES * 2 + 2];
            size_t vlen = 0;
            if (ti_parse_string(&p, end, val, sizeof(val), &vlen, err, errlen) != 0) {
                if (err && errlen && err[0] == '\0') snprintf(err, errlen, "string too long");
                return -1;
            }
            if (strcmp(key, "event_id") == 0) {
                if (vlen > TI_MAX_ID) {
                    if (err && errlen) snprintf(err, errlen, "event_id too long");
                    return -1;
                }
                memcpy(m->event_id, val, vlen);
                m->event_id[vlen] = '\0';
                m->has_event_id = 1;
            } else if (strcmp(key, "text") == 0) {
                memcpy(m->text, val, vlen);
                m->text[vlen] = '\0';
                m->text_bytes = (int)vlen;
                m->has_text = 1;
            } else if (strcmp(key, "kind") == 0) {
                /* unknown types are refused instead of being guessed: a typo must not silently
                 * turn "ask" into "speak it verbatim" */
                if (strcmp(val, TI_KIND_SAY) != 0 && strcmp(val, TI_KIND_ASK) != 0) {
                    if (err && errlen) snprintf(err, errlen, "unsupported kind");
                    return -1;
                }
                snprintf(m->kind, sizeof(m->kind), "%s", val);
                m->has_kind = 1;
            }
        } else if ((*p >= '0' && *p <= '9') || *p == '-') {
            long v = 0;
            int neg = 0;
            if (*p == '-') { neg = 1; p++; }
            if (p >= end || *p < '0' || *p > '9') {
                if (err && errlen) snprintf(err, errlen, "bad number");
                return -1;
            }
            while (p < end && *p >= '0' && *p <= '9') {
                v = v * 10 + (*p - '0');
                if (v > 100000000L) {
                    if (err && errlen) snprintf(err, errlen, "number out of range");
                    return -1;
                }
                p++;
            }
            if (strcmp(key, "v") == 0) {
                m->v = neg ? -v : v;
                m->has_v = 1;
            } else if (strcmp(key, "kind") == 0) {
                /* T9-07R1: the request type is a string; a numeric one is a protocol error,
                 * not something to guess at */
                if (err && errlen) snprintf(err, errlen, "kind must be a string");
                return -1;
            }
        } else if (*p == '{' || *p == '[') {
            if (err && errlen) snprintf(err, errlen, "nested value not allowed");
            return -1;
        } else if (*p == 't' || *p == 'f' || *p == 'n') {
            /* tolerate true/false/null by skipping the bare word */
            while (p < end && ((*p >= 'a' && *p <= 'z'))) p++;
        } else {
            if (err && errlen) snprintf(err, errlen, "unsupported value");
            return -1;
        }

        ti_skip_ws(&p, end);
        if (p < end && *p == ',') { p++; continue; }
        if (p < end && *p == '}') { p++; depth--; break; }
        if (err && errlen) snprintf(err, errlen, "expected ',' or '}'");
        return -1;
    }

    ti_skip_ws(&p, end);
    if (p != end) {
        if (err && errlen) snprintf(err, errlen, "trailing data after object");
        return -1;
    }
    if (depth != 0) {
        if (err && errlen) snprintf(err, errlen, "unbalanced object");
        return -1;
    }
    return 0;
}

/* ------------------------------------------------------------------- output */

static int ti_write_0600_0644(const char *path_tmp, const char *path_dst, const char *body, size_t n)
{
    int fd = open(path_tmp, O_WRONLY | O_CREAT | O_TRUNC, 0644);
    size_t off = 0;
    if (fd < 0) return -1;
    while (off < n) {
        ssize_t w = write(fd, body + off, n - off);
        if (w <= 0) { close(fd); unlink(path_tmp); return -1; }
        off += (size_t)w;
    }
    if (TI_FSYNC(fd) != 0) { /* best effort */ }
    chmod(path_tmp, 0644);
    close(fd);
    if (rename(path_tmp, path_dst) != 0) { unlink(path_tmp); return -1; }
    return 0;
}

static void ti_json_escape_into(char *out, size_t cap, const char *in)
{
    size_t o = 0, i;
    for (i = 0; in[i] != '\0' && o + 2 < cap; i++) {
        unsigned char c = (unsigned char)in[i];
        if (c == '"' || c == '\\') {
            out[o++] = '\\';
            out[o++] = (char)c;
        } else if (c < 0x20) {
            if (o + 6 < cap) {
                int k = snprintf(out + o, cap - o, "\\u%04x", c);
                if (k > 0) o += (size_t)k;
            }
        } else {
            out[o++] = (char)c;
        }
    }
    if (cap > 0) out[o < cap ? o : cap - 1] = '\0';
}

int ti_result_write(const ti_cfg *cfg, const char *event_id, int ok,
                    const char *stage, const char *reason)
{
    char path_dst[512], path_tmp[512], body[TI_MAX_RESULT * 4], esc_reason[TI_MAX_RESULT * 2];
    char esc_stage[64];
    int n;

    if (cfg == NULL || !ti_valid_event_id(event_id)) return -1;
    if (cfg->result_dir[0] == '\0') return 0;
    ti_json_escape_into(esc_reason, sizeof(esc_reason), reason != NULL ? reason : "");
    ti_json_escape_into(esc_stage, sizeof(esc_stage), stage != NULL ? stage : "");
    n = snprintf(body, sizeof(body),
                 "{\"v\":1,\"event_id\":\"%s\",\"ok\":%s,\"stage\":\"%s\",\"reason\":\"%s\","
                 "\"ts_ms\":%lld}\n",
                 event_id, ok ? "true" : "false", esc_stage, esc_reason, ti_now_ms());
    if (n <= 0 || (size_t)n >= sizeof(body)) return -1;
    snprintf(path_dst, sizeof(path_dst), "%s/%s.json", cfg->result_dir, event_id);
    snprintf(path_tmp, sizeof(path_tmp), "%s/.%s.json.tmp", cfg->result_dir, event_id);
    return ti_write_0600_0644(path_tmp, path_dst, body, (size_t)n);
}

/* -------------------------------------------------------------------- queue */

int ti_count_pending(const ti_cfg *cfg)
{
    const char *dirs[2];
    int total = 0, d;
    if (cfg == NULL) return 0;
    dirs[0] = cfg->queue_dir;
    dirs[1] = cfg->inflight_dir;
    for (d = 0; d < 2; d++) {
        DIR *dp;
        struct dirent *de;
        if (dirs[d][0] == '\0') continue;
        dp = opendir(dirs[d]);
        if (dp == NULL) continue;
        while ((de = readdir(dp)) != NULL) {
            size_t n = strlen(de->d_name);
            if (n > 5 && strcmp(de->d_name + n - 5, ".json") == 0) total++;
        }
        closedir(dp);
    }
    return total;
}

/* ------------------------------------------------------------- rate limiting */

/*
 * T9-06R1: per submitting uid. The table is small on purpose (at most TI_MAX_UIDS distinct
 * submitters); when it is full the last slot is shared, which can only make the limit stricter
 * for the surplus uids and never looser for the real UI.
 */
static ti_rate_slot *ti_rate_slot_for(ti_stats *st, unsigned int uid)
{
    int i;
    if (st == NULL) return NULL;
    for (i = 0; i < st->rate_slots; i++)
        if (st->rate[i].uid == uid) return &st->rate[i];
    if (st->rate_slots < TI_MAX_UIDS) {
        st->rate[st->rate_slots].uid = uid;
        st->rate[st->rate_slots].win_start_ms = 0;
        st->rate[st->rate_slots].count = 0;
        return &st->rate[st->rate_slots++];
    }
    return &st->rate[TI_MAX_UIDS - 1];
}

/* ---------------------------------------------------------------- the poll */

static void ti_reject(const ti_cfg *cfg, ti_stats *st, const char *event_id,
                      const char *reason, const char *path)
{
    char dst[512];
    struct stat after;
    st->rejected++;
    snprintf(st->last_reject, sizeof(st->last_reject), "%s: %s",
             event_id != NULL ? event_id : "?", reason != NULL ? reason : "rejected");
    if (event_id != NULL && ti_valid_event_id(event_id))
        (void)ti_result_write(cfg, event_id, 0, "rejected", reason);
    if (path != NULL) {
        snprintf(dst, sizeof(dst), "%s/%s.%lld.rejected", cfg->rejected_dir,
                 (event_id != NULL && ti_valid_event_id(event_id)) ? event_id : "unknown",
                 ti_now_ms());
        if (rename(path, dst) != 0) (void)unlink(path);
        /* if it is still there we could not park it: say so once, do not loop silently */
        if (ti_lstat(path, &after) == 0) st->stuck++;
    }
}

int ti_poll(const ti_cfg *cfg, ti_stats *st, ti_enqueue_fn fn, void *ctx)
{
    DIR *dp;
    struct dirent *de;
    int handled = 0, examined = 0;
    long long now;

    if (cfg == NULL || st == NULL || fn == NULL) return -1;
    if (cfg->inbox_dir[0] == '\0') return 0;

    dp = opendir(cfg->inbox_dir);
    if (dp == NULL) return (errno == ENOENT) ? 0 : -1;

    while ((de = readdir(dp)) != NULL) {
        char path[512], event_id[TI_MAX_ID + 1];
        char buf[TI_MAX_FILE_BYTES + 2];
        char err[128];
        struct stat lst, fst;
        size_t nlen = strlen(de->d_name);
        int fd, rc, is_tmp = 0;
        ssize_t got;
        size_t off = 0;
        ti_msg msg;
        ti_rate_slot *slot = NULL;

        /* T9-06R1: bound the work one poll may do, so a burst cannot stall the loop */
        examined++;
        if (cfg->max_scan_per_poll > 0) {
            if (handled >= cfg->max_scan_per_poll) break;
            if (examined > cfg->max_scan_per_poll * 8) break;
        }

        if (strcmp(de->d_name, ".") == 0 || strcmp(de->d_name, "..") == 0) continue;
        if (strncmp(de->d_name, "rejected", 8) == 0 && nlen == 8) continue;
        snprintf(path, sizeof(path), "%s/%s", cfg->inbox_dir, de->d_name);

        if (nlen > 4 && strcmp(de->d_name + nlen - 4, ".tmp") == 0) is_tmp = 1;
        if (is_tmp) {
            /* a submission that never renamed into place: clean it after a grace period */
            if (ti_lstat(path, &lst) == 0 && S_ISREG(lst.st_mode)) {
                long long age = ti_now_ms() - (long long)lst.st_mtime * 1000LL;
                if (age > 60000) {
                    (void)unlink(path);
                    st->tmp_cleaned++;
                }
            }
            continue;
        }
        if (nlen < 6 || strcmp(de->d_name + nlen - 5, ".json") != 0) continue;
        if (nlen - 5 > TI_MAX_ID) {
            st->bad_name++;
            ti_reject(cfg, st, NULL, "event_id too long", path);
            handled++;
            continue;
        }
        memcpy(event_id, de->d_name, nlen - 5);
        event_id[nlen - 5] = '\0';
        if (!ti_valid_event_id(event_id)) {
            st->bad_name++;
            ti_reject(cfg, st, NULL, "event_id invalid", path);
            handled++;
            continue;
        }

        st->seen++;

        if (ti_lstat(path, &lst) != 0) continue;
        if (S_ISLNK(lst.st_mode)) {
            st->nofollow++;
            ti_reject(cfg, st, event_id, "symlink rejected", path);
            handled++;
            continue;
        }
        if (!S_ISREG(lst.st_mode)) continue;

        fd = open(path, O_RDONLY | O_NOFOLLOW);
        if (fd < 0) {
            if (errno == ELOOP) {
                st->nofollow++;
                ti_reject(cfg, st, event_id, "symlink rejected", path);
                handled++;
            }
            continue;
        }
        if (fstat(fd, &fst) != 0 || !S_ISREG(fst.st_mode)) {
            close(fd);
            ti_reject(cfg, st, event_id, "not a regular file", path);
            handled++;
            continue;
        }
        if (fst.st_nlink != 1) {
            close(fd);
            ti_reject(cfg, st, event_id, "hardlinked file rejected", path);
            handled++;
            continue;
        }
        if (cfg->enforce_uid) {
            int allowed = 0, i;
            for (i = 0; i < cfg->allowed_count; i++)
                if ((unsigned int)fst.st_uid == cfg->allowed_uids[i]) allowed = 1;
            if (!allowed) {
                /*
                 * T9-06R1: a file from a foreign uid is DROPPED here. It is not answered and
                 * not archived, so an unprivileged app cannot make the worker create root-owned
                 * files (and cannot fill rejected/). With the 0700 inbox this branch is already
                 * unreachable for other apps; it stays as defence in depth.
                 */
                close(fd);
                (void)unlink(path);
                st->foreign_dropped++;
                continue;
            }
        }
        if (fst.st_size < 0) {
            close(fd);
            continue;
        }
        if (fst.st_size == 0) {
            /*
             * A writer that does not use tmp+rename can be caught mid-write. An empty file is
             * never a valid request: leave it alone for now (it may still be written), and only
             * park it once it has been sitting there empty for a while. Never reject it on every
             * poll -- that turned into a log/counter storm on the device once.
             */
            long long age = ti_now_ms() - (long long)fst.st_mtime * 1000LL;
            close(fd);
            if (age > 30000) {
                ti_reject(cfg, st, event_id, "empty file", path);
                handled++;
            } else {
                st->empty_skipped++;
            }
            continue;
        }
        if (fst.st_size > (off_t)cfg->max_file_bytes) {
            close(fd);
            ti_reject(cfg, st, event_id, "file size out of range", path);
            handled++;
            continue;
        }
        while (off < (size_t)fst.st_size) {
            got = read(fd, buf + off, (size_t)fst.st_size - off);
            if (got <= 0) break;
            off += (size_t)got;
        }
        close(fd);
        if (off != (size_t)fst.st_size) {
            /* somebody truncated it under us: leave it for the next scan */
            continue;
        }
        buf[off] = '\0';

        if (ti_parse_msg(buf, off, &msg, err, sizeof(err)) != 0) {
            ti_reject(cfg, st, event_id, err, path);
            handled++;
            continue;
        }
        if (!msg.has_v || msg.v != 1) {
            ti_reject(cfg, st, event_id, "unsupported version", path);
            handled++;
            continue;
        }
        if (!msg.has_event_id || strcmp(msg.event_id, event_id) != 0) {
            ti_reject(cfg, st, event_id, "event_id mismatch", path);
            handled++;
            continue;
        }
        if (!msg.has_text || msg.text_bytes <= 0) {
            ti_reject(cfg, st, event_id, "empty text", path);
            handled++;
            continue;
        }
        if (msg.text_bytes > cfg->max_text_bytes) {
            ti_reject(cfg, st, event_id, "text too long", path);
            handled++;
            continue;
        }
        if (!ti_utf8_valid(msg.text, (size_t)msg.text_bytes)) {
            ti_reject(cfg, st, event_id, "text is not valid UTF-8", path);
            handled++;
            continue;
        }

        if (cfg->queue_cap > 0 && ti_count_pending(cfg) >= cfg->queue_cap) {
            ti_reject(cfg, st, event_id, "queue full", path);
            handled++;
            continue;
        }

        now = ti_now_ms();
        if (cfg->rate_max > 0) {
            /* T9-06R1: the window is per submitting uid, as the header always claimed */
            slot = ti_rate_slot_for(st, (unsigned int)fst.st_uid);
            if (slot != NULL) {
                if (slot->win_start_ms == 0 || now - slot->win_start_ms >= cfg->rate_window_ms) {
                    slot->win_start_ms = now;
                    slot->count = 0;
                }
                if (slot->count >= cfg->rate_max) {
                    ti_reject(cfg, st, event_id, "rate limited", path);
                    handled++;
                    continue;
                }
            }
        }

        err[0] = '\0';
        rc = fn(ctx, event_id, msg.text, msg.text_bytes, msg.kind, err, sizeof(err));
        if (rc < 0) {
            ti_reject(cfg, st, event_id, err[0] ? err : "enqueue failed", path);
            handled++;
            continue;
        }
        if (cfg->rate_max > 0 && slot != NULL) slot->count++;
        if (rc == 1) {
            st->idempotent++;
            (void)ti_result_write(cfg, event_id, 1, "existing", "already queued or played");
        } else {
            st->accepted++;
            /* the stage names what was accepted: an AI turn still has to be answered */
            (void)ti_result_write(cfg, event_id, 1,
                                  (strcmp(msg.kind, TI_KIND_ASK) == 0) ? "ai" : "queue", "");
        }
        (void)ti_prune_dir(cfg->result_dir, cfg->result_max_files, st, &st->pruned_result);
        (void)unlink(path);
        handled++;
        if (cfg->max_scan_per_poll > 0 && handled >= cfg->max_scan_per_poll) break;
    }
    closedir(dp);
    (void)ti_prune_dir(cfg->rejected_dir, cfg->rejected_max_files, st, &st->pruned_rejected);
    return handled;
}


