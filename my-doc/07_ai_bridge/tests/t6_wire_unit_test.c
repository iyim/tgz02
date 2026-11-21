/*
 * t6_wire_unit_test.c -- T6-01 Hook Agent wire 实现的兼容性单测（宿主 gcc）
 *
 * 目的不是"自己测自己"，而是证明 tg_wire.c 与已验收的 T5-05A 桥接端逐字节一致：
 *   - 帧头/CRC 与 06_t5_bridge/android/tgb_proto.c 完全对拍；
 *   - Hook Agent 生成的 body 必须被桥接端的 06_t5_bridge/android/tgb_event.c
 *     （同一份严格解析器）判为 TGB_E_OK；
 *   - 511 字节文本上限与桥接端的 TGB_MAX_TEXT_BYTES 行为一致。
 *
 * 构建（由 tests/run_t6_host_tests.ps1 调用）：
 *   gcc -O2 -Wall -Wextra -o out/t6_wire_unit_test.exe \
 *       tests/t6_wire_unit_test.c android/hook_agent/tg_wire.c \
 *       ../06_t5_bridge/android/tgb_proto.c ../06_t5_bridge/android/tgb_event.c \
 *       ../06_t5/android/t5_util.c \
 *       -Iandroid/hook_agent -I../06_t5_bridge/android -I../06_t5/android
 */
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "tg_wire.h"
#include "tgb_proto.h"
#include "tgb_event.h"

static int g_pass;
static int g_fail;

static void ok(int cond, const char *what)
{
    if (cond) {
        g_pass++;
        printf("  PASS  %s\n", what);
    } else {
        g_fail++;
        printf("  FAIL  %s\n", what);
    }
}

static void hexdump(const char *tag, const uint8_t *p, size_t n)
{
    size_t i;

    printf("        %s:", tag);
    for (i = 0; i < n; i++) printf(" %02x", p[i]);
    printf("\n");
}

/* 与 libtg_hook.c build_frame() 完全相同的 body 组装方式 */
static int build_body(char *body, size_t cap, const char *evid, int pid,
                      const char *sid, const char *text, long long ms)
{
    char esc[4096];
    int e = tg_json_escape(esc, sizeof(esc), text, strlen(text));
    int n;

    if (e < 0) return -1;
    n = snprintf(body, cap,
                 "{\"version\":1,\"event_id\":\"%s\",\"event_type\":\"asr_final\","
                 "\"pid\":%d,\"session_id\":\"%s\",\"text\":\"%s\","
                 "\"is_final\":true,\"received_at_ms\":%lld}",
                 evid, pid, sid, esc, ms);
    if (n < 0 || (size_t)n >= cap) return -1;
    return n;
}

static void test_crc(void)
{
    const char *v[] = { "", "TGB1", "{\"a\":1}", "\xe4\xbd\xa0\xe5\xa5\xbd" };
    size_t i;
    char name[64];

    printf("[1] FNV-1a32 identical to bridge\n");
    for (i = 0; i < sizeof(v) / sizeof(v[0]); i++) {
        uint32_t a = tg_fnv1a32(v[i], strlen(v[i]));
        uint32_t b = tgb_crc32(v[i], strlen(v[i]));
        snprintf(name, sizeof(name), "crc vector %u (0x%08x)", (unsigned)i, a);
        ok(a == b, name);
    }
}

static void test_frame(const char *label, const char *body)
{
    uint8_t mine[TG_HDR_LEN + TG_MAX_BODY];
    uint8_t ref[TGB_HDR_LEN + TGB_MAX_BODY];
    size_t mlen = 0, rlen = 0;
    int a = tg_frame_pack(TG_TYPE_REQ, body, (uint32_t)strlen(body), mine, sizeof(mine), &mlen);
    int b = tgb_frame_pack(TGB_TYPE_REQ, body, (uint32_t)strlen(body), ref, sizeof(ref), &rlen);

    ok(a == 0 && b == 0, label);
    ok(mlen == rlen && memcmp(mine, ref, mlen) == 0, "  frame bytes identical to tgb_proto");
    if (mlen != rlen || memcmp(mine, ref, mlen) != 0) {
        hexdump("mine", mine, mlen);
        hexdump("ref ", ref, rlen);
    }
}

