/*
 * doubao_provider.c -- T9-08C: 豆包（火山方舟）原生适配器实现（见 doubao_provider.h）
 */
#include "doubao_provider.h"

#include "model_json.h"

#include <stdio.h>
#include <string.h>

/* ------------------------------------------------------------------ url */

int db_build_url(const char *base, char *out, size_t cap, char *err, size_t errlen)
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
    /* 已经写了完整路径（用户把整条 URL 粘进来）就不再追加 */
    if (strstr(base, DB_PATH_SUFFIX) != NULL && n >= sizeof(DB_PATH_SUFFIX) &&
        strcmp(base + n - (sizeof(DB_PATH_SUFFIX) - 1), DB_PATH_SUFFIX) == 0) {
        if (n >= cap) {
            if (err && errlen) snprintf(err, errlen, "url too long");
            return -1;
        }
        snprintf(out, cap, "%s", base);
        return 0;
    }
    while (n > 0 && base[n - 1] == '/') n--;
    if (n + sizeof(DB_PATH_SUFFIX) >= cap) {
        if (err && errlen) snprintf(err, errlen, "url too long");
        return -1;
    }
    memcpy(out, base, n);
    memcpy(out + n, DB_PATH_SUFFIX, sizeof(DB_PATH_SUFFIX));   /* 含 NUL */
    return 0;
}

/* ----------------------------------------------------------------- body */

/* 把 "..." 里的内容按 JSON 字符串转义写入；返回 0 或 -1（放不下） */
static int db_esc(char *out, size_t cap, size_t *used, const char *in)
{
    size_t u = *used;
    size_t i;

    if (in == NULL) return 0;
    for (i = 0; in[i] != '\0'; i++) {
        unsigned char c = (unsigned char)in[i];
        if (c == '"' || c == '\\') {
            if (u + 2 > cap) return -1;
            out[u++] = '\\';
            out[u++] = (char)c;
        } else if (c == '\n') {
            if (u + 2 > cap) return -1;
            out[u++] = '\\';
            out[u++] = 'n';
        } else if (c == '\r' || c == '\t') {
            if (u + 1 > cap) return -1;
            out[u++] = ' ';
        } else if (c < 0x20) {
            continue;
        } else {
            if (u + 1 > cap) return -1;
            out[u++] = (char)c;
        }
    }
    *used = u;
    return 0;
}

