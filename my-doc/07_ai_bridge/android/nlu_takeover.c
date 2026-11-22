/*
 * nlu_takeover.c -- T8-02：会话级接管状态的实现（并发安全 / 容量耗尽安全）
 *
 * 三条硬约束：
 *   1) 绝不覆盖仍在 TTL 内的登记。槽位满 = 显式故障（overflow + 降级窗口），不是"淘汰旧的"。
 *   2) 降级窗口内对未登记会话 fail-closed：宁可这一轮不执行原厂技能，也不让 AI 会话漏进 CDM。
 *   3) 所有导出函数内部加锁；临界区只有内存操作（无 I/O / 无日志 / 无回调），失败路径也不漏锁。
 *
 * 为什么容量取 64：真机实测一次只有一条识别会话（session 每次识别递增），
 * 30 s TTL 内堆到 64 条未回 NLU 的会话已经不是正常现象。所以这里不做动态分配、
 * 不做 LRU，直接把"满"当故障报出来。
 */
#include "nlu_takeover.h"
#include "intent_route.h"

#include <string.h>

#if defined(_WIN32)
static void t8_lock(t8_to_state *st)   { EnterCriticalSection(&st->mutex); }
static void t8_unlock(t8_to_state *st) { LeaveCriticalSection(&st->mutex); }
#else
static void t8_lock(t8_to_state *st)   { pthread_mutex_lock(&st->mutex); }
static void t8_unlock(t8_to_state *st) { pthread_mutex_unlock(&st->mutex); }
#endif

static void t8_copy(char *dst, size_t cap, const char *src)
{
    size_t n;

    if (dst == NULL || cap == 0) return;
    if (src == NULL) { dst[0] = '\0'; return; }
    n = strlen(src);
    if (n >= cap) n = cap - 1;
    memcpy(dst, src, n);
    dst[n] = '\0';
}

static int t8_same(const char *a, const char *b)
{
    if (a == NULL || b == NULL) return 0;
    return strcmp(a, b) == 0;
}

static void t8_clear(t8_to_slot *s)
{
    memset(s, 0, sizeof(*s));
}

/* ---- 以下 *_locked 版本要求调用方已持锁 ---- */

static t8_to_slot *t8_find_locked(t8_to_state *st, const char *session)
{
    int i;

    if (session == NULL || session[0] == '\0') return NULL;
    for (i = 0; i < T8_TO_SLOTS; i++) {
        if (st->slot[i].used && t8_same(st->slot[i].session, session)) return &st->slot[i];
    }
    return NULL;
}

static int t8_purge_locked(t8_to_state *st, long long now_ms)
{
    int i;
    int n = 0;

    for (i = 0; i < T8_TO_SLOTS; i++) {
        if (st->slot[i].used && st->slot[i].deadline_ms <= now_ms) {
            t8_clear(&st->slot[i]);
            st->expired++;
            n++;
        }
    }
    if (st->degraded_until_ms != 0 && st->degraded_until_ms <= now_ms) {
        st->degraded_until_ms = 0;      /* 降级窗口自然结束 */
    }
    return n;
}

/* 只找空槽，**不淘汰任何有效登记**；返回 NULL = 容量耗尽 */
static t8_to_slot *t8_alloc_free_only_locked(t8_to_state *st)
{
    int i;

    for (i = 0; i < T8_TO_SLOTS; i++) {
        if (!st->slot[i].used) return &st->slot[i];
    }
    return NULL;
}

static int t8_active_locked(const t8_to_state *st, long long now_ms)
{
    int i;
    int n = 0;

    for (i = 0; i < T8_TO_SLOTS; i++) {
        if (st->slot[i].used && st->slot[i].deadline_ms > now_ms) n++;
    }
    return n;
}

/* ---- 导出 API ---- */

int t8_to_init(t8_to_state *st)
{
    if (st == NULL) return -1;
    memset(st, 0, sizeof(*st));
#if defined(_WIN32)
    InitializeCriticalSection(&st->mutex);
    st->mutex_ready = 1;
    return 0;
#else
    if (pthread_mutex_init(&st->mutex, NULL) != 0) {
        st->mutex_ready = 0;
        return -1;
    }
    st->mutex_ready = 1;
    return 0;
#endif
}

void t8_to_destroy(t8_to_state *st)
{
    if (st == NULL || !st->mutex_ready) return;
#if defined(_WIN32)
    DeleteCriticalSection(&st->mutex);
#else
    (void)pthread_mutex_destroy(&st->mutex);
#endif
    st->mutex_ready = 0;
}

