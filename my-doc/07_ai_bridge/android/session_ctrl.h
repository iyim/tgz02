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
 *     T8-15 起由 factory talk tap 从原厂日志行喂入 sc_on_factory_wake()（只读观察，
 *     不注入 :core）。tap 未开启时 last_wake_ms 恒 0、device_listening 恒 0。
 *   - ASR 开始 / ASR 失败事件：hook 只转发 isFinished=1 的 final（onListenStarted 只能
 *     从 tap 观察到，不作为 ASR 结果使用）。
 *   - 设备休眠事件：未桥接到 Worker。
 *
 * FOLLOWUP 语义（任务书 §五，T8-15 扩展）：
 *   ctx_valid = 模型上下文仍然有效（conv_context 里有历史）。
 *   device_listening = 设备仍在原厂聆听状态（turn tap 的 onStartTalk/onStopTalk 观察值）。
 *   两者独立。原厂每轮 final 后即停录（duplexDialogRenew=0，真机证据），
 *   因此 FOLLOWUP 期间 device_listening 通常为 0 —— 不冒充免唤醒聆听。
 *   但 FOLLOWUP 同时是**免唤醒续听窗口**：窗口内到达的新 final（即使原厂给它开了新
 *   ASR 会话 id）按 continuous=1 记为同一对话的下一轮（round++、followup_rounds++），
 *   上下文与对话身份都不重置；窗口过期、用户说停止、触达 max_rounds 才收束对话。
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
    /* T8-15：免唤醒连续对话（对话 = 一次唤醒后的多轮，轮 = 一次 ASR final） */
    int relisten_ms;          /* 播放结束后的续听窗口（0 -> 用 followup_timeout_ms），默认 12000 */
    int max_rounds;           /* 单个对话最多轮次（0 = 不限），默认 8 */
    int continuous;           /* 1 = 续听窗口内的新 ASR 会话算同一对话的下一轮（默认 1） */
} sc_config;

typedef struct {
    sc_config   cfg;
    int         state;
    long long   state_since_ms;
    long long   deadline_ms;          /* FOLLOWUP/INTERRUPTED 的关闭截止 */
    char        session[SC_ID_MAX];   /* 当前对话身份（= 本对话首轮的原厂 ASR 会话 id） */
    char        asr_session[SC_ID_MAX]; /* 最近一条 final 的原厂 ASR 会话 id（每轮可能不同） */
    char        request[SC_ID_MAX];   /* 当前 AI 请求 event_id */
    char        prev_request[SC_ID_MAX]; /* 最近被顶替/清场的请求 id（迟到回调识别用） */
    int         request_active;       /* 1 = 有未终结的 AI 请求 */
    int         ctx_valid;            /* 模型上下文是否承载当前对话（由 Worker 按 conv_context 同步） */
    int         device_listening;     /* 原厂聆听状态（factory talk tap 同步；未接入恒 0） */
    long long   last_wake_ms;         /* 最近一次原厂唤醒成功事件（未接入恒 0） */
    long long   last_final_ms;
    char        last_final_event[SC_ID_MAX];
    char        last_transition[SC_DETAIL_MAX];
    /* T8-15：连续对话计数 */
    int         round;                /* 当前对话第几轮（1 = 首轮，0 = 无对话） */
    int         max_round_seen;       /* 本次进程内观察到的最长对话轮数 */
    int         relisten_armed;       /* 1 = 正在免唤醒续听窗口（FOLLOWUP 且未到截止） */
    char        end_reason[SC_DETAIL_MAX]; /* 最近一次对话结束原因（停止/超时/上限/异常） */
    long long   last_talk_stop_ms;    /* 原厂 onStopTalk（每轮 EOU 都会触发，不等于对话结束） */
    long long   last_listen_start_ms;
    unsigned long transitions;
    unsigned long opens;              /* 新对话数（此前口径：新 ASR 会话数） */
    unsigned long stale_callbacks;    /* 旧请求/旧播放的迟到回调（已拒绝，不污染状态） */
    unsigned long duplicate_events;   /* 重复 final / 重复 submit */
    unsigned long timeouts;           /* Provider 超时 + FOLLOWUP 超时关闭 */
    unsigned long interrupts;         /* 用户打断（播报/处理中被新 utterance 打断） */
    unsigned long closes;             /* 进入 CLOSING 的次数 */
    unsigned long followup_rounds;    /* 免唤醒续听的轮次（续听窗口内到达、期间无新唤醒） */
    unsigned long rounds_total;       /* 累计接受的轮次 */
    unsigned long session_ends;       /* 正常收束的对话数 */
    unsigned long round_cap_hits;     /* 触达 max_rounds 而强制收束的次数 */
    unsigned long wake_events;        /* 原厂唤醒成功事件（factory talk tap） */
    unsigned long talk_stops;         /* 原厂 onStopTalk（EOU）次数 */
    unsigned long listen_starts;      /* 原厂 onListenStarted 次数 */
    unsigned long exit_talks;         /* 原厂 exitTalk（平台会话退出）次数 */
} sc_ctx;

