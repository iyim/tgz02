/*
 * tgb_unit_test.c -- T5-05A 的纯逻辑单元测试（Windows/GCC，不需要设备、不需要 socket 服务）
 *
 * 覆盖：帧编解码与边界、消息解析与校验、UTF-8、记录序列化、去重表的 FIFO 淘汰、
 *       JSONL 追加/回放/尾部修复/故障注入/写失败回滚。
 *
 * 用法：  tgb_unit_test.exe [ scratch-dir ]
 */
#include "tgb_dedup.h"
#include "tgb_event.h"
#include "tgb_proto.h"
#include "tgb_store.h"

#include "../../03_uds_test/tgz2_frame.h"   /* U-CRC：与 T3 的 tgz2_fnv1a 对拍 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#ifdef _WIN32
#  include <direct.h>
#  include <fcntl.h>
#  include <io.h>
#  define UT_MKDIR(p) _mkdir(p)
#  define UT_OPEN_RO(p) _open((p), _O_RDONLY | _O_BINARY)
#  define UT_CLOSE(fd) _close(fd)
#else
#  include <sys/stat.h>
#  include <sys/types.h>
#  include <fcntl.h>
#  include <unistd.h>
#  define UT_MKDIR(p) mkdir((p), 0775)
#  define UT_OPEN_RO(p) open((p), O_RDONLY)
#  define UT_CLOSE(fd) close(fd)
#endif

static int g_pass = 0;
static int g_fail = 0;
static char g_root[TGB_PATH_MAX];

static void ok_impl(int cond, const char *name, const char *detail)
{
    if (cond) {
        g_pass++;
        printf("  ok   %s\n", name);
    } else {
        g_fail++;
        printf("  FAIL %s%s%s\n", name, detail && detail[0] ? " :: " : "",
               detail ? detail : "");
    }
}
#define ok(cond, name) ok_impl((cond), (name), "")

static void ok_str(const char *got, const char *want, const char *name)
{
    char d[512];
    if (got != NULL && strcmp(got, want) == 0) {
        g_pass++;
        printf("  ok   %s\n", name);
    } else {
        g_fail++;
        snprintf(d, sizeof(d), "got=\"%s\" want=\"%s\"", got ? got : "(null)", want);
        printf("  FAIL %s :: %s\n", name, d);
    }
}

static void ok_ll(long long got, long long want, const char *name)
{
    char d[128];
    if (got == want) {
        g_pass++;
        printf("  ok   %s\n", name);
    } else {
        g_fail++;
        snprintf(d, sizeof(d), "got=%lld want=%lld", got, want);
        printf("  FAIL %s :: %s\n", name, d);
    }
}

/* ---------------- 文件小工具 ---------------- */


static long read_file(const char *path, char *buf, size_t cap)
{
    FILE *f = fopen(path, "rb");
    long n;

    if (f == NULL) return -1;
    n = (long)fread(buf, 1, cap - 1, f);
    buf[n] = '\0';
    fclose(f);
    return n;
}

static int append_raw(const char *path, const char *data, size_t len)
{
    FILE *f = fopen(path, "ab");
    if (f == NULL) return -1;
    fwrite(data, 1, len, f);
    fclose(f);
    return 0;
}

static int count_lines(const char *path)
{
    char buf[TGB_REC_LINE_MAX * 4];
    long n = read_file(path, buf, sizeof(buf));
    long i;
    int lines = 0;

    if (n < 0) return -1;
    for (i = 0; i < n; i++) if (buf[i] == '\n') lines++;
    return lines;
}

/* ---------------- 事件 JSON 工具 ---------------- */

static int mk_event(char *buf, size_t cap, const char *eid, const char *sid, const char *text)
{
    int n = snprintf(buf, cap,
                     "{\"version\":1,\"event_id\":\"%s\",\"event_type\":\"asr_final\","
                     "\"pid\":16112,\"session_id\":\"%s\",\"text\":\"%s\","
                     "\"is_final\":true,\"received_at_ms\":1763000000000}",
                     eid, sid, text);
    return (n < 0 || (size_t)n >= cap) ? -1 : n;
}

/* ---------------- 1) 帧编解码 ---------------- */

