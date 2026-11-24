/*
 * realtime_voice.h -- T9-08C: 实时语音能力接口（本轮只建立接口与扩展位置）
 *
 * 为什么单独一个接口，而不是给 sendText() 加个参数：
 *   实时语音是**双向、长连接、流式**的会话：上行是麦克风 PCM，下行是模型音频 + 实时转写，
 *   还有打断（barge-in）和重连。它和"一问一答的 HTTP 文本请求"不是同一种东西，
 *   混进 sendText() 会把两边都做坏。
 *
 * 谁来实现：后续 DoubaoRealtimeProvider（doubao_realtime_provider.c）按火山方舟实时语音协议
 * 实现下面 8 个动作；本轮该文件是**明确返回 RV_E_NOT_IMPLEMENTED 的骨架**，不假装能用。
 *
 * 音频从哪来/到哪去：本接口不知道 Android 音频设备。App 侧（或未来的 root 音频桥）
 * 实现 rv_audio_io（采集读、播放写），由 rv_bind_audio() 注入。这样：
 *   - worker 不直接碰 AudioRecord/AudioTrack（不破坏原厂 ASR/TTS 的音频通道）；
 *   - 将来接 App 采集或系统级桥接，都不用改协议实现。
 *
 * 与原厂链路的关系：完全并行。原厂唤醒/ASR/TTS 保持不动；实时语音是另一条可选链路，
 * 只有显式启用时才占用麦克风。
 */
#ifndef REALTIME_VOICE_H
#define REALTIME_VOICE_H

#include <stddef.h>

/* 返回码：0 = 成功；负数 = 明确原因（调用方据此显示/降级，绝不崩溃） */
#define RV_OK                 0
#define RV_E_NOT_IMPLEMENTED (-2)   /* 本轮骨架：协议/音频还没实现            */
#define RV_E_STATE          (-3)    /* 当前状态下不允许这个动作                */
#define RV_E_PARAM          (-4)    /* 参数不合法（url/key/model/采样率...）   */
#define RV_E_IO             (-5)    /* 音频通道不可用                          */

#define RV_URL_MAX     320
#define RV_KEY_MAX     256
#define RV_APPID_MAX   64
#define RV_MODEL_MAX   96
#define RV_ERR_MAX     128

typedef enum {
    RV_IDLE = 0,        /* 未连接                        */
    RV_CONNECTING,      /* 正在建立连接                  */
    RV_CONNECTED,       /* 已连接，未开会话              */
    RV_SESSION,         /* 会话进行中（双向音频）        */
    RV_ERROR,           /* 出错（可用 connect 重试）     */
    RV_CLOSED           /* 已显式关闭                    */
} rv_state;

/* 实时语音连接参数（豆包实时语音的配置项，先按官方字段留位） */
typedef struct {
    char url[RV_URL_MAX];          /* wss:// 实时语音接入点                 */
    char api_key[RV_KEY_MAX];      /* 明文 key（与文本模型同一套配置风格）  */
    char app_id[RV_APPID_MAX];     /* 方舟 App ID                           */
    char model[RV_MODEL_MAX];      /* 实时语音模型标识                      */
    int  sample_rate;              /* 上行采样率（Hz），默认 16000          */
    int  channels;                 /* 声道数，默认 1                        */
    int  frame_ms;                 /* 每帧时长，默认 20                     */
    int  barge_in;                 /* 1 = 允许用户打断（默认 1）            */
} rv_params;

/* 事件：实时转写与实时回复 */
typedef enum {
    RV_EV_SESSION_STARTED = 0,
    RV_EV_TRANSCRIPT_PARTIAL,
    RV_EV_TRANSCRIPT_FINAL,
    RV_EV_REPLY_PARTIAL,
    RV_EV_REPLY_FINAL,
    RV_EV_INTERRUPTED,
    RV_EV_SESSION_ENDED,
    RV_EV_ERROR
} rv_event_kind;

typedef struct {
    rv_event_kind kind;
    int           code;        /* RV_EV_ERROR 时是错误码，其余为 0 */
    const char   *text;        /* 转写/回复文本；音频事件为 NULL    */
    size_t        text_bytes;
} rv_event;

typedef void (*rv_event_fn)(void *ctx, const rv_event *ev);

/* 音频通道（由 App 或未来的音频桥实现；worker 只调用不实现） */
typedef struct {
    void *ctx;
    int  (*open)(void *ctx, const rv_params *p, char *err, size_t errlen);
    /* 采集：读 frames 个采样点（单声道 short）；返回实际读到的采样点数，<0 = 出错 */
    int  (*read)(void *ctx, short *pcm, int frames, char *err, size_t errlen);
    /* 播放：写 frames 个采样点；返回 0 = 写完，<0 = 出错 */
    int  (*write)(void *ctx, const short *pcm, int frames, char *err, size_t errlen);
    void (*close)(void *ctx);
} rv_audio_io;

typedef struct rv_provider rv_provider;

typedef struct {
    const char *name;
    int  (*connect)(rv_provider *p, char *err, size_t errlen);
    int  (*disconnect)(rv_provider *p);
    int  (*start_session)(rv_provider *p, char *err, size_t errlen);
    int  (*send_audio)(rv_provider *p, const short *pcm, int frames);
    /* 非阻塞取一帧下行音频：*got = 取到的采样点数（0 = 暂时没有） */
    int  (*receive_audio)(rv_provider *p, short *pcm, int frames, int *got);
    /* 取一条转写/回复事件：1 = 取到（写入 ev）；0 = 暂时没有；<0 = 出错 */
    int  (*receive_transcript)(rv_provider *p, rv_event *ev);
    int  (*interrupt)(rv_provider *p);
    int  (*close_session)(rv_provider *p);
    rv_state (*state)(const rv_provider *p);
} rv_ops;

struct rv_provider {
    const rv_ops *ops;
    void        *ctx;
};

/* 统一入口（对 ops 做空指针/状态保护，任何异常都收敛成返回码） */
const char *rv_error_name(int rc);
const char *rv_state_name(rv_state s);
int  rv_connect(rv_provider *p, char *err, size_t errlen);
int  rv_disconnect(rv_provider *p);
int  rv_start_session(rv_provider *p, char *err, size_t errlen);
int  rv_send_audio(rv_provider *p, const short *pcm, int frames);
int  rv_receive_audio(rv_provider *p, short *pcm, int frames, int *got);
int  rv_receive_transcript(rv_provider *p, rv_event *ev);
int  rv_interrupt(rv_provider *p);
int  rv_close_session(rv_provider *p);
rv_state rv_state_of(const rv_provider *p);

/* 把音频通道与事件回调挂到 provider 上（由宿主进程调用一次） */
int  rv_bind_audio(rv_provider *p, const rv_audio_io *io);
int  rv_bind_events(rv_provider *p, rv_event_fn fn, void *ctx);

#endif /* REALTIME_VOICE_H */
