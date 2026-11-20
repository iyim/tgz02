/*
 * worker_unit_test.c -- AI Worker 主机单元测试（Windows + TDM-GCC，或 Linux + gcc）
 *
 * 覆盖（与任务书 §7 主机测试编号对应）：
 *   U1  正常读取多条 JSONL                    -> reader
 *   U2  半行等待补全（不处理半行）              -> reader
 *   U3  非法 JSON                             -> parse + reader 跳过
 *   U4  非 final 事件拒收                      -> parse
 *   U5  重复 event_id（最近窗口去重）           -> state
 *   U6  seq 缺口 / 回退 / 新段                 -> seq_gap
 *   U9  文件被截断                             -> reader
 *   U10 文件被重新创建（inode/文件索引变化）     -> reader
 *   U11 状态文件损坏                            -> state
 *   U12 Mock Provider 返回失败/超时             -> provider
 *   U13 超长记录                                -> reader
 *
 * 不在本文件里的（需要真起进程，见 worker_integration_test.py）：
 *   U7 消费过程中进程退出、U8 重启后继续消费、U14 长跑内存不增长。
 *
 * 编译：见 run_host_tests.ps1（-O2 -Wall -Wextra -std=gnu99，不允许有警告）
 */
#include "consumer_state.h"
#include "event_reader.h"
#include "provider.h"
#include "seq_gap.h"
#include "worker_status.h"
#include "worker_util.h"

#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static int g_pass;
static int g_fail;
static const char *g_ctx = "(none)";
static char g_dir[512];

#define T(name) do { g_ctx = (name); } while (0)

static void fail_line(const char *what, int line, const char *fmt, ...)
{
    va_list ap;
    g_fail++;
    printf("  FAIL [%s] %s:%d  %s : ", g_ctx, __FILE__, line, what);
    va_start(ap, fmt);
    vprintf(fmt, ap);
    va_end(ap);
    printf("\n");
}

#define OK(cond) do { \
    if (cond) g_pass++; \
    else fail_line(#cond, __LINE__, "condition false"); \
} while (0)

#define EQ_LL(got, want) do { \
    long long g_ = (long long)(got), w_ = (long long)(want); \
    if (g_ == w_) g_pass++; \
    else fail_line(#got, __LINE__, "got %lld want %lld", g_, w_); \
} while (0)

#define EQ_STR(got, want) do { \
    const char *g_ = (got), *w_ = (want); \
    if (g_ != NULL && w_ != NULL && strcmp(g_, w_) == 0) g_pass++; \
    else fail_line(#got, __LINE__, "got \"%s\" want \"%s\"", g_ ? g_ : "(null)", w_ ? w_ : "(null)"); \
} while (0)

/* ---------------- 文件工具 ---------------- */

static void mk_path(char *out, size_t cap, const char *name)
{
    snprintf(out, cap, "%s/%s", g_dir, name);
}

static int write_bytes(const char *path, const void *data, size_t len, int append)
{
    FILE *f = fopen(path, append ? "ab" : "wb");
    size_t n;

    if (f == NULL) return -1;
    n = fwrite(data, 1, len, f);
    fclose(f);
    return (n == len) ? 0 : -1;
}

static int remove_file(const char *path)
{
    return remove(path);
}

/* 造一条合法的 asr_final 记录（与桥接端 tgb_event_to_record 的输出格式一致） */
static int mk_rec(char *buf, size_t cap, int seq, long long pid, const char *id,
                  const char *text)
{
    return snprintf(buf, cap,
        "{\"version\":1,\"rec\":\"asr_final\",\"event_id\":\"%s\",\"event_type\":\"asr_final\","
        "\"pid\":%lld,\"session_id\":\"1000\",\"text\":\"%s\",\"text_bytes\":%d,\"text_chars\":1,"
        "\"is_final\":true,\"received_at_ms\":100,\"recv_at_ms\":101,\"stored_at_ms\":102,"
        "\"seq\":%d}\n",
        id, pid, text, (int)strlen(text), seq);
}

/* ---------------- U3/U4：解析与校验 ---------------- */

static void test_parse_valid(void)
{
    t6b_event ev;
    const char *field = NULL;
    char line[1024];
    int n;

    T("parse/valid");
    n = mk_rec(line, sizeof(line), 7, 4242, "t5b-4242-111-g1", "hello world");
    EQ_LL(t6b_parse_record(line, (size_t)n, &ev, &field), T6B_EV_OK);
    EQ_STR(ev.event_id, "t5b-4242-111-g1");
    EQ_STR(ev.event_type, "asr_final");
    EQ_STR(ev.rec, "asr_final");
    EQ_STR(ev.session_id, "1000");
    EQ_STR(ev.text, "hello world");
    EQ_LL(ev.pid, 4242);
    EQ_LL(ev.seq, 7);
    EQ_LL(ev.is_final, 1);
    EQ_LL(ev.version, 1);
    EQ_LL(ev.stored_at_ms, 102);
    EQ_LL(ev.text_bytes, 11);
}

