/*
 * rx_core.h -- T4 接收端的"可主机测试"核心：帧校验/序号统计、有界队列、JSON、WAV 落盘
 *
 * 为什么单独一个文件：
 *   t4_receiver.c 需要 POSIX socket + pthread（真机跑），而本机 Windows 没有 pthread，
 *   为了让协议校验、队列策略、WAV 头这些逻辑能在 Windows/GCC 下被自动测试，
 *   把它们放在这个**不依赖 socket / 线程**的翻译单元里。
 *   加锁由 t4_receiver.c 负责（本文件的队列函数是"无锁语义"，调用方持锁即可）。
 *
 * 协议不在这里定义：一律复用 my-doc/03_uds_test/tgz2_frame.h（与 T3 完全同一份）。
 */
#ifndef TGZ2_T4_RX_CORE_H
#define TGZ2_T4_RX_CORE_H

#include <stdint.h>
#include <stdio.h>

#include "../../03_uds_test/tgz2_frame.h"

#define T4_QUEUE_CAP_DEFAULT 128
#define T4_QUEUE_CAP_MAX     4096
#define T4_SEG_PATH_MAX      512

/* 一个数据报的分类结果（负值 = 拒收原因） */
typedef enum {
    RX_OK          =  0,
    RX_BAD_LEN     = -1,   /* 长度 != TGZ2_MSG */
    RX_BAD_MAGIC   = -2,
    RX_BAD_VER     = -3,
    RX_BAD_HDR     = -4,
    RX_BAD_PARAM   = -5,   /* rate/ch/bits 不符 */
    RX_BAD_CRC     = -6
} rx_result;

typedef struct {
    uint64_t received;         /* 收到的数据报总数 */
    uint64_t accepted;         /* 协议通过并交给 VAD 的帧数 */
    uint64_t bad_len;          /* 长度不对（含截断/超长） */
    uint64_t bad_crc;
    uint64_t bad_magic;
    uint64_t bad_ver;
    uint64_t bad_hdr;
    uint64_t bad_param;
    uint64_t missing;          /* 同一 epoch 内 seq 缺口累计 */
    uint64_t duplicate;
    uint64_t reorder;
    uint64_t epoch_switches;
    uint32_t seq_first;
    uint32_t seq_last;
    uint32_t epoch;
    int      have_seq;
    int      have_epoch;
} rx_stats;

typedef struct {
    int16_t  samples[TGZ2_SPF];   /* 已按 T3 约定取好的单声道 PCM（1280 B = 640 x int16） */
    uint32_t seq;
    uint32_t epoch;
    uint64_t ts_us;
} rx_frame;

typedef struct {
    rx_frame *slots;           /* 由 rx_queue_init() 按 cap 分配（cap*1296 B），不放在栈上 */
    int      cap;
    int      head;
    int      tail;
    int      count;
    uint64_t drops;            /* 队列满时丢弃的新帧（绝不覆盖未处理帧） */
    uint64_t high_watermark;
} rx_queue;

/* ---- 统计 ---- */
void rx_stats_init(rx_stats *st);
const char *rx_result_name(rx_result r);

/*
 * 校验一个数据报并推进序号统计。
 * 成功返回 RX_OK 并填充 *hdr（可为 NULL）；失败返回负值并累计对应坏帧计数。
 * 注意：长度检查在 unpack 之前（DGRAM 一帧一个数据报，长度不符即拒收）。
 */
rx_result rx_classify(const uint8_t *buf, int n, rx_stats *st, tgz2_hdr *hdr);

/* 载荷 -> 单声道样本：T3 发送端已在消费端取好 lane0，所以这里是 640 x int16 的直接拷贝 */
void rx_payload_to_samples(const uint8_t *payload, int16_t *out, int spf);

/* ---- 有界队列（无锁语义，调用方自己加锁） ----
 * rx_queue_init 会 malloc(cap * sizeof(rx_frame))；返回 0 成功、-1 内存不足。
 * 用完调 rx_queue_free()。 */
int  rx_queue_init(rx_queue *q, int cap);
void rx_queue_free(rx_queue *q);
int  rx_queue_push(rx_queue *q, const rx_frame *f);   /* 1 = 入队，0 = 队满丢弃（已计数） */
int  rx_queue_pop(rx_queue *q, rx_frame *out);        /* 1 = 取到，0 = 空 */
int  rx_queue_count(const rx_queue *q);

/* ---- JSON 输出（T4 内唯一实现，READY/CONFIG/SEGMENT/SUMMARY 共用） ---- */
void json_write_string(FILE *f, const char *s);
void json_write_string_or_null(FILE *f, const char *s);

/*
 * SUMMARY：输出一行纯 JSON（含 "type":"SUMMARY"）。
 * 必需字段：received/accepted/bad_len/bad_crc/missing/duplicate/reorder/
 *           queue_drop/queue_high_watermark/vad_speech_frames/segments/segment_write_errors
 */
void rx_write_summary(FILE *f, const rx_stats *st, const rx_queue *q,
                      uint64_t vad_speech_frames, uint64_t segments,
                      uint64_t segment_write_errors, double dur_s,
                      double noise_rms, int rcvbuf_req, int rcvbuf_eff);

/* ---- WAV 落盘（16 kHz / 单声道 / 16-bit） ---- */
typedef struct {
    FILE    *f;
    uint32_t data_bytes;
    int      ok;
    char     path[T4_SEG_PATH_MAX];
} t4_wav;

/* 返回 0 = 成功，-1 = 打不开/写头失败（不抛异常、不崩溃） */
int t4_wav_open(t4_wav *w, const char *dir, long seg_id, uint32_t start_seq, int sample_rate);
int t4_wav_write(t4_wav *w, const int16_t *samples, int n);
/* 关闭并回填 RIFF/data 长度；返回 0 = 全部成功，-1 = 有写入/回填失败 */
int t4_wav_close(t4_wav *w);

#endif /* TGZ2_T4_RX_CORE_H */
