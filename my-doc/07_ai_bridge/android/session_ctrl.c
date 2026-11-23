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
}

void sc_init(sc_ctx *s, const sc_config *c)
{
    if (s == NULL) return;
    memset(s, 0, sizeof(*s));
    if (c != NULL) s->cfg = *c;
    else          sc_defaults(&s->cfg);
    if (s->cfg.followup_timeout_ms <= 0) s->cfg.followup_timeout_ms = 12000;
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
    /* 生产代码在原厂唤醒事件接入之前不得调用本函数（见头文件说明）。
     * 保留实现是为了事件接入后无需再改状态机。 */
    s->last_wake_ms = now_ms;
    s->device_listening = 1;
    s->deadline_ms = now_ms + (long long)s->cfg.followup_timeout_ms;
    sc_set(s, SC_WAKE_PENDING, now_ms, "factory wake event");
}

/*
 * 一条被接受的 asr_final：建立/续接会话。
 * 返回 1 = 接受（新会话或同会话新轮次）；0 = 重复事件（同会话同 event_id）已丢弃。
 */
int sc_on_session_text(sc_ctx *s, const char *session, const char *event_id, long long now_ms)
{
    if (s == NULL || !s->cfg.enabled) return s != NULL ? 1 : 0;
    if (session == NULL || session[0] == '\0') return 1;   /* 无会话 id：照常放行，状态机不管 */

    if (sc_same(s->session, session) && event_id != NULL && sc_same(s->last_final_event, event_id)) {
        /* 同一会话同一 event_id 的 final 重复到达 */
        s->duplicate_events++;
        return 0;
    }

    if (s->state == SC_IDLE || s->state == SC_CLOSING ||
        !sc_same(s->session, session)) {
        /* 新会话（新唤醒轮）：旧请求记入 prev_request（迟到的播放/结果回调按它过滤） */
        s->opens++;
        s->request_active = 0;
        if (s->request[0] != '\0') sc_copy(s->prev_request, sizeof(s->prev_request), s->request);
        s->request[0] = '\0';
        sc_copy(s->session, sizeof(s->session), session);
        sc_set(s, SC_LISTENING, now_ms, "new asr session");
    } else {
        sc_set(s, SC_LISTENING, now_ms, "same session new final");
    }
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
                } else {
                    sc_set(s, SC_FOLLOWUP, now_ms, "playback idle");
                }
                s->deadline_ms = now_ms + (long long)s->cfg.followup_timeout_ms;
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

int sc_poll(sc_ctx *s, long long now_ms)
{
    if (s == NULL) return SC_IDLE;
    if (!s->cfg.enabled) return s->state;

    if (s->state == SC_SPEAKING && s->deadline_ms > 0 && now_ms >= s->deadline_ms) {
        /* SPEAKING 安全兜底：播放事件迟迟不来（TtsExec 卡死）。此时 request 已无
         * 法通过播放收尾，必须连请求一起清掉，否则永久悬挂 */
        s->timeouts++;
        s->closes++;
        s->request_active = 0;
        if (s->request[0] != '\0') sc_copy(s->prev_request, sizeof(s->prev_request), s->request);
        s->request[0] = '\0';
        sc_set(s, SC_CLOSING, now_ms, "speaking deadline (no playback events)");
        s->deadline_ms = 0;
        return s->state;
    }
    if ((s->state == SC_FOLLOWUP || s->state == SC_INTERRUPTED || s->state == SC_LISTENING) &&
        s->deadline_ms > 0 && now_ms >= s->deadline_ms && !s->request_active) {
        s->timeouts++;
        s->closes++;
        sc_set(s, SC_CLOSING, now_ms, "deadline reached");
        s->deadline_ms = 0;
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
    s->deadline_ms = 0;
    s->request_active = 0;
    s->request[0] = '\0';
    s->prev_request[0] = '\0';
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
