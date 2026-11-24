/*
 * qwen_provider.h -- T9-08C: 通义千问（阿里云百炼 DashScope）适配器
 *
 * 两种模式，两套报文（这就是"协议允许独立实现"的直接体现）：
 *
 *   native（原生 DashScope）
 *     POST {base}/services/aigc/text-generation/generation
 *     body: {"model":M,"input":{"messages":[...]},"parameters":{"result_format":"message",...}}
 *     resp: output.choices[0].message.content（result_format=message）
 *           或 output.text（result_format=text）
 *     err : {"code":"InvalidApiKey","message":"..."}
 *
 *   compat（DashScope 的 OpenAI 兼容模式）
 *     POST {base}/chat/completions
 *     body: OpenAI Chat Completions（复用 openai_provider.c 的同一份实现）
 *     resp: choices[0].message.content
 *
 * 默认地址：native https://dashscope.aliyuncs.com/api/v1
 *           compat https://dashscope.aliyuncs.com/compatible-mode/v1
 */
#ifndef QWEN_PROVIDER_H
#define QWEN_PROVIDER_H

#include <stddef.h>

#include "model_call.h"
#include "tg_http.h"

#define QW_NATIVE_SUFFIX "/services/aigc/text-generation/generation"
#define QW_PATH_MAX      352

int  qw_is_compat(const char *api_mode);

/* 依 api_mode 拼 URL；0 = ok；-1 = 非法 */
int  qw_build_url(const char *base, const char *api_mode, char *out, size_t cap,
                  char *err, size_t errlen);

/* 原生模式的请求体（compat 模式走 oa_build_body） */
int  qw_build_body_native(const mcall_in *in, char *out, size_t cap, size_t *outlen,
                          char *err, size_t errlen);

/* 原生模式的成功体解析：output.choices[0].message.content，其次 output.text */
int  qw_parse_content_native(const char *json, size_t len, char *out, size_t cap,
                             size_t *outlen, char *err_class, size_t classlen,
                             char *detail, size_t detaillen);

/* 原生模式的错误体：code / message */
void qw_parse_error(const char *json, size_t len, char *code, size_t codecap,
                    char *msg, size_t msgcap);

/* 一次真实调用（内部按 api_mode 选择原生或兼容）；0 = 成功 */
int  qw_call(const mcall_in *in, const tg_http_xport *xp, void *xctx,
             char *out, size_t outcap, size_t *outlen, mcall_meta *meta);

#endif /* QWEN_PROVIDER_H */