static void test_frame(void)
{
    uint8_t frame[TGB_MAX_FRAME];
    size_t flen = 0;
    tgb_hdr h;
    const char *body = "{\"a\":1}";

    printf("\n[U-FRAME] 帧编解码与边界\n");

    ok(tgb_frame_pack(TGB_TYPE_REQ, body, (uint32_t)strlen(body), frame, sizeof(frame), &flen) == 0,
       "U-F1 pack 成功");
    ok_ll((long long)flen, (long long)(TGB_HDR_LEN + strlen(body)), "U-F2 帧长 = 16 + body");
    ok(tgb_hdr_decode(frame, flen, &h) == TGB_FRAME_OK, "U-F3 解头通过");
    ok_ll(h.body_len, (long long)strlen(body), "U-F4 body_len 正确");
    ok(tgb_body_check(frame, &h, flen) == TGB_FRAME_OK, "U-F5 CRC 通过");

    {
        uint8_t bad[TGB_MAX_FRAME];
        memcpy(bad, frame, flen);
        bad[0] ^= 0xFF;
        ok(tgb_hdr_decode(bad, flen, &h) == TGB_ERR_MAGIC, "U-F6 坏 magic 被拒");
        memcpy(bad, frame, flen);
        bad[4] = 9;
        ok(tgb_hdr_decode(bad, flen, &h) == TGB_ERR_FRAME_VER, "U-F7 未知帧版本被拒");
        memcpy(bad, frame, flen);
        bad[6] = 15;
        ok(tgb_hdr_decode(bad, flen, &h) == TGB_ERR_HDRLEN, "U-F8 坏 hdr_len 被拒");
        memcpy(bad, frame, flen);
        bad[5] = TGB_TYPE_ACK;
        ok(tgb_hdr_decode(bad, flen, &h) == TGB_ERR_TYPE, "U-F9 非 REQ 帧被拒");
        memcpy(bad, frame, flen);
        tgz2_put_u32(bad + 8, TGB_MAX_BODY + 1);
        ok(tgb_hdr_decode(bad, flen, &h) == TGB_ERR_OVERSIZE, "U-F10 body 超长被拒");
        memcpy(bad, frame, flen);
        bad[TGB_HDR_LEN] ^= 0x20;
        ok(tgb_hdr_decode(bad, flen, &h) == TGB_FRAME_OK &&
           tgb_body_check(bad, &h, flen) == TGB_ERR_CRC, "U-F11 CRC 不符被拒");
        ok(tgb_hdr_decode(frame, 3, &h) == TGB_ERR_SHORT, "U-F12 不足 4 字节要求继续读");
        ok(tgb_hdr_decode(frame, TGB_HDR_LEN, &h) == TGB_FRAME_OK, "U-F13 只有头也能解");
        ok(tgb_body_check(frame, &h, TGB_HDR_LEN) == TGB_ERR_SHORT, "U-F14 body 未到齐要求继续读");
    }

    ok(tgb_frame_pack(TGB_TYPE_REQ, body, TGB_MAX_BODY + 1, frame, sizeof(frame), &flen) == -1,
       "U-F15 pack 拒绝超长 body");
    ok(tgb_frame_pack(TGB_TYPE_REQ, body, 10, frame, 20, &flen) == -1,
       "U-F16 pack 拒绝缓冲不足");
}

static void test_crc_crosscheck(void)
{
    static const char *samples[] = {
        "", "a", "abc", "TGZ2", "{\"a\":1}", "天猫精灵现在几点了",
        "0123456789012345678901234567890123456789012345678901234567890123456789"
    };
    int i, bad = 0;

    printf("\n[U-CRC] 与 T3/T4 的 tgz2_fnv1a 逐值对拍\n");
    for (i = 0; i < (int)(sizeof(samples) / sizeof(samples[0])); i++) {
        const char *s = samples[i];
        uint32_t a = tgb_crc32(s, strlen(s));
        uint32_t b = tgz2_fnv1a((const uint8_t *)s, strlen(s));
        if (a != b) {
            char d[128];
            snprintf(d, sizeof(d), "sample %d: tgb=%08x tgz2=%08x", i, a, b);
            ok_impl(0, "U-C1 CRC 一致", d);
            bad = 1;
            break;
        }
    }
    if (!bad) ok(1, "U-C1 CRC 与 tgz2_fnv1a 完全一致");
    ok_ll((long long)tgb_crc32("a", 1), 0xe40c292cLL, "U-C2 golden('a') = 0xe40c292c");
    ok_ll((long long)tgb_crc32("abc", 3), 0x1a47e90bLL, "U-C3 golden('abc') = 0x1a47e90b");
}

