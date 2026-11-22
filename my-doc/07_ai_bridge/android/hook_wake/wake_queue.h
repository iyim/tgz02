/*
 * wake_queue.h -- T7-06-R1 固定容量无锁快照队列（生产者=原厂语音线程，消费者=后台线程）
 *
 * 为什么单独一个模块：
 *   回调跑在原厂语音线程上，绝不能在里面做文件 I/O、pipe、JSON 编码或者等锁。
 *   这里只提供"往固定数组里写一个 slot"这一件事，并且把丢包/深度计数一并管好，
 *   这样这套队列可以在主机上用多线程压测（tests/t7_06r1_wake_queue_unit_test.c），
 *   而不是只在设备上"看起来没问题"。
 *
 * 语义：
 *   - 容量固定（WQ_CAP），队列满时**丢弃新快照**并 +1 dropped（不阻塞生产者）；
 *   - head/tail 是 64 位单调计数，取模只在索引时做，避免 ABA；
 *   - slot.ready 用 release/acquire 标注"内容已写完"，消费者只等当前 tail 这一个 slot；
 *   - 消费者看到 ready=0 时用 wq_wait_ready() 有界自旋，不持锁。
 */
#ifndef WAKE_QUEUE_H
#define WAKE_QUEUE_H

#include <stddef.h>

#define WQ_CAP 32

typedef struct {
    unsigned      seq;        /* 调用序号（1 起） */
    long long     t_ms;       /* 墙钟毫秒 */
    int           pid;
    int           tid;
    char          comm[16];
    unsigned      args[4];    /* this / typeA / typeB / info */
    unsigned char raw[0x60];  /* 固定长度快照 */
    int           bytes;      /* 实际安全读到的字节数 */
    unsigned      cb_us;      /* 回调耗时（微秒） */
} wq_item;

typedef struct {
    wq_item  item[WQ_CAP];
    unsigned ready[WQ_CAP];
    unsigned long long head;     /* 生产者下次写的位置（原子） */
    unsigned long long tail;     /* 消费者下次读的位置（原子） */
    unsigned long long dropped;  /* 队列满被丢弃的新快照 */
    unsigned long long pushed;
    unsigned long long popped;
    unsigned long long max_depth;
} wq;

void wq_init(wq *q);

/* 生产者：永不阻塞。返回 1 = 入队，0 = 队列满已丢弃。 */
int wq_push(wq *q, const wq_item *it);

/* 消费者：取一条。返回 1 = 取到，0 = 当前没有可取的（或有 slot 未写完）。 */
int wq_pop(wq *q, wq_item *out);

/* 有界等待：等 tail 对应的 slot 变 ready（最多自旋 spins 次，每次让出 CPU）。
 * 返回 1 = 就绪，0 = 超时。仅消费者线程调用。 */
int wq_wait_ready(wq *q, int spins);

/* 当前深度 / 峰值 / 丢包 */
unsigned long long wq_depth(const wq *q);
unsigned long long wq_max_depth(const wq *q);
unsigned long long wq_dropped(const wq *q);

#endif /* WAKE_QUEUE_H */
