/*
 * tg_http.h -- T9-08C: 厂商适配器共用的 HTTP 传输层（只传字节，不认识任何协议）
 *
 * 为什么单独抽出来：豆包（火山方舟）、通义千问（DashScope）、OpenAI 兼容三种接入方式的
 * **协议**必须各自独立实现（URL 形状、请求体结构、鉴权头、错误体、扩展参数位置都不一样），
 * 但它们不需要各自再写一套 TLS/HTTP 栈。所以：
 *
 *   传输层（本文件）   ：URL + Bearer key + JSON body 进，HTTP 状态 + 响应字节出
 *   协议层（各 adapter）：自己拼 URL/body、自己解析成功与错误
 *
 * 设备上的实现在 tg_http.c 里，**复用 T5-06A 已验证的 libcurl dlopen 路径**
 * （不链接 ROM 私有 ABI、不静态打包 libcurl），因此设备上只有一个 HTTP 栈。
 * 主机测试注入桩传输层（不需要 libcurl、不需要网络、不需要真实 key）。
 *
 * 隐私：key 只在一次调用期间存在于调用栈上的 Authorization 头里；本层不打印 URL/body/key。
 */
#ifndef TG_HTTP_H
#define TG_HTTP_H

#include <stddef.h>

#define TG_HTTP_ERR_MAX 96

typedef struct {
    const char *url;              /* 完整 URL（协议层自己拼好）                        */
    const char *api_key;          /* 作为 "Authorization: Bearer <key>" 发送；可为空  */
    const char *body;             /* 完整 JSON 请求体                                 */
    size_t      body_len;
    int         connect_timeout_ms;
    int         total_timeout_ms;
} tg_http_req;

typedef struct {
    int       http_status;        /* 0 = 没拿到（传输层失败）                          */
    int       curl_code;          /* 底层 CURLcode；桩可自定                           */
    int       timed_out;          /* 1 = 超时                                          */
    long long latency_ms;
    size_t    resp_len;           /* 写入 resp 的字节数（不含 NUL）                    */
    int       resp_overflow;      /* 1 = 响应超过缓冲区（必须报错，不静默截断）         */
    char      error[TG_HTTP_ERR_MAX];  /* 脱敏描述，禁止写入 key / 用户文本            */
} tg_http_result;

typedef struct tg_http_xport {
    const char *name;             /* "libcurl" / "stub"                                */
    /* 0 = 完成（无论 HTTP 状态码，结果在 xr）；-1 = 传输层自身不可用（xr.error 说明） */
    int  (*post)(void *ctx, const tg_http_req *req, char *resp, size_t resp_cap,
                 tg_http_result *xr);
    void (*close)(void *ctx);
} tg_http_xport;

/* 设备传输层：dlopen("libcurl.so")。0 = 可用；-1 = 不可用（不崩溃、不退出） */
int  tg_http_libcurl_init(char *err, size_t errlen);
void tg_http_libcurl_fini(void);
const tg_http_xport *tg_http_libcurl_xport(void);
const char *tg_http_libcurl_version(void);

#endif /* TG_HTTP_H */