t8_to_decision t8_to_on_final(t8_to_state *st, const char *session, const char *text,
                              long long now_ms, int route_mask, t8_to_why *out_why)
{
    ir_result ir;
    t8_to_slot *s;
    int hit;
    int enabled;
    t8_to_why why;
    t8_to_decision decision = T8_TO_PASS;

    if (out_why != NULL) *out_why = T8_TO_WHY_NONE;
    if (st == NULL || !st->mutex_ready) return T8_TO_PASS;   /* 锁不可用 -> 不接管（绝不裸跑） */
    if (session == NULL || session[0] == '\0') return T8_TO_PASS;

    memset(&ir, 0, sizeof(ir));
    hit = ir_classify(text, &ir);
    enabled = (hit && (route_mask & ir_route_bit(ir.intent))) ? 1 : 0;

    t8_lock(st);
    (void)t8_purge_locked(st, now_ms);

    if (hit && enabled && ir.complete) {
        /* 本地指令：清掉可能残留的同名登记，交给原厂 */
        s = t8_find_locked(st, session);
        if (s != NULL) t8_clear(s);
        st->passed++;
        t8_unlock(st);
        return T8_TO_PASS;
    }

    why = !hit ? T8_TO_WHY_AI
        : (!enabled ? T8_TO_WHY_AI_INTENT_OFF : T8_TO_WHY_AI_INCOMPLETE);

    s = t8_find_locked(st, session);
    if (s != NULL) {
        /* 同一会话重复投递 final：只刷新 TTL，不重复登记 */
        st->reentrant_marks++;
        s->deadline_ms = now_ms + T8_TO_TTL_MS;
        s->why = why;
        t8_copy(s->intent, sizeof(s->intent), hit ? ir_intent_name(ir.intent) : "none");
        t8_copy(s->rule, sizeof(s->rule), hit ? ir.rule : "");
        st->marked++;
        decision = T8_TO_TAKE;
    } else {
        s = t8_alloc_free_only_locked(st);
        if (s == NULL) {
            /* 容量耗尽：不覆盖任何有效登记；开 fail-closed 降级窗口并如实上报 */
            st->overflow++;
            st->degraded_until_ms = now_ms + T8_TO_DEGRADED_MS;
            if (out_why != NULL) *out_why = T8_TO_WHY_OVERFLOW;
            t8_unlock(st);
            return T8_TO_TAKE_UNREGISTERED;
        }
        t8_clear(s);
        s->used = 1;
        t8_copy(s->session, sizeof(s->session), session);
        s->deadline_ms = now_ms + T8_TO_TTL_MS;
        s->why = why;
        t8_copy(s->intent, sizeof(s->intent), hit ? ir_intent_name(ir.intent) : "none");
        t8_copy(s->rule, sizeof(s->rule), hit ? ir.rule : "");
        st->marked++;
        decision = T8_TO_TAKE;
    }

    if (out_why != NULL) *out_why = why;
    t8_unlock(st);
    return decision;
}

int t8_to_should_drop(t8_to_state *st, const char *session, long long now_ms)
{
    t8_to_slot *s;
    int rc = 0;

    if (st == NULL || !st->mutex_ready) return 0;
    if (session == NULL || session[0] == '\0') return 0;

    t8_lock(st);
    s = t8_find_locked(st, session);
    if (s != NULL && s->deadline_ms <= now_ms) {
        t8_clear(s);
        st->expired++;
        s = NULL;
    }
    if (s != NULL) {
        s->drops++;
        st->dropped++;
        rc = 1;
    } else if (st->degraded_until_ms > now_ms) {
        /* 容量耗尽后的窗口：未登记也不放行（fail-closed，计数可见） */
        st->degraded_passes++;
        rc = 1;
    } else {
        st->unknown++;
        rc = 0;
    }
    t8_unlock(st);
    return rc;
}

void t8_to_on_session_end(t8_to_state *st, const char *session)
{
    t8_to_slot *s;

    if (st == NULL || !st->mutex_ready) return;
    if (session == NULL || session[0] == '\0') return;
    t8_lock(st);
    s = t8_find_locked(st, session);
    if (s != NULL) t8_clear(s);
    t8_unlock(st);
}

int t8_to_purge(t8_to_state *st, long long now_ms)
{
    int n;

    if (st == NULL || !st->mutex_ready) return 0;
    t8_lock(st);
    n = t8_purge_locked(st, now_ms);
    t8_unlock(st);
    return n;
}

int t8_to_active(t8_to_state *st, long long now_ms)
{
    int n;

    if (st == NULL || !st->mutex_ready) return 0;
    t8_lock(st);
    n = t8_active_locked(st, now_ms);
    t8_unlock(st);
    return n;
}

void t8_to_snapshot_take(t8_to_state *st, long long now_ms, t8_to_snapshot *out)
{
    if (out == NULL) return;
    memset(out, 0, sizeof(*out));
    if (st == NULL || !st->mutex_ready) return;

    t8_lock(st);
    (void)t8_purge_locked(st, now_ms);
    out->active = t8_active_locked(st, now_ms);
    out->overflow = (st->overflow > 0) ? 1 : 0;
    out->degraded = (st->degraded_until_ms > now_ms) ? 1 : 0;
    out->marked = st->marked;
    out->passed = st->passed;
    out->dropped = st->dropped;
    out->expired = st->expired;
    out->unknown = st->unknown;
    out->overflow_events = st->overflow;
    out->degraded_passes = st->degraded_passes;
    out->reentrant_marks = st->reentrant_marks;
    t8_unlock(st);
}

const char *t8_to_why_name(t8_to_why why)
{
    switch (why) {
    case T8_TO_WHY_AI:            return "ai";
    case T8_TO_WHY_AI_INCOMPLETE: return "ai-incomplete";
    case T8_TO_WHY_AI_INTENT_OFF: return "ai-intent-off";
    case T8_TO_WHY_OVERFLOW:      return "overflow";
    default:                      return "none";
    }
}
