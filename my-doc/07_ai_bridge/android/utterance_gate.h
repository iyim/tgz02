/*
 * utterance_gate.h -- T7-04 ASR 半句话提前提交的"暂存 + 修订合并"门（AI Bridge 侧，无 Native 调用）
 *
 * 问题（真人语音实测）：
 *   唤醒后用户稍微停顿再说完整指令，Worker 常常先把前半句当完整指令送去模型，
 *   后半句又被当成第二条指令。原厂 ASR 会给同一句话产出多次 final（修订），
 *   或者一个停顿就切出两个 session。
 *
 * 本模块做三件事，都是"暂存 + 合并"，不延长原厂任何 VAD 参数：
 *   1) 暂存：asr_final 到了先握 debounce_ms（默认 450 ms）再提交；
 *   2) 修订合并：同一个 session 在窗口内又来 final 时按"前缀/相似度"判定是修订
 *      —— 用新文本替换旧文本并顺延，不产生第二条请求；
 *   3) 跨会话续说：不同 session 的文本在 cross_session_ms 内到达、且旧文本以
 *      "悬空谓词"（播放/调到/打开…）结尾时，合并成一句；否则按两条独立指令处理。
 *
 * 硬约束（任务书 §4.3 防重复提交）：
 *   - 一条完整指令只提交一次（event_id + 文本双去重）；
 *   - 只提交不完整指令的最终形态；窗口有上限（max_hold_ms），不会无限等；
 *   - 暂存槽落盘（state_dir/utterance_hold.json），Worker 重启后可恢复/丢弃，
 *     不会把同一句话再提交一次。
 *
 * 纯逻辑 + 一个可选落盘，可在 host 上单测（tests/t7_04_gate_unit_test.c）。
 */
#ifndef T7R4_UTTERANCE_GATE_H
#define T7R4_UTTERANCE_GATE_H

#include <stddef.h>

#define UG_TEXT_MAX     512
#define UG_ID_MAX       128
#define UG_DETAIL_MAX   160

/* ug_feed()/ug_poll() 的返回值 */
#define UG_HELD     0    /* 先握着，还没到提交时机 */
#define UG_RELEASE  1    /* 现在提交 out->text */
#define UG_DROP     2    /* 丢弃（重复/被更长的修订覆盖，不需要提交） */

typedef struct {
    int enabled;            /* 0 = 完全旁路（等价于旧行为：来一条提一条） */
    int debounce_ms;        /* 默认 450：final 之后的续说等待窗口 */
    int max_hold_ms;        /* 默认 2500：从第一条 final 起最长挂起时间 */
    int cross_session_ms;   /* 默认 1200：跨 session 续说的最大间隔 */
    int cross_session;      /* 1 = 允许"悬空谓词"跨 session 合并（默认 1） */
    int revision_sim;       /* 默认 80：同 session 修订判定的相似度（%） */
    /* T7-05：完整的本地指令不必等 debounce_ms（"关闭屏幕"说完就该执行）。
     * 只对"明确动作 + 语义完整"的本地意图开快路，聊天文本仍等满窗口，
     * 否则同 session 的 ASR 修订会被拆成两次回答。
     * fast_intents 是 T7B_ROUTE_* 位掩码，0 = 快路关闭。 */
    int          fast_native;
    unsigned int fast_intents;
} ug_config;

typedef struct {
    int       kind;                     /* UG_HELD / UG_RELEASE / UG_DROP */
    char      text[UG_TEXT_MAX];        /* 要提交（或已丢弃）的完整文本 */
    char      session[UG_ID_MAX];       /* 该文本所属 session */
    char      first_event_id[UG_ID_MAX];/* 首条 final 的 event_id（日志/去重） */
    char      last_event_id[UG_ID_MAX]; /* 最后一条被合并进来的 event_id */
    int       merges;                   /* 合并次数 */
    long long held_ms;                  /* 挂了多久才提交 */
    char      why[24];                  /* timeout/revision/separate/bypass/cross/restore/dup */
} ug_out;

typedef struct {
    ug_config cfg;
    int       have;                 /* 1 = 暂存槽里有内容 */
    char      session[UG_ID_MAX];
    char      event_id[UG_ID_MAX];
    char      last_event_id[UG_ID_MAX];
    char      text[UG_TEXT_MAX];
    long long first_ms;
    long long last_ms;
    long long due_ms;
    int       merges;

    /* T7-05：快路刚放出去的完整指令（用来挡住紧随其后的同 session 修订，
     * 否则"关闭屏幕" + "关闭屏幕吧"会被执行两次） */
    char      fast_session[UG_ID_MAX];
    char      fast_text[UG_TEXT_MAX];
    long long fast_ms;

    /* 观测（打进 Worker 状态文件） */
    unsigned long seen;
    unsigned long held;
    unsigned long released;
    unsigned long merged;
    unsigned long cross_merged;
    unsigned long dropped_dup;
    unsigned long truncated;
    unsigned long restored;
    unsigned long expired_on_restore;
    unsigned long fast_released;    /* T7-05：不等窗口直接提交的完整本地指令数 */
    char      last_detail[UG_DETAIL_MAX];
} ug_ctx;

int  ug_defaults(ug_config *c);
void ug_init(ug_ctx *g, const ug_config *c);

/* 输入一条 asr_final（已通过回声/无指令过滤），now_ms 用单调时钟 */
int  ug_feed(ug_ctx *g, const char *session, const char *event_id,
             const char *text, long long now_ms, ug_out *out);

/* 到点检查：窗口到期就把暂存内容交出来 */
int  ug_poll(ug_ctx *g, long long now_ms, ug_out *out);

/* 下一项到期时间（单调时钟）；没有暂存返回 -1。用于主循环休眠计算 */
long long ug_next_deadline(const ug_ctx *g);

/* 暂存槽落盘/恢复（path 为空 = 不做） */
int  ug_hold_save(const ug_ctx *g, const char *path, char *err, size_t errlen);
int  ug_hold_restore(ug_ctx *g, const char *path, long long now_ms, ug_out *out);

/* 判断"悬空谓词"结尾（跨 session 合并的唯一依据） */
int  ug_looks_incomplete(const char *text);

const char *ug_kind_name(int kind);

#endif /* T7R4_UTTERANCE_GATE_H */