/* ---------------- 2) 消息解析 ---------------- */

static void test_event(void)
{
    char body[2048];
    tgb_event ev;
    const char *field = NULL;
    tgb_eval r;

    printf("\n[U-EVENT] 消息解析与校验\n");

    mk_event(body, sizeof(body), "evt-1", "sess-1", "天猫精灵现在几点了");
    r = tgb_event_parse(body, strlen(body), &ev, &field);
    ok(r == TGB_E_OK, "U-E1 合法事件解析通过");
    ok_str(ev.event_id, "evt-1", "U-E2 event_id");
    ok_str(ev.session_id, "sess-1", "U-E3 session_id");
    ok_str(ev.text, "天猫精灵现在几点了", "U-E4 text 原样保留");
    ok_ll(ev.text_bytes, 27, "U-E5 text_bytes = 27");
    ok_ll(ev.text_chars, 9, "U-E6 text_chars = 9");
    ok_ll(ev.pid, 16112, "U-E7 pid");
    ok_ll(ev.is_final, 1, "U-E8 is_final");
    ok_ll(ev.received_at_ms, 1763000000000LL, "U-E9 received_at_ms");

    /* \uXXXX 转义 == 原始 UTF-8 */
    snprintf(body, sizeof(body),
             "{\"version\":1,\"event_id\":\"evt-2\",\"event_type\":\"asr_final\",\"pid\":1,"
             "\"session_id\":\"s2\",\"text\":\"\\u5929\\u732b\\u7cbe\\u7075\\u73b0\\u5728\\u51e0\\u70b9\\u4e86\","
             "\"is_final\":true,\"received_at_ms\":1}");
    r = tgb_event_parse(body, strlen(body), &ev, &field);
    ok(r == TGB_E_OK && strcmp(ev.text, "天猫精灵现在几点了") == 0,
       "U-E10 \\uXXXX 转义解出相同 UTF-8");
    ok_ll(ev.text_chars, 9, "U-E11 转义后字符数一致");

    /* 未知字段被忽略 */
    snprintf(body, sizeof(body),
             "{\"version\":1,\"event_id\":\"evt-3\",\"event_type\":\"asr_final\",\"pid\":1,"
             "\"session_id\":\"s3\",\"text\":\"x\",\"is_final\":true,\"received_at_ms\":1,"
             "\"future\":true,\"future2\":123,\"future3\":\"y\",\"future4\":null}");
    ok(tgb_event_parse(body, strlen(body), &ev, &field) == TGB_E_OK, "U-E12 未知字段可忽略");

    /* 各类拒收 */
#define REJECT_CASE(json, want, name) do {                                   \
        r = tgb_event_parse((json), strlen(json), &ev, &field);              \
        ok_impl(r == (want), (name), tgb_eval_name(r));                      \
    } while (0)

    REJECT_CASE("{\"version\":2,\"event_id\":\"e\",\"event_type\":\"asr_final\",\"pid\":1,"
                "\"session_id\":\"s\",\"text\":\"x\",\"is_final\":true,\"received_at_ms\":1}",
                TGB_E_BAD_VERSION, "U-E13 未知消息版本被拒");
    REJECT_CASE("{\"version\":1,\"event_id\":\"e\",\"event_type\":\"asr_partial\",\"pid\":1,"
                "\"session_id\":\"s\",\"text\":\"x\",\"is_final\":true,\"received_at_ms\":1}",
                TGB_E_BAD_EVENT_TYPE, "U-E14 非 asr_final 被拒");
    REJECT_CASE("{\"version\":1,\"event_id\":\"e\",\"event_type\":\"asr_final\",\"pid\":1,"
                "\"session_id\":\"s\",\"text\":\"x\",\"is_final\":false,\"received_at_ms\":1}",
                TGB_E_BAD_IS_FINAL, "U-E15 is_final=false 被拒");
    REJECT_CASE("{\"version\":1,\"event_id\":\"\",\"event_type\":\"asr_final\",\"pid\":1,"
                "\"session_id\":\"s\",\"text\":\"x\",\"is_final\":true,\"received_at_ms\":1}",
                TGB_E_EMPTY_EVENT_ID, "U-E16 空 event_id 被拒");
    REJECT_CASE("{\"version\":1,\"event_id\":\"e\",\"event_type\":\"asr_final\",\"pid\":1,"
                "\"session_id\":\"\",\"text\":\"x\",\"is_final\":true,\"received_at_ms\":1}",
                TGB_E_EMPTY_SESSION_ID, "U-E17 空 session_id 被拒");
    REJECT_CASE("{\"version\":1,\"event_id\":\"e x\",\"event_type\":\"asr_final\",\"pid\":1,"
                "\"session_id\":\"s\",\"text\":\"x\",\"is_final\":true,\"received_at_ms\":1}",
                TGB_E_BAD_EVENT_ID, "U-E18 非法字符的 event_id 被拒");
    REJECT_CASE("{\"version\":1,\"event_id\":\"e\",\"event_type\":\"asr_final\",\"pid\":1,"
                "\"session_id\":\"s\",\"text\":\"\",\"is_final\":true,\"received_at_ms\":1}",
                TGB_E_EMPTY_TEXT, "U-E19 空文本被拒");
    REJECT_CASE("{\"version\":1,\"event_id\":\"e\",\"event_type\":\"asr_final\",\"pid\":0,"
                "\"session_id\":\"s\",\"text\":\"x\",\"is_final\":true,\"received_at_ms\":1}",
                TGB_E_BAD_PID, "U-E20 pid=0 被拒");
    REJECT_CASE("{\"version\":1,\"event_id\":\"e\",\"event_type\":\"asr_final\",\"pid\":1,"
                "\"session_id\":\"s\",\"text\":\"x\",\"is_final\":true,\"received_at_ms\":0}",
                TGB_E_BAD_TIME, "U-E21 received_at_ms=0 被拒");
    REJECT_CASE("{\"version\":1,\"event_id\":\"e\",\"event_type\":\"asr_final\",\"pid\":1,"
                "\"session_id\":\"s\",\"text\":\"\\u0001\",\"is_final\":true,\"received_at_ms\":1}",
                TGB_E_TEXT_CONTROL, "U-E22 文本含控制字符被拒");
    REJECT_CASE("{\"version\":1,\"event_id\":\"e\",\"event_type\":\"asr_final\",\"pid\":1,"
                "\"session_id\":\"s\",\"text\":\"\\ud800\",\"is_final\":true,\"received_at_ms\":1}",
                TGB_E_BAD_UTF8, "U-E23 孤立代理项被拒");
    REJECT_CASE("{\"version\":1,\"event_id\":\"e\",\"event_type\":\"asr_final\",\"pid\":1,"
                "\"session_id\":\"s\",\"is_final\":true,\"received_at_ms\":1}",
                TGB_E_MISSING, "U-E24 缺 text 被拒");
    REJECT_CASE("{\"version\":1,\"event_id\":\"e\",\"event_id\":\"f\",\"event_type\":\"asr_final\","
                "\"pid\":1,\"session_id\":\"s\",\"text\":\"x\",\"is_final\":true,\"received_at_ms\":1}",
                TGB_E_DUP_FIELD, "U-E25 重复字段被拒");
    REJECT_CASE("{\"version\":1,\"event_id\":\"e\",\"event_type\":\"asr_final\",\"pid\":1,"
                "\"session_id\":\"s\",\"text\":\"x\",\"is_final\":true,\"received_at_ms\":1}x",
                TGB_E_TRAILING, "U-E26 尾随垃圾被拒");
    REJECT_CASE("{\"version\":1,\"event_id\":\"e\",\"event_type\":\"asr_final\",\"pid\":\"1\","
                "\"session_id\":\"s\",\"text\":\"x\",\"is_final\":true,\"received_at_ms\":1}",
                TGB_E_BAD_TYPE, "U-E27 字段类型不对被拒");
    REJECT_CASE("{\"version\":1,\"event_id\":\"e\",\"event_type\":\"asr_final\",\"pid\":1,"
                "\"session_id\":\"s\",\"text\":\"x\",\"is_final\":true,"
                "\"received_at_ms\":1,\"obj\":{\"a\":1}}",
                TGB_E_BAD_TYPE, "U-E28 嵌套对象被拒");
    REJECT_CASE("not json at all", TGB_E_BAD_JSON, "U-E29 非 JSON 被拒");
    REJECT_CASE("", TGB_E_BAD_JSON, "U-E30 空 body 被拒");

    /* 文本长度边界：511 收、512 拒 */
    {
        char text[TGB_MAX_TEXT_BYTES + 2];
        memset(text, 'a', sizeof(text) - 1);
        text[sizeof(text) - 1] = '\0';                 /* 512 字节 */
        mk_event(body, sizeof(body), "e", "s", text);
        r = tgb_event_parse(body, strlen(body), &ev, &field);
        ok(r == TGB_E_TEXT_TOO_LONG, "U-E31 512 字节文本被拒（Hook 上限 511）");

        text[511] = '\0';                              /* 511 字节 */
        mk_event(body, sizeof(body), "e", "s", text);
        r = tgb_event_parse(body, strlen(body), &ev, &field);
        ok(r == TGB_E_OK, "U-E32 511 字节文本被接受");
        ok_ll(ev.text_bytes, 511, "U-E33 text_bytes = 511");
    }
}

