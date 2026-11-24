/*
 * doubao_provider.h -- T9-08C: 豆包（火山引擎方舟 Ark）**原生**适配器
 *
 * 这不是"把 OpenAI 的 URL 换成方舟的"。豆包这一侧有自己的：
 *   - URL 形状：{base}/chat/completions，base 默认 https://ark.cn-beijing.volces.com/api/v3
 *   - 模型标识：方舟用 Endpoint ID（ep-xxxx）作为 model 字段；endpoint_id 优先于 model
 *   - 请求体：model/messages/stream:false + 方舟原生扩展参数（thinking / top_p ... 原样并入）
 *   - 错误体：{"error":{"code":"...","message":"..."}}（同时兼容顶层 code/message）
 *   - 成功体：choices[0].message.content
 *
 * 传输层共用 tg_http（同一份 libcurl dlopen），协议层完全独立实现。
 * 未来豆包实时语音走另一条链路（realtime_voice.h / DoubaoRealtimeProvider），不在本文件里。
 */
#ifndef DOUBAO_PROVIDER_H
#define DOUBAO_PROVIDER_H

#include <stddef.h>

#include "model_call.h"
#include "tg_http.h"

#define DB_PATH_SUFFIX "/chat/completions"
#define DB_URL_MAX     320

/* {base}/chat/completions：base 已经带 /chat/completions 时原样使用；base 末尾 '/' 容错。
 * 0 = ok；-1 = 非法（err 说明） */
int db_build_url(const char *base, char *out, size_t cap, char *err, size_t errlen);

/* 组请求体。extra 非空时必须是 JSON 对象文本，其成员原样并入顶层。 */
int db_build_body(const mcall_in *in, char *out, size_t cap, size_t *outlen,
                  char *err, size_t errlen);

/* 从成功体取 choices[0].message.content；空字符串也算失败（no_content） */
int db_parse_content(const char *json, size_t len, char *out, size_t cap, size_t *outlen,
                     char *err_class, size_t classlen, char *detail, size_t detaillen);

/* 从错误体取 code/message（缺省时返回 0 但内容为空） */
void db_parse_error(const char *json, size_t len, char *code, size_t codecap,
                    char *msg, size_t msgcap);

/* 一次真实的豆包调用：0 = 成功（out/outlen 为回答正文）；-1 = 失败（meta 说明） */
int db_call(const mcall_in *in, const tg_http_xport *xp, void *xctx,
            char *out, size_t outcap, size_t *outlen, mcall_meta *meta);

#endif /* DOUBAO_PROVIDER_H */
