/*
 * nlu_takeover.c -- T8-01：会话级 NLU/CDM 接管判据的实现
 *
 * 判定链（与 T7-05 的 worker 路由语义逐条对齐，不新增规则）：
 *   1) ir_classify(text) 命中某个本地意图；
 *   2) 该意图在当前 route_mask 里已启用；
 *   3) ir.complete == 1（参数完整）。
 * 三条同时成立 -> 放行原厂（T8_TO_PASS）；否则 -> 我方接管（T8_TO_TAKE）。
 *
 * 与 worker 的差别只有一个，且是本轮刻意的：
 *   worker 遇到"意图命中但参数不完整"时走 AI（不执行原厂），但**不拦**原厂的 NLU——
 *   原厂仍可能自己把"音量调到百分之"理解成一个数并执行。T8-01 把这种情况也登记为接管，
 *   让这类半句话在原厂侧彻底不执行。
 */
#include "nlu_takeover.h"
#include "intent_route.h"

#include <string.h>

static void t8_to_copy(char *dst, size_t cap, const char *src)
{
    size_t n;

    if (dst == NULL || cap == 0) return;
    if (src == NULL) { dst[0] = '\0'; return; }
    n = strlen(src);
    if (n >= cap) n = cap - 1;
    memcpy(dst, src, n);
    dst[n] = '\0';
}

static int t8_to_same(const char *a, const char *b)
{
    if (a == NULL || b == NULL) return 0;
    return strcmp(a, b) == 0;
}

static t8_to_slot *t8_to_find(t8_to_state *st, const char *session)
{
    int i;

    if (st == NULL || session == NULL || session[0] == '\0') return NULL;
    for (i = 0; i < T8_TO_SLOTS; i++) {
        if (st->slot[i].used && t8_to_same(st->slot[i].session, session)) return &st->slot[i];
    }
    return NULL;
}

static void t8_to_clear(t8_to_slot *s)
{
    memset(s, 0, sizeof(*s));
}

/* 取一个槽位：优先空槽，否则回收"最早过期/最久未用"的那一个 */
static t8_to_slot *t8_to_alloc(t8_to_state *st, long long now_ms)
{
    int i;
    t8_to_slot *victim = NULL;

    for (i = 0; i < T8_TO_SLOTS; i++) {
        if (!st->slot[i].used) return &st->slot[i];
    }
    for (i = 0; i < T8_TO_SLOTS; i++) {
        t8_to_slot *s = &st->slot[i];
        if (s->deadline_ms <= now_ms) return s;               /* 已过期，直接回收 */
        if (victim == NULL || s->deadline_ms < victim->deadline_ms) victim = s;
    }
    return victim;                                            /* 全都活着：回收最先过期的 */
}

void t8_to_init(t8_to_state *st)
{
    if (st == NULL) return;
    memset(st, 0, sizeof(*st));
}

int t8_to_purge(t8_to_state *st, long long now_ms)
{
    int i;
    int n = 0;

    if (st == NULL) return 0;
    for (i = 0; i < T8_TO_SLOTS; i++) {
        if (st->slot[i].used && st->slot[i].deadline_ms <= now_ms) {
            t8_to_clear(&st->slot[i]);
            st->expired++;
            n++;
        }
    }
    return n;
}

t8_to_decision t8_to_on_final(t8_to_state *st, const char *session, const char *text,
                              long long now_ms, int route_mask, t8_to_why *out_why)
{
    ir_result ir;
    t8_to_slot *s;
    int hit;
    int enabled;
    t8_to_why why;

    if (out_why != NULL) *out_why = T8_TO_WHY_NONE;
    if (st == NULL || session == NULL || session[0] == '\0') return T8_TO_PASS;

    (void)t8_to_purge(st, now_ms);

    memset(&ir, 0, sizeof(ir));
    hit = ir_classify(text, &ir);
    enabled = (hit && (route_mask & ir_route_bit(ir.intent))) ? 1 : 0;

    if (hit && enabled && ir.complete) {
        /* 本地指令：清掉可能残留的同名会话登记，交给原厂 */
        s = t8_to_find(st, session);
        if (s != NULL) t8_to_clear(s);
        st->passed++;
        return T8_TO_PASS;
    }

    if (!hit)                     why = T8_TO_WHY_AI;
    else if (!enabled)            why = T8_TO_WHY_AI_INTENT_OFF;
    else                          why = T8_TO_WHY_AI_INCOMPLETE;

    s = t8_to_find(st, session);
    if (s == NULL) s = t8_to_alloc(st, now_ms);
    if (s == NULL) return T8_TO_PASS;      /* 理论上不会发生：兜底放行，绝不误伤 */

    t8_to_clear(s);
    s->used = 1;
    t8_to_copy(s->session, sizeof(s->session), session);
    s->deadline_ms = now_ms + T8_TO_TTL_MS;
    s->why = why;
    t8_to_copy(s->intent, sizeof(s->intent), hit ? ir_intent_name(ir.intent) : "none");
    t8_to_copy(s->rule, sizeof(s->rule), hit ? ir.rule : "");
    st->marked++;
    if (out_why != NULL) *out_why = why;
    return T8_TO_TAKE;
}

int t8_to_should_drop(t8_to_state *st, const char *session, long long now_ms)
{
    t8_to_slot *s;

    if (st == NULL || session == NULL || session[0] == '\0') return 0;
    s = t8_to_find(st, session);
    if (s == NULL) {
        st->unknown++;
        return 0;
    }
    if (s->deadline_ms <= now_ms) {
        t8_to_clear(s);
        st->expired++;
        return 0;
    }
    s->drops++;
    st->dropped++;
    return 1;
}

void t8_to_on_session_end(t8_to_state *st, const char *session)
{
    t8_to_slot *s;

    if (st == NULL) return;
    s = t8_to_find(st, session);
    if (s != NULL) t8_to_clear(s);
}

int t8_to_active(const t8_to_state *st, long long now_ms)
{
    int i;
    int n = 0;

    if (st == NULL) return 0;
    for (i = 0; i < T8_TO_SLOTS; i++) {
        if (st->slot[i].used && st->slot[i].deadline_ms > now_ms) n++;
    }
    return n;
}

const char *t8_to_why_name(t8_to_why why)
{
    switch (why) {
    case T8_TO_WHY_AI:            return "ai";
    case T8_TO_WHY_AI_INCOMPLETE: return "ai-incomplete";
    case T8_TO_WHY_AI_INTENT_OFF: return "ai-intent-off";
    default:                      return "none";
    }
}
