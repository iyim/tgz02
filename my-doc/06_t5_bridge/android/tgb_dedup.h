/*
 * tgb_dedup.h -- event_id 幂等去重表（有界内存 + FIFO 淘汰 + 可从 JSONL 重建）
 *
 * 为什么不是"只记内存字典"：
 *   要求是「去重状态必须能从持久化数据恢复」。所以桥接进程启动时会把 events.jsonl
 *   里最后 N 条 event_id 重新灌进这张表 —— 表的内容完全由落盘数据推导，
 *   没有任何只存在于内存里的"已见事件"。
 *
 * 为什么有界：
 *   设备内存有限，不能随着运行天数无限增长。表容量固定（默认 8192 条），
 *   满了就淘汰最老的 event_id（FIFO），并把淘汰次数计入统计。
 *   代价写在 README「已知限制」里：一条比"最近 N 条"更老的重复事件会被当成新事件。
 *   这在正常链路里不会发生：客户端只有在收到 ACK 之后才丢弃事件，
 *   不会拿一条几分钟前的旧事件重发。
 */
#ifndef TGB_DEDUP_H
#define TGB_DEDUP_H

#include <stdint.h>
#include <stddef.h>

#include "tgb_event.h"

typedef struct tgb_dedup tgb_dedup;

/* cap 会被向上取整到 2 的幂（最小 64）；失败返回 NULL */
tgb_dedup *tgb_dedup_new(int cap);
void       tgb_dedup_free(tgb_dedup *d);

/* 1 = 已存在，0 = 不存在 */
int tgb_dedup_contains(const tgb_dedup *d, const char *event_id);

/* 1 = 新增成功，0 = 已存在（幂等命中），-1 = 参数错误 */
int tgb_dedup_add(tgb_dedup *d, const char *event_id);

unsigned long tgb_dedup_size(const tgb_dedup *d);
unsigned long tgb_dedup_evicted(const tgb_dedup *d);
int           tgb_dedup_capacity(const tgb_dedup *d);

#endif /* TGB_DEDUP_H */
