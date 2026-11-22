/*
 * dead_letter.h -- T7-06-R2：死信（dead letter）记录的严格 JSON 序列化与追加写
 *
 * 背景（现场缺陷）：T7-06-R1 的 dead_letter_event() 先把整行 JSON 拼好，再把行里
 * 所有双引号替换成单引号（注释写的是"不做完整转义，只把引号压掉"）。结果文件里是
 *
 *     {'ts':1234,'event_id':'t5b-1-g1',...}
 *
 * —— 结构引号也被压掉了，一行都不是合法 JSON，标准解析器（json.loads / jq）直接报错。
 * 现在把"格式化"和"落盘"两个动作独立出来，各自可以被单元测试直接验证：
 *
 *   - t6b_dl_format()：输出严格合法的 JSON（RFC 8259），字符串逐个转义；
 *     非法 UTF-8 字节替换成 '?' 并置 "invalid_utf8":1，绝不把裸字节写进 JSON。
 *     缓冲区不够时返回 0（宁可这一条不写，也不写半条坏 JSON）。
 *   - t6b_dl_append()：以 O_APPEND 单次 write 追加完整一行（含行尾 '\n'），
 *     写前修复"上次崩溃留下的半行"，写后 fsync；任一步失败都回滚到写前长度并返回 -1，
 *     调用方据此不推进事件 offset。
 *
 * 与业务无关：本文件不认识事件、不认识 Provider，只处理"一行 JSON"。
 */
#ifndef T6B_DEAD_LETTER_H
#define T6B_DEAD_LETTER_H

#include <stddef.h>

/* 一条死信记录的输入（字符串按"字节 + 长度"给，允许不带 '\0'）。 */
typedef struct {
    long long     ts_ms;             /* 写死信的时刻（毫秒，wall clock） */
    const char   *event_id;          /* 被跳过的事件 id */
    size_t        event_id_len;
    const char   *error_class;       /* Provider 的错误分类（如 http_503 / timeout） */
    size_t        error_class_len;
    unsigned long seq;
    int           attempts;
    int           error_bytes;       /* 错误描述字节数（只记长度，不落错误正文） */
} t6b_dl_rec;

#define T6B_DL_LINE_MAX 2048         /* 单行死信上限（含 '\n'） */

/*
 * 把一条记录格式化成一行合法 JSON（末尾带 '\n'）。
 * 返回写入 dst 的字节数（>=1 且含 '\n'，不含结尾的 NUL）；返回 0 表示放不下或参数非法
 * —— 调用方必须把 0 当成失败处理（不允许截断输出）。
 * 成功时 dst 一定以 '\0' 结尾（长度为返回值），可以直接当字符串用。
 */
size_t t6b_dl_format(char *dst, size_t cap, const t6b_dl_rec *r);

/*
 * 追加一行到 path（O_APPEND + 单次 write + fsync）。
 *
 * 写之前会检查文件尾部：
 *   - 尾部已经是 '\n' → 不动；
 *   - 尾部是半行（上次写到一半崩了）→ 截断到最后一个 '\n'（找不到就补一个 '\n'
 *     作为分隔，让新记录独占一行）。
 * *out_repaired_bytes（可为 NULL）返回这次修复掉的字节数，正常情况是 0。
 *
 * 返回：0 = 已落盘（数据与元数据都已同步）；-1 = 失败（未落盘，且已回滚到写前长度）。
 * 失败时调用方**不得**推进消费 offset。
 */
int t6b_dl_append(const char *path, const char *line, size_t len,
                  long long *out_repaired_bytes);

#endif /* T6B_DEAD_LETTER_H */
