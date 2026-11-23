/*
 * session_ctrl.c -- 见 session_ctrl.h
 *
 * 迁移规则只有一条：每张表都是"当前状态 + 真实事件 -> 新状态 + 是否接受"。
 * 不接受的事件只计数（stale_callbacks / duplicate_events），绝不改变状态或
 * 覆盖 request/session 字段 —— 旧请求晚到与重复事件不污染新会话（任务书 §四.6/7）。
 */
#include "session_ctrl.h"

#include <stdio.h>
#include <string.h>

static void sc_copy(char *dst, size_t cap, const char *src)
{
    size_t n;

    if (dst == NULL || cap == 0) return;
    if (src == NULL) { dst[0] = '\0'; return; }
    n = strlen(src);
    if (n >= cap) n = cap - 1;
    memcpy(dst, src, n);
    dst[n] = '\0';
}

static int sc_same(const char *a, const char *b)
{
    if (a == NULL || b == NULL) return 0;
    return strcmp(a, b) == 0;
}

void sc_defaults(sc_config *c)
{
    if (c == NULL) return;
    memset(c, 0, sizeof(*c));
    c->enabled = 1;
    c->followup_timeout_ms = 12000;
    /* T8-15：免唤醒连续对话默认开启（这是 T8-15 交付的语义本身） */
    c->relisten_ms = 12000;   /* 播放结束后等下一句的窗口 */
    c->max_rounds  = 8;       /* 单个对话最多 8 轮，防止无限续听 */
    c->continuous  = 1;       /* 续听窗口内的新 ASR 会话 = 同一对话的下一轮 */
}

/* T8-15：续听窗口长度（relisten_ms 为 0 时退回 followup_timeout_ms） */
static long long sc_relisten_ms(const sc_ctx *s)
{
    if (s->cfg.relisten_ms > 0) return (long long)s->cfg.relisten_ms;
    return (long long)s->cfg.followup_timeout_ms;
}

void sc_init(sc_ctx *s, const sc_config *c)
{
    if (s == NULL) return;
    memset(s, 0, sizeof(*s));
    if (c != NULL) s->cfg = *c;
    else          sc_defaults(&s->cfg);
    if (s->cfg.followup_timeout_ms <= 0) s->cfg.followup_timeout_ms = 12000;
    if (s->cfg.relisten_ms < 0) s->cfg.relisten_ms = 0;
    if (s->cfg.max_rounds < 0) s->cfg.max_rounds = 0;
    s->state = SC_IDLE;
    sc_copy(s->last_transition, sizeof(s->last_transition), "init");
}

const char *sc_state_name(int state)
{
    switch (state) {
    case SC_IDLE:         return "IDLE";
    case SC_WAKE_PENDING: return "WAKE_PENDING";
    case SC_LISTENING:    return "LISTENING";
    case SC_PROCESSING:   return "PROCESSING";
    case SC_SPEAKING:     return "SPEAKING";
    case SC_INTERRUPTED:  return "INTERRUPTED";
    case SC_FOLLOWUP:     return "FOLLOWUP";
    case SC_CLOSING:      return "CLOSING";
    default:              return "UNKNOWN";
    }
}

static void sc_set(sc_ctx *s, int st, long long now_ms, const char *why)
{
    if (s->state != st) {
        char detail[SC_DETAIL_MAX];
        snprintf(detail, sizeof(detail), "%s->%s (%s)",
                 sc_state_name(s->state), sc_state_name(st), why != NULL ? why : "-");
        sc_copy(s->last_transition, sizeof(s->last_transition), detail);
        s->transitions++;
        s->state = st;
        s->state_since_ms = now_ms;
    } else if (why != NULL && why[0] != '\0') {
        /* 同态带原因更新（如 PROCESSING 中新请求顶替旧请求）也要可见 */
        char detail[SC_DETAIL_MAX];
        snprintf(detail, sizeof(detail), "%s (%s)", sc_state_name(st), why);
        sc_copy(s->last_transition, sizeof(s->last_transition), detail);
    }
}

