/*
 * t9_08c_models_test.c -- T9-08C 主机测试：多厂商配置 + 三个适配器 + 统一入口 + 实时语音接口
 *
 *   gcc -O2 -I ../android -o t9_08c_models_test t9_08c_models_test.c ../android/model_json.c \
 *       ../android/model_cfg.c ../android/model_call.c ../android/doubao_provider.c \
 *       ../android/qwen_provider.c ../android/openai_provider.c ../android/model_provider.c \
 *       ../android/realtime_voice.c ../android/doubao_realtime_provider.c
 *
 * 覆盖：
 *   A 配置解析（三类厂商、默认值、字段校验、坏输入拒绝、热加载）
 *   B 豆包适配器：URL / endpoint-id / 请求体（system 第一条、extra 并入）/ 成功解析 / 错误体
 *   C 千问适配器：原生 URL 与报文 / output.text 兜底 / 兼容模式走 OpenAI 报文
 *   D OpenAI 兼容适配器：任意 base_url、401 错误分类、超时、空回答
 *   E 统一入口：按 vendor 分发、testConnection 记录、无配置时 no_model、热切换
 *   F 实时语音接口：8 个动作可调用、参数校验、状态机、未实现码（不含任何假成功）
 */
#include "../android/doubao_provider.h"
#include "../android/model_cfg.h"
#include "../android/model_provider.h"
#include "../android/openai_provider.h"
#include "../android/qwen_provider.h"
#include "../android/doubao_realtime_provider.h"
#include "../android/realtime_voice.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>

#ifdef _WIN32
#include <direct.h>
#define MKDIR(p) _mkdir(p)
#define UNLINK(p) _unlink(p)
#else
#define MKDIR(p) mkdir((p), 0755)
#define UNLINK(p) unlink(p)
#endif

static int PASS = 0, FAIL = 0;

static void ck(int cond, const char *name)
{
    if (cond) PASS++;
    else { FAIL++; printf("FAIL: %s\n", name); }
}

static void cks(const char *got, const char *want, const char *name)
{
    if (got != NULL && want != NULL && strcmp(got, want) == 0) PASS++;
    else {
        FAIL++;
        printf("FAIL: %s (want [%s] got [%s])\n", name, want ? want : "(null)",
               got ? got : "(null)");
    }
}

static void ckc(const char *hay, const char *needle, const char *name)
{
    if (hay != NULL && needle != NULL && strstr(hay, needle) != NULL) PASS++;
    else {
        FAIL++;
        printf("FAIL: %s (missing [%s] in [%.400s])\n", name, needle ? needle : "(null)",
               hay ? hay : "(null)");
    }
}

static void ckn(const char *hay, const char *needle, const char *name)
{
    if (hay == NULL || needle == NULL || strstr(hay, needle) == NULL) PASS++;
    else { FAIL++; printf("FAIL: %s (unexpected [%s])\n", name, needle); }
}

/* ------------------------------------------------------------ stub 传输层 */

typedef struct {
    int         status;
    int         timed_out;
    int         overflow;
    int         transport_fail;
    const char *resp;
    const char *err;
} stub_case;

#define STUB_MAX 8
static stub_case g_case[STUB_MAX];
static int       g_ncase;
static int       g_calls;
static char      g_last_url[512];
static char      g_last_key[256];
static char      g_last_body[4096];

static void stub_reset(void)
{
    memset(g_case, 0, sizeof(g_case));
    g_ncase = 0;
    g_calls = 0;
    g_last_url[0] = '\0';
    g_last_key[0] = '\0';
    g_last_body[0] = '\0';
}

static void stub_push(int status, const char *resp)
{
    if (g_ncase >= STUB_MAX) return;
    g_case[g_ncase].status = status;
    g_case[g_ncase].resp = resp;
    g_ncase++;
}

static void stub_push_ex(int status, int timed_out, int overflow, int transport_fail,
                         const char *resp, const char *err)
{
    if (g_ncase >= STUB_MAX) return;
    g_case[g_ncase].status = status;
    g_case[g_ncase].timed_out = timed_out;
    g_case[g_ncase].overflow = overflow;
    g_case[g_ncase].transport_fail = transport_fail;
    g_case[g_ncase].resp = resp;
    g_case[g_ncase].err = err;
    g_ncase++;
}

