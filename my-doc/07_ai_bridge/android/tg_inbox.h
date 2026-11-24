/*
 * tg_inbox.h -- T9-06: the UI -> worker submit channel.
 *
 * A normal unprivileged app cannot write into the accepted TTS queue (0700 root), so the UI
 * drops a request file into a separate, strictly validated inbox; the worker (root) validates
 * it and re-enqueues it through the EXISTING durable path (tts_enqueue). The queue, its
 * permissions, the protocol of its items and the echo filter are untouched.
 *
 * Threat model for the inbox directory (01733 root:root, sticky):
 *   - any app can create a file there, so every file is checked: regular file (no symlink,
 *     no hardlink farm), owner uid in the allowlist, size cap, flat JSON with v==1,
 *     event_id == filename, UTF-8 text within the length cap, and a per-uid rate limit.
 *   - a rejection is never silent: it is answered with a result file the UI can read.
 *
 * This module is pure POSIX (no Android APIs) so it can be host-tested with gcc.
 */
#ifndef TG_INBOX_H
#define TG_INBOX_H

#include <stddef.h>

#define TI_MAX_ID          64      /* event_id length cap (matches the TTS queue)          */
#define TI_MAX_TEXT_BYTES  1024    /* one request must fit a single spoken sentence         */
#define TI_MAX_FILE_BYTES  4096    /* hard cap on the request file                          */
#define TI_MAX_RESULT      256
#define TI_MAX_UIDS        8

typedef struct {
    char  inbox_dir[256];      /* where the UI drops <event_id>.json                    */
    char  result_dir[256];     /* where we answer: <event_id>.json (0644)               */
    char  rejected_dir[256];   /* forensic parking for refused files (0700)             */
    char  queue_dir[256];      /* accepted TTS queue  (counted for the depth cap)       */
    char  inflight_dir[256];   /* accepted TTS inflight (counted for the depth cap)     */
    int   queue_cap;           /* refuse when queue+inflight >= cap (0 = no cap)        */
    int   rate_max;            /* max accepted submissions per window per uid (0 = off) */
    int   rate_window_ms;
    int   max_file_bytes;
    int   max_text_bytes;
    int   enforce_uid;         /* 1 = owner uid must be in allowed_uids                 */
    int   verbose;
    unsigned int allowed_uids[TI_MAX_UIDS];
    int   allowed_count;
} ti_cfg;

typedef struct {
    long long seen, accepted, idempotent, rejected, tmp_cleaned, bad_name, nofollow;
    long long empty_skipped, stuck;
    char      last_reject[128];
    long long rate_win_start_ms;
    int       rate_win_count;
} ti_stats;

/*
 * Enqueue callback supplied by the worker: 0 = queued, 1 = already exists (idempotent),
 * -1 = refused (err filled).
 */
typedef int (*ti_enqueue_fn)(void *ctx, const char *event_id, const char *text,
                             int text_bytes, char *err, size_t errlen);

void ti_cfg_defaults(ti_cfg *c);

/* one scan of the inbox; returns the number of files handled (>=0) or -1 on a fatal error */
int  ti_poll(const ti_cfg *cfg, ti_stats *st, ti_enqueue_fn fn, void *ctx);

/* pending items in queue_dir + inflight_dir (0 when the dirs are absent) */
int  ti_count_pending(const ti_cfg *cfg);

/* write <result_dir>/<event_id>.json atomically (tmp + rename), 0644 */
int  ti_result_write(const ti_cfg *cfg, const char *event_id, int ok,
                     const char *stage, const char *reason);

/* strict, flat-JSON message parser (exported for the host test) */
typedef struct {
    int  has_v, has_event_id, has_text;
    long v;
    char event_id[TI_MAX_ID + 1];
    char text[TI_MAX_TEXT_BYTES * 2 + 2];   /* raw bytes after unescaping, NUL terminated */
    int  text_bytes;
} ti_msg;

int  ti_parse_msg(const char *buf, size_t len, ti_msg *m, char *err, size_t errlen);
int  ti_valid_event_id(const char *id);
int  ti_utf8_valid(const char *s, size_t n);

#endif /* TG_INBOX_H */

