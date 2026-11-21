/*
 * deepseek_provider.h -- T5-06C：DeepSeek Chat Completions 真实 Provider
 *
 * 与 mock_provider.c 同一个 t6b_provider_ops 抽象，Worker 一行都不用改消费语义：
 * 文本进 → HTTPS 调用 → 文本出；失败一律收敛成 t6b_reply.status + 脱敏 message。
 *
 * 技术路线（T5-06A 真机已实证）：
 *   - 进程本身是 ARM32 动态链接 PIE；
 *   - **运行时 dlopen("libcurl.so")**（Android 8.1 自带 libcurl 7.52.0-DEV）+ dlsym，
 *     不链接 ROM 私有 ABI，也不把 libcurl/libssl/libcrypto 静态打进来（静态二进制无法 dlopen）。
 *
 * 隐私铁律：
 *   - API Key 只存在 t6b_ds.api_key 里（fini 时清零），不进日志 / 状态文件 / 命令行 / URL；
 *   - 不打印 Authorization 头、完整请求 JSON、完整用户文本、上游原始错误体；
 *   - 只记录：http_status / curl_code / latency_ms / response_bytes / 错误类别（短枚举）。
 *
 * 可测试性：HTTP 传输层是**可注入**的 vtable（t6b_ds_xport）。
 *   - 真机：默认 libcurl 传输层（dlopen）；
 *   - 主机：单元测试注入桩（不需要 libcurl，也不需要真实 key）。
 */
#ifndef T6B_DEEPSEEK_PROVIDER_H
#define T6B_DEEPSEEK_PROVIDER_H

#include <stddef.h>

#include "provider.h"

/* ---------------- 默认配置 ---------------- */

#define T6B_DS_KEY_FILE_DEFAULT  "/data/local/tmp/t5_bridge/secret/deepseek_api_key"
#define T6B_DS_MODEL_DEFAULT     "deepseek-chat"
#define T6B_DS_BASE_URL_DEFAULT  "https://api.deepseek.com"
#define T6B_DS_PATH_SUFFIX       "/chat/completions"
#define T6B_DS_CONNECT_MS_DEFAULT 5000
#define T6B_DS_TIMEOUT_MS_DEFAULT 30000
#define T6B_DS_MAX_TOKENS_DEFAULT 512

/* 默认 system 指令（T7-03）：角色 = "TG-Z02 智能音箱上的 AI 语音助手"。
 * 关键点（任务书 §2.2/§2.3）：
 *   - 不主动声明自己是不是天猫精灵、不解释品牌/模型/技术实现；
 *   - 只有用户主动问身份才提及；
 *   - 回答要适合语音播报（不排版、不长篇）；
 *   - 不谎称有未实现的设备控制能力。
 * 运行时可用 worker.conf 的 system_prompt / system_prompt_file 覆盖，
 * 也可以由 --system-prompt 覆盖（优先级：命令行 > 配置文件 > 本默认值）。 */
#define T6B_DS_SYSTEM_PROMPT_DEFAULT \
    "你是运行在 TG-Z02 智能音箱上的 AI 语音助手。\n" \
    "你使用自然、亲切、简洁的中文与用户交流，具备连续对话和上下文理解能力。\n" \
    "你是用户当前使用的音箱 AI 助手。不要主动介绍自己是不是天猫精灵，" \
    "不要反复声明自己不是天猫精灵，也不要主动解释设备品牌、模型供应商或技术实现。\n" \
    "除非用户主动询问身份，否则直接回答用户的问题。\n" \
    "回答应适合语音播报，避免不必要的长篇解释、Markdown 格式和复杂排版。\n" \
    "不得谎称自己具有尚未实现的设备控制能力。"

/* 兼容旧名字：第一版代码里叫 T6B_DS_SYSTEM_PROMPT */
#define T6B_DS_SYSTEM_PROMPT T6B_DS_SYSTEM_PROMPT_DEFAULT

