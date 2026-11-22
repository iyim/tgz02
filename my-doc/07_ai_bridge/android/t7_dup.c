/*
 * t7_dup.c -- 见 t7_dup.h 的规则说明。
 *
 * 这个文件刻意不含任何时间窗口常量：只要判定依赖"多久算同一次"，规则就会在
 * "13 s 后才到的二次识别"和"1 s 内用户主动重复"之间二选一，两边都会错一次。
 * 这里只用事件身份（event_id / session+seq+文本）。
 */
#include "t7_dup.h"

#include <string.h>

static void copy_trunc(char *dst, size_t cap, const char *src)
{
    size_t n;

    if (dst == NULL || cap == 0) return;
    if (src == NULL) { dst[0] = '\0'; return; }
    n = strlen(src);
    if (n >= cap) n = cap - 1;
    memcpy(dst, src, n);
    dst[n] = '\0';
}

void t7dup_key_set(t7dup_key *k, const char *event_id, const char *session,
                   const char *text, long long seq)
{
    if (k == NULL) return;
    memset(k, 0, sizeof(*k));
    copy_trunc(k->event_id, sizeof(k->event_id), event_id);
    copy_trunc(k->session, sizeof(k->session), session);
    copy_trunc(k->text, sizeof(k->text), text);
    k->seq = seq;
}

void t7dup_init(t7_dup *d)
{
    if (d == NULL) return;
    memset(d, 0, sizeof(*d));
}

t7dup_verdict t7dup_check(t7_dup *d, const t7dup_key *k)
{
    if (d == NULL || k == NULL) return T7DUP_NEW;
    if (!d->have) {
        d->n_new++;
        return T7DUP_NEW;
    }

    /* A：event_id 是这一条 final 通知的身份。非空且相同 -> 同一条被重复投递。 */
    if (k->event_id[0] != '\0' && d->last.event_id[0] != '\0' &&
        strcmp(k->event_id, d->last.event_id) == 0) {
        d->n_same_event++;
        return T7DUP_SAME_EVENT;
    }

    /* B：同一条记录换了路径再来一次（session + seq + 文本 全同）。 */
    if (k->session[0] != '\0' && d->last.session[0] != '\0' &&
        strcmp(k->session, d->last.session) == 0 &&
        k->seq >= 0 && d->last.seq == k->seq &&
        strcmp(k->text, d->last.text) == 0) {
        d->n_same_report++;
        return T7DUP_SAME_REPORT;
    }

    /* C：其余都算新指令。文本完全相同但身份不同时单独计数，便于报告里说清
     * "这种我们选择执行"的比例，而不是悄悄吞掉。 */
    if (strcmp(k->text, d->last.text) == 0) d->n_same_text_new_event++;
    d->n_new++;
    return T7DUP_NEW;
}

void t7dup_note(t7_dup *d, const t7dup_key *k)
{
    if (d == NULL || k == NULL) return;
    d->last = *k;
    d->have = 1;
}

const char *t7dup_verdict_name(t7dup_verdict v)
{
    switch (v) {
    case T7DUP_NEW:         return "new";
    case T7DUP_SAME_EVENT:  return "same-event-id";
    case T7DUP_SAME_REPORT: return "same-report";
    default:                return "?";
    }
}
