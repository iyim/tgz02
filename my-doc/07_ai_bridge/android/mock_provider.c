/*
 * mock_provider.c -- 本阶段唯一的 Provider 实现：固定回复，零网络
 *
 * 它能模拟四种行为，用来验证"Provider 出错不影响事件消费者"：
 *   1) 正常：返回固定中文回复；
 *   2) 耗时：--mock-delay-ms N（本阶段用同步 sleep 模拟，不引入定时器/线程）；
 *   3) 错误：--mock-fail-from N（第 N 次调用起返回 T6B_P_ERROR）；
 *   4) 超时：--mock-timeout-from N（第 N 次调用起返回 T6B_P_TIMEOUT）。
 *
 * 明确写出：本文件没有任何 socket/http/dns 代码，也没有读 key 的路径。
 * 报告里所有"模型回复"都必须标注为 Mock，不得描述成真实模型调用。
 */
#include "provider.h"
#include "worker_util.h"

#include <stdio.h>
#include <string.h>

void t6b_mock_defaults(t6b_mock_cfg *c)
{
    if (c == NULL) return;
    memset(c, 0, sizeof(*c));
    c->fail_from_call = 0;
    c->fail_first_calls = 0;
    c->timeout_from_call = 0;
    c->delay_ms = 0;
    snprintf(c->reply, sizeof(c->reply), "%s", T6B_MOCK_REPLY_DEFAULT);
}

static int mock_init(t6b_provider *p, char *err, size_t errlen)
{
    t6b_mock *m = (t6b_mock *)p->ctx;

    if (m == NULL) {
        if (err) snprintf(err, errlen, "mock ctx null");
        return -1;
    }
    if (m->cfg.reply[0] == '\0') {
        snprintf(m->cfg.reply, sizeof(m->cfg.reply), "%s", T6B_MOCK_REPLY_DEFAULT);
    }
    m->calls = 0;
    m->inited = 1;
    return 0;
}

static int mock_complete(t6b_provider *p, const char *user_text, t6b_reply *out)
{
    t6b_mock *m = (t6b_mock *)p->ctx;
    long long t0;

    if (m == NULL || out == NULL) return -1;

    t0 = wu_now_ms();
    m->calls++;

    if (m->cfg.delay_ms > 0) (void)wu_sleep_ms((long long)m->cfg.delay_ms);

    if (m->cfg.timeout_from_call > 0 &&
        (long long)m->calls >= (long long)m->cfg.timeout_from_call) {
        out->status = T6B_P_TIMEOUT;
        out->code = 1;
        snprintf(out->message, sizeof(out->message), "mock timeout at call %lu", m->calls);
    } else if (m->cfg.fail_first_calls > 0 &&
               (long long)m->calls <= (long long)m->cfg.fail_first_calls) {
        /* 前 N 次失败、之后成功：用来验证"失败不推进偏移 + 重试后只算成功一次" */
        out->status = T6B_P_ERROR;
        out->code = 3;
        snprintf(out->message, sizeof(out->message), "mock transient failure at call %lu",
                 m->calls);
    } else if (m->cfg.fail_from_call > 0 &&
               (long long)m->calls >= (long long)m->cfg.fail_from_call) {
        out->status = T6B_P_ERROR;
        out->code = 2;
        snprintf(out->message, sizeof(out->message), "mock failure at call %lu", m->calls);
    } else {
        out->status = T6B_P_OK;
        out->code = 0;
        snprintf(out->text, sizeof(out->text), "%s", m->cfg.reply);
        out->text_bytes = (int)strlen(out->text);
    }
    out->mock = 1;
    out->latency_ms = wu_now_ms() - t0;
    (void)user_text;   /* Mock 不使用用户文本（真实适配器才需要） */
    return 0;
}

static void mock_fini(t6b_provider *p)
{
    t6b_mock *m = (t6b_mock *)p->ctx;
    if (m != NULL) m->inited = 0;
}

/* T7-01：统计 messages 数组里有几条消息（只数 "role": 出现次数，不解析内容）。
 * 用途：主机/设备测试可以确认"历史确实被带上了"，Mock 仍然零网络。 */
static int mock_complete_msgs(t6b_provider *p, const char *messages_json, t6b_reply *out)
{
    t6b_mock *m = (t6b_mock *)p->ctx;
    const char *q;
    int n = 0;
    int rc;

    if (m == NULL || out == NULL) return -1;
    for (q = messages_json; q != NULL && (q = strstr(q, "\"role\":")) != NULL; q += 7) n++;
    m->last_msg_count = (unsigned long long)n;
    m->total_msg_count += (unsigned long long)n;

    rc = mock_complete(p, NULL, out);
    return rc;
}

static const t6b_provider_ops MOCK_OPS = {
    "mock",
    mock_init,
    mock_complete,
    mock_fini,
    mock_complete_msgs
};

int t6b_mock_open(t6b_provider *p, t6b_mock *m, const t6b_mock_cfg *cfg)
{
    if (p == NULL || m == NULL) return -1;
    memset(m, 0, sizeof(*m));
    if (cfg != NULL) m->cfg = *cfg;
    else t6b_mock_defaults(&m->cfg);

    p->ops = &MOCK_OPS;
    p->ctx = m;
    return 0;
}

void t6b_mock_close(t6b_provider *p)
{
    if (p == NULL) return;
    p->ops = NULL;
    p->ctx = NULL;
}
