/*
 * qwen_provider.c -- T9-08C: 通义千问适配器实现（见 qwen_provider.h）
 */
#include "qwen_provider.h"

#include "model_json.h"
#include "openai_provider.h"

#include <stdio.h>
#include <string.h>

int qw_is_compat(const char *api_mode)
{
    return api_mode != NULL && strcmp(api_mode, "compat") == 0;
}

int qw_build_url(const char *base, const char *api_mode, char *out, size_t cap,
                 char *err, size_t errlen)
{
    size_t n;

    if (out == NULL || cap == 0) return -1;
    out[0] = '\0';
    if (qw_is_compat(api_mode)) {
        /* 兼容模式的 URL 就是 OpenAI 的那条，直接交给 oa_build_url */
        return oa_build_url(base, out, cap, err, errlen);
    }
    if (base == NULL || base[0] == '\0') {
        if (err && errlen) snprintf(err, errlen, "base url is empty");
        return -1;
    }
    if (!(strncmp(base, "https://", 8) == 0 || strncmp(base, "http://", 7) == 0)) {
        if (err && errlen) snprintf(err, errlen, "base url must start with http(s)://");
        return -1;
    }
    n = strlen(base);
    if (strstr(base, QW_NATIVE_SUFFIX) != NULL) {
        snprintf(out, cap, "%s", base);
        return 0;
    }
    while (n > 0 && base[n - 1] == '/') n--;
    if (n + sizeof(QW_NATIVE_SUFFIX) >= cap) {
        if (err && errlen) snprintf(err, errlen, "url too long");
        return -1;
    }
    memcpy(out, base, n);
    memcpy(out + n, QW_NATIVE_SUFFIX, sizeof(QW_NATIVE_SUFFIX));
    return 0;
}

/* extra 成员原样并入某个对象（去掉首尾大括号）；用于 parameters 与顶层 */
static int qw_merge_into(char *out, size_t cap, size_t *used, const char *extra,
                         char *err, size_t errlen)
{
    size_t n, i;
    int nonblank = 0;

    if (extra == NULL || extra[0] == '\0') return 0;
    n = strlen(extra);
    if (extra[0] != '{') {
        if (err && errlen) snprintf(err, errlen, "extra must be a JSON object");
        return -1;
    }
    for (i = 1; i + 1 < n; i++) {
        if (extra[i] != ' ' && extra[i] != '\t' && extra[i] != '\r' && extra[i] != '\n') {
            nonblank = 1;
            break;
        }
    }
    if (!nonblank) return 0;
    if (*used + 2 > cap) {
        if (err && errlen) snprintf(err, errlen, "request body too small for extra");
        return -1;
    }
    out[(*used)++] = ',';
    for (i = 1; i + 1 < n; i++) {
        if (*used + 2 > cap) {
            if (err && errlen) snprintf(err, errlen, "request body too small for extra");
            return -1;
        }
        out[(*used)++] = extra[i];
    }
    return 0;
}

int qw_build_body_native(const mcall_in *in, char *out, size_t cap, size_t *outlen,
                         char *err, size_t errlen)
{
    char merged[MCALL_BODY_MAX];
    size_t mlen = 0, used = 0;
    int n;

    if (in == NULL || out == NULL || cap == 0) return -1;
    out[0] = '\0';
    if (in->model == NULL || in->model[0] == '\0') {
        if (err && errlen) snprintf(err, errlen, "qwen native needs a model name");
        return -1;
    }
    if (mcall_with_system(in->system_prompt, in->messages_json, merged, sizeof(merged), &mlen,
                          err, errlen) != 0) {
        return -1;
    }
    n = snprintf(out, cap, "{\"model\":\"%s\",\"input\":{\"messages\":", in->model);
    if (n <= 0 || (size_t)n >= cap) goto too_small;
    used = (size_t)n;
    if (used + mlen + 1 >= cap) goto too_small;
    memcpy(out + used, merged, mlen);
    used += mlen;
    n = snprintf(out + used, cap - used,
                 "},\"parameters\":{\"result_format\":\"message\",\"max_tokens\":%d,"
                 "\"temperature\":%.2f",
                 in->max_tokens > 0 ? in->max_tokens : 512,
                 in->temperature > 0.0 ? in->temperature : 0.7);
    if (n <= 0 || (size_t)n >= cap - used) goto too_small;
    used += (size_t)n;
    if (qw_merge_into(out, cap - 1, &used, in->extra, err, errlen) != 0) return -1;
    if (used + 3 > cap) goto too_small;
    out[used++] = '}';      /* parameters */
    out[used++] = '}';      /* 顶层 */
    out[used] = '\0';
    if (outlen) *outlen = used;
    return 0;

too_small:
    if (err && errlen) snprintf(err, errlen, "request body too large for one call");
    out[0] = '\0';
    return -1;
}

/* output.choices[0].message.content —— 四层，比通用路径助手多一层，所以这里自己走 */
static int qw_try_message(const char *json, size_t len, char *out, size_t cap, size_t *outlen)
{
    mj j, e, m;

    mj_open(&j, json, len);
    if (mj_obj_open(&j) != 0) return -1;
    if (!mj_obj_find(&j, "output")) return -1;
    if (mj_peek_c(&j) != '{') return -1;
    if (mj_obj_open(&j) != 0) return -1;
    if (!mj_obj_find(&j, "choices")) return -1;
    if (!mj_arr_first(&j)) return -1;
    if (mj_peek_c(&j) != '{') return -1;
    e = j;
    if (mj_obj_open(&e) != 0) return -1;
    if (!mj_obj_find(&e, "message")) return -1;
    if (mj_peek_c(&e) != '{') return -1;
    m = e;
    if (mj_obj_open(&m) != 0) return -1;
    if (!mj_obj_find(&m, "content")) return -1;
    return mj_str_value(&m, out, cap, outlen);
}