static int stub_post(void *ctx, const tg_http_req *req, char *resp, size_t cap,
                     tg_http_result *xr)
{
    stub_case *c;

    (void)ctx;
    if (req == NULL || resp == NULL || xr == NULL) return -1;
    g_calls++;
    snprintf(g_last_url, sizeof(g_last_url), "%s", req->url != NULL ? req->url : "");
    snprintf(g_last_key, sizeof(g_last_key), "%s", req->api_key != NULL ? req->api_key : "");
    if (req->body != NULL) {
        size_t n = req->body_len;
        if (n >= sizeof(g_last_body)) n = sizeof(g_last_body) - 1;
        memcpy(g_last_body, req->body, n);
        g_last_body[n] = '\0';
    }
    if (g_ncase == 0) { memset(xr, 0, sizeof(*xr)); return -1; }
    c = &g_case[0];
    memset(xr, 0, sizeof(*xr));
    if (c->transport_fail) {
        snprintf(xr->error, sizeof(xr->error), "%s", c->err != NULL ? c->err : "transport down");
        return -1;
    }
    xr->http_status = c->status;
    xr->timed_out = c->timed_out;
    xr->resp_overflow = c->overflow;
    xr->latency_ms = 42;
    if (c->resp != NULL) {
        size_t n = strlen(c->resp);
        if (n >= cap) { n = cap - 1; xr->resp_overflow = 1; }
        memcpy(resp, c->resp, n);
        resp[n] = '\0';
        xr->resp_len = n;
    }
    return 0;
}

static const tg_http_xport g_stub = { "stub", stub_post, NULL };

/* ---------------------------------------------------------------- 配置 A */

static const char *CFG_JSON =
    "{\"v\":1,\"default_id\":\"m-doubao\",\"models\":["
    "{\"id\":\"m-doubao\",\"vendor\":\"doubao\",\"label\":\"豆包-主力\","
    "\"api_key\":\"ark-key-plain\",\"model\":\"doubao-pro-32k\",\"endpoint_id\":\"ep-2024-abc\","
    "\"extra\":{\"top_p\":0.9},\"max_tokens\":128,\"temperature\":0.3},"
    "{\"id\":\"m-qwen\",\"vendor\":\"qwen\",\"label\":\"千问\",\"api_key\":\"sk-qwen\","
    "\"model\":\"qwen-plus\",\"api_mode\":\"native\",\"enabled\":1},"
    "{\"id\":\"m-qwen-compat\",\"vendor\":\"qwen\",\"label\":\"千问-兼容\",\"api_key\":\"sk-qwen\","
    "\"model\":\"qwen-turbo\",\"api_mode\":\"compat\","
    "\"base_url\":\"https://dashscope.aliyuncs.com/compatible-mode/v1\"},"
    "{\"id\":\"m-openai\",\"vendor\":\"openai\",\"label\":\"自建代理\",\"api_key\":\"sk-proxy\","
    "\"model\":\"gpt-4o-mini\",\"base_url\":\"https://my-proxy.example.com/v1\",\"enabled\":0}"
    "]}";