static void test_parse_utf8_forms(void)
{
    t6b_event ev;
    const char *field = NULL;
    static const char *cases[] = {
        "{\"version\":1,\"rec\":\"asr_final\",\"event_id\":\"a1\",\"event_type\":\"asr_final\","
        "\"pid\":1,\"session_id\":\"s\",\"text\":\"\\u4f60\\u597d\",\"is_final\":true,\"seq\":1}",
        /* 代理对：U+1F600 */
        "{\"version\":1,\"rec\":\"asr_final\",\"event_id\":\"a2\",\"event_type\":\"asr_final\","
        "\"pid\":1,\"session_id\":\"s\",\"text\":\"\\ud83d\\ude00\",\"is_final\":true,\"seq\":2}",
        /* 转义引号与反斜杠 */
        "{\"version\":1,\"rec\":\"asr_final\",\"event_id\":\"a3\",\"event_type\":\"asr_final\","
        "\"pid\":1,\"session_id\":\"s\",\"text\":\"a\\\"b\\\\c\",\"is_final\":true,\"seq\":3}",
        /* 未知字段允许（前向兼容），值为标量 */
        "{\"version\":1,\"rec\":\"asr_final\",\"event_id\":\"a4\",\"event_type\":\"asr_final\","
        "\"pid\":1,\"session_id\":\"s\",\"text\":\"x\",\"is_final\":true,\"seq\":4,"
        "\"future_flag\":true,\"future_num\":12,\"future_null\":null}",
        /* 行尾带 \r\n */
        "{\"version\":1,\"rec\":\"asr_final\",\"event_id\":\"a5\",\"event_type\":\"asr_final\","
        "\"pid\":1,\"session_id\":\"s\",\"text\":\"y\",\"is_final\":true,\"seq\":5}\r\n"
    };

    T("parse/utf8+escapes");
    EQ_LL(t6b_parse_record(cases[0], strlen(cases[0]), &ev, &field), T6B_EV_OK);
    EQ_STR(ev.text, "\xe4\xbd\xa0\xe5\xa5\xbd");

    EQ_LL(t6b_parse_record(cases[1], strlen(cases[1]), &ev, &field), T6B_EV_OK);
    EQ_STR(ev.text, "\xf0\x9f\x98\x80");

    EQ_LL(t6b_parse_record(cases[2], strlen(cases[2]), &ev, &field), T6B_EV_OK);
    EQ_STR(ev.text, "a\"b\\c");

    EQ_LL(t6b_parse_record(cases[3], strlen(cases[3]), &ev, &field), T6B_EV_OK);
    EQ_LL(t6b_parse_record(cases[4], strlen(cases[4]), &ev, &field), T6B_EV_OK);
    EQ_STR(ev.text, "y");
}

static void test_parse_rejects(void)
{
    t6b_event ev;

    struct { const char *line; t6b_eval want; const char *want_field; } cases[] = {
        /* U3 非法 JSON */
        { "{\"version\":1,", T6B_EV_BAD_JSON, NULL },
        { "not json at all", T6B_EV_BAD_JSON, NULL },
        { "{\"version\":1,\"rec\":\"asr_final\",}", T6B_EV_BAD_JSON, NULL },
        /* 嵌套对象：拒收 */
        { "{\"version\":1,\"rec\":\"asr_final\",\"event_id\":\"a\",\"event_type\":\"asr_final\","
          "\"pid\":1,\"session_id\":\"s\",\"text\":\"x\",\"is_final\":true,\"seq\":1,"
          "\"nested\":{\"k\":1}}", T6B_EV_BAD_JSON, NULL },
        /* 同名字段重复 */
        { "{\"version\":1,\"version\":1,\"rec\":\"asr_final\",\"event_id\":\"a\","
          "\"event_type\":\"asr_final\",\"pid\":1,\"session_id\":\"s\",\"text\":\"x\","
          "\"is_final\":true,\"seq\":1}", T6B_EV_DUP_FIELD, "version" },
        /* 对象结束后还有垃圾 */
        { "{\"version\":1,\"rec\":\"asr_final\",\"event_id\":\"a\",\"event_type\":\"asr_final\","
          "\"pid\":1,\"session_id\":\"s\",\"text\":\"x\",\"is_final\":true,\"seq\":1} xx",
          T6B_EV_TRAILING, NULL },
        /* U4 非 final */
        { "{\"version\":1,\"rec\":\"asr_final\",\"event_id\":\"a\",\"event_type\":\"asr_final\","
          "\"pid\":1,\"session_id\":\"s\",\"text\":\"x\",\"is_final\":false,\"seq\":1}",
          T6B_EV_BAD_IS_FINAL, "is_final" },
        /* rec 不是 asr_final */
        { "{\"version\":1,\"rec\":\"asr_partial\",\"event_id\":\"a\",\"event_type\":\"asr_partial\","
          "\"pid\":1,\"session_id\":\"s\",\"text\":\"x\",\"is_final\":true,\"seq\":1}",
          T6B_EV_BAD_REC, "rec" },
        { "{\"version\":2,\"rec\":\"asr_final\",\"event_id\":\"a\",\"event_type\":\"asr_final\","
          "\"pid\":1,\"session_id\":\"s\",\"text\":\"x\",\"is_final\":true,\"seq\":1}",
          T6B_EV_BAD_VERSION, "version" },
        /* 类型不对 */
        { "{\"version\":1,\"rec\":\"asr_final\",\"event_id\":\"a\",\"event_type\":\"asr_final\","
          "\"pid\":\"1\",\"session_id\":\"s\",\"text\":\"x\",\"is_final\":true,\"seq\":1}",
          T6B_EV_BAD_TYPE, "pid" },
        /* event_id 非法字符 */
        { "{\"version\":1,\"rec\":\"asr_final\",\"event_id\":\"a b\",\"event_type\":\"asr_final\","
          "\"pid\":1,\"session_id\":\"s\",\"text\":\"x\",\"is_final\":true,\"seq\":1}",
          T6B_EV_BAD_EVENT_ID, "event_id" },
        { "{\"version\":1,\"rec\":\"asr_final\",\"event_id\":\"\",\"event_type\":\"asr_final\","
          "\"pid\":1,\"session_id\":\"s\",\"text\":\"x\",\"is_final\":true,\"seq\":1}",
          T6B_EV_EMPTY_EVENT_ID, "event_id" },
        /* 空文本 */
        { "{\"version\":1,\"rec\":\"asr_final\",\"event_id\":\"a\",\"event_type\":\"asr_final\","
          "\"pid\":1,\"session_id\":\"s\",\"text\":\"\",\"is_final\":true,\"seq\":1}",
          T6B_EV_EMPTY_TEXT, "text" },
        /* 文本里带控制字符（\u0001） */
        { "{\"version\":1,\"rec\":\"asr_final\",\"event_id\":\"a\",\"event_type\":\"asr_final\","
          "\"pid\":1,\"session_id\":\"s\",\"text\":\"x\\u0001y\",\"is_final\":true,\"seq\":1}",
          T6B_EV_TEXT_CONTROL, "text" },
        /* 非法 UTF-8（0xC0 0xAF 是超长编码） */
        { "{\"version\":1,\"rec\":\"asr_final\",\"event_id\":\"a\",\"event_type\":\"asr_final\","
          "\"pid\":1,\"session_id\":\"s\",\"text\":\"\xC0\xAF\",\"is_final\":true,\"seq\":1}",
          T6B_EV_BAD_UTF8, "text" },
        /* 缺 seq：MISSING */
        { "{\"version\":1,\"rec\":\"asr_final\",\"event_id\":\"a\",\"event_type\":\"asr_final\","
          "\"pid\":1,\"session_id\":\"s\",\"text\":\"x\",\"is_final\":true}",
          T6B_EV_MISSING, "seq" },
        /* seq = 0 不合法（桥接端从 1 开始） */
        { "{\"version\":1,\"rec\":\"asr_final\",\"event_id\":\"a\",\"event_type\":\"asr_final\","
          "\"pid\":1,\"session_id\":\"s\",\"text\":\"x\",\"is_final\":true,\"seq\":0}",
          T6B_EV_BAD_SEQ, "seq" },
        /* pid <= 0 */
        { "{\"version\":1,\"rec\":\"asr_final\",\"event_id\":\"a\",\"event_type\":\"asr_final\","
          "\"pid\":0,\"session_id\":\"s\",\"text\":\"x\",\"is_final\":true,\"seq\":1}",
          T6B_EV_BAD_PID, "pid" },
        /* 没有顶层对象 */
        { "", T6B_EV_BAD_JSON, NULL },
        { "[]", T6B_EV_BAD_JSON, NULL }
    };
    size_t i;

    T("parse/rejects");
    for (i = 0; i < sizeof(cases) / sizeof(cases[0]); i++) {
        const char *f = NULL;
        t6b_eval rc = t6b_parse_record(cases[i].line, strlen(cases[i].line), &ev, &f);
        if ((int)rc != (int)cases[i].want) {
            fail_line("case", __LINE__, "want %s got %s", t6b_eval_name(cases[i].want),
                      t6b_eval_name(rc));
        } else {
            g_pass++;
        }
        if (cases[i].want_field != NULL) {
            if (f == NULL || strcmp(f, cases[i].want_field) != 0) {
                fail_line("case field", __LINE__, "want %s got %s", cases[i].want_field,
                          f ? f : "(null)");
            } else {
                g_pass++;
            }
        }
    }
}

