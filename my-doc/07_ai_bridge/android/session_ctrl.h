/*
 * session_ctrl.h -- T8-13 基于原厂唤醒事件的自有会话控制中心（纯逻辑，host 可单测）
 *
 * 定位（任务书 §一）：
 *   完全沿用原厂唤醒（KWS/唤醒词/唤醒反馈/云端 ASR 全部归原厂），本模块只管理
 *   原厂唤醒成功之后的会话生命周期：ASR final 关联、AI 请求生命周期、TTS 播放
 *   跟踪、打断、超时、重复事件与旧请求晚到的隔离。
 *
 * 事件来源（全部是 ai_worker 主循环里的真实业务事件，见 T8-13 报告 §事件接入）：
 *   sc_on_session_text   <- 每条被接受的 asr_final（events.jsonl，rec=asr_final 强校验）
 *   sc_on_submit         <- uttq_pop_to_pend() 建 pend（route=ai，唯一建请求点）
 *   sc_on_request_result <- provider_attempt 终态（成功 / 死信放弃）
 *   sc_on_tts_queued     <- tts_enqueue() 成功（回答已入原厂 TTS 队列）
 *   sc_on_play_state     <- TtsExec 发布的 play.public.json（state/event_id/last_outcome）
 *   sc_on_interrupt      <- interrupt_if_speaking()（播报中来了新 utterance）
 *   sc_note_timeout      <- provider T6B_P_TIMEOUT（请求仍在重试）
 *   sc_force_close       <- 死信闩锁 / 关机
 *   sc_poll              <- 主循环周期（FOLLOWUP/INTERRUPTED 超时 → CLOSING → IDLE）
 *
 * 明确未接入的事件（不得伪造，任务书 §三）：
 *   - 原厂唤醒成功事件本体（SessionManager::onStartTalk / KWS 回调）：
 *     libtg_wakeinfo 只落 wakeinfo.jsonl 快照（无 session 关联），Worker 不读取。
 *     在接入之前 sc_note_wake() 不会被生产代码调用：last_wake_ms 恒 0、
 *     device_listening 恒 0、WAKE_PENDING 状态不可达。
 *   - ASR 开始 / ASR 失败事件：hook 只转发 isFinished=1 的 final。
 *   - 原厂会话退出（onStopTalk/exitTalk）与设备休眠事件：未桥接到 Worker。
 *
 * FOLLOWUP 语义（任务书 §五）：
 *   ctx_valid = 模型上下文仍然有效（conv_context 里有历史）。
 *   device_listening = 设备仍在原厂聆听状态。
 *   两者独立。原厂每轮 final 后即停录（duplexDialogRenew=0，真机证据），
 *   因此 FOLLOWUP 期间 device_listening 恒 0 —— 不冒充免唤醒聆听。
 *
 * 状态迁移由真实业务事件驱动；纯函数、固定内存、无 I/O、无线程。
 */
#ifndef T813_SESSION_CTRL_H
#define T813_SESSION_CTRL_H

#include <stddef.h>

#define SC_ID_MAX       128
#define SC_DETAIL_MAX   192

#define SC_IDLE         0   /* 无活动会话 */
#define SC_WAKE_PENDING 1   /* 收到原厂唤醒事件，等待语音输入（唤醒事件未接入前不可达） */
#define SC_LISTENING    2   /* 原厂 ASR 轮次活跃：本会话的 final 已到达（唤醒未接入时由 final 进入） */
#define SC_PROCESSING   3   /* 有效 utterance 已提交，AI 请求进行中 */
#define SC_SPEAKING     4   /* AI 回答已入队/正在播放 */
#define SC_INTERRUPTED  5   /* 当前请求或播放被打断 */
#define SC_FOLLOWUP     6   /* 播放结束后的可继续交互窗口（ctx_valid=1，device_listening=0） */
#define SC_CLOSING      7   /* 正在关闭（瞬时态，下一次 poll 回 IDLE） */

typedef struct {
    int enabled;              /* 1 = 维护会话控制中心（默认 1） */
    int followup_timeout_ms;  /* FOLLOWUP/INTERRUPTED 等待下一句的上限（默认 12000） */
} sc_config;

typedef struct {
    sc_config   cfg;
    int         state;
    long long   state_since_ms;
    long long   deadline_ms;          /* FOLLOWUP/INTERRUPTED 的关闭截止 */
    char        session[SC_ID_MAX];   /* 当前 ASR 会话 id */
    char        request[SC_ID_MAX];   /* 当前 AI 请求 event_id */
    char        prev_request[SC_ID_MAX]; /* 最近被顶替/清场的请求 id（迟到回调识别用） */
    int         request_active;       /* 1 = 有未终结的 AI 请求 */
    int         ctx_valid;            /* 模型上下文仍有效（FOLLOWUP 语义之一） */
    int         device_listening;     /* 原厂聆听状态：唤醒事件接入前恒 0 */
    long long   last_wake_ms;         /* 唤醒事件未接入前恒 0 */
    long long   last_final_ms;
    char        last_final_event[SC_ID_MAX];
    char        last_transition[SC_DETAIL_MAX];
    unsigned long transitions;
    unsigned long opens;              /* 新 ASR 会话（新唤醒轮）数 */
    unsigned long stale_callbacks;    /* 旧请求/旧播放的迟到回调（已拒绝，不污染状态） */
    unsigned long duplicate_events;   /* 重复 final / 重复 submit */
    unsigned long timeouts;           /* Provider 超时 + FOLLOWUP 超时关闭 */
    unsigned long interrupts;         /* 用户打断（播报/处理中被新 utterance 打断） */
    unsigned long closes;             /* 进入 CLOSING 的次数 */
} sc_ctx;

void sc_defaults(sc_config *c);
void sc_init(sc_ctx *s, const sc_config *c);

/* 原厂唤醒事件本体入口（保留；生产代码在事件接入前不得调用） */
void sc_note_wake(sc_ctx *s, long long now_ms);

int  sc_on_session_text(sc_ctx *s, const char *session, const char *event_id, long long now_ms);
int  sc_on_submit(sc_ctx *s, const char *request_id, long long now_ms);
void sc_on_request_result(sc_ctx *s, const char *request_id, int ok, long long now_ms);
int  sc_on_tts_queued(sc_ctx *s, const char *request_id, long long now_ms);
int  sc_on_play_state(sc_ctx *s, int playing, const char *event_id,
                      const char *outcome, long long now_ms);
void sc_on_interrupt(sc_ctx *s, long long now_ms);
void sc_note_timeout(sc_ctx *s);
int  sc_poll(sc_ctx *s, long long now_ms);
void sc_force_close(sc_ctx *s, const char *why, long long now_ms);

const char *sc_state_name(int state);

/* 从 TtsExec 的 play.public.json（JSONObject.toString(2)，键值间有空格）取字符串字段。
 * 返回值 = 写入长度；<0 = 未找到/非法。 */
int sc_json_str(const char *body, size_t len, const char *key, char *out, size_t cap);

#endif /* T813_SESSION_CTRL_H */
