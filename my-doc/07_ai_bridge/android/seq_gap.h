/*
 * seq_gap.h -- seq 连续性判定（独立模块，便于主机单元测试）
 *
 * 为什么单独拎出来：这是整个 Worker 里最容易"看起来对、实际判错"的一段逻辑，
 * 必须能被主机测试逐条打表验证，而不是埋在 main 循环里靠真机日志碰运气。
 *
 * seq 的真实语义（真机数据已验证，见报告 §4）：
 *   桥接端的 seq = 本进程生命周期内的落盘计数，重启后从 1 重新开始。
 *   因此同一个 pid 下必然出现多段 1..N；而 events.jsonl 又是追加写、跨重启保留，
 *   所以文件里 seq 会反复回退。据此三条规则：
 *     1) 同一个 pid 段内 seq == last + 1：连续。
 *     2) seq <= last：判定为"桥接端重启"，计 reset，不算丢事件。
 *     3) seq > last + 1：真实缺口，范围 [last+1, seq-1]，计 gaps 与 missing 总数。
 *   新 pid 段若从 seq > 1 开始，无法判定是"丢过"还是"文件被裁剪过"，
 *   只计 unknown_start 并留日志，不臆造缺口。
 *
 * 去重（event_id）发生在调用本模块之前：重复读取永远不会走到这里。
 */
#ifndef T6B_SEQ_GAP_H
#define T6B_SEQ_GAP_H

#define T6B_GAP_PID_MAX 8

typedef enum {
    T6B_GAP_CONTINUE = 0,        /* last+1：正常连续 */
    T6B_GAP_RESET,               /* seq 回退：桥接端重启 */
    T6B_GAP_LOSS,                /* 真实缺口：[from,to] */
    T6B_GAP_SEGMENT_START,       /* 新 pid 段，从 seq=1 开始 */
    T6B_GAP_SEGMENT_START_HIGH   /* 新 pid 段，从 seq>1 开始（无法判定） */
} t6b_gap_event;

typedef struct {
    long long          pid;
    unsigned long      last;
    unsigned long long seen_at;
    int                used;
} t6b_gap_pid;

typedef struct {
    t6b_gap_pid        pids[T6B_GAP_PID_MAX];
    unsigned long long tick;
    unsigned long long gaps;
    unsigned long long missing_total;
    unsigned long long resets;
    unsigned long long unknown_start;
    unsigned long long pids_seen;
    unsigned long      last_gap_from;
    unsigned long      last_gap_to;
} t6b_gaptrack;

void t6b_gap_init(t6b_gaptrack *g);

/* 观察一条事件的 (pid, seq)。
 * from/to/missing 可为 NULL；T6B_GAP_LOSS 时填 [last+1, seq-1] 与缺失条数。 */
t6b_gap_event t6b_gap_observe(t6b_gaptrack *g, long long pid, unsigned long seq,
                              unsigned long *from, unsigned long *to,
                              unsigned long *missing);

#endif /* T6B_SEQ_GAP_H */
