/*
 * tg_wire.h -- T6-01 Hook Agent 的最小 wire 实现（与 T5-05A 桥接端逐字节一致）
 *
 * 为什么在 hook_agent 里重新实现一遍而不是 include 06_t5_bridge/android/tgb_proto.c：
 *   - T6-01 任务的边界是「只在本项目目录内新增文件」，不引入跨项目编译依赖；
 *   - Hook Agent 是注入进原厂进程的 .so，必须自包含、无外部符号依赖；
 *   - 一致性由测试保证：tests/t6_wire_unit_test.c 用与桥接端相同的向量逐字节对拍，
 *     真机 E2E 再由桥接端实际接收（ACK=stored）做最终校验。
 *
 * 协议（与 tgb_proto.h 完全一致，任何一项都不许改）：
 *   AF_UNIX / SOCK_STREAM，Android 抽象命名空间 tgz2_asr_bridge
 *   16 B 头（小端，手工序列化）：
 *     off 0  4B magic 'T''G''B''1' = 0x31424754
 *     off 4  1B ver   = 1
 *     off 5  1B type  = 1 REQ / 2 ACK
 *     off 6  2B hdr_len = 16
 *     off 8  4B body_len（UTF-8 JSON，<= 1024）
 *     off 12 4B crc = FNV-1a32(body)
 *   body：
 *     {"version":1,"event_id":"..","event_type":"asr_final","pid":..,
 *      "session_id":"..","text":"..","is_final":true,"received_at_ms":..}
 */
#ifndef TG_WIRE_H
#define TG_WIRE_H

#include <stddef.h>
#include <stdint.h>

#define TG_MAGIC        0x31424754u
#define TG_VER_FRAME    1
#define TG_HDR_LEN      16
#define TG_MAX_BODY     1024
#define TG_TYPE_REQ     1
#define TG_TYPE_ACK     2

/* 与 T5-04 Hook 的 512 字节读取上限一一对应：511 字节文本 + 1 字节 NUL */
#define TG_MAX_TEXT_BYTES 511
#define TG_MAX_ID_LEN     64

typedef struct {
    uint8_t  ver;
    uint8_t  type;
    uint32_t body_len;
} tg_hdr;

uint32_t tg_fnv1a32(const void *data, size_t len);

/* 组装一帧；0 = 成功，-1 = 参数/容量非法 */
int tg_frame_pack(uint8_t type, const void *body, uint32_t body_len,
                  uint8_t *out, size_t outcap, size_t *outlen);

/* 解析 16 B 头（ACK 用）；返回 0 成功，<0 = 原因（见 tg_wire.c） */
int tg_hdr_decode(const uint8_t *raw, size_t avail, tg_hdr *out);

/* JSON 字符串转义：把 src 写成不含首尾引号的内容并在末尾补 NUL，返回写入长度；<0 = 容量不足。
 * 只转义 " \ 和 <0x20 的控制字符（\u00XX），其余 UTF-8 字节原样透传。 */
int tg_json_escape(char *dst, size_t cap, const char *src, size_t srclen);

/* 从扁平 JSON body 里取一个字符串字段（只处理 ACK 这种简单对象）；
 * 返回 0 = 找到并写入 out，<0 = 未找到/类型不对/容量不足 */
int tg_json_str_field(const char *body, size_t len, const char *key,
                      char *out, size_t outcap);

/* 严格 UTF-8 校验（拒收超长编码、代理区、>U+10FFFF、截断）。0 = 合法 */
int tg_utf8_ok(const char *s, size_t len);

#endif /* TG_WIRE_H */
