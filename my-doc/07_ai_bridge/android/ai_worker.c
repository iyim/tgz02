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
#include "dead_letter.h"
#include "echo_filter.h"
#include "intent_route.h"
#include "seq_gap.h"
#include "session_ctrl.h"
#include "t7_dup.h"
#include "worker_conf.h"
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
    char         text[T6B_TEXT_MAX + 1];   /* 已合并/修订后的完整指令 */
    char         event_id[T6B_ID_MAX + 1]; /* 首条 final 的 event_id（去重与幂等用） */
    char         session[T6B_ID_MAX + 1];
    unsigned long seq;
    int          merges;
    long long    held_ms;
    char         why[24];
} t6b_utt;

#define T6B_UTT_QUEUE 4
#define T6B_ROUTE_TEXT_MAX 256

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
    cv_ctx       cv;                     /* T7-01：多轮上下文（独立模块） */
    char         msg_json[CV_JSON_MAX];  /* 本轮要发的 messages 数组（历史 + 本轮 user） */
    char         clear_path[T6B_PATH_MAX]; /* context.clear 请求文件 */
    ef_ctx       ef;                     /* T7-02：播报回声 / 无指令过滤 */
    ug_ctx       ug;                     /* T7-04：ASR 暂存门（半句话/修订合并） */
    cs_ctx       cs;                     /* T7-04：连续对话会话状态 */
    sc_ctx       sc;                     /* T8-13：会话控制中心（真实事件驱动的生命周期） */
    char         gate_hold_path[T6B_PATH_MAX];
    char         route_publish_path[T6B_PATH_MAX];
    t6b_utt      uttq[T6B_UTT_QUEUE];     /* 等待 Provider 的完整指令（最多 4 条） */
    int          uttq_head;
    int          uttq_count;
    unsigned long uttq_dropped;
    int          play_playing;            /* 最近一次读到的播报状态：1=playing */
    int          play_known;              /* 1 = 至少读到过一次播报状态 */
    /* T7-05：最近一次真正执行过的 native 指令（仅用于状态展示） */
    char         last_native_text[T6B_ROUTE_TEXT_MAX];
    long long    last_native_ms;
    int          last_native_intent;
    /* T7-05-R2：重复判定只看事件身份（event_id / session+seq+文本），不看时间窗 */
    t7_dup       dedup;

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
    /* T7-09：死信回滚失败后的"持久化故障"闩锁。置位后不再对当前事件追加死信，
     * 也不再读下一条：宁可停住，也不制造重复记录或静默跳过。 */
    int          pend_dl_fault;
    t6b_dl_out   dl_out;                /* 最近一次死信追加的诊断信息（写状态用） */
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

    /* T7-01：上下文观测（只放条数与计数，绝不含消息正文） */
    w->st.context_enabled = w->cv.cfg.enabled;
    w->st.context_max_messages = w->cv.cfg.max_messages;
    w->st.context_messages = w->cv.count;
    w->st.context_turns = cv_turn_count(&w->cv);
    w->st.context_saves = w->cv.saves;
    w->st.context_save_errors = w->cv.save_errors;
    w->st.context_evicted = w->cv.evicted_messages;
    w->st.context_load_state = w->cv.last_load_state;

    /* T7-02：回声过滤观测（只有计数与短枚举，绝不含事件正文） */
    w->st.echo_enabled = w->ef.cfg.enabled;
    w->st.echo_no_command = w->ef.cfg.drop_nocmd;
    w->st.echo_seen = w->ef.seen;
    w->st.echo_dropped_echo = w->ef.dropped_echo;
    w->st.echo_dropped_nocmd = w->ef.dropped_nocmd;
    w->st.echo_kept = w->ef.kept;
    w->st.echo_kept_in_window = w->ef.kept_in_window;
    w->st.echo_window_hits = w->ef.window_hits;
    w->st.echo_state_errors = w->ef.state_errors;
    snprintf(w->st.echo_last_reason, sizeof(w->st.echo_last_reason), "%s",
             ef_reason_name(w->ef.last_reason));
    snprintf(w->st.echo_last_detail, sizeof(w->st.echo_last_detail), "%s",
             w->ef.last_reason_text);
    snprintf(w->st.echo_state_file, sizeof(w->st.echo_state_file), "%s", w->ef.state_path);

    /* T7-04：路由 / 暂存门 / 会话（只放计数与短标签，不含用户正文） */
    w->st.route_enabled = w->cfg.route_native;
    w->st.route_intents = w->cfg.route_intents;
    w->st.gate_enabled = w->ug.cfg.enabled;
    w->st.gate_debounce_ms = w->ug.cfg.debounce_ms;
    w->st.gate_max_hold_ms = w->ug.cfg.max_hold_ms;
    w->st.gate_cross_session = w->ug.cfg.cross_session;
    w->st.gate_seen = w->ug.seen;
    w->st.gate_held = w->ug.held;
    w->st.gate_released = w->ug.released;
    w->st.gate_merged = w->ug.merged;
    w->st.gate_cross_merged = w->ug.cross_merged;
    w->st.gate_dropped_dup = w->ug.dropped_dup;
    w->st.gate_restored = w->ug.restored;
    w->st.route_dup_same_event = w->dedup.n_same_event;
    w->st.route_dup_same_report = w->dedup.n_same_report;
    w->st.route_same_text_new = w->dedup.n_same_text_new_event;
    if (w->ug.last_detail[0] != '\0') {
        snprintf(w->st.gate_last_detail, sizeof(w->st.gate_last_detail), "%s",
                 w->ug.last_detail);
    }
    w->st.session_enabled = w->cs.cfg.enabled;
    w->st.session_timeout_ms = w->cs.cfg.timeout_ms;
    snprintf(w->st.session_state, sizeof(w->st.session_state), "%s",
             cs_state_name(w->cs.state));
    w->st.session_turns = w->cs.turns;
    w->st.session_followups = w->cs.followups;
    w->st.session_opened = w->cs.opened;
    w->st.session_closed = w->cs.closed_by_timeout;
    snprintf(w->st.session_detail, sizeof(w->st.session_detail), "%s", w->cs.last_detail);

    /* T8-13：会话控制中心观测（真实事件驱动的生命周期） */
    w->st.sc_enabled = w->sc.cfg.enabled;
    snprintf(w->st.sc_state, sizeof(w->st.sc_state), "%s", sc_state_name(w->sc.state));
    snprintf(w->st.sc_session, sizeof(w->st.sc_session), "%s", w->sc.session);
    snprintf(w->st.sc_request, sizeof(w->st.sc_request), "%s", w->sc.request);
    w->st.sc_request_active = w->sc.request_active;
    w->st.sc_last_wake_ms = w->sc.last_wake_ms;          /* 唤醒事件未接入前恒 0 */
    w->st.sc_last_final_ms = w->sc.last_final_ms;
    snprintf(w->st.sc_last_final_event, sizeof(w->st.sc_last_final_event), "%s",
             w->sc.last_final_event);
    snprintf(w->st.sc_last_transition, sizeof(w->st.sc_last_transition), "%s",
             w->sc.last_transition);
    w->st.sc_transitions = w->sc.transitions;
    w->st.sc_opens = w->sc.opens;
    w->st.sc_stale_callbacks = w->sc.stale_callbacks;
    w->st.sc_duplicate_events = w->sc.duplicate_events;
    w->st.sc_timeouts = w->sc.timeouts;
    w->st.sc_interrupts = w->sc.interrupts;
    w->st.sc_closes = w->sc.closes;

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

/* ---- T7-06-R1：死信（dead letter） -------------------------------------
 * 现场教训：Provider 一直 503 时，pend 事件被"永远保留"，整条流水线（包括本地指令的
 * 路由标记）全被堵死 —— 用户看到的就是"叫得醒、什么都不回答"。
 * 现在：超过 provider_retry_max + T6B_DEAD_LETTER_EXTRA 次仍然失败 → 写一条死信、
 * 提交偏移（等于跳过这一条事件），流水线继续。事件本身不丢在日志里，落在死信文件里。 */
#define T6B_DEAD_LETTER_EXTRA 3

static int commit_event(t6b_worker *w);

/*
 * 死信（dead letter）：把"已经放弃的事件"落成一行 JSON Lines，然后提交偏移跳过它。
 *
 * 历史：T7-06-R1 把整行引号换成单引号（不是合法 JSON）；T7-06-R2 把序列化与落盘
 * 抽到 dead_letter.c 并用严格转义重写；T7-08 补了墙钟、无上限尾部修复、文件级互斥、
 * close 语义。T7-09 补最后一个洞：**回滚失败不能伪装成"普通可重试失败"**。
 *
 * 三档返回（来自 dead_letter.c）在这里的分工：
 *   T6B_DL_OK         -> 记录已持久化 -> commit_event() -> 返回 0（跳过该事件）
 *   T6B_DL_E_IO       -> 没写进去且已确认回滚 -> 返回 -1（保持 pending，按原策略重试，安全）
 *   T6B_DL_E_ROLLBACK -> 写失败且回滚没确认 -> 落故障标记 -> 返回 -5（进持久化故障状态，
 *                        不再追加、不推进 offset、不静默跳过）
 *
 * 故障标记文件（dead_letter.fault.json）的作用是**跨重启**也拒绝重复追加：
 * 只要它记着同一个 event_id，下次启动读到这条事件时也不会再写一遍。
 * 处理完现场必须由人删掉该文件（文档里写清楚，绝不自动删）。
 */
static void dl_fault_marker_path(const t6b_worker *w, char *out, size_t cap)
{
    snprintf(out, cap, "%s/dead_letter.fault.json",
             (w->cfg.state_dir[0] != '\0') ? w->cfg.state_dir : T6B_STATE_DIR_DEFAULT);
}

/* ---- T7-10：故障标记必须"要么确定写下，要么明确报错" -------------------------
 * T7-09 留下的两个洞：
 *   1) 标记写入是 void 函数，write/fsync/close/rename 四步的失败全被 (void) 吞掉 ——
 *      "跨重启保护"可能根本不存在，而状态文件看起来一切正常；
 *   2) 读标记失败被当成"标记不存在" —— 把"读不出来"当成"没问题"，重启后可能对同一个
 *      尾部状态不确定的死信文件再追加一次，把不确定变成确定的损坏。
 *
 * 现在只允许两种结论：确定的"有/没有"，或者"不知道"。不知道一律按故障处理：
 * 不追加、不推进 offset、进 dead_letter_failed，等人工处理（绝不自动删标记）。
 */
#define T6B_MARKER_ABSENT   0      /* 明确没有标记 */
#define T6B_MARKER_MATCH    1      /* 存在、可读、记的正是当前 event_id */
#define T6B_MARKER_UNKNOWN (-1)    /* 存在但读不出/内容异常/无法确认 -> 当故障 */

#define T6B_MARKER_STAGE_NONE   0
#define T6B_MARKER_STAGE_OPEN   1
#define T6B_MARKER_STAGE_WRITE  2
#define T6B_MARKER_STAGE_FSYNC  3
#define T6B_MARKER_STAGE_CLOSE  4
#define T6B_MARKER_STAGE_RENAME 5