void sc_note_wake(sc_ctx *s, long long now_ms)
{
    if (s == NULL || !s->cfg.enabled) return;
    /* 兼容入口（无 session 关联）。生产代码走 sc_on_factory_wake()。 */
    s->last_wake_ms = now_ms;
    s->device_listening = 1;
    s->deadline_ms = now_ms + (long long)s->cfg.followup_timeout_ms;
    sc_set(s, SC_WAKE_PENDING, now_ms, "factory wake event");
}

/* ---------------- T8-15：原厂事件接入 ---------------- */

/*
 * 原厂唤醒成功（SessionManager onStartTalk: sessionId = N, wakeupType = W）。
 * 语义：一次新的语音交互开始。
 *   - 没有进行中的对话（IDLE/CLOSING）-> WAKE_PENDING，等这一轮的 final；
 *   - 已有对话（续听窗口/播报中/处理中）-> 只更新聆听事实，**不重置轮次**：
 *     用户重新喊唤醒词也要接上上下文（T7-01 已验证的跨唤醒多轮）。
 */
void sc_on_factory_wake(sc_ctx *s, const char *asr_session, long long now_ms)
{
    if (s == NULL || !s->cfg.enabled) return;
    s->wake_events++;
    s->last_wake_ms = now_ms;
    s->device_listening = 1;
    if (asr_session != NULL && asr_session[0] != '\0') {
        sc_copy(s->asr_session, sizeof(s->asr_session), asr_session);
    }
    if (s->state == SC_IDLE || s->state == SC_CLOSING) {
        s->deadline_ms = now_ms + (long long)s->cfg.followup_timeout_ms;
        sc_set(s, SC_WAKE_PENDING, now_ms, "factory wake (onStartTalk)");
    } else {
        /* 对话仍在：唤醒只是这一轮的入口，不改轮次、不动 deadline */
        char why[64];
        snprintf(why, sizeof(why), "factory wake in dialog round %d", s->round);
        sc_set(s, s->state, now_ms, why);
    }
}

void sc_on_factory_listen_start(sc_ctx *s, long long now_ms)
{
    if (s == NULL || !s->cfg.enabled) return;
    s->listen_starts++;
    s->last_listen_start_ms = now_ms;
    s->device_listening = 1;
}

/*
 * 原厂 onStopTalk（本轮 EOU：用户说完了）。
 * 关键口径：这是**每轮**都会发生的事件，不是对话结束 —— 它只说明原厂这一轮的
 * 录音停了（duplexDialogRenew=0 时不续期），绝不能因此关闭我们的对话。
 */
void sc_on_factory_talk_stop(sc_ctx *s, long long now_ms)
{
    if (s == NULL || !s->cfg.enabled) return;
    /* T8-15.3：原厂同一轮 EOU 会连打 2~3 条日志（onStopTalk / onListenStopped / reason=-1），
     * 计数只在"聆听 -> 停止"这一次状态跃迁上做，否则 talk_stops 会被放大三倍。 */
    if (s->device_listening) s->talk_stops++;
    s->last_talk_stop_ms = now_ms;
    s->device_listening = 0;
}

void sc_on_factory_exit_talk(sc_ctx *s, long long now_ms)
{
    if (s == NULL || !s->cfg.enabled) return;
    /* T8-15.3：exitTalk 在一条会话里会重复打印；200 ms 内的重复只算一次 */
    if (s->last_exit_ms == 0 || now_ms - s->last_exit_ms >= 200) {
        s->exit_talks++;
        s->last_exit_ms = now_ms;
    }
    s->device_listening = 0;
    /* 原厂平台会话退出：真机上每轮回答结束后都会出现（exitTalk exit=0）。
     * 它不结束我们的对话 —— 续听窗口继续等下一句，直到超时/停止/轮次上限。 */
}

/* T8-15.3：退出语不是对话轮次。worker 判定 intent=exit 后、收束对话之前调用一次。
 * 退出语在 final 到达时已经按"续听命中"记过一轮，这里把 round 和 followup_rounds 一起退回，
 * 让 rounds_done 与实际 AI 对话轮数一致（5 轮对话 + 一句退出 => rounds_done=5）。 */
