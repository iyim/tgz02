/*
 * provider.c -- Provider 抽象层的通用外壳（把任何实现收敛成统一状态码）
 *
 * 单独一层的理由：实现（mock_provider.c / 将来的 deepseek_provider.c ...）只需要关心
 * 自己的协议细节，而"空指针、未初始化、返回值与状态不一致"这类防御放在这里统一处理，
 * 消费者只看到 t6b_reply.status。
 */
#include "provider.h"
#include "worker_util.h"

#include <stdio.h>
#include <string.h>

const char *t6b_pstatus_name(t6b_pstatus s)
{
    switch (s) {
    case T6B_P_OK:      return "ok";
    case T6B_P_TIMEOUT: return "timeout";
    case T6B_P_ERROR:   return "error";
    default:            return "unknown_status";
    }
}

int t6b_provider_init(t6b_provider *p, char *err, size_t errlen)
{
    if (p == NULL || p->ops == NULL || p->ops->init == NULL) {
        if (err) snprintf(err, errlen, "provider not configured");
        return -1;
    }
    return p->ops->init(p, err, errlen);
}

static int provider_finalize(int rc, t6b_reply *out)
{
    if (rc != 0 && out->status == T6B_P_OK) {
        /* 实现返回失败却留下 OK 状态：按错误处理，绝不当成功 */
        out->status = T6B_P_ERROR;
        if (out->message[0] == '\0')
            snprintf(out->message, sizeof(out->message), "provider returned rc=%d", rc);
    }
    if (out->text[sizeof(out->text) - 1] != '\0') out->text[sizeof(out->text) - 1] = '\0';
    if (out->status == T6B_P_OK && out->text_bytes <= 0) {
        out->text_bytes = (int)strlen(out->text);
    } else if (out->status != T6B_P_OK) {
        out->text_bytes = 0;
        out->text[0] = '\0';
    }
    return 0;
}

int t6b_provider_complete(t6b_provider *p, const char *user_text, t6b_reply *out)
{
    int rc;

    if (out == NULL) return -1;
    memset(out, 0, sizeof(*out));
    out->status = T6B_P_ERROR;

    if (p == NULL || p->ops == NULL || p->ops->complete == NULL) {
        snprintf(out->message, sizeof(out->message), "provider not configured");
        return -1;
    }
    if (user_text == NULL || user_text[0] == '\0') {
        snprintf(out->message, sizeof(out->message), "empty user text");
        return -1;
    }

    rc = p->ops->complete(p, user_text, out);
    return provider_finalize(rc, out);
}

int t6b_provider_complete_msgs(t6b_provider *p, const char *messages_json,
                               const char *user_text_fallback, t6b_reply *out)
{
    int rc;

    if (out == NULL) return -1;
    memset(out, 0, sizeof(*out));
    out->status = T6B_P_ERROR;

    if (p == NULL || p->ops == NULL) {
        snprintf(out->message, sizeof(out->message), "provider not configured");
        return -1;
    }
    if (messages_json == NULL || messages_json[0] != '[') {
        snprintf(out->message, sizeof(out->message), "messages json missing");
        return -1;
    }

    if (p->ops->complete_msgs != NULL) {
        rc = p->ops->complete_msgs(p, messages_json, out);
        return provider_finalize(rc, out);
    }

    /* 老实现兜底：只发本轮 user 文本（行为退回 T5-06C，不会把历史丢掉一半） */
    if (p->ops->complete == NULL) {
        snprintf(out->message, sizeof(out->message), "provider has no complete path");
        return -1;
    }
    if (user_text_fallback == NULL || user_text_fallback[0] == '\0') {
        snprintf(out->message, sizeof(out->message), "empty user text");
        return -1;
    }
    rc = p->ops->complete(p, user_text_fallback, out);
    return provider_finalize(rc, out);
}

void t6b_provider_fini(t6b_provider *p)
{
    if (p == NULL || p->ops == NULL || p->ops->fini == NULL) return;
    p->ops->fini(p);
}