/* 状态文件里回报"跨重启保护到底有没有建立" */
#define T6B_MARKER_STATE_NONE         0   /* 本轮未涉及标记 */
#define T6B_MARKER_STATE_WRITTEN      1   /* 标记已完整落盘：保护已建立 */
#define T6B_MARKER_STATE_WRITE_FAILED 2   /* 标记没写成功：保护未建立（进程内闩锁仍有效） */
#define T6B_MARKER_STATE_UNREADABLE   3   /* 标记存在但无法确认：按故障处理 */
#define T6B_MARKER_STATE_PRESENT      4   /* 标记存在且匹配：拒绝追加 */

typedef struct t6b_marker_out {
    int       stage;        /* T6B_MARKER_STAGE_* */
    int       io_errno;     /* 平台未提供时为 0 */
    long long len;          /* 标记文件长度；stat 失败为 -1 */
} t6b_marker_out;

static const char *dl_marker_stage_name(int stage)
{
    switch (stage) {
    case T6B_MARKER_STAGE_OPEN:   return "open";
    case T6B_MARKER_STAGE_WRITE:  return "write";
    case T6B_MARKER_STAGE_FSYNC:  return "fsync";
    case T6B_MARKER_STAGE_CLOSE:  return "close";
    case T6B_MARKER_STAGE_RENAME: return "rename";
    default:                      return "none";
    }
}

/*
 * 读故障标记，三态返回：
 *    0 = 明确不存在（stat 报 ENOENT）
 *    1 = 存在且匹配当前 event_id
 *   -1 = 存在但读不出来 / 空文件 / 内容异常 / 读不全 / stat 失败原因不明
 * 只有"确实不存在"才允许 0；任何无法确认的情况都必须 -1（不许当成没标记）。
 */
static int dl_marker_probe(const t6b_worker *w, t6b_marker_out *mo)
{
    char path[T6B_PATH_MAX];
    char buf[1024];
    char needle[T6B_ID_MAX + 32];
    size_t len = 0;
    long long sz;
    int err;

    if (mo != NULL) { mo->stage = T6B_MARKER_STAGE_NONE; mo->io_errno = 0; mo->len = 0; }
    dl_fault_marker_path(w, path, sizeof(path));

    errno = 0;
    sz = wu_file_size(path);
    err = errno;
    if (mo != NULL) mo->len = sz;
    if (sz < 0) {
        /* 只有"确实不存在"才算没有标记；其它 stat 失败原因不明，一律不能当成不存在 */
        if (err == 0 || err == ENOENT) return T6B_MARKER_ABSENT;
        if (mo != NULL) { mo->stage = T6B_MARKER_STAGE_OPEN; mo->io_errno = err; }
        return T6B_MARKER_UNKNOWN;
    }

    errno = 0;
    if (wu_read_file(path, buf, sizeof(buf), &len) != 0) {
        /* 存在但读不出来（权限 / 是目录 / IO 错误）：不知道内容 = 故障 */
        if (mo != NULL) { mo->stage = T6B_MARKER_STAGE_OPEN; mo->io_errno = errno; }
        return T6B_MARKER_UNKNOWN;
    }
    if (len == 0) return T6B_MARKER_UNKNOWN;              /* 存在但是空文件：内容异常 */
    if ((long long)len < sz) return T6B_MARKER_UNKNOWN;   /* 太大读不全：无法确认 */

    /* event_id 的字符集由 reader 限定为 [A-Za-z0-9._:-]，直接按原样匹配是安全的 */
    snprintf(needle, sizeof(needle), "\"event_id\":\"%s\"", w->pend.event_id);
    if (strstr(buf, needle) != NULL) return T6B_MARKER_MATCH;
    /* 能读、但连 event_id 字段都没有：不是我们写的标记，内容异常 */
    if (strstr(buf, "\"event_id\":\"") == NULL) return T6B_MARKER_UNKNOWN;
    /* 格式正常、记的是别的事件：对当前事件"明确不阻塞" */
    return T6B_MARKER_ABSENT;
}

/*
 * 写持久化故障标记：先写 .tmp 再 rename，读到的永远是完整内容。
 * 返回 0  = write/fsync/close/rename 四步全成功，跨重启保护已建立；
 * 返回 -1 = 某一步失败，mo 里带失败步骤与 errno；调用方必须按"保护未建立"上报，
 *           绝不能假装标记已经成功。
 * close 失败时不做 rename：数据虽然很可能已经 fsync 到盘，但我们不去声称这一点。
 */
static int dl_fault_marker_write(t6b_worker *w, const char *dl_path,
                                 const t6b_dl_out *o, t6b_marker_out *mo)
{
    char path[T6B_PATH_MAX];
    char tmp[T6B_PATH_MAX + 8];
    char body[1024];
    int fd;
    int n;
    int err;

    if (mo != NULL) { mo->stage = T6B_MARKER_STAGE_NONE; mo->io_errno = 0; mo->len = 0; }
    dl_fault_marker_path(w, path, sizeof(path));
    snprintf(tmp, sizeof(tmp), "%s.tmp", path);
    n = snprintf(body, sizeof(body),
                 "{\"ts\":%lld,\"event_id\":\"%s\",\"seq\":%lu,\"attempts\":%d,"
                 "\"dead_letter_file\":\"%s\","
                 "\"io_stage\":%d,\"io_errno\":%d,"
                 "\"rollback_stage\":%d,\"rollback_errno\":%d,"
                 "\"pre_len\":%lld,\"cur_len\":%lld,\"cur_len_valid\":%d}\n",
                 wu_wall_ms(), w->pend.event_id, w->pend.seq, w->pend_attempts,
                 dl_path, o->io_stage, o->io_errno,
                 o->rollback_stage, o->rollback_errno,
                 o->pre_len, o->cur_len, o->cur_len_valid);
    if (n <= 0 || (size_t)n >= sizeof(body)) {
        if (mo != NULL) { mo->stage = T6B_MARKER_STAGE_WRITE; mo->io_errno = EINVAL; }
        return -1;
    }

    errno = 0;
    fd = wu_open_wo(tmp);
    if (fd < 0) {
        err = errno;
        if (mo != NULL) { mo->stage = T6B_MARKER_STAGE_OPEN; mo->io_errno = err; }
        return -1;
    }
    errno = 0;
    if (wu_write_all(fd, body, (size_t)n) != 0) {
        err = errno;
        (void)wu_close(fd);
        (void)wu_unlink(tmp);
        if (mo != NULL) { mo->stage = T6B_MARKER_STAGE_WRITE; mo->io_errno = err; }
        return -1;
    }
    errno = 0;
    if (wu_fsync(fd) != 0) {
        err = errno;
        (void)wu_close(fd);
        (void)wu_unlink(tmp);
        if (mo != NULL) { mo->stage = T6B_MARKER_STAGE_FSYNC; mo->io_errno = err; }
        return -1;
    }
    errno = 0;
    if (wu_close(fd) != 0) {
        err = errno;
        (void)wu_unlink(tmp);
        if (mo != NULL) { mo->stage = T6B_MARKER_STAGE_CLOSE; mo->io_errno = err; }
        return -1;
    }
    errno = 0;
    if (wu_rename_replace(tmp, path) != 0) {
        err = errno;
        (void)wu_unlink(tmp);
        if (mo != NULL) { mo->stage = T6B_MARKER_STAGE_RENAME; mo->io_errno = err; }
        return -1;
    }
    if (mo != NULL) { mo->stage = T6B_MARKER_STAGE_NONE; mo->io_errno = 0; mo->len = (long long)n; }
    return 0;
}

