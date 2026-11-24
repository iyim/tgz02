/*
 * doubao_realtime_provider.h -- T9-08C: 豆包实时语音适配器（**本轮只到骨架**）
 *
 * 明确边界，不含糊：
 *   ✅ 本轮做：参数结构与校验、状态机、8 个动作的接口、音频通道挂载点、错误码收敛
 *   ❌ 本轮不做：wss 握手、鉴权、音频帧封装、上行/下行、转写与回复事件、重连
 *
 * 所以所有真实动作都返回 RV_E_NOT_IMPLEMENTED（不是 RV_OK）。这一点在报告里同样是明确写的：
 * 实时语音**没有**被当成文本模型接口的一部分，也**没有**声称已经能用。
 *
 * 将来实现时的落点：
 *   connect()            建 wss（url/api_key/app_id），完成鉴权握手
 *   start_session()      发 StartSession（model/sample_rate/channels/frame_ms/barge_in）
 *   send_audio()         把 App 采集的 PCM 打成帧上行
 *   receive_audio()      取下行音频交给 rv_audio_io.write
 *   receive_transcript() 把服务端事件翻成 rv_event（partial/final/interrupt...）
 *   interrupt()          发 barge-in，丢弃当前回复的剩余音频
 *   close_session()      结束会话并 flush
 *   disconnect()          断链；重连策略放在这一层（指数退避，不忙等）
 */
#ifndef DOUBAO_REALTIME_PROVIDER_H
#define DOUBAO_REALTIME_PROVIDER_H

#include <stddef.h>

#include "realtime_voice.h"

/* 豆包实时语音默认接入点（仅默认值，配置可覆盖） */
#define DR_URL_DEFAULT   "wss://openspeech.bytedance.com/api/v2/realtime/ws"
#define DR_RATE_DEFAULT  16000
#define DR_CHANS_DEFAULT 1
#define DR_FRAME_MS      20

typedef struct {
    rv_params    params;
    const rv_audio_io *audio;      /* 可为 NULL（未挂音频通道） */
    rv_event_fn  on_event;
    void        *on_event_ctx;
    rv_state     state;
    unsigned long connects;        /* 调用计数（不是"连接成功"计数） */
    unsigned long sessions;
    unsigned long frames_in;
    unsigned long frames_out;
    char         last_err[RV_ERR_MAX];
} dr_ctx;

/* 填默认参数（url/采样率/声道/帧长/barge_in），key/app_id/model 仍由配置给 */
void dr_defaults(rv_params *p);

/* 校验参数：url 必须 wss://（或 ws:// 用于本地联调），key/app_id/model 非空，
 * 采样率/声道/帧长在合理范围。0 = ok；RV_E_PARAM = 不合法（err 说明） */
int  dr_validate(const rv_params *p, char *err, size_t errlen);

/* 绑定到统一入口（ctx 由调用方持有） */
int  dr_open(rv_provider *p, dr_ctx *ctx, const rv_params *params,
             const rv_audio_io *audio, rv_event_fn on_event, void *on_event_ctx);
void dr_close(rv_provider *p);

#endif /* DOUBAO_REALTIME_PROVIDER_H */
