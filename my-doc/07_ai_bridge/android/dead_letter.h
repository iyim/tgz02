/*
 * dead_letter.h -- T7-08：死信（dead letter）记录的严格 JSON 序列化与持久化追加
 *
 * 背景（两轮修）：
 *   T7-06-R1 的实现把整行里所有双引号替换成单引号（连 JSON 结构引号一起压掉），
 *   写出来不是合法 JSON；T7-06-R2 引入本模块修好了转义，但留下三个尾巴：
 *     a) ts 用了单调时钟（CLOCK_MONOTONIC），跨重启不可比；
 *     b) 尾部修复只看最后 4 KB，超长半行修不掉，只能补一个换行——那等于把
 *        一条非法半行"扶正"成一条正式记录；
 *     c) 追加写没有明确的并发/原子性约定，close 失败还会把已落盘记录当失败。
 *   T7-08 把这三件事都按可验证的方式定死（见下）。
 *
 * 契约（当前版本）：
 *   1. t6b_dl_format()
 *      - 输出严格合法 JSON（RFC 8259）+ 行尾 '\n'；一个记录一行；
 *      - 字符串逐字节转义：'"' '\\' '\b' '\f' '\n' '\r' '\t' 用短转义，
 *        其余 <0x20 与 0x7f 用 \u00XX；合法 UTF-8 多字节原样保留；
 *        非法 UTF-8 字节替换为 '?' 并把 "invalid_utf8" 置 1；
 *      - 缓冲区不够 → 返回 0（绝不输出半条）；成功时 dst 以 '\0' 结尾。
 *   2. t6b_dl_append()
 *      - **互斥**：对死信文件本身加排他锁（POSIX flock / Windows LockFileEx），
 *        覆盖"尾部修复 → 追加 → fsync → 解锁"整个过程；配合 Worker 单实例锁
 *        （flock on ai_worker.lock）构成"单写者 + 文件级互斥"双保险；
 *      - **尾部修复无上限**：从文件尾向前分块（4 KB）扫描，直到找到最近的 '\n'；
 *        把其后的所有字节截掉。找不到任何 '\n' → 整个文件视为损坏，清空；
 *        **绝不通过"补一个换行"把半行扶正**；
 *      - **追加**：先一次 write 写整行；返回短写就继续写剩余部分（合法情况），
 *        任何 write 失败都 ftruncate 回到写前长度并返回 -1；
 *      - **持久化判定**：write + fsync 都成功 → 记录已落盘，返回 0。
 *        此后 close 失败只作为告警上报（out->close_failed / close_errno），
 *        **不返回 -1**，避免把已持久化记录当成"没写成功"而重试、重复追加；
 *      - **回滚保证**：返回 -1 时文件已被截回写前长度（尽力 fsync），
 *        调用方据此**不推进 offset**。
 *
 * 故障注入：`#ifdef T6B_DL_TESTING` 时导出 `t6b_dl_test_fault` / `t6b_dl_test_fault_after`，
 * 让主机测试强制 write 失败/短写、fsync 失败、close 失败。生产构建不定义该宏，
 * 相关代码完全不参与编译（no-op）。
 */
#ifndef T6B_DEAD_LETTER_H
#define T6B_DEAD_LETTER_H

#include <stddef.h>

#define T6B_DL_LINE_MAX 2048         /* 单行死信上限（含 '\n'，不含 NUL） */
#define T6B_DL_SCAN_CHUNK 4096       /* 尾部反向扫描的分块大小（只是 IO 粒度，不是上限） */

/* 一条死信记录的输入（字符串按"字节 + 长度"给，允许不带 '\0'）。 */
typedef struct {
    long long     ts_ms;             /* 写死信的时刻：**Unix Epoch 毫秒**（wu_wall_ms()） */
    const char   *event_id;
    size_t        event_id_len;
    const char   *error_class;
    size_t        error_class_len;
    unsigned long seq;
    int           attempts;
    int           error_bytes;       /* 错误描述字节数（只记长度，不落错误正文） */
} t6b_dl_rec;

/* t6b_dl_append 的附加结果（都只影响日志，不影响返回码）。 */
typedef struct {
    long long repaired_bytes;        /* 这次修复截掉的尾部字节数（0 = 文件本来是干净的） */
    int       close_failed;          /* 1 = 记录已持久化，但 close() 报了错 */
    int       close_errno;           /* 上面的 errno */
} t6b_dl_out;

/*
 * 把一条记录格式化成一行合法 JSON（末尾带 '\n'）。
 * 返回写入 dst 的字节数（>=1 且含 '\n'，不含结尾 NUL）；返回 0 表示放不下或参数非法。
 */
size_t t6b_dl_format(char *dst, size_t cap, const t6b_dl_rec *r);

/*
 * 追加一行到 path。
 *
 * 返回：
 *    0  记录已持久化（write + fsync 成功）。out->close_failed 可能为 1（仅告警）。
 *   -1  没写成功：未落盘，文件已回滚到写前长度。调用方**不得推进 offset**。
 *
 * out 可以为 NULL。
 */
int t6b_dl_append(const char *path, const char *line, size_t len, t6b_dl_out *out);

#ifdef T6B_DL_TESTING
/* 故障注入（只用于主机测试；生产构建不编译这一段）。 */
#define T6B_DL_FAULT_NONE        0
#define T6B_DL_FAULT_WRITE_FAIL  1   /* write 直接失败 */
#define T6B_DL_FAULT_WRITE_SHORT 2   /* 第一次 write 只写一半（短写），之后正常 */
#define T6B_DL_FAULT_FSYNC_FAIL  3   /* fsync 失败 */
#define T6B_DL_FAULT_CLOSE_FAIL  4   /* fsync 成功后 close 失败 */
#define T6B_DL_FAULT_LOCK_FAIL   5   /* 加锁失败 */
extern int t6b_dl_test_fault;        /* 下一次 append 生效一次，之后自动复位 */
void t6b_dl_test_fault_set(int fault);
int  t6b_dl_test_fault_peek(void);
#endif

#endif /* T6B_DEAD_LETTER_H */
