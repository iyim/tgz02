/*
 * tgb_store.h -- 事件 JSONL 的可靠追加、尾部修复与回放（复用 T5 的落盘机制）
 *
 * 复用点（不重新发明）：
 *   - 写满 + fsync：t5_util.c 的 t5_write_all() / t5_sync()
 *   - "尾部没有换行符的半条记录一律丢弃"：与 t5_store_replay() 完全相同的语义
 *   - 一行一条记录、只在完整落盘后才算成功
 *
 * 相对 T5 的 job store 多出来的东西（因为桥接端要对外回 ACK，代价高得多）：
 *   1) 失败回滚：写入失败时把文件 ftruncate 回写前长度，
 *      避免"半行 + 下一行"粘成一条无法解析的记录；
 *   2) fail-stop：回滚或 fsync 失败后，本进程不再接受任何新事件（不再 ACK 成功），
 *      因为文件是否可信已经不可知；
 *   3) 启动修复：把文件截断到最后一个 '\n' 之后（tgb_store_repair），
 *      这样重启后的第一条 append 不会粘在崩溃留下的半行后面。
 *
 * 文件名固定为 events.jsonl，只写 --work-dir，绝不碰 T4 WAV 目录与原厂数据。
 */
#ifndef TGB_STORE_H
#define TGB_STORE_H

#include <stddef.h>

#include "tgb_event.h"

#define TGB_PATH_MAX      512
#define TGB_EVENTS_FILE   "events.jsonl"

typedef struct {
    int           fd;
    char          path[TGB_PATH_MAX];
    long long     offset;        /* 已确认落盘的字节数 */
    int           failed;        /* 1 = fail-stop：不再接受事件 */
    long long     fault_after;   /* >=0：成功 N 次后强制失败（仅主机测试注入），-1 = 关闭 */
    unsigned long appends;
    unsigned long faults;
} tgb_store;

/* 追加打开（不存在则创建）。fault_after < 0 表示不做故障注入。0 = 成功 */
int  tgb_store_open(tgb_store *s, const char *dir, const char *file,
                    long long fault_after, char *err, size_t errlen);
void tgb_store_close(tgb_store *s);

/* 追加一条已带 '\n' 的完整记录，并在返回 0 之前 fsync。
 *   0  = 已可靠落盘（调用方才可以回 success ACK）
 *  -1  = 本次失败（可重试或已 fail-stop，看 s->failed）
 *  -2  = 已 fail-stop，未尝试写入 */
int  tgb_store_append(tgb_store *s, const char *line, size_t len,
                      char *err, size_t errlen);

/* 启动时修复尾部半条记录：截断到最后一个 '\n' 之后。
 * 0 = 成功（*truncated = 被丢弃的字节数，0 表示不需要修复） */
int  tgb_store_repair(const char *dir, const char *file, long long *truncated,
                      char *err, size_t errlen);

/* 回调返回 0 = 该行可用；非 0 = 视为坏行（计入 *bad，不参与恢复） */
typedef int (*tgb_store_cb)(void *ud, const char *line, size_t len);

/* 回放：按文件顺序回调每条"以 '\n' 结尾"的记录。
 *   *lines = 被回调接受的有效记录数，*bad = 半条 + 坏行 + 回调拒绝的行数
 * 文件不存在视为 0 条（首次运行）。 */
int  tgb_store_replay(const char *dir, const char *file,
                      tgb_store_cb cb, void *ud,
                      unsigned long *lines, unsigned long *bad,
                      char *err, size_t errlen);

#endif /* TGB_STORE_H */
