/*
 * fnv_golden.c -- C 侧金标准：用真正发布协议里的 tgz2_fnv1a() 算出若干常量，
 * 供 tests/bridge_unit_test.js 做 "JS FNV == C FNV" 的对拍（测试里内嵌这些常量）。
 *
 * build: gcc -O2 -o fnv_golden fnv_golden.c
 * run  : ./fnv_golden
 *
 * 其中的 lane0_640 / zeros_1280 / synth_seq1 就是单元测试里用的那几块数据，
 * 生成规则写在打印结果旁边，JS 侧按同一规则重建后比 CRC。
 */
#include "../tgz2_frame.h"

static int16_t g_lane[TGZ2_SPF];

static void print_row(const char *name, const uint8_t *p, size_t n)
{
    printf("%-14s len=%4u fnv1a=0x%08x\n", name, (unsigned)n, tgz2_fnv1a(p, n));
}

int main(void)
{
    uint8_t one[1] = { 0x61 };
    uint8_t abc[3] = { 0x61, 0x62, 0x63 };
    uint8_t zeros[TGZ2_PAYLOAD];
    uint8_t synth[TGZ2_PAYLOAD];
    uint8_t lane_bytes[TGZ2_PAYLOAD];
    int i;

    memset(zeros, 0, sizeof(zeros));
    tgz2_fill_payload(1, synth);

    /* lane0_640: int16 LE, lane[i] = i - 320 (i = 0..639) */
    for (i = 0; i < TGZ2_SPF; i++) {
        g_lane[i] = (int16_t)(i - 320);
        lane_bytes[i * 2 + 0] = (uint8_t)(g_lane[i] & 0xFF);
        lane_bytes[i * 2 + 1] = (uint8_t)((g_lane[i] >> 8) & 0xFF);
    }

    print_row("empty", zeros, 0);
    print_row("one_0x61", one, sizeof(one));
    print_row("abc", abc, sizeof(abc));
    print_row("lane0_640", lane_bytes, sizeof(lane_bytes));
    print_row("zeros_1280", zeros, sizeof(zeros));
    print_row("synth_seq1", synth, sizeof(synth));
    return 0;
}
