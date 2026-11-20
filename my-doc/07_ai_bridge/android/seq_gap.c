/*
 * seq_gap.c -- 见 seq_gap.h
 *
 * 表满时淘汰"最久未见"的 pid 段：这只影响诊断精度（把一次重启误记成新段起点），
 * 不影响去重，也不影响落盘。真机上同时说话的 pid 段不会超过 8 个（只有 smartapp:core）。
 */
#include "seq_gap.h"

#include <string.h>

void t6b_gap_init(t6b_gaptrack *g)
{
    if (g == NULL) return;
    memset(g, 0, sizeof(*g));
}

t6b_gap_event t6b_gap_observe(t6b_gaptrack *g, long long pid, unsigned long seq,
                              unsigned long *from, unsigned long *to,
                              unsigned long *missing)
{
    int i;
    int slot = -1;
    t6b_gap_pid *e;

    if (g == NULL) return T6B_GAP_CONTINUE;
    if (from) *from = 0;
    if (to) *to = 0;
    if (missing) *missing = 0;

    for (i = 0; i < T6B_GAP_PID_MAX; i++) {
        if (g->pids[i].used && g->pids[i].pid == pid) { slot = i; break; }
    }

    if (slot < 0) {
        for (i = 0; i < T6B_GAP_PID_MAX; i++) {
            if (!g->pids[i].used) { slot = i; break; }
        }
        if (slot < 0) {
            int oldest = 0;
            for (i = 1; i < T6B_GAP_PID_MAX; i++) {
                if (g->pids[i].seen_at < g->pids[oldest].seen_at) oldest = i;
            }
            slot = oldest;
        }
        e = &g->pids[slot];
        e->used = 1;
        e->pid = pid;
        e->last = seq;
        e->seen_at = ++g->tick;
        g->pids_seen++;
        if (seq > 1) {
            g->unknown_start++;
            return T6B_GAP_SEGMENT_START_HIGH;
        }
        return T6B_GAP_SEGMENT_START;
    }

    e = &g->pids[slot];
    e->seen_at = ++g->tick;

    if (seq == e->last + 1) {
        e->last = seq;
        return T6B_GAP_CONTINUE;
    }
    if (seq <= e->last) {
        g->resets++;
        e->last = seq;
        return T6B_GAP_RESET;
    }

    {
        unsigned long f = e->last + 1;
        unsigned long t = seq - 1;
        unsigned long n = seq - e->last - 1;

        g->gaps++;
        g->missing_total += (unsigned long long)n;
        g->last_gap_from = f;
        g->last_gap_to = t;
        if (from) *from = f;
        if (to) *to = t;
        if (missing) *missing = n;
        e->last = seq;
    }
    return T6B_GAP_LOSS;
}
