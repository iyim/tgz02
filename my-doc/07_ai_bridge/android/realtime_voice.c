/*
 * realtime_voice.c -- T9-08C: 实时语音统一入口（见 realtime_voice.h）
 *
 * 这一层只做"保护 + 转发"：ops 为空、状态不对、参数为空时返回明确返回码，
 * 绝不让宿主进程崩溃。协议实现（wss 握手、音频帧、转写事件）在 DoubaoRealtimeProvider 里。
 */
#include "realtime_voice.h"

#include <stdio.h>
#include <string.h>

const char *rv_error_name(int rc)
{
    switch (rc) {
    case RV_OK:                return "ok";
    case RV_E_NOT_IMPLEMENTED: return "not_implemented";
    case RV_E_STATE:           return "bad_state";
    case RV_E_PARAM:           return "bad_param";
    case RV_E_IO:              return "audio_io";
    default:                   return "error";
    }
}

const char *rv_state_name(rv_state s)
{
    switch (s) {
    case RV_IDLE:       return "idle";
    case RV_CONNECTING: return "connecting";
    case RV_CONNECTED:  return "connected";
    case RV_SESSION:    return "session";
    case RV_ERROR:      return "error";
    case RV_CLOSED:     return "closed";
    default:            return "?";
    }
}

static int rv_ready(const rv_provider *p, char *err, size_t errlen, const char *what)
{
    if (p == NULL || p->ops == NULL) {
        if (err && errlen) snprintf(err, errlen, "%s: no realtime provider bound", what);
        return -1;
    }
    return 0;
}

int rv_connect(rv_provider *p, char *err, size_t errlen)
{
    if (rv_ready(p, err, errlen, "connect") != 0) return RV_E_STATE;
    if (p->ops->connect == NULL) {
        if (err && errlen) snprintf(err, errlen, "connect: not implemented");
        return RV_E_NOT_IMPLEMENTED;
    }
    return p->ops->connect(p, err, errlen);
}

int rv_disconnect(rv_provider *p)
{
    if (rv_ready(p, NULL, 0, "disconnect") != 0) return RV_E_STATE;
    if (p->ops->disconnect == NULL) return RV_E_NOT_IMPLEMENTED;
    return p->ops->disconnect(p);
}

int rv_start_session(rv_provider *p, char *err, size_t errlen)
{
    if (rv_ready(p, err, errlen, "start_session") != 0) return RV_E_STATE;
    if (p->ops->start_session == NULL) {
        if (err && errlen) snprintf(err, errlen, "start_session: not implemented");
        return RV_E_NOT_IMPLEMENTED;
    }
    return p->ops->start_session(p, err, errlen);
}

int rv_send_audio(rv_provider *p, const short *pcm, int frames)
{
    if (pcm == NULL || frames <= 0) return RV_E_PARAM;
    if (rv_ready(p, NULL, 0, "send_audio") != 0) return RV_E_STATE;
    if (p->ops->send_audio == NULL) return RV_E_NOT_IMPLEMENTED;
    return p->ops->send_audio(p, pcm, frames);
}

int rv_receive_audio(rv_provider *p, short *pcm, int frames, int *got)
{
    if (got != NULL) *got = 0;
    if (pcm == NULL || frames <= 0 || got == NULL) return RV_E_PARAM;
    if (rv_ready(p, NULL, 0, "receive_audio") != 0) return RV_E_STATE;
    if (p->ops->receive_audio == NULL) return RV_E_NOT_IMPLEMENTED;
    return p->ops->receive_audio(p, pcm, frames, got);
}

int rv_receive_transcript(rv_provider *p, rv_event *ev)
{
    if (ev == NULL) return RV_E_PARAM;
    if (rv_ready(p, NULL, 0, "receive_transcript") != 0) return RV_E_STATE;
    if (p->ops->receive_transcript == NULL) return RV_E_NOT_IMPLEMENTED;
    return p->ops->receive_transcript(p, ev);
}

int rv_interrupt(rv_provider *p)
{
    if (rv_ready(p, NULL, 0, "interrupt") != 0) return RV_E_STATE;
    if (p->ops->interrupt == NULL) return RV_E_NOT_IMPLEMENTED;
    return p->ops->interrupt(p);
}

int rv_close_session(rv_provider *p)
{
    if (rv_ready(p, NULL, 0, "close_session") != 0) return RV_E_STATE;
    if (p->ops->close_session == NULL) return RV_E_NOT_IMPLEMENTED;
    return p->ops->close_session(p);
}

rv_state rv_state_of(const rv_provider *p)
{
    if (p == NULL || p->ops == NULL) return RV_CLOSED;
    if (p->ops->state == NULL) return RV_IDLE;
    return p->ops->state(p);
}

int rv_bind_audio(rv_provider *p, const rv_audio_io *io)
{
    (void)io;
    if (p == NULL) return RV_E_PARAM;
    /* 音频通道由具体 provider 持有（它知道自己要多少采样率/帧长）；
     * 这里只做存在性检查，真正绑定在 DoubaoRealtimeProvider 里完成。 */
    return RV_E_NOT_IMPLEMENTED;
}

int rv_bind_events(rv_provider *p, rv_event_fn fn, void *ctx)
{
    (void)fn;
    (void)ctx;
    if (p == NULL) return RV_E_PARAM;
    return RV_E_NOT_IMPLEMENTED;
}
