/*
 * model_call.c -- T9-08C: 适配器共用的 POST 管道（见 model_call.h）
 */
#include "model_call.h"

#include <stdio.h>
#include <string.h>

void mcall_meta_init(mcall_meta *m)
{
    if (m == NULL) return;
    memset(m, 0, sizeof(*m));
}

const char *mcall_class_for_status(int status)
{
    switch (status) {
    case 200: case 201: case 202: case 204: return NULL;
    case 400: return "http_400";
    case 401: return "http_401";
    case 403: return "http_403";
    case 404: return "http_404";
    case 408: return "http_408";
    case 413: return "http_413";
    case 429: return "http_429";
    case 500: return "http_500";
    case 502: return "http_502";
    case 503: return "http_503";
    case 504: return "http_504";
    default:  return (status >= 200 && status < 300) ? NULL : "http_error";
    }
}

void mcall_detail(char *dst, size_t cap, const char *code, const char *msg)
{
    size_t o = 0;
    const char *parts[2];
    int p;

    if (dst == NULL || cap == 0) return;
    dst[0] = '\0';
    parts[0] = code;
    parts[1] = msg;
    for (p = 0; p < 2; p++) {
        const char *s = parts[p];
        size_t i;
        if (s == NULL || s[0] == '\0') continue;
        if (o > 0 && o + 2 < cap) { dst[o++] = ':'; dst[o++] = ' '; }
        for (i = 0; s[i] != '\0' && o + 1 < cap; i++) {
            unsigned char c = (unsigned char)s[i];
            if (c == '\n' || c == '\r' || c == '\t') { if (o + 1 < cap) dst[o++] = ' '; continue; }
            if (c < 0x20) continue;
            dst[o++] = (char)c;
        }
    }
    dst[o < cap ? o : cap - 1] = '\0';
}

/* --------------------------------------------------------- system 插入 */

static int mc_esc_into(char *out, size_t cap, size_t *used, const char *in)
{
    size_t u = (used != NULL) ? *used : 0;
    size_t i;

    if (in == NULL) return 0;
    for (i = 0; in[i] != '\0'; i++) {
        unsigned char c = (unsigned char)in[i];
        if (c == '"' || c == '\\') {
            if (u + 2 >= cap) return -1;
            out[u++] = '\\';
            out[u++] = (char)c;
        } else if (c == '\n') {
            if (u + 2 >= cap) return -1;
            out[u++] = '\\';
            out[u++] = 'n';
        } else if (c == '\r' || c == '\t') {
            if (u + 2 >= cap) return -1;
            out[u++] = ' ';
        } else if (c < 0x20) {
            /* 其它控制字符直接丢掉：它们不该出现在 system 文本里 */
        } else {
            if (u + 1 >= cap) return -1;
            out[u++] = (char)c;
        }
    }
    if (used) *used = u;
    return 0;
}

int mcall_with_system(const char *system_prompt, const char *messages_json,
                      char *out, size_t cap, size_t *outlen, char *err, size_t errlen)
{
    size_t used = 0, mlen, i;

    if (out == NULL || cap == 0 || messages_json == NULL) {
        if (err && errlen) snprintf(err, errlen, "no messages");
        return -1;
    }
    mlen = strlen(messages_json);
    if (mlen < 2 || messages_json[0] != '[') {
        if (err && errlen) snprintf(err, errlen, "messages is not a JSON array");
        return -1;
    }
    if (used + 4 >= cap) { if (err && errlen) snprintf(err, errlen, "body too small"); return -1; }
    out[used++] = '[';
    if (system_prompt != NULL && system_prompt[0] != '\0') {
        static const char head[] = "{\"role\":\"system\",\"content\":\"";
        size_t hl = sizeof(head) - 1;
        if (used + hl + 4 >= cap) { if (err && errlen) snprintf(err, errlen, "system too long"); return -1; }
        memcpy(out + used, head, hl);
        used += hl;
        if (mc_esc_into(out, cap, &used, system_prompt) != 0) {
            if (err && errlen) snprintf(err, errlen, "system prompt too long");
            return -1;
        }
        if (used + 4 >= cap) { if (err && errlen) snprintf(err, errlen, "body too small"); return -1; }
        memcpy(out + used, "\"},", 3);
        used += 3;
        /* 复制 messages 数组内部（去掉首尾的 [ ]） */
        if (mlen <= 2) {   /* 空数组：只留 system（再去掉尾部逗号） */
            used -= 1;
            out[used++] = ']';
            out[used] = '\0';
            if (outlen) *outlen = used;
            return 0;
        }
        for (i = 1; i + 1 < mlen; i++) {
            if (used + 2 >= cap) {
                if (err && errlen) snprintf(err, errlen, "conversation too long for one request");
                return -1;
            }
            out[used++] = messages_json[i];
        }
    } else {
        for (i = 1; i + 1 < mlen; i++) {
            if (used + 2 >= cap) {
                if (err && errlen) snprintf(err, errlen, "conversation too long for one request");
                return -1;
            }
            out[used++] = messages_json[i];
        }
    }
    out[used++] = ']';
    out[used] = '\0';
    if (outlen) *outlen = used;
    return 0;
}

