/*
 * ai_worker.c -- 独立 AI Worker 进程（见 ai_worker.h）
 *
 * 主循环（单线程，固定内存）：
 *   读一条完整记录 → 校验 → event_id 去重 → seq 缺口判定 → Provider 调用（失败则退避重试，
 *   期间不读下一条）→ 成功才提交偏移并落盘消费进度 → 刷新状态文件
 *
 * 三条硬约束（T5-06B P1 修复后）：
 *   1) 单实例靠 **内核 advisory lock**（flock/LockFileEx），fd 持有到进程退出；
 *      锁文件里的 PID 只做诊断，不参与正确性判断。
 *   2) Provider 失败 **不推进偏移、不写 recent_ids、不计成功数**：失败事件被保留并重试，
 *      后续事件不许越过它。超过重试上限只进入 error 状态继续重试，绝不静默跳过。
 *   3) 消费进度落盘失败 **不许继续读下一条事件**：状态转 error，反复重试，
 *      超过 --state-fail-exit-ms 仍未成功就带着最后一次尝试的结果退出（退出码 5）。
 */
#include "ai_worker.h"
#include "consumer_state.h"
#include "seq_gap.h"
#include "worker_util.h"

#include <errno.h>
#include <signal.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>

#ifdef _WIN32
#  include <fcntl.h>
#  include <io.h>
#  include <windows.h>
#endif

typedef struct {
    t6b_config   cfg;
    char         events_path[T6B_PATH_MAX];
    char         state_path[T6B_PATH_MAX];
    char         status_path[T6B_PATH_MAX];
    char         lock_path[T6B_PATH_MAX];

    t6b_reader   rd;
    t6b_state    state;
    t6b_status   st;
    t6b_provider prov;
    t6b_mock     mock;
    t6b_ds       ds;
    int          prov_deepseek;         /* 1 = 当前 provider 是 deepseek（真实网络） */
    t6b_gaptrack gaps;
    wu_lockfile  lock;

    /* 待 Provider 成功的事件（失败期间一直保留，不读下一条） */
    t6b_event    pend;
    int          have_pend;
    int          pend_attempts;
    int          pend_stuck;
    long long    pend_next_ms;
    long long    pend_backoff_ms;
    char         pend_error[160];

    long long    last_status_ms;
    long long    last_activity_ms;
    int          pending_advances;      /* 已提交但尚未写入消费状态文件的推进次数 */
} t6b_worker;

static volatile sig_atomic_t g_stop = 0;

static void on_signal(int sig)
{
    (void)sig;
    g_stop = 1;
}

static void logf_(const t6b_config *cfg, const char *fmt, ...)
{
    va_list ap;
    char stamp[24];

    if (cfg != NULL && !cfg->verbose) return;
    wu_time_str(stamp, sizeof(stamp));
    fprintf(stdout, "[aiw] %s ", stamp);
    va_start(ap, fmt);
    vfprintf(stdout, fmt, ap);
    va_end(ap);
    fputc('\n', stdout);
    fflush(stdout);
}

/* 无论如何都要打的一行（启动/退出/错误） */
static void always(const char *fmt, ...)
{
    va_list ap;
    char stamp[24];

    wu_time_str(stamp, sizeof(stamp));
    fprintf(stdout, "[aiw] %s ", stamp);
    va_start(ap, fmt);
    vfprintf(stdout, fmt, ap);
    va_end(ap);
    fputc('\n', stdout);
    fflush(stdout);
}

static void join_path(char *out, size_t cap, const char *dir, const char *name)
{
    snprintf(out, cap, "%s/%s", dir, name);
}

/* 前置声明：进度落盘失败的处理路径要先刷新状态文件 */
static void publish_status(t6b_worker *w, const char *state);

/* ---------------- 单实例锁 ---------------- */

/* 0 = 拿到锁；1 = 已有实例；-1 = 其它错误 */
static int lock_acquire(t6b_worker *w, char *err, size_t errlen)
{
    int rc = wu_lock_acquire(&w->lock, w->lock_path, err, errlen);

    if (rc == 0) {
        if (w->lock.owner_pid > 1 && w->lock.owner_pid != wu_self_pid()) {
            /* 上一个实例被 kill -9：内核已释放 flock，这里只是把发现过程写进日志 */
            always("lock acquired; previous owner pid=%lld no longer holding it",
                   w->lock.owner_pid);
        }
        return 0;
    }
    if (rc == 1) {
        if (err) {
            if (w->lock.owner_pid > 1)
                snprintf(err, errlen, "another ai_worker is running: pid=%lld (flock held)",
                         w->lock.owner_pid);
            else
                snprintf(err, errlen, "another ai_worker is running (flock held)");
        }
        return 1;
    }
    return -1;
}

static void lock_release(t6b_worker *w)
{
    wu_lock_release(&w->lock);
}

/* ---------------- 消费进度 ---------------- */

/*
 * 返回 0 = 已原子落盘；-1 = 失败（两次都失败）。
 * 失败时**绝不允许调用方继续推进消费**：调用方要么停止读取并重试，要么带错误退出。
 */
static int state_save(t6b_worker *w, const char *why)
{
    char err[192];
    char dir[T6B_PATH_MAX];

    err[0] = '\0';
    w->state.offset = w->rd.off;
    w->state.dev = w->rd.saved_dev;
    w->state.ino = w->rd.saved_ino;
    /* 偏移和它的前缀指纹必须成对落盘：只存 offset 的话，inode 被复用后无法判断这是不是同一个文件 */
    w->state.prefix_hash = t6b_reader_prefix_hash(&w->rd);
    w->state.have_prefix_hash = t6b_reader_hash_valid(&w->rd);
    w->state.updated_at_ms = wu_wall_ms();

    if (t6b_state_save(&w->state, w->state_path, err, sizeof(err)) == 0) {
        w->st.state_saves++;
        w->pending_advances = 0;
        logf_(&w->cfg, "state saved (%s) offset=%lld processed=%llu", why,
              w->state.offset, w->state.processed_total);
        return 0;
    }

    /* 目录可能被删：重建一次再试（保留原有的二次尝试） */
    wu_dir_name(w->state_path, dir, sizeof(dir));
    if (wu_mkdir_p(dir) == 0) {
        char err2[192];
        err2[0] = '\0';
        if (t6b_state_save(&w->state, w->state_path, err2, sizeof(err2)) == 0) {
            w->st.state_saves++;
            w->pending_advances = 0;
            logf_(&w->cfg, "state saved (%s) after dir recreate, offset=%lld", why,
                  w->state.offset);
            return 0;
        }
        snprintf(err, sizeof(err), "%s", err2);
    }

    w->st.state_errors++;
    w->st.state_persist_failed = 1;
    snprintf(w->st.state, sizeof(w->st.state), "error");
    t6b_status_note_error(&w->st, "state save failed (%s): %s", why, err);
    always("state save failed (%s): %s -> stop consuming, retrying", why, err);
    return -1;
}

/* 落盘失败后的重试：期间不读任何事件；超过 state_fail_exit_ms 就放弃并返回 -1 */
static int state_persist_recover(t6b_worker *w)
{
    long long deadline = wu_now_ms() + w->cfg.state_fail_exit_ms;
    long long backoff = w->cfg.state_retry_ms;

    for (;;) {
        long long left;

        publish_status(w, "error");
        if (g_stop) return -1;
        if (wu_now_ms() >= deadline) break;
        (void)wu_sleep_ms(backoff);
        if (backoff < 1000) backoff *= 2;
        if (backoff > 1000) backoff = 1000;

        /* 重试保存；成功则清掉错误标记，恢复正常运行 */
        if (state_save(w, "retry") == 0) {
            w->st.state_persist_failed = 0;
            snprintf(w->st.state, sizeof(w->st.state), "running");
            always("state save recovered; resuming consumption at offset=%lld", w->rd.off);
            return 0;
        }
        left = deadline - wu_now_ms();
        (void)left;
    }
    return -1;
}

/* ---------------- 状态文件 ---------------- */