void sc_defaults(sc_config *c);
void sc_init(sc_ctx *s, const sc_config *c);

/* 原厂唤醒事件本体入口（保留；生产代码在事件接入前不得调用） */
void sc_note_wake(sc_ctx *s, long long now_ms);

/* T8-15：原厂事件接入（factory talk tap <= logcat 里 SessionManager 的真实日志行）
 * 目的不是"猜"，而是把原厂自己的回调事实喂进状态机：
 *   onStartTalk  -> 唤醒成功（带 sessionId），device_listening=1
 *   onListenStarted -> 录音开始，device_listening=1
 *   onStopTalk   -> 本轮 EOU 结束（每轮都会发生，**不是**对话结束），device_listening=0
 * 这三个都不改变对话轮次；对话何时结束只由下面的 sc_on_session_end / sc_poll 决定。 */
void sc_on_factory_wake(sc_ctx *s, const char *asr_session, long long now_ms);
void sc_on_factory_listen_start(sc_ctx *s, long long now_ms);
void sc_on_factory_talk_stop(sc_ctx *s, long long now_ms);
/* T8-15：原厂 exitTalk（平台会话退出）。与 onStopTalk 一样是"每轮"事件：
 * 它只说明原厂的 ASR/TTS 会话这一段结束了，**不**代表我们的对话收束。 */
void sc_on_factory_exit_talk(sc_ctx *s, long long now_ms);

int  sc_on_session_text(sc_ctx *s, const char *session, const char *event_id, long long now_ms);
int  sc_on_submit(sc_ctx *s, const char *request_id, long long now_ms);
void sc_on_request_result(sc_ctx *s, const char *request_id, int ok, long long now_ms);
/* T8-13.4：请求归属判定（活动请求 && id 非空 && 与当前 request 完全一致）。
 * 1 = 归属成立。只读，不修改状态；TTS 生命周期入口与 worker 幂等分支共用。 */
int  sc_request_owns(const sc_ctx *s, const char *request_id);
int  sc_on_tts_queued(sc_ctx *s, const char *request_id, long long now_ms);
int  sc_on_play_state(sc_ctx *s, int playing, const char *event_id,
                      const char *outcome, long long now_ms);
void sc_on_interrupt(sc_ctx *s, long long now_ms);
void sc_note_timeout(sc_ctx *s);
int  sc_poll(sc_ctx *s, long long now_ms);
void sc_force_close(sc_ctx *s, const char *why, long long now_ms);

/* T8-15：对话正常收束（用户说"停止/退出"、达到轮次上限、显式关闭）。
 * 与 force_close 的区别：这里是**预期内**的结束，仍走 CLOSING -> IDLE 的可观测路径，
 * 清活动请求、清轮次、写 end_reason，但不清 stale 计数（迟到回调仍按 prev_request 过滤）。 */
void sc_on_session_end(sc_ctx *s, const char *why, long long now_ms);

/* T8-15：模型上下文是否承载当前对话（Worker 按 conv_context 的真实内容同步） */
void sc_set_ctx_valid(sc_ctx *s, int valid);

/* T8-15：当前是否处于免唤醒续听窗口（FOLLOWUP 且未到截止） */
int  sc_is_relisten_armed(const sc_ctx *s);

/* T8-15：当前对话已进行的轮次（0 = 无对话） */
int  sc_round(const sc_ctx *s);

const char *sc_state_name(int state);

/* 从 TtsExec 的 play.public.json（JSONObject.toString(2)，键值间有空格）取字符串字段。
 * 返回值 = 写入长度；<0 = 未找到/非法。 */
int sc_json_str(const char *body, size_t len, const char *key, char *out, size_t cap);

#endif /* T813_SESSION_CTRL_H */