/* output.text（result_format=text 时） */
static int qw_try_text(const char *json, size_t len, char *out, size_t cap, size_t *outlen)
{
    mj j;

    mj_open(&j, json, len);
    if (mj_obj_open(&j) != 0) return -1;
    if (!mj_obj_find(&j, "output")) return -1;
    if (mj_peek_c(&j) != '{') return -1;
    if (mj_obj_open(&j) != 0) return -1;
    if (!mj_obj_find(&j, "text")) return -1;
    return mj_str_value(&j, out, cap, outlen);
}

int qw_parse_content_native(const char *json, size_t len, char *out, size_t cap,
                            size_t *outlen, char *err_class, size_t classlen,
                            char *detail, size_t detaillen)
{
    int rc;

    if (out == NULL || cap == 0) return -1;
    out[0] = '\0';
    if (json == NULL || len == 0) {
        if (err_class && classlen) snprintf(err_class, classlen, "empty_resp");
        return -1;
    }
    /* result_format=message：output.choices[0].message.content */
    rc = qw_try_message(json, len, out, cap, outlen);
    if (rc == 0 && out[0] != '\0') return 0;
    if (rc == -2) {
        if (err_class && classlen) snprintf(err_class, classlen, "reply_too_long");
        return -1;
    }
    /* result_format=text：output.text */
    rc = qw_try_text(json, len, out, cap, outlen);
    if (rc == 0 && out[0] != '\0') return 0;
    if (rc == -2) {
        if (err_class && classlen) snprintf(err_class, classlen, "reply_too_long");
        return -1;
    }
    if (err_class && classlen) snprintf(err_class, classlen, "no_content");
    if (detail && detaillen) snprintf(detail, detaillen, "output.choices[0].message.content not found");
    return -1;
}

void qw_parse_error(const char *json, size_t len, char *code, size_t codecap,
                    char *msg, size_t msgcap)
{
    mj j;

    if (code && codecap) code[0] = '\0';
    if (msg && msgcap) msg[0] = '\0';
    if (json == NULL || len == 0) return;
    mj_open(&j, json, len);
    if (mj_obj_open(&j) != 0) return;
    if (mj_obj_find(&j, "code")) mj_str_value(&j, code, codecap, NULL);
    mj_open(&j, json, len);
    if (mj_obj_open(&j) != 0) return;
    if (mj_obj_find(&j, "message")) mj_str_value(&j, msg, msgcap, NULL);
}

int qw_call(const mcall_in *in, const tg_http_xport *xp, void *xctx,
            char *out, size_t outcap, size_t *outlen, mcall_meta *meta)
{
    char url[QW_PATH_MAX];
    char body[MCALL_BODY_MAX];
    char resp[MCALL_RESP_MAX + 1];
    char err[MCALL_MSG_MAX];
    char ecode[48], emsg[128];
    size_t blen = 0, rlen = 0;

    if (meta == NULL || in == NULL) return -1;
    if (qw_is_compat(in->api_mode)) {
        /* 兼容模式就是 OpenAI 协议：不该在这里再实现第二份 */
        return oa_call(in, xp, xctx, out, outcap, outlen, meta);
    }
    mcall_meta_init(meta);
    err[0] = '\0';
    if (qw_build_url(in->base_url, in->api_mode, url, sizeof(url), err, sizeof(err)) != 0) {
        snprintf(meta->err_class, sizeof(meta->err_class), "bad_url");
        snprintf(meta->err_detail, sizeof(meta->err_detail), "%s", err);
        return -1;
    }
    if (qw_build_body_native(in, body, sizeof(body), &blen, err, sizeof(err)) != 0) {
        snprintf(meta->err_class, sizeof(meta->err_class), "bad_request");
        snprintf(meta->err_detail, sizeof(meta->err_detail), "%s", err);
        return -1;
    }
    if (mcall_post(xp, xctx, url, in->api_key, body, blen, in->connect_timeout_ms,
                   in->total_timeout_ms, resp, sizeof(resp), &rlen, meta) != 0) {
        if (meta->http_status >= 400) {
            qw_parse_error(resp, rlen, ecode, sizeof(ecode), emsg, sizeof(emsg));
            mcall_detail(meta->err_detail, sizeof(meta->err_detail),
                         ecode[0] != '\0' ? ecode : NULL, emsg[0] != '\0' ? emsg : NULL);
        }
        return -1;
    }
    if (qw_parse_content_native(resp, rlen, out, outcap, outlen,
                                meta->err_class, sizeof(meta->err_class),
                                meta->err_detail, sizeof(meta->err_detail)) != 0) {
        qw_parse_error(resp, rlen, ecode, sizeof(ecode), emsg, sizeof(emsg));
        if (ecode[0] != '\0' || emsg[0] != '\0') {
            snprintf(meta->err_class, sizeof(meta->err_class), "vendor_error");
            mcall_detail(meta->err_detail, sizeof(meta->err_detail), ecode, emsg);
        }
        return -1;
    }
    return 0;
}