static void publish_status(t6b_worker *w, const char *state)
{
    char err[192];
    long long size = -1;

    wu_time_str(w->st.updated_at, sizeof(w->st.updated_at));
    w->st.updated_at_ms = wu_wall_ms();
    if (state != NULL) snprintf(w->st.state, sizeof(w->st.state), "%s", state);

    w->st.offset = w->rd.off;
    w->st.dev = w->rd.saved_dev;
    w->st.ino = w->rd.saved_ino;
    w->st.prefix_hash = t6b_reader_prefix_hash(&w->rd);
    w->st.prefix_hash_valid = t6b_reader_hash_valid(&w->rd);
    w->st.invalid_lines = w->rd.invalid_skips;
    w->st.oversize_lines = w->rd.oversize_skips;
    w->st.io_errors = w->rd.io_errors;
    w->st.truncations = w->rd.truncations;
    w->st.replacements = w->rd.replacements;
    w->st.identity_resets = w->rd.identity_resets;
    w->st.legacy_rescans = w->rd.legacy_rescans;
    w->st.mock_calls = w->mock.calls;
    w->st.gaps = w->gaps.gaps;
    w->st.gap_missing_total = w->gaps.missing_total;
    w->st.seq_resets = w->gaps.resets;
    w->st.seq_unknown_start = w->gaps.unknown_start;
    w->st.last_gap_from = w->gaps.last_gap_from;
    w->st.last_gap_to = w->gaps.last_gap_to;
    w->st.provider_stuck = w->pend_stuck;
    w->st.stuck_attempts = (unsigned long long)w->pend_attempts;
    if (w->have_pend)
        snprintf(w->st.pending_event_id, sizeof(w->st.pending_event_id), "%s", w->pend.event_id);
    else
        w->st.pending_event_id[0] = '\0';
    w->st.file_size = (t6b_reader_stat(&w->rd, &size) == 0) ? size : -1;

    /* Provider 观测：真实 Provider 才有 http/latency/resp_bytes；
     * 这些字段只放数字与短枚举，绝不含 key / 用户文本 / 上游正文。 */
    w->st.provider_mock = w->prov_deepseek ? 0 : 1;
    if (w->prov_deepseek) {
        w->st.last_http_status = w->ds.last_http_status;
        w->st.last_curl_code = w->ds.last_curl_code;
        w->st.last_provider_latency_ms = w->ds.last_latency_ms;
        w->st.last_resp_bytes = w->ds.last_resp_bytes;
        snprintf(w->st.last_error_class, sizeof(w->st.last_error_class), "%s",
                 w->ds.last_class);
    } else {
        w->st.last_http_status = 0;
        w->st.last_curl_code = 0;
        w->st.last_provider_latency_ms = 0;
        w->st.last_resp_bytes = 0;
        w->st.last_error_class[0] = '\0';
    }

    err[0] = '\0';
    if (t6b_status_write(&w->st, w->status_path, err, sizeof(err)) != 0) {
        w->st.state_errors++;
        fprintf(stdout, "[aiw] status write failed: %s\n", err);
        fflush(stdout);
    }
    w->last_status_ms = wu_now_ms();
}

/* ---------------- seq 缺口判定 ---------------- */

static void gap_report(t6b_worker *w, const t6b_event *ev)
{
    unsigned long from = 0, to = 0, missing = 0;
    t6b_gap_event ge = t6b_gap_observe(&w->gaps, ev->pid, ev->seq, &from, &to, &missing);

    switch (ge) {
    case T6B_GAP_LOSS:
        w->st.last_gap_from = from;
        w->st.last_gap_to = to;
        /* 只记录，不补造、不推测内容：缺口就是缺口 */
        always("seq gap pid=%lld missing=%lu range=[%lu,%lu] (recorded, NOT fabricated)",
               ev->pid, missing, from, to);
        break;
    case T6B_GAP_RESET:
        logf_(&w->cfg, "seq reset pid=%lld -> %lu (bridge restart, not a loss)", ev->pid, ev->seq);
        break;
    case T6B_GAP_SEGMENT_START_HIGH:
        logf_(&w->cfg, "new pid segment pid=%lld starts at seq=%lu (no baseline, not counted as gap)",
              ev->pid, ev->seq);
        break;
    default:
        break;
    }
}

/* ---------------- 事件提交（Provider 成功之后） ---------------- */

/* 返回 0 = 已提交并落盘；
 *     -1 = 状态落盘失败（调用方必须停止消费，走 state_persist_recover）；
 *     -2 = 前缀指纹推进失败（读不回被跳过的字节）——致命，调用方必须退出（码 6）。 */
static int commit_event(t6b_worker *w)
{
    /* 先提交偏移与指纹：失败时计数不许前进（否则状态里会出现"处理了但没推进"的假象） */
    if (t6b_reader_commit(&w->rd) != 0) {
        w->st.io_errors++;
        snprintf(w->st.state, sizeof(w->st.state), "error");
        t6b_status_note_error(&w->st, "prefix hash update failed: %s", w->rd.last_error);
        always("prefix hash update failed (%s): offset NOT advanced; stopping consumption",
               w->rd.last_error);
        return -2;
    }
    w->pending_advances++;

    w->st.events_processed++;
    w->state.processed_total++;
    w->state.seq_last = w->pend.seq;
    snprintf(w->state.last_event_id, sizeof(w->state.last_event_id), "%s", w->pend.event_id);
    t6b_state_remember(&w->state, w->pend.event_id);

    w->st.last_seq = w->pend.seq;
    snprintf(w->st.last_event_id, sizeof(w->st.last_event_id), "%s", w->pend.event_id);
    wu_time_str(w->st.last_event_at, sizeof(w->st.last_event_at));
    w->last_activity_ms = wu_now_ms();

    if (w->pending_advances >= (w->cfg.state_sync_every > 0 ? w->cfg.state_sync_every : 1)) {
        return state_save(w, "sync");
    }
    return 0;
}

/* ---------------- 可选：把模型回答落盘（--reply-log） ---------------- */

/*
 * 默认关闭。开启后每次"已成功提交偏移"的回答追加一行 JSON 到该文件：
 *   {"event_id","seq","provider","model","http","latency_ms","reply_bytes","mock","text"}
 * 顺序刻意是"先提交偏移（durable），再写这一行"：
 *   - 崩溃可能丢掉最后一行回答，但绝不会把同一条事件处理两次；
 *   - 反过来（先写回答再提交）会产生重复回答。
 * 这一行只落在设备本地 0600 文件里；日志/状态文件一律不含回答正文。
 */
static void reply_log_append(t6b_worker *w, const t6b_reply *rep)
{
    static char line[2 * T6B_REPLY_TEXT_MAX + 512];
    static char esc[2 * T6B_REPLY_TEXT_MAX];
    int n;
    int fd;
    int text_ok;

    if (w->cfg.reply_log[0] == '\0' || rep == NULL) return;

    /* 回答必须是合法 UTF-8 才写正文（真实 Provider 已校验；Mock 的 argv 可能是任意字节）。
     * 不合法就只留长度与 text_valid=0：文件永远是可解析的 JSON。 */
    text_ok = (rep->text_bytes > 0 &&
               wu_utf8_validate(rep->text, (size_t)rep->text_bytes) == 0) ? 1 : 0;
    if (text_ok) wu_json_escape(esc, sizeof(esc), rep->text);
    else esc[0] = '\0';

    n = snprintf(line, sizeof(line),
                 "{\"event_id\":\"%s\",\"seq\":%lu,\"provider\":\"%s\",\"model\":\"%s\","
                 "\"http\":%d,\"latency_ms\":%lld,\"reply_bytes\":%d,\"mock\":%d,"
                 "\"text_valid\":%d,\"text\":\"%s\"}\n",
                 w->pend.event_id, w->pend.seq,
                 (w->prov.ops != NULL) ? w->prov.ops->name : "none",
                 w->prov_deepseek ? w->ds.cfg.model : "",
                 w->prov_deepseek ? w->ds.last_http_status : 0,
                 rep->latency_ms, rep->text_bytes, rep->mock, text_ok, esc);
    if (n <= 0 || (size_t)n >= sizeof(line)) {
        always("reply log line too long; reply for event %s not written", w->pend.event_id);
        return;
    }
    fd = wu_open_append(w->cfg.reply_log);
    if (fd < 0) {
        always("reply log open failed (%s); reply for event %s not written",
               w->cfg.reply_log, w->pend.event_id);
        return;
    }
    if (wu_write_all(fd, line, (size_t)n) != 0)
        always("reply log write failed (%s); reply for event %s may be incomplete",
               w->cfg.reply_log, w->pend.event_id);
    else
        (void)wu_fsync(fd);
    (void)wu_close(fd);
}

/* ---------------- T5-06D-P1：队列写入的故障注入开关 ----------------
 *
 * T6B_FAULT_TTSQ = create | write | fsync | rename | dirfsync
 *   create   打开 tmp 失败
 *   write    写 tmp 失败
 *   fsync    文件 fsync 失败
 *   rename   rename 到 queue 失败
 *   dirfsync 目录 fsync 失败（此时 queue/<id>.json 可能已经存在！）
 *
 * 和 consumer_state 的 T6B_FAULT_STATE 同一套路：只在这个进程里生效，
 * 不设置就完全走真实路径；测试靠它证明失败分支不会丢回答、也不会提交偏移。
 */
#define T6B_TTSQ_NONE     0
#define T6B_TTSQ_CREATE   1
#define T6B_TTSQ_WRITE    2
#define T6B_TTSQ_FSYNC    3
#define T6B_TTSQ_RENAME   4
#define T6B_TTSQ_DIRFSYNC 5