/* ---------------------------------------------------------------- post */

int mcall_post(const tg_http_xport *xp, void *xctx, const char *url, const char *api_key,
               const char *body, size_t blen, int connect_timeout_ms, int total_timeout_ms,
               char *resp, size_t respcap, size_t *resplen, mcall_meta *meta)
{
    tg_http_req req;
    tg_http_result xr;
    const char *cls;
    int rc;

    if (meta != NULL) mcall_meta_init(meta);
    if (xp == NULL || xp->post == NULL || url == NULL || body == NULL || resp == NULL ||
        respcap == 0 || meta == NULL) {
        if (meta) {
            snprintf(meta->err_class, sizeof(meta->err_class), "bad_args");
            snprintf(meta->err_detail, sizeof(meta->err_detail), "adapter called with no transport");
        }
        return -1;
    }
    memset(&req, 0, sizeof(req));
    req.url = url;
    req.api_key = api_key;
    req.body = body;
    req.body_len = blen;
    req.connect_timeout_ms = connect_timeout_ms;
    req.total_timeout_ms = total_timeout_ms;
    memset(&xr, 0, sizeof(xr));

    rc = xp->post(xctx, &req, resp, respcap, &xr);
    if (rc != 0) {
        meta->transport_failed = 1;
        meta->latency_ms = xr.latency_ms;
        snprintf(meta->err_class, sizeof(meta->err_class), "transport");
        snprintf(meta->err_detail, sizeof(meta->err_detail), "%s",
                 xr.error[0] != '\0' ? xr.error : "transport unavailable");
        return -1;
    }
    meta->http_status = xr.http_status;
    meta->timed_out = xr.timed_out;
    meta->latency_ms = xr.latency_ms;
    meta->resp_bytes = xr.resp_len;
    if (resplen) *resplen = xr.resp_len;
    if (xr.resp_len < respcap) resp[xr.resp_len] = '\0';

    if (xr.timed_out) {
        snprintf(meta->err_class, sizeof(meta->err_class), "timeout");
        snprintf(meta->err_detail, sizeof(meta->err_detail), "request timed out");
        return -1;
    }
    if (xr.resp_overflow) {
        snprintf(meta->err_class, sizeof(meta->err_class), "resp_too_large");
        snprintf(meta->err_detail, sizeof(meta->err_detail), "response exceeded %u bytes",
                 (unsigned)respcap);
        return -1;
    }
    if (xr.http_status == 0) {
        /* curl 层没拿到状态码：把 curl 返回码也带上，否则只能看到一句"没有状态" */
        snprintf(meta->err_class, sizeof(meta->err_class), "no_response");
        snprintf(meta->err_detail, sizeof(meta->err_detail), "%s curl=%d",
                 xr.error[0] != '\0' ? xr.error : "no HTTP status", xr.curl_code);
        return -1;
    }
    cls = mcall_class_for_status(xr.http_status);
    if (cls != NULL) {
        snprintf(meta->err_class, sizeof(meta->err_class), "%s", cls);
        mcall_detail(meta->err_detail, sizeof(meta->err_detail), NULL, xr.error);
        return -1;
    }
    return 0;
}