static void test_cfg(void)
{
    model_list l;
    char err[160];
    const model_cfg *c;

    memset(&l, 0, sizeof(l));
    err[0] = '\0';
    ck(mc_parse_list(CFG_JSON, strlen(CFG_JSON), &l, err, sizeof(err)) == 0,
       "A1 four configurations parse");
    ck(l.count == 4, "A1 all four are present");
    cks(l.default_id, "m-doubao", "A1 the default id is kept");

    c = mc_find(&l, "m-doubao");
    ck(c != NULL, "A2 doubao config found");
    if (c) {
        cks(c->vendor, "doubao", "A2 vendor");
        cks(c->api_key, "ark-key-plain", "A2 the api key is stored in plain text");
        cks(c->endpoint_id, "ep-2024-abc", "A2 endpoint id is kept");
        cks(c->base_url, MC_DOUBAO_BASE_DEFAULT, "A2 doubao gets the official default base url");
        ckc(c->extra, "top_p", "A2 extra request params are kept verbatim");
        ck(c->max_tokens == 128, "A2 max_tokens");
        ck(c->enabled == 1, "A2 enabled defaults to true");
    }
    c = mc_find(&l, "m-qwen");
    if (c) {
        cks(c->api_mode, "native", "A3 qwen native mode");
        cks(c->base_url, MC_QWEN_BASE_DEFAULT, "A3 qwen native default base url");
    } else ck(0, "A3 qwen config found");
    c = mc_find(&l, "m-qwen-compat");
    if (c) {
        cks(c->api_mode, "compat", "A4 qwen compat mode");
        cks(c->base_url, "https://dashscope.aliyuncs.com/compatible-mode/v1",
            "A4 an explicit base url wins over the default");
    } else ck(0, "A4 compat config found");
    c = mc_find(&l, "m-openai");
    if (c) ck(c->enabled == 0, "A5 disabled configuration stays disabled");
    else ck(0, "A5 openai config found");

    c = mc_active(&l);
    ck(c != NULL && strcmp(c->id, "m-doubao") == 0, "A6 default_id selects the active model");

    err[0] = '\0';
    {
        const char *bad = "{\"v\":1,\"models\":[{\"id\":\"x\",\"vendor\":\"unknown\","
                          "\"api_key\":\"k\",\"model\":\"m\"}]}";
        ck(mc_parse_list(bad, strlen(bad), &l, err, sizeof(err)) != 0, "A7 unknown vendor refused");
        ckc(err, "unknown vendor", "A7 reason names the vendor");
    }
    {
        const char *bad = "{\"v\":1,\"models\":[{\"vendor\":\"openai\",\"api_key\":\"k\","
                          "\"model\":\"m\"}]}";
        ck(mc_parse_list(bad, strlen(bad), &l, err, sizeof(err)) != 0, "A8 missing id refused");
    }
    {
        const char *bad = "{\"v\":1,\"models\":[{\"id\":\"dup\",\"vendor\":\"openai\"},"
                          "{\"id\":\"dup\",\"vendor\":\"openai\"}]}";
        ck(mc_parse_list(bad, strlen(bad), &l, err, sizeof(err)) != 0, "A9 duplicate id refused");
    }
    {
        const char *bad = "{\"v\":1,\"models\":[{\"id\":\"x\",\"vendor\":\"qwen\","
                          "\"api_mode\":\"weird\"}]}";
        ck(mc_parse_list(bad, strlen(bad), &l, err, sizeof(err)) != 0, "A10 bad api_mode refused");
    }
    {
        const char *ok = "{\"v\":1,\"models\":[{\"id\":\"y\",\"vendor\":\"openai\","
                         "\"base_url\":\"\",\"unknown_future_field\":{\"a\":1}}]}";
        ck(mc_parse_list(ok, strlen(ok), &l, err, sizeof(err)) == 0,
           "A11 unknown fields are ignored (forward compatible)");
    }

    /* 热加载：写到临时文件，改文件后必须重新加载 */
    {
        const char *path = "t9_08c_models_tmp.json";
        model_list l2;
        FILE *f = fopen(path, "wb");
        ck(f != NULL, "A12 temp config file writable");
        if (f) {
            fwrite(CFG_JSON, 1, strlen(CFG_JSON), f);
            fclose(f);
        }
        ck(mc_load(path, &l2) == 0, "A12 config loads from a file");
        ck(mc_reload_if_changed(path, &l2) == 0, "A13 an unchanged file is not reloaded");
        {
            const char *v2 = "{\"v\":1,\"default_id\":\"m-qwen\",\"models\":["
                             "{\"id\":\"m-qwen\",\"vendor\":\"qwen\",\"api_key\":\"k\","
                             "\"model\":\"qwen-plus\"}]}";
            FILE *g = fopen(path, "wb");
            if (g) { fwrite(v2, 1, strlen(v2), g); fclose(g); }
        }
        ck(mc_reload_if_changed(path, &l2) == 1, "A14 a changed file is reloaded");
        ck(l2.count == 1, "A14 the reloaded content is what the file says");
        UNLINK(path);
    }
}

/* -------------------------------------------------------------- 豆包 B */