static void test_parse_text_limit(void)
{
    static char line[4096];
    static char text[600];
    t6b_event ev;
    const char *field = NULL;
    int n;

    T("parse/text too long");
    memset(text, 'a', sizeof(text));
    text[T6B_TEXT_MAX] = '\0';               /* 511 字节：合法 */
    n = mk_rec(line, sizeof(line), 1, 1, "e511", text);
    EQ_LL(t6b_parse_record(line, (size_t)n, &ev, &field), T6B_EV_OK);
    EQ_LL(ev.text_bytes, T6B_TEXT_MAX);

    text[T6B_TEXT_MAX] = 'a';                /* 512 字节：超出上限 */
    text[T6B_TEXT_MAX + 1] = '\0';
    n = mk_rec(line, sizeof(line), 1, 1, "e512", text);
    EQ_LL(t6b_parse_record(line, (size_t)n, &ev, &field), T6B_EV_TOO_LONG);
    EQ_STR(field, "text");
}

/* ---------------- U6：seq 缺口 ---------------- */

static void test_gap_rules(void)
{
    t6b_gaptrack g;
    unsigned long from = 0, to = 0, missing = 0;

    T("gap/continue");
    t6b_gap_init(&g);
    EQ_LL(t6b_gap_observe(&g, 100, 1, &from, &to, &missing), T6B_GAP_SEGMENT_START);
    EQ_LL(t6b_gap_observe(&g, 100, 2, NULL, NULL, NULL), T6B_GAP_CONTINUE);
    EQ_LL(t6b_gap_observe(&g, 100, 3, NULL, NULL, NULL), T6B_GAP_CONTINUE);
    EQ_LL(g.gaps, 0);
    EQ_LL(g.resets, 0);

    T("gap/loss");
    EQ_LL(t6b_gap_observe(&g, 100, 6, &from, &to, &missing), T6B_GAP_LOSS);
    EQ_LL(from, 4);
    EQ_LL(to, 5);
    EQ_LL(missing, 2);
    EQ_LL(g.gaps, 1);
    EQ_LL(g.missing_total, 2);
    EQ_LL(g.last_gap_from, 4);
    EQ_LL(g.last_gap_to, 5);

    T("gap/reset");
    EQ_LL(t6b_gap_observe(&g, 100, 1, NULL, NULL, NULL), T6B_GAP_RESET);
    EQ_LL(g.resets, 1);
    EQ_LL(g.gaps, 1);                     /* 回退不算缺口 */
    EQ_LL(t6b_gap_observe(&g, 100, 2, NULL, NULL, NULL), T6B_GAP_CONTINUE);
    EQ_LL(t6b_gap_observe(&g, 100, 3, NULL, NULL, NULL), T6B_GAP_CONTINUE);

    T("gap/repeat same seq");
    EQ_LL(t6b_gap_observe(&g, 100, 3, NULL, NULL, NULL), T6B_GAP_RESET);

    T("gap/new pid segments interleaved");
    EQ_LL(t6b_gap_observe(&g, 200, 1, NULL, NULL, NULL), T6B_GAP_SEGMENT_START);
    EQ_LL(t6b_gap_observe(&g, 200, 2, NULL, NULL, NULL), T6B_GAP_CONTINUE);
    EQ_LL(t6b_gap_observe(&g, 100, 4, NULL, NULL, NULL), T6B_GAP_CONTINUE);
    EQ_LL(t6b_gap_observe(&g, 300, 5, NULL, NULL, NULL), T6B_GAP_SEGMENT_START_HIGH);
    EQ_LL(g.unknown_start, 1);
    EQ_LL(g.gaps, 1);                     /* 新段起点不产生缺口 */

    T("gap/pid table overflow");
    {
        t6b_gaptrack g2;
        long long pid;
        int i;
        t6b_gap_init(&g2);
        for (i = 0; i < 20; i++) {
            pid = 1000 + i;
            (void)t6b_gap_observe(&g2, pid, 1, NULL, NULL, NULL);
        }
        EQ_LL(g2.pids_seen, 20);
        EQ_LL(g2.gaps, 0);
        EQ_LL(g2.resets, 0);
    }
}