static void test_parse_ok(void)
{
    char body[TGB_MAX_BODY + 1];
    tgb_event ev;
    const char *field = NULL;
    tgb_eval r;
    int n;

    printf("[3] body accepted by the bridge parser\n");

    n = build_body(body, sizeof(body), "t6-28858-1969381-g1", 28858, "1969381",
                   "\xe5\xa4\xa9\xe7\x8c\xab\xe7\xb2\xbe\xe7\x81\xb5\xe7\x8e\xb0\xe5\x9c\xa8\xe5\x87\xa0\xe7\x82\xb9\xe4\xba\x86",
                   1795226603697LL);
    ok(n > 0, "build_body returns a length");
    memset(&ev, 0, sizeof(ev));
    r = tgb_event_parse(body, (size_t)n, &ev, &field);
    ok(r == TGB_E_OK, r == TGB_E_OK ? "parse == TGB_E_OK" : tgb_eval_name(r));
    if (r != TGB_E_OK) {
        printf("        rejected: code=%s field=%s\n", tgb_eval_name(r),
               field != NULL ? field : "-");
        return;
    }
    ok(strcmp(ev.event_id, "t6-28858-1969381-g1") == 0, "event_id round-trip");
    ok(strcmp(ev.session_id, "1969381") == 0, "session_id round-trip");
    ok(ev.pid == 28858, "pid round-trip");
    ok(ev.is_final == 1, "is_final == true");
    ok(ev.text_bytes == 27, "text_bytes == 27 (9 CJK chars)");
    ok(ev.received_at_ms == 1795226603697LL, "received_at_ms round-trip");

    /* 含引号/反斜杠的文本：转义必须被解析器还原成原始字节 */
    n = build_body(body, sizeof(body), "t6-1-1-g2", 1, "1", "a\"b\\c", 1795226603698LL);
    ok(n > 0, "build_body with quote/backslash");
    memset(&ev, 0, sizeof(ev));
    r = tgb_event_parse(body, (size_t)n, &ev, &field);
    ok(r == TGB_E_OK, r == TGB_E_OK ? "quote/backslash: parse == TGB_E_OK" : tgb_eval_name(r));
    if (r == TGB_E_OK) {
        ok(strcmp(ev.text, "a\"b\\c") == 0, "quote/backslash: text round-trip");
    }

    /* 控制字符（这里用 TAB）：桥接端一定拒收。Hook Agent 自己在入队前就丢掉，
     * 免得为一条永远进不了 events.jsonl 的文本反复建连、反复被 ACK rejected。 */
    n = build_body(body, sizeof(body), "t6-1-1-g2b", 1, "1", "a\tb", 1795226603698LL);
    ok(n > 0, "build_body with control char");
    memset(&ev, 0, sizeof(ev));
    r = tgb_event_parse(body, (size_t)n, &ev, &field);
    ok(r == TGB_E_TEXT_CONTROL || r == TGB_E_BAD_UTF8,
       "control char is rejected by the bridge (text_control/bad_utf8)");
    printf("        bridge verdict: %s\n", tgb_eval_name(r));
}

static void test_text_limit(void)
{
    char body[TGB_MAX_BODY + 1];
    char text[TGB_TEXT_BUF + 8];
    tgb_event ev;
    const char *field = NULL;
    tgb_eval r;
    int n;

    printf("[4] 511-byte text limit matches the bridge\n");

    memset(text, 'a', sizeof(text));
    text[511] = '\0';
    n = build_body(body, sizeof(body), "t6-1-1-g3", 1, "1", text, 1795226603699LL);
    ok(n > 0, "511-byte text body built");
    memset(&ev, 0, sizeof(ev));
    r = tgb_event_parse(body, (size_t)n, &ev, &field);
    ok(r == TGB_E_OK, r == TGB_E_OK ? "511 bytes accepted" : tgb_eval_name(r));

    text[511] = 'a';
    text[512] = '\0';
    n = build_body(body, sizeof(body), "t6-1-1-g4", 1, "1", text, 1795226603700LL);
    ok(n > 0, "512-byte text body built");
    memset(&ev, 0, sizeof(ev));
    r = tgb_event_parse(body, (size_t)n, &ev, &field);
    ok(r == TGB_E_TEXT_TOO_LONG, "512 bytes rejected as text_too_long");
}