static int dead_letter_event(t6b_worker *w)
{
    char path[T6B_PATH_MAX];
    char line[T6B_DL_LINE_MAX];
    t6b_dl_rec rec;
    t6b_dl_out dl;
    t6b_marker_out mk;
    size_t n;
    int mrc;
    int rc;

    snprintf(path, sizeof(path), "%s/dead_letter.jsonl",
             (w->cfg.state_dir[0] != '\0') ? w->cfg.state_dir : T6B_STATE_DIR_DEFAULT);

    /* T7-10：先三态判断故障标记。只有"明确不存在"才允许继续追加；
     * "存在且匹配"拒绝追加；"存在但无法确认"同样拒绝（读失败 ≠ 没有标记）。 */
    memset(&mk, 0, sizeof(mk));
    mrc = dl_marker_probe(w, &mk);
    if (mrc != T6B_MARKER_ABSENT) {
        snprintf(w->st.dl_event_id, sizeof(w->st.dl_event_id), "%s", w->pend.event_id);
        w->st.dead_letter_failed = 1;
        w->st.dl_marker_stage = mk.stage;
        w->st.dl_marker_errno = mk.io_errno;
        snprintf(w->st.state, sizeof(w->st.state), "dead_letter_failed");
        if (mrc == T6B_MARKER_MATCH) {
            w->st.dl_marker_state = T6B_MARKER_STATE_PRESENT;
            always("dead-letter: refusing to append event %s again: unresolved fault marker "
                   "(%s/dead_letter.fault.json) from a previous rollback failure",
                   w->pend.event_id, (w->cfg.state_dir[0] != '\0') ? w->cfg.state_dir : T6B_STATE_DIR_DEFAULT);
        } else {
            w->st.dl_marker_state = T6B_MARKER_STATE_UNREADABLE;
            t6b_status_note_error(&w->st,
                                  "dead-letter fault marker exists but cannot be confirmed "
                                  "(stage=%s errno=%d len=%lld)",
                                  dl_marker_stage_name(mk.stage), mk.io_errno, mk.len);
            always("dead-letter: fault marker exists but CANNOT BE CONFIRMED "
                   "(stage=%s errno=%d len=%lld) -> treated as a fault: append refused, "
                   "offset NOT advanced, event %s stays pending; repair or remove the marker "
                   "by hand (it is never deleted automatically)",
                   dl_marker_stage_name(mk.stage), mk.io_errno, mk.len, w->pend.event_id);
        }
        return -5;
    }

    memset(&rec, 0, sizeof(rec));
    rec.ts_ms = wu_wall_ms();                 /* T7-08：墙钟（Epoch ms），不是 CLOCK_MONOTONIC */
    rec.event_id = w->pend.event_id;
    rec.event_id_len = strlen(w->pend.event_id);
    rec.seq = w->pend.seq;
    rec.attempts = w->pend_attempts;
    rec.error_class = w->ds.last_class;
    rec.error_class_len = strlen(w->ds.last_class);
    rec.error_bytes = (int)strlen(w->pend_error);

    n = t6b_dl_format(line, sizeof(line), &rec);
    if (n == 0) {
        /* 格式化放不下：宁可不落盘也不写坏行（不推进 offset，继续重试） */
        always("dead-letter: record for event %s does not fit in %d bytes; stays pending",
               w->pend.event_id, (int)sizeof(line));
        return -1;
    }

    memset(&dl, 0, sizeof(dl));
    rc = t6b_dl_append(path, line, n, &dl);

    if (rc == T6B_DL_E_ROLLBACK) {
        /* 文件尾部状态不确定：写故障标记（供重启后与人工处理），绝不重试追加 */
        w->dl_out = dl;
        snprintf(w->st.state, sizeof(w->st.state), "dead_letter_failed");
        w->st.dead_letter_failed = 1;
        snprintf(w->st.dl_event_id, sizeof(w->st.dl_event_id), "%s", w->pend.event_id);
        w->st.dl_io_stage = dl.io_stage;
        w->st.dl_io_errno = dl.io_errno;
        w->st.dl_rollback_stage = dl.rollback_stage;
        w->st.dl_rollback_errno = dl.rollback_errno;
        w->st.dl_pre_len = dl.pre_len;
        w->st.dl_cur_len = dl.cur_len;
        w->st.dl_cur_len_valid = dl.cur_len_valid;
        t6b_status_note_error(&w->st,
                              "dead-letter rollback failed: io_stage=%d io_errno=%d "
                              "rollback_stage=%d rollback_errno=%d pre_len=%lld cur_len=%lld",
                              dl.io_stage, dl.io_errno, dl.rollback_stage, dl.rollback_errno,
                              dl.pre_len, dl.cur_len);
        always("dead-letter: ROLLBACK FAILED for event %s (seq=%lu attempts=%d) "
               "io_stage=%d io_errno=%d rollback_stage=%d rollback_errno=%d "
               "file=%s pre_len=%lld cur_len=%lld(cur_len_valid=%d) "
               "-> persistent fault state; offset NOT advanced, append NOT retried",
               w->pend.event_id, w->pend.seq, w->pend_attempts,
               dl.io_stage, dl.io_errno, dl.rollback_stage, dl.rollback_errno,
               path, dl.pre_len, dl.cur_len, dl.cur_len_valid);
        if (dl_fault_marker_write(w, path, &dl, &mk) == 0) {
            w->st.dl_marker_state = T6B_MARKER_STATE_WRITTEN;
            always("dead-letter: fault marker written for event %s at %s "
                   "-> cross-restart protection ARMED (a restart will refuse to append it again)",
                   w->pend.event_id,
                   (w->cfg.state_dir[0] != '\0') ? w->cfg.state_dir : T6B_STATE_DIR_DEFAULT);
        } else {
            /* T7-10：写不进去就明说 —— 进程内闩锁仍然有效，但跨重启保护没建立 */
            w->st.dl_marker_state = T6B_MARKER_STATE_WRITE_FAILED;
            w->st.dl_marker_stage = mk.stage;
            w->st.dl_marker_errno = mk.io_errno;
            t6b_status_note_error(&w->st,
                                  "dead-letter fault marker write failed (stage=%s errno=%d): "
                                  "cross-restart protection NOT established",
                                  dl_marker_stage_name(mk.stage), mk.io_errno);
            always("dead-letter: FAULT MARKER WRITE FAILED for event %s (stage=%s errno=%d path=%s) "
                   "-> cross-restart protection NOT established. This process stays latched "
                   "(no further append, no offset advance); a restart would lose the guard, so "
                   "create/repair the marker by hand before restarting",
                   w->pend.event_id, dl_marker_stage_name(mk.stage), mk.io_errno,
                   (w->cfg.state_dir[0] != '\0') ? w->cfg.state_dir : T6B_STATE_DIR_DEFAULT);
        }
        return -5;
    }

    if (rc != T6B_DL_OK) {
        /* 已确认回滚（或根本没写进去）：可以安全重试同一条事件 */
        w->dl_out = dl;
        always("dead-letter: append(%s) failed io_stage=%d errno=%d; event %s stays pending "
               "(rolled back to pre_len=%lld, offset NOT advanced)",
               path, dl.io_stage, dl.io_errno, w->pend.event_id, dl.pre_len);
        return -1;
    }

    if (dl.repaired_bytes > 0)
        always("dead-letter: repaired %lld trailing byte(s) of an incomplete record in %s",
               dl.repaired_bytes, path);
    if (dl.close_failed)
        always("dead-letter: record for event %s is durable (fsync ok) but close() failed errno=%d; "
               "NOT retried (offset advances)",
               w->pend.event_id, dl.close_errno);

    if (commit_event(w) != 0) return -2;
    always("dead-letter: event %s skipped after %d attempts (%s); pipeline continues",
           w->pend.event_id, w->pend_attempts, w->ds.last_class);
    return 0;
}

#if defined(T6B_DL_TESTING) && defined(T6B_DL_TEST_ENV)
/*
 * T7-10 主机自检：故障标记可靠性（只在测试构建里存在，生产 ELF 无此符号）。
 * 用法：ai_worker.faultmodel.exe --marker-selftest <fixture_root>
 * 每个用例一个子目录，由测试脚本预先造好（含病理样本，例如把标记本身做成目录来模拟
 * "存在但读不出来"）。这里只做断言并打印，不创建目录、不碰设备。
 */