static void test_doubao(void)
{
    char url[DB_URL_MAX], body[MCALL_BODY_MAX], err[128], out[512];
    size_t blen = 0, olen = 0;
    mcall_meta meta;
    mcall_in in;

    ck(db_build_url(MC_DOUBAO_BASE_DEFAULT, url, sizeof(url), err, sizeof(err)) == 0,
       "B1 default base url builds");
    cks(url, "https://ark.cn-beijing.volces.com/api/v3/chat/completions", "B1 doubao path");
    ck(db_build_url("https://ark.cn-beijing.volces.com/api/v3/", url, sizeof(url), err,
                    sizeof(err)) == 0, "B2 trailing slash tolerated");
    cks(url, "https://ark.cn-beijing.volces.com/api/v3/chat/completions", "B2 no double slash");
    ck(db_build_url("ark.cn-beijing.volces.com", url, sizeof(url), err, sizeof(err)) != 0,
       "B3 a url without scheme is refused");

    memset(&in, 0, sizeof(in));
    in.base_url = MC_DOUBAO_BASE_DEFAULT;
    in.api_key = "ark-key";
    in.model = "doubao-pro-32k";
    in.endpoint_id = "ep-2024-abc";
    in.messages_json = "[{\"role\":\"system\",\"content\":\"be brief\"},"
                       "{\"role\":\"user\",\"content\":\"你好\"}]";
    in.extra = "{\"top_p\":0.9}";
    in.max_tokens = 64;
    in.temperature = 0.3;
    in.connect_timeout_ms = 1000;
    in.total_timeout_ms = 5000;
    ck(db_build_body(&in, body, sizeof(body), &blen, err, sizeof(err)) == 0,
       "B4 doubao request body builds");
    ckc(body, "\"model\":\"ep-2024-abc\"", "B4 the endpoint id is the model field");
    ckc(body, "\"stream\":false", "B4 non-streaming");
    /* 中文按 UTF-8 原样发出（不做 \u 转义，也不做 latin-1 转换） */
    ckc(body, "你好", "B5 non-ASCII is passed through as raw UTF-8");
    ckn(body, "\\u4f60", "B5 non-ASCII is not escaped into \\u sequences");
    ckc(body, "{\"role\":\"system\"", "B6 the system message survives");
    ckc(body, "\"top_p\":0.9", "B7 extra parameters are merged into the top level");
    ckc(body, "\"max_tokens\":64", "B8 max_tokens from the config");

    stub_reset();
    stub_push(200, "{\"id\":\"c1\",\"choices\":[{\"index\":0,\"message\":{\"role\":\"assistant\","
                   "\"content\":\"这是豆包的回答\"},\"finish_reason\":\"stop\"}],"
                   "\"usage\":{\"total_tokens\":12}}");
    ck(db_call(&in, &g_stub, NULL, out, sizeof(out), &olen, &meta) == 0, "B10 doubao call succeeds");
    cks(out, "这是豆包的回答", "B10 the reply text is returned");
    ck(meta.http_status == 200, "B10 http status recorded");
    cks(g_last_url, "https://ark.cn-beijing.volces.com/api/v3/chat/completions",
        "B10 the adapter called the doubao endpoint");
    cks(g_last_key, "ark-key", "B10 the key is sent as given");

    stub_reset();
    stub_push(401, "{\"error\":{\"code\":\"AuthenticationError\",\"message\":\"invalid api key\"}}");
    in.api_key = "wrong";
    ck(db_call(&in, &g_stub, NULL, out, sizeof(out), &olen, &meta) != 0, "B11 401 is a failure");
    cks(meta.err_class, "http_401", "B11 the class is http_401");
    ckc(meta.err_detail, "AuthenticationError", "B11 the vendor error code is surfaced");
    ckn(meta.err_detail, "wrong", "B11 the key itself never enters the error text");

    stub_reset();
    stub_push(200, "{\"choices\":[{\"message\":{\"content\":\"\"}}]}");
    in.api_key = "ark-key";
    ck(db_call(&in, &g_stub, NULL, out, sizeof(out), &olen, &meta) != 0,
       "B12 an empty answer is a failure (never faked)");
    cks(meta.err_class, "empty_content", "B12 class names the empty answer");

    stub_reset();
    stub_push_ex(0, 1, 0, 0, NULL, NULL);
    ck(db_call(&in, &g_stub, NULL, out, sizeof(out), &olen, &meta) != 0, "B13 timeout is a failure");
    cks(meta.err_class, "timeout", "B13 class is timeout");
}