void sc_note_exit_turn(sc_ctx *s)
{
    if (s == NULL || !s->cfg.enabled) return;
    s->exit_turns++;
    if (s->round > 0) s->round--;
    if (s->followup_rounds > 0) s->followup_rounds--;
}

/*
 * 一条被接受的 asr_final：建立/续接对话。
 * 返回 1 = 接受（新对话 / 同一对话的下一轮 / 同轮修订）；0 = 重复事件已丢弃。
 *
 * T8-15 轮次规则：
 *   - 无对话（IDLE/CLOSING）     -> 新对话：opens++、round=1；
 *   - FOLLOWUP 且 continuous=1   -> 续听窗口内的下一轮：round++、followup_rounds++，
 *                                   对话身份（session）与上下文都不动；
 *   - 同 ASR 会话                -> 同一轮的修订 final：不改轮次；
 *   - 其它（处理中/播报中来了别的 ASR 会话，或 continuous=0）-> 旧语义：新会话新对话。
 *   - round 触达 max_rounds      -> 先收束当前对话再开新对话（round_cap_hits++）。
 */
int sc_on_session_text(sc_ctx *s, const char *session, const char *event_id, long long now_ms)
{
    int dialog_open;
    int same_asr;
    int new_round = 0;

    if (s == NULL || !s->cfg.enabled) return s != NULL ? 1 : 0;
    if (session == NULL || session[0] == '\0') return 1;   /* 无会话 id：照常放行，状态机不管 */

    /* 同一 event_id 的 final 重复到达（event_id 全局唯一，不区分会话） */
    if (event_id != NULL && event_id[0] != '\0' && sc_same(s->last_final_event, event_id)) {
        s->duplicate_events++;
        return 0;
    }

    /* WAKE_PENDING = 唤醒刚到、这一轮的 final 还没来：算"对话尚未开始"，
     * 所以第一条 final 是第 1 轮（对话身份也用它的 ASR 会话 id）。 */
    dialog_open = (s->state != SC_IDLE && s->state != SC_CLOSING &&
                   s->state != SC_WAKE_PENDING);
    same_asr    = sc_same(s->asr_session, session);

    if (!dialog_open) {
        /* 新对话：旧请求记入 prev_request（迟到的播放/结果回调按它过滤） */
        s->opens++;
        s->round = 1;
        s->followup_rounds = 0;      /* T8-15.3：免唤醒轮次是"每段对话"的计数，新对话归零 */
        s->request_active = 0;
        if (s->request[0] != '\0') sc_copy(s->prev_request, sizeof(s->prev_request), s->request);
        s->request[0] = '\0';
        sc_copy(s->session, sizeof(s->session), session);
        sc_copy(s->asr_session, sizeof(s->asr_session), session);
        s->end_reason[0] = '\0';
        sc_set(s, SC_LISTENING, now_ms, "new dialog");
        new_round = 1;
    } else if (s->cfg.continuous && s->state == SC_FOLLOWUP) {
        /* 免唤醒续听命中：同一对话的下一轮 */
        if (s->cfg.max_rounds > 0 && s->round + 1 > s->cfg.max_rounds) {
            /* 触达轮次上限：先按"上限"收束当前对话，再以这一句开新对话 */
            s->round_cap_hits++;
            s->session_ends++;
            sc_copy(s->end_reason, sizeof(s->end_reason), "max rounds reached");
            s->request_active = 0;
            s->request[0] = '\0';
            s->opens++;
            s->round = 1;
            s->followup_rounds = 0;
            sc_copy(s->session, sizeof(s->session), session);
            sc_copy(s->asr_session, sizeof(s->asr_session), session);
            sc_set(s, SC_LISTENING, now_ms, "round cap -> new dialog");
            new_round = 1;
        } else {
            s->round++;
            s->followup_rounds++;
            s->followup_rounds_total++;
            sc_copy(s->asr_session, sizeof(s->asr_session), session);
            sc_set(s, SC_LISTENING, now_ms,
                   same_asr ? "follow-up (same asr session)" : "follow-up (new asr session)");
        }
        new_round = 1;
    } else if (same_asr) {
        /* 同一轮的修订 final：不产生新轮次 */
        sc_set(s, SC_LISTENING, now_ms, "same session new final");
    } else {
        /* 非续听窗口里出现了另一个 ASR 会话：沿用 T8-13 语义（新会话 = 新对话） */
        s->opens++;
        s->round = 1;
        s->followup_rounds = 0;
        s->request_active = 0;
        if (s->request[0] != '\0') sc_copy(s->prev_request, sizeof(s->prev_request), s->request);
        s->request[0] = '\0';
        sc_copy(s->session, sizeof(s->session), session);
        sc_copy(s->asr_session, sizeof(s->asr_session), session);
        sc_set(s, SC_LISTENING, now_ms, "new asr session");
        new_round = 1;
    }

    if (new_round) s->rounds_total++;
    if (s->round > s->max_round_seen) s->max_round_seen = s->round;

    /* LISTENING 也挂关闭截止：final 到达但 utterance 一直未提交（暂存门挂死等
     * 异常场景）时，会话也能按超时关闭，不永久滞留 */
    s->deadline_ms = now_ms + (long long)s->cfg.followup_timeout_ms;
    s->last_final_ms = now_ms;
    sc_copy(s->last_final_event, sizeof(s->last_final_event), event_id);
    return 1;
}

