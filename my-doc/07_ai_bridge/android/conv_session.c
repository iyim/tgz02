/*
 * conv_session.c -- 见 conv_session.h
 */
#include "conv_session.h"

#include <stdio.h>
#include <string.h>

static void cs_copy(char *dst, size_t cap, const char *src)
{
    if (dst == NULL || cap == 0) return;
    if (src == NULL) { dst[0] = '\0'; return; }
    strncpy(dst, src, cap - 1);
    dst[cap - 1] = '\0';
}

void cs_defaults(cs_config *c)
{
    if (c == NULL) return;
    memset(c, 0, sizeof(*c));
    c->enabled = 1;
    c->timeout_ms = 12000;
}

void cs_init(cs_ctx *s, const cs_config *c)
{
    if (s == NULL) return;
    memset(s, 0, sizeof(*s));
    if (c != NULL) {
        s->cfg = *c;
    } else {
        cs_defaults(&s->cfg);
    }
    if (s->cfg.timeout_ms <= 0) s->cfg.timeout_ms = 12000;
    s->state = CS_IDLE;
    s->deadline_ms = 0;
    cs_copy(s->last_detail, sizeof(s->last_detail), "init");
}

const char *cs_state_name(int state)
{
    switch (state) {
    case CS_IDLE:       return "IDLE";
    case CS_ACTIVE:     return "ACTIVE";
    case CS_PROCESSING: return "PROCESSING";
    case CS_SPEAKING:   return "SPEAKING";
    case CS_WAIT_NEXT:  return "WAIT_NEXT";
    case CS_CLOSED:     return "CLOSED";
    default:            return "UNKNOWN";
    }
}

static void cs_set(cs_ctx *s, int st, long long now_ms, const char *why)
{
    if (s == NULL) return;
    if (s->state != st) {
        s->transitions++;
        snprintf(s->last_detail, sizeof(s->last_detail), "%s->%s (%s)",
                 cs_state_name(s->state), cs_state_name(st), why != NULL ? why : "-");
        s->state = st;
        s->state_since_ms = now_ms;
    }
}

int cs_is_followup(const cs_ctx *s)
{
    return (s != NULL && s->state == CS_WAIT_NEXT);
}

int cs_on_asr(cs_ctx *s, const char *session, long long now_ms)
{
    if (s == NULL) return CS_IDLE;
    if (!s->cfg.enabled) return s->state;

    if (s->state == CS_WAIT_NEXT) {
        /* 会话还没关：这一句是追问（不需要唤醒词才算成立，但确实属于同一会话） */
        s->followups++;
        s->turns++;
        s->last_turn_ms = now_ms;
        cs_copy(s->session, sizeof(s->session), session);
        cs_set(s, CS_ACTIVE, now_ms, "followup");
        return s->state;
    }

    if (s->state == CS_IDLE || s->state == CS_CLOSED) {
        s->opened++;
        s->turns = 1;
        s->followups = 0;
        s->session_start_ms = now_ms;
        s->last_turn_ms = now_ms;
        cs_copy(s->session, sizeof(s->session), session);
        cs_set(s, CS_ACTIVE, now_ms, "open");
        return s->state;
    }

    /* ACTIVE / PROCESSING / SPEAKING 中又来一句：同一会话内的新输入 */
    s->turns++;
    s->last_turn_ms = now_ms;
    cs_copy(s->session, sizeof(s->session), session);
    cs_set(s, CS_ACTIVE, now_ms, "input");
    return s->state;
}

int cs_on_submit(cs_ctx *s, long long now_ms)
{
    if (s == NULL) return CS_IDLE;
    if (!s->cfg.enabled) return s->state;
    cs_set(s, CS_PROCESSING, now_ms, "submit");
    s->deadline_ms = 0;
    return s->state;
}

int cs_on_queued(cs_ctx *s, long long now_ms)
{
    if (s == NULL) return CS_IDLE;
    if (!s->cfg.enabled) return s->state;
    cs_set(s, CS_SPEAKING, now_ms, "tts queued");
    return s->state;
}

int cs_on_play_idle(cs_ctx *s, long long now_ms)
{
    if (s == NULL) return CS_IDLE;
    if (!s->cfg.enabled) return s->state;
    if (s->state == CS_SPEAKING || s->state == CS_PROCESSING) {
        cs_set(s, CS_WAIT_NEXT, now_ms, "playback idle");
        s->deadline_ms = now_ms + (long long)s->cfg.timeout_ms;
    }
    return s->state;
}

int cs_poll(cs_ctx *s, long long now_ms)
{
    if (s == NULL) return CS_IDLE;
    if (!s->cfg.enabled) return s->state;
    if (s->state == CS_WAIT_NEXT && s->deadline_ms > 0 && now_ms >= s->deadline_ms) {
        s->closed_by_timeout++;
        cs_set(s, CS_CLOSED, now_ms, "timeout");
        s->deadline_ms = 0;
    } else if (s->state == CS_CLOSED) {
        /* CLOSED 之后立刻回到 IDLE：CLOSED 只是一个可观测的瞬时状态 */
        cs_set(s, CS_IDLE, now_ms, "back to standby");
    }
    return s->state;
}