/* -------------------------------------------------------------- 千问 C */

static void test_qwen(void)
{
    char url[QW_PATH_MAX], body[MCALL_BODY_MAX], err[128], out[512];
    size_t blen = 0, olen = 0;
    mcall_meta meta;
    mcall_in in;

    ck(qw_build_url(MC_QWEN_BASE_DEFAULT, "native", url, sizeof(url), err, sizeof(err)) == 0,
       "C1 native url builds");
    cks(url, "https://dashscope.aliyuncs.com/api/v1/services/aigc/text-generation/generation",
        "C1 native path");
    ck(qw_build_url(MC_QWEN_COMPAT_BASE_DEFAULT, "compat", url, sizeof(url), err,
                    sizeof(err)) == 0, "C2 compat url builds");
    cks(url, "https://dashscope.aliyuncs.com/compatible-mode/v1/chat/completions",
        "C2 compat path is the OpenAI one");

    memset(&in, 0, sizeof(in));
    in.base_url = MC_QWEN_BASE_DEFAULT;
    in.api_key = "sk-qwen";
    in.model = "qwen-plus";
    in.api_mode = "native";
    in.messages_json = "[{\"role\":\"user\",\"content\":\"你好\"}]";
    in.extra = "{\"enable_search\":false}";
    in.max_tokens = 32;
    in.temperature = 0.5;
    ck(qw_build_body_native(&in, body, sizeof(body), &blen, err, sizeof(err)) == 0,
       "C3 native body builds");
    ckc(body, "\"input\":{\"messages\":", "C3 messages live under input");
    ckc(body, "\"result_format\":\"message\"", "C3 result_format=message");
    ckc(body, "\"enable_search\":false", "C3 extra goes into parameters");

    stub_reset();
    stub_push(200, "{\"output\":{\"choices\":[{\"finish_reason\":\"stop\",\"message\":"
                   "{\"role\":\"assistant\",\"content\":\"千问原生回答\"}}]},"
                   "\"usage\":{\"total_tokens\":9},\"request_id\":\"r1\"}");
    ck(qw_call(&in, &g_stub, NULL, out, sizeof(out), &olen, &meta) == 0, "C4 native call ok");
    cks(out, "千问原生回答", "C4 native reply parsed from output.choices");
    cks(g_last_url, "https://dashscope.aliyuncs.com/api/v1/services/aigc/text-generation/generation",
        "C4 the adapter called the native endpoint");

    stub_reset();
    stub_push(200, "{\"output\":{\"text\":\"纯文本回答\"},\"request_id\":\"r2\"}");
    ck(qw_call(&in, &g_stub, NULL, out, sizeof(out), &olen, &meta) == 0,
       "C5 result_format=text fallback works");
    cks(out, "纯文本回答", "C5 output.text is accepted");

    stub_reset();
    stub_push(400, "{\"code\":\"InvalidParameter\",\"message\":\"model not found\"}");
    ck(qw_call(&in, &g_stub, NULL, out, sizeof(out), &olen, &meta) != 0, "C6 400 is a failure");
    cks(meta.err_class, "http_400", "C6 class");
    ckc(meta.err_detail, "InvalidParameter", "C6 the vendor code is surfaced");

    /* 兼容模式：报文必须变成 OpenAI 形状，路径也必须换 */
    in.api_mode = "compat";
    in.base_url = MC_QWEN_COMPAT_BASE_DEFAULT;
    stub_reset();
    stub_push(200, "{\"choices\":[{\"message\":{\"content\":\"千问兼容回答\"}}]}");
    ck(qw_call(&in, &g_stub, NULL, out, sizeof(out), &olen, &meta) == 0, "C7 compat call ok");
    cks(out, "千问兼容回答", "C7 compat reply parsed");
    cks(g_last_url, "https://dashscope.aliyuncs.com/compatible-mode/v1/chat/completions",
        "C7 compat uses /chat/completions");
    ckc(g_last_body, "\"stream\":false", "C7 compat sends an OpenAI body");
    ckn(g_last_body, "\"input\":", "C7 compat does not send the native envelope");
}

/* ------------------------------------------------- OpenAI 兼容 D */

