/*
 * tgb_event.h -- ASR final 事件的消息体：严格解析 / 校验 / 落库记录序列化
 *
 * 只接受「扁平 JSON 对象」，值只允许 string / integer / true / false / null。
 * 嵌套对象与数组一律拒收：本协议里没有任何字段需要它们，
 * 允许嵌套只会让边界校验和内存估算变复杂，收益为零。
 *
 * 未知字段：允许（前向兼容），但其值仍然必须是上面五种标量之一。
 * 同名字段重复出现：拒收（dup_field）。event_id 出现两次而取值不同时，
 * 去重会失去意义，这种情况必须当错误处理，不能"取最后一个"。
 */
#ifndef TGB_EVENT_H
#define TGB_EVENT_H

#include <stddef.h>
#include <stdint.h>

#include "tgb_proto.h"

#define TGB_MAX_ID_BUF     (TGB_MAX_ID_LEN + 1)     /* 65 */
#define TGB_TEXT_BUF       (TGB_MAX_TEXT_BYTES + 1) /* 512 */
#define TGB_REC_LINE_MAX   4096                     /* 一行 JSONL 的上限 */

typedef struct {
    int       version;
    char      event_id[TGB_MAX_ID_BUF];
    char      event_type[16];
    long long pid;
    char      session_id[TGB_MAX_ID_BUF];
    char      text[TGB_TEXT_BUF];
    int       text_bytes;       /* UTF-8 字节数 */
    int       text_chars;       /* Unicode 码点数 */
    int       is_final;
    long long received_at_ms;
} tgb_event;

/* body 级错误码（0 = 通过） */
typedef enum {
    TGB_E_OK = 0,
    TGB_E_BAD_JSON,        /* 结构错误：缺括号/缺冒号/非法转义/非法 JSON 字符 */
    TGB_E_DUP_FIELD,       /* 同名字段重复 */
    TGB_E_TRAILING,        /* 顶层对象结束后还有多余字节 */
    TGB_E_BAD_TYPE,        /* 字段的 JSON 类型不对（如 pid 写成字符串） */
    TGB_E_MISSING,         /* 缺少必需字段 */
    TGB_E_TOO_LONG,        /* 某个字段超过其长度上限（见 *field 指出是哪个） */
    TGB_E_BAD_VERSION,
    TGB_E_BAD_EVENT_TYPE,
    TGB_E_BAD_IS_FINAL,
    TGB_E_EMPTY_EVENT_ID,
    TGB_E_BAD_EVENT_ID,
    TGB_E_EMPTY_SESSION_ID,
    TGB_E_BAD_SESSION_ID,
    TGB_E_EMPTY_TEXT,
    TGB_E_BAD_UTF8,
    TGB_E_TEXT_CONTROL,    /* 文本里出现控制字符（含 NUL） */
    TGB_E_TEXT_TOO_LONG,
    TGB_E_BAD_PID,
    TGB_E_BAD_TIME,
    TGB_E_COUNT            /* 仅用于统计数组长度 */
} tgb_eval;

/*
 * 解析并校验一条 body。
 *   返回 TGB_E_OK 表示 out 可用；
 *   否则 *code 给出原因，*field（可为 NULL）给出出问题的字段名（静态字符串）。
 * 不分配内存、不打印、不抛异常。
 */
tgb_eval tgb_event_parse(const char *body, size_t len, tgb_event *out,
                         const char **field);

const char *tgb_eval_name(tgb_eval c);

/* event_id 的字符集检查：非空且只含 [A-Za-z0-9._:-]，长度 <= 64。
 * 解析失败时用它决定 ACK 里能不能回带 event_id：能确认就回带（发送端要对账是哪条被拒），
 * 确认不了就回 null，绝不猜一个 id 回去。 */
int tgb_event_id_ok(const char *event_id);

/* 严格 UTF-8 校验：拒收超长编码(overlong)、代理区 U+D800..DFFF、> U+10FFFF、截断序列。
 * 返回 0 = 合法，-1 = 非法。 */
int tgb_utf8_validate(const char *s, size_t len);
/* 码点计数（调用前必须已通过 tgb_utf8_validate） */
int tgb_utf8_count_chars(const char *s, size_t len);

/* 序列化成一行 JSONL（含结尾 '\n'），返回长度；<0 = 缓冲不足。
 * recv_at_ms / stored_at_ms / seq 由接收端填写，属于"服务端事实"，不来自客户端。 */
int tgb_event_to_record(const tgb_event *e, long long recv_at_ms,
                        long long stored_at_ms, unsigned long seq,
                        char *buf, size_t cap);

#endif /* TGB_EVENT_H */
