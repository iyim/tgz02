/*
 * receiver_harness.c -- T4 接收端"可主机测试"部分的驱动（Windows/GCC 可直接跑）
 *
 * 目的：Windows 内核不支持 AF_UNIX DGRAM，无法在本机跑真正的 socket 路径；
 *       所以这里直接驱动 rx_core.c 里的**生产实现**（分类/统计/队列/WAV/SUMMARY），
 *       由 tests/receiver_test.py 用真实字节与 json.loads() 断言。
 *       socket 与线程的联调只在真机上做（见 README），本 harness 不假装验证过。
 *
 * build: gcc -O2 -Wall -Wextra -o receiver_harness receiver_harness.c ../android/rx_core.c
 *
 * modes:
 *   --script <tokens> [--with-summary]
 *        tokens: ok | gap | dup | reorder | epoch | badlen | badcrc | badmagic | badver
 *        每处理完一个 token 打印一行 STATS JSON
 *   --queue <cap> <extra>
 *        压满队列再推 extra 帧，打印 QUEUE JSON（drop-new 策略与高水位）
 *   --wav <dir> --frames N --seg ID
 *        写一个 WAV，打印 WAV JSON
 */
#include "../android/rx_core.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static int16_t g_payload[TGZ2_SPF];

static void build_frame(uint8_t *msg, uint32_t seq, uint32_t epoch)
{
    tgz2_hdr h;
    int i;

    for (i = 0; i < TGZ2_SPF; i++) {
        g_payload[i] = (int16_t)(((i * 37 + (int)seq * 11) % 4000) - 2000);
    }
    memset(msg, 0, TGZ2_MSG);
    memset(&h, 0, sizeof(h));
    h.seq = seq;
    h.ts_us = 1000000ull + (uint64_t)seq * 40000ull;
    h.epoch = epoch;
    h.flags = 0;                                  /* 真实 PCM：无 SYNTHETIC */
    h.payload_len = TGZ2_PAYLOAD;
    h.crc = tgz2_fnv1a((const uint8_t *)g_payload, TGZ2_PAYLOAD);
    tgz2_pack(msg, &h, (const uint8_t *)g_payload);
}

static void print_stats(const rx_stats *st)
{
    printf("{\"type\":\"STATS\",\"received\":%llu,\"accepted\":%llu,"
           "\"bad_len\":%llu,\"bad_crc\":%llu,\"bad_magic\":%llu,\"bad_ver\":%llu,"
           "\"bad_hdr\":%llu,\"bad_param\":%llu,\"missing\":%llu,\"duplicate\":%llu,"
           "\"reorder\":%llu,\"epoch_switches\":%llu,\"seq_first\":%u,\"seq_last\":%u,"
           "\"epoch\":%u}\n",
           (unsigned long long)st->received, (unsigned long long)st->accepted,
           (unsigned long long)st->bad_len, (unsigned long long)st->bad_crc,
           (unsigned long long)st->bad_magic, (unsigned long long)st->bad_ver,
           (unsigned long long)st->bad_hdr, (unsigned long long)st->bad_param,
           (unsigned long long)st->missing, (unsigned long long)st->duplicate,
           (unsigned long long)st->reorder, (unsigned long long)st->epoch_switches,
           st->seq_first, st->seq_last, st->epoch);
    fflush(stdout);
}

static int run_script(const char *spec, int with_summary)
{
    uint8_t msg[TGZ2_MSG];
    rx_stats st;
    rx_queue q;
    char *copy, *tok, *save = NULL;
    uint32_t seq = 1;
    uint32_t epoch = 0xA1B2C3D4u;

    rx_stats_init(&st);
    if (rx_queue_init(&q, T4_QUEUE_CAP_DEFAULT) != 0) return 1;

    copy = (char *)malloc(strlen(spec) + 1);
    if (copy == NULL) return 1;
    strcpy(copy, spec);

    for (tok = strtok_r(copy, ",", &save); tok != NULL; tok = strtok_r(NULL, ",", &save)) {
        int n = TGZ2_MSG;
        int rc;
        tgz2_hdr h;

        if (!strcmp(tok, "ok")) {
            build_frame(msg, seq, epoch);
            seq++;
        } else if (!strcmp(tok, "gap")) {
            seq += 3;                              /* 跳过 3 个 seq => missing += 2 */
            build_frame(msg, seq, epoch);
            seq++;
        } else if (!strcmp(tok, "dup")) {
            build_frame(msg, seq > 0 ? seq - 1 : 0, epoch);
        } else if (!strcmp(tok, "reorder")) {
            build_frame(msg, seq > 2 ? seq - 2 : 1, epoch);
        } else if (!strcmp(tok, "epoch")) {
            epoch += 7;
            build_frame(msg, seq, epoch);
            seq++;
        } else if (!strcmp(tok, "badlen")) {
            build_frame(msg, seq, epoch);
            seq++;
            n = TGZ2_MSG - 1;
        } else if (!strcmp(tok, "badcrc")) {
            build_frame(msg, seq, epoch);
            seq++;
            msg[36] ^= 0xFF;
        } else if (!strcmp(tok, "badmagic")) {
            build_frame(msg, seq, epoch);
            seq++;
            msg[0] ^= 0xFF;
        } else if (!strcmp(tok, "badver")) {
            build_frame(msg, seq, epoch);
            seq++;
            msg[4] = 99;
        } else if (!strncmp(tok, "seq=", 4)) {
            /* 只改序号游标，不送帧：用来脚本化乱序/回绕场景 */
            seq = (uint32_t)strtoul(tok + 4, NULL, 0);
            continue;
        } else {
            fprintf(stderr, "unknown token: %s\n", tok);
            free(copy);
            return 2;
        }

        rc = rx_classify(msg, n, &st, &h);
        if (rc == RX_OK) {
            rx_frame f;
            memset(&f, 0, sizeof(f));
            rx_payload_to_samples(msg + TGZ2_HDR_LEN, f.samples, TGZ2_SPF);
            f.seq = h.seq;
            f.epoch = h.epoch;
            f.ts_us = h.ts_us;
            (void)rx_queue_push(&q, &f);
        }
    }
    free(copy);

    /* 模拟生产端"退出排空"：把队列里剩下的帧全部取完（processed = 实际取出帧数） */
    {
        rx_frame f;
        uint64_t processed = 0;
        while (rx_queue_pop(&q, &f)) processed++;

        print_stats(&st);
        if (with_summary) {
            rx_write_summary(stdout, &st, &q, processed, 123u, 2u, 0u, 1.500, 12.50,
                             262144, 212992);
            fflush(stdout);
        }
    }
    rx_queue_free(&q);
    return 0;
}

