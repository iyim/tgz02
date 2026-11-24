/*
 * ui_events.h -- T9-07: the worker's read-only, machine-readable outlet for the product UI.
 *
 * Why this exists: T9-06 gave the UI a way to *submit* text and to watch the factory TTS
 * status, but the worker never published what the user actually said (the factory ASR text)
 * or what the answer was. The only place that information existed was the human-readable
 * worker log, and parsing that as a product interface would break the first time a log line
 * is reworded. So this module writes two dedicated artifacts, both additive and both
 * read-only for the app:
 *
 *   <dir>/events/<seq:012>.json    one file per event, monotonic seq, atomic rename
 *                                  kinds: "turn"   (ASR text + reply, one per answer)
 *                                         "submit" (text accepted from the UI inbox)
 *   <dir>/status.public.json       overwritten atomically, a safe subset of the worker
 *                                  status: no key, no request body, no full reply text
 *
 * Contract for readers (the UI):
 *   - filenames sort lexicographically in publication order; a reader that remembers the
 *     last seq it processed only ever reads strictly newer files;
 *   - a file is either completely written or not visible at all (tmp + fsync + rename);
 *   - text fields are UTF-8 and are cut on a codepoint boundary, never mid-character;
 *   - publishing is best effort: a failure never blocks the worker, never advances the
 *     consumer offset and never changes what gets spoken.
 *
 * Mode/ownership: the events directory is 0750 root:<gid> and each event file is
 * 0640 root:<gid>, so only the UI uid (the group owner) and root can read what the user
 * said. If the chown cannot be done the files stay root-owned and the caller is told,
 * instead of silently publishing world-readable conversation text.
 *
 * Pure POSIX plus a thin Windows shim, no allocation: the same code is exercised by the
 * host unit test.
 */
#ifndef TG_UI_EVENTS_H
#define TG_UI_EVENTS_H

#include <stddef.h>

#define UE_PATH_MAX        320
#define UE_MAX_ID          64
#define UE_MAX_TEXT        1024        /* bytes kept per text field                     */
#define UE_DIRNAME_EVENTS  "events"
#define UE_STATUS_NAME     "status.public.json"
#define UE_MAX_FILES       512         /* events kept on disk                            */
#define UE_JSON_MAX        12288       /* one record: 2 x UE_MAX_TEXT x worst-case 6 + id */

typedef struct {
    int                enabled;
    char               dir[UE_PATH_MAX];       /* e.g. /data/local/tmp/t9_ui            */
    char               events_dir[UE_PATH_MAX];
    char               status_path[UE_PATH_MAX];
    int                gid;                    /* 0 = leave files root-owned (0644)     */
    int                max_files;
    int                gid_ok;                 /* 1 = files are group <gid>, 0640       */
    long long          seq;                    /* last published sequence number        */
    unsigned long long published;
    unsigned long long publish_err;
    unsigned long long pruned;
    char               last_error[160];
} ue_ctx;

typedef struct {
    const char *kind;          /* "turn" | "submit" | "error"                          */
    const char *session;       /* factory ASR session id (may be empty)                */
    const char *event_id;      /* worker event id (may be empty for submits)            */
    const char *user;          /* what the user said / typed (may be NULL)              */
    const char *reply;         /* the answer that was queued for TTS (may be NULL)      */
    const char *route;         /* "ai" | "skill" | "submit"                             */
    const char *skill;         /* skill name when route=skill (may be NULL)             */
    int         reply_bytes;
} ue_turn;

void ue_defaults(ue_ctx *u);

/* Create <dir>/events, take the group ownership if a gid is given, then continue the
 * sequence after the highest file already there and prune down to max_files.
 * 0 = ready, -1 = cannot publish (err explains why; the worker keeps running). */
int  ue_init(ue_ctx *u, const char *dir, int gid, int max_files, int max_text_bytes);

/* Publish one event file. 0 = published, -1 = failed (counted, logged by the caller). */
int  ue_publish(ue_ctx *u, const ue_turn *t);

/* Replace <dir>/status.public.json atomically. 0 = written, -1 = failed. */
int  ue_status_write(ue_ctx *u, const char *json, size_t len);

/* Bytes a text field will occupy after escaping (for the caller's buffer sizing). */
size_t ue_escaped_len(const char *s);

#endif /* TG_UI_EVENTS_H */