/* ---------------- U5/U11：消费状态 ---------------- */

static void test_state_recent_window(void)
{
    t6b_state s;
    char id[64];
    int i;

    T("state/recent window");
    t6b_state_init(&s);
    for (i = 0; i < T6B_STATE_RECENT + 10; i++) {
        snprintf(id, sizeof(id), "ev-%04d", i);
        t6b_state_remember(&s, id);
    }
    EQ_LL(s.recent_n, T6B_STATE_RECENT);
    EQ_STR(s.recent[s.recent_n - 1], "ev-0137");
    OK(t6b_state_has_recent(&s, "ev-0137") == 1);
    OK(t6b_state_has_recent(&s, "ev-0010") == 1);
    OK(t6b_state_has_recent(&s, "ev-0009") == 0);        /* 已被淘汰 */
    OK(t6b_state_has_recent(&s, "nope") == 0);

    T("state/recall moves to newest");
    t6b_state_remember(&s, "ev-0020");
    EQ_STR(s.recent[s.recent_n - 1], "ev-0020");
    EQ_LL(s.recent_n, T6B_STATE_RECENT);
    OK(t6b_state_has_recent(&s, "ev-0020") == 1);
    OK(t6b_state_has_recent(&s, "ev-0021") == 1);        /* 仍在窗口内 */
}

static void test_state_roundtrip(void)
{
    t6b_state s;
    t6b_state back;
    char path[600];
    char err[192];
    int i;

    T("state/save+load roundtrip");
    mk_path(path, sizeof(path), "consumer_state.json");
    t6b_state_init(&s);
    s.offset = 123456;
    s.dev = 2184104807ULL;
    s.ino = 1688849860469133ULL;      /* 故意用 Windows 量级的大文件索引 */
    s.seq_last = 42;
    s.processed_total = 102;
    s.updated_at_ms = 1795164000000LL;
    snprintf(s.last_event_id, sizeof(s.last_event_id), "t5b-29413-1969861-g1");
    for (i = 0; i < 5; i++) {
        char id[40];
        snprintf(id, sizeof(id), "id-%d", i);
        t6b_state_remember(&s, id);
    }
    EQ_LL(t6b_state_save(&s, path, err, sizeof(err)), 0);

    t6b_state_init(&back);
    EQ_LL(t6b_state_load(&back, path, err, sizeof(err)), 0);
    EQ_LL(back.offset, 123456);
    EQ_LL(back.dev, 2184104807LL);
    EQ_LL(back.ino, 1688849860469133LL);
    EQ_LL(back.seq_last, 42);
    EQ_LL(back.processed_total, 102);
    EQ_STR(back.last_event_id, "t5b-29413-1969861-g1");
    EQ_LL(back.recent_n, 5);
    OK(t6b_state_has_recent(&back, "id-4") == 1);

    T("state/no temp file left behind");
    {
        char tmp[700];
        snprintf(tmp, sizeof(tmp), "%s.tmp", path);
        EQ_LL(wu_file_size(tmp), -1);
    }
}

static void test_state_broken(void)
{
    t6b_state s;
    char path[600];
    char err[192];

    T("state/missing file -> 1");
    mk_path(path, sizeof(path), "state_missing.json");
    remove_file(path);
    EQ_LL(t6b_state_load(&s, path, err, sizeof(err)), 1);

    T("state/garbage -> -2");
    mk_path(path, sizeof(path), "state_garbage.json");
    write_bytes(path, "not a json", 10, 0);
    EQ_LL(t6b_state_load(&s, path, err, sizeof(err)), -2);

    T("state/empty -> -2");
    mk_path(path, sizeof(path), "state_empty.json");
    write_bytes(path, "", 0, 0);
    EQ_LL(t6b_state_load(&s, path, err, sizeof(err)), -2);

    T("state/wrong version -> -2");
    mk_path(path, sizeof(path), "state_ver.json");
    {
        const char *bad = "{\"version\":9,\"offset\":5}";
        write_bytes(path, bad, strlen(bad), 0);
    }
    EQ_LL(t6b_state_load(&s, path, err, sizeof(err)), -2);

    T("state/truncated json -> -2");
    mk_path(path, sizeof(path), "state_trunc.json");
    {
        const char *bad = "{\"version\":1,\"offset\":";
        write_bytes(path, bad, strlen(bad), 0);
    }
    EQ_LL(t6b_state_load(&s, path, err, sizeof(err)), -2);

    T("state/save into missing dir -> -1");
    mk_path(path, sizeof(path), "no/such/dir/consumer_state.json");
    {
        t6b_state zero;
        t6b_state_init(&zero);
        EQ_LL(t6b_state_save(&zero, path, err, sizeof(err)), -1);
    }
}

/* ---------------- U1/U2/U3/U9/U10/U13：文件游标 ---------------- */