static int run_queue(int cap, int extra)
{
    rx_queue q;
    rx_frame f;
    int i, popped, ok_count = 0;
    uint32_t first_seq = 0, last_seq = 0;

    if (rx_queue_init(&q, cap) != 0) return 1;
    for (i = 0; i < cap + extra; i++) {
        memset(&f, 0, sizeof(f));
        f.seq = (uint32_t)(i + 1);
        f.epoch = 0xA1B2C3D4u;
        if (rx_queue_push(&q, &f)) ok_count++;
    }

    popped = 0;
    while (rx_queue_pop(&q, &f)) {
        if (popped == 0) first_seq = f.seq;
        last_seq = f.seq;
        popped++;
    }

    printf("{\"type\":\"QUEUE\",\"cap\":%d,\"attempt\":%d,\"pushed_ok\":%d,\"drops\":%llu,"
           "\"high_watermark\":%llu,\"popped\":%d,\"first_seq\":%u,\"last_seq\":%u,"
           "\"count_after\":%d}\n",
           cap, cap + extra, ok_count,
           (unsigned long long)q.drops, (unsigned long long)q.high_watermark,
           popped, first_seq, last_seq, q.count);
    fflush(stdout);
    rx_queue_free(&q);
    return 0;
}

static int run_wav(const char *dir, int frames, long seg_id, unsigned run_id)
{
    t4_wav w;
    int16_t block[TGZ2_SPF];
    int f, i;
    long file_bytes;

    if (t4_wav_open(&w, dir, (uint32_t)run_id, seg_id, 42u, TGZ2_RATE) != 0) {
        fprintf(stderr, "wav open failed\n");
        return 1;
    }
    for (f = 0; f < frames; f++) {
        for (i = 0; i < TGZ2_SPF; i++) {
            block[i] = (int16_t)(((f * TGZ2_SPF + i) % 30000) - 15000);
        }
        if (t4_wav_write(&w, block, TGZ2_SPF) != 0) {
            fprintf(stderr, "wav write failed at frame %d\n", f);
            t4_wav_close(&w);
            return 1;
        }
    }
    if (t4_wav_close(&w) != 0) {
        fprintf(stderr, "wav close failed\n");
        return 1;
    }
    file_bytes = (long)44 + (long)frames * (long)TGZ2_PAYLOAD;

    printf("{\"type\":\"WAV\",\"path\":");
    json_write_string(stdout, w.path);
    printf(",\"frames\":%d,\"data_bytes\":%u,\"expect_file_bytes\":%ld,"
           "\"run_id\":%u,\"seg_id\":%ld}\n",
           frames, (unsigned)frames * (unsigned)TGZ2_PAYLOAD, file_bytes,
           (unsigned)run_id, seg_id);
    fflush(stdout);
    return 0;
}

int main(int argc, char **argv)
{
    if (argc < 2) {
        fprintf(stderr, "usage: %s --script SPEC [--with-summary] | --queue CAP EXTRA | "
                        "--wav DIR --frames N --seg ID [--run-id HEX]\n", argv[0]);
        return 2;
    }
    if (!strcmp(argv[1], "--script") && argc >= 3) {
        int with_summary = (argc >= 4 && !strcmp(argv[3], "--with-summary"));
        return run_script(argv[2], with_summary);
    }
    if (!strcmp(argv[1], "--queue") && argc >= 4) {
        return run_queue(atoi(argv[2]), atoi(argv[3]));
    }
    if (!strcmp(argv[1], "--wav") && argc >= 7) {
        const char *dir = argv[2];
        int frames = 0, seg = 0, k;
        unsigned run_id = 0;
        if (!strcmp(argv[3], "--frames")) frames = atoi(argv[4]);
        if (!strcmp(argv[5], "--seg")) seg = atoi(argv[6]);
        for (k = 7; k + 1 < argc; k++) {
            if (!strcmp(argv[k], "--run-id")) run_id = (unsigned)strtoul(argv[k + 1], NULL, 16);
        }
        return run_wav(dir, frames, seg, run_id);
    }
    fprintf(stderr, "bad arguments\n");
    return 2;
}