/* 提交 AI 请求（唯一建请求点：uttq_pop_to_pend 建 pend）。
 * 若上一个请求尚未终结（PROCESSING/SPEAKING 中来了新 utterance）：
 * 新请求顶替旧请求（打断语义），旧请求 id 记入 request 字段并计 stale。
 * 返回 1 = 请求已登记；0 = 被判为重复提交（同请求 id 重复 submit）已丢弃。 */
int sc_on_submit(sc_ctx *s, const char *request_id, long long now_ms)
{
    if (s == NULL || !s->cfg.enabled) return s != NULL ? 1 : 0;
    if (s->request_active && sc_same(s->request, request_id)) {
        s->duplicate_events++;
        return 0;
    }
    if (s->request_active) {
        /* 旧请求还没终结就被顶替：记入 prev_request，旧回调将来到达时被 stale 过滤 */
        s->stale_callbacks++;
        sc_copy(s->prev_request, sizeof(s->prev_request), s->request);
    }
    s->request_active = 1;
    sc_copy(s->request, sizeof(s->request), request_id);
    sc_set(s, SC_PROCESSING, now_ms,
           s->stale_callbacks != 0 ? "submit (replaces prior request)" : "submit");
    return 1;
}

/* Provider 终态回调（成功 / 死信放弃）。只有当前请求的回调才改变状态。 */
void sc_on_request_result(sc_ctx *s, const char *request_id, int ok, long long now_ms)
{
    if (s == NULL || !s->cfg.enabled) return;
    if (!s->request_active) { s->stale_callbacks++; return; }
    if (!sc_same(s->request, request_id)) { s->stale_callbacks++; return; }
    s->prev_request[0] = '\0';

    s->request_active = 0;
    if (!ok) {
        /* 请求失败/放弃：回到 LISTENING（会话仍在，等下一句或超时关闭） */
        sc_set(s, SC_LISTENING, now_ms, "request failed");
        s->deadline_ms = now_ms + (long long)s->cfg.followup_timeout_ms;
        return;
    }
    /* 成功：请求终结。TTS 尚未确认入队时这里挂一个兜底窗口，避免
     * "TTS 队列关闭导致收不到 playing/idle" 时永久卡在 PROCESSING（真实场景：
     * tts_queue 未配置）。若 TTS 事件随后到来会正常推进；本窗口到期同样关闭。 */
    if (s->state == SC_PROCESSING) {
        sc_set(s, SC_LISTENING, now_ms, "request ok (no tts queue)");
        s->deadline_ms = now_ms + (long long)s->cfg.followup_timeout_ms;
    }
}

/* 请求归属判定（T8-13.4）：唯一"这个回调能不能动当前请求"的判据。
 * 必须同时满足：有活动请求 + 传入 id 非空 + 当前请求 id 非空 + 完全一致。
 * 无活动请求 / 空 id / 旧 id / 未知 id 一律不成立 —— 供 TTS 生命周期入口与
 * ai_worker 的幂等命中分支共用，避免两处各写一套判定而漂移。 */
