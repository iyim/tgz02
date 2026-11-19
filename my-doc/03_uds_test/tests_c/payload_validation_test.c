/*
 * payload_validation_test.c -- 验证 "SYNTHETIC 伪随机载荷校验" 与
 * "真实 PCM 只走 CRC" 这两条路径确实分开。
 *
 * 关键点：**直接测生产代码**。做法是把 uds_sink.c 整体 include 进来
 * （只把它的 main 改名），于是这里调用的 account() / tgz2_unpack() /
 * tgz2_check_payload() 与 uds_sink.exe 里跑的是同一份实现，不存在测试副本。
 *
 * build: gcc -O2 -Wall -o payload_validation_test.exe payload_validation_test.c -lws2_32
 * run  : ./payload_validation_test.exe      (exit 0 = 全部通过)
 */
#include <stdio.h>
#include <string.h>

#define main uds_sink_main_unused
#include "../uds_sink.c"
#undef main

static int g_pass = 0, g_fail = 0;

static void check(int cond, const char *name)
{
    printf("  %s %s\n", cond ? "ok  " : "FAIL", name);
    if (cond) g_pass++; else g_fail++;
}

static uint8_t g_msg[TGZ2_MSG];
static uint8_t g_payload[TGZ2_PAYLOAD];
static stats   g_s;

static void reset(void)
{
    memset(&g_s, 0, sizeof(g_s));
    g_s.max_age_us = 0;            /* 关掉过期丢弃，免得干扰计数 */
}

/* 按生产侧的打包方式造一帧；corrupt_crc=1 时故意把 CRC 写错 */
static void build(uint32_t seq, uint8_t flags, const uint8_t *pl, int corrupt_crc)
{
    tgz2_hdr h;
    h.seq = seq;
    h.ts_us = 1000000;
    h.epoch = 0x1234;
    h.flags = flags;
    h.payload_len = TGZ2_PAYLOAD;
    h.crc = tgz2_fnv1a(pl, TGZ2_PAYLOAD);
    if (corrupt_crc) h.crc ^= 1u;
    tgz2_pack(g_msg, &h, pl);
}

/* 完全复刻 sink 的接收路径：先 tgz2_unpack()，通过才 account() */
static int feed(void)
{
    tgz2_hdr h;
    int rc = tgz2_unpack(g_msg, &h);
    if (rc) return rc;
    account(&g_s, g_msg, &h, h.ts_us + 1000, NULL);
    return 0;
}

/* 一段"真实 PCM"载荷：有正有负、非伪随机 */
static void make_pcm(void)
{
    int i;
    for (i = 0; i < TGZ2_SPF; i++) {
        int32_t v = (int32_t)(i * 17 - 5000);
        g_payload[i * 2] = (uint8_t)(v & 0xFF);
        g_payload[i * 2 + 1] = (uint8_t)((v >> 8) & 0xFF);
    }
}

int main(void)
{
    int rc;

    printf("payload_validation_test (production code from uds_sink.c)\n");

    /* 先确认协议常量没被改动 */
    printf("\n[0] protocol invariants\n");
    check(TGZ2_VER == 2, "TGZ2_VER 仍为 2");
    check(TGZ2_FLAG_SYNTHETIC == 0x01, "TGZ2_FLAG_SYNTHETIC 仍为 0x01");
    check(TGZ2_HDR_LEN == 40 && TGZ2_MSG == 1320, "头长 40 / 帧长 1320 未变");

    /* ---- A: SYNTHETIC 正常帧 ---- */
    printf("\n[A] SYNTHETIC frame with correct payload\n");
    reset();
    tgz2_fill_payload(7, g_payload);
    build(7, TGZ2_FLAG_SYNTHETIC, g_payload, 0);
    rc = feed();
    check(rc == 0, "CRC 通过，帧进入 account()");
    check(g_s.accepted == 1, "accepted = 1");
    check(g_s.reject_payload == 0, "reject_payload = 0（确定性载荷一致）");

    /* ---- B: SYNTHETIC 载荷被改，但 CRC 重算过 ---- */
    printf("\n[B] SYNTHETIC frame with wrong payload but valid CRC\n");
    reset();
    tgz2_fill_payload(7, g_payload);
    g_payload[100] ^= 0xFF;                       /* 破坏内容 */
    build(7, TGZ2_FLAG_SYNTHETIC, g_payload, 0);  /* CRC 按破坏后的内容重算 -> CRC 正确 */
    rc = feed();
    check(rc == 0, "CRC 自身通过（证明 CRC 正确 != 内容正确）");
    check(g_s.accepted == 1, "accepted = 1");
    check(g_s.reject_payload == 1, "reject_payload = 1（确定性比对失败）");

    /* ---- C: 真实 PCM 正常帧 ---- */
    printf("\n[C] real PCM frame, flags = 0, valid CRC\n");
    reset();
    make_pcm();
    build(9, 0, g_payload, 0);
    rc = feed();
    check(rc == 0, "CRC 通过");
    check(g_s.accepted == 1, "accepted = 1");
    check(g_s.reject_payload == 0, "reject_payload = 0（不执行确定性比对）");

    /* ---- C2: flags=0，但载荷"故意"不是该 seq 的伪随机数据 ---- */
    printf("\n[C2] flags = 0 with a payload that would fail the synthetic check\n");
    reset();
    tgz2_fill_payload(11, g_payload);
    g_payload[7] ^= 0x01;                          /* 一定不等于 fill_payload(11) */
    build(11, 0, g_payload, 0);
    rc = feed();
    check(rc == 0, "CRC 通过");
    check(g_s.accepted == 1, "accepted = 1");
    check(g_s.reject_payload == 0,
          "reject_payload = 0（若仍无条件比对，这里必然变成 1）");

    /* ---- D: 真实 PCM，CRC 错误 ---- */
    printf("\n[D] real PCM frame, flags = 0, broken CRC\n");
    reset();
    make_pcm();
    build(12, 0, g_payload, 1);                    /* CRC 故意错 */
    rc = feed();
    /* 只断言这条测试路径真的能证明的事：unpack 拒绝，且帧没进 account()。
     * 生产程序把 CRC 失败计到哪个计数器（dgram=reject_crc / stream=reject_hdr）
     * 是接收主循环的职责，本测试不碰、也不手工累加这些统计字段。 */
    check(rc == -8, "tgz2_unpack 返回 -8（CRC 失败）");
    check(g_s.accepted == 0, "CRC 错误帧没有进入 accepted");
    check(g_s.reject_payload == 0, "CRC 错误帧没有进入 payload 校验");

    /* ---- E: SYNTHETIC + 错误 CRC 也必须先被 CRC 拦下 ---- */
    printf("\n[E] SYNTHETIC frame with broken CRC\n");
    reset();
    tgz2_fill_payload(13, g_payload);
    build(13, TGZ2_FLAG_SYNTHETIC, g_payload, 1);
    rc = feed();
    check(rc == -8, "CRC 失败优先于内容比对");
    check(g_s.accepted == 0 && g_s.reject_payload == 0, "未计入 accepted，也未计 reject_payload");

    printf("\n=== %d passed, %d failed ===\n", g_pass, g_fail);
    return g_fail ? 1 : 0;
}