static int t6b_fault_ttsq(void)
{
    static int cached = -1;
    const char *v;

    if (cached >= 0) return cached;
    v = getenv("T6B_FAULT_TTSQ");
    cached = T6B_TTSQ_NONE;
    if (v == NULL || v[0] == '\0') return cached;
    if (strcmp(v, "create") == 0)         cached = T6B_TTSQ_CREATE;
    else if (strcmp(v, "write") == 0)     cached = T6B_TTSQ_WRITE;
    else if (strcmp(v, "fsync") == 0)     cached = T6B_TTSQ_FSYNC;
    else if (strcmp(v, "rename") == 0)    cached = T6B_TTSQ_RENAME;
    else if (strcmp(v, "dirfsync") == 0)  cached = T6B_TTSQ_DIRFSYNC;
    return cached;
}

/*
 * 检查幂等记录是否存在、是否为普通文件，以及所在目录是否已同步。
 *
 * 返回：
 *   1  普通文件存在，目录 fsync 成功；
 *   0  明确不存在（ENOENT / ENOTDIR）；
 *  -1  检查异常、非普通文件、符号链接或目录 fsync 失败。
 *
 * 注意：必须检查目录项本身，不能跟随符号链接。
 */
static int tts_existing_item_durable(const char *path, const char *dir,
                                     const char *stage, char *err, size_t errlen)
{
    struct stat st;

#ifdef _WIN32
    {
        DWORD attrs = GetFileAttributesA(path);

        if (attrs != INVALID_FILE_ATTRIBUTES) {
            if (attrs & FILE_ATTRIBUTE_REPARSE_POINT) {
                if (err && errlen)
                    snprintf(err, errlen,
                             "existing %s item is a reparse point", stage);
                return -1;
            }
        }
    }

    if (stat(path, &st) != 0) {
        int saved_errno = errno;

        if (saved_errno == ENOENT || saved_errno == ENOTDIR)
            return 0;

        if (err && errlen)
            snprintf(err, errlen,
                     "cannot inspect existing %s item (errno=%d)",
                     stage, saved_errno);
        return -1;
    }
#else
    if (lstat(path, &st) != 0) {
        int saved_errno = errno;

        if (saved_errno == ENOENT || saved_errno == ENOTDIR)
            return 0;

        if (err && errlen)
            snprintf(err, errlen,
                     "cannot inspect existing %s item (errno=%d)",
                     stage, saved_errno);
        return -1;
    }
#endif

    if (!S_ISREG(st.st_mode)) {
        if (err && errlen)
            snprintf(err, errlen,
                     "existing %s item is not a regular file", stage);
        return -1;
    }

    if (t6b_fault_ttsq() == T6B_TTSQ_DIRFSYNC) {
        if (err && errlen)
            snprintf(err, errlen,
                     "injected dirfsync failure for %s", stage);
        return -1;
    }

    if (wu_fsync_dir(dir) != 0) {
        if (err && errlen)
            snprintf(err, errlen,
                     "directory fsync failed for %s", stage);
        return -1;
    }

    return 1;
}

/*
 * 把模型回答写入原厂 TTS 持久化队列。
 *
 * 返回：
 *   1 = 新条目已持久化入队；
 *   0 = 同 event_id 的条目已存在，且所在目录重新 fsync 成功；
 *  -1 = 失败，调用方不得提交消费偏移。
 */