int sc_request_owns(const sc_ctx *s, const char *request_id)
{
    if (s == NULL || !s->request_active) return 0;
    if (request_id == NULL || request_id[0] == '\0') return 0;
    if (s->request[0] == '\0') return 0;
    return strcmp(s->request, request_id) == 0;
}

int sc_on_tts_queued(sc_ctx *s, const char *request_id, long long now_ms)
{
    if (s == NULL || !s->cfg.enabled) return s != NULL ? 1 : 0;
    /* T8-13.4：只有当前活动请求本人才能进入 SPEAKING。旧请求/空 id/无活动请求
     * 一律拒绝（只计 stale，不改状态、不改 request）——否则一个已经结束的请求
     * 会被"复活"成 SPEAKING，把 5 倍安全截止挂到错误的会话周期上。 */
    if (!sc_request_owns(s, request_id)) {
        s->stale_callbacks++;
        return 0;
    }
    sc_set(s, SC_SPEAKING, now_ms, "tts queued");
    /* SPEAKING 安全截止 = 5 倍窗口：正常播放 idle 先到；TtsExec 崩溃/卡死时
     * 兜底关闭，防止永久卡 SPEAKING（T8-13.3 真机发现的第二处卡点） */
    s->deadline_ms = now_ms + (long long)s->cfg.followup_timeout_ms * 5;
    return 1;
}

/*
 * TtsExec 播放状态（play.public.json 轮询）。
 *
 * T8-13.1 事件归属规则（修复审查发现的"旧播放误收尾"缺陷）：
 *   playing=0（idle/interrupted 收尾）按 event_id 分四类：
 *     1) == request 且 request_active   -> 接受：终结请求并迁移 FOLLOWUP/INTERRUPTED；
 *        同一条收尾再次到达（id 相同且已不活跃）-> duplicate_events，**不重置超时窗口**；
 *     2) == prev_request（被顶替/清场的旧请求）-> 迟到回调：stale_callbacks，状态不动；
 *     3) event_id 为空 -> 无法归属：当前有活动请求时拒绝（stale），无活动请求时
 *        仅当作执行器快照（如启动时发布的 idle）接受但不做任何迁移；
 *     4) 其它未知 id -> stale_callbacks，状态不动。
 *   playing=1 只有 event_id 能归属到当前活动请求时才把 PROCESSING 提升为 SPEAKING；
 *     空 id / 旧 id / 未知 id 一律不迁移。
 * 返回 1 = 事件被接受（含"接受但无迁移"）；0 = 归属失败的迟到回调已丢弃。
 */
int sc_on_play_state(sc_ctx *s, int playing, const char *event_id,
                     const char *outcome, long long now_ms)
{
    int id_known;
    if (s == NULL || !s->cfg.enabled) return s != NULL ? 1 : 0;

    id_known = (event_id != NULL && event_id[0] != '\0');

    if (!playing) {
        if (s->request_active) {
            /* 有活动请求：只有"确实是当前请求的收尾"才能终结它 */
            if (!id_known) {
                /* 空 event_id 的 idle 不允许结束当前活动请求（审查要求 2） */
                s->stale_callbacks++;
                return 0;
            }
            if (sc_same(s->request, event_id)) {
                s->request_active = 0;
                sc_copy(s->prev_request, sizeof(s->prev_request), event_id);
                if (outcome != NULL && (sc_same(outcome, "interrupted") ||
                                        sc_same(outcome, "stopped"))) {
                    sc_set(s, SC_INTERRUPTED, now_ms, "playback interrupted");
                    s->relisten_armed = 0;
                } else {
                    sc_set(s, SC_FOLLOWUP, now_ms, "playback idle");
                    /* T8-15：播报结束 = 立即装填免唤醒续听窗口 */
                    s->relisten_armed = 1;
                }
                s->deadline_ms = now_ms + (s->relisten_armed ? sc_relisten_ms(s)
                                                             : (long long)s->cfg.followup_timeout_ms);
                return 1;
            }
            /* 旧请求（prev 或未知）的收尾：绝不终结新请求 */
            s->stale_callbacks++;
            return 0;
        }
        /* 无活动请求：收尾事件不再迁移任何状态，按来源分类计数 */
        if (!id_known) return 1;                        /* 执行器快照（启动 idle 等） */
        if (s->request[0] != '\0' && sc_same(s->request, event_id)) {
            /* 刚由本模块处理过的收尾重复到达：duplicate，不重置窗口 */
            s->duplicate_events++;
            return 1;
        }
        s->stale_callbacks++;                            /* prev/清场旧播放或陌生 id：迟到回调 */
        return 0;
    }

    /* playing=1：播放开始。只有能归属到当前活动请求时才提升 SPEAKING */
    if (s->request_active) {
        if (!id_known) return 1;                         /* 空 id：不迁移 */
        if (sc_same(s->request, event_id)) {
            if (s->state == SC_PROCESSING) {
                sc_set(s, SC_SPEAKING, now_ms, "playback started");
            }
            return 1;
        }
        s->stale_callbacks++;
        return 0;
    }
    /* 无活动请求时的 playing（原厂本地 TTS 等）：接受但不迁移 */
    return 1;
}

