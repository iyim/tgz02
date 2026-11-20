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

/* ---------------- Provider 调用与重试（P1-2） ---------------- */

/*
 * 一次尝试。返回值：
 *    0 = 成功（已提交偏移并落盘）
 *   -1 = 本次失败，稍后重试（偏移不动、recent_ids 不动、成功计数不动）
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
        w->st.provider_ok++;
        logf_(&w->cfg,
              "event id=%s seq=%lu pid=%lld text_bytes=%d -> provider=%s status=ok "
              "latency=%lldms reply_bytes=%d (attempt %d)",
              w->pend.event_id, w->pend.seq, w->pend.pid, w->pend.text_bytes,
              "mock", rep.latency_ms, rep.text_bytes, w->pend_attempts);
        if (w->pend_stuck) {
            always("provider recovered for event id=%s after %d attempts; resuming normal pace",
                   w->pend.event_id, w->pend_attempts);
        }
        w->pend_stuck = 0;
        w->pend_error[0] = '\0';
        {
            int cr = commit_event(w);
            if (cr == -2) return -4;      /* 指纹推进失败：致命 */
            if (cr != 0) return -3;       /* 状态落盘失败 */
        }
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
    snprintf(w->st.provider, sizeof(w->st.provider), "mock");
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
        "  --provider-retry-max N  retries before the event is reported stuck (default 5)\n"
        "  --provider-backoff-ms N first retry backoff (default 200)\n"
        "  --provider-backoff-max-ms N retry backoff cap (default 2000)\n"
        "  --state-retry-ms N    state persist retry interval (default 100)\n"
        "  --state-fail-exit-ms N give up consuming after N ms of failed persists (default 3000)\n"
        "  --mock-reply TEXT     fixed mock reply text\n"
        "  --mock-delay-ms N     simulate provider latency\n"
        "  --mock-fail-from N    mock always fails from call N on\n"
        "  --mock-fail-times N   mock fails the first N calls, then succeeds\n"
        "  --mock-timeout-from N mock always times out from call N on\n"
        "  --verbose             per-event log lines\n"
        "  --help                this help\n"
        "\nexit codes: 0 ok, 2 usage, 3 already running, 4 init failed, 5 state persist failed,\n"
        "            6 file identity failed (prefix fingerprint cannot be verified/updated)\n",
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
