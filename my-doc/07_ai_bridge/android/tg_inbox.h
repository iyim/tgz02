/*
 * tg_inbox.h -- T9-06R1: the UI -> worker submit channel (resource-bounded).
 *
 * Design change from T9-06 (review finding P1): the inbox is NO LONGER a world-writable
 * directory. It is owned by the UI uid and mode 0700, so only that app (and root) can create
 * anything in it; every other app is excluded by the filesystem, not by a rejection loop.
 *
 *   /data/local/tmp/t9_ui            0755 root:root   traversable, nothing writable here
 *   /data/local/tmp/t9_ui/inbox      0700 <ui-uid>    the UI writes <event_id>.json (tmp+rename)
 *   /data/local/tmp/t9_ui/result     0755 root:root   answers, 0644, pruned to a cap
 *   /data/local/tmp/t9_ui/rejected   0700 root:root   parked refusals, pruned to a cap
 *   /data/local/tmp/t9_ui/allowed_uids 0644 root      the uid allowlist (defence in depth)
 *
 * Defence in depth on top of the directory mode (all bounded, all host-tested):
 *   - every file is re-checked: regular file, no symlink, nlink==1, owner in the allowlist;
 *   - a file from a foreign uid is DROPPED (unlinked), never archived and never answered, so
 *     it cannot make the worker create root-owned files;
 *   - one poll handles at most max_scan_per_poll entries, so a burst cannot stall the loop;
 *   - rejected/ and result/ are pruned to fixed file counts;
 *   - rate limiting is per submitting uid (the header lied about this in T9-06).
 *
 * Pure POSIX: the same file runs in the worker on the device and in the host test.
 */
#ifndef TG_INBOX_H
#define TG_INBOX_H

#include <stddef.h>

#define TI_MAX_ID          64      /* event_id length cap (matches the TTS queue)          */
#define TI_MAX_TEXT_BYTES  1024    /* one request must fit a single spoken sentence         */
#define TI_MAX_FILE_BYTES  4096    /* hard cap on the request file                          */
#define TI_MAX_RESULT      256
#define TI_MAX_UIDS        8
/* T9-07R1: what the request asks for. The field is optional and defaults to "say", so every
 * request written before this stage keeps its exact old meaning (speak the text verbatim). */
#define TI_KIND_SAY        "say"
#define TI_KIND_ASK        "ask"
/*
 * T9-08B-R2: "stop" is the ONE controlled stop path. The request names the tts_id it wants
 * stopped and carries NO text:
 *
 *   {"v":1,"kind":"stop","event_id":"stop-...","tts_id":5246498}
 *
 * Why a request and not a direct provider call from the UI: the executor is the only party that
 * knows which item it is playing right now, so the stop decision ("this id, and only this id")
 * has to be taken there. The UI writing kind=stop is the only way a user stop enters the system.
 */
#define TI_KIND_STOP       "stop"
#define TI_KIND_MAX        8

/* tts_id is a positive 32-bit id; the parser refuses anything outside this range. */
#define TI_MAX_TTS_ID      2147483647L

typedef struct {
    char  inbox_dir[256];      /* where the UI drops <event_id>.json (0700 ui-uid)      */
    char  result_dir[256];     /* where we answer: <event_id>.json (0644, pruned)       */
    char  rejected_dir[256];   /* parked refusals (0700, pruned)                        */
    char  queue_dir[256];      /* accepted TTS queue  (counted for the depth cap)       */
    char  inflight_dir[256];   /* accepted TTS inflight (counted for the depth cap)     */
    int   queue_cap;           /* refuse when queue+inflight >= cap (0 = no cap)        */
    int   rate_max;            /* max accepted submissions per window PER UID (0 = off) */
    int   rate_window_ms;
    int   max_file_bytes;
    int   max_text_bytes;
    int   max_scan_per_poll;   /* entries handled in one poll (0 = unlimited)           */
    int   rejected_max_files;  /* files kept in rejected/ (0 = no pruning)              */
    int   result_max_files;    /* files kept in result/   (0 = no pruning)              */
    int   enforce_uid;         /* 1 = owner uid must be in allowed_uids                 */
    int   verbose;
    unsigned int allowed_uids[TI_MAX_UIDS];
    int   allowed_count;
} ti_cfg;

typedef struct {
    unsigned int uid;
    long long    win_start_ms;
    int          count;
} ti_rate_slot;

typedef struct {
    long long seen, accepted, idempotent, rejected, tmp_cleaned, bad_name, nofollow;
    long long empty_skipped, stuck;
    long long foreign_dropped;      /* files from a uid outside the allowlist (unlinked)   */
    long long pruned_rejected, pruned_result;
    long long stop_accepted;        /* T9-08B-R2: kind=stop requests the worker accepted   */
    char      last_reject[128];
    ti_rate_slot rate[TI_MAX_UIDS];
    int       rate_slots;
} ti_stats;

/*
 * Enqueue callback supplied by the worker: 0 = queued, 1 = already exists (idempotent),
 * -1 = refused (err filled).
 *
 * T9-08B-R2: `tts_id` is 0 for say/ask and the requested target for kind=stop. A stop request
 * must only be accepted (0) once the worker has really written the control file, so the caller
 * decides that before returning.
 */
typedef int (*ti_enqueue_fn)(void *ctx, const char *event_id, const char *text,
                             int text_bytes, const char *kind, long tts_id,
                             char *err, size_t errlen);

void ti_cfg_defaults(ti_cfg *c);

/* one scan of the inbox; returns the number of entries handled (>=0) or -1 on a fatal error */
int  ti_poll(const ti_cfg *cfg, ti_stats *st, ti_enqueue_fn fn, void *ctx);

/* pending items in queue_dir + inflight_dir (0 when the dirs are absent) */
int  ti_count_pending(const ti_cfg *cfg);

/* write <result_dir>/<event_id>.json atomically (tmp + rename), 0644 */
int  ti_result_write(const ti_cfg *cfg, const char *event_id, int ok,
                     const char *stage, const char *reason);

/* keep at most `max_files` entries in `dir` (oldest removed first); returns removed count */
int  ti_prune_dir(const char *dir, int max_files, ti_stats *st, long long *counter);

/* strict, flat-JSON message parser (exported for the host test) */
typedef struct {
    int  has_v, has_event_id, has_text, has_kind;
    long v;
    char kind[TI_KIND_MAX + 1];             /* "say" (default) | "ask" | "stop"            */
    char event_id[TI_MAX_ID + 1];
    char text[TI_MAX_TEXT_BYTES * 2 + 2];   /* raw bytes after unescaping, NUL terminated */
    int  text_bytes;
    int  has_tts_id;                        /* T9-08B-R2: kind=stop must carry one         */
    long tts_id;                            /* > 0, <= TI_MAX_TTS_ID                       */
} ti_msg;

int  ti_parse_msg(const char *buf, size_t len, ti_msg *m, char *err, size_t errlen);
int  ti_valid_event_id(const char *id);
int  ti_utf8_valid(const char *s, size_t n);

#endif /* TG_INBOX_H */