/* 用户打断：新 utterance 到达且正在播报/处理（ai_worker interrupt_if_speaking） */
void sc_on_interrupt(sc_ctx *s, long long now_ms)
{
    if (s == NULL || !s->cfg.enabled) return;
    if (s->state == SC_SPEAKING || s->state == SC_PROCESSING || s->state == SC_LISTENING) {
        s->interrupts++;
        sc_set(s, SC_INTERRUPTED, now_ms, "new utterance interrupts");
        s->deadline_ms = now_ms + (long long)s->cfg.followup_timeout_ms;
    }
}

void sc_note_timeout(sc_ctx *s)
{
    if (s == NULL || !s->cfg.enabled) return;
    s->timeouts++;
}

/*
 * T8-15：收束当前对话 —— 清活动请求与轮次、关续听窗口、记结束原因。
 * 刻意不动 prev_request（迟到的播放/结果回调仍要靠它被识别为 stale）、
 * 也不动 closes/timeouts（各调用点自己计，保持既有口径不变）。
 */
static void sc_end_dialog(sc_ctx *s, const char *why)
{
    if (why != NULL && why[0] != '\0') sc_copy(s->end_reason, sizeof(s->end_reason), why);
    if (s->request[0] != '\0') sc_copy(s->prev_request, sizeof(s->prev_request), s->request);
    s->request[0] = '\0';
    s->request_active = 0;
    s->round = 0;
    s->relisten_armed = 0;
    s->deadline_ms = 0;
    s->ctx_valid = 0;
    s->session_ends++;
}

int sc_poll(sc_ctx *s, long long now_ms)
{
    if (s == NULL) return SC_IDLE;
    if (!s->cfg.enabled) return s->state;

    if (s->state == SC_SPEAKING && s->deadline_ms > 0 && now_ms >= s->deadline_ms) {
        /* SPEAKING 安全兜底：播放事件迟迟不来（TtsExec 卡死）。此时 request 已无
         * 法通过播放收尾，必须连请求一起清掉，否则永久悬挂 */
        s->timeouts++;
        s->closes++;
        sc_end_dialog(s, "speaking deadline (no playback events)");
        sc_set(s, SC_CLOSING, now_ms, "speaking deadline (no playback events)");
        return s->state;
    }
    if (s->state == SC_INTERRUPTED && s->request_active &&
        s->deadline_ms > 0 && now_ms >= s->deadline_ms) {
        /* T8-13.5：interrupt 只把 5 倍截止覆盖成普通窗口，并不清除活动请求。
         * 若 TtsExec 不发布对应的 interrupted/idle 收尾，请求就永远终结不了 ——
         * 而下面的通用关闭分支要求 !request_active，绝不可能走到。与 T8-13.4 的
         * SPEAKING 悬挂同类，必须在截止到达时连请求一起清场（旧 id 记入
         * prev_request，迟到的播放收尾会被当作 stale 过滤）。 */
        s->timeouts++;
        s->closes++;
        sc_end_dialog(s, "interrupted deadline (no playback final event)");
        sc_set(s, SC_CLOSING, now_ms, "interrupted deadline (no playback final event)");
        return s->state;
    }
    if ((s->state == SC_FOLLOWUP || s->state == SC_INTERRUPTED || s->state == SC_LISTENING ||
         s->state == SC_WAKE_PENDING) &&
        s->deadline_ms > 0 && now_ms >= s->deadline_ms && !s->request_active) {
        s->timeouts++;
        s->closes++;
        /* T8-15：续听窗口过期 = 对话正常收束（下一句必须重新唤醒） */
        sc_end_dialog(s, s->relisten_armed ? "relisten window expired"
                                          : "deadline reached");
        sc_set(s, SC_CLOSING, now_ms, s->relisten_armed ? "relisten window expired"
                                                       : "deadline reached");
        return s->state;   /* CLOSING 是可观测的瞬时态：本拍先停在 CLOSING，下一拍回 IDLE */
    }
    if (s->state == SC_CLOSING) {
        sc_set(s, SC_IDLE, now_ms, "closed");
    }
    return s->state;
}