/* 容量上限（全部固定，不随输入增长） */
#define T6B_DS_KEY_MAX     256
#define T6B_DS_MODEL_MAX   64
#define T6B_DS_URL_MAX     320
#define T6B_DS_BODY_MAX    32768       /* T7-01：多轮 messages 会比单轮大得多 */
#define T6B_DS_RESP_MAX    65536     /* 响应体上限：超过即报错，绝不无限读取 */
#define T6B_DS_CLASS_MAX   40
#define T6B_DS_XERR_MAX    96
#define T6B_DS_INPUT_MAX   511       /* 与 T6B_TEXT_MAX 一致：ASR 文本上限（字节） */
#define T6B_DS_TEMP_DEFAULT 0.7      /* T7-01：temperature 现在可配置 */
#define T6B_DS_SYS_PROMPT_MAX 1536   /* T7-03：system prompt 上限（字节，含 NUL 前） */

/* ---------------- 配置 ---------------- */

typedef struct {
    char api_key_file[T6B_DS_URL_MAX];
    char model[T6B_DS_MODEL_MAX];
    char base_url[T6B_DS_URL_MAX];
    int  connect_timeout_ms;
    int  total_timeout_ms;
    int  max_tokens;
    double temperature;      /* T7-01：0.0 - 2.0，默认 0.7 */
    int  insecure_http;      /* 1 = base_url 是明文 http（启动时已告警） */
    /* T7-03：统一 system prompt（空 = 用 T6B_DS_SYSTEM_PROMPT_DEFAULT）。
     * Worker 优先生成 messages[0]；这里保留一份，用于"单轮老路径"和兜底。 */
    char system_prompt[T6B_DS_SYS_PROMPT_MAX];
} t6b_ds_cfg;

void t6b_ds_defaults(t6b_ds_cfg *c);

/* ---------------- 传输层（可注入） ---------------- */

typedef struct {
    const char *url;              /* 已拼好的 {base}/chat/completions */
    const char *api_key;          /* 只在本次调用内有效 */
    const char *body;             /* 完整 JSON 请求体（不含 NUL 结尾要求） */
    size_t      body_len;
    int         connect_timeout_ms;
    int         total_timeout_ms;
} t6b_ds_xreq;

typedef struct {
    int       http_status;        /* 0 = 没拿到（curl 层失败） */
    int       curl_code;          /* libcurl CURLcode；桩可自定 */
    int       timed_out;          /* 1 = 超时 */
    long long latency_ms;
    size_t    resp_len;           /* 写入 resp 的字节数（不含 NUL） */
    int       resp_overflow;      /* 1 = 响应体超过缓冲区（必须报错，不许静默截断） */
    char      error[T6B_DS_XERR_MAX];  /* 脱敏描述，禁止写入 key / 用户文本 */
} t6b_ds_xresult;

typedef struct t6b_ds_xport {
    const char *name;             /* "libcurl" / "stub" */
    /* 0 = 完成（无论 HTTP 状态码），结果在 xr；-1 = 传输层自身不可用（xr.error 说明） */
    int  (*post)(void *ctx, const t6b_ds_xreq *req, char *resp, size_t resp_cap,
                 t6b_ds_xresult *xr);
    void (*close)(void *ctx);
} t6b_ds_xport;

/* ---------------- Provider 实例 ---------------- */

typedef struct {
    t6b_ds_cfg          cfg;
    const t6b_ds_xport *xport;    /* NULL → 用默认 libcurl 传输层 */
    void               *xctx;

    char                url[T6B_DS_URL_MAX];       /* init 时按 base_url 拼好 */
    char                api_key[T6B_DS_KEY_MAX];   /* 仅内存；fini 时清零 */
    int                 api_key_set;
    int                 key_mode;                  /* 密钥文件权限位（-1 = 未取到） */
    int                 owns_xport;                /* 1 = libcurl 由本实例加载，fini 时卸载 */
    int                 inited;

    /* 观测（写状态文件用；都不含敏感内容） */
    unsigned long       calls;
    unsigned long       ok;
    unsigned long       err;
    unsigned long       timeouts;
    int                 last_http_status;
    int                 last_curl_code;
    long long           last_latency_ms;
    unsigned long long  last_resp_bytes;
    char                last_class[T6B_DS_CLASS_MAX];
    char                last_error[T6B_PROVIDER_MSG_MAX];
} t6b_ds;

