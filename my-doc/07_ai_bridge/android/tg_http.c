/*
 * tg_http.c -- T9-08C: 设备上的 HTTP 传输层实现。
 *
 * 这里**不重新实现网络**：把中立接口转发给 T5-06A 已经真机验证过的 libcurl dlopen 实现
 * （deepseek_provider.c 里的 t6b_ds_libcurl_*）。这样：
 *   - 设备上只有一个 HTTP/TLS 栈，不重复引入 ROM 私有 ABI；
 *   - 传输层仍然可注入：adapter 只认 tg_http_xport，主机测试直接塞桩。
 *
 * 字段是一一对应的（URL / key / body / 两个超时 / 状态码 / curl code / 超时标志 /
 * 耗时 / 响应长度 / 溢出标志 / 脱敏错误），转发时逐字段拷贝，不做任何协议解释。
 */
#include "tg_http.h"

#include "deepseek_provider.h"

#include <stdio.h>
#include <string.h>

static int tg_http_post_via_ds(void *ctx, const tg_http_req *req, char *resp,
                               size_t resp_cap, tg_http_result *xr)
{
    t6b_ds_xreq dreq;
    t6b_ds_xresult dxr;
    int rc;

    (void)ctx;
    if (req == NULL || xr == NULL) return -1;
    memset(&dreq, 0, sizeof(dreq));
    memset(&dxr, 0, sizeof(dxr));
    dreq.url = req->url;
    dreq.api_key = req->api_key;
    dreq.body = req->body;
    dreq.body_len = req->body_len;
    dreq.connect_timeout_ms = req->connect_timeout_ms;
    dreq.total_timeout_ms = req->total_timeout_ms;

    rc = t6b_ds_libcurl_xport()->post(NULL, &dreq, resp, resp_cap, &dxr);

    xr->http_status = dxr.http_status;
    xr->curl_code = dxr.curl_code;
    xr->timed_out = dxr.timed_out;
    xr->latency_ms = dxr.latency_ms;
    xr->resp_len = dxr.resp_len;
    xr->resp_overflow = dxr.resp_overflow;
    snprintf(xr->error, sizeof(xr->error), "%s", dxr.error);
    return rc;
}

static void tg_http_close_via_ds(void *ctx)
{
    (void)ctx;
}

static const tg_http_xport g_tg_http_libcurl = {
    "libcurl",
    tg_http_post_via_ds,
    tg_http_close_via_ds
};

int tg_http_libcurl_init(char *err, size_t errlen)
{
    return t6b_ds_libcurl_init(err, errlen);
}

void tg_http_libcurl_fini(void)
{
    t6b_ds_libcurl_fini();
}

const tg_http_xport *tg_http_libcurl_xport(void)
{
    return &g_tg_http_libcurl;
}

const char *tg_http_libcurl_version(void)
{
    return t6b_ds_libcurl_version();
}