void sc_force_close(sc_ctx *s, const char *why, long long now_ms)
{
    if (s == NULL || !s->cfg.enabled) return;
    s->closes++;
    sc_set(s, SC_CLOSING, now_ms, why != NULL ? why : "force close");
    sc_end_dialog(s, why != NULL ? why : "force close");
    s->prev_request[0] = '\0';
}

/* ---------------- T8-15：对话收束 / 上下文与续听窗口查询 ---------------- */

void sc_on_session_end(sc_ctx *s, const char *why, long long now_ms)
{
    if (s == NULL || !s->cfg.enabled) return;
    if (s->state == SC_IDLE && s->round == 0) {
        /* 本来就没有对话：只记原因，不制造 CLOSING 事件 */
        sc_copy(s->end_reason, sizeof(s->end_reason), why != NULL ? why : "session end (idle)");
        return;
    }
    s->closes++;
    sc_end_dialog(s, why != NULL ? why : "session end");
    sc_set(s, SC_CLOSING, now_ms, why != NULL ? why : "session end");
}

void sc_set_ctx_valid(sc_ctx *s, int valid)
{
    if (s == NULL) return;
    s->ctx_valid = valid ? 1 : 0;
}

int sc_is_relisten_armed(const sc_ctx *s)
{
    if (s == NULL) return 0;
    return s->relisten_armed && s->state == SC_FOLLOWUP && s->deadline_ms > 0;
}

int sc_round(const sc_ctx *s)
{
    return s != NULL ? s->round : 0;
}

/*
 * 从 TtsExec writePlayState() 的输出（JSONObject.toString(2)）取字符串字段：
 * 形如 "event_id": "t6-30807-1969198-g1"（键值之间有空格，值可能带引号转义）。
 * 返回写入长度；<0 = 未找到/非法。
 */
int sc_json_str(const char *body, size_t len, const char *key, char *out, size_t cap)
{
    char pat[96];
    const char *p, *end;
    size_t o = 0;

    if (body == NULL || key == NULL || out == NULL || cap == 0) return -1;
    out[0] = '\0';
    if (len == 0) len = strlen(body);
    if ((int)snprintf(pat, sizeof(pat), "\"%s\": ", key) >= (int)sizeof(pat)) return -1;

    p = strstr(body, pat);
    if (p == NULL) return -1;
    p += strlen(pat);
    if (p >= body + (ptrdiff_t)len || *p != '"') return -1;
    p++;
    end = body + len;
    while (p < end && *p != '"' && *p != '\n' && o + 1 < cap) {
        if (*p == '\\' && p + 1 < end) {            /* JSON 转义：保真下一字节 */
            p++;
        }
        out[o++] = *p++;
    }
    if (p >= end || *p != '"') return -1;           /* 没有闭合引号 = 结构异常 */
    out[o] = '\0';
    return (int)o;
}
