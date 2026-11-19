/*
 * t5_provider.c -- Provider 注册表 + MockASRProvider
 *
 * Mock 的语义（很重要，不许美化）：
 *   - 不做任何真实识别，不联网，不读音频内容；
 *   - 返回文本固定带 `[MOCK]` 前缀，`provider_type` 固定写 "mock"；
 *   - 失败注入只用于自动化测试，通过环境变量，不进代码常量。
 */
#include "t5_provider.h"
#include "t5_util.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct {
    char fail_match[128];
    int  fail_kind;          /* T5_ASR_TRANSIENT / T5_ASR_PERMANENT */
    unsigned calls;
} t5_mock_ctx;

static void *mock_init(const char *opt, char *err, size_t errlen)
{
    t5_mock_ctx *c = (t5_mock_ctx *)calloc(1, sizeof(*c));
    const char *m;

    (void)opt;
    if (c == NULL) {
        if (err && errlen) snprintf(err, errlen, "mock:oom");
        return NULL;
    }
    c->fail_kind = T5_ASR_TRANSIENT;

    m = getenv(T5_MOCK_FAIL_MATCH_ENV);
    if (m != NULL) snprintf(c->fail_match, sizeof(c->fail_match), "%s", m);

    m = getenv(T5_MOCK_FAIL_KIND_ENV);
    if (m != NULL && strcmp(m, "permanent") == 0) c->fail_kind = T5_ASR_PERMANENT;

    if (err && errlen) err[0] = '\0';
    return c;
}

static int mock_submit(void *ctx, const t5_wav_info *w, t5_asr_result *out)
{
    t5_mock_ctx *c = (t5_mock_ctx *)ctx;
    char run_id[16];
    long seg_id = 0;
    long long start_seq = 0;

    if (c == NULL || w == NULL || out == NULL) return -1;
    memset(out, 0, sizeof(*out));
    snprintf(out->model, sizeof(out->model), "mock-v1");
    c->calls++;

    t5_parse_t4_name(w->name, run_id, &seg_id, &start_seq);

    /* 失败注入（仅测试）：命中文件名子串 */
    if (c->fail_match[0] != '\0' && strstr(w->name, c->fail_match) != NULL) {
        out->code = c->fail_kind;
        snprintf(out->err, sizeof(out->err), "mock:injected-%s-failure",
                 c->fail_kind == T5_ASR_PERMANENT ? "permanent" : "transient");
        return 0;
    }

    out->code = T5_ASR_OK;
    snprintf(out->text, sizeof(out->text),
             "[MOCK] recognized segment %ld", seg_id);
    return 0;
}

static void mock_release(void *ctx)
{
    free(ctx);
}

static const t5_provider g_mock = {
    "mock", "mock", mock_init, mock_submit, mock_release
};

const t5_provider *t5_provider_mock(void)
{
    return &g_mock;
}

const t5_provider *t5_provider_by_name(const char *name)
{
    if (name == NULL) return NULL;
    if (strcmp(name, "mock") == 0) return &g_mock;
    /* 真实 Provider 在这里注册（本阶段禁止接入） */
    return NULL;
}