static int dl_mk_selftest(const char *root)
{
    static t6b_worker sw;
    static t6b_marker_out mk;
    static t6b_dl_out dl;
    static const struct { const char *dir; int expect; } probe_cases[] = {
        { "probe_absent",     T6B_MARKER_ABSENT  },
        { "probe_match",      T6B_MARKER_MATCH   },
        { "probe_foreign",    T6B_MARKER_ABSENT  },
        { "probe_unreadable", T6B_MARKER_UNKNOWN },
        { "probe_empty",      T6B_MARKER_UNKNOWN },
        { "probe_garbage",    T6B_MARKER_UNKNOWN }
    };
    static const struct { const char *dir; int stage; } write_cases[] = {
        { "write_ok",          T6B_MARKER_STAGE_NONE   },
        { "write_fail_open",   T6B_MARKER_STAGE_OPEN   },
        { "write_fail_rename", T6B_MARKER_STAGE_RENAME }
    };
    char path[T6B_PATH_MAX];
    int pass = 0;
    int failn = 0;
    int rc;
    int i;

    memset(&sw, 0, sizeof(sw));
    memset(&dl, 0, sizeof(dl));
    dl.io_stage = 2;              /* T6B_DL_STAGE_FSYNC */
    dl.io_errno = 5;
    dl.rollback_stage = 4;        /* T6B_DL_STAGE_TRUNC */
    dl.rollback_errno = 5;
    dl.pre_len = 99;
    dl.cur_len = 123;
    dl.cur_len_valid = 1;
    snprintf(sw.pend.event_id, sizeof(sw.pend.event_id), "%s", "e-mk");
    sw.pend.seq = 7;
    sw.pend_attempts = 4;

    printf("=== T7-10 fault marker selftest (root=%s) ===\n", root);

    /* [1] 读取三态 */
    for (i = 0; i < (int)(sizeof(probe_cases) / sizeof(probe_cases[0])); i++) {
        snprintf(sw.cfg.state_dir, sizeof(sw.cfg.state_dir), "%s/%s", root, probe_cases[i].dir);
        memset(&mk, 0, sizeof(mk));
        rc = dl_marker_probe(&sw, &mk);
        printf("[marker] probe %-16s -> %2d (expect %2d) stage=%s errno=%d len=%lld %s\n",
               probe_cases[i].dir, rc, probe_cases[i].expect,
               dl_marker_stage_name(mk.stage), mk.io_errno, mk.len,
               (rc == probe_cases[i].expect) ? "OK" : "MISMATCH");
        if (rc == probe_cases[i].expect) pass++; else failn++;
    }

    /* [2] 写入：成功必须能读回来（round trip），失败必须报出失败步骤且不留假标记 */
    for (i = 0; i < (int)(sizeof(write_cases) / sizeof(write_cases[0])); i++) {
        snprintf(sw.cfg.state_dir, sizeof(sw.cfg.state_dir), "%s/%s", root, write_cases[i].dir);
        memset(&mk, 0, sizeof(mk));
        rc = dl_fault_marker_write(&sw, "dead_letter.jsonl", &dl, &mk);
        printf("[marker] write %-16s -> %2d (expect %2d) stage=%s errno=%d len=%lld\n",
               write_cases[i].dir, rc, (write_cases[i].stage == T6B_MARKER_STAGE_NONE) ? 0 : -1,
               dl_marker_stage_name(mk.stage), mk.io_errno, mk.len);
        if (write_cases[i].stage == T6B_MARKER_STAGE_NONE) {
            int ok = (rc == 0);
            printf("[marker]   expect success/stage=none ... %s\n", ok ? "OK" : "MISMATCH");
            if (ok) pass++; else failn++;
            memset(&mk, 0, sizeof(mk));
            rc = dl_marker_probe(&sw, &mk);
            printf("[marker]   round-trip probe -> %d (expect %d, MATCH) ... %s\n",
                   rc, T6B_MARKER_MATCH, (rc == T6B_MARKER_MATCH) ? "OK" : "MISMATCH");
            if (rc == T6B_MARKER_MATCH) pass++; else failn++;
        } else {
            int ok = (rc == -1 && mk.stage == write_cases[i].stage);
            printf("[marker]   expect failure/stage=%s ... %s\n",
                   dl_marker_stage_name(write_cases[i].stage), ok ? "OK" : "MISMATCH");
            if (ok) pass++; else failn++;
            dl_fault_marker_path(&sw, path, sizeof(path));
            if (write_cases[i].stage == T6B_MARKER_STAGE_OPEN) {
                int absent = (wu_file_size(path) < 0);
                printf("[marker]   no fake marker file left ... %s\n", absent ? "OK" : "MISMATCH");
                if (absent) pass++; else failn++;
            }
        }
    }

    printf("RESULT: marker selftest pass=%d fail=%d\n", pass, failn);
    return (failn == 0) ? 0 : 1;
}
#endif

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
    int nmsg = 0;
    char merr[CV_ERR_MAX];

    w->pend_attempts++;

    /* T7-01：先把"历史 + 本轮 user"拼成完整 messages 数组，再交给 Provider。
     * T7-03：system prompt 固定放在 messages[0]（不在历史里，因此不会被淘汰）；
     *        上下文关闭时 nmsg==1（只有本轮），行为与 T5-06C 完全一致。 */
    merr[0] = '\0';
    nmsg = cv_build_messages(&w->cv,
                             (w->cfg.deepseek.system_prompt[0] != '\0')
                                 ? w->cfg.deepseek.system_prompt
                                 : T6B_DS_SYSTEM_PROMPT_DEFAULT,
                             w->pend.text, w->msg_json, sizeof(w->msg_json),
                             merr, sizeof(merr));
    if (nmsg <= 0) {
        w->st.provider_err++;
        snprintf(w->pend_error, sizeof(w->pend_error), "context build failed: %s",
                 merr[0] != '\0' ? merr : "no messages");
        t6b_status_note_error(&w->st, "context build failed: %s",
                              merr[0] != '\0' ? merr : "no messages");
        return -1;
    }
    rc = t6b_provider_complete_msgs(&w->prov, w->msg_json, w->pend.text, &rep);

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
              "latency=%lldms reply_bytes=%d msgs=%d (attempt %d)",
              w->pend.event_id, w->pend.seq, w->pend.pid, w->pend.text_bytes,
              pname, rep.latency_ms, rep.text_bytes, nmsg, w->pend_attempts);
        if (w->prov_deepseek) {
            /* 真实调用的可核对事实：模型、HTTP 状态、curl 结果、耗时、响应字节数。
             * 不含 key、不含请求体、不含模型原文。 */
            always("deepseek ok: model=%s http=%d curl=%d latency=%lldms resp_bytes=%llu "
                   "reply_bytes=%d event=%s",
                   w->ds.cfg.model, w->ds.last_http_status, w->ds.last_curl_code,
                   w->ds.last_latency_ms, w->ds.last_resp_bytes, rep.text_bytes,
                   w->pend.event_id);
        }
        /* T7-03：每轮可核对的请求结构（不含正文）：system 是否在首位、各角色条数 */
        always("request shape: event=%s system=1(role=system,bytes=%d) history_msgs=%d "
               "user_msgs=1 req_msgs=%d",
               w->pend.event_id,
               (int)strlen((w->cfg.deepseek.system_prompt[0] != '\0')
                               ? w->cfg.deepseek.system_prompt
                               : T6B_DS_SYSTEM_PROMPT_DEFAULT),
               (nmsg > 0) ? nmsg - 1 : 0, nmsg);
        if (w->pend_stuck) {
            always("pending event cleared: id=%s after %d attempts; resuming normal pace",
                   w->pend.event_id, w->pend_attempts);
        }
        /* T7-01：每轮可核对的请求规模（历史几条 + 本轮 1 条），mock/真实 Provider 都打 */
        always("provider reply: event=%s provider=%s req_msgs=%d history_msgs=%d "
               "latency=%lldms reply_bytes=%d",
               w->pend.event_id, pname, nmsg, (nmsg > 0) ? nmsg - 1 : 0,
               rep.latency_ms, rep.text_bytes);
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
                /* T7-02：把"我刚让它播的文本"登记进回声过滤器的候选集 */
                ef_note_enqueue(&w->ef, w->pend.event_id, rep.text, wu_wall_ms());
                /* T7-04：回答已入队 = 会话进入 SPEAKING，播报结束后等用户追问 */
                (void)cs_on_queued(&w->cs, wu_now_ms());
                /* T8-13：真实事件 -> 会话控制中心（TTS 生命周期开始） */
                (void)sc_on_tts_queued(&w->sc, w->pend.event_id, wu_now_ms());
            } else if (q == 0) {
                if (w->cfg.tts_queue[0] != '\0') {
                    w->st.tts_skipped++;
                    /* P1-2：幂等命中必须能在证据里看到（queue/inflight/done/failed 任一路径） */
                    always("tts skip (already queued/played): event=%s reply_bytes=%d queue=%s",
                           w->pend.event_id, rep.text_bytes, w->cfg.tts_queue);
                    /* 幂等命中：这条回答本来就在队列/已播过，同样作为回声候选 */
                    ef_note_enqueue(&w->ef, w->pend.event_id, rep.text, wu_wall_ms());
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
        if (w->cfg.tts_queue[0] == '\0') {
            /* 没有 TTS 队列 = 不会有播报：会话直接进入"等下一句"，避免卡在 SPEAKING */
            (void)cs_on_play_idle(&w->cs, wu_now_ms());
        }
        {
            int cr = commit_event(w);
            if (cr == -2) return -4;      /* 指纹推进失败：致命 */
            if (cr != 0) return -3;       /* 状态落盘失败 */
        }
        /*
         * T7-01：上下文提交放在"偏移已持久化"之后。
         *   - 只有走到这里才说明本轮真的成功了（Provider OK + 回答已入队 + 偏移已落盘）；
         *   - 放在偏移之后，是为了避免"提交失败 -> 重试同一条事件 -> 同一轮被追加两次"；
         *   - 崩溃窗口的代价只是这一轮不进历史，绝不会写进错误内容。
         */
        if (w->cv.cfg.enabled && rep.text_bytes > 0) {
            int cvc = cv_commit_turn(&w->cv, w->pend.text, rep.text);
            if (cvc == 0) {
                always("context commit: event=%s turns=%d msgs=%d file=%s",
                       w->pend.event_id, cv_turn_count(&w->cv), w->cv.count,
                       w->cv.cfg.file);
            } else if (cvc > 0) {
                always("context commit saved in memory only (write failed): event=%s msgs=%d "
                       "errors=%llu", w->pend.event_id, w->cv.count, w->cv.save_errors);
            } else {
                always("context commit rejected (invalid text): event=%s reply_bytes=%d",
                       w->pend.event_id, rep.text_bytes);
            }
        }
        reply_log_append(w, &rep);        /* 偏移已持久化，再记回答（宁可少一行，不重复） */
        return 0;
    }

    if (rep.status == T6B_P_TIMEOUT) {
        w->st.provider_timeout++;
        sc_note_timeout(&w->sc);          /* T8-13：请求超时计数（请求仍在重试，不迁移状态） */
        snprintf(w->pend_error, sizeof(w->pend_error), "%s", rep.message);
        t6b_status_note_error(&w->st, "provider timeout: %s", rep.message);
    } else {
        w->st.provider_err++;
        sc_note_timeout(&w->sc);          /* T8-13：请求失败计数 */
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
            always("event id=%s stuck after %d attempts (%s)", w->pend.event_id,
                   w->pend_attempts, w->pend_error);
        }
        /* T7-06-R1：stuck 之后再给 EXTRA 次机会，仍失败就进死信并跳过，
         * 否则一个 503 会把后面所有事件（包括本地指令路由）一起堵死。 */
        if (w->cfg.provider_dead_letter &&
            w->pend_attempts >= w->cfg.provider_retry_max + T6B_DEAD_LETTER_EXTRA) {
            int drc = dead_letter_event(w);
            if (drc == 0) return -3;      /* 死信已落盘、偏移已提交：跳过该事件 */
            if (drc == -2) return -4;     /* 指纹推进失败：致命 */
            /* T7-09：-5 表示"写失败且回滚没确认"——绝不能当成可重试失败再写一次 */
            if (drc == -5) return -5;
            return -2;
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

/* ---------------- T7-04：路由 / 暂存门 / 会话 ---------------- */

static void tts_request_stop(t6b_worker *w, const char *why);

static int route_intent_enabled(const t6b_worker *w, ir_intent it)
{
    int bit = ir_route_bit(it);

    if (bit == 0) return 0;
    return (w->cfg.route_intents & bit) != 0;
}

/* UTF-8 安全截断：绝不把多字节字符切开（否则 text_chars 与上下文校验都会错） */
static void utf8_copy_trunc(char *dst, size_t cap, const char *src)
{
    size_t n;

    if (dst == NULL || cap == 0) return;
    if (src == NULL) { dst[0] = '\0'; return; }
    n = strlen(src);
    if (n > cap - 1) {
        n = cap - 1;
        while (n > 0 && ((unsigned char)src[n] & 0xC0) == 0x80) n--;
    }
    memcpy(dst, src, n);
    dst[n] = '\0';
}

/*
 * 写"原厂放行"标记：TTS 守卫在 :core 里读它，用来判断某条原厂回答对应的是一条
 * route=native 的指令，于是放行而不是屏蔽。
 * 文件必须 0644（Worker 以 root 跑，:core 以 system 跑）；内容只有 session/意图，没有正文。
 *
 * T7-05：返回值必须可信。任一步失败（open/write/fsync/fchmod/rename/chmod/回读校验）
 * 都返回 -1，调用方据此**回退到 AI 回答**——绝不允许出现"Worker 以为放行了、
 * 守卫却把原厂回答拦掉"这种两边都没有回答的静默故障。
 * 返回值：0 = 标记已生效且回读一致；-1 = 失败（原因写在 st.route_publish_err）。
 */
static int route_publish(t6b_worker *w, const char *session, const char *event_id,
                         const ir_result *ir)
{
    char body[512];
    char tmp[T6B_PATH_MAX + 8];
    char esc_sess[(T6B_ID_MAX + 1) * 2];
    char esc_ev[(T6B_ID_MAX + 1) * 2];
    char check[64];
    char back[512];
    size_t back_len = 0;
    long long now = wu_wall_ms();
    long long seq;
    int fd;
    int n;
    int attempt;

    w->st.route_publish_err[0] = '\0';
    if (w->route_publish_path[0] == '\0') {
        /* 路由开着但标记路径为空 = 配置错误：不能"假装放行"，直接失败让调用方回退 */
        snprintf(w->st.route_publish_err, sizeof(w->st.route_publish_err), "no publish path");
        return -1;
    }

    seq = ++w->st.route_seq;
    wu_json_escape(esc_sess, sizeof(esc_sess), session);
    wu_json_escape(esc_ev, sizeof(esc_ev), event_id);
    n = snprintf(body, sizeof(body),
                 "{\"version\":2,\"seq\":%lld,\"wall_ms\":%lld,\"exp_ms\":%lld,"
                 "\"asr_session\":\"%s\",\"event_id\":\"%s\",\"intent\":\"%s\",\"rule\":\"%s\"}\n",
                 seq, now, now + T6B_ROUTE_SLACK_MS, esc_sess, esc_ev,
                 ir_intent_name(ir->intent), ir->rule);
    if (n < 0 || (size_t)n >= sizeof(body)) {
        snprintf(w->st.route_publish_err, sizeof(w->st.route_publish_err), "body too long");
        return -1;
    }
    snprintf(check, sizeof(check), "\"seq\":%lld", seq);
    snprintf(tmp, sizeof(tmp), "%s.tmp", w->route_publish_path);

    for (attempt = 1; attempt <= T7B_PUBLISH_TRIES; attempt++) {
        if (attempt > 1) {
            w->st.route_publish_retry++;
            (void)wu_sleep_ms(20);
        }
        if (attempt > 1) seq = w->st.route_seq;   /* 重试沿用同一个 seq，守卫不会看到跳号 */

        fd = wu_open_wo(tmp);
        if (fd < 0) {
            snprintf(w->st.route_publish_err, sizeof(w->st.route_publish_err),
                     "open tmp: %s", strerror(errno));
            continue;
        }
        if (wu_write_all(fd, body, (size_t)n) != 0) {
            snprintf(w->st.route_publish_err, sizeof(w->st.route_publish_err),
                     "write tmp: %s", strerror(errno));
            wu_close(fd);
            (void)wu_unlink(tmp);
            continue;
        }
        if (wu_fsync(fd) != 0) {
            snprintf(w->st.route_publish_err, sizeof(w->st.route_publish_err),
                     "fsync tmp: %s", strerror(errno));
            wu_close(fd);
            (void)wu_unlink(tmp);
            continue;
        }
#ifndef _WIN32
        /* 权限必须在 rename 之前设好：守卫是 system 用户，rename 之后再 chmod 存在
         * "短暂 0600" 的窗口，而且 chmod 失败时文件已经就位、错得更隐蔽。 */
        if (fchmod(fd, 0644) != 0) {
            snprintf(w->st.route_publish_err, sizeof(w->st.route_publish_err),
                     "fchmod tmp: %s", strerror(errno));
            wu_close(fd);
            (void)wu_unlink(tmp);
            continue;
        }
#endif
        if (wu_close(fd) != 0) {
            snprintf(w->st.route_publish_err, sizeof(w->st.route_publish_err),
                     "close tmp: %s", strerror(errno));
            (void)wu_unlink(tmp);
            continue;
        }
        if (wu_rename_replace(tmp, w->route_publish_path) != 0) {
            snprintf(w->st.route_publish_err, sizeof(w->st.route_publish_err),
                     "rename: %s", strerror(errno));
            (void)wu_unlink(tmp);
            continue;
        }
#ifndef _WIN32
        /* rename 之后按路径再确认一次：SELinux/挂载策略可能让 rename 成功但属性不对 */
        {
            struct stat sb;

            if (chmod(w->route_publish_path, 0644) != 0 ||
                stat(w->route_publish_path, &sb) != 0 ||
                (sb.st_mode & 0777) != 0644) {
                snprintf(w->st.route_publish_err, sizeof(w->st.route_publish_err),
                         "chmod/stat final: %s mode=%04o", strerror(errno),
                         (unsigned)((stat(w->route_publish_path, &sb) == 0) ?
                                    (sb.st_mode & 0777) : 0));
                continue;
            }
        }
#endif
        /* 回读校验：内容里必须能看到本次 seq —— 覆盖"写成功但被别的进程覆盖/清理"的情况 */
        back[0] = '\0';
        if (wu_read_file(w->route_publish_path, back, sizeof(back), &back_len) != 0 ||
            strstr(back, check) == NULL || strstr(back, esc_sess) == NULL) {
            snprintf(w->st.route_publish_err, sizeof(w->st.route_publish_err),
                     "verify readback failed (len=%d)", (int)back_len);
            continue;
        }
        w->st.route_publish_ok++;
        return 0;
    }

    w->st.route_publish_fail++;
    return -1;
}

static void uttq_push(t6b_worker *w, const ug_out *u, unsigned long seq)
{
    t6b_utt *slot;
    int idx;

    if (w->uttq_count >= T6B_UTT_QUEUE) {
        /* 正常语音下不会满（最多两条：一条旧的 + 一条新的）；真满了就丢最新的一条并计数，
         * 绝不覆盖还没处理的指令 */
        w->uttq_dropped++;
        always("utterance queue overflow (cap=%d): drop event=%s text_bytes=%d",
               T6B_UTT_QUEUE, u->first_event_id, (int)strlen(u->text));
        return;
    }
    idx = (w->uttq_head + w->uttq_count) % T6B_UTT_QUEUE;
    slot = &w->uttq[idx];
    memset(slot, 0, sizeof(*slot));
    utf8_copy_trunc(slot->text, sizeof(slot->text), u->text);
    snprintf(slot->event_id, sizeof(slot->event_id), "%s", u->first_event_id);
    snprintf(slot->session, sizeof(slot->session), "%s", u->session);
    slot->seq = seq;
    slot->merges = u->merges;
    slot->held_ms = u->held_ms;
    snprintf(slot->why, sizeof(slot->why), "%s", u->why);
    w->uttq_count++;
}

/*
 * 从暂存队列取一条"完整 utterance"，此时才做本地意图判定（T7-05）。
 * 返回 1 = 已按 route=native 交给原厂（不建 pend，不需要模型）；
 *      0 = 已建 pend（route=ai，等 Provider 处理）；
 *     -1 = 队列空。
 *
 * 为什么要等到这里才判定：ASR 经常把一句话拆成两条 final
 * （"音量调到" + "百分之十"）。如果在 ug_feed 之前就判定，第一段可能已经命中
 * 本地路由被提前提交，后半句就永远跟不上，用户听到的是"调音量到了百分之十"这种
 * 中间态。放到暂存门放出**完整 utterance**之后判定，才保证"一段话只判一次、
 * 只执行一次"，也不会出现原厂和 AI 双回答。
 */
static int uttq_pop_to_pend(t6b_worker *w, long long now_ms)
{
    t6b_utt *slot;
    size_t n;
    ir_result ir;

    if (w->uttq_count <= 0) return -1;
    slot = &w->uttq[w->uttq_head];
    w->uttq_head = (w->uttq_head + 1) % T6B_UTT_QUEUE;
    w->uttq_count--;

    /* ---- T7-05 ①：完整 utterance 到手，先看能不能交给原厂 ---- */
    if (w->cfg.route_native && ir_classify(slot->text, &ir) &&
        route_intent_enabled(w, ir.intent)) {
        /* T7-05-R1 ①：识别到意图 != 参数完整。
         * "音量调到百分之" 这种（数量被 ASR 截断）不允许写放行标记，否则原厂会按
         * 自己的理解把音量设成 100。改成交给模型澄清，并且**不**记入 last_native_text，
         * 免得后面那句完整的指令被当成重复吞掉。 */
        if (!ir.complete) {
            w->st.route_incomplete_ai++;
            snprintf(w->st.route_last, sizeof(w->st.route_last),
                     "route=ai (incomplete %s note=%s) event=%s session=%s",
                     ir_intent_name(ir.intent), ir.note[0] != '\0' ? ir.note : "-",
                     slot->event_id, slot->session);
            always("route=ai INCOMPLETE intent=%s rule=%s note=%s event=%s session=%s "
                   "text_bytes=%d (parameters not complete; ask the model instead of "
                   "executing a partial command)",
                   ir_intent_name(ir.intent), ir.rule,
                   ir.note[0] != '\0' ? ir.note : "-", slot->event_id, slot->session,
                   (int)strlen(slot->text));
        } else {
            /* T7-05-R2 ②：重复判定改成"事件身份"，不再用文本 + 时间窗。
             * 真机 537 条 asr_final 全量统计：event_id 0 条重复、session 每次识别
             * 一个、seq 单调。所以：
             *   event_id 相同 / (session+seq+文本) 相同 -> 同一条 final 重复投递；
             *   其余（含"文本一模一样但 event_id 不同"）一律执行。
             * 这样"用户连说两遍调大音量"、"播放周杰伦" -> "播放周杰伦的新歌" 都不会
             * 被吞；代价是原厂把同一句话重新识别成新 final 时会多答一次，报告里
             * 明确写明了这个限制。 */
            t7dup_key dk;
            t7dup_verdict dv;

            t7dup_key_set(&dk, slot->event_id, slot->session, slot->text, (long long)slot->seq);
            dv = t7dup_check(&w->dedup, &dk);
            if (dv != T7DUP_NEW) {
                w->st.route_dup_dropped++;
                always("route=native SKIP duplicate (%s): event=%s session=%s seq=%lu "
                       "intent=%s text_bytes=%d",
                       t7dup_verdict_name(dv), slot->event_id, slot->session, slot->seq,
                       ir_intent_name(ir.intent), (int)strlen(slot->text));
                t7dup_note(&w->dedup, &dk);
                return 1;
            }
            if (route_publish(w, slot->session, slot->event_id, &ir) == 0) {
                w->st.route_native++;
                t7dup_note(&w->dedup, &dk);
                /* 下面三个字段只用于状态展示（去重已改成事件身份判定） */
                utf8_copy_trunc(w->last_native_text, sizeof(w->last_native_text), slot->text);
                w->last_native_ms = now_ms;
                w->last_native_intent = (int)ir.intent;
                switch (ir.intent) {
                case IR_VOLUME:     w->st.route_volume++; break;
                case IR_WEATHER:    w->st.route_weather++; break;
                case IR_SCREEN_OFF: w->st.route_screen_off++; break;
                case IR_SCREEN_ON:  w->st.route_screen_on++; break;
                case IR_MEDIA:      w->st.route_media++; break;
                case IR_STOP:       w->st.route_stop++; break;
                case IR_TIME:       w->st.route_time++; break;
                default: break;
                }
                if (ir.intent == IR_STOP) {
                    /* 打断类：先把声音停掉，再让原厂回一句 */
                    tts_request_stop(w, "route=native intent=stop");
                }
                snprintf(w->st.route_last, sizeof(w->st.route_last),
                         "route=native intent=%s rule=%s arg=%s session=%s seq=%lld",
                         ir_intent_name(ir.intent), ir.rule, ir.arg, slot->session,
                         w->st.route_seq);
                always("route=native intent=%s rule=%s arg=%s event=%s seq=%lu session=%s "
                       "text_bytes=%d merges=%d held_ms=%lld publish_seq=%lld "
                       "(factory answers; AI worker does not)",
                       ir_intent_name(ir.intent), ir.rule, ir.arg, slot->event_id, slot->seq,
                       slot->session, (int)strlen(slot->text), slot->merges, slot->held_ms,
                       w->st.route_seq);
                return 1;
            } else {
                /* ---- T7-05 ②：标记没写成功 -> 不能静默跳过 AI，改走模型 ---- */
                w->st.route_fallback_ai++;
                always("route=native FALLBACK to ai: intent=%s event=%s session=%s reason=%s "
                       "(guard would drop the factory answer, so the model must answer)",
                       ir_intent_name(ir.intent), slot->event_id, slot->session,
                       w->st.route_publish_err[0] != '\0' ? w->st.route_publish_err : "publish failed");
            }
        }
    }

    memset(&w->pend, 0, sizeof(w->pend));
    w->pend.version = 1;
    snprintf(w->pend.rec, sizeof(w->pend.rec), "%s", "asr_final");
    snprintf(w->pend.event_type, sizeof(w->pend.event_type), "%s", "asr_final");
    snprintf(w->pend.event_id, sizeof(w->pend.event_id), "%s", slot->event_id);
    snprintf(w->pend.session_id, sizeof(w->pend.session_id), "%s", slot->session);
    snprintf(w->pend.text, sizeof(w->pend.text), "%s", slot->text);
    n = strlen(w->pend.text);
    w->pend.text_bytes = (int)n;
    w->pend.text_chars = wu_utf8_count(w->pend.text, n);
    w->pend.is_final = 1;
    w->pend.seq = slot->seq;
    w->pend.received_at_ms = now_ms;
    w->pend.recv_at_ms = now_ms;

    w->have_pend = 1;
    w->pend_attempts = 0;
    w->pend_stuck = 0;
    w->pend_backoff_ms = 0;
    w->pend_next_ms = 0;
    w->pend_error[0] = '\0';

    /* T8-13：真实事件 -> 会话控制中心。route=ai 的 pend 建立即登记 AI 请求；
     * 若上一请求尚未终结，这里会打断并顶替（sc_on_submit 内部处理 stale）。 */
    (void)sc_on_session_text(&w->sc, slot->session, slot->event_id, now_ms);
    (void)sc_on_submit(&w->sc, slot->event_id, now_ms);
    (void)cs_on_submit(&w->cs, now_ms);
    w->st.route_ai++;
    snprintf(w->st.route_last, sizeof(w->st.route_last),
             "route=ai event=%s session=%s merges=%d held_ms=%lld why=%s",
             slot->event_id, slot->session, slot->merges, slot->held_ms, slot->why);
    always("route=ai event=%s seq=%lu session=%s merges=%d held_ms=%lld why=%s text_bytes=%d "
           "session_state=%s",
           slot->event_id, slot->seq, slot->session, slot->merges, slot->held_ms, slot->why,
           (int)n, cs_state_name(w->cs.state));
    return 0;
}

/* 播报状态轮询：playing -> idle 时进入 WAIT_NEXT（连续对话的等待窗口） */
static void play_state_poll(t6b_worker *w, long long now_ms)
{
    char path[T6B_PATH_MAX];
    char buf[768];
    size_t len = 0;
    int playing;
    char ev[SC_ID_MAX];
    char outcome[32];

    if (w->cfg.tts_queue[0] == '\0') return;
    if (w->cs.state != CS_SPEAKING && w->cs.state != CS_PROCESSING) return;

    join_path(path, sizeof(path), w->cfg.tts_queue, "play.public.json");
    if (wu_read_file(path, buf, sizeof(buf), &len) != 0) return;
    if (strstr(buf, "\"playing\"") != NULL) playing = 1;
    else if (strstr(buf, "\"idle\"") != NULL) playing = 0;
    else return;

    w->play_playing = playing;
    w->play_known = 1;
    if (!playing) {
        (void)cs_on_play_idle(&w->cs, now_ms);
        if (w->cs.state == CS_WAIT_NEXT) {
            always("session: state=WAIT_NEXT turns=%d followups=%d wait=%dms "
                   "(follow-up works only if factory keeps the listen session alive)",
                   w->cs.turns, w->cs.followups, w->cfg.session.timeout_ms);
        }
    }
    /* T8-13：真实事件 -> 会话控制中心。TtsExec 发布的 event_id / last_outcome
     * 用于区分"当前请求的收尾"与"旧播放的迟到状态"（stale 过滤在 sc 内部）。 */
    ev[0] = '\0';
    outcome[0] = '\0';
    (void)sc_json_str(buf, len, "event_id", ev, sizeof(ev));
    (void)sc_json_str(buf, len, "last_outcome", outcome, sizeof(outcome));
    (void)sc_on_play_state(&w->sc, playing, ev, outcome, now_ms);
}

static void gate_hold_flush(t6b_worker *w)
{
    char err[96];

    if (w->gate_hold_path[0] == '\0') return;
    err[0] = '\0';
    if (ug_hold_save(&w->ug, w->gate_hold_path, err, sizeof(err)) != 0) {
        always("gate hold save failed: %s", err[0] != '\0' ? err : "unknown");
    }
}

static void session_poll(t6b_worker *w, long long now_ms)
{
    int before = w->cs.state;

    (void)cs_poll(&w->cs, now_ms);
    if (before == CS_WAIT_NEXT && w->cs.state != CS_WAIT_NEXT) {
        always("session: state=%s (%s) turns=%d followups=%d (back to wake-word standby)",
               cs_state_name(w->cs.state), w->cs.last_detail, w->cs.turns, w->cs.followups);
    }
}

/* 让 TTS 执行器立刻停播（并作废 queue/inflight 里还没播的项）。
 * 机制是 T5-06D 就有的：TtsExec 每轮扫描 <tts_queue>/control/stop，见到就调原厂
 * stopTts(-1) 并跳过后续项。这里只负责把"该停了"这件事写下去。 */
static void tts_request_stop(t6b_worker *w, const char *why)
{
    char path[T6B_PATH_MAX];
    int fd;

    if (w->cfg.tts_queue[0] == '\0') return;
    join_path(path, sizeof(path), w->cfg.tts_queue, "control/stop");
    if (wu_file_size(path) >= 0) return;          /* 已经有未处理的 stop 请求，别重复写 */
    fd = wu_open_wo(path);
    if (fd < 0) {
        always("tts stop request failed (%s): %s", why != NULL ? why : "-", path);
        return;
    }
    if (wu_write_all(fd, why != NULL ? why : "stop", strlen(why != NULL ? why : "stop")) != 0) {
        wu_close(fd);
        wu_unlink(path);
        always("tts stop request write failed: %s", path);
        return;
    }
    wu_close(fd);
    always("tts stop requested (%s)", why != NULL ? why : "-");
}

/* 播报中来了新的一句话：先打断当前播报（真人对话里用户插话优先），再正常走路由。 */
static void interrupt_if_speaking(t6b_worker *w)
{
    int playing = 0;

    if (w->cfg.tts_queue[0] == '\0') return;
    if (w->cs.state == CS_SPEAKING) playing = 1;
    if (!playing) {
        char path[T6B_PATH_MAX];
        char buf[768];
        size_t len = 0;

        join_path(path, sizeof(path), w->cfg.tts_queue, "play.public.json");
        if (wu_read_file(path, buf, sizeof(buf), &len) == 0 &&
            strstr(buf, "\"playing\"") != NULL) {
            playing = 1;
        }
    }
    if (!playing) return;
    w->st.interrupts++;
    always("interrupt: playback stopped for a new utterance (session_state=%s)",
           cs_state_name(w->cs.state));
    /* T8-13：真实事件 -> 会话控制中心（用户打断当前播报/处理） */
    sc_on_interrupt(&w->sc, wu_now_ms());
    tts_request_stop(w, "new utterance");
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

        /* 0.5) T7-01：运行中清空上下文的请求（run_ai_worker.sh clear-context 写这个文件） */
        if (w->clear_path[0] != '\0' && wu_file_size(w->clear_path) >= 0) {
            (void)cv_clear(&w->cv);
            always("context cleared on request: file=%s (running worker, memory + file)",
                   w->cv.cfg.file);
            (void)wu_unlink(w->clear_path);
            w->st.context_messages = 0;
            w->st.context_turns = 0;
        }
        if (w->cfg.max_runtime_ms > 0 && wu_now_ms() - started >= w->cfg.max_runtime_ms) {
            *exit_reason = "max_runtime";
            return 0;
        }

        /* 0.8) T7-04：会话超时 / 播报状态 / 暂存门到期 / 待提交队列。
         *      顺序很重要：先让"到期的东西"进队列，再统一提交，保证同一句话只提一次。 */
        session_poll(w, wu_now_ms());
        play_state_poll(w, wu_now_ms());
        (void)sc_poll(&w->sc, wu_now_ms());      /* T8-13：FOLLOWUP/INTERRUPTED 超时 -> CLOSING -> IDLE */
        if (!w->have_pend) {
            ug_out ugo;

            if (ug_poll(&w->ug, wu_now_ms(), &ugo) == UG_RELEASE) {
                gate_hold_flush(w);
                uttq_push(w, &ugo, 0);
                snprintf(w->st.gate_last_detail, sizeof(w->st.gate_last_detail), "%s",
                         w->ug.last_detail);
                continue;
            }
            if (w->uttq_count > 0) {
                (void)uttq_pop_to_pend(w, wu_now_ms());
                continue;
            }
        }

        /* 1) 有待处理事件：先把它处理完（成功前不读下一条） */
        if (w->have_pend) {
            /* T7-09：死信回滚失败后的持久化故障状态。
             * 这里**不调用 provider_attempt**，因此不会再追加死信，也不会读下一条、不推进 offset。
             * 只周期刷新状态文件，等人工处理（处理方式见 DEPLOY/report：删 dead_letter.fault.json）。 */
            if (w->pend_dl_fault) {
                if (wu_now_ms() - w->last_status_ms >= w->cfg.status_interval_ms)
                    publish_status(w, "dead_letter_failed");
                (void)wu_sleep_ms(200);
                continue;
            }
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
            } else if (rc == -3) {
                /* 死信已写、偏移已提交（dead_letter_event 内部做的）：清 pending 继续 */
                w->have_pend = 0;
                w->pend_attempts = 0;
                w->pend_backoff_ms = 0;
                w->pend_next_ms = 0;
                w->pend_stuck = 0;
                w->st.dead_lettered++;
                sc_on_request_result(&w->sc, w->pend.event_id, 0, wu_now_ms());
                snprintf(w->st.state, sizeof(w->st.state), "running");
            } else if (rc == -5) {
                /* T7-09：死信写失败且回滚未确认 —— 文件尾部状态不确定。
                 * 保持 pending、闩住追加、不推进 offset、不静默跳过；状态里留完整现场。 */
                w->pend_dl_fault = 1;
                w->pend_stuck = 1;
                snprintf(w->st.state, sizeof(w->st.state), "dead_letter_failed");
                w->st.dead_letter_failed = 1;
                always("worker: persistent fault (dead_letter_failed) latched for event %s "
                       "seq=%lu; no further dead-letter append and no offset advance "
                       "until the fault marker is resolved",
                       w->pend.event_id, w->pend.seq);
                publish_status(w, "dead_letter_failed");
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
                /* seq 缺口必须先记账：这条记录无论是被回声过滤、本地路由还是暂存门消费掉，
                 * seq 都已经"到达并处理"，不能再被算成缺口。 */
                gap_report(w, &ev);
                /* T7-02：播报回声 / 无指令过滤必须在建 pend 之前判定——
                 * 被丢弃的事件按"合法但不处理"提交偏移，绝不让它进入 Provider，
                 * 也不让它把上下文、TTS 队列再推一遍（否则就是自问自答）。 */
                {
                    int verdict = ef_check(&w->ef, ev.text, wu_wall_ms());
                    if (verdict != EF_KEEP) {
                        if (verdict == EF_DROP_ECHO) w->st.echo_dropped_echo++;
                        else w->st.echo_dropped_nocmd++;
                        always("echo filter: drop event=%s seq=%lu reason=%s (%s) text_bytes=%d",
                               ev.event_id, ev.seq, ef_reason_name(verdict),
                               w->ef.last_reason_text, ev.text_bytes);
                        if (commit_skipped(w, exit_reason) != 0) return 6;
                        continue;
                    }
                    w->st.echo_kept = w->ef.kept;
                    w->st.echo_seen = w->ef.seen;
                    w->st.echo_window_hits = w->ef.window_hits;
                    w->st.echo_kept_in_window = w->ef.kept_in_window;
                    if (w->ef.last_reason_text[0] != '\0') {
                        logf_(&w->cfg, "echo filter: keep event=%s seq=%lu (%s)",
                              ev.event_id, ev.seq, w->ef.last_reason_text);
                    }
                }
                /* T7-04：用户插话优先——播报中来了新指令，先停播再处理，
                 * 否则"暂停/停止"只能排队等在长回答后面（实测就是这样）。 */
                interrupt_if_speaking(w);

                /* T7-05：本地意图判定不再放在这里。
                 * ASR 会把一句话拆成两条 final（"音量调到" + "百分之十"），在这里判定等于
                 * 用半句话做路由决策。判定统一挪到 uttq_pop_to_pend()：只有暂存门放出
                 * 完整 utterance 之后才分类，一段话只判一次、只执行一次。 */

                /* T7-04 功能四：ASR 暂存门。
                 * 命中暂存时偏移立即提交（文本已经在内存 + 落盘槽里），
                 * 到期后由主循环 0.8 段取出，交给 uttq_pop_to_pend() 判定路由。 */
                {
                    ug_out ugo;
                    int g = ug_feed(&w->ug, ev.session_id, ev.event_id, ev.text,
                                    wu_now_ms(), &ugo);

                    w->st.gate_seen = w->ug.seen;
                    w->st.gate_held = w->ug.held;
                    w->st.gate_released = w->ug.released;
                    w->st.gate_merged = w->ug.merged;
                    w->st.gate_cross_merged = w->ug.cross_merged;
                    w->st.gate_dropped_dup = w->ug.dropped_dup;
                    w->st.gate_restored = w->ug.restored;
                    w->st.gate_fast_released = w->ug.fast_released;
                    snprintf(w->st.gate_last_detail, sizeof(w->st.gate_last_detail), "%s",
                             w->ug.last_detail);
                    gate_hold_flush(w);

                    if (g == UG_HELD) {
                        if (w->cfg.verbose) {
                            logf_(&w->cfg, "gate: hold event=%s session=%s (%s)",
                                  ev.event_id, ev.session_id, w->ug.last_detail);
                        }
                        if (commit_skipped(w, exit_reason) != 0) return 6;
                        continue;
                    }
                    if (g == UG_DROP) {
                        always("gate: drop fragment event=%s session=%s (%s)",
                               ev.event_id, ev.session_id, w->ug.last_detail);
                        if (commit_skipped(w, exit_reason) != 0) return 6;
                        continue;
                    }
                    /* UG_RELEASE：交出来的是（可能是合并后的）完整指令；
                     * 当前这条事件的文本已经被门吸收，所以偏移同样提交。 */
                    uttq_push(w, &ugo, ev.seq);
                    if (commit_skipped(w, exit_reason) != 0) return 6;
                    continue;
                }
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
    c->provider_dead_letter = 1;
    c->provider_backoff_ms = 200;
    c->provider_backoff_max_ms = 2000;
    c->state_retry_ms = 100;
    c->state_fail_exit_ms = 3000;
    c->verbose = 0;
    snprintf(c->tts_queue, sizeof(c->tts_queue), "%s", T6B_TTS_QUEUE_DEFAULT);
    /* T7-01：上下文默认关闭（= T5-06C 行为），打开时默认 3 轮完整对话 */
    c->context_enabled = 0;
    c->context_max_messages = CV_DEFAULT_MAX_MESSAGES;
    c->context_file[0] = '\0';
    c->conf_path[0] = '\0';
    c->clear_context = 0;
    /* T7-02：播报回声过滤默认打开（原厂回答屏蔽后只剩我方播报，回声只会污染对话） */
    c->echo_filter = 1;
    c->echo_no_command = 1;
    /* T7-04：本地意图路由默认打开（音量/天气/关屏/开屏/时间交给原厂，不进大模型） */
    c->route_native = 1;
    c->route_intents = T7B_ROUTE_ALL;
    /* T7-04：暂存门默认打开（半句话/修订合并），会话状态默认打开 */
    (void)ug_defaults(&c->gate);
    cs_defaults(&c->session);
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
    /* ---- T7-01：上下文参数（缺失时用安全默认值，不让 Worker 起不来） ---- */
    if (c->context_max_messages <= 0) {
        /* 0/负数 = 用默认值，不报错 */
    } else if (c->context_max_messages < 2 || c->context_max_messages > CV_MAX_MESSAGES_CAP) {
        if (err) snprintf(err, errlen, "context-max-messages out of range [2,%d]",
                          CV_MAX_MESSAGES_CAP);
        return -1;
    }
    if (c->context_file[0] != '\0' && strpbrk(c->context_file, "\r\n\t") != NULL) {
        if (err) snprintf(err, errlen, "context-file must not contain control chars");
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
    if (c->deepseek.temperature < 0.0 || c->deepseek.temperature > 2.0) {
        if (err) snprintf(err, errlen, "temperature out of range [0.0,2.0]");
        return -1;
    }
    if (c->deepseek.max_tokens < 1 || c->deepseek.max_tokens > 8192) {
        if (err) snprintf(err, errlen, "max-tokens out of range [1,8192]");
        return -1;
    }
    /* T7-04 */
    if (c->route_intents < 0 || (c->route_intents & ~T7B_ROUTE_ALL) != 0) {
        if (err) snprintf(err, errlen, "route-intents mask out of range [0,%d]", T7B_ROUTE_ALL);
        return -1;
    }
    if (c->gate.debounce_ms < 0 || c->gate.debounce_ms > 10000) {
        if (err) snprintf(err, errlen, "gate-debounce-ms out of range [0,10000]");
        return -1;
    }
    if (c->gate.max_hold_ms < c->gate.debounce_ms || c->gate.max_hold_ms > 30000) {
        if (err) snprintf(err, errlen, "gate-max-hold-ms out of range [debounce,30000]");
        return -1;
    }
    if (c->gate.cross_session_ms < 0 || c->gate.cross_session_ms > 10000) {
        if (err) snprintf(err, errlen, "gate-cross-session-ms out of range [0,10000]");
        return -1;
    }
    if (c->session.timeout_ms < 1000 || c->session.timeout_ms > 600000) {
        if (err) snprintf(err, errlen, "session-timeout-ms out of range [1000,600000]");
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
    t7dup_init(&w.dedup);
    snprintf(w.st.tts_queue, sizeof(w.st.tts_queue), "%s", c->tts_queue);
    t6b_gap_init(&w.gaps);

    join_path(w.events_path, sizeof(w.events_path), c->work_dir, c->events_name);
    join_path(w.state_path, sizeof(w.state_path), c->state_dir, T6B_STATE_FILE);
    join_path(w.status_path, sizeof(w.status_path), c->state_dir, T6B_STATUS_FILE);
    join_path(w.lock_path, sizeof(w.lock_path), c->state_dir, T6B_LOCK_NAME_DEFAULT);
    join_path(w.clear_path, sizeof(w.clear_path), c->state_dir, T6B_CONTEXT_CLEAR_NAME);

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

    /* T7-01：初始化对话上下文（独立模块）。文件损坏只留档清空，绝不影响启动。
     * 放在拿锁之后：--clear-context 与正在运行的 Worker 不会同时改这个文件。 */
    {
        cv_cfg cc;
        char cpath[T6B_PATH_MAX];

        memset(&cc, 0, sizeof(cc));
        if (c->context_file[0] != '\0') {
            snprintf(cpath, sizeof(cpath), "%s", c->context_file);
        } else {
            join_path(cpath, sizeof(cpath), c->state_dir, T6B_CONTEXT_NAME_DEFAULT);
        }
        cc.enabled = c->context_enabled ? 1 : 0;
        cc.max_messages = (c->context_max_messages > 0) ? c->context_max_messages
                                                       : CV_DEFAULT_MAX_MESSAGES;
        snprintf(cc.file, sizeof(cc.file), "%s", cpath);

        if (cv_init(&w.cv, &cc) != 0) {
            always("context init failed (running without history)");
            cc.enabled = 0;
            (void)cv_init(&w.cv, &cc);
        }

        if (c->clear_context) {
            (void)cv_clear(&w.cv);
            always("context cleared: file=%s", cc.file);
            lock_release(&w);
            return 0;
        }

        snprintf(w.st.context_file, sizeof(w.st.context_file), "%s", cc.file);
        w.st.context_enabled = cc.enabled;
        w.st.context_max_messages = cc.max_messages;
        w.st.context_messages = w.cv.count;
        w.st.context_turns = cv_turn_count(&w.cv);
        w.st.context_load_state = w.cv.last_load_state;
        always("context: enabled=%d max_msgs=%d restored_msgs=%d restored_turns=%d "
               "load=%s file=%s",
               cc.enabled, cc.max_messages, w.cv.count, cv_turn_count(&w.cv),
               (w.cv.last_load_state == CV_LOAD_OK) ? "restored" :
               (w.cv.last_load_state == CV_LOAD_ABSENT) ? "empty" :
               (w.cv.last_load_state == CV_LOAD_RECOVERED) ? "recovered" :
               (w.cv.last_load_state == CV_LOAD_DISABLED) ? "disabled" : "read_failed",
               cc.file);
        if (w.cv.last_load_state == CV_LOAD_RECOVERED ||
            w.cv.last_load_state == CV_LOAD_FAILED) {
            always("context: previous file unusable (%s); continuing with empty history",
                   w.cv.last_error);
        }
    }

    /* T7-03：统一 system prompt —— 固定放 messages[0]，不进历史、不参与淘汰 */
    always("system prompt: %d bytes, placed at messages[0] (role=system, outside context eviction)",
           (int)strlen((c->deepseek.system_prompt[0] != '\0')
                           ? c->deepseek.system_prompt
                           : T6B_DS_SYSTEM_PROMPT_DEFAULT));

    /* T7-02：初始化播报回声过滤（只依赖 TTS 执行器发布的播放状态文件） */
    {
        ef_config ec;
        char eerr[96];

        (void)ef_defaults(&ec);
        ec.enabled = c->echo_filter ? 1 : 0;
        ec.drop_nocmd = c->echo_no_command ? 1 : 0;
        eerr[0] = '\0';
        if (ef_init(&w.ef, &ec, c->tts_queue, eerr, sizeof(eerr)) != 0) {
            always("echo filter init failed (%s); running WITHOUT echo filtering", eerr);
            ec.enabled = 0;
            (void)ef_init(&w.ef, &ec, c->tts_queue, eerr, sizeof(eerr));
        }
        snprintf(w.st.echo_state_file, sizeof(w.st.echo_state_file), "%s", w.ef.state_path);
        always("echo filter: enabled=%d no_command=%d window=+%d/-%dms sim=%d%% state_file=%s",
               w.ef.cfg.enabled, w.ef.cfg.drop_nocmd, w.ef.cfg.before_ms, w.ef.cfg.after_ms,
               w.ef.cfg.sim_percent,
               w.ef.state_path[0] != '\0' ? w.ef.state_path : "(no tts queue)");
    }

    /* T7-04：暂存门（半句话/修订合并）与会话状态。暂存槽落盘在 state_dir；
     * 放行标记写进 work_dir（TTS 守卫要读，必须 0644 且目录可进入）。 */
    {
        ug_out ugo;

        join_path(w.gate_hold_path, sizeof(w.gate_hold_path), c->state_dir,
                  T6B_GATE_HOLD_NAME);
        join_path(w.route_publish_path, sizeof(w.route_publish_path), c->work_dir,
                  T6B_ROUTE_PUBLISH_NAME);
        if (!c->route_native) w.route_publish_path[0] = '\0';

        ug_init(&w.ug, &c->gate);
        /* T7-05：快路只对"当前真正启用的意图"生效，与 route_intents 保持同一份开关，
         * 免得出现"路由关了但门还在提前放行"的不一致。 */
        w.ug.cfg.fast_native = c->route_native ? 1 : 0;
        w.ug.cfg.fast_intents = (unsigned int)c->route_intents;
        cs_init(&w.cs, &c->session);
        /* T8-13：会话控制中心（与 cs_state 同启，配置共用 session_timeout_ms） */
        sc_defaults(&w.sc.cfg);
        w.sc.cfg.followup_timeout_ms = c->session.timeout_ms;
        sc_init(&w.sc, &w.sc.cfg);

        w.st.route_enabled = c->route_native;
        w.st.route_intents = c->route_intents;
        snprintf(w.st.route_publish_file, sizeof(w.st.route_publish_file), "%s",
                 w.route_publish_path);
        w.st.gate_enabled = w.ug.cfg.enabled;
        w.st.gate_debounce_ms = w.ug.cfg.debounce_ms;
        w.st.gate_max_hold_ms = w.ug.cfg.max_hold_ms;
        w.st.gate_cross_session = w.ug.cfg.cross_session;
        snprintf(w.st.gate_hold_file, sizeof(w.st.gate_hold_file), "%s", w.gate_hold_path);
        w.st.session_enabled = w.cs.cfg.enabled;
        w.st.session_timeout_ms = w.cs.cfg.timeout_ms;
        snprintf(w.st.session_state, sizeof(w.st.session_state), "%s",
                 cs_state_name(w.cs.state));

        always("route: enabled=%d intents=0x%02x (volume=%d weather=%d screen_off=%d "
               "time=%d screen_on=%d media=%d exit=%d) publish_file=%s",
               c->route_native, c->route_intents,
               (c->route_intents & T7B_ROUTE_VOLUME) ? 1 : 0,
               (c->route_intents & T7B_ROUTE_WEATHER) ? 1 : 0,
               (c->route_intents & T7B_ROUTE_SCREEN_OFF) ? 1 : 0,
               (c->route_intents & T7B_ROUTE_TIME) ? 1 : 0,
               (c->route_intents & T7B_ROUTE_SCREEN_ON) ? 1 : 0,
               (c->route_intents & T7B_ROUTE_MEDIA) ? 1 : 0,
               (c->route_intents & T7B_ROUTE_EXIT) ? 1 : 0,
               w.route_publish_path[0] != '\0' ? w.route_publish_path : "(disabled)");
        always("gate: enabled=%d debounce=%dms max_hold=%dms cross_session=%d(%dms) sim=%d%% "
               "hold_file=%s",
               w.ug.cfg.enabled, w.ug.cfg.debounce_ms, w.ug.cfg.max_hold_ms,
               w.ug.cfg.cross_session, w.ug.cfg.cross_session_ms, w.ug.cfg.revision_sim,
               w.gate_hold_path);
        always("session: enabled=%d timeout=%dms (follow-up window after playback)",
               w.cs.cfg.enabled, w.cs.cfg.timeout_ms);

        /* 上次退出时还有一句没交出去：恢复它（并立刻提交），绝不重复提交 */
        if (ug_hold_restore(&w.ug, w.gate_hold_path, wu_now_ms(), &ugo) == UG_HELD &&
            w.ug.have) {
            always("gate: restored pending utterance from %s (%s) event=%s session=%s "
                   "text_bytes=%d",
                   w.gate_hold_path, w.ug.last_detail, w.ug.event_id, w.ug.session,
                   (int)strlen(w.ug.text));
            w.st.gate_restored = w.ug.restored;
            snprintf(w.st.gate_last_detail, sizeof(w.st.gate_last_detail), "%s",
                     w.ug.last_detail);
        } else if (w.ug.expired_on_restore > 0) {
            always("gate: pending utterance on disk was too old and was dropped (%s)",
                   w.ug.last_detail);
        }
        w.st.gate_seen = w.ug.seen;
        w.st.gate_held = w.ug.held;
        w.st.gate_released = w.ug.released;
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
        "  --conf PATH           load provider/context settings from a key=value file\n"
        "                        (CLI options still win; no credential is stored there)\n"
        "  --temperature X       sampling temperature 0.0-2.0 (default %.1f)\n"
        "  --max-tokens N        completion limit (default %d)\n"
        "  --base-url U          alias of --deepseek-base-url\n"
        "  --model M             alias of --deepseek-model\n"
        "  --context 0|1         multi-turn context (default 0 = every turn independent)\n"
        "  --context-max-messages N  keep at most N messages, whole turns only (default %d)\n"
        "  --context-file PATH   context json (default <state-dir>/context.json)\n"
        "  --clear-context       delete the stored context and exit\n"
        "  --echo-filter 0|1     drop ASR events that echo our own TTS playback (default 1)\n"
        "  --echo-no-command 0|1 also drop events with no command left after wake/filler strip\n"
        "  --route-native 0|1    route factory base intents (volume/weather/screen/time) natively\n"
        "  --gate 0|1            hold ASR finals briefly and merge revisions (default 1)\n"
        "  --gate-debounce-ms N  continue-speaking window before submitting (default 450)\n"
        "  --gate-max-hold-ms N  hard cap on how long one utterance may be held (default 2500)\n"
        "  --gate-cross-session 0|1  merge a dangling utterance with the next session (default 1)\n"
        "  --gate-cross-session-ms N max gap for that merge (default 1200)\n"
        "  --session 0|1         track the conversation session state machine (default 1)\n"
        "  --session-timeout-ms N follow-up wait after playback ends (default 12000)\n"
        "  --system-prompt TEXT  system message put at messages[0] (empty = built-in default)\n"
        "  --system-prompt-file PATH  read the system message from a UTF-8 file\n"
        "                        (default 1; e.g. a bare wake word or a trailing '嗯')\n"
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
        T6B_DS_PATH_SUFFIX, T6B_DS_CONNECT_MS_DEFAULT, T6B_DS_TIMEOUT_MS_DEFAULT,
        T6B_DS_TEMP_DEFAULT, T6B_DS_MAX_TOKENS_DEFAULT, CV_DEFAULT_MAX_MESSAGES);
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

    /*
     * T7-01：先把 --conf 指定的配置文件加载进来（CLI 参数随后覆盖它）。
     * 顺序是"先扫一遍 --conf，再正常解析参数"，所以命令行里 --conf 写在前后都一样。
     */
    for (i = 1; i < argc; i++) {
        if (strcmp(argv[i], "--conf") == 0 && i + 1 < argc) {
            char cerr[160];
            int applied = 0;

            cerr[0] = '\0';
            snprintf(cfg.conf_path, sizeof(cfg.conf_path), "%s", argv[i + 1]);
            if (wc_load(&cfg, cfg.conf_path, &applied, cerr, sizeof(cerr)) != 0) {
                fprintf(stderr, "config file error: %s (%s)\n", cerr, cfg.conf_path);
                return 2;
            }
            break;
        }
    }

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
#if defined(T6B_DL_TESTING) && defined(T6B_DL_TEST_ENV)
        /* T7-10：测试构建专属入口（生产构建里这一整段都不存在，连字符串都没有） */
        else if (strcmp(a, "--marker-selftest") == 0) {
            if (need_str(argc, argv, i, &v)) goto bad;
            return dl_mk_selftest(v);
        }
#endif

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
        else if (strcmp(a, "--conf") == 0) { if (need_str(argc, argv, i, &v)) goto bad; snprintf(cfg.conf_path, sizeof(cfg.conf_path), "%s", v); i++; }
        else if (strcmp(a, "--temperature") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.deepseek.temperature = atof(v); i++; }
        else if (strcmp(a, "--max-tokens") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.deepseek.max_tokens = atoi(v); i++; }
        else if (strcmp(a, "--thinking") == 0) { if (need_str(argc, argv, i, &v)) goto bad; snprintf(cfg.deepseek.thinking, sizeof(cfg.deepseek.thinking), "%s", v); i++; }
        else if (strcmp(a, "--base-url") == 0) { if (need_str(argc, argv, i, &v)) goto bad; snprintf(cfg.deepseek.base_url, sizeof(cfg.deepseek.base_url), "%s", v); i++; }
        else if (strcmp(a, "--model") == 0) { if (need_str(argc, argv, i, &v)) goto bad; snprintf(cfg.deepseek.model, sizeof(cfg.deepseek.model), "%s", v); i++; }
        else if (strcmp(a, "--context") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.context_enabled = atoi(v) ? 1 : 0; i++; }
        else if (strcmp(a, "--context-max-messages") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.context_max_messages = atoi(v); i++; }
        else if (strcmp(a, "--context-file") == 0) { if (need_str(argc, argv, i, &v)) goto bad; snprintf(cfg.context_file, sizeof(cfg.context_file), "%s", v); i++; }
        else if (strcmp(a, "--clear-context") == 0) { cfg.clear_context = 1; continue; }
        else if (strcmp(a, "--echo-filter") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.echo_filter = (atoi(v) != 0); i++; }
        else if (strcmp(a, "--echo-no-command") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.echo_no_command = (atoi(v) != 0); i++; }
        else if (strcmp(a, "--route-native") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.route_native = (atoi(v) != 0); i++; }
        else if (strcmp(a, "--gate") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.gate.enabled = (atoi(v) != 0); i++; }
        else if (strcmp(a, "--gate-debounce-ms") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.gate.debounce_ms = atoi(v); i++; }
        else if (strcmp(a, "--gate-max-hold-ms") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.gate.max_hold_ms = atoi(v); i++; }
        else if (strcmp(a, "--gate-cross-session") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.gate.cross_session = (atoi(v) != 0); i++; }
        else if (strcmp(a, "--gate-cross-session-ms") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.gate.cross_session_ms = atoi(v); i++; }
        else if (strcmp(a, "--session") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.session.enabled = (atoi(v) != 0); i++; }
        else if (strcmp(a, "--session-timeout-ms") == 0) { if (need_str(argc, argv, i, &v)) goto bad; cfg.session.timeout_ms = atoi(v); i++; }
        else if (strcmp(a, "--system-prompt") == 0) {
            if (need_str(argc, argv, i, &v)) goto bad;
            snprintf(cfg.deepseek.system_prompt, sizeof(cfg.deepseek.system_prompt), "%s", v);
            i++;
        }
        else if (strcmp(a, "--system-prompt-file") == 0) {
            FILE *sf;
            size_t rn;
            if (need_str(argc, argv, i, &v)) goto bad;
            sf = fopen(v, "rb");
            if (sf == NULL) {
                fprintf(stderr, "cannot open --system-prompt-file %s\n", v);
                return 2;
            }
            rn = fread(cfg.deepseek.system_prompt, 1,
                       sizeof(cfg.deepseek.system_prompt) - 1, sf);
            fclose(sf);
            cfg.deepseek.system_prompt[rn] = '\0';
            while (rn > 0 && (cfg.deepseek.system_prompt[rn - 1] == '\n' ||
                              cfg.deepseek.system_prompt[rn - 1] == '\r')) {
                cfg.deepseek.system_prompt[--rn] = '\0';
            }
            i++;
        }
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
