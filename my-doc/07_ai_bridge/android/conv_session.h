/*
 * conv_session.h -- T7-04 连续对话的会话状态（纯状态机，不碰原厂 Native）
 *
 * 为什么只有状态机：真机实测（evidence/t7_04_continuity_probe.logcat）证明，
 * 原厂"免唤醒续听"由服务端开关驱动 —— StopTalk 的 UpdateContext 里带
 * `"duplexDialogRenew": 0`，ContinuousDialogManager 收到 notify 后不会再自己开一次
 * onListenStarted。也就是说"一轮唤醒连续追问"不是我们在 Worker 侧能凭上下文记忆得到的，
 * 必须由原厂会话续期。这一层因此只做两件可控的事：
 *
 *   1) 会话生命周期（IDLE/ACTIVE/PROCESSING/SPEAKING/WAIT_NEXT/CLOSED）与超时，
 *      让"追问"和"新会话"在日志与状态文件里可区分、可调参；
 *   2) 把下一句 ASR 是否属于同一会话（续问）明确记下来，
 *      一旦后续接入原厂续期能力，Worker 侧不用再改。
 *
 * 状态机是纯逻辑，host 可单测。
 */
#ifndef T7R4_CONV_SESSION_H
#define T7R4_CONV_SESSION_H

#include <stddef.h>

#define CS_ID_MAX      128
#define CS_DETAIL_MAX  160

#define CS_IDLE       0   /* 待机：等唤醒 */
#define CS_ACTIVE     1   /* 已进入会话（本轮刚识别到用户开口） */
#define CS_PROCESSING 2   /* 已提交模型，等回答 */
#define CS_SPEAKING   3   /* AI 正在播报 */
#define CS_WAIT_NEXT  4   /* 播报结束，等用户继续（会话未关） */
#define CS_CLOSED     5   /* 会话超时关闭，回到待机 */

typedef struct {
    int enabled;          /* 1 = 维护会话状态（默认 1） */
    int timeout_ms;       /* 播报结束后等待下一句的最大间隔，默认 12000 */
} cs_config;

typedef struct {
    cs_config cfg;
    int       state;
    long long state_since_ms;
    long long deadline_ms;
    long long session_start_ms;
    long long last_turn_ms;
    int       turns;                 /* 本会话已提交的轮次 */
    int       followups;             /* 第 2 轮起的追问次数 */
    char      session[CS_ID_MAX];    /* 最近一次 ASR session */
    unsigned long opened;            /* 新会话建立次数 */
    unsigned long closed_by_timeout; /* 超时关闭次数 */
    unsigned long transitions;       /* 状态迁移次数 */
    char      last_detail[CS_DETAIL_MAX];
} cs_ctx;

void cs_defaults(cs_config *c);
void cs_init(cs_ctx *s, const cs_config *c);

/* 收到一条（已通过筛选的）ASR 文本：进入会话或作为追问续接。返回新的 state */
int cs_on_asr(cs_ctx *s, const char *session, long long now_ms);

/* 提交给模型 / 入队播报 / 播报结束（由 Worker 调用） */
int cs_on_submit(cs_ctx *s, long long now_ms);
int cs_on_queued(cs_ctx *s, long long now_ms);
int cs_on_play_idle(cs_ctx *s, long long now_ms);

/* 周期检查：WAIT_NEXT 超时 -> CLOSED */
int cs_poll(cs_ctx *s, long long now_ms);

int         cs_is_followup(const cs_ctx *s);   /* 当前状态是否允许"免唤醒续问" */
const char *cs_state_name(int state);

#endif /* T7R4_CONV_SESSION_H */
