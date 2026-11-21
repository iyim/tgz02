/*
 * conv_context.h -- T7-01：对话上下文（多轮）独立模块
 *
 * 边界（一句话）：只保存 user/assistant 文本、按轮次淘汰、原子落盘、把历史拼成
 * OpenAI 兼容的 messages 数组；不做网络、不做 TTS、不碰事件消费状态机。
 *
 * 与 Worker 的关系：
 *   Worker 每收到一条 ASR 最终文本 -> cv_build_messages() 生成完整 messages（历史 + 本轮 user）
 *   -> Provider 用 messages 发请求 -> **只有成功拿到非空回复** 才 cv_commit_turn() 落盘。
 *   因此请求失败 / JSON 解析失败 / 空回复永远不会污染历史（任务书 §3.6/§3.7）。
 *
 * 存储格式（JSON，单文件）：
 *   {"version":1,"messages":[{"role":"user","content":"..."},{"role":"assistant","content":"..."}]}
 *   - 临时文件 + fsync + 原子 rename 覆盖，任何时刻读到的都是完整文件；
 *   - 权限 0600（其他普通应用/其他 uid 读不到）；
 *   - 文件损坏（非法 JSON / 非法 UTF-8 / 超长）-> 改名留档 *.corrupt 并清空历史继续跑，
 *     绝不因为上下文文件让 Worker 起不来（任务书 §3.10）。
 *
 * 淘汰规则（任务书 §3.5）：超上限时**按完整轮次**从最早的开始丢（user+assistant 成对），
 * 绝不留下孤立的 assistant 回复；文件里若本来就以 assistant 开头（异常残留）也会被清掉。
 */
#ifndef T6B_CONV_CONTEXT_H
#define T6B_CONV_CONTEXT_H

#include <stddef.h>

#define CV_PATH_MAX             256
#define CV_ROLE_MAX             12
#define CV_TEXT_MAX             1024      /* 单条消息上限（字节，含 NUL 前）；与 ASR/回复上限对齐 */
#define CV_MAX_MESSAGES_HARD    64        /* 内存中最多保存的消息条数 */
#define CV_MAX_MESSAGES_CAP     48        /* 配置允许的上限（偶数，保证成对） */
#define CV_DEFAULT_MAX_MESSAGES 12        /* 默认：3 轮完整对话 */
#define CV_FILE_MAX             (512 * 1024)
#define CV_JSON_MAX             (24 * 1024)  /* messages 数组文本上限 */
#define CV_ERR_MAX              128

/* cv_init 之后 last_load_state 的取值（写进状态文件，便于排查） */
enum {
    CV_LOAD_DISABLED = 0,   /* 开关关闭，没有读文件 */
    CV_LOAD_ABSENT = 1,     /* 首次运行，文件不存在 */
    CV_LOAD_OK = 2,         /* 成功恢复历史 */
    CV_LOAD_RECOVERED = 3,  /* 文件损坏，已留档并清空 */
    CV_LOAD_FAILED = 4      /* 读取失败（权限/IO），历史为空但进程继续 */
};

typedef struct {
    char role[CV_ROLE_MAX];   /* "user" / "assistant" */
    char text[CV_TEXT_MAX];
    int  bytes;
} cv_msg;

typedef struct {
    int  enabled;             /* 0 = 关闭（每轮互相独立） */
    int  max_messages;        /* 生效上限（<=0 用 CV_DEFAULT_MAX_MESSAGES） */
    char file[CV_PATH_MAX];   /* 持久化文件（空 = 不落盘，只留内存） */
} cv_cfg;

typedef struct {
    cv_cfg  cfg;
    cv_msg  msgs[CV_MAX_MESSAGES_HARD];
    int     count;
    int     inited;

    /* 观测（全部不含消息正文） */
    unsigned long long saves;              /* 成功落盘次数 */
    unsigned long long save_errors;        /* 落盘失败次数 */
    unsigned long long loads;              /* 成功恢复的次数（含空文件） */
    unsigned long long corrupt_recoveries; /* 损坏恢复次数 */
    unsigned long long evicted_messages;   /* 因超上限被淘汰的消息数 */
    unsigned long long size_dropped;       /* 因 messages JSON 放不下而临时少发几条 */
    unsigned long long turns_committed;    /* 成功提交的轮次数 */
    int  last_load_state;
    char last_error[CV_ERR_MAX];
} cv_ctx;

void cv_defaults(cv_cfg *c);

/* 初始化 + 从文件恢复历史。0 = 可用（含"文件损坏已安全恢复"）；-1 = 参数非法。
 * 绝不因为文件问题返回 -1：损坏/不可读都只记 last_error 并继续以空历史运行。 */
int  cv_init(cv_ctx *ctx, const cv_cfg *cfg);

/* 追加一条消息；0 = 成功，-1 = 非法（空文本 / 非法 UTF-8 / 超长）。
 * 只入内存并做淘汰，不落盘（落盘由 cv_save / cv_commit_turn 负责）。 */
int  cv_add_user(cv_ctx *ctx, const char *text);
int  cv_add_assistant(cv_ctx *ctx, const char *text);

/* 提交一轮：user + assistant 一起入内存 -> 淘汰 -> 落盘。
 * **只在模型成功并拿到非空回复时调用**。
 * 返回 0 = 已入内存且已落盘；1 = 已入内存但落盘失败（save_errors++，进程继续）；
 * -1 = 文本非法（不入内存）。 */
int  cv_commit_turn(cv_ctx *ctx, const char *user_text, const char *assistant_text);

/* 清空当前上下文：内存清空 + 删除文件（删除失败只记录，不影响返回值 0）。 */
int  cv_clear(cv_ctx *ctx);

/* 原子落盘。0 = 成功；-1 = 失败（err 说明，不含正文）。 */
int  cv_save(cv_ctx *ctx, char *err, size_t errlen);

/* 拼 OpenAI 兼容的 messages 数组（T7-03：system 永远第一，然后历史，最后本轮 user）。
 *   - system_prompt 非空 -> 作为 messages[0]；为空 -> 不插 system（老行为）；
 *   - system 不计入上下文淘汰：它不在 ctx->msgs 里，永远不会被 cv_evict 丢掉；
 *   - system 放不下时**报错**，绝不静默丢 system 或截断正文。
 *   返回写入的历史 user/assistant + 本轮 user 的条数（>=1，不含 system）；
 *   0 = 没有任何消息（current 为空且历史为空）；-1 = 参数/缓冲区不可用（err 说明）。
 * 历史放不下时从最早轮次起少发（size_dropped++），绝不截断单条消息正文。 */
int  cv_build_messages(cv_ctx *ctx, const char *system_prompt, const char *current_user,
                       char *out, size_t cap, char *err, size_t errlen);

/* 诊断/测试用：当前轮次数（完整 user+assistant 对的数量） */
int  cv_turn_count(const cv_ctx *ctx);

#endif /* T6B_CONV_CONTEXT_H */
