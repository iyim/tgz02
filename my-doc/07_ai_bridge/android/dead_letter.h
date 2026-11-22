/*
 * dead_letter.h -- T7-09：死信记录的严格 JSON 序列化与持久化追加
 *
 * 三轮演进（每轮都是现场问题的闭环）：
 *   T7-06-R1 把整行引号换成单引号 -> 不是合法 JSON；
 *   T7-06-R2 抽出本模块，严格转义 + 一行一条 + 半行修复 + 失败回滚；
 *   T7-08 墙钟时间戳、尾部修复去掉 4 KB 上限、文件级互斥、close 语义；
 *   T7-09 回滚失败不再伪装成"普通可重试失败"：
 *           write/fsync 失败后必须先确认"文件已截回写前长度"，
 *           确认成功才返回可重试的 -1；
 *           截断或回滚后的 fsync 失败 = 文件状态不确定 -> 返回 T6B_DL_E_ROLLBACK(-2)，
 *           并带上写入阶段、errno、写前长度、当前长度，由调用方进入持久化故障状态，
 *           **绝不重试追加**（否则可能产生重复死信）。
 *
 * 返回值语义（调用方必须按这三档分别处理）：
 *   T6B_DL_OK (0)          记录已持久化（write + fsync 成功）。
 *                          out->close_failed 可能为 1：数据已落盘，只是 close 报了错，
 *                          **不要重试**（重试会重复追加），只记告警。
 *   T6B_DL_E_IO (-1)       没写成功，且**已确认回滚**（文件长度回到写前长度）。
 *                          调用方可以按原策略重试同一条事件。
 *   T6B_DL_E_ROLLBACK (-2) 写失败，**回滚也没确认成功**：文件尾部状态不确定。
 *                          调用方必须停止对该事件的一切自动追加，进入持久化故障状态；
 *                          不得推进 offset、不得静默跳过、不得自动删文件。
 */
#ifndef T6B_DEAD_LETTER_H
#define T6B_DEAD_LETTER_H

#include <stddef.h>

#define T6B_DL_LINE_MAX 2048         /* 单行死信上限（含 '\n'，不含 NUL） */
#define T6B_DL_SCAN_CHUNK 4096       /* 尾部反向扫描的分块大小（只是 IO 粒度，不是上限） */

/* 返回码 */
#define T6B_DL_OK            0
#define T6B_DL_E_IO        (-1)
#define T6B_DL_E_ROLLBACK  (-2)

/* 失败发生在哪一步（out->io_stage / out->rollback_stage） */
#define T6B_DL_STAGE_NONE     0
#define T6B_DL_STAGE_WRITE    1   /* 追加写 */
#define T6B_DL_STAGE_FSYNC    2   /* 追加后的 fsync */
#define T6B_DL_STAGE_REPAIR   3   /* 写之前的尾部修复（截断或修复后的 fsync） */
#define T6B_DL_STAGE_TRUNC    4   /* 回滚截断 */
#define T6B_DL_STAGE_ROLLBACK_SYNC 5  /* 回滚后的 fsync */
#define T6B_DL_STAGE_LOCK     6   /* 加锁 */
#define T6B_DL_STAGE_OPEN     7   /* 打开 */

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

/* t6b_dl_append 的附加结果（只用于诊断，不改变返回码含义）。 */
typedef struct {
    long long repaired_bytes;        /* 这次修复截掉的尾部字节数（0 = 文件本来是干净的） */
    int       close_failed;          /* 1 = 记录已持久化，但 close() 报了错 */
    int       close_errno;

    /* 失败诊断（T7-09 新增；成功时全为 0） */
    int       io_stage;              /* 哪一步失败的：T6B_DL_STAGE_* */
    int       io_errno;              /* 那一步的 errno */
    int       rollback_stage;        /* 回滚失败在哪一步：T6B_DL_STAGE_TRUNC / _ROLLBACK_SYNC */
    int       rollback_errno;
    long long pre_len;               /* 写前文件长度 */
    long long cur_len;               /* 出错时的文件长度（取不到时 cur_len_valid=0） */
    int       cur_len_valid;
} t6b_dl_out;

/*
 * 把一条记录格式化成一行合法 JSON（末尾带 '\n'）。
 * 返回写入 dst 的字节数（>=1 且含 '\n'，不含结尾 NUL）；返回 0 表示放不下或参数非法。
 */
size_t t6b_dl_format(char *dst, size_t cap, const t6b_dl_rec *r);

/*
 * 追加一行到 path。返回值见文件头三档语义。
 *
 * out 可以为 NULL（但强烈建议传：故障时它是唯一的现场证据）。
 */
int t6b_dl_append(const char *path, const char *line, size_t len, t6b_dl_out *out);

#ifdef T6B_DL_TESTING
/* 故障注入（只用于主机测试；生产构建不编译这一段）。 */
#define T6B_DL_FAULT_NONE               0
#define T6B_DL_FAULT_WRITE_FAIL         1   /* write 直接失败 */
#define T6B_DL_FAULT_WRITE_SHORT        2   /* 第一次 write 只写一半（短写），之后正常 */
#define T6B_DL_FAULT_WRITE_SHORT_FAIL   3   /* 第一次 write 写一半，第二次 write 失败 */
#define T6B_DL_FAULT_FSYNC_FAIL         4   /* 追加后的 fsync 失败 */
#define T6B_DL_FAULT_CLOSE_FAIL         5   /* fsync 成功后 close 失败 */
#define T6B_DL_FAULT_LOCK_FAIL          6   /* 加锁失败 */
#define T6B_DL_FAULT_TRUNC_FAIL         7   /* 回滚截断失败 */
#define T6B_DL_FAULT_ROLLBACK_SYNC_FAIL 8   /* 回滚截断成功，但回滚后的 fsync 失败 */

extern int t6b_dl_test_fault;        /* 主故障：下一次 append 生效一次，之后自动复位 */
extern int t6b_dl_test_fault2;       /* 次级故障：用于"回滚阶段再失败"的组合 */
void t6b_dl_test_fault_set(int fault);
void t6b_dl_test_fault2_set(int fault);
int  t6b_dl_test_fault_peek(void);
#endif

#endif /* T6B_DEAD_LETTER_H */