static void test_openai(void)
{
    char url[OA_URL_MAX], out[512];
    size_t olen = 0;
    char err[128];
    mcall_meta meta;
    mcall_in in;

    ck(oa_build_url("https://api.deepseek.com", url, sizeof(url), err, sizeof(err)) == 0, "D1 url");
    cks(url, "https://api.deepseek.com/chat/completions", "D1 generic base gets the path");
    ck(oa_build_url("http://192.168.1.5:8799/v1", url, sizeof(url), err, sizeof(err)) == 0, "D2 http");
    cks(url, "http://192.168.1.5:8799/v1/chat/completions", "D2 a local proxy works too");
    ck(oa_build_url("", url, sizeof(url), err, sizeof(err)) != 0, "D3 empty base refused");

    memset(&in, 0, sizeof(in));
    in.base_url = "https://api.deepseek.com";
    in.api_key = "sk-real";
    in.model = "deepseek-chat";
    in.messages_json = "[{\"role\":\"user\",\"content\":\"hi\"}]";
    in.max_tokens = 16;
    in.temperature = 0.7;

    stub_reset();
    stub_push(200, "{\"choices\":[{\"message\":{\"content\":\"pong\"}}]}");
    ck(oa_call(&in, &g_stub, NULL, out, sizeof(out), &olen, &meta) == 0, "D4 openai call ok");
    cks(out, "pong", "D4 reply");

    stub_reset();
    stub_push(401, "{\"error\":{\"message\":\"Incorrect API key provided\",\"type\":"
                   "\"invalid_request_error\",\"code\":\"invalid_api_key\"}}");
    ck(oa_call(&in, &g_stub, NULL, out, sizeof(out), &olen, &meta) != 0, "D5 401 refused");
    cks(meta.err_class, "http_401", "D5 class");
    ckc(meta.err_detail, "invalid_api_key", "D5 the vendor code is surfaced");

    stub_reset();
    stub_push_ex(0, 0, 0, 1, NULL, "curl: could not resolve host");
    ck(oa_call(&in, &g_stub, NULL, out, sizeof(out), &olen, &meta) != 0, "D6 transport failure");
    cks(meta.err_class, "transport", "D6 class names the transport");
    ckc(meta.err_detail, "resolve host", "D6 the transport reason is kept");

    stub_reset();
    stub_push(200, "not json at all");
    ck(oa_call(&in, &g_stub, NULL, out, sizeof(out), &olen, &meta) != 0, "D7 garbage body refused");
    cks(meta.err_class, "no_content", "D7 class");
}

/* ------------------------------------------------------------ 统一入口 E */

