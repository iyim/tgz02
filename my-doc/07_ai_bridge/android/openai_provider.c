/*
 * openai_provider.c -- T9-08C: OpenAI 兼容适配器实现（见 openai_provider.h）
 */
#include "openai_provider.h"

#include "model_json.h"

#include <stdio.h>
#include <string.h>

int oa_build_url(const char *base, char *out, size_t cap, char *err, size_t errlen)
{
    size_t n;

    if (out == NULL || cap == 0) return -1;
    out[0] = '\0';
    if (base == NULL || base[0] == '\0') {
        if (err && errlen) snprintf(err, errlen, "base url is empty");
        return -1;
    }
    if (!(strncmp(base, "https://", 8) == 0 || strncmp(base, "http://", 7) == 0)) {
        if (err && errlen) snprintf(err, errlen, "base url must start with http(s)://");
        return -1;
    }
    n = strlen(base);
    if (n >= sizeof(OA_PATH_SUFFIX) - 1 &&
        strcmp(base + n - (sizeof(OA_PATH_SUFFIX) - 1), OA_PATH_SUFFIX) == 0) {
        if (n >= cap) {
            if (err && errlen) snprintf(err, errlen, "url too long");
            return -1;
        }
        snprintf(out, cap, "%s", base);
        return 0;
    }
    while (n > 0 && base[n - 1] == '/') n--;
    if (n + sizeof(OA_PATH_SUFFIX) >= cap) {
        if (err && errlen) snprintf(err, errlen, "url too long");
        return -1;
    }
    memcpy(out, base, n);
    memcpy(out + n, OA_PATH_SUFFIX, sizeof(OA_PATH_SUFFIX));
    return 0;
}

