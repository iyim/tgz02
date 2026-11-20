/*
 * event_reader.h -- events.jsonl 的只读增量消费者（解析 + 校验 + 偏移管理）
 *
 * 语义（与 T5-06B 任务书 §3.1/3.2/3.3 一一对应）：
 *   1) 只按字节偏移读取，永远 O_RDONLY；本模块没有任何写/截断/删除 events.jsonl 的路径。
 *   2) 只接受"以 '\n' 结尾"的完整行；半行保留偏移，下次接着读（不处理、不丢弃）。
 *   3) 单行长度上限 max_record（默认 8192，桥接端单行硬上限 4096）；超过就整行跳过并计数，
 *      不会把超长记录读进内存，也不会让进程退出。
 *   4) 桥接端重启会做尾部修复（把没有换行符的最后半行截掉）：
 *      文件变小 → 检测到截断 → 偏移归零重新扫描（靠 event_id 去重避免重复处理）。
 *   5) 文件被删除后重建 → 用 (dev, ino) 识别 inode 换人（Linux/Windows 都实现），
 *      同样偏移归零重新扫描，绝不"接着旧偏移读新文件"。
 *   6) 文件暂时不可读 → 返回 0（等待），由调用方按退避节奏重试；不退出。
 *
 * 解析只接受扁平 JSON 对象（本协议没有嵌套字段），未知字段允许但值必须是标量；
 * 同名字段重复出现一律拒收（event_id 取"最后一个"会让去重失去意义）。
 */
#ifndef T6B_EVENT_READER_H
#define T6B_EVENT_READER_H

#include <stddef.h>

#define T6B_ID_MAX        64      /* event_id / session_id 上限（与桥接端一致） */
#define T6B_TEXT_MAX      511     /* ASR 文本 UTF-8 字节上限（与桥接端一致） */
#define T6B_REC_LINE_MAX  4096    /* 桥接端单行硬上限，仅作参考 */
#define T6B_REC_DEFAULT   8192    /* 本 Worker 默认单行上限 */
#define T6B_READ_CHUNK    65536   /* 固定读块大小（不随文件增长而增长） */
#define T6B_PATH_MAX      512

/* 一条已校验通过的 asr_final 事件 */
typedef struct {
    int           version;
    char          rec[24];
    char          event_id[T6B_ID_MAX + 1];
    char          event_type[24];
    long long     pid;
    char          session_id[T6B_ID_MAX + 1];
    char          text[T6B_TEXT_MAX + 1];
    int           text_bytes;
    int           text_chars;
    int           is_final;
    long long     received_at_ms;
    long long     recv_at_ms;
    long long     stored_at_ms;
    unsigned long seq;
    long long     line_bytes;      /* 该行字节数（含 '\n'） */
} t6b_event;

typedef enum {
    T6B_EV_OK = 0,
    T6B_EV_BAD_JSON,          /* 结构错误：括号/冒号/转义/嵌套/非法字符 */
    T6B_EV_DUP_FIELD,         /* 同名字段重复 */
    T6B_EV_TRAILING,          /* 顶层对象之后还有多余字节 */
    T6B_EV_BAD_TYPE,          /* 字段 JSON 类型不对（如 pid 是字符串） */
    T6B_EV_MISSING,           /* 缺少必需字段 */
    T6B_EV_TOO_LONG,          /* 字段超过长度上限（*field 指出哪个） */
    T6B_EV_BAD_VERSION,
    T6B_EV_BAD_REC,
    T6B_EV_BAD_EVENT_TYPE,
    T6B_EV_BAD_IS_FINAL,      /* 只接受 asr_final 且 is_final=true */
    T6B_EV_EMPTY_EVENT_ID,
    T6B_EV_BAD_EVENT_ID,
    T6B_EV_EMPTY_SESSION_ID,
    T6B_EV_BAD_SESSION_ID,
    T6B_EV_EMPTY_TEXT,
    T6B_EV_BAD_UTF8,
    T6B_EV_TEXT_CONTROL,
    T6B_EV_BAD_PID,
    T6B_EV_BAD_TIME,
    T6B_EV_BAD_SEQ,
    T6B_EV_COUNT
} t6b_eval;

/* 解析 + 校验一条记录（不含或含行尾 '\n' 均可）。不分配内存、不打印。 */
t6b_eval t6b_parse_record(const char *line, size_t len, t6b_event *out,
                          const char **field);

/* 错误码名字（静态字符串） */
const char *t6b_eval_name(t6b_eval c);

/* 打开/重建原因（只用于日志与状态） */
typedef enum {
    T6B_OPEN_NONE = 0,
    T6B_OPEN_FIRST,
    T6B_OPEN_ABSENT,
    T6B_OPEN_TRUNCATED,
    T6B_OPEN_REPLACED,
    T6B_OPEN_IO_ERROR
} t6b_open_reason;

const char *t6b_open_reason_name(t6b_open_reason r);

typedef struct {
    char          path[T6B_PATH_MAX];
    int           fd;
    int           have_fd;
    unsigned long long dev;
    unsigned long long ino;
    long long     off;             /* 已提交偏移：下一条待读记录的起点 */
    long long     pending;         /* 本次拿到记录之后应提交到的偏移 */
    long long     max_record;
    /* 固定大小的读缓存（一次分配，不随文件增长） */
    char         *buf;
    size_t        buf_cap;
    long long     buf_off;
    size_t        buf_len;
    /* 统计（供 worker_status 读取） */
    unsigned long long opens;
    unsigned long long truncations;
    unsigned long long replacements;
    unsigned long long oversize_skips;
    unsigned long long invalid_skips;
    unsigned long long io_errors;
    t6b_open_reason    last_reason;
    char          last_error[160];
} t6b_reader;

/* start_off = 上次保存的消费偏移（首次运行为 0）。
 * start_dev/start_ino = 上次保存的文件身份；0/0 表示未知（首次运行或平台不支持）。
 *   文件已存在但比 start_off 短      → 按"被截断"处理：偏移归零并计数
 *   文件身份与保存值不同（重建/换人） → 同样偏移归零并计数 */
int  t6b_reader_init(t6b_reader *r, const char *path, long long start_off,
                     unsigned long long start_dev, unsigned long long start_ino,
                     int max_record, char *err, size_t errlen);
void t6b_reader_free(t6b_reader *r);

/*
 * 读一条：
 *   1  = 拿到一条合法事件（提交点见 r->pending，处理后调用 t6b_reader_commit）
 *   0  = 暂时没有完整记录（半行 / 无新数据 / 文件暂不存在），稍后再来
 *  -1  = I/O 错误（r->io_errors++，错误信息在 err），稍后重试
 *  -2  = 跳过一条非法记录（r->invalid_skips++；*reason 与 *field 指出原因）
 *  -3  = 跳过一条超长记录（r->oversize_skips++）
 * 调用方拿到 -2/-3 后同样要 commit，否则会反复读同一条坏行。
 */
int  t6b_reader_next(t6b_reader *r, t6b_event *ev, const char **reason,
                     const char **field, char *err, size_t errlen);

/* 把 pending 变成 off（只有"已处理完"才允许调用） */
void t6b_reader_commit(t6b_reader *r);

/* pending == off 时表示没有待提交记录 */
long long t6b_reader_pending(const t6b_reader *r);

/* 探测当前文件大小/身份（状态展示用）；0 = 成功 */
int  t6b_reader_stat(const t6b_reader *r, long long *size);

#endif /* T6B_EVENT_READER_H */
