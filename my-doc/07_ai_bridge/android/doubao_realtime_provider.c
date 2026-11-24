/*
 * doubao_realtime_provider.c -- T9-08C: 豆包实时语音适配器骨架（见 .h）
 *
 * 状态机是真的（可以单测），网络与音频是明牌的"未实现"：
 *   IDLE --connect()--> （参数通过校验后仍是 IDLE，返回 not_implemented）
 *   start_session / send_audio / receive_audio / receive_transcript / interrupt /
 *   close_session                                       一律 not_implemented
 * 这样以后补实现时，调用方（宿主进程/UI）不用改任何接口。
 */
#include "doubao_realtime_provider.h"

#include <stdio.h>
#include <string.h>

void dr_defaults(rv_params *p)
{
    if (p == NULL) return;
    memset(p, 0, sizeof(*p));
    snprintf(p->url, sizeof(p->url), "%s", DR_URL_DEFAULT);
    p->sample_rate = DR_RATE_DEFAULT;
    p->channels = DR_CHANS_DEFAULT;
    p->frame_ms = DR_FRAME_MS;
    p->barge_in = 1;
}

int dr_validate(const rv_params *p, char *err, size_t errlen)
{
    if (err && errlen) err[0] = '\0';
    if (p == NULL) {
        if (err && errlen) snprintf(err, errlen, "no params");
        return RV_E_PARAM;
    }
    if (!(strncmp(p->url, "wss://", 6) == 0 || strncmp(p->url, "ws://", 5) == 0)) {
        if (err && errlen) snprintf(err, errlen, "realtime url must start with wss:// or ws://");
        return RV_E_PARAM;
    }
    if (p->api_key[0] == '\0') {
        if (err && errlen) snprintf(err, errlen, "api key is empty");
        return RV_E_PARAM;
    }
    if (p->app_id[0] == '\0') {
        if (err && errlen) snprintf(err, errlen, "app id is empty");
        return RV_E_PARAM;
    }
    if (p->model[0] == '\0') {
        if (err && errlen) snprintf(err, errlen, "realtime model is empty");
        return RV_E_PARAM;
    }
    if (p->sample_rate < 8000 || p->sample_rate > 48000) {
        if (err && errlen) snprintf(err, errlen, "sample rate out of range [8000,48000]");
        return RV_E_PARAM;
    }
    if (p->channels != 1 && p->channels != 2) {
        if (err && errlen) snprintf(err, errlen, "channels must be 1 or 2");
        return RV_E_PARAM;
    }
    if (p->frame_ms < 10 || p->frame_ms > 200) {
        if (err && errlen) snprintf(err, errlen, "frame_ms out of range [10,200]");
        return RV_E_PARAM;
    }
    return RV_OK;
}

/* ------------------------------------------------------------- ops（骨架） */

static rv_state dr_state(const rv_provider *p)
{
    const dr_ctx *c = (const dr_ctx *)(p != NULL ? p->ctx : NULL);
    return (c != NULL) ? c->state : RV_CLOSED;
}

static int dr_connect(rv_provider *p, char *err, size_t errlen)
{
    dr_ctx *c = (dr_ctx *)(p != NULL ? p->ctx : NULL);
    int rc;

    if (c == NULL) {
        if (err && errlen) snprintf(err, errlen, "no realtime ctx");
        return RV_E_STATE;
    }
    rc = dr_validate(&c->params, err, errlen);
    if (rc != RV_OK) {
        c->state = RV_ERROR;
        snprintf(c->last_err, sizeof(c->last_err), "%s", err != NULL ? err : "bad params");
        return rc;
    }
    c->connects++;
    /* 参数合法，但 wss 握手还没实现：状态仍是 IDLE，绝不假装已连接 */
    snprintf(c->last_err, sizeof(c->last_err), "realtime transport not implemented yet");
    if (err && errlen) snprintf(err, errlen, "%s", c->last_err);
    return RV_E_NOT_IMPLEMENTED;
}

static int dr_disconnect(rv_provider *p)
{
    dr_ctx *c = (dr_ctx *)(p != NULL ? p->ctx : NULL);
    if (c == NULL) return RV_E_STATE;
    c->state = RV_IDLE;
    return RV_E_NOT_IMPLEMENTED;
}

static int dr_start_session(rv_provider *p, char *err, size_t errlen)
{
    dr_ctx *c = (dr_ctx *)(p != NULL ? p->ctx : NULL);
    if (c == NULL) return RV_E_STATE;
    if (dr_validate(&c->params, err, errlen) != RV_OK) return RV_E_PARAM;
    c->sessions++;
    if (err && errlen) snprintf(err, errlen, "realtime session not implemented yet");
    return RV_E_NOT_IMPLEMENTED;
}

static int dr_send_audio(rv_provider *p, const short *pcm, int frames)
{
    dr_ctx *c = (dr_ctx *)(p != NULL ? p->ctx : NULL);
    if (c == NULL || pcm == NULL || frames <= 0) return RV_E_PARAM;
    c->frames_in += (unsigned long)frames;
    return RV_E_NOT_IMPLEMENTED;
}

static int dr_receive_audio(rv_provider *p, short *pcm, int frames, int *got)
{
    dr_ctx *c = (dr_ctx *)(p != NULL ? p->ctx : NULL);
    if (c == NULL || pcm == NULL || frames <= 0 || got == NULL) return RV_E_PARAM;
    *got = 0;
    return RV_E_NOT_IMPLEMENTED;
}

static int dr_receive_transcript(rv_provider *p, rv_event *ev)
{
    dr_ctx *c = (dr_ctx *)(p != NULL ? p->ctx : NULL);
    if (c == NULL || ev == NULL) return RV_E_PARAM;
    return RV_E_NOT_IMPLEMENTED;
}

static int dr_interrupt(rv_provider *p)
{
    dr_ctx *c = (dr_ctx *)(p != NULL ? p->ctx : NULL);
    if (c == NULL) return RV_E_STATE;
    return RV_E_NOT_IMPLEMENTED;
}

static int dr_close_session_fn(rv_provider *p)
{
    dr_ctx *c = (dr_ctx *)(p != NULL ? p->ctx : NULL);
    if (c == NULL) return RV_E_STATE;
    c->state = RV_CONNECTED;
    return RV_E_NOT_IMPLEMENTED;
}

static const rv_ops g_dr_ops = {
    "doubao-realtime",
    dr_connect,
    dr_disconnect,
    dr_start_session,
    dr_send_audio,
    dr_receive_audio,
    dr_receive_transcript,
    dr_interrupt,
    dr_close_session_fn,
    dr_state
};

int dr_open(rv_provider *p, dr_ctx *ctx, const rv_params *params,
            const rv_audio_io *audio, rv_event_fn on_event, void *on_event_ctx)
{
    if (p == NULL || ctx == NULL || params == NULL) return -1;
    memset(ctx, 0, sizeof(*ctx));
    ctx->params = *params;
    ctx->audio = audio;
    ctx->on_event = on_event;
    ctx->on_event_ctx = on_event_ctx;
    ctx->state = RV_IDLE;
    p->ops = &g_dr_ops;
    p->ctx = ctx;
    return 0;
}

void dr_close(rv_provider *p)
{
    if (p == NULL) return;
    p->ops = NULL;
    p->ctx = NULL;
}
