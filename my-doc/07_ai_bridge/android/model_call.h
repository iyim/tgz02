/*
 * model_call.h -- T9-08C: 三个厂商适配器共用的"管道"，不含任何厂商协议
 *
 * 分工（这是本轮架构原则的落地点）：
 *   本文件            统一配置管理里真正共享的部分 = 一条 POST + 状态码分类 + system 插入
 *   doubao_provider   火山方舟协议：URL/请求体/成功与错误解析/endpoint-id
 *   qwen_provider     DashScope 协议：原生模式与 OpenAI 兼容模式两套报文
 *   openai_provider   OpenAI 兼容协议（复用 T5-06C 已真机验证的引擎）
 *
 * 也就是说：**统一的是配置与管道，不是协议**。把豆包的 URL 换成 OpenAI 的写法能跑通，
 * 但那不叫"实现豆包适配器"——这里每个 adapter 都自己拼自己的报文。
 */
#ifndef MODEL_CALL_H
#define MODEL_CALL_H

#include <stddef.h>

#include "tg_http.h"

#define MCALL_CLASS_MAX  40
#define MCALL_DETAIL_MAX 160
#define MCALL_RESP_MAX   65536
#define MCALL_BODY_MAX   32768
#define MCALL_MSG_MAX    128

typedef struct {
    int       http_status;
    int       timed_out;
    int       transport_failed;
    long long latency_ms;
    size_t    resp_bytes;
    char      err_class[MCALL_CLASS_MAX];    /* http_401 / bad_json / no_content / timeout ... */
    char      err_detail[MCALL_DETAIL_MAX];  /* 脱敏：厂商 error code + 截断后的短句 */
} mcall_meta;

/*
 * 一次模型调用需要的全部输入（统一配置的直接映射）。
 * 三个 adapters 用同一个结构，但各自只读自己厂商需要的字段：
 *   豆包：base_url/model/endpoint_id
 *   千问：base_url/model/api_mode
 *   通用：base_url/model
 * 谁都不会去读"别家"的字段，也不会因为别家字段为空而失败。
 */
typedef struct {
    const char *base_url;
    const char *api_key;
    const char *model;
    const char *endpoint_id;
    const char *api_mode;
    const char *extra;
    const char *system_prompt;
    const char *messages_json;
    int         max_tokens;
    double      temperature;
    int         connect_timeout_ms;
    int         total_timeout_ms;
} mcall_in;

void mcall_meta_init(mcall_meta *m);

/* HTTP 状态码 -> 短类别（"http_401" 之类）；2xx 返回 NULL */
const char *mcall_class_for_status(int status);

/* 把 system 作为第一条消息插到 messages 数组最前面（messages_json 由 conv_context 生成）。
 * 0 = ok；-1 = 参数非法/放不下（err 说明，绝不截断出一个坏 JSON）。 */
int mcall_with_system(const char *system_prompt, const char *messages_json,
                      char *out, size_t cap, size_t *outlen, char *err, size_t errlen);

/* 一次 POST。返回 0 = 拿到 2xx 响应；-1 = 失败（meta->err_class/err_detail 说明原因）。
 * api_key 以 "Authorization: Bearer <key>" 发出；key 不会进入 meta。 */
int mcall_post(const tg_http_xport *xp, void *xctx, const char *url, const char *api_key,
               const char *body, size_t blen, int connect_timeout_ms, int total_timeout_ms,
               char *resp, size_t respcap, size_t *resplen, mcall_meta *meta);

/* 把任意一段文本压成"干净的一行"写进 dst（去掉控制字符、截断），用于错误详情 */
void mcall_detail(char *dst, size_t cap, const char *code, const char *msg);

#endif /* MODEL_CALL_H */