/* extra 的成员并入顶层：extra 必须是对象文本，去掉首尾 { } */
static int db_merge_extra(char *out, size_t cap, size_t *used, const char *extra,
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

int db_build_body(const mcall_in *in, char *out, size_t cap, size_t *outlen,
                  char *err, size_t errlen)
{
    size_t used = 0;
    const char *model;
    char merged[MCALL_BODY_MAX];
    size_t mlen = 0;

    if (in == NULL || out == NULL || cap == 0) return -1;
    out[0] = '\0';
    /* 方舟用 Endpoint ID 作为 model；只填了 model 也能用（新式"模型名"接入） */
    model = (in->endpoint_id != NULL && in->endpoint_id[0] != '\0') ? in->endpoint_id : in->model;
    if (model == NULL || model[0] == '\0') {
        if (err && errlen) snprintf(err, errlen, "doubao needs an endpoint id or a model name");
        return -1;
    }
    if (mcall_with_system(in->system_prompt, in->messages_json, merged, sizeof(merged), &mlen,
                          err, errlen) != 0) {
        return -1;
    }

    used = (size_t)snprintf(out, cap, "{\"model\":\"");
    if (used >= cap) goto too_small;
    {
        size_t u = used;
        if (db_esc(out, cap - 1, &u, model) != 0) goto too_small;
        used = u;
    }
    {
        static const char mid[] = "\",\"stream\":false,\"messages\":";
        const size_t midlen = sizeof(mid) - 1;
        if (used + midlen + 1 >= cap) goto too_small;
        memcpy(out + used, mid, midlen);
        used += midlen;
    }
    if (used + mlen + 1 >= cap) goto too_small;
    memcpy(out + used, merged, mlen);
    used += mlen;
    used += (size_t)snprintf(out + used, cap - used, ",\"max_tokens\":%d,\"temperature\":%.2f",
                             in->max_tokens > 0 ? in->max_tokens : 512,
                             in->temperature > 0.0 ? in->temperature : 0.7);
    if (used >= cap) goto too_small;
    if (db_merge_extra(out, cap - 1, &used, in->extra, err, errlen) != 0) return -1;
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

/* -------------------------------------------------------------- response */

int db_parse_content(const char *json, size_t len, char *out, size_t cap, size_t *outlen,
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
        /* 有些模型把回答放在 choices[0].message.content 之外的 "content" 数组里；
         * 这里只认标准形状，认不出就明确报错，绝不猜。 */
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

void db_parse_error(const char *json, size_t len, char *code, size_t codecap,
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
            k = j;                       /* 值首字节是 '{' */
            if (mj_obj_open(&k) == 0) {
                t = k;
                if (mj_obj_find(&t, "code")) mj_str_value(&t, code, codecap, NULL);
                t = k;
                if (mj_obj_find(&t, "message")) mj_str_value(&t, msg, msgcap, NULL);
            }
            return;
        }
        mj_str_value(&j, msg, msgcap, NULL);
        return;
    }
    /* 兼容顶层 code/message 形状 */
    mj_open(&j, json, len);
    if (mj_obj_open(&j) != 0) return;
    if (mj_obj_find(&j, "code")) mj_str_value(&j, code, codecap, NULL);
    mj_open(&j, json, len);
    if (mj_obj_open(&j) != 0) return;
    if (mj_obj_find(&j, "message")) mj_str_value(&j, msg, msgcap, NULL);
}

/* ------------------------------------------------------------------ call */

int db_call(const mcall_in *in, const tg_http_xport *xp, void *xctx,
            char *out, size_t outcap, size_t *outlen, mcall_meta *meta)
{
    char url[DB_URL_MAX];
    char body[MCALL_BODY_MAX];
    char resp[MCALL_RESP_MAX + 1];
    char err[MCALL_MSG_MAX];
    char ecode[32], emsg[128];
    size_t blen = 0, rlen = 0;

    if (meta == NULL || in == NULL) return -1;
    mcall_meta_init(meta);
    err[0] = '\0';
    if (db_build_url(in->base_url, url, sizeof(url), err, sizeof(err)) != 0) {
        snprintf(meta->err_class, sizeof(meta->err_class), "bad_url");
        snprintf(meta->err_detail, sizeof(meta->err_detail), "%s", err);
        return -1;
    }
    if (db_build_body(in, body, sizeof(body), &blen, err, sizeof(err)) != 0) {
        snprintf(meta->err_class, sizeof(meta->err_class), "bad_request");
        snprintf(meta->err_detail, sizeof(meta->err_detail), "%s", err);
        return -1;
    }
    if (mcall_post(xp, xctx, url, in->api_key, body, blen, in->connect_timeout_ms,
                   in->total_timeout_ms, resp, sizeof(resp), &rlen, meta) != 0) {
        /* 4xx/5xx 时把厂商错误体的 code/message 补进 detail（脱敏、截断） */
        if (meta->http_status >= 400) {
            db_parse_error(resp, rlen, ecode, sizeof(ecode), emsg, sizeof(emsg));
            mcall_detail(meta->err_detail, sizeof(meta->err_detail),
                         ecode[0] != '\0' ? ecode : NULL, emsg[0] != '\0' ? emsg : NULL);
        }
        return -1;
    }
    if (db_parse_content(resp, rlen, out, outcap, outlen,
                         meta->err_class, sizeof(meta->err_class),
                         meta->err_detail, sizeof(meta->err_detail)) != 0) {
        /* HTTP 200 但报文不对：把厂商错误体也看一眼（方舟有时 200 + error 体） */
        db_parse_error(resp, rlen, ecode, sizeof(ecode), emsg, sizeof(emsg));
        if (ecode[0] != '\0' || emsg[0] != '\0') {
            snprintf(meta->err_class, sizeof(meta->err_class), "vendor_error");
            mcall_detail(meta->err_detail, sizeof(meta->err_detail), ecode, emsg);
        }
        return -1;
    }
    return 0;
}
