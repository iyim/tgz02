/*
 * consumer_state.h -- Worker 的消费进度（唯一可信来源：这个文件 + events.jsonl 本身）
 *
 * 语义（任务书 §3.2）：
 *   - 处理完成后才推进偏移：状态文件里的 offset 永远指向"下一条待处理记录的起点"。
 *   - 崩溃后允许重新读最后一条未确认事件：靠 event_id 去重消化，不靠 seq。
 *   - seq 只作为诊断与缺口检测的辅助字段，绝不当作全局唯一 ID
 *     （真机数据已证明：桥接端重启后 seq 从 1 重新开始，同一个 pid 下会出现多段 1..N）。
 *   - 写入方式：临时文件 + fsync + rename + 同步父目录；任何一步失败都不动原文件。
 *
 * recent_ids 保存最近 N 个 event_id（环形，最新在最后），用于：
 *   1) 进程崩溃后重读最后一条；2) events.jsonl 被截断/重建后重新扫描时的重复抑制。
 *   它是有界集合，不是全量历史——超出窗口的极老事件会被再次处理，
 *   这一点在报告中明确写出，不做"假装全量去重"。
 */
#ifndef T6B_CONSUMER_STATE_H
#define T6B_CONSUMER_STATE_H

#include <stddef.h>

#include "event_reader.h"

#define T6B_STATE_FILE    "consumer_state.json"
#define T6B_STATE_RECENT  128

typedef struct {
    int                version;                              /* 2（1 为旧格式，只读兼容） */
    unsigned long long dev;                                  /* events.jsonl 所在设备 */
    unsigned long long ino;                                  /* events.jsonl inode */
    long long          offset;                               /* 下一条待读记录起点 */
    /* events.jsonl 的 [0, offset) 前缀指纹（FNV-1a 64）。
     * version=2 起才有：磁盘上的 inode 号可能被复用，偏移必须和内容指纹配对才可信。 */
    unsigned long long prefix_hash;
    int                have_prefix_hash;                      /* 0 = 旧状态没有指纹，必须回退重扫 */
    unsigned long      seq_last;                             /* 最近处理事件的 seq（诊断） */
    char               last_event_id[T6B_ID_MAX + 1];         /* 最近处理事件的 event_id */
    unsigned long long processed_total;                       /* 累计处理（不含重复/非法） */
    long long          updated_at_ms;                         /* 墙钟毫秒 */
    int                recent_cap;                            /* = T6B_STATE_RECENT */
    int                recent_n;                              /* 有效条目数 */
    char               recent[T6B_STATE_RECENT][T6B_ID_MAX + 1];
} t6b_state;

void t6b_state_init(t6b_state *s);

/*
 * 读取：
 *   0 = 读到合法状态
 *   1 = 文件不存在（首次运行）
 *  -1 = I/O 错误
 *  -2 = 内容损坏/版本不符（调用方应把文件留档后从 0 开始）
 *
 * 版本兼容：磁盘上 version=1（没有 prefix_hash）时仍能读入，但 have_prefix_hash=0，
 * 调用方必须据此把 offset 归零重扫，**不许把"没有指纹"当成"身份验证通过"**。
 * version=2 缺少 prefix_hash 字段按损坏处理（-2），因为那说明文件被手工改过。
 */
int t6b_state_load(t6b_state *s, const char *path, char *err, size_t errlen);

/* 原子落盘：<path>.tmp -> fsync -> rename -> fsync(dir)。0 = 成功 */
int t6b_state_save(const t6b_state *s, const char *path, char *err, size_t errlen);

/* 最近窗口里是否已有该 event_id */
int t6b_state_has_recent(const t6b_state *s, const char *id);

/* 记住一个 event_id（已存在则移到最新位置） */
void t6b_state_remember(t6b_state *s, const char *id);

#endif /* T6B_CONSUMER_STATE_H */