static void test_reader_basic(void)
{
    t6b_reader r;
    t6b_event ev;
    char path[600];
    char buf[4096];
    char err[192];
    const char *reason = NULL;
    const char *field = NULL;
    size_t used = 0;
    int i;
    int n;

    T("reader/three records");
    mk_path(path, sizeof(path), "events_basic.jsonl");
    for (i = 0; i < 3; i++) {
        char id[32];
        snprintf(id, sizeof(id), "t5b-1-2%d-g1", i);
        n = mk_rec(buf + used, sizeof(buf) - used, i + 1, 1, id, "abc");
        used += (size_t)n;
    }
    write_bytes(path, buf, used, 0);
    EQ_LL(t6b_reader_init(&r, path, 0, 0, 0, T6B_REC_DEFAULT, err, sizeof(err)), 0);

    for (i = 0; i < 3; i++) {
        int rc = t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err));
        EQ_LL(rc, 1);
        EQ_LL(ev.seq, i + 1);
        EQ_LL(t6b_reader_pending(&r), r.off + ev.line_bytes);
        t6b_reader_commit(&r);
    }
    EQ_LL(r.off, (long long)used);
    EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 0);   /* EOF */

    T("reader/commit is required before advancing");
    {
        t6b_reader r2;
        EQ_LL(t6b_reader_init(&r2, path, 0, 0, 0, T6B_REC_DEFAULT, err, sizeof(err)), 0);
        EQ_LL(t6b_reader_next(&r2, &ev, &reason, &field, err, sizeof(err)), 1);
        EQ_LL(r2.off, 0);                       /* 未提交：偏移不动 */
        t6b_reader_free(&r2);
        EQ_LL(t6b_reader_init(&r2, path, 0, 0, 0, T6B_REC_DEFAULT, err, sizeof(err)), 0);
        EQ_LL(t6b_reader_next(&r2, &ev, &reason, &field, err, sizeof(err)), 1);
        EQ_STR(ev.event_id, "t5b-1-20-g1");     /* 重新读到同一条 */
        t6b_reader_free(&r2);
    }
    t6b_reader_free(&r);
}

static void test_reader_half_line(void)
{
    t6b_reader r;
    t6b_event ev;
    char path[600];
    char line[512];
    char err[192];
    const char *reason = NULL;
    const char *field = NULL;
    int n;

    T("reader/half line waits");
    mk_path(path, sizeof(path), "events_half.jsonl");
    remove_file(path);
    n = mk_rec(line, sizeof(line), 1, 1, "e1", "one");
    write_bytes(path, line, (size_t)n, 0);
    EQ_LL(t6b_reader_init(&r, path, 0, 0, 0, T6B_REC_DEFAULT, err, sizeof(err)), 0);
    EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 1);
    t6b_reader_commit(&r);
    EQ_LL(r.off, (long long)n);

    /* 追加半条（无换行符） */
    n = mk_rec(line, sizeof(line), 2, 1, "e2", "two");
    {
        long long off_before = r.off;
        write_bytes(path, line, (size_t)n - 1, 1);
        EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 0);
        EQ_LL(r.off, off_before);            /* 半行不消费：偏移不动 */
    }

    T("reader/half line completes");
    write_bytes(path, "\n", 1, 1);
    EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 1);
    EQ_STR(ev.event_id, "e2");
    EQ_LL(ev.seq, 2);
    t6b_reader_commit(&r);
    EQ_LL(r.off, wu_file_size(path));
    t6b_reader_free(&r);
}

static void test_reader_bad_and_oversize(void)
{
    t6b_reader r;
    t6b_event ev;
    char path[600];
    char err[192];
    const char *reason = NULL;
    const char *field = NULL;
    char good[512];
    char *big;
    int n;
    int rc;
    size_t i;

    T("reader/invalid line skipped");
    mk_path(path, sizeof(path), "events_bad.jsonl");
    remove_file(path);
    n = mk_rec(good, sizeof(good), 1, 1, "ok1", "fine");
    write_bytes(path, good, (size_t)n, 0);
    write_bytes(path, "{ broken json\n", 14, 1);
    n = mk_rec(good, sizeof(good), 2, 1, "ok2", "fine");
    write_bytes(path, good, (size_t)n, 1);

    EQ_LL(t6b_reader_init(&r, path, 0, 0, 0, T6B_REC_DEFAULT, err, sizeof(err)), 0);
    EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 1);
    EQ_STR(ev.event_id, "ok1");
    t6b_reader_commit(&r);
    rc = t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err));
    EQ_LL(rc, -2);
    OK(reason != NULL && strcmp(reason, "bad_json") == 0);
    t6b_reader_commit(&r);
    EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 1);
    EQ_STR(ev.event_id, "ok2");
    t6b_reader_commit(&r);
    EQ_LL(r.invalid_skips, 1);
    t6b_reader_free(&r);

    T("reader/oversize line skipped");
    mk_path(path, sizeof(path), "events_big.jsonl");
    remove_file(path);
    big = (char *)malloc(9000);
    memset(big, 'x', 9000);
    big[0] = '{';
    big[8999] = '\n';
    write_bytes(path, big, 9000, 0);
    n = mk_rec(good, sizeof(good), 9, 1, "after_big", "fine");
    write_bytes(path, good, (size_t)n, 1);

    EQ_LL(t6b_reader_init(&r, path, 0, 0, 0, 1024, err, sizeof(err)), 0);
    rc = t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err));
    EQ_LL(rc, -3);
    OK(reason != NULL && strcmp(reason, "record_too_long") == 0);
    t6b_reader_commit(&r);
    EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 1);
    EQ_STR(ev.event_id, "after_big");
    t6b_reader_commit(&r);
    EQ_LL(r.oversize_skips, 1);
    t6b_reader_free(&r);
    free(big);

    T("reader/oversize without newline (single huge line, no terminator)");
    mk_path(path, sizeof(path), "events_big2.jsonl");
    remove_file(path);
    big = (char *)malloc(T6B_READ_CHUNK + 4096);
    for (i = 0; i < T6B_READ_CHUNK + 4096; i++) big[i] = (i == 0) ? '{' : 'y';
    write_bytes(path, big, T6B_READ_CHUNK + 4096, 0);
    EQ_LL(t6b_reader_init(&r, path, 0, 0, 0, 4096, err, sizeof(err)), 0);
    rc = t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err));
    EQ_LL(rc, 0);                    /* 没有换行符：不消费、不误判 */
    write_bytes(path, "\n", 1, 1);
    rc = t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err));
    EQ_LL(rc, -3);
    t6b_reader_commit(&r);
    EQ_LL(r.off, wu_file_size(path));
    t6b_reader_free(&r);
    free(big);
}