static int oa_merge_extra(char *out, size_t cap, size_t *used, const char *extra,
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

int oa_build_body(const mcall_in *in, char *out, size_t cap, size_t *outlen,
                  char *err, size_t errlen)
{
    char merged[MCALL_BODY_MAX];
    size_t mlen = 0, used = 0;
    static const char mid[] = "\",\"stream\":false,\"messages\":";
    int n;

    if (in == NULL || out == NULL || cap == 0) return -1;
    out[0] = '\0';
    if (in->model == NULL || in->model[0] == '\0') {
        if (err && errlen) snprintf(err, errlen, "model name is empty");
        return -1;
    }
    if (mcall_with_system(in->system_prompt, in->messages_json, merged, sizeof(merged), &mlen,
                          err, errlen) != 0) {
        return -1;
    }
    n = snprintf(out, cap, "{\"model\":\"%s", in->model);
    if (n <= 0 || (size_t)n >= cap) goto too_small;
    used = (size_t)n;
    if (used + sizeof(mid) - 1 + 1 >= cap) goto too_small;
    memcpy(out + used, mid, sizeof(mid) - 1);
    used += sizeof(mid) - 1;
    if (used + mlen + 1 >= cap) goto too_small;
    memcpy(out + used, merged, mlen);
    used += mlen;
    n = snprintf(out + used, cap - used, ",\"max_tokens\":%d,\"temperature\":%.2f",
                 in->max_tokens > 0 ? in->max_tokens : 512,
                 in->temperature > 0.0 ? in->temperature : 0.7);
    if (n <= 0 || (size_t)n >= cap - used) goto too_small;
    used += (size_t)n;
    if (oa_merge_extra(out, cap - 1, &used, in->extra, err, errlen) != 0) return -1;
    if (used + 2 > cap) goto too_small;
    out[used++] = '}';
    out[used] = '\0';
    if (outlen) *outlen = used;
    return 0;

too_small:
    if (err && errlen) snprintf(err, errlen, "request body too large for one call");
    out[0] = '\0';
    return -1;
}

int oa_parse_content(const char *json, size_t len, char *out, size_t cap, size_t *outlen,
                     char *err_class, size_t classlen, char *detail, size_t detaillen)
{
    int rc;

    if (out == NULL || cap == 0) return -1;
    out[0] = '\0';
    if (json == NULL || len == 0) {
        if (err_class && classlen) snprintf(err_class, classlen, "empty_resp");
        return -1;
    }
    rc = mj_path_string(json, len, "choices", "message", "content", out, cap, outlen);
    if (rc == -2) {
        if (err_class && classlen) snprintf(err_class, classlen, "reply_too_long");
        return -1;
    }
    if (rc != 0) {
        if (err_class && classlen) snprintf(err_class, classlen, "no_content");
        if (detail && detaillen) snprintf(detail, detaillen, "choices[0].message.content not found");
        return -1;
    }
    if (out[0] == '\0') {
        if (err_class && classlen) snprintf(err_class, classlen, "empty_content");
        if (detail && detaillen) snprintf(detail, detaillen, "the model returned an empty reply");
        return -1;
    }
    return 0;
}

void oa_parse_error(const char *json, size_t len, char *code, size_t codecap,
                    char *msg, size_t msgcap)
{
    mj j, k, t;

    if (code && codecap) code[0] = '\0';
    if (msg && msgcap) msg[0] = '\0';
    if (json == NULL || len == 0) return;

    mj_open(&j, json, len);
    if (mj_obj_open(&j) != 0) return;
    if (mj_obj_find(&j, "error")) {
        if (mj_peek_c(&j) == '{') {
            k = j;
            if (mj_obj_open(&k) == 0) {
                t = k;
                if (mj_obj_find(&t, "code")) mj_str_value(&t, code, codecap, NULL);
                if (code != NULL && codecap > 0 && code[0] == '\0') {
                    /* OpenAI 有时只给 type，没有 code */
                    t = k;
                    if (mj_obj_find(&t, "type")) mj_str_value(&t, code, codecap, NULL);
                }
                t = k;
                if (mj_obj_find(&t, "message")) mj_str_value(&t, msg, msgcap, NULL);
            }
            return;
        }
        mj_str_value(&j, msg, msgcap, NULL);
        return;
    }
    mj_open(&j, json, len);
    if (mj_obj_open(&j) != 0) return;
    if (mj_obj_find(&j, "message")) mj_str_value(&j, msg, msgcap, NULL);
}

int oa_call(const mcall_in *in, const tg_http_xport *xp, void *xctx,
            char *out, size_t outcap, size_t *outlen, mcall_meta *meta)
{
    char url[OA_URL_MAX];
    char body[MCALL_BODY_MAX];
    char resp[MCALL_RESP_MAX + 1];
    char err[MCALL_MSG_MAX];
    char ecode[48], emsg[128];
    size_t blen = 0, rlen = 0;

    if (meta == NULL || in == NULL) return -1;
    mcall_meta_init(meta);
    err[0] = '\0';
    if (oa_build_url(in->base_url, url, sizeof(url), err, sizeof(err)) != 0) {
        snprintf(meta->err_class, sizeof(meta->err_class), "bad_url");
        snprintf(meta->err_detail, sizeof(meta->err_detail), "%s", err);
        return -1;
    }
    if (oa_build_body(in, body, sizeof(body), &blen, err, sizeof(err)) != 0) {
        snprintf(meta->err_class, sizeof(meta->err_class), "bad_request");
        snprintf(meta->err_detail, sizeof(meta->err_detail), "%s", err);
        return -1;
    }
    if (mcall_post(xp, xctx, url, in->api_key, body, blen, in->connect_timeout_ms,
                   in->total_timeout_ms, resp, sizeof(resp), &rlen, meta) != 0) {
        if (meta->http_status >= 400) {
            oa_parse_error(resp, rlen, ecode, sizeof(ecode), emsg, sizeof(emsg));
            mcall_detail(meta->err_detail, sizeof(meta->err_detail),
                         ecode[0] != '\0' ? ecode : NULL, emsg[0] != '\0' ? emsg : NULL);
        }
        return -1;
    }
    if (oa_parse_content(resp, rlen, out, outcap, outlen,
                         meta->err_class, sizeof(meta->err_class),
                         meta->err_detail, sizeof(meta->err_detail)) != 0) {
        oa_parse_error(resp, rlen, ecode, sizeof(ecode), emsg, sizeof(emsg));
        if (ecode[0] != '\0' || emsg[0] != '\0') {
            snprintf(meta->err_class, sizeof(meta->err_class), "vendor_error");
            mcall_detail(meta->err_detail, sizeof(meta->err_detail), ecode, emsg);
        }
        return -1;
    }
    return 0;
}
