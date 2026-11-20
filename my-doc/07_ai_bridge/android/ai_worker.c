/*
 * ai_worker.c -- 独立 AI Worker 进程（见 ai_worker.h）
 *
 * 主循环（单线程，固定内存）：
 *   读一条完整记录 → 校验 → event_id 去重 → seq 缺口判定 → Provider 调用
 *   → 提交偏移（必要时落盘消费进度）→ 刷新状态文件
 *
 * 为什么不用线程/异步：本阶段的瓶颈是"人手写脚本"而不是 CPU，单线程顺序执行
 * 让"处理完才推进偏移"这条语义在代码上是显然的，不需要任何锁；
 * Provider 的网络适配器（T5-06C）会带自己的超时，也不会把阻塞传染给读文件。
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

#ifdef _WIN32
#  include <fcntl.h>
#  include <io.h>
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
    t6b_gaptrack gaps;

    long long    last_status_ms;
    long long    last_activity_ms;
    int          pending_advances;      /* 已提交但尚未写入消费状态文件的推进次数 */
    int          lock_held;
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

/* ---------------- 单实例锁 ---------------- */

static long long read_pid_file(const char *path)
{
    char buf[64];
    size_t len = 0;
    long v;

    if (wu_read_file(path, buf, sizeof(buf), &len) != 0) return -1;
    if (len == 0) return -1;
    v = strtol(buf, NULL, 10);
    return (v > 1) ? (long long)v : -1;
}

/* 0 = 拿到锁；-2 = 已有实例；-1 = 其它错误 */
static int lock_acquire(t6b_worker *w, char *err, size_t errlen)
{
    int fd;
    char pidbuf[32];
    int n;

    fd = wu_open_excl(w->lock_path);
    if (fd < 0) {
        long long owner;
        if (errno != EEXIST) {
            if (err) snprintf(err, errlen, "lock create failed: %s", w->lock_path);
            return -1;
        }
        owner = read_pid_file(w->lock_path);
        if (owner > 1 && wu_pid_alive(owner)) {
            if (err) snprintf(err, errlen, "another ai_worker is running: pid=%lld", owner);
            return -2;
        }
        /* 陈旧锁（上一个实例被 kill -9）：清掉再试一次 */
        wu_unlink(w->lock_path);
        fd = wu_open_excl(w->lock_path);
        if (fd < 0) {
            if (err) snprintf(err, errlen, "lock recreate failed: %s", w->lock_path);
            return -1;
        }
        always("stale lock removed (owner pid=%lld not alive)", owner);
    }

    n = snprintf(pidbuf, sizeof(pidbuf), "%lld\n", wu_self_pid());
    if (wu_write_all(fd, pidbuf, (size_t)n) != 0 || wu_fsync(fd) != 0) {
        wu_close(fd);
        wu_unlink(w->lock_path);
        if (err) snprintf(err, errlen, "lock write failed");
        return -1;
    }
    wu_close(fd);
    w->lock_held = 1;
    return 0;
}

static void lock_release(t6b_worker *w)
{
    long long owner;

    if (!w->lock_held) return;
    owner = read_pid_file(w->lock_path);
    if (owner == wu_self_pid()) wu_unlink(w->lock_path);
    w->lock_held = 0;
}

/* ---------------- 消费进度 ---------------- */