static void test_utf8(void)
{
    printf("\n[U-UTF8] 严格 UTF-8 校验\n");

    ok(tgb_utf8_validate("abc", 3) == 0, "U-U1 ASCII 通过");
    ok(tgb_utf8_validate("天猫精灵", 12) == 0, "U-U2 中文通过");
    ok(tgb_utf8_validate("\xF0\x9F\x98\x80", 4) == 0, "U-U3 4 字节 emoji 通过");
    ok(tgb_utf8_validate("\xC3\x28", 2) != 0, "U-U4 截断 2 字节序列被拒");
    ok(tgb_utf8_validate("\xC0\xAF", 2) != 0, "U-U5 overlong 被拒");
    ok(tgb_utf8_validate("\xE0\x80\xAF", 3) != 0, "U-U6 3 字节 overlong 被拒");
    ok(tgb_utf8_validate("\xED\xA0\x80", 3) != 0, "U-U7 代理区(U+D800) 被拒");
    ok(tgb_utf8_validate("\xF4\x90\x80\x80", 4) != 0, "U-U8 > U+10FFFF 被拒");
    ok(tgb_utf8_validate("\xF5\x80\x80\x80", 4) != 0, "U-U9 非法首字节 0xF5 被拒");
    ok(tgb_utf8_validate("\xE5\xA4", 2) != 0, "U-U10 截断 3 字节序列被拒");
    /* "a" + "天猫" + 😀 = 1 + 2 + 1 = 4 个码点 / 11 字节 */
    ok_ll(tgb_utf8_count_chars("a天猫\xF0\x9F\x98\x80", 11), 4, "U-U11 码点计数（ASCII+中文+4 字节 emoji）");
    ok_ll(tgb_utf8_count_chars("天猫精灵现在几点了", 27), 9, "U-U12 码点计数（纯中文 9 字）");
}