static void test_utf8(void)
{
    printf("[5] UTF-8 validation\n");
    ok(tg_utf8_ok("abc", 3) == 0, "ascii");
    ok(tg_utf8_ok("\xe4\xbd\xa0\xe5\xa5\xbd", 6) == 0, "CJK 3-byte sequences");
    ok(tg_utf8_ok("\xc0\x80", 2) != 0, "overlong C0 80 rejected");
    ok(tg_utf8_ok("\xed\xa0\x80", 3) != 0, "surrogate ED A0 80 rejected");
    ok(tg_utf8_ok("\xe4\xb8", 2) != 0, "truncated sequence rejected");
    ok(tg_utf8_ok("\xf4\x90\x80\x80", 4) != 0, "> U+10FFFF rejected");
    ok(tg_utf8_ok("\xf0\x9f\x98\x80", 4) == 0, "U+1F600 emoji accepted");
}

static void test_ack(void)
{
    const char *ack = "{\"version\":1,\"ack\":\"t6-1-1-g5\",\"status\":\"stored\","
                      "\"code\":\"ok\",\"dup_count\":0,\"events_stored\":86,"
                      "\"recv_at_ms\":1795226603713,\"stored_at_ms\":1795226603715}";
    uint8_t frame[TGB_HDR_LEN + TGB_MAX_BODY];
    size_t flen = 0;
    tg_hdr h;
    char val[80];

    printf("[6] ACK decode\n");
    ok(tgb_frame_pack(TGB_TYPE_ACK, ack, (uint32_t)strlen(ack), frame, sizeof(frame), &flen) == 0,
       "bridge-side ACK frame built");
    ok(tg_hdr_decode(frame, flen, &h) == 0, "tg_hdr_decode accepts ACK frame");
    ok(h.type == TG_TYPE_ACK && h.body_len == strlen(ack), "ack header fields");
    ok(tg_json_str_field((const char *)frame + TG_HDR_LEN, h.body_len, "ack", val, sizeof(val)) == 0 &&
       strcmp(val, "t6-1-1-g5") == 0, "field ack");
    ok(tg_json_str_field((const char *)frame + TG_HDR_LEN, h.body_len, "status", val, sizeof(val)) == 0 &&
       strcmp(val, "stored") == 0, "field status");
    ok(tg_json_str_field((const char *)frame + TG_HDR_LEN, h.body_len, "code", val, sizeof(val)) == 0 &&
       strcmp(val, "ok") == 0, "field code");

    /* REQ 帧必须被 ACK 解码器拒绝（防止把请求当回执） */
    ok(tgb_frame_pack(TGB_TYPE_REQ, ack, (uint32_t)strlen(ack), frame, sizeof(frame), &flen) == 0,
       "REQ frame built");
    ok(tg_hdr_decode(frame, flen, &h) != 0, "tg_hdr_decode rejects REQ frame");
}

int main(void)
{
    char body[TGB_MAX_BODY + 1];
    int n;

    printf("T6-01 wire compatibility unit test\n");

    test_crc();

    printf("[2] frame packing identical to tgb_proto\n");
    test_frame("empty body", "");
    test_frame("ascii body", "{\"a\":1}");
    n = build_body(body, sizeof(body), "t6-1-1-g0", 1, "1", "hello", 1LL);
    ok(n > 0, "ascii event body built");
    test_frame("event body", body);
    n = build_body(body, sizeof(body), "t6-28858-1969381-g1", 28858, "1969381",
                   "\xe5\xa4\xa9\xe7\x8c\xab\xe7\xb2\xbe\xe7\x81\xb5", 1795226603697LL);
    ok(n > 0, "cjk event body built");
    test_frame("cjk event body", body);

    test_parse_ok();
    test_text_limit();
    test_utf8();
    test_ack();

    printf("\nresult: %d passed, %d failed\n", g_pass, g_fail);
    return g_fail == 0 ? 0 : 1;
}