/* 绑定到 provider（ctx 指向调用方持有的 t6b_ds，生命周期由调用方保证） */
int  t6b_ds_open(t6b_provider *p, t6b_ds *d, const t6b_ds_cfg *cfg);
/* 同上，但指定传输层（单元测试用） */
int  t6b_ds_open_with(t6b_provider *p, t6b_ds *d, const t6b_ds_cfg *cfg,
                      const t6b_ds_xport *xp, void *xctx);
void t6b_ds_close(t6b_provider *p);

/* ---------------- 可单测的纯函数 ---------------- */

/* {base}/chat/completions —— 不重复追加、容忍 base 末尾 '/'，拒绝空值/空白/非法 scheme。
 * 0 = 成功；-1 = 非法（err 说明） */
int  t6b_ds_build_url(const char *base, char *out, size_t cap, char *err, size_t errlen);

/* 读 key：去尾部 CR/LF、拒空、拒超长、拒符号链接（POSIX）、报告实际权限位。
 * 返回 0 = 成功（mode_out 可为 NULL）；-1 = 失败（err 说明，不含 key 内容） */
int  t6b_ds_load_key(const char *path, char *out, size_t cap,
                     int *mode_out, char *err, size_t errlen);

/* 构造请求体（stream:false、非流式、含 model/messages/max_tokens）。
 * user_text 必须是合法 UTF-8 且长度 <= T6B_TEXT_MAX；放不下时返回 -1，绝不截断。 */
int  t6b_ds_build_body(const char *model, const char *user_text,
                       char *out, size_t cap, size_t *outlen, char *err, size_t errlen);

/* T7-01：用完整 messages 数组构造请求体。
 *   messages_json 必须是 JSON 数组文本（"[" 开头 "]" 结尾），由 conv_context 生成；
 *   system_prompt 非空时插到数组最前面；temperature/max_tokens 现在都是参数。
 * 0 = 成功；-1 = 非法/放不下（err 说明）。 */
int  t6b_ds_build_body_msgs(const char *model, const char *system_prompt,
                            const char *messages_json, double temperature, int max_tokens,
                            char *out, size_t cap, size_t *outlen,
                            char *err, size_t errlen);

/* 从响应体取 choices[0].message.content。
 *   0  = 成功（utf8 文本写入 out，*outlen 为字节数）
 *  -1  = 失败（err_class 为短类别：bad_json / no_choices / content_null /
 *        content_not_string / reply_too_long / bad_unicode / bad_utf8 ...
 *        detail 可为 NULL） */
int  t6b_ds_parse_content(const char *json, size_t len, char *out, size_t cap,
                          size_t *outlen, char *err_class, size_t classlen,
                          char *detail, size_t detaillen);

/* 从错误响应体取 error.type / error.code（仅用于日志，不含上游 message 正文）
 * 0 = 取到（可能只有其中一个）；-1 = 没有/解析失败 */
int  t6b_ds_parse_error(const char *json, size_t len, char *type, size_t typecap,
                        char *code, size_t codecap);

/* ---------------- 默认 libcurl 传输层（dlopen） ---------------- */

/* 加载 libcurl.so + dlsym + 选项自检。0 = 可用；-1 = 不可用（err 说明，不崩溃）。
 * 非 POSIX 平台（主机 Windows 测试）一律返回 -1，由桩传输层承担测试。 */
int  t6b_ds_libcurl_init(char *err, size_t errlen);
void t6b_ds_libcurl_fini(void);
const t6b_ds_xport *t6b_ds_libcurl_xport(void);
/* 自检/诊断用：已加载的 libcurl 版本字符串（未加载返回 "(not loaded)"） */
const char *t6b_ds_libcurl_version(void);

#endif /* T6B_DEEPSEEK_PROVIDER_H */