static void test_reader_truncate(void)
{
    t6b_reader r;
    t6b_event ev;
    char path[600];
    char err[192];
    char a[512];
    char b[512];
    const char *reason = NULL;
    const char *field = NULL;
    int n;

    T("reader/truncation detected");
    mk_path(path, sizeof(path), "events_trunc.jsonl");
    remove_file(path);
    n = mk_rec(a, sizeof(a), 1, 1, "t1", "aa");
    write_bytes(path, a, (size_t)n, 0);
    n = mk_rec(a, sizeof(a), 2, 1, "t2", "bb");
    write_bytes(path, a, (size_t)n, 1);

    EQ_LL(t6b_reader_init(&r, path, 0, 0, 0, T6B_REC_DEFAULT, err, sizeof(err)), 0);
    EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 1);
    t6b_reader_commit(&r);
    EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 1);
    t6b_reader_commit(&r);
    EQ_LL(r.truncations, 0);

    /* 模拟桥接端重启后修复尾部：文件被截短（这里直接整文件重写为 1 条） */
    n = mk_rec(b, sizeof(b), 1, 1, "t9", "cc");
    write_bytes(path, b, (size_t)n, 0);
    EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 1);
    EQ_LL(r.truncations, 1);
    EQ_LL(t6b_reader_pending(&r), (long long)n);   /* 待提交点到新文件末尾 */
    EQ_STR(ev.event_id, "t9");
    t6b_reader_commit(&r);
    EQ_LL(r.off, (long long)n);
    t6b_reader_free(&r);
}

static void test_reader_replaced(void)
{
    t6b_reader r;
    t6b_event ev;
    char path[600];
    char err[192];
    char a[512];
    const char *reason = NULL;
    const char *field = NULL;
    int n;
    int rc;

    T("reader/file replaced (new identity) detected");
    mk_path(path, sizeof(path), "events_repl.jsonl");
    remove_file(path);
    n = mk_rec(a, sizeof(a), 1, 1, "r1", "one");
    write_bytes(path, a, (size_t)n, 0);
    EQ_LL(t6b_reader_init(&r, path, 0, 0, 0, T6B_REC_DEFAULT, err, sizeof(err)), 0);
    EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 1);
    t6b_reader_commit(&r);

    /* 删掉再建一个"更大"的文件：只靠大小判断会漏，必须靠 dev/ino */
    remove_file(path);
    n = mk_rec(a, sizeof(a), 1, 1, "r2", "twenty-bytes-longer-text");
    write_bytes(path, a, (size_t)n, 0);
    n = mk_rec(a, sizeof(a), 2, 1, "r3", "second-record-makes-it-bigger");
    write_bytes(path, a, (size_t)n, 1);

    rc = t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err));
    EQ_LL(rc, 1);
    EQ_LL(r.replacements, 1);
    EQ_STR(ev.event_id, "r2");
    t6b_reader_commit(&r);
    t6b_reader_free(&r);
}

static void test_reader_absent(void)
{
    t6b_reader r;
    t6b_event ev;
    char path[600];
    char err[192];
    char a[512];
    const char *reason = NULL;
    const char *field = NULL;
    int n;

    T("reader/absent file waits then picks up");
    mk_path(path, sizeof(path), "events_absent.jsonl");
    remove_file(path);
    EQ_LL(t6b_reader_init(&r, path, 0, 0, 0, T6B_REC_DEFAULT, err, sizeof(err)), 0);
    EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 0);
    EQ_LL(r.last_reason, T6B_OPEN_ABSENT);
    EQ_LL(r.io_errors, 0);

    n = mk_rec(a, sizeof(a), 1, 1, "late", "appeared");
    write_bytes(path, a, (size_t)n, 0);
    EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 1);
    EQ_STR(ev.event_id, "late");
    t6b_reader_commit(&r);
    t6b_reader_free(&r);
}

static void test_reader_resume_offset(void)
{
    t6b_reader r;
    t6b_event ev;
    char path[600];
    char err[192];
    char a[512];
    const char *reason = NULL;
    const char *field = NULL;
    int n;
    long long cut;
    unsigned long long dev = 0, ino = 0;

    T("reader/resume from saved offset");
    mk_path(path, sizeof(path), "events_resume.jsonl");
    remove_file(path);
    n = mk_rec(a, sizeof(a), 1, 1, "s1", "one");
    write_bytes(path, a, (size_t)n, 0);
    cut = n;
    n = mk_rec(a, sizeof(a), 2, 1, "s2", "two");
    write_bytes(path, a, (size_t)n, 1);

    EQ_LL(wu_file_identity(path, &dev, &ino, NULL), 0);
    EQ_LL(t6b_reader_init(&r, path, cut, dev, ino, T6B_REC_DEFAULT, err, sizeof(err)), 0);
    EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 1);
    EQ_STR(ev.event_id, "s2");
    EQ_LL(r.replacements, 0);
    EQ_LL(r.truncations, 0);
    t6b_reader_commit(&r);
    t6b_reader_free(&r);

    T("reader/saved offset beyond EOF is treated as truncation");
    EQ_LL(t6b_reader_init(&r, path, 1LL << 40, dev, ino, T6B_REC_DEFAULT, err, sizeof(err)), 0);
    EQ_LL(r.off, 0);
    EQ_LL(r.truncations, 1);
    t6b_reader_free(&r);
}

/* ---------------- U12：Provider ---------------- */

