/* wake_queue.c -- 见 wake_queue.h。纯 C + GCC 原子内建，可在主机上直接编译测试。 */
#include "wake_queue.h"

#include <string.h>
#include <sched.h>

#define WQ_LOAD(x)        __atomic_load_n(&(x), __ATOMIC_ACQUIRE)
#define WQ_STORE(x, v)    __atomic_store_n(&(x), (v), __ATOMIC_RELEASE)
#define WQ_ADD(x, v)      __atomic_add_fetch(&(x), (v), __ATOMIC_ACQ_REL)

void wq_init(wq *q)
{
    if (q == NULL) return;
    memset(q, 0, sizeof(*q));
}

int wq_push(wq *q, const wq_item *it)
{
    unsigned long long head, tail, depth;
    unsigned idx;

    if (q == NULL || it == NULL) return 0;

    /* 取号用 CAS，而不是 fetch_add 后再补救：
     * 一旦取号成功就必须写这个 slot，否则消费者会永远等一个永远不会 ready 的位置。
     * 队列满时不取号、只计数丢弃，head 和 tail 的距离因此始终 ≤ WQ_CAP。 */
    for (;;) {
        tail = WQ_LOAD(q->tail);
        head = WQ_LOAD(q->head);
        depth = head - tail;
        if (depth >= (unsigned long long)WQ_CAP) {
            WQ_ADD(q->dropped, 1ull);
            return 0;
        }
        if (__atomic_compare_exchange_n(&q->head, &head, head + 1ull, 0,
                                        __ATOMIC_ACQ_REL, __ATOMIC_ACQUIRE)) {
            break;
        }
    }

    idx = (unsigned)(head % (unsigned long long)WQ_CAP);
    q->item[idx] = *it;
    WQ_STORE(q->ready[idx], 1u);           /* release：内容先写完，再放开 ready */
    WQ_ADD(q->pushed, 1ull);
    if (depth + 1ull > WQ_LOAD(q->max_depth)) WQ_STORE(q->max_depth, depth + 1ull);
    return 1;
}

int wq_pop(wq *q, wq_item *out)
{
    unsigned long long tail, head;
    unsigned idx;

    if (q == NULL || out == NULL) return 0;
    tail = WQ_LOAD(q->tail);
    head = WQ_LOAD(q->head);
    if (tail >= head) return 0;

    idx = (unsigned)(tail % (unsigned long long)WQ_CAP);
    if (WQ_LOAD(q->ready[idx]) == 0) return 0;   /* 生产者还没写完这条 */

    *out = q->item[idx];
    WQ_STORE(q->ready[idx], 0u);
    WQ_STORE(q->tail, tail + 1ull);
    WQ_ADD(q->popped, 1ull);
    return 1;
}

int wq_wait_ready(wq *q, int spins)
{
    unsigned long long tail, head;
    unsigned idx;

    if (q == NULL) return 0;
    tail = WQ_LOAD(q->tail);
    head = WQ_LOAD(q->head);
    if (tail >= head) return 0;
    idx = (unsigned)(tail % (unsigned long long)WQ_CAP);
    while (spins-- > 0) {
        if (WQ_LOAD(q->ready[idx]) != 0) return 1;
        sched_yield();
    }
    return 0;
}

unsigned long long wq_depth(const wq *q)
{
    if (q == NULL) return 0;
    return WQ_LOAD(q->head) - WQ_LOAD(q->tail);
}

unsigned long long wq_max_depth(const wq *q)
{
    if (q == NULL) return 0;
    return WQ_LOAD(q->max_depth);
}

unsigned long long wq_dropped(const wq *q)
{
    if (q == NULL) return 0;
    return WQ_LOAD(q->dropped);
}