/* ---------------- 3) 记录序列化 ---------------- */

static void test_record(void)
{
    char body[1024];
    char rec[TGB_REC_LINE_MAX];
    tgb_event ev, back;
    const char *field = NULL;
    int n;

    printf("\n[U-RECORD] 落库记录序列化 / 反解\n");

    mk_event(body, sizeof(body), "evt-rec-1", "sess-9", "天猫精灵现在几点了");
    ok(tgb_event_parse(body, strlen(body), &ev, &field) == TGB_E_OK, "U-R1 源事件解析");

    n = tgb_event_to_record(&ev, 1795000000000LL, 1795000000123LL, 7, rec, sizeof(rec));
    ok(n > 0, "U-R2 记录序列化成功");
    ok((size_t)n == strlen(rec), "U-R3 返回长度 = 字符串长度");
    ok(rec[n - 1] == '\n', "U-R4 记录以换行结尾");
    ok(strstr(rec, "\"rec\":\"asr_final\"") != NULL, "U-R5 带 rec 标记");
    ok(strstr(rec, "\"seq\":7") != NULL, "U-R6 带服务端 seq");
    ok(strstr(rec, "\"recv_at_ms\":1795000000000") != NULL, "U-R7 带服务端接收时刻");
    ok(strstr(rec, "\"stored_at_ms\":1795000000123") != NULL, "U-R8 带落盘时刻");
    ok(strstr(rec, "\"is_final\":true") != NULL, "U-R9 is_final 为布尔 true");

    ok(tgb_event_parse(rec, strlen(rec), &back, &field) == TGB_E_OK,
       "U-R10 记录能被同一解析器读回（回放用同一套校验）");
    ok_str(back.event_id, ev.event_id, "U-R11 回读 event_id 一致");
    ok_str(back.text, ev.text, "U-R12 回读 text 一致");
    ok_ll(back.text_bytes, ev.text_bytes, "U-R13 回读 text_bytes 一致");

    {
        char tiny[128];
        ok(tgb_event_to_record(&ev, 1, 2, 1, tiny, sizeof(tiny)) == -1,
           "U-R14 缓冲不足时拒绝生成半条记录");
    }
}