static void test_reader_half_line_oversize(void)
{
    t6b_reader r;
    t6b_event ev;
    char path[600];
    char err[192];
    const char *reason = NULL;
    const char *field = NULL;
    static char big[9000];
    char good[512];
    int n;
    int rc;
    long long off_before;

    T("reader/P2-1 8500-byte half line must not be skipped");
    mk_path(path, sizeof(path), "events_half_big.jsonl");
    remove_file(path);
    memset(big, 'z', sizeof(big));
    big[0] = '{';
    big[8500] = '\0';
    write_bytes(path, big, 8500, 0);                 /* 没有换行符 */

    EQ_LL(t6b_reader_init(&r, path, 0, 0, 0, 8192, err, sizeof(err)), 0);
    off_before = r.off;
    rc = t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err));
    EQ_LL(rc, 0);                                    /* 半行：只等待，不判超长 */
    EQ_LL(r.off, off_before);
    EQ_LL(t6b_reader_pending(&r), off_before);
    EQ_LL(r.oversize_skips, 0);

    T("reader/P2-1 completing the same half line then judges oversize");
    write_bytes(path, big + 8500, 512, 1);           /* 继续写剩余内容 */
    write_bytes(path, "\n", 1, 1);                   /* 补上换行符 */
    rc = t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err));
    EQ_LL(rc, -3);
    OK(reason != NULL && strcmp(reason, "record_too_long") == 0);
    EQ_LL(r.oversize_skips, 1);
    EQ_LL(t6b_reader_pending(&r), wu_file_size(path));   /* 整行被跳过 */
    t6b_reader_commit(&r);

    T("reader/P2-1 next valid record still readable");
    n = mk_rec(good, sizeof(good), 7, 1, "after_huge", "fine");
    write_bytes(path, good, (size_t)n, 1);
    EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 1);
    EQ_STR(ev.event_id, "after_huge");
    t6b_reader_commit(&r);
    t6b_reader_free(&r);
}

static void test_reader_recreate_while_absent(void)
{
    t6b_reader r;
    t6b_event ev;
    char path[600];
    char err[192];
    char a[512];
    const char *reason = NULL;
    const char *field = NULL;
    unsigned long long dev1 = 0, ino1 = 0, dev2 = 0, ino2 = 0;
    int n;

    T("reader/P2-2 saved identity + file absent then recreated (shorter)");
    mk_path(path, sizeof(path), "events_gone.jsonl");
    remove_file(path);
    n = mk_rec(a, sizeof(a), 1, 1, "old-1", "first-life-record");
    write_bytes(path, a, (size_t)n, 0);
    n = mk_rec(a, sizeof(a), 2, 1, "old-2", "second-life-record");
    write_bytes(path, a, (size_t)n, 1);

    EQ_LL(t6b_reader_init(&r, path, 0, 0, 0, T6B_REC_DEFAULT, err, sizeof(err)), 0);
    EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 1);
    t6b_reader_commit(&r);
    EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 1);
    t6b_reader_commit(&r);
    EQ_LL(r.replacements, 0);
    EQ_LL(wu_file_identity(path, &dev1, &ino1, NULL), 0);
    t6b_reader_free(&r);

    /* 用保存的身份重新构造（模拟 worker 重启后文件不见了） */
    remove_file(path);
    EQ_LL(t6b_reader_init(&r, path, wu_file_size(path) > 0 ? wu_file_size(path) : 0,
                          dev1, ino1, T6B_REC_DEFAULT, err, sizeof(err)), 0);
    {
        /* 重启时 offset 用刚才的偏移（这里简单取文件末尾前的位置） */
        long long off = 0;
        t6b_reader_free(&r);
        n = mk_rec(a, sizeof(a), 1, 1, "old-1", "first-life-record");
        off = n;
        EQ_LL(t6b_reader_init(&r, path, off, dev1, ino1, T6B_REC_DEFAULT, err, sizeof(err)), 0);
    }
    EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 0);   /* 文件不在：等待 */
    EQ_LL(r.last_reason, T6B_OPEN_ABSENT);
    EQ_LL(r.replacements, 0);

    /* 新文件（更短）出现：身份不同 → 判重建、偏移归零 */
    n = mk_rec(a, sizeof(a), 1, 1, "new-1", "x");
    write_bytes(path, a, (size_t)n, 0);
    EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 1);
    EQ_LL(r.replacements, 1);
    EQ_STR(ev.event_id, "new-1");                    /* 第一条没被跳过 */
    EQ_LL(r.off, 0);                                 /* 还没 commit */
    t6b_reader_commit(&r);
    t6b_reader_free(&r);

    T("reader/P2-2 same identity keeps offset");
    mk_path(path, sizeof(path), "events_same.jsonl");
    remove_file(path);
    n = mk_rec(a, sizeof(a), 1, 1, "same-1", "aaa");
    write_bytes(path, a, (size_t)n, 0);
    EQ_LL(wu_file_identity(path, &dev2, &ino2, NULL), 0);
    EQ_LL(t6b_reader_init(&r, path, (long long)n, dev2, ino2, T6B_REC_DEFAULT,
                          err, sizeof(err)), 0);
    EQ_LL(r.replacements, 0);
    EQ_LL(r.truncations, 0);
    EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 0);   /* 已在末尾 */
    EQ_LL(r.replacements, 0);
    t6b_reader_free(&r);

    T("reader/P2-2 first run without saved identity is not a replacement");
    mk_path(path, sizeof(path), "events_first.jsonl");
    remove_file(path);
    n = mk_rec(a, sizeof(a), 1, 1, "first-1", "bbb");
    write_bytes(path, a, (size_t)n, 0);
    EQ_LL(t6b_reader_init(&r, path, 0, 0, 0, T6B_REC_DEFAULT, err, sizeof(err)), 0);
    EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 1);
    EQ_LL(r.replacements, 0);
    EQ_LL(r.truncations, 0);
    t6b_reader_commit(&r);
    t6b_reader_free(&r);
}

