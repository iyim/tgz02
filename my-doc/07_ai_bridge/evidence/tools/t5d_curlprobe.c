/* t5d_curlprobe.c -- T5-06A 验证「设备上 native ARM32 能否直接做 HTTPS」（一次性夹具）
 *
 * 做法：dlopen("libcurl.so")，用 dlsym 取函数指针，发一个**不带任何凭据**的 GET：
 *   - https://www.baidu.com/     （对照组：公网 HTTPS，验证 TLS 握手 + CA 校验）
 * 只报告 libcurl 版本、HTTP 状态码、收到的字节数、错误码；不打印响应体内容。
 */
#include <dlfcn.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef void CURL;
typedef int CURLcode;

#define CURLOPT_URL                10002
#define CURLOPT_WRITEFUNCTION      20011
#define CURLOPT_TIMEOUT_MS         155
#define CURLOPT_CONNECTTIMEOUT_MS  156
#define CURLOPT_SSL_VERIFYPEER     64
#define CURLOPT_SSL_VERIFYHOST     81
#define CURLOPT_FOLLOWLOCATION     52
#define CURLOPT_NOSIGNAL           99
#define CURLINFO_RESPONSE_CODE     0x200002

static size_t g_bytes;
static char g_head[64];
static int g_head_len;

static size_t on_write(char *ptr, size_t size, size_t nmemb, void *ud)
{
    size_t n = size * nmemb;

    (void)ud;
    g_bytes += n;
    if (g_head_len < (int)sizeof(g_head) - 1) {
        size_t i;
        for (i = 0; i < n && g_head_len < (int)sizeof(g_head) - 1; i++)
            g_head[g_head_len++] = ptr[i];
        g_head[g_head_len] = '\0';
    }
    return n;
}

int main(int argc, char **argv)
{
    const char *url = (argc > 1) ? argv[1] : "https://www.baidu.com/";
    void *h = dlopen("libcurl.so", RTLD_NOW);
    CURL *(*easy_init)(void);
    CURLcode (*easy_setopt)(CURL *, int, ...);
    CURLcode (*easy_perform)(CURL *);
    CURLcode (*easy_getinfo)(CURL *, int, ...);
    void (*easy_cleanup)(CURL *);
    char *(*version)(void);
    CURL *c;
    CURLcode rc;
    long code = -1;

    if (h == NULL) {
        printf("CURL dlopen FAIL: %s\n", dlerror());
        return 1;
    }
    easy_init = (CURL *(*)(void))dlsym(h, "curl_easy_init");
    easy_setopt = (CURLcode (*)(CURL *, int, ...))dlsym(h, "curl_easy_setopt");
    easy_perform = (CURLcode (*)(CURL *))dlsym(h, "curl_easy_perform");
    easy_getinfo = (CURLcode (*)(CURL *, int, ...))dlsym(h, "curl_easy_getinfo");
    easy_cleanup = (void (*)(CURL *))dlsym(h, "curl_easy_cleanup");
    version = (char *(*)(void))dlsym(h, "curl_version");
    if (!easy_init || !easy_setopt || !easy_perform || !easy_getinfo || !easy_cleanup) {
        printf("CURL dlsym FAIL\n");
        return 1;
    }
    printf("CURL version: %s\n", version ? version() : "(n/a)");

    c = easy_init();
    if (c == NULL) {
        printf("CURL easy_init FAIL\n");
        return 1;
    }
    easy_setopt(c, CURLOPT_URL, url);
    easy_setopt(c, CURLOPT_WRITEFUNCTION, on_write);
    easy_setopt(c, CURLOPT_TIMEOUT_MS, 10000L);
    easy_setopt(c, CURLOPT_CONNECTTIMEOUT_MS, 5000L);
    easy_setopt(c, CURLOPT_SSL_VERIFYPEER, 1L);
    easy_setopt(c, CURLOPT_SSL_VERIFYHOST, 2L);
    easy_setopt(c, CURLOPT_FOLLOWLOCATION, 0L);
    easy_setopt(c, CURLOPT_NOSIGNAL, 1L);

    rc = easy_perform(c);
    easy_getinfo(c, CURLINFO_RESPONSE_CODE, &code);
    printf("CURL url=%s\n", url);
    printf("CURL result=%d http_status=%ld bytes=%lu\n", (int)rc, code,
           (unsigned long)g_bytes);
    printf("CURL body_head=\"%.40s\"\n", g_head_len > 0 ? g_head : "");
    easy_cleanup(c);
    dlclose(h);
    return (rc == 0) ? 0 : 2;
}
