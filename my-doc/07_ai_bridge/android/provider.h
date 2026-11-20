/*
 * provider.h -- 模型调用的内部抽象
 *
 * 当前实现：
 *   - mock_provider.c     固定回复、零网络（默认，回归测试用）
 *   - deepseek_provider.c T5-06C：真实 DeepSeek Chat Completions（dlopen 系统 libcurl）
 *
 * 设计目标：以后再增加 GPT / 通义 / 豆包 适配器时，只新增一个 provider 实现，
 * 事件消费者（ai_worker.c / event_reader.c / consumer_state.c）一行都不用改。
 * 因此接口只暴露"文本进、文本出 + 三类状态"，不暴露 HTTP、SSE、JSON 细节。
 *
 * 铁律（任务书 §4 与 §8）：
 *   - Provider 不许直接操作 Android 系统、不许执行 shell、不许调用原厂技能。
 *   - Provider 不许把 key、完整 prompt、模型原文写进日志；message 字段只放脱敏后的短描述。
 *   - Provider 的任何失败都必须收敛成返回码 + t6b_reply.status，
 *     绝不让消费者进程崩溃或退出（失败 = 计数 + 重试同一条，不跳过）。
 */
#ifndef T6B_PROVIDER_H
#define T6B_PROVIDER_H

#include <stddef.h>

#define T6B_PROVIDER_NAME_MAX 32
#define T6B_REPLY_TEXT_MAX    1024
#define T6B_PROVIDER_MSG_MAX  160

typedef enum {
    T6B_P_OK = 0,          /* 正常返回 assistant 文本 */
    T6B_P_TIMEOUT = 1,     /* 超时（Mock 模拟或真实 HTTP 超时） */
    T6B_P_ERROR = 2,       /* 上游错误 / 未初始化 / 参数非法 */
    T6B_P_STATUS_COUNT = 3
} t6b_pstatus;

typedef struct {
    t6b_pstatus status;
    int         code;                        /* provider 内部错误码，0 = 无 */
    char        message[T6B_PROVIDER_MSG_MAX]; /* 脱敏描述，不含 key/prompt */
    char        text[T6B_REPLY_TEXT_MAX];    /* assistant 文本（status==OK 时有效） */
    int         text_bytes;
    long long   latency_ms;                  /* 本次调用耗时（Mock 也记） */
    int         mock;                        /* 1 = 固定回复，不是真实模型输出 */
} t6b_reply;

typedef struct t6b_provider t6b_provider;

typedef struct {
    const char *name;
    int  (*init)(t6b_provider *p, char *err, size_t errlen);
    int  (*complete)(t6b_provider *p, const char *user_text, t6b_reply *out);
    void (*fini)(t6b_provider *p);
} t6b_provider_ops;

struct t6b_provider {
    const t6b_provider_ops *ops;
    void *ctx;
};

/* 统一入口（对 ops 做空指针保护，并把任何异常收敛成状态码） */
int  t6b_provider_init(t6b_provider *p, char *err, size_t errlen);
int  t6b_provider_complete(t6b_provider *p, const char *user_text, t6b_reply *out);
void t6b_provider_fini(t6b_provider *p);

const char *t6b_pstatus_name(t6b_pstatus s);

/* ---------------- Mock Provider ---------------- */

#define T6B_MOCK_REPLY_DEFAULT \
    "（T5-06B Mock）我收到了你的语音，本轮不接真实模型。"

typedef struct {
    int  fail_from_call;     /* >0：从第 N 次调用起一直返回错误（模拟"永久失败"） */
    int  fail_first_calls;   /* >0：前 N 次调用失败，之后恢复正常（模拟"临时失败后重试成功"） */
    int  timeout_from_call;  /* >0：从第 N 次调用起一直返回超时 */
    int  delay_ms;           /* 每次调用模拟耗时（受 --mock-delay-ms 控制） */
    char reply[T6B_REPLY_TEXT_MAX];
} t6b_mock_cfg;

typedef struct {
    t6b_mock_cfg  cfg;
    unsigned long calls;
    int           inited;
} t6b_mock;

void t6b_mock_defaults(t6b_mock_cfg *c);

/* 把 Mock 绑定到 provider（ctx 指向调用方持有的 t6b_mock，生命周期由调用方保证） */
int  t6b_mock_open(t6b_provider *p, t6b_mock *m, const t6b_mock_cfg *cfg);
void t6b_mock_close(t6b_provider *p);

#endif /* T6B_PROVIDER_H */