static void test_provider_mock(void)
{
    t6b_provider p;
    t6b_mock m;
    t6b_mock_cfg cfg;
    t6b_reply rep;
    char err[192];

    T("provider/mock ok");
    t6b_mock_defaults(&cfg);
    EQ_LL(t6b_mock_open(&p, &m, &cfg), 0);
    EQ_LL(t6b_provider_init(&p, err, sizeof(err)), 0);
    EQ_LL(t6b_provider_complete(&p, "你好", &rep), 0);
    EQ_LL(rep.status, T6B_P_OK);
    EQ_STR(rep.text, T6B_MOCK_REPLY_DEFAULT);
    EQ_LL(rep.mock, 1);
    EQ_LL(rep.text_bytes, (long long)strlen(T6B_MOCK_REPLY_DEFAULT));
    t6b_provider_fini(&p);
    t6b_mock_close(&p);

    T("provider/mock fail-from");
    t6b_mock_defaults(&cfg);
    cfg.fail_from_call = 2;
    t6b_mock_open(&p, &m, &cfg);
    t6b_provider_init(&p, err, sizeof(err));
    EQ_LL(t6b_provider_complete(&p, "a", &rep), 0);
    EQ_LL(rep.status, T6B_P_OK);
    EQ_LL(t6b_provider_complete(&p, "b", &rep), 0);
    EQ_LL(rep.status, T6B_P_ERROR);
    EQ_LL(rep.text_bytes, 0);
    EQ_STR(rep.text, "");
    t6b_provider_fini(&p);
    t6b_mock_close(&p);

    T("provider/mock timeout-from");
    t6b_mock_defaults(&cfg);
    cfg.timeout_from_call = 1;
    t6b_mock_open(&p, &m, &cfg);
    t6b_provider_init(&p, err, sizeof(err));
    EQ_LL(t6b_provider_complete(&p, "a", &rep), 0);
    EQ_LL(rep.status, T6B_P_TIMEOUT);
    t6b_provider_fini(&p);
    t6b_mock_close(&p);

    T("provider/empty text rejected without calling impl");
    t6b_mock_defaults(&cfg);
    t6b_mock_open(&p, &m, &cfg);
    t6b_provider_init(&p, err, sizeof(err));
    EQ_LL(t6b_provider_complete(&p, "", &rep), -1);
    EQ_LL(m.calls, 0);
    t6b_provider_fini(&p);
    t6b_mock_close(&p);

    T("provider/mock fails the first N calls then recovers (P1-2 retry path)");
    t6b_mock_defaults(&cfg);
    cfg.fail_first_calls = 2;
    t6b_mock_open(&p, &m, &cfg);
    t6b_provider_init(&p, err, sizeof(err));
    EQ_LL(t6b_provider_complete(&p, "a", &rep), 0);
    EQ_LL(rep.status, T6B_P_ERROR);          /* 第 1 次失败 */
    EQ_LL(t6b_provider_complete(&p, "a", &rep), 0);
    EQ_LL(rep.status, T6B_P_ERROR);          /* 第 2 次失败 */
    EQ_LL(t6b_provider_complete(&p, "a", &rep), 0);
    EQ_LL(rep.status, T6B_P_OK);             /* 第 3 次成功 */
    EQ_STR(rep.text, T6B_MOCK_REPLY_DEFAULT);
    EQ_LL(m.calls, 3);
    t6b_provider_fini(&p);
    t6b_mock_close(&p);

    T("provider/unconfigured");
    memset(&p, 0, sizeof(p));
    EQ_LL(t6b_provider_init(&p, err, sizeof(err)), -1);
    EQ_LL(t6b_provider_complete(&p, "x", &rep), -1);
    EQ_LL(rep.status, T6B_P_ERROR);
}

/* ---------------- 状态文件 ---------------- */

static void test_status_file(void)
{
    t6b_status st;
    char path[600];
    char err[192];
    char buf[4096];
    size_t len = 0;

    T("status/write parses and carries counters");
    mk_path(path, sizeof(path), "ai_worker_status.json");
    t6b_status_init(&st);
    st.pid = 4711;
    snprintf(st.state, sizeof(st.state), "running");
    st.events_processed = 102;
    st.duplicates = 3;
    st.gaps = 1;
    snprintf(st.last_event_id, sizeof(st.last_event_id), "t5b-1-2-g1");
    EQ_LL(t6b_status_write(&st, path, err, sizeof(err)), 0);
    EQ_LL(wu_read_file(path, buf, sizeof(buf), &len), 0);
    OK(len > 100);
    OK(strstr(buf, "\"state\":\"running\"") != NULL);
    OK(strstr(buf, "\"events_processed\":102") != NULL);
    OK(strstr(buf, "\"pid\":4711") != NULL);
    OK(strstr(buf, "t5b-1-2-g1") != NULL);
    {
        char tmp[700];
        snprintf(tmp, sizeof(tmp), "%s.tmp", path);
        EQ_LL(wu_file_size(tmp), -1);
    }
}

/* ---------------- main ---------------- */

int main(void)
{
    printf("=== T5-06B worker unit test (host) ===\n");
    snprintf(g_dir, sizeof(g_dir), "_t6b_unit");
    (void)wu_mkdir_p(g_dir);

    test_parse_valid();
    test_parse_utf8_forms();
    test_parse_rejects();
    test_parse_text_limit();
    test_gap_rules();
    test_state_recent_window();
    test_state_roundtrip();
    test_state_broken();
    test_reader_basic();
    test_reader_half_line();
    test_reader_bad_and_oversize();
    test_reader_truncate();
    test_reader_replaced();
    test_reader_absent();
    test_reader_resume_offset();
    test_reader_half_line_oversize();
    test_reader_recreate_while_absent();
    test_provider_mock();
    test_status_file();

    printf("\nchecks passed: %d, failed: %d\n", g_pass, g_fail);
    if (g_fail == 0) {
        printf("RESULT: PASS\n");
        return 0;
    }
    printf("RESULT: FAIL\n");
    return 1;
}
