/*
 * tgb_proto.h -- T5-05A ASR 事件桥接的 wire protocol（编解码 + 边界常量）
 *
 * 传输层：AF_UNIX / SOCK_STREAM
 *   - Android/Linux 用抽象命名空间（不给文件系统权限，名字 tgz2_asr_bridge）
 *   - Windows 主机测试用文件系统路径（Host 内核没有抽象命名空间）
 *   为什么是 STREAM 而不是 T3 用的 DGRAM：见 ../README.md §2。
 *
 * 一帧 = 16 B 头 + body_len B JSON body（小端，手工序列化，不依赖 struct 对齐）：
 *   off  size  field
 *   0    4     magic      'T''G''B''1' = 0x31424754
 *   4    1     ver        帧格式版本，当前 1（未知版本直接拒收）
 *   5    1     type       1 = REQ（客户端->接收端），2 = ACK（接收端->客户端）
 *   6    2     hdr_len    16（不为 16 直接拒收，防止对不齐流）
 *   8    4     body_len   UTF-8 JSON body 长度，必须 <= TGB_MAX_BODY
 *   12   4     crc        FNV-1a 32 (body)，与 T3/T4 的 tgz2_fnv1a 同一算法
 *
 * 帧格式版本（ver）与消息版本（body 里的 "version"）分开：
 *   - ver 变了 = 头布局变了，接收端连长度都不可信，必须断开；
 *   - body.version 变了 = 字段语义变了，但帧还能读，回一条 rejected ACK 即可。
 *   两者都不认识时不猜测、不静默降级。
 *
 * 本文件只依赖 stdint/stddef，不含 socket 头：帧编解码可以在 Windows 主机上直接单测。
 */
#ifndef TGB_PROTO_H
#define TGB_PROTO_H

#include <stddef.h>
#include <stdint.h>

#define TGB_MAGIC        0x31424754u    /* 'T''G''B''1' */
#define TGB_VER_FRAME    1
#define TGB_HDR_LEN      16
#define TGB_MAX_BODY     1024           /* 一条请求/ACK 的 JSON body 上限 */
#define TGB_MAX_FRAME    (TGB_HDR_LEN + TGB_MAX_BODY)

#define TGB_TYPE_REQ     1
#define TGB_TYPE_ACK     2

/*
 * 文本上限的推导（不许拍脑袋）：
 *   T5-04 的 Hook 读取上限是 MAX_TEXT = 512 字节，readCString() 遇到 NUL 就停，
 *   所以一条 final 文本最多是 511 字节 + 1 字节 NUL。
 *   桥接端因此把「合法文本」定义为 511 字节以内（UTF-8 字节数），
 *   任何超过 511 字节的文本一律拒收 —— 与 Hook 的真实能力一一对应，
 *   既不会接受 Hook 永远产不出的数据，也不会比 Hook 更早截断。
 */
#define TGB_MAX_TEXT_BYTES 511
#define TGB_MAX_ID_LEN     64           /* event_id / session_id 的字节上限 */

/* 帧级错误码（0 = 通过，负值 = 拒收原因；与 body 级错误码不共用命名空间） */
#define TGB_FRAME_OK        0
#define TGB_ERR_SHORT     (-1)          /* 字节还不够，需要继续读 */
#define TGB_ERR_MAGIC     (-2)
#define TGB_ERR_FRAME_VER (-3)
#define TGB_ERR_HDRLEN    (-4)
#define TGB_ERR_OVERSIZE  (-5)          /* body_len > TGB_MAX_BODY */
#define TGB_ERR_CRC       (-6)
#define TGB_ERR_TYPE      (-7)          /* 不是 REQ 帧 */

typedef struct {
    uint8_t  ver;
    uint8_t  type;
    uint32_t body_len;
} tgb_hdr;

/* 解码 16 B 头：avail >= 16 才可能返回 TGB_FRAME_OK；返回 TGB_ERR_SHORT 表示需要更多字节。
 * 只做「头是否自洽」的检查，不碰 body。 */
int tgb_hdr_decode(const uint8_t *raw, size_t avail, tgb_hdr *out);

/* 校验 body：帧必须完整（avail >= 16 + body_len），并比对 CRC。 */
int tgb_body_check(const uint8_t *raw, const tgb_hdr *h, size_t avail);

/* 组装一帧，返回总长度写入 *outlen；0 = 成功，-1 = 缓冲不足/参数非法 */
int tgb_frame_pack(uint8_t type, const void *body, uint32_t body_len,
                   uint8_t *out, size_t outcap, size_t *outlen);

const char *tgb_frame_err_name(int code);

/* FNV-1a 32：与 03_uds_test/tgz2_frame.h 的 tgz2_fnv1a 完全同一算法，
 * 单测 T-CRC-1 逐值对拍（这里不 include 那个头，避免把 winsock 拖进帧编解码）。 */
uint32_t tgb_crc32(const void *data, size_t len);

#endif /* TGB_PROTO_H */
