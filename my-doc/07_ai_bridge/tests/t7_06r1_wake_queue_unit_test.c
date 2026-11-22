/*
 * t7_06r1_wake_queue_unit_test.c -- T7-06-R1 快照队列的主机测试
 *
 * 目的：证明"回调只入队、后台线程出队"这套结构不会丢数据、不会乱序、不会读到写了一半的
 * slot，并且在队列满时**只丢弃新快照并计数**（不阻塞生产者）。
 *
 * 这里链接的是生产代码 android/hook_wake/wake_queue.c，不是测试里另写一份环形队列。
 */
#include "wake_queue.h"

#include <pthread.h>
#include <stdio.h>
#include <string.h>

static int g_pass;
static int g_fail;

static void ok(int cond, const char *what)
{
    if (cond) g_pass++;
    else { g_fail++; printf("FAIL %s\n", what); }
}

#define MAGIC 0x5a17c0deu

static void fill_item(wq_item *it, unsigned seq, unsigned producer)
{
    unsigned i;
    unsigned s = 0;

    memset(it, 0, sizeof(*it));
    it->seq = seq;
    it->tid = (int)producer;
    it->args[0] = MAGIC;
    it->args[1] = producer;
    it->args[2] = seq;
    it->bytes = 0x60;
    for (i = 0; i < sizeof(it->raw); i++) it->raw[i] = (unsigned char)(seq + i);
    for (i = 0; i < sizeof(it->raw); i++) s += it->raw[i];
    it->args[3] = s;
}

static int check_item(const wq_item *it)
{
    unsigned i;
    unsigned s = 0;

    if (it->args[0] != MAGIC) return 0;
    if (it->bytes != 0x60) return 0;
    for (i = 0; i < sizeof(it->raw); i++) {
        if (it->raw[i] != (unsigned char)(it->seq + i)) return 0;
        s += it->raw[i];
    }
    return s == it->args[3];
}

static void test_capacity(void)
{
    wq q;
    wq_item it, out;
    int i, accepted = 0;

    wq_init(&q);
    for (i = 0; i < WQ_CAP; i++) {
        fill_item(&it, (unsigned)(i + 1), 1);
        if (wq_push(&q, &it)) accepted++;
    }
    ok(accepted == WQ_CAP, "capacity: all WQ_CAP items accepted");
    ok(wq_depth(&q) == WQ_CAP, "capacity: depth == WQ_CAP");
    ok(wq_max_depth(&q) == WQ_CAP, "capacity: max_depth == WQ_CAP");

    for (i = 0; i < 5; i++) {
        fill_item(&it, (unsigned)(100 + i), 1);
        ok(wq_push(&q, &it) == 0, "capacity: overflow is rejected (not blocked)");
    }
    ok(wq_dropped(&q) == 5, "capacity: dropped counter == 5");
    ok(wq_depth(&q) == WQ_CAP, "capacity: depth unchanged after overflow");

    for (i = 0; i < WQ_CAP; i++) {
        if (!wq_pop(&q, &out)) { ok(0, "capacity: drain should succeed"); break; }
        if (out.seq != (unsigned)(i + 1)) { ok(0, "capacity: FIFO order broken"); break; }
        if (!check_item(&out)) { ok(0, "capacity: item corrupted"); break; }
    }
    ok(wq_depth(&q) == 0, "capacity: depth back to 0");
}

typedef struct {
    wq        *q;
    unsigned   producer;
    unsigned   count;
    unsigned   accepted;
    unsigned   seen_seq_bad;
} prod_arg;

static void *producer_thread(void *p)
{
    prod_arg *a = (prod_arg *)p;
    wq_item it;
    unsigned i;

    for (i = 1; i <= a->count; i++) {
        fill_item(&it, i, a->producer);
        if (wq_push(a->q, &it)) a->accepted++;
    }
    return NULL;
}

#define PRODUCERS 4
#define PER_PRODUCER 20000