/* ---------------- 4) 去重表 ---------------- */

static void test_dedup(void)
{
    tgb_dedup *d;
    int i, added = 0;

    printf("\n[U-DEDUP] 幂等去重与 FIFO 淘汰\n");

    d = tgb_dedup_new(64);
    ok(d != NULL, "U-D1 建表");
    ok_ll(tgb_dedup_capacity(d), 64, "U-D2 容量按 2 的幂");

    ok_ll(tgb_dedup_add(d, "evt-a"), 1, "U-D3 首次加入 = 新增");
    ok_ll(tgb_dedup_add(d, "evt-a"), 0, "U-D4 重复加入 = 命中");
    ok_ll(tgb_dedup_contains(d, "evt-a"), 1, "U-D5 contains 命中");
    ok_ll(tgb_dedup_contains(d, "evt-b"), 0, "U-D6 contains 未命中");

    for (i = 0; i < 63; i++) {
        char id[32];
        snprintf(id, sizeof(id), "fill-%02d", i);
        added += tgb_dedup_add(d, id);
    }
    ok_ll(added, 63, "U-D7 未触发淘汰前全部新增");
    ok_ll((long long)tgb_dedup_size(d), 64, "U-D8 表已满");
    ok_ll(tgb_dedup_evicted(d), 0, "U-D9 尚无淘汰");

    ok_ll(tgb_dedup_add(d, "evt-new"), 1, "U-D10 满表后仍可加入");
    ok_ll(tgb_dedup_evicted(d), 1, "U-D11 触发一次 FIFO 淘汰");
    ok_ll(tgb_dedup_contains(d, "evt-a"), 0, "U-D12 最老的被淘汰");
    ok_ll(tgb_dedup_contains(d, "evt-new"), 1, "U-D13 新事件在表内");
    ok_ll((long long)tgb_dedup_size(d), 64, "U-D14 容量始终有界");

    ok_ll(tgb_dedup_add(d, "evt-X"), 1, "U-D15 大小写不同视为不同事件");
    ok_ll(tgb_dedup_add(d, "evt-x"), 1, "U-D16 同前缀不同名不误判");

    tgb_dedup_free(d);
}

/* ---------------- 5) JSONL 存储 ---------------- */