static void state_save(t6b_worker *w, const char *why)
{
    char err[192];
    char dir[T6B_PATH_MAX];

    err[0] = '\0';
    w->state.offset = w->rd.off;
    w->state.dev = w->rd.dev;
    w->state.ino = w->rd.ino;
    w->state.updated_at_ms = wu_wall_ms();

    if (t6b_state_save(&w->state, w->state_path, err, sizeof(err)) == 0) {
        w->st.state_saves++;
        w->pending_advances = 0;
        logf_(&w->cfg, "state saved (%s) offset=%lld processed=%llu", why,
              w->state.offset, w->state.processed_total);
    } else {
        w->st.state_errors++;
        t6b_status_note_error(&w->st, "state save failed: %s", err);
        always("state save failed: %s", err);
        /* 目录可能被删：重建一次再试；仍失败就继续跑（进度会退回到上一次成功点） */
        wu_dir_name(w->state_path, dir, sizeof(dir));
        if (wu_mkdir_p(dir) == 0) {
            if (t6b_state_save(&w->state, w->state_path, err, sizeof(err)) == 0) {
                w->st.state_saves++;
                w->pending_advances = 0;
            }
        }
    }
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
    w->st.dev = w->rd.dev;
    w->st.ino = w->rd.ino;
    w->st.invalid_lines = w->rd.invalid_skips;
    w->st.oversize_lines = w->rd.oversize_skips;
    w->st.io_errors = w->rd.io_errors;
    w->st.truncations = w->rd.truncations;
    w->st.replacements = w->rd.replacements;
    w->st.mock_calls = w->mock.calls;
    w->st.gaps = w->gaps.gaps;
    w->st.gap_missing_total = w->gaps.missing_total;
    w->st.seq_resets = w->gaps.resets;
    w->st.seq_unknown_start = w->gaps.unknown_start;
    w->st.last_gap_from = w->gaps.last_gap_from;
    w->st.last_gap_to = w->gaps.last_gap_to;
    w->st.file_size = (t6b_reader_stat(&w->rd, &size) == 0) ? size : -1;

    err[0] = '\0';
    if (t6b_status_write(&w->st, w->status_path, err, sizeof(err)) != 0) {
        w->st.state_errors++;
        /* 状态文件写不出来不是致命错误：继续消费，日志里留痕 */
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

/* ---------------- 单条事件处理 ---------------- */

static void handle_event(t6b_worker *w, const t6b_event *ev)
{
    t6b_reply rep;
    int dup;

    w->st.lines_read++;
    w->last_activity_ms = wu_now_ms();

    dup = t6b_state_has_recent(&w->state, ev->event_id);
    if (dup) {
        w->st.duplicates++;
        logf_(&w->cfg, "duplicate event_id=%s seq=%lu (skipped, counted)", ev->event_id, ev->seq);
        t6b_reader_commit(&w->rd);
        w->pending_advances++;
        return;
    }

    w->st.events_accepted++;
    gap_report(w, ev);

    if (t6b_provider_complete(&w->prov, ev->text, &rep) != 0) {
        /* Provider 不可用（配置问题）：计入错误，事件仍然算处理完，绝不阻塞消费 */
        w->st.provider_err++;
        t6b_status_note_error(&w->st, "provider unavailable: %s", rep.message);
        always("provider unavailable: %s", rep.message);
    } else {
        switch (rep.status) {
        case T6B_P_OK:
            w->st.provider_ok++;
            break;
        case T6B_P_TIMEOUT:
            w->st.provider_timeout++;
            t6b_status_note_error(&w->st, "provider timeout: %s", rep.message);
            break;
        default:
            w->st.provider_err++;
            t6b_status_note_error(&w->st, "provider error: %s", rep.message);
            break;
        }
        logf_(&w->cfg,
              "event id=%s seq=%lu pid=%lld text_bytes=%d -> provider=%s status=%s "
              "latency=%lldms reply_bytes=%d",
              ev->event_id, ev->seq, ev->pid, ev->text_bytes,
              "mock", t6b_pstatus_name(rep.status), rep.latency_ms, rep.text_bytes);
    }

    w->st.events_processed++;
    w->state.processed_total++;
    w->state.seq_last = ev->seq;
    snprintf(w->state.last_event_id, sizeof(w->state.last_event_id), "%s", ev->event_id);
    t6b_state_remember(&w->state, ev->event_id);
    w->st.last_seq = ev->seq;
    snprintf(w->st.last_event_id, sizeof(w->st.last_event_id), "%s", ev->event_id);
    wu_time_str(w->st.last_event_at, sizeof(w->st.last_event_at));

    t6b_reader_commit(&w->rd);
    w->pending_advances++;

    if (w->pending_advances >= (w->cfg.state_sync_every > 0 ? w->cfg.state_sync_every : 1)) {
        state_save(w, "sync");
    }
}

/* ---------------- 主循环 ---------------- */

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

        err[0] = '\0';
        rc = t6b_reader_next(&w->rd, &ev, &reason, &field, err, sizeof(err));

        if (rc == 1) {
            backoff_ms = 0;
            handle_event(w, &ev);
        } else if (rc == 0) {
            backoff_ms = 0;
        } else if (rc == -2) {
            snprintf(w->st.last_invalid, sizeof(w->st.last_invalid), "%s:%s",
                     reason != NULL ? reason : "invalid", field != NULL ? field : "-");
            always("skip invalid record at offset %lld: %s (field=%s)",
                   w->rd.off, reason != NULL ? reason : "invalid", field != NULL ? field : "-");
            t6b_reader_commit(&w->rd);
            w->pending_advances++;
        } else if (rc == -3) {
            always("skip oversize record at offset %lld (limit=%d bytes)", w->rd.off, w->rd.max_record);
            t6b_reader_commit(&w->rd);
            w->pending_advances++;
        } else {
            t6b_status_note_error(&w->st, "events read error: %s", err);
            backoff_ms = (backoff_ms == 0) ? 200 : (backoff_ms * 2);
            if (backoff_ms > 2000) backoff_ms = 2000;
        }

        if (rc != -1 && w->pending_advances >= (w->cfg.state_sync_every > 0 ? w->cfg.state_sync_every : 1)) {
            state_save(w, "sync");
        }

        if (wu_now_ms() - w->last_status_ms >= w->cfg.status_interval_ms) {
            publish_status(w, "running");
        }

        if (w->cfg.max_events > 0 && (long long)w->st.events_processed >= w->cfg.max_events) {
            *exit_reason = "max_events";
            return 0;
        }
        if (w->cfg.max_runtime_ms > 0 && wu_now_ms() - started >= w->cfg.max_runtime_ms) {
            *exit_reason = "max_runtime";
            return 0;
        }
        if (w->cfg.idle_exit_ms > 0 && wu_now_ms() - w->last_activity_ms >= w->cfg.idle_exit_ms) {
            *exit_reason = "idle_timeout";
            return 0;
        }

        if (rc == 0) {
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
    c->poll_ms = 200;
    c->status_interval_ms = 1000;
    c->max_record_bytes = T6B_REC_DEFAULT;
    c->state_sync_every = 1;
    c->idle_exit_ms = 0;
    c->max_events = 0;
    c->max_runtime_ms = 0;
    c->verbose = 0;
    t6b_mock_defaults(&c->mock);
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
    return 0;
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
    t6b_state_init(&w.state);
    t6b_status_init(&w.st);
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
        if (rc == -2 && out != NULL) {
            t6b_status_init(out);
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

    if (t6b_reader_init(&w.rd, w.events_path, w.state.offset, w.state.dev, w.state.ino,
                        c->max_record_bytes, err, sizeof(err)) != 0) {
        always("reader init failed: %s", err);
        lock_release(&w);
        return 4;
    }
    if (w.rd.truncations > 0 || w.rd.replacements > 0) {
        always("events.jsonl changed while worker was down (%s); rescanning from offset 0",
               t6b_open_reason_name(w.rd.last_reason));
    }

    if (t6b_mock_open(&w.prov, &w.mock, &c->mock) != 0) {
        always("provider setup failed");
        t6b_reader_free(&w.rd);
        lock_release(&w);
        return 4;
    }
    if (t6b_provider_init(&w.prov, err, sizeof(err)) != 0) {
        always("provider init failed: %s", err);
        t6b_reader_free(&w.rd);
        lock_release(&w);
        return 4;
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
    snprintf(w.st.exit_reason, sizeof(w.st.exit_reason), "running");

    always("start pid=%lld events=%s state=%s provider=%s offset=%lld (mock only, no network)",
           w.st.pid, w.events_path, w.state_path, w.st.provider, w.state.offset);
    publish_status(&w, "running");

    rc = worker_loop(&w, &exit_reason);

    snprintf(w.st.exit_reason, sizeof(w.st.exit_reason), "%s", exit_reason);
    state_save(&w, "exit");
    publish_status(&w, "stopped");

    always("exit reason=%s processed=%llu duplicates=%llu invalid=%llu gaps=%llu resets=%llu "
           "offset=%lld state_saves=%llu",
           exit_reason, w.st.events_processed, w.st.duplicates, w.st.invalid_lines,
           w.st.gaps, w.st.seq_resets, w.rd.off, w.st.state_saves);

    t6b_provider_fini(&w.prov);
    t6b_mock_close(&w.prov);
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
        "  --mock-reply TEXT     fixed mock reply text\n"
        "  --mock-delay-ms N     simulate provider latency\n"
        "  --mock-fail-from N    mock returns error from call N on\n"
        "  --mock-timeout-from N mock returns timeout from call N on\n"
        "  --verbose             per-event log lines\n"
        "  --help                this help\n",
        T6B_WORK_DIR_DEFAULT, T6B_STATE_DIR_DEFAULT, T6B_EVENTS_NAME_DEFAULT);
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
        else if (strcmp(a, "--mock-reply") == 0) { if (need_str(argc, argv, i, &v)) goto bad; snprintf(cfg.mock.reply, sizeof(cfg.mock.reply), "%s", v); i++; }
        else if (strcmp(a, "--mock-delay-ms") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.mock.delay_ms = atoi(v); i++; }
        else if (strcmp(a, "--mock-fail-from") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.mock.fail_from_call = atoi(v); i++; }
        else if (strcmp(a, "--mock-timeout-from") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.mock.timeout_from_call = atoi(v); i++; }
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
        fprintf(stderr, "already running (lock held)\n");
        return 3;
    }
    if (rc == 4) {
        fprintf(stderr, "worker init failed\n");
        return 4;
    }
    return 0;
}