static void test_provider(void)
{
    const char *path = "t9_08c_prov_tmp.json";
    model_provider mp;
    mcall_meta meta;
    char out[512], reason[256];
    size_t olen = 0;
    FILE *f;
    int rc;

    f = fopen(path, "wb");
    if (f) { fwrite(CFG_JSON, 1, strlen(CFG_JSON), f); fclose(f); }

    mp_init(&mp, path, &g_stub, NULL);
    ck(mp_reload(&mp) >= 0, "E1 configuration loads");
    ck(mp.active == 1, "E1 there is an active model");
    cks(mp.info.vendor, "doubao", "E1 the default is the doubao configuration");
    {
        mp_info info;
        ck(mp_model_info(&mp, &info) == 0, "E2 getModelInfo works");
        cks(info.model, "doubao-pro-32k", "E2 it reports the model name");
        cks(info.endpoint_id, "ep-2024-abc", "E2 and the endpoint id");
    }

    stub_reset();
    stub_push(200, "{\"choices\":[{\"message\":{\"content\":\"统一入口的回答\"}}]}");
    rc = mp_send_text(&mp, "[{\"role\":\"user\",\"content\":\"hi\"}]", out, sizeof(out), &olen, &meta);
    ck(rc == 0, "E3 sendText succeeds");
    cks(out, "统一入口的回答", "E3 the text comes back");
    ckc(g_last_url, "ark.cn-beijing.volces.com", "E3 the doubao adapter was used");
    ck(mp.calls == 1 && mp.ok == 1, "E3 the call is counted");

    stub_reset();
    stub_push(401, "{\"error\":{\"code\":\"AuthenticationError\",\"message\":\"bad key\"}}");
    rc = mp_send_text(&mp, "[{\"role\":\"user\",\"content\":\"hi\"}]", out, sizeof(out), &olen, &meta);
    ck(rc != 0, "E4 a failed call is reported");
    ck(mp.err == 1, "E4 the error is counted");
    cks(mp.last_class, "http_401", "E4 last_class is published for the UI");

    /* testConnection：成功 */
    stub_reset();
    stub_push(200, "{\"choices\":[{\"message\":{\"content\":\"pong\"}}]}");
    ck(mp_test_connection(&mp, "m-openai", reason, sizeof(reason)) == 0,
       "E5 testConnection on a specific configuration");
    cks(mp.test_id, "m-openai", "E5 the tested id is recorded");
    ck(mp.test_ok == 1, "E5 the result is recorded as ok");
    ckc(reason, "pong", "E5 the reason carries the reply");
    ckc(g_last_url, "my-proxy.example.com", "E5 the tested configuration is the one used");

    /* testConnection：失败（错误 key） */
    stub_reset();
    stub_push(401, "{\"error\":{\"message\":\"invalid api key\",\"code\":\"invalid_api_key\"}}");
    ck(mp_test_connection(&mp, "m-qwen-compat", reason, sizeof(reason)) != 0,
       "E6 a bad key fails the test");
    ck(mp.test_ok == 0, "E6 the failure is recorded");
    ckc(reason, "http_401", "E6 the reason names the class");

    /* testConnection：不存在的配置 */
    ck(mp_test_connection(&mp, "nope", reason, sizeof(reason)) != 0, "E7 unknown id fails");
    ckc(reason, "no such model", "E7 the reason says so");

    /* 热切换：改文件后 mp_poll 必须重新加载，并且下一次调用就走新厂商 */
    ck(mp_poll(&mp) == 0, "E8 no change -> no reload");
    {
        const char *v2 = "{\"v\":1,\"default_id\":\"m-openai\",\"models\":["
                         "{\"id\":\"m-openai\",\"vendor\":\"openai\",\"api_key\":\"sk-proxy\","
                         "\"model\":\"gpt-4o-mini\",\"base_url\":\"https://proxy.example.com/v1\"}]}";
        f = fopen(path, "wb");
        if (f) { fwrite(v2, 1, strlen(v2), f); fclose(f); }
    }
    sleep(1);   /* mtime 分辨率：不同文件系统上可能是 1 s */
    ck(mp_poll(&mp) == 1, "E9 a changed file is picked up");
    cks(mp.info.id, "m-openai", "E9 the active configuration changed");
    cks(mp.info.vendor, "openai", "E9 the vendor changed");
    stub_reset();
    stub_push(200, "{\"choices\":[{\"message\":{\"content\":\"proxy\"}}]}");
    ck(mp_send_text(&mp, "[{\"role\":\"user\",\"content\":\"hi\"}]", out, sizeof(out), &olen,
                    &meta) == 0, "E10 the new configuration answers");
    ckc(g_last_url, "proxy.example.com", "E10 the OpenAI adapter is used after the switch");

    /* 配置被写坏：保留上一份可用配置，不崩 */
    {
        const char *bad = "{ this is not json";
        f = fopen(path, "wb");
        if (f) { fwrite(bad, 1, strlen(bad), f); fclose(f); }
    }
    sleep(1);
    ck(mp_poll(&mp) < 0, "E11 a broken file is reported");
    ck(mp.active == 1, "E11 the last working configuration is kept");
    ck(mp.cfg_error[0] != '\0', "E11 the reason is recorded for the UI");

    UNLINK(path);

    /* 没有配置文件：明确 no_model，不假装有模型 */
    {
        model_provider empty;
        mp_init(&empty, "t9_08c_no_such_file.json", &g_stub, NULL);
        ck(mp_reload(&empty) < 0, "E12 a missing file fails cleanly");
        ck(mp_send_text(&empty, "[{\"role\":\"user\",\"content\":\"x\"}]", out, sizeof(out),
                        &olen, &meta) != 0, "E12 sendText refuses without a model");
        cks(meta.err_class, "no_model", "E12 the class is no_model");
    }
}

/* ------------------------------------------------------------ 实时语音 F */