static int tts_enqueue(t6b_worker *w, const t6b_reply *rep, char *err, size_t errlen)
{
    static char esc[2 * T6B_REPLY_TEXT_MAX + 64];
    static char body[2 * T6B_REPLY_TEXT_MAX + 256];

    char dir_queue[T6B_PATH_MAX], dir_inflight[T6B_PATH_MAX];
    char dir_done[T6B_PATH_MAX], dir_failed[T6B_PATH_MAX], dir_tmp[T6B_PATH_MAX];
    char path_item[T6B_PATH_MAX], path_tmp[T6B_PATH_MAX], path_done[T6B_PATH_MAX];
    char path_inflight[T6B_PATH_MAX], path_failed[T6B_PATH_MAX];

    const char *eid;
    const char *found_stage = NULL;
    int n, fd, found = 0, rc;
    long long t0 = wu_wall_ms();

    if (err && errlen) err[0] = '\0';
    if (w->cfg.tts_queue[0] == '\0' || rep == NULL) return 0;

    eid = w->pend.event_id;
    if (eid[0] == '\0' || strlen(eid) > T6B_TTS_ID_MAX) {
        if (err && errlen) snprintf(err, errlen, "event_id invalid");
        return -1;
    }

    for (n = 0; eid[n] != '\0'; n++) {
        char c = eid[n];
        int ok = (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') ||
                 (c >= '0' && c <= '9') || c == '-' || c == '_' || c == '.';
        if (!ok) {
            if (err && errlen) snprintf(err, errlen, "event_id has unsafe chars");
            return -1;
        }
    }

    if (rep->text_bytes <= 0 || rep->text_bytes > T6B_REPLY_TEXT_MAX) {
        if (err && errlen)
            snprintf(err, errlen, "reply size out of range (%d)", rep->text_bytes);
        return -1;
    }

    if (wu_utf8_validate(rep->text, (size_t)rep->text_bytes) != 0) {
        if (err && errlen) snprintf(err, errlen, "reply is not valid UTF-8");
        return -1;
    }

    snprintf(dir_queue, sizeof(dir_queue), "%s/queue", w->cfg.tts_queue);
    snprintf(dir_inflight, sizeof(dir_inflight), "%s/inflight", w->cfg.tts_queue);
    snprintf(dir_done, sizeof(dir_done), "%s/done", w->cfg.tts_queue);
    snprintf(dir_failed, sizeof(dir_failed), "%s/failed", w->cfg.tts_queue);
    snprintf(dir_tmp, sizeof(dir_tmp), "%s/tmp", w->cfg.tts_queue);

    if (wu_mkdir_p(w->cfg.tts_queue) != 0 ||
        wu_mkdir_p(dir_queue) != 0 ||
        wu_mkdir_p(dir_inflight) != 0 ||
        wu_mkdir_p(dir_done) != 0 ||
        wu_mkdir_p(dir_failed) != 0 ||
        wu_mkdir_p(dir_tmp) != 0) {
        if (err && errlen)
            snprintf(err, errlen, "cannot create TTS queue directories");
        return -1;
    }

    snprintf(path_item, sizeof(path_item), "%s/%s.json", dir_queue, eid);
    snprintf(path_tmp, sizeof(path_tmp), "%s/%s.json.tmp", dir_tmp, eid);
    snprintf(path_done, sizeof(path_done), "%s/%s.ok", dir_done, eid);
    snprintf(path_inflight, sizeof(path_inflight), "%s/%s.json", dir_inflight, eid);
    snprintf(path_failed, sizeof(path_failed), "%s/%s.json", dir_failed, eid);

    /*
     * 幂等检查：四个阶段逐一检查。
     * 任何一个阶段存在，都必须同步它自己的目录。
     * 多阶段同时存在属于状态异常，拒绝静默成功。
     */
    rc = tts_existing_item_durable(path_item, dir_queue, "queue", err, errlen);
    if (rc < 0) return -1;
    if (rc > 0) { found++; found_stage = "queue"; }

    rc = tts_existing_item_durable(path_inflight, dir_inflight, "inflight", err, errlen);
    if (rc < 0) return -1;
    if (rc > 0) { found++; found_stage = "inflight"; }

    rc = tts_existing_item_durable(path_done, dir_done, "done", err, errlen);
    if (rc < 0) return -1;
    if (rc > 0) { found++; found_stage = "done"; }

    rc = tts_existing_item_durable(path_failed, dir_failed, "failed", err, errlen);
    if (rc < 0) return -1;
    if (rc > 0) { found++; found_stage = "failed"; }

    if (found > 1) {
        if (err && errlen)
            snprintf(err, errlen, "event_id exists in multiple TTS queue stages");
        return -1;
    }

    if (found == 1) {
        logf_(&w->cfg, "TTS idempotent hit event=%s stage=%s dirfsync=ok",
              eid, found_stage);
        return 0;
    }

    wu_json_escape(esc, sizeof(esc), rep->text);
    n = snprintf(body, sizeof(body),
                 "{\"v\":1,\"event_id\":\"%s\",\"created_ms\":%lld,\"attempts\":0,"
                 "\"reply_bytes\":%d,\"text\":\"%s\"}\n",
                 eid, t0, rep->text_bytes, esc);

    if (n <= 0 || (size_t)n >= sizeof(body)) {
        if (err && errlen) snprintf(err, errlen, "queue item too long");
        return -1;
    }

    (void)wu_unlink(path_tmp);

    fd = (t6b_fault_ttsq() == T6B_TTSQ_CREATE) ? -1 : wu_open_excl(path_tmp);
    if (fd < 0) {
        if (err && errlen)
            snprintf(err, errlen, "open tmp failed (errno=%d)", errno);
        return -1;
    }

    if (t6b_fault_ttsq() == T6B_TTSQ_WRITE ||
        wu_write_all(fd, body, (size_t)n) != 0) {
        int saved_errno = errno;
        (void)wu_close(fd);
        (void)wu_unlink(path_tmp);
        if (err && errlen)
            snprintf(err, errlen, "write tmp failed (errno=%d)", saved_errno);
        return -1;
    }

    if (t6b_fault_ttsq() == T6B_TTSQ_FSYNC || wu_fsync(fd) != 0) {
        int saved_errno = errno;
        (void)wu_close(fd);
        (void)wu_unlink(path_tmp);
        if (err && errlen)
            snprintf(err, errlen, "fsync tmp failed (errno=%d)", saved_errno);
        return -1;
    }

    if (wu_close(fd) != 0) {
        int saved_errno = errno;
        (void)wu_unlink(path_tmp);
        if (err && errlen)
            snprintf(err, errlen, "close tmp failed (errno=%d)", saved_errno);
        return -1;
    }

    if (t6b_fault_ttsq() == T6B_TTSQ_RENAME ||
        wu_rename_replace(path_tmp, path_item) != 0) {
        int saved_errno = errno;
        (void)wu_unlink(path_tmp);
        if (err && errlen)
            snprintf(err, errlen, "rename into queue failed (errno=%d)", saved_errno);
        return -1;
    }

    /*
     * rename 已成功但目录 fsync 失败时，文件可能可见。
     * 返回失败，保留文件；下一次重试会走上面的幂等分支并重新 fsync。
     */
    if (t6b_fault_ttsq() == T6B_TTSQ_DIRFSYNC ||
        wu_fsync_dir(dir_queue) != 0) {
        if (err && errlen)
            snprintf(err, errlen, "queue directory fsync failed after rename");
        return -1;
    }

    return 1;
}

/* ---------------- Provider 调用与重试（P1-2） ---------------- */

/*
 * 一次尝试。返回值：
 *    0 = 成功（回答已入队（若启用）+ 已提交偏移并落盘）
 *   -1 = 本次失败，稍后重试（偏移不动、recent_ids 不动、成功计数不动）
 *        包括 P1-2 的"TTS 入队失败"：回答还没落到持久位置，绝不提交偏移
 *   -2 = 本次失败且已超过重试上限 -> 进入 error 状态，但仍继续重试，绝不跳过该事件
 *   -3 = Provider 成功但消费进度落盘失败（调用方必须停止消费）
 *   -4 = Provider 成功但前缀指纹推进失败（致命，调用方必须退出，码 6）
 */
static int provider_attempt(t6b_worker *w)
{
    t6b_reply rep;
    long long t0 = wu_now_ms();
    int rc;

    w->pend_attempts++;
    rc = t6b_provider_complete(&w->prov, w->pend.text, &rep);

    if (rc != 0) {
        w->st.provider_err++;
        snprintf(w->pend_error, sizeof(w->pend_error), "%s", rep.message);
        t6b_status_note_error(&w->st, "provider unavailable: %s", rep.message);
        return -1;
    }

    if (rep.status == T6B_P_OK) {
        const char *pname = (w->prov.ops != NULL) ? w->prov.ops->name : "none";

        w->st.provider_ok++;
        logf_(&w->cfg,
              "event id=%s seq=%lu pid=%lld text_bytes=%d -> provider=%s status=ok "
              "latency=%lldms reply_bytes=%d (attempt %d)",
              w->pend.event_id, w->pend.seq, w->pend.pid, w->pend.text_bytes,
              pname, rep.latency_ms, rep.text_bytes, w->pend_attempts);
        if (w->prov_deepseek) {
            /* 真实调用的可核对事实：模型、HTTP 状态、curl 结果、耗时、响应字节数。
             * 不含 key、不含请求体、不含模型原文。 */
            always("deepseek ok: model=%s http=%d curl=%d latency=%lldms resp_bytes=%llu "
                   "reply_bytes=%d event=%s",
                   w->ds.cfg.model, w->ds.last_http_status, w->ds.last_curl_code,
                   w->ds.last_latency_ms, w->ds.last_resp_bytes, rep.text_bytes,
                   w->pend.event_id);
        }
        if (w->pend_stuck) {
            always("pending event cleared: id=%s after %d attempts; resuming normal pace",
                   w->pend.event_id, w->pend_attempts);
        }
        w->pend_stuck = 0;
        w->pend_error[0] = '\0';
        {
            /* T5-06D：先把回答安全入队（按 event_id 幂等），再提交偏移。
             * 顺序是"先入队、后提交"，所以崩溃不会让已经回答过的内容无声无息消失。
             * P1-2：入队失败 = 这条回答还没有落到任何持久位置 → **不许提交偏移**，
             *       当前事件留在原地，走 Provider 重试/退避，回答会被重新请求。 */
            char terr[96];
            int q = tts_enqueue(w, &rep, terr, sizeof(terr));
            if (q > 0) {
                /* P1-2：tts_enqueue() 只负责持久化，成功计数由调用方记（1 = 新条目已落盘） */
                w->st.tts_queued++;
                always("tts queued: event=%s reply_bytes=%d queue=%s",
                       w->pend.event_id, rep.text_bytes, w->cfg.tts_queue);
            } else if (q == 0) {
                if (w->cfg.tts_queue[0] != '\0') {
                    w->st.tts_skipped++;
                    /* P1-2：幂等命中必须能在证据里看到（queue/inflight/done/failed 任一路径） */
                    always("tts skip (already queued/played): event=%s reply_bytes=%d queue=%s",
                           w->pend.event_id, rep.text_bytes, w->cfg.tts_queue);
                }
            } else {
                w->st.tts_enqueue_failed++;
                t6b_status_note_error(&w->st, "tts enqueue failed: %s", terr);
                always("tts enqueue FAILED: event=%s reply_bytes=%d (%s); offset NOT advanced, "
                       "event kept and retried (no answer is dropped)",
                       w->pend.event_id, rep.text_bytes, terr);
                if (w->cfg.provider_retry_max > 0 && w->pend_attempts >= w->cfg.provider_retry_max) {
                    if (!w->pend_stuck) {
                        w->pend_stuck = 1;
                        snprintf(w->st.state, sizeof(w->st.state), "error");
                        always("event id=%s tts enqueue still failing after %d attempts (%s): "
                               "keeping it, no event will be skipped",
                               w->pend.event_id, w->pend_attempts, terr);
                    }
                    return -2;
                }
                return -1;
            }
        }
        {
            int cr = commit_event(w);
            if (cr == -2) return -4;      /* 指纹推进失败：致命 */
            if (cr != 0) return -3;       /* 状态落盘失败 */
        }
        reply_log_append(w, &rep);        /* 偏移已持久化，再记回答（宁可少一行，不重复） */
        return 0;
    }

    if (rep.status == T6B_P_TIMEOUT) {
        w->st.provider_timeout++;
        snprintf(w->pend_error, sizeof(w->pend_error), "%s", rep.message);
        t6b_status_note_error(&w->st, "provider timeout: %s", rep.message);
    } else {
        w->st.provider_err++;
        snprintf(w->pend_error, sizeof(w->pend_error), "%s", rep.message);
        t6b_status_note_error(&w->st, "provider error: %s", rep.message);
    }

    logf_(&w->cfg,
          "event id=%s seq=%lu attempt %d failed: %s %s (offset NOT advanced, retrying)",
          w->pend.event_id, w->pend.seq, w->pend_attempts,
          t6b_pstatus_name(rep.status), rep.message);
    if (w->prov_deepseek) {
        always("deepseek failed: model=%s http=%d curl=%d class=%s latency=%lldms "
               "event=%s (offset NOT advanced)",
               w->ds.cfg.model, w->ds.last_http_status, w->ds.last_curl_code,
               w->ds.last_class, w->ds.last_latency_ms, w->pend.event_id);
    }

    if (w->cfg.provider_retry_max > 0 && w->pend_attempts >= w->cfg.provider_retry_max) {
        if (!w->pend_stuck) {
            w->pend_stuck = 1;
            snprintf(w->st.state, sizeof(w->st.state), "error");
            always("event id=%s stuck after %d attempts (%s): keeping it, waiting for a "
                   "dead-letter policy; no event will be skipped",
                   w->pend.event_id, w->pend_attempts, w->pend_error);
        }
        return -2;
    }
    (void)t0;
    return -1;
}

static void schedule_retry(t6b_worker *w, int stuck)
{
    long long cap = (long long)(w->cfg.provider_backoff_max_ms > 0 ?
                                w->cfg.provider_backoff_max_ms : 2000);

    if (w->pend_backoff_ms <= 0)
        w->pend_backoff_ms = (w->cfg.provider_backoff_ms > 0 ? w->cfg.provider_backoff_ms : 200);
    else
        w->pend_backoff_ms *= 2;
    if (w->pend_backoff_ms > cap) w->pend_backoff_ms = cap;
    if (stuck && w->pend_backoff_ms < cap) w->pend_backoff_ms = cap;

    w->st.provider_retries++;
    w->pend_next_ms = wu_now_ms() + w->pend_backoff_ms;
}

/* ---------------- 主循环 ---------------- */

/* 提交一条"不需要 Provider 的记录"（重复/非法/超长），同时推进前缀指纹。
 * 0 = 可以继续；-1 = 致命（指纹推进失败），调用方必须带退出码 6 退出。 */
static int commit_skipped(t6b_worker *w, const char **exit_reason)
{
    if (t6b_reader_commit(&w->rd) != 0) {
        w->st.io_errors++;
        snprintf(w->st.state, sizeof(w->st.state), "error");
        t6b_status_note_error(&w->st, "prefix hash update failed: %s", w->rd.last_error);
        always("prefix hash update failed (%s): offset NOT advanced; stopping consumption",
               w->rd.last_error);
        *exit_reason = "identity_hash_failed";
        return -1;
    }
    w->pending_advances++;
    return 0;
}

static int worker_loop(t6b_worker *w, const char **exit_reason)
{
    long long started = wu_now_ms();
    long long backoff_ms = 0;
    char err[192];

    *exit_reason = "unknown";
    w->last_activity_ms = started;

    while (!g_stop) {
        t6b_event ev;
        const char *reason = NULL;
        const char *field = NULL;
        int rc;

        /* 0) 运行上限：无论是否卡在重试里都必须生效（否则 --max-runtime-ms 会被重试饿死） */
        if (w->cfg.max_events > 0 && (long long)w->st.events_processed >= w->cfg.max_events) {
            *exit_reason = "max_events";
            return 0;
        }
        if (w->cfg.max_runtime_ms > 0 && wu_now_ms() - started >= w->cfg.max_runtime_ms) {
            *exit_reason = "max_runtime";
            return 0;
        }

        /* 1) 有待处理事件：先把它处理完（成功前不读下一条） */
        if (w->have_pend) {
            if (wu_now_ms() < w->pend_next_ms) {
                if (wu_now_ms() - w->last_status_ms >= w->cfg.status_interval_ms) {
                    publish_status(w, w->pend_stuck ? "error" : "running");
                }
                (void)wu_sleep_ms(20);
                continue;
            }
            rc = provider_attempt(w);
            if (rc == 0) {
                w->have_pend = 0;
                w->pend_attempts = 0;
                w->pend_backoff_ms = 0;
                w->pend_next_ms = 0;
                if (w->st.state_persist_failed == 0)
                    snprintf(w->st.state, sizeof(w->st.state), "running");
            } else if (rc == -1) {
                schedule_retry(w, 0);
            } else if (rc == -2) {
                schedule_retry(w, 1);
            } else if (rc == -4) {
                /* 指纹推进失败：偏移没有前进，必须停止消费（不许退化成只比 inode） */
                *exit_reason = "identity_hash_failed";
                return 6;
            } else {
                /* Provider 成功但进度没落盘：不许继续读下一条 */
                if (state_persist_recover(w) != 0) {
                    *exit_reason = "state_persist_failed";
                    return 5;
                }
                w->have_pend = 0;
                w->pend_attempts = 0;
                w->pend_backoff_ms = 0;
                w->pend_next_ms = 0;
                snprintf(w->st.state, sizeof(w->st.state), "running");
                w->st.state_persist_failed = 0;
            }
            continue;
        }

        /* 2) 读下一条记录 */
        err[0] = '\0';
        rc = t6b_reader_next(&w->rd, &ev, &reason, &field, err, sizeof(err));

        if (rc == 1) {
            backoff_ms = 0;
            w->st.lines_read++;

            if (t6b_state_has_recent(&w->state, ev.event_id)) {
                w->st.duplicates++;
                logf_(&w->cfg, "duplicate event_id=%s seq=%lu (skipped, counted)",
                      ev.event_id, ev.seq);
                if (commit_skipped(w, exit_reason) != 0) return 6;
            } else {
                w->st.events_accepted++;
                gap_report(w, &ev);
                w->pend = ev;
                w->have_pend = 1;
                w->pend_attempts = 0;
                w->pend_stuck = 0;
                w->pend_backoff_ms = 0;
                w->pend_next_ms = 0;
                w->pend_error[0] = '\0';
                continue;      /* 立刻进入 Provider 处理分支 */
            }
        } else if (rc == 0) {
            backoff_ms = 0;
        } else if (rc == -2) {
            snprintf(w->st.last_invalid, sizeof(w->st.last_invalid), "%s:%s",
                     reason != NULL ? reason : "invalid", field != NULL ? field : "-");
            always("skip invalid record at offset %lld: %s (field=%s)",
                   w->rd.off, reason != NULL ? reason : "invalid", field != NULL ? field : "-");
            if (commit_skipped(w, exit_reason) != 0) return 6;
        } else if (rc == -3) {
            always("skip oversize record at offset %lld (limit=%d bytes)",
                   w->rd.off, w->rd.max_record);
            if (commit_skipped(w, exit_reason) != 0) return 6;
        } else if (rc == -4) {
            /* 前缀指纹无法核对：不许当作"没变化"继续跑，直接停止 */
            snprintf(w->st.state, sizeof(w->st.state), "error");
            t6b_status_note_error(&w->st, "prefix verify failed: %s", err);
            always("prefix verify failed (%s): stopping consumption", err);
            *exit_reason = "identity_verify_failed";
            return 6;
        } else {
            t6b_status_note_error(&w->st, "events read error: %s", err);
            backoff_ms = (backoff_ms == 0) ? 200 : (backoff_ms * 2);
            if (backoff_ms > 2000) backoff_ms = 2000;
        }

        if (rc != -1 && w->pending_advances >=
                       (w->cfg.state_sync_every > 0 ? w->cfg.state_sync_every : 1)) {
            if (state_save(w, "sync") != 0) {
                if (state_persist_recover(w) != 0) {
                    *exit_reason = "state_persist_failed";
                    return 5;
                }
            }
        }

        if (wu_now_ms() - w->last_status_ms >= w->cfg.status_interval_ms) {
            publish_status(w, "running");
        }

        if (rc == 0) {
            if (w->cfg.idle_exit_ms > 0 && wu_now_ms() - w->last_activity_ms >= w->cfg.idle_exit_ms) {
                *exit_reason = "idle_timeout";
                return 0;
            }
            /* 无完整记录：睡一轮；被信号打断时尽快回到循环顶部 */
            (void)wu_sleep_ms((long long)(w->cfg.poll_ms > 0 ? w->cfg.poll_ms : 50));
        } else if (rc == -1) {
            (void)wu_sleep_ms(backoff_ms > 0 ? backoff_ms : 200);
        }
    }

    *exit_reason = "signal";
    return 0;
}

/* ---------------- 入口 ---------------- */

void t6b_config_defaults(t6b_config *c)
{
    if (c == NULL) return;
    memset(c, 0, sizeof(*c));
    snprintf(c->work_dir, sizeof(c->work_dir), "%s", T6B_WORK_DIR_DEFAULT);
    snprintf(c->state_dir, sizeof(c->state_dir), "%s", T6B_STATE_DIR_DEFAULT);
    snprintf(c->events_name, sizeof(c->events_name), "%s", T6B_EVENTS_NAME_DEFAULT);
    snprintf(c->provider_name, sizeof(c->provider_name), "%s", T6B_PROVIDER_MOCK);
    c->poll_ms = 200;
    c->status_interval_ms = 1000;
    c->max_record_bytes = T6B_REC_DEFAULT;
    c->state_sync_every = 1;
    c->idle_exit_ms = 0;
    c->max_events = 0;
    c->max_runtime_ms = 0;
    c->provider_retry_max = 5;
    c->provider_backoff_ms = 200;
    c->provider_backoff_max_ms = 2000;
    c->state_retry_ms = 100;
    c->state_fail_exit_ms = 3000;
    c->verbose = 0;
    snprintf(c->tts_queue, sizeof(c->tts_queue), "%s", T6B_TTS_QUEUE_DEFAULT);
    t6b_mock_defaults(&c->mock);
    t6b_ds_defaults(&c->deepseek);
}

int t6b_config_check(const t6b_config *c, char *err, size_t errlen)
{
    if (c == NULL) return -1;
    if (c->work_dir[0] == '\0' || c->state_dir[0] == '\0') {
        if (err) snprintf(err, errlen, "work-dir/state-dir must not be empty");
        return -1;
    }
    if (c->events_name[0] == '\0' || strchr(c->events_name, '/') != NULL ||
        strchr(c->events_name, '\\') != NULL) {
        if (err) snprintf(err, errlen, "events-file must be a plain file name");
        return -1;
    }
    if (c->tts_queue[0] != '\0') {
        int abs_path = (c->tts_queue[0] == '/' || c->tts_queue[0] == '.');
#ifdef _WIN32
        /* 主机测试用 Windows 绝对路径（D:\...）；设备上永远走 POSIX 分支 */
        if (!abs_path && strlen(c->tts_queue) > 2 &&
            ((c->tts_queue[0] >= 'A' && c->tts_queue[0] <= 'Z') ||
             (c->tts_queue[0] >= 'a' && c->tts_queue[0] <= 'z')) &&
            c->tts_queue[1] == ':') {
            abs_path = 1;
        }
#endif
        if (!abs_path) {
            if (err) snprintf(err, errlen, "tts-queue-dir must be an absolute path");
            return -1;
        }
        if (strpbrk(c->tts_queue, "\r\n\t") != NULL) {
            if (err) snprintf(err, errlen, "tts-queue-dir must not contain control chars");
            return -1;
        }
        if (strlen(c->tts_queue) >= sizeof(c->tts_queue) - 16) {
            if (err) snprintf(err, errlen, "tts-queue-dir too long");
            return -1;
        }
    }
    if (c->poll_ms < 10 || c->poll_ms > 60000) {
        if (err) snprintf(err, errlen, "poll-ms out of range [10,60000]");
        return -1;
    }
    if (c->status_interval_ms < 100 || c->status_interval_ms > 600000) {
        if (err) snprintf(err, errlen, "status-every-ms out of range [100,600000]");
        return -1;
    }
    if (c->max_record_bytes < 256 || c->max_record_bytes > T6B_READ_CHUNK) {
        if (err) snprintf(err, errlen, "max-record-bytes out of range [256,65536]");
        return -1;
    }
    if (c->state_sync_every < 1 || c->state_sync_every > 100000) {
        if (err) snprintf(err, errlen, "state-sync-every out of range [1,100000]");
        return -1;
    }
    if (c->provider_retry_max < 0 || c->provider_retry_max > 100000) {
        if (err) snprintf(err, errlen, "provider-retry-max out of range [0,100000]");
        return -1;
    }
    if (c->provider_backoff_ms < 1 || c->provider_backoff_ms > 60000 ||
        c->provider_backoff_max_ms < c->provider_backoff_ms ||
        c->provider_backoff_max_ms > 600000) {
        if (err) snprintf(err, errlen, "provider backoff out of range");
        return -1;
    }
    if (c->state_retry_ms < 1 || c->state_retry_ms > 60000) {
        if (err) snprintf(err, errlen, "state-retry-ms out of range [1,60000]");
        return -1;
    }
    if (c->state_fail_exit_ms < 0 || c->state_fail_exit_ms > 3600000) {
        if (err) snprintf(err, errlen, "state-fail-exit-ms out of range [0,3600000]");
        return -1;
    }

    /* ---- provider 选择（T5-06C） ---- */
    if (strcmp(c->provider_name, T6B_PROVIDER_MOCK) == 0) return 0;
    if (strcmp(c->provider_name, T6B_PROVIDER_DEEPSEEK) != 0) {
        if (err) snprintf(err, errlen, "provider must be 'mock' or 'deepseek'");
        return -1;
    }
    if (c->deepseek.api_key_file[0] == '\0') {
        if (err) snprintf(err, errlen, "api-key-file must not be empty for provider=deepseek");
        return -1;
    }
    if (c->deepseek.model[0] == '\0') {
        if (err) snprintf(err, errlen, "deepseek-model must not be empty");
        return -1;
    }
    if (strlen(c->deepseek.model) > T6B_DS_MODEL_MAX) {
        if (err) snprintf(err, errlen, "deepseek-model too long (max %d)", T6B_DS_MODEL_MAX);
        return -1;
    }
    {
        char url[T6B_DS_URL_MAX];
        char uerr[96];
        if (t6b_ds_build_url(c->deepseek.base_url, url, sizeof(url), uerr, sizeof(uerr)) != 0) {
            if (err) snprintf(err, errlen, "deepseek-base-url invalid: %s", uerr);
            return -1;
        }
    }
    if (c->deepseek.connect_timeout_ms < 100 || c->deepseek.connect_timeout_ms > 120000) {
        if (err) snprintf(err, errlen, "deepseek-connect-timeout-ms out of range [100,120000]");
        return -1;
    }
    if (c->deepseek.total_timeout_ms < 100 || c->deepseek.total_timeout_ms > 600000) {
        if (err) snprintf(err, errlen, "deepseek-timeout-ms out of range [100,600000]");
        return -1;
    }
    if (c->deepseek.total_timeout_ms < c->deepseek.connect_timeout_ms) {
        if (err) snprintf(err, errlen, "deepseek-timeout-ms must be >= connect timeout");
        return -1;
    }
    return 0;
}

/* 初始化阶段（状态文件/文件身份/Provider 之前）就失败时，也要留下状态文件，
 * 否则运维只能看到一个退出码。 */
static void status_init_failure(t6b_worker *w, const char *reason, const char *detail)
{
    char err[192];

    w->st.pid = wu_self_pid();
    w->st.started_at_ms = wu_wall_ms();
    w->st.updated_at_ms = w->st.started_at_ms;
    wu_time_str(w->st.started_at, sizeof(w->st.started_at));
    wu_time_str(w->st.updated_at, sizeof(w->st.updated_at));
    snprintf(w->st.state, sizeof(w->st.state), "error");
    snprintf(w->st.exit_reason, sizeof(w->st.exit_reason), "%s", reason);
    snprintf(w->st.events_file, sizeof(w->st.events_file), "%s", w->events_path);
    snprintf(w->st.state_file, sizeof(w->st.state_file), "%s", w->state_path);
    snprintf(w->st.provider, sizeof(w->st.provider), "%s",
             w->cfg.provider_name[0] != '\0' ? w->cfg.provider_name : "none");
    if (strcmp(w->cfg.provider_name, T6B_PROVIDER_DEEPSEEK) == 0) {
        snprintf(w->st.model, sizeof(w->st.model), "%s", w->cfg.deepseek.model);
        w->st.provider_mock = 0;
    } else {
        w->st.model[0] = '\0';
        w->st.provider_mock = 1;
    }
    /* 报告磁盘上**仍然有效**的进度（不是 0）：身份核对失败时进度没有被改动 */
    w->st.offset = w->state.offset;
    w->st.dev = w->state.dev;
    w->st.ino = w->state.ino;
    w->st.prefix_hash = w->state.prefix_hash;
    w->st.prefix_hash_valid = w->state.have_prefix_hash;
    snprintf(w->st.last_error, sizeof(w->st.last_error), "%s", detail != NULL ? detail : "");
    err[0] = '\0';
    if (t6b_status_write(&w->st, w->status_path, err, sizeof(err)) != 0)
        always("status write failed: %s", err);
}

int t6b_worker_run(const t6b_config *c, t6b_status *out)
{
    static t6b_worker w;
    char err[192];
    const char *exit_reason = NULL;
    int rc;
    int state_rc;

    if (c == NULL) return 4;
    memset(&w, 0, sizeof(w));
    w.cfg = *c;
    w.rd.fd = -1;
    w.lock.fd = -1;
    t6b_state_init(&w.state);
    t6b_status_init(&w.st);
    snprintf(w.st.tts_queue, sizeof(w.st.tts_queue), "%s", c->tts_queue);
    t6b_gap_init(&w.gaps);

    join_path(w.events_path, sizeof(w.events_path), c->work_dir, c->events_name);
    join_path(w.state_path, sizeof(w.state_path), c->state_dir, T6B_STATE_FILE);
    join_path(w.status_path, sizeof(w.status_path), c->state_dir, T6B_STATUS_FILE);
    join_path(w.lock_path, sizeof(w.lock_path), c->state_dir, T6B_LOCK_NAME_DEFAULT);

    if (wu_mkdir_p(c->state_dir) != 0) {
        always("cannot create state dir: %s", c->state_dir);
        return 4;
    }

    rc = lock_acquire(&w, err, sizeof(err));
    if (rc != 0) {
        always("%s", err);
        if (rc == 1 && out != NULL) {
            t6b_status_init(out);
            snprintf(out->tts_queue, sizeof(out->tts_queue), "%s", c->tts_queue);
            snprintf(out->state, sizeof(out->state), "refused");
            snprintf(out->exit_reason, sizeof(out->exit_reason), "already_running");
            out->pid = wu_self_pid();
        }
        return 3;
    }

    /* 读消费进度；损坏时留档并从头开始（绝不静默跳过未处理事件） */
    state_rc = t6b_state_load(&w.state, w.state_path, err, sizeof(err));
    if (state_rc == -2) {
        char backup[T6B_PATH_MAX + 32];
        char stamp[24];
        size_t k;
        wu_time_str(stamp, sizeof(stamp));
        for (k = 0; stamp[k] != '\0'; k++) {
            if (stamp[k] == ':' || stamp[k] == '-') stamp[k] = '_';
        }
        snprintf(backup, sizeof(backup), "%s.corrupt-%s", w.state_path, stamp);
        wu_rename_replace(w.state_path, backup);
        always("consumer state corrupted (%s); moved to %s; restarting from offset 0", err, backup);
        t6b_state_init(&w.state);
        w.st.state_errors++;
        t6b_status_note_error(&w.st, "state corrupted: %s", err);
    } else if (state_rc == -1) {
        always("consumer state read failed (%s); starting from offset 0", err);
        t6b_state_init(&w.state);
        t6b_status_note_error(&w.st, "consumer state read failed: %s", err);
    } else if (state_rc == 1) {
        always("no consumer state yet (first run); scanning events from offset 0");
    }

    /* 旧状态（version 1）没有前缀指纹：明确记录"即将有界重复"，不假装身份已验证 */
    if (state_rc == 0 && !w.state.have_prefix_hash && w.state.offset > 0) {
        always("state v1 has no prefix fingerprint (offset=%lld): cannot prove the file is the "
               "same one; rescanning from offset 0 and relying on recent_ids (%d ids) for "
               "bounded duplicates", w.state.offset, w.state.recent_n);
    }

    {
        int rrc = t6b_reader_init(&w.rd, w.events_path, w.state.offset, w.state.dev,
                                  w.state.ino, w.state.prefix_hash,
                                  w.state.have_prefix_hash, c->max_record_bytes,
                                  err, sizeof(err));
        if (rrc == -2) {
            always("reader init failed: prefix fingerprint cannot be verified (%s); "
                   "refusing to run without file identity", err);
            status_init_failure(&w, "identity_verify_failed", err);
            lock_release(&w);
            return 6;
        }
        if (rrc != 0) {
            always("reader init failed: %s", err);
            lock_release(&w);
            return 4;
        }
    }
    if (w.rd.identity_resets > 0) {
        always("events.jsonl content identity changed (saved offset was %lld, prefix fingerprint "
               "mismatch): rescanning from offset 0; recent_ids suppress duplicates",
               w.state.offset);
    } else if (w.rd.legacy_rescans > 0) {
        always("legacy state migrated: rescanning from offset 0 with prefix tracking enabled");
    } else if (w.rd.truncations > 0 || w.rd.replacements > 0) {
        always("events.jsonl changed while worker was down (%s); rescanning from offset 0",
               t6b_open_reason_name(w.rd.last_reason));
    }

    /* Provider 选择（T5-06C）：mock = 零网络；deepseek = 真实 HTTPS。
     * 真实 Provider 初始化失败必须退出（退出码 4），绝不悄悄退回 mock。 */
    if (strcmp(c->provider_name, T6B_PROVIDER_DEEPSEEK) == 0) {
        if (t6b_ds_open(&w.prov, &w.ds, &c->deepseek) != 0) {
            always("provider setup failed (deepseek)");
            t6b_reader_free(&w.rd);
            lock_release(&w);
            return 4;
        }
        w.prov_deepseek = 1;
        if (t6b_provider_init(&w.prov, err, sizeof(err)) != 0) {
            always("provider init failed (deepseek): %s", err);
            status_init_failure(&w, "provider_init_failed", err);
            t6b_provider_fini(&w.prov);
            t6b_ds_close(&w.prov);
            t6b_reader_free(&w.rd);
            lock_release(&w);
            return 4;
        }
        always("provider ready: deepseek model=%s url=%s key_file=%s key_mode=%s",
               w.ds.cfg.model, w.ds.url, w.ds.cfg.api_key_file,
               w.ds.key_mode < 0 ? "unknown" : (w.ds.key_mode == 0600 ? "0600" : "NOT-0600"));
        if (w.ds.key_mode >= 0 && (w.ds.key_mode & 077) != 0) {
            always("WARNING: api key file mode is 0%o (group/other readable); "
                   "chmod 600 %s is recommended", w.ds.key_mode, w.ds.cfg.api_key_file);
        }
        if (strncmp(w.ds.url, "http://", 7) == 0) {
            always("WARNING: deepseek base url uses plain http (no TLS): %s", w.ds.url);
        }
        always("libcurl: dlopen ok, version=%s", t6b_ds_libcurl_version());
    } else {
        if (t6b_mock_open(&w.prov, &w.mock, &c->mock) != 0) {
            always("provider setup failed (mock)");
            t6b_reader_free(&w.rd);
            lock_release(&w);
            return 4;
        }
        if (t6b_provider_init(&w.prov, err, sizeof(err)) != 0) {
            always("provider init failed (mock): %s", err);
            t6b_reader_free(&w.rd);
            lock_release(&w);
            return 4;
        }
    }

    snprintf(w.st.state, sizeof(w.st.state), "running");
    w.st.pid = wu_self_pid();
    w.st.started_at_ms = wu_wall_ms();
    w.st.updated_at_ms = w.st.started_at_ms;
    wu_time_str(w.st.started_at, sizeof(w.st.started_at));
    wu_time_str(w.st.updated_at, sizeof(w.st.updated_at));
    snprintf(w.st.events_file, sizeof(w.st.events_file), "%s", w.events_path);
    snprintf(w.st.state_file, sizeof(w.st.state_file), "%s", w.state_path);
    snprintf(w.st.provider, sizeof(w.st.provider), "%s",
             w.prov.ops != NULL ? w.prov.ops->name : "none");
    w.st.provider_mock = w.prov_deepseek ? 0 : 1;
    if (w.prov_deepseek) snprintf(w.st.model, sizeof(w.st.model), "%s", w.ds.cfg.model);
    else w.st.model[0] = '\0';
    snprintf(w.st.exit_reason, sizeof(w.st.exit_reason), "running");

    always("start pid=%lld events=%s state=%s provider=%s offset=%lld (%s)",
           w.st.pid, w.events_path, w.state_path, w.st.provider, w.state.offset,
           w.prov_deepseek ? "network enabled" : "mock only, no network");
    publish_status(&w, "running");

    rc = worker_loop(&w, &exit_reason);

    snprintf(w.st.exit_reason, sizeof(w.st.exit_reason), "%s", exit_reason);

    /* 退出前的最后一次落盘：失败也不许假装成功 */
    if (state_save(&w, "exit") != 0) {
        w.st.state_errors++;
        w.st.state_persist_failed = 1;
        always("FINAL state save failed; progress on disk stays at the last successful offset");
        if (rc == 0 && (w.pending_advances > 0 || w.st.state_persist_failed)) {
            if (exit_reason != NULL && strcmp(exit_reason, "state_persist_failed") != 0)
                snprintf(w.st.exit_reason, sizeof(w.st.exit_reason), "state_persist_failed");
            rc = 5;
        }
    }
    publish_status(&w, rc == 5 ? "error" : "stopped");

    always("exit reason=%s processed=%llu duplicates=%llu invalid=%llu gaps=%llu resets=%llu "
           "provider_retries=%llu offset=%lld state_saves=%llu state_errors=%llu",
           w.st.exit_reason, w.st.events_processed, w.st.duplicates, w.st.invalid_lines,
           w.st.gaps, w.st.seq_resets, w.st.provider_retries, w.rd.off,
           w.st.state_saves, w.st.state_errors);
    always("file identity: reason=%s offset=%lld prefix_hash=%016llx resets=%llu legacy_rescans=%llu "
           "replacements=%llu truncations=%llu",
           t6b_open_reason_name(w.rd.last_reason), w.rd.off,
           t6b_reader_prefix_hash(&w.rd), w.rd.identity_resets, w.rd.legacy_rescans,
           w.rd.replacements, w.rd.truncations);

    if (w.have_pend)
        always("WARNING: event id=%s was still unprocessed at exit (%d attempts, offset kept at %lld)",
               w.pend.event_id, w.pend_attempts, w.rd.off);

    if (w.prov_deepseek) {
        always("provider summary: name=deepseek model=%s calls=%lu ok=%lu err=%lu timeout=%lu "
               "last_http=%d last_curl=%d last_class=%s last_latency=%lldms last_resp_bytes=%llu",
               w.ds.cfg.model, w.ds.calls, w.ds.ok, w.ds.err, w.ds.timeouts,
               w.ds.last_http_status, w.ds.last_curl_code, w.ds.last_class,
               w.ds.last_latency_ms, w.ds.last_resp_bytes);
    } else {
        always("provider summary: name=mock calls=%lu (no network)", w.mock.calls);
    }

    t6b_provider_fini(&w.prov);
    if (w.prov_deepseek) t6b_ds_close(&w.prov);
    else t6b_mock_close(&w.prov);
    t6b_reader_free(&w.rd);
    lock_release(&w);

    if (out != NULL) *out = w.st;
    return rc;
}

/* ---------------- main ---------------- */

static void usage(void)
{
    fprintf(stdout,
        "usage: ai_worker [options]\n"
        "  --work-dir DIR        events.jsonl directory (default %s)\n"
        "  --state-dir DIR       consumer state/lock/status directory (default %s)\n"
        "  --events-file NAME    event file name, no path separators (default %s)\n"
        "  --poll-ms N           idle poll interval (default 200)\n"
        "  --status-every-ms N   status file refresh interval (default 1000)\n"
        "  --max-record-bytes N  per-line limit (default 8192)\n"
        "  --state-sync-every N  persist consumer state every N records (default 1)\n"
        "  --idle-exit-ms N      exit after N ms without new data (0 = run forever)\n"
        "  --max-events N        exit after N processed events (0 = no limit)\n"
        "  --max-runtime-ms N    exit after N ms of runtime (0 = no limit)\n"
        "  --provider-retry-max N  retries before the event is reported stuck (default 5)\n"
        "  --provider-backoff-ms N first retry backoff (default 200)\n"
        "  --provider-backoff-max-ms N retry backoff cap (default 2000)\n"
        "  --state-retry-ms N    state persist retry interval (default 100)\n"
        "  --state-fail-exit-ms N give up consuming after N ms of failed persists (default 3000)\n"
        "  --provider mock|deepseek  provider implementation (default mock)\n"
        "  --api-key-file PATH   API key file (default %s), only for provider=deepseek\n"
        "  --deepseek-model M    model name (default %s)\n"
        "  --deepseek-base-url U base url (default %s); %s is appended once\n"
        "  --deepseek-connect-timeout-ms N  connect timeout (default %d)\n"
        "  --deepseek-timeout-ms N          total timeout (default %d)\n"
        "  --reply-log PATH      append each successful answer as one JSON line (default off)\n"
        "  --tts-queue-dir DIR   hand each successful answer to the factory TTS executor\n"
        "                        (local persistent queue, idempotent per event_id; default off)\n"
        "  --mock-reply TEXT     fixed mock reply text\n"
        "  --mock-delay-ms N     simulate provider latency\n"
        "  --mock-fail-from N    mock always fails from call N on\n"
        "  --mock-fail-times N   mock fails the first N calls, then succeeds\n"
        "  --mock-timeout-from N mock always times out from call N on\n"
        "  --verbose             per-event log lines\n"
        "  --help                this help\n"
        "\nexit codes: 0 ok, 2 usage, 3 already running, 4 init failed, 5 state persist failed,\n"
        "            6 file identity failed (prefix fingerprint cannot be verified/updated)\n",
        T6B_WORK_DIR_DEFAULT, T6B_STATE_DIR_DEFAULT, T6B_EVENTS_NAME_DEFAULT,
        T6B_DS_KEY_FILE_DEFAULT, T6B_DS_MODEL_DEFAULT, T6B_DS_BASE_URL_DEFAULT,
        T6B_DS_PATH_SUFFIX, T6B_DS_CONNECT_MS_DEFAULT, T6B_DS_TIMEOUT_MS_DEFAULT);
}

static int need_str(int argc, char **argv, int i, const char **out)
{
    if (i + 1 >= argc) return -1;
    *out = argv[i + 1];
    return 0;
}

int main(int argc, char **argv)
{
    t6b_config cfg;
    char err[192];
    int i;
    int rc;

    t6b_config_defaults(&cfg);

#ifdef SIGPIPE
    signal(SIGPIPE, SIG_IGN);
#endif
    signal(SIGINT, on_signal);
    signal(SIGTERM, on_signal);

#ifdef _WIN32
    _setmode(1, _O_BINARY);
#endif
    setvbuf(stdout, NULL, _IOLBF, 0);

    for (i = 1; i < argc; i++) {
        const char *a = argv[i];
        const char *v = NULL;

        if (strcmp(a, "--help") == 0 || strcmp(a, "-h") == 0) { usage(); return 0; }
        else if (strcmp(a, "--verbose") == 0) { cfg.verbose = 1; continue; }

        if (strcmp(a, "--work-dir") == 0) { if (need_str(argc, argv, i, &v)) goto bad; snprintf(cfg.work_dir, sizeof(cfg.work_dir), "%s", v); i++; }
        else if (strcmp(a, "--state-dir") == 0) { if (need_str(argc, argv, i, &v)) goto bad; snprintf(cfg.state_dir, sizeof(cfg.state_dir), "%s", v); i++; }
        else if (strcmp(a, "--events-file") == 0) { if (need_str(argc, argv, i, &v)) goto bad; snprintf(cfg.events_name, sizeof(cfg.events_name), "%s", v); i++; }
        else if (strcmp(a, "--poll-ms") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.poll_ms = atoi(v); i++; }
        else if (strcmp(a, "--status-every-ms") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.status_interval_ms = atoi(v); i++; }
        else if (strcmp(a, "--max-record-bytes") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.max_record_bytes = atoi(v); i++; }
        else if (strcmp(a, "--state-sync-every") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.state_sync_every = atoi(v); i++; }
        else if (strcmp(a, "--idle-exit-ms") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.idle_exit_ms = atoll(v); i++; }
        else if (strcmp(a, "--max-events") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.max_events = atoll(v); i++; }
        else if (strcmp(a, "--max-runtime-ms") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.max_runtime_ms = atoll(v); i++; }
        else if (strcmp(a, "--provider-retry-max") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.provider_retry_max = atoi(v); i++; }
        else if (strcmp(a, "--provider-backoff-ms") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.provider_backoff_ms = atoi(v); i++; }
        else if (strcmp(a, "--provider-backoff-max-ms") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.provider_backoff_max_ms = atoi(v); i++; }
        else if (strcmp(a, "--state-retry-ms") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.state_retry_ms = atoi(v); i++; }
        else if (strcmp(a, "--state-fail-exit-ms") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.state_fail_exit_ms = atoll(v); i++; }
        else if (strcmp(a, "--mock-reply") == 0) { if (need_str(argc, argv, i, &v)) goto bad; snprintf(cfg.mock.reply, sizeof(cfg.mock.reply), "%s", v); i++; }
        else if (strcmp(a, "--mock-delay-ms") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.mock.delay_ms = atoi(v); i++; }
        else if (strcmp(a, "--mock-fail-from") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.mock.fail_from_call = atoi(v); i++; }
        else if (strcmp(a, "--mock-fail-times") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.mock.fail_first_calls = atoi(v); i++; }
        else if (strcmp(a, "--mock-timeout-from") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.mock.timeout_from_call = atoi(v); i++; }
        else if (strcmp(a, "--provider") == 0) { if (need_str(argc, argv, i, &v)) goto bad; snprintf(cfg.provider_name, sizeof(cfg.provider_name), "%s", v); i++; }
        else if (strcmp(a, "--api-key-file") == 0) { if (need_str(argc, argv, i, &v)) goto bad; snprintf(cfg.deepseek.api_key_file, sizeof(cfg.deepseek.api_key_file), "%s", v); i++; }
        else if (strcmp(a, "--deepseek-model") == 0) { if (need_str(argc, argv, i, &v)) goto bad; snprintf(cfg.deepseek.model, sizeof(cfg.deepseek.model), "%s", v); i++; }
        else if (strcmp(a, "--deepseek-base-url") == 0) { if (need_str(argc, argv, i, &v)) goto bad; snprintf(cfg.deepseek.base_url, sizeof(cfg.deepseek.base_url), "%s", v); i++; }
        else if (strcmp(a, "--deepseek-connect-timeout-ms") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.deepseek.connect_timeout_ms = atoi(v); i++; }
        else if (strcmp(a, "--deepseek-timeout-ms") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.deepseek.total_timeout_ms = atoi(v); i++; }
        else if (strcmp(a, "--reply-log") == 0) { if (need_str(argc, argv, i, &v)) goto bad; snprintf(cfg.reply_log, sizeof(cfg.reply_log), "%s", v); i++; }
        else if (strcmp(a, "--tts-queue-dir") == 0) { if (need_str(argc, argv, i, &v)) goto bad; snprintf(cfg.tts_queue, sizeof(cfg.tts_queue), "%s", v); i++; }
        else {
            fprintf(stderr, "unknown option: %s\n", a);
            usage();
            return 2;
        }
        continue;
bad:
        fprintf(stderr, "option needs a value: %s\n", a);
        usage();
        return 2;
    }

    if (t6b_config_check(&cfg, err, sizeof(err)) != 0) {
        fprintf(stderr, "config error: %s\n", err);
        return 2;
    }

    rc = t6b_worker_run(&cfg, NULL);
    if (rc == 3) {
        fprintf(stderr, "already running (flock held)\n");
        return 3;
    }
    if (rc == 4) {
        fprintf(stderr, "worker init failed\n");
        return 4;
    }
    if (rc == 5) {
        fprintf(stderr, "state persist failed; progress not durable\n");
        return 5;
    }
    if (rc == 6) {
        fprintf(stderr, "file identity failed; prefix fingerprint cannot be verified or updated\n");
        return 6;
    }
    return 0;
}
