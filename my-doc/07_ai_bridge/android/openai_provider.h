/*
 * openai_provider.h -- T9-08C: OpenAI 兼容接入（通用方式）
 *
 * 适用于 DeepSeek / OpenAI / 自建代理 / 任何 OpenAI Chat Completions 兼容服务，
 * 也用于通义千问的 "compat" 模式。这里**没有**任何厂商的默认地址或模型名：
 * base_url、model、key 全部由配置给出（这正是"通用"的意思）。
 *
 * 协议（OpenAI Chat Completions，非流式）：
 *   POST {base}/chat/completions
 *   body: {"model":M,"messages":[...],"stream":false,"max_tokens":N,"temperature":T} + extra
 *   resp: choices[0].message.content
 *   err : {"error":{"message":"...","type":"...","code":"..."}}（也兼容顶层 message）
 */
#ifndef OPENAI_PROVIDER_H
#define OPENAI_PROVIDER_H

#include <stddef.h>

#include "model_call.h"
#include "tg_http.h"

#define OA_PATH_SUFFIX "/chat/completions"
#define OA_URL_MAX     352

int  oa_build_url(const char *base, char *out, size_t cap, char *err, size_t errlen);
int  oa_build_body(const mcall_in *in, char *out, size_t cap, size_t *outlen,
                   char *err, size_t errlen);
int  oa_parse_content(const char *json, size_t len, char *out, size_t cap, size_t *outlen,
                      char *err_class, size_t classlen, char *detail, size_t detaillen);
void oa_parse_error(const char *json, size_t len, char *code, size_t codecap,
                    char *msg, size_t msgcap);

/* 0 = 成功（out/outlen 为回答正文）；-1 = 失败（meta 说明） */
int  oa_call(const mcall_in *in, const tg_http_xport *xp, void *xctx,
             char *out, size_t outcap, size_t *outlen, mcall_meta *meta);

#endif /* OPENAI_PROVIDER_H */