typedef struct {
    wq        *q;
    volatile int run;        /* 消费者是否继续跑 */
    unsigned long long popped;
    unsigned long long bad;
    unsigned long long bad_content;
    unsigned long long bad_order;
    unsigned           expected_seq[PRODUCERS];
} cons_arg;

static void *consumer_thread(void *p)
{
    cons_arg *c = (cons_arg *)p;
    wq_item it;
    unsigned i;

    for (i = 0; i < PRODUCERS; i++) c->expected_seq[i] = 1;

    for (;;) {
        int got = 0;
        while (wq_pop(c->q, &it)) {
            unsigned p = (unsigned)it.tid;
            got = 1;
            c->popped++;
            if (!check_item(&it)) { c->bad++; c->bad_content++; continue; }
            if (p >= 1 && p <= PRODUCERS) {
                if (it.seq < c->expected_seq[p - 1]) { c->bad++; c->bad_order++; }
                if (it.seq > c->expected_seq[p - 1]) c->expected_seq[p - 1] = it.seq + 1;
            } else {
                c->bad++;
            }
        }
        if (!c->run && !got) break;
        if (!got) sched_yield();
    }
    while (wq_pop(c->q, &it)) {
        unsigned p = (unsigned)it.tid;
        c->popped++;
        if (!check_item(&it)) { c->bad++; c->bad_content++; continue; }
        if (p >= 1 && p <= PRODUCERS) {
            if (it.seq < c->expected_seq[p - 1]) { c->bad++; c->bad_order++; }
            if (it.seq > c->expected_seq[p - 1]) c->expected_seq[p - 1] = it.seq + 1;
        } else c->bad++;
    }
    return NULL;
}

static void test_multithread_stress(void)
{
    wq q;
    prod_arg pa[PRODUCERS];
    cons_arg ca;
    pthread_t th[PRODUCERS], ct;
    unsigned long long dropped, pushes = 0;
    unsigned i;

    wq_init(&q);
    memset(&ca, 0, sizeof(ca));
    ca.q = &q;
    ca.run = 1;
    pthread_create(&ct, NULL, consumer_thread, &ca);

    for (i = 0; i < PRODUCERS; i++) {
        pa[i].q = &q;
        pa[i].producer = i + 1;
        pa[i].count = PER_PRODUCER;
        pa[i].accepted = 0;
        pthread_create(&th[i], NULL, producer_thread, &pa[i]);
    }
    for (i = 0; i < PRODUCERS; i++) pthread_join(th[i], NULL);
    ca.run = 0;
    pthread_join(ct, NULL);

    dropped = wq_dropped(&q);
    for (i = 0; i < PRODUCERS; i++) pushes += pa[i].accepted;

    ok(ca.bad == 0, "stress: no corrupted / out-of-order items observed");
    ok(pushes + dropped == (unsigned long long)PRODUCERS * PER_PRODUCER,
       "stress: accepted + dropped == attempts");
    ok(ca.popped == pushes, "stress: every accepted item was popped");
    ok(ca.popped + dropped == (unsigned long long)PRODUCERS * PER_PRODUCER,
       "stress: popped + dropped == attempts (nothing lost silently)");
    printf("stress: attempts=%d accepted=%llu dropped=%llu popped=%llu max_depth=%llu bad_content=%llu bad_order=%llu\n",
           PRODUCERS * PER_PRODUCER, pushes, dropped, ca.popped, wq_max_depth(&q), ca.bad_content, ca.bad_order);
}

static void test_wait_ready(void)
{
    wq q;
    wq_item it;

    wq_init(&q);
    ok(wq_wait_ready(&q, 10) == 0, "wait_ready: empty queue reports no data");
    fill_item(&it, 1, 1);
    wq_push(&q, &it);
    ok(wq_wait_ready(&q, 10) == 1, "wait_ready: pushed item becomes ready");
}

int main(void)
{
    test_capacity();
    test_multithread_stress();
    test_wait_ready();
    printf("t7_06r1_wake_queue: pass=%d fail=%d\n", g_pass, g_fail);
    return g_fail == 0 ? 0 : 1;
}