static void test_realtime(void)
{
    rv_provider p;
    dr_ctx ctx;
    rv_params params;
    char err[160];
    short pcm[160];
    rv_event ev;
    int got = 0;

    dr_defaults(&params);
    cks(params.url, DR_URL_DEFAULT, "F1 the default endpoint is the doubao realtime one");
    ck(params.sample_rate == 16000 && params.channels == 1, "F1 audio defaults are sane");
    ck(dr_validate(&params, err, sizeof(err)) != RV_OK, "F2 an empty key/app id is refused");
    ckc(err, "api key", "F2 the reason names the missing key");

    snprintf(params.api_key, sizeof(params.api_key), "rt-key");
    snprintf(params.app_id, sizeof(params.app_id), "app-1");
    snprintf(params.model, sizeof(params.model), "doubao-realtime-1");
    ck(dr_validate(&params, err, sizeof(err)) == RV_OK, "F3 a complete parameter set validates");
    params.sample_rate = 4000;
    ck(dr_validate(&params, err, sizeof(err)) == RV_E_PARAM, "F4 a bad sample rate is refused");
    params.sample_rate = 16000;
    snprintf(params.url, sizeof(params.url), "https://not-ws");
    ck(dr_validate(&params, err, sizeof(err)) == RV_E_PARAM, "F5 a non-ws url is refused");
    snprintf(params.url, sizeof(params.url), "%s", DR_URL_DEFAULT);

    memset(&ctx, 0, sizeof(ctx));
    ck(dr_open(&p, &ctx, &params, NULL, NULL, NULL) == 0, "F6 the interface binds");
    ck(rv_state_of(&p) == RV_IDLE, "F6 the initial state is idle");

    /* 8 个动作都必须可调用，并且老实返回"还没实现" */
    ck(rv_connect(&p, err, sizeof(err)) == RV_E_NOT_IMPLEMENTED, "F7 connect is callable (not impl)");
    ck(rv_state_of(&p) == RV_IDLE, "F7 connect does NOT pretend to be connected");
    ck(rv_start_session(&p, err, sizeof(err)) == RV_E_NOT_IMPLEMENTED, "F8 startSession callable");
    memset(pcm, 0, sizeof(pcm));
    ck(rv_send_audio(&p, pcm, 160) == RV_E_NOT_IMPLEMENTED, "F9 sendAudio callable");
    ck(rv_receive_audio(&p, pcm, 160, &got) == RV_E_NOT_IMPLEMENTED, "F10 receiveAudio callable");
    ck(got == 0, "F10 nothing is invented as received audio");
    ck(rv_receive_transcript(&p, &ev) == RV_E_NOT_IMPLEMENTED, "F11 receiveTranscript callable");
    ck(rv_interrupt(&p) == RV_E_NOT_IMPLEMENTED, "F12 interrupt callable");
    ck(rv_close_session(&p) == RV_E_NOT_IMPLEMENTED, "F13 closeSession callable");
    ck(rv_disconnect(&p) == RV_E_NOT_IMPLEMENTED, "F14 disconnect callable");
    ck(ctx.connects == 1, "F15 the call counter moved (the interface really ran)");

    /* 参数保护：空指针/坏参数不崩 */
    ck(rv_send_audio(&p, NULL, 10) == RV_E_PARAM, "F16 null pcm refused");
    ck(rv_receive_audio(&p, pcm, 0, &got) == RV_E_PARAM, "F17 zero frames refused");
    {
        rv_provider none;
        memset(&none, 0, sizeof(none));
        ck(rv_connect(&none, err, sizeof(err)) == RV_E_STATE, "F18 an unbound provider is refused");
        ck(rv_state_of(&none) == RV_CLOSED, "F18 its state says closed");
    }
    dr_close(&p);
    cks(rv_error_name(RV_E_NOT_IMPLEMENTED), "not_implemented", "F19 the code has a name");
    cks(rv_state_name(RV_SESSION), "session", "F19 the state has a name");
}

int main(void)
{
    test_cfg();
    test_doubao();
    test_qwen();
    test_openai();
    test_provider();
    test_realtime();
    printf("\nT9-08C model tests: %d passed, %d failed\n", PASS, FAIL);
    return FAIL == 0 ? 0 : 1;
}