static void test_store(void)
{
    tgb_store s;
    char dir[TGB_PATH_MAX];
    char path[TGB_PATH_MAX];
    char rec[TGB_REC_LINE_MAX];
    char body[1024];
    char raw[4096];
    char err[200];
    tgb_event ev;
    const char *field = NULL;
    unsigned long lines = 0, bad = 0;
    long long truncated = 0;
    int i;

    printf("\n[U-STORE] JSONL 追加 / 回放 / 尾部修复 / 故障注入\n");

    snprintf(dir, sizeof(dir), "%s/store1", g_root);
    UT_MKDIR(dir);
    snprintf(path, sizeof(path), "%s/events.jsonl", dir);

    ok(tgb_store_open(&s, dir, "events.jsonl", -1, err, sizeof(err)) == 0, "U-S1 打开成功");
    for (i = 0; i < 3; i++) {
        char eid[32];
        snprintf(eid, sizeof(eid), "evt-s-%d", i);
        mk_event(body, sizeof(body), eid, "sess", "记录");
        tgb_event_parse(body, strlen(body), &ev, &field);
        {
            int n = tgb_event_to_record(&ev, 1, 2, (unsigned long)i, rec, sizeof(rec));
            ok(n > 0, "U-S2 记录生成");
            ok(tgb_store_append(&s, rec, (size_t)n, err, sizeof(err)) == 0, "U-S3 追加并 fsync 成功");
        }
    }
    tgb_store_close(&s);
    ok_ll(count_lines(path), 3, "U-S4 文件里 3 条记录");

    ok(tgb_store_replay(dir, "events.jsonl", NULL, NULL, &lines, &bad, err, sizeof(err)) == 0,
       "U-S5 回放成功");
    ok_ll((long long)lines, 3, "U-S6 回放 3 条");
    ok_ll((long long)bad, 0, "U-S7 无坏行");

    /* 尾部半条记录 */
    append_raw(path, "{\"version\":1,\"rec\":\"asr_final\",\"event_id\":\"evt-trunc", 56);
    ok(tgb_store_replay(dir, "events.jsonl", NULL, NULL, &lines, &bad, err, sizeof(err)) == 0,
       "U-S8 半条记录下回放仍成功");
    ok_ll((long long)lines, 3, "U-S9 半条记录不计入有效行");
    ok_ll((long long)bad, 1, "U-S10 半条记录计入坏行");

    ok(tgb_store_repair(dir, "events.jsonl", &truncated, err, sizeof(err)) == 0, "U-S11 尾部修复成功");
    ok(truncated > 0, "U-S12 修复确实截掉了字节");
    {
        long n = read_file(path, raw, sizeof(raw));
        ok(n > 0 && raw[n - 1] == '\n', "U-S13 修复后文件以换行结尾");
    }
    ok(tgb_store_replay(dir, "events.jsonl", NULL, NULL, &lines, &bad, err, sizeof(err)) == 0 &&
       lines == 3 && bad == 0, "U-S14 修复后回放 3 条 0 坏行");
    ok(tgb_store_repair(dir, "events.jsonl", &truncated, err, sizeof(err)) == 0 && truncated == 0,
       "U-S15 干净文件不需要修复（幂等）");

    /* 追加写要从修复后的位置继续，不能和旧行粘连 */
    ok(tgb_store_open(&s, dir, "events.jsonl", -1, err, sizeof(err)) == 0, "U-S16 重新打开");
    mk_event(body, sizeof(body), "evt-s-after", "sess", "修复后追加");
    tgb_event_parse(body, strlen(body), &ev, &field);
    {
        int n = tgb_event_to_record(&ev, 1, 2, 9, rec, sizeof(rec));
        ok(tgb_store_append(&s, rec, (size_t)n, err, sizeof(err)) == 0, "U-S17 追加成功");
    }
    tgb_store_close(&s);
    ok(tgb_store_replay(dir, "events.jsonl", NULL, NULL, &lines, &bad, err, sizeof(err)) == 0 &&
       lines == 4 && bad == 0, "U-S18 修复后追加的记录可读（4 条 0 坏行）");

    /* 故障注入：成功 2 次后强制失败 */
    {
        char dir2[TGB_PATH_MAX];
        char path2[TGB_PATH_MAX];
        snprintf(dir2, sizeof(dir2), "%s/store2", g_root);
        UT_MKDIR(dir2);
        snprintf(path2, sizeof(path2), "%s/events.jsonl", dir2);

        ok(tgb_store_open(&s, dir2, "events.jsonl", 2, err, sizeof(err)) == 0, "U-S19 带注入打开");
        for (i = 0; i < 4; i++) {
            char eid[32];
            int rc;
            snprintf(eid, sizeof(eid), "evt-f-%d", i);
            mk_event(body, sizeof(body), eid, "sess", "注入");
            tgb_event_parse(body, strlen(body), &ev, &field);
            {
                int n = tgb_event_to_record(&ev, 1, 2, (unsigned long)i, rec, sizeof(rec));
                rc = tgb_store_append(&s, rec, (size_t)n, err, sizeof(err));
            }
            if (i < 2) ok(rc == 0, "U-S20 前 2 条写入成功");
            else if (i == 2) ok(rc == -1 && s.failed == 1, "U-S21 第 3 条注入失败并进入 fail-stop");
            else ok(rc == -2, "U-S22 fail-stop 后直接拒绝（未尝试写盘）");
        }
        tgb_store_close(&s);
        ok_ll(count_lines(path2), 2, "U-S23 失败的事件没有留下记录");
        ok(tgb_store_replay(dir2, "events.jsonl", NULL, NULL, &lines, &bad, err, sizeof(err)) == 0 &&
           lines == 2 && bad == 0, "U-S24 故障后文件仍可完整回放");
    }

    /* 真实写失败（只读 fd）：必须失败且不改文件 */
    {
        char dir3[TGB_PATH_MAX];
        char path3[TGB_PATH_MAX];
        int ro;
        snprintf(dir3, sizeof(dir3), "%s/store3", g_root);
        UT_MKDIR(dir3);
        snprintf(path3, sizeof(path3), "%s/events.jsonl", dir3);

        ok(tgb_store_open(&s, dir3, "events.jsonl", -1, err, sizeof(err)) == 0, "U-S25 打开");
        mk_event(body, sizeof(body), "evt-ro", "sess", "写不进去");
        tgb_event_parse(body, strlen(body), &ev, &field);
        {
            int n = tgb_event_to_record(&ev, 1, 2, 1, rec, sizeof(rec));
            tgb_store_close(&s);
            ro = UT_OPEN_RO(path3);
            ok(ro >= 0, "U-S26 以只读方式打开同一文件");
            s.fd = ro;
            s.offset = 0;
            s.failed = 0;
            s.fault_after = -1;
            s.appends = 0;
            s.faults = 0;
            ok(tgb_store_append(&s, rec, (size_t)n, err, sizeof(err)) == -1,
               "U-S27 真实写失败时 append 返回失败");
            UT_CLOSE(ro);
        }
        ok_ll(count_lines(path3), 0, "U-S28 写失败没有产生任何记录");
    }

    /* 修复：整个文件都是半条 -> 清空 */
    {
        char dir4[TGB_PATH_MAX];
        char path4[TGB_PATH_MAX];
        snprintf(dir4, sizeof(dir4), "%s/store4", g_root);
        UT_MKDIR(dir4);
        snprintf(path4, sizeof(path4), "%s/events.jsonl", dir4);
        append_raw(path4, "{\"version\":1,\"half", 16);
        ok(tgb_store_repair(dir4, "events.jsonl", &truncated, err, sizeof(err)) == 0 && truncated == 16,
           "U-S29 全是半条时整体清空");
        ok_ll(count_lines(path4), 0, "U-S30 清空后 0 行");
    }

    /* 不存在的文件：回放 0 条、修复 0（首次运行语义） */
    {
        char dir5[TGB_PATH_MAX];
        snprintf(dir5, sizeof(dir5), "%s/store5", g_root);
        UT_MKDIR(dir5);
        ok(tgb_store_replay(dir5, "events.jsonl", NULL, NULL, &lines, &bad, err, sizeof(err)) == 0 &&
           lines == 0 && bad == 0, "U-S31 首次运行回放 0 条");
        ok(tgb_store_repair(dir5, "events.jsonl", &truncated, err, sizeof(err)) == 0 && truncated == 0,
           "U-S32 首次运行修复为 no-op");
    }
}

int main(int argc, char **argv)
{
    if (argc > 1) snprintf(g_root, sizeof(g_root), "%s", argv[1]);
    else snprintf(g_root, sizeof(g_root), "_tgb_unit");
    UT_MKDIR(g_root);

    printf("tgb_unit_test -- scratch dir: %s\n", g_root);
    test_frame();
    test_crc_crosscheck();
    test_event();
    test_utf8();
    test_record();
    test_dedup();
    test_store();

    printf("\n=== unit: %d passed, %d failed ===\n", g_pass, g_fail);
    return g_fail == 0 ? 0 : 1;
}
