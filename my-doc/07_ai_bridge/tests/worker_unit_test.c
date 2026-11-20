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

#include <limits.h>
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

/* 造一条合法的 asr_final 记录（与桥接端 tgb_event_to_record 的输出格式一致）。
 * text_bytes / text_chars 必须按实际文本计算：解析层现在会校验两者与文本一致
 * （T5-06B P2 补充修复），写死常量会让"合法记录"变成坏记录。 */
static int mk_rec(char *buf, size_t cap, int seq, long long pid, const char *id,
                  const char *text)
{
    size_t blen = strlen(text);

    return snprintf(buf, cap,
        "{\"version\":1,\"rec\":\"asr_final\",\"event_id\":\"%s\",\"event_type\":\"asr_final\","
        "\"pid\":%lld,\"session_id\":\"1000\",\"text\":\"%s\",\"text_bytes\":%d,\"text_chars\":%d,"
        "\"is_final\":true,\"received_at_ms\":100,\"recv_at_ms\":101,\"stored_at_ms\":102,"
        "\"seq\":%d}\n",
        id, pid, text, (int)blen, wu_utf8_count(text, blen), seq);
}

/* ---------------- U3/U4：解析与校验 ---------------- */

/* 夹具：显式给出 [0,off) 的前缀指纹后初始化读取器（等价于 version=2 状态） */
static int rd_init_seed(t6b_reader *r, const char *path, long long off,
                        unsigned long long dev, unsigned long long ino,
                        unsigned long long hash, int maxrec)
{
    char err[192];

    err[0] = '\0';
    return t6b_reader_init(r, path, off, dev, ino, hash, 1, maxrec, err, sizeof(err));
}

/* 夹具：按文件当前内容算出 [0,off) 的指纹再初始化（"状态里的指纹就是这份内容"） */
static int rd_init_hash(t6b_reader *r, const char *path, long long off,
                        unsigned long long dev, unsigned long long ino, int maxrec)
{
    unsigned long long h = WU_HASH64_SEED;

    if (off > 0) {
        FILE *f = fopen(path, "rb");
        char buf[4096];
        long long left = off;

        if (f == NULL) return -1;
        while (left > 0) {
            size_t want = (left > (long long)sizeof(buf)) ? sizeof(buf) : (size_t)left;
            size_t got = fread(buf, 1, want, f);
            if (got == 0) break;
            h = wu_hash64_ext(h, buf, got);
            left -= (long long)got;
        }
        fclose(f);
    }
    return rd_init_seed(r, path, off, dev, ino, h, maxrec);
}

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
        /* ---- T5-06B P2 补充修复：数字字段窄化与范围校验 ---- */
        /* pid 超过 32 位上界：必须先拒收，不能截成负数/别的值 */
        { "{\"version\":1,\"rec\":\"asr_final\",\"event_id\":\"a\",\"event_type\":\"asr_final\","
          "\"pid\":2147483648,\"session_id\":\"s\",\"text\":\"x\",\"is_final\":true,\"seq\":1}",
          T6B_EV_BAD_PID, "pid" },
        /* version 只能是精确的 1：4294967297 窄化成 int 后是 1，禁止因此通过 */
        { "{\"version\":4294967297,\"rec\":\"asr_final\",\"event_id\":\"a\","
          "\"event_type\":\"asr_final\",\"pid\":1,\"session_id\":\"s\",\"text\":\"x\","
          "\"is_final\":true,\"seq\":1}", T6B_EV_BAD_VERSION, "version" },
        /* seq = -1：负数，拒收 */
        { "{\"version\":1,\"rec\":\"asr_final\",\"event_id\":\"a\",\"event_type\":\"asr_final\","
          "\"pid\":1,\"session_id\":\"s\",\"text\":\"x\",\"is_final\":true,\"seq\":-1}",
          T6B_EV_BAD_SEQ, "seq" },
        /* seq 超过 64 位有符号整数：JSON 整数解析阶段就拒收（不进入窄化路径） */
        { "{\"version\":1,\"rec\":\"asr_final\",\"event_id\":\"a\",\"event_type\":\"asr_final\","
          "\"pid\":1,\"session_id\":\"s\",\"text\":\"x\",\"is_final\":true,"
          "\"seq\":18446744073709551616}", T6B_EV_BAD_TYPE, "seq" },
        /* text_bytes / text_chars：负数、超上限、与文本不符，全部拒收 */
        { "{\"version\":1,\"rec\":\"asr_final\",\"event_id\":\"a\",\"event_type\":\"asr_final\","
          "\"pid\":1,\"session_id\":\"s\",\"text\":\"hello\",\"text_bytes\":-1,"
          "\"is_final\":true,\"seq\":1}", T6B_EV_BAD_TYPE, "text_bytes" },
        { "{\"version\":1,\"rec\":\"asr_final\",\"event_id\":\"a\",\"event_type\":\"asr_final\","
          "\"pid\":1,\"session_id\":\"s\",\"text\":\"hello\",\"text_bytes\":512,"
          "\"is_final\":true,\"seq\":1}", T6B_EV_BAD_TYPE, "text_bytes" },
        { "{\"version\":1,\"rec\":\"asr_final\",\"event_id\":\"a\",\"event_type\":\"asr_final\","
          "\"pid\":1,\"session_id\":\"s\",\"text\":\"hello\",\"text_bytes\":4,"
          "\"is_final\":true,\"seq\":1}", T6B_EV_BAD_TYPE, "text_bytes" },
        { "{\"version\":1,\"rec\":\"asr_final\",\"event_id\":\"a\",\"event_type\":\"asr_final\","
          "\"pid\":1,\"session_id\":\"s\",\"text\":\"hello\",\"text_chars\":4,"
          "\"is_final\":true,\"seq\":1}", T6B_EV_BAD_TYPE, "text_chars" },
        /* 时间字段为负：拒收 */
        { "{\"version\":1,\"rec\":\"asr_final\",\"event_id\":\"a\",\"event_type\":\"asr_final\","
          "\"pid\":1,\"session_id\":\"s\",\"text\":\"x\",\"is_final\":true,"
          "\"received_at_ms\":-1,\"seq\":1}", T6B_EV_BAD_TIME, "received_at_ms" },
        /* 中文字符数按码点算：6 字节 / 2 个码点，合法 */
        { "{\"version\":1,\"rec\":\"asr_final\",\"event_id\":\"a\",\"event_type\":\"asr_final\","
          "\"pid\":1,\"session_id\":\"s\",\"text\":\"\xe4\xbd\xa0" "\xe5\xa5\xbd\","
          "\"text_bytes\":6,\"text_chars\":2,\"is_final\":true,\"seq\":1}",
          T6B_EV_OK, NULL },
        /* 不提供诊断字段：仍然通过（自动补齐，不因此拒收） */
        { "{\"version\":1,\"rec\":\"asr_final\",\"event_id\":\"a\",\"event_type\":\"asr_final\","
          "\"pid\":1,\"session_id\":\"s\",\"text\":\"\xe4\xbd\xa0" "\xe5\xa5\xbd\","
          "\"is_final\":true,\"seq\":1}", T6B_EV_OK, NULL },
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

    /* seq 的上下界由 unsigned long 的位宽决定（注意 Windows LLP64 的 long 也是 32 位）：
     *   ULONG_MAX == 0xFFFFFFFF（ARM32 / Windows x64 / ILP32）→ 两个值都越界，必须拒收；
     *       4294967296 窄化后是 0（旧实现靠 "seq==0" 偶然拒收），
     *       4294967297 窄化后是 1 —— 旧实现会静默当成 seq=1（最危险的静默错误）。
     *   ULONG_MAX > 0xFFFFFFFF（LP64，如 Linux x86_64）→ 两个值都在范围内，必须原值保留。 */
    {
        static const char *seq_lines[2] = {
            "{\"version\":1,\"rec\":\"asr_final\",\"event_id\":\"a\","
            "\"event_type\":\"asr_final\",\"pid\":1,\"session_id\":\"s\",\"text\":\"x\","
            "\"is_final\":true,\"seq\":4294967296}",
            "{\"version\":1,\"rec\":\"asr_final\",\"event_id\":\"a\","
            "\"event_type\":\"asr_final\",\"pid\":1,\"session_id\":\"s\",\"text\":\"x\","
            "\"is_final\":true,\"seq\":4294967297}"
        };
        static const long long seq_want[2] = { 4294967296LL, 4294967297LL };
        int k;

        for (k = 0; k < 2; k++) {
            const char *fld = NULL;
            t6b_eval rc = t6b_parse_record(seq_lines[k], strlen(seq_lines[k]), &ev, &fld);

            if ((unsigned long long)seq_want[k] <= (unsigned long long)ULONG_MAX) {
                T("parse/seq inside unsigned long range keeps its value");
                EQ_LL(rc, T6B_EV_OK);
                EQ_LL((long long)ev.seq, seq_want[k]);
            } else {
                T("parse/seq above ULONG_MAX rejected (no narrowing)");
                EQ_LL(rc, T6B_EV_BAD_SEQ);
                EQ_STR(fld, "seq");
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
    s.prefix_hash = 0x0123456789abcdefULL;
    s.have_prefix_hash = 1;
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
    T("state/prefix hash roundtrip (v2)");
    EQ_LL(back.version, 2);
    EQ_LL(back.have_prefix_hash, 1);
    EQ_LL(back.prefix_hash, 0x0123456789abcdefULL);

    T("state/save without prefix hash is refused");
    {
        t6b_state noh;
        t6b_state_init(&noh);
        noh.offset = 10;
        EQ_LL(t6b_state_save(&noh, path, err, sizeof(err)), -1);
    }

    T("state/v1 (no prefix_hash) loads but flags itself as unverifiable");
    {
        const char *v1 = "{\"version\":1,\"dev\":45846,\"ino\":86131,\"offset\":32894,"
                         "\"seq_last\":28,\"last_event_id\":\"t5b-29413-1969857-g1\","
                         "\"processed_total\":102,\"updated_at_ms\":1795164000000,"
                         "\"recent_cap\":128,\"recent_n\":2,"
                         "\"recent_ids\":\"t5b-29413-1969853-g1,t5b-29413-1969857-g1\"}";
        mk_path(path, sizeof(path), "state_v1.json");
        write_bytes(path, v1, strlen(v1), 0);
        EQ_LL(t6b_state_load(&back, path, err, sizeof(err)), 0);
        EQ_LL(back.offset, 32894);
        EQ_LL(back.have_prefix_hash, 0);              /* 不许假装验证成功 */
        EQ_LL(back.prefix_hash, 0);
        EQ_LL(back.recent_n, 2);                      /* recent_ids 保留 */
        EQ_LL(back.dev, 45846);
    }

    T("state/v2 without prefix_hash -> -2");
    {
        const char *v2 = "{\"version\":2,\"dev\":1,\"ino\":2,\"offset\":5}";
        mk_path(path, sizeof(path), "state_v2_nohash.json");
        write_bytes(path, v2, strlen(v2), 0);
        EQ_LL(t6b_state_load(&back, path, err, sizeof(err)), -2);
    }

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
        zero.have_prefix_hash = 1;
        zero.prefix_hash = WU_HASH64_SEED;
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
    EQ_LL(t6b_reader_init(&r, path, 0, 0, 0, 0, 1, T6B_REC_DEFAULT, err, sizeof(err)), 0);

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
        EQ_LL(t6b_reader_init(&r2, path, 0, 0, 0, 0, 1, T6B_REC_DEFAULT, err, sizeof(err)), 0);
        EQ_LL(t6b_reader_next(&r2, &ev, &reason, &field, err, sizeof(err)), 1);
        EQ_LL(r2.off, 0);                       /* 未提交：偏移不动 */
        t6b_reader_free(&r2);
        EQ_LL(t6b_reader_init(&r2, path, 0, 0, 0, 0, 1, T6B_REC_DEFAULT, err, sizeof(err)), 0);
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
    EQ_LL(t6b_reader_init(&r, path, 0, 0, 0, 0, 1, T6B_REC_DEFAULT, err, sizeof(err)), 0);
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

    EQ_LL(t6b_reader_init(&r, path, 0, 0, 0, 0, 1, T6B_REC_DEFAULT, err, sizeof(err)), 0);
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

    EQ_LL(t6b_reader_init(&r, path, 0, 0, 0, 0, 1, 1024, err, sizeof(err)), 0);
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
    EQ_LL(t6b_reader_init(&r, path, 0, 0, 0, 0, 1, 4096, err, sizeof(err)), 0);
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

    EQ_LL(t6b_reader_init(&r, path, 0, 0, 0, 0, 1, T6B_REC_DEFAULT, err, sizeof(err)), 0);
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
    EQ_LL(t6b_reader_init(&r, path, 0, 0, 0, 0, 1, T6B_REC_DEFAULT, err, sizeof(err)), 0);
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
    EQ_LL(t6b_reader_init(&r, path, 0, 0, 0, 0, 1, T6B_REC_DEFAULT, err, sizeof(err)), 0);
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
    EQ_LL(rd_init_hash(&r, path, cut, dev, ino, T6B_REC_DEFAULT), 0);
    EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 1);
    EQ_STR(ev.event_id, "s2");
    EQ_LL(r.replacements, 0);
    EQ_LL(r.truncations, 0);
    EQ_LL(r.identity_resets, 0);                 /* 前缀指纹一致：不是换文件 */
    t6b_reader_commit(&r);
    t6b_reader_free(&r);

    T("reader/saved offset beyond EOF is treated as truncation");
    EQ_LL(t6b_reader_init(&r, path, 1LL << 40, dev, ino, 0, 1, T6B_REC_DEFAULT,
                          err, sizeof(err)), 0);
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

    EQ_LL(t6b_reader_init(&r, path, 0, 0, 0, 0, 1, 8192, err, sizeof(err)), 0);
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

    EQ_LL(t6b_reader_init(&r, path, 0, 0, 0, 0, 1, T6B_REC_DEFAULT, err, sizeof(err)), 0);
    EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 1);
    t6b_reader_commit(&r);
    EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 1);
    t6b_reader_commit(&r);
    EQ_LL(r.replacements, 0);
    EQ_LL(wu_file_identity(path, &dev1, &ino1, NULL), 0);
    t6b_reader_free(&r);

    /* 模拟 worker 停止期间文件被删掉重建（新文件更短）。
     * 关键：状态里存的是**旧内容**的 [0,off) 指纹，而旧内容已经不在磁盘上了。 */
    {
        char oldrec[512];
        int on = mk_rec(oldrec, sizeof(oldrec), 1, 1, "old-1", "first-life-record");
        unsigned long long old_hash = wu_hash64(oldrec, (size_t)on);

        remove_file(path);
        EQ_LL(rd_init_seed(&r, path, (long long)on, dev1, ino1, old_hash,
                           T6B_REC_DEFAULT), 0);
        EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 0);  /* 文件不在 */
        EQ_LL(r.last_reason, T6B_OPEN_ABSENT);
        EQ_LL(r.replacements, 0);

        /* 新文件（更短）出现：新内容与旧前缀不同 → 必然归零重扫，第一条不能被跳过 */
        n = mk_rec(a, sizeof(a), 1, 1, "new-1", "x");
        write_bytes(path, a, (size_t)n, 0);
        EQ_LL(wu_file_identity(path, &dev2, &ino2, NULL), 0);
        EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 1);
        EQ_STR(ev.event_id, "new-1");
        EQ_LL(r.off, 0);                                 /* 还没 commit */
        if (dev2 == dev1 && ino2 == ino1) {
            /* inode 被复用：身份看不出来，但"变小"这一条就能兜住 */
            EQ_LL(r.replacements, 0);
            EQ_LL(r.truncations, 1);
        } else {
            EQ_LL(r.replacements, 1);
            EQ_LL(r.truncations, 0);
        }
        t6b_reader_commit(&r);
        t6b_reader_free(&r);
    }

    /* 同长度、替换内容：长度兜不住，只能靠前缀指纹 */
    {
        char oldrec[512];
        char newrec[512];
        int on = mk_rec(oldrec, sizeof(oldrec), 1, 1, "same-len", "aaaaaaaa");
        int nn;

        mk_path(path, sizeof(path), "events_samelen.jsonl");
        remove_file(path);
        write_bytes(path, oldrec, (size_t)on, 0);
        EQ_LL(wu_file_identity(path, &dev1, &ino1, NULL), 0);
        nn = mk_rec(newrec, sizeof(newrec), 1, 1, "same-len", "bbbbbbbb");
        EQ_LL(nn, on);                                   /* 新旧记录等长 */
        remove_file(path);
        write_bytes(path, newrec, (size_t)nn, 0);
        EQ_LL(wu_file_identity(path, &dev2, &ino2, NULL), 0);

        T("reader/P2-2 same length, different content -> prefix mismatch");
        EQ_LL(rd_init_seed(&r, path, (long long)on, dev1, ino1,
                           wu_hash64(oldrec, (size_t)on), T6B_REC_DEFAULT), 0);
        EQ_LL(r.identity_resets, 1);
        EQ_LL(r.off, 0);
        EQ_LL(t6b_reader_pending(&r), 0);
        EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 1);
        EQ_STR(ev.event_id, "same-len");
        EQ_LL(ev.text[0], 'b');                          /* 读到的是新内容第一条 */
        t6b_reader_commit(&r);
        EQ_LL(r.off, (long long)nn);
        t6b_reader_free(&r);
    }

    T("reader/P2-2 identical prefix up to offset keeps offset");
    mk_path(path, sizeof(path), "events_prefix_same.jsonl");
    remove_file(path);
    n = mk_rec(a, sizeof(a), 1, 1, "p1", "same-prefix");
    write_bytes(path, a, (size_t)n, 0);
    {   /* 记下第一条的指纹与长度，再追加第二条：前缀到 off 完全一致 */
        long long off = n;
        char b2[512];
        int n2 = mk_rec(b2, sizeof(b2), 2, 1, "p2", "appended-later");
        write_bytes(path, b2, (size_t)n2, 1);
        EQ_LL(wu_file_identity(path, &dev2, &ino2, NULL), 0);
        EQ_LL(rd_init_hash(&r, path, off, dev2, ino2, T6B_REC_DEFAULT), 0);
        EQ_LL(r.identity_resets, 0);                     /* 内容没变：不许误判成换文件 */
        EQ_LL(r.off, off);                               /* 偏移原样保留 */
        EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 1);
        EQ_STR(ev.event_id, "p2");
        t6b_reader_commit(&r);
        EQ_LL(r.off, wu_file_size(path));
        t6b_reader_free(&r);
    }

    T("reader/P2-2 same identity keeps offset");
    mk_path(path, sizeof(path), "events_same.jsonl");
    remove_file(path);
    n = mk_rec(a, sizeof(a), 1, 1, "same-1", "aaa");
    write_bytes(path, a, (size_t)n, 0);
    EQ_LL(wu_file_identity(path, &dev2, &ino2, NULL), 0);
    EQ_LL(rd_init_hash(&r, path, (long long)n, dev2, ino2, T6B_REC_DEFAULT), 0);
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
    EQ_LL(t6b_reader_init(&r, path, 0, 0, 0, 0, 1, T6B_REC_DEFAULT, err, sizeof(err)), 0);
    EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 1);
    EQ_LL(r.replacements, 0);
    EQ_LL(r.truncations, 0);
    t6b_reader_commit(&r);
    t6b_reader_free(&r);
}

/* ---------------- P2-2：前缀指纹（v1 迁移 / 增量推进 / 故障即停） ---------------- */

static void set_fault_prefix(const char *v)
{
    static char buf[64];

    snprintf(buf, sizeof(buf), "T6B_FAULT_PREFIX=%s", v);
    putenv(buf);
}

static void test_reader_legacy_state(void)
{
    t6b_reader r;
    t6b_event ev;
    char path[600];
    char err[192];
    char buf[1024];
    const char *reason = NULL;
    const char *field = NULL;
    unsigned long long dev = 0, ino = 0;
    size_t used = 0;
    int n;

    T("reader/P2-2 v1 state without prefix hash rescans from 0");
    mk_path(path, sizeof(path), "events_legacy.jsonl");
    remove_file(path);
    n = mk_rec(buf, sizeof(buf), 1, 1, "v1-a", "alpha");
    write_bytes(path, buf, (size_t)n, 0);
    used = (size_t)n;
    n = mk_rec(buf + used, sizeof(buf) - used, 2, 1, "v1-b", "beta");
    write_bytes(path, buf + used, (size_t)n, 1);
    EQ_LL(wu_file_identity(path, &dev, &ino, NULL), 0);
    {
        /* off 越过第一条记录（旧状态里的进度），但状态里没有指纹 */
        long long off = (long long)used;

        EQ_LL(t6b_reader_init(&r, path, off, dev, ino, 0, 0, T6B_REC_DEFAULT,
                              err, sizeof(err)), 0);
        EQ_LL(r.off, 0);
        EQ_LL(r.legacy_rescans, 1);
        EQ_LL(r.identity_resets, 0);
        EQ_LL(r.last_reason, T6B_OPEN_LEGACY_RESCAN);
        EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 1);
        EQ_STR(ev.event_id, "v1-a");            /* 第一条被重读（有界重复） */
        t6b_reader_commit(&r);
        EQ_LL(r.off, off);
        t6b_reader_free(&r);
    }
}

static void test_reader_prefix_incremental(void)
{
    t6b_reader r;
    t6b_event ev;
    char path[600];
    char err[192];
    char rec[512];
    const char *reason = NULL;
    const char *field = NULL;
    long long size;
    int n;
    int rc;

    T("reader/prefix hash tracks committed bytes only");
    mk_path(path, sizeof(path), "events_prefix.jsonl");
    remove_file(path);
    n = mk_rec(rec, sizeof(rec), 1, 1, "h1", "one");
    write_bytes(path, rec, (size_t)n, 0);
    EQ_LL(t6b_reader_init(&r, path, 0, 0, 0, 0, 1, T6B_REC_DEFAULT, err, sizeof(err)), 0);
    EQ_LL(t6b_reader_prefix_hash(&r), WU_HASH64_SEED);
    EQ_LL(t6b_reader_hash_valid(&r), 1);

    EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 1);
    /* 未提交：指纹不动 */
    EQ_LL(t6b_reader_prefix_hash(&r), WU_HASH64_SEED);
    EQ_LL(t6b_reader_commit(&r), 0);
    EQ_LL(r.off, (long long)n);
    EQ_LL(t6b_reader_prefix_hash(&r), wu_hash64(rec, (size_t)n));

    T("reader/half line does not move the prefix");
    {
        long long off_before = r.off;
        unsigned long long h_before = t6b_reader_prefix_hash(&r);

        write_bytes(path, "{\"version\":1,", 13, 1);
        EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 0);
        EQ_LL(r.off, off_before);
        EQ_LL(t6b_reader_prefix_hash(&r), h_before);      /* 半行不计入指纹 */
        remove_file(path);
        {   /* 复原：重新写回完整的第一条，后面的断言重新建立 */
            write_bytes(path, rec, (size_t)n, 0);
        }
        t6b_reader_free(&r);
        EQ_LL(t6b_reader_init(&r, path, 0, 0, 0, 0, 1, T6B_REC_DEFAULT, err, sizeof(err)), 0);
        EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 1);
        EQ_LL(t6b_reader_commit(&r), 0);
    }

    T("reader/oversize skip still folds the skipped bytes");
    {
        /* >64KB 的行会走 scan_past_long_line，提交时必须回读补齐指纹 */
        static char big[T6B_READ_CHUNK + 4096];
        size_t blen = sizeof(big) - 2;
        size_t before;
        int nl;

        memset(big, 'x', blen);
        big[blen] = '\n';
        big[blen + 1] = '\0';
        write_bytes(path, big, blen + 1, 1);
        nl = mk_rec(rec, sizeof(rec), 2, 1, "h2", "after-big");
        write_bytes(path, rec, (size_t)nl, 1);

        rc = t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err));
        EQ_LL(rc, -3);
        EQ_STR(reason, "record_too_long");
        before = (size_t)r.off;
        EQ_LL(t6b_reader_commit(&r), 0);                  /* 回读被跳过的字节 */
        EQ_LL(r.off, (long long)(before + blen + 1));
        EQ_LL(r.oversize_skips, 1);

        rc = t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err));
        EQ_LL(rc, 1);
        EQ_STR(ev.event_id, "h2");                        /* 超长行没有吞掉后面的记录 */
        EQ_LL(t6b_reader_commit(&r), 0);
        EQ_LL(t6b_reader_stat(&r, &size), 0);
        EQ_LL(r.off, size);
        /* 增量维护的指纹必须等于"整段前缀一次性算"的结果 */
        {
            FILE *f = fopen(path, "rb");
            unsigned long long whole = WU_HASH64_SEED;
            char chunk[4096];
            size_t got;

            OK(f != NULL);
            if (f != NULL) {
                while ((got = fread(chunk, 1, sizeof(chunk), f)) > 0)
                    whole = wu_hash64_ext(whole, chunk, got);
                fclose(f);
            }
            EQ_LL(t6b_reader_prefix_hash(&r), whole);
        }
        t6b_reader_free(&r);
    }
}

static void test_reader_fault_prefix(void)
{
    t6b_reader r;
    t6b_event ev;
    char path[600];
    char err[192];
    char rec[512];
    const char *reason = NULL;
    const char *field = NULL;
    unsigned long long dev = 0, ino = 0;
    int n;

    T("reader/prefix verify fault -> -2 (must stop consumption)");
    mk_path(path, sizeof(path), "events_fault.jsonl");
    remove_file(path);
    n = mk_rec(rec, sizeof(rec), 1, 1, "f1", "fault");
    write_bytes(path, rec, (size_t)n, 0);
    EQ_LL(wu_file_identity(path, &dev, &ino, NULL), 0);

    set_fault_prefix("read");
    EQ_LL(rd_init_hash(&r, path, (long long)n, dev, ino, T6B_REC_DEFAULT), -2);
    EQ_LL(r.io_errors, 1);
    t6b_reader_free(&r);
    set_fault_prefix("");

    T("reader/prefix fold fault -> commit -1, offset not advanced");
    EQ_LL(t6b_reader_init(&r, path, 0, 0, 0, 0, 1, T6B_REC_DEFAULT, err, sizeof(err)), 0);
    EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 1);
    set_fault_prefix("fold");
    EQ_LL(t6b_reader_commit(&r), -1);
    EQ_LL(r.off, 0);                                       /* 偏移没有前进 */
    EQ_LL(t6b_reader_prefix_hash(&r), WU_HASH64_SEED);
    set_fault_prefix("");
    EQ_LL(t6b_reader_commit(&r), 0);                        /* 故障消失后可以正常提交 */
    EQ_LL(r.off, (long long)n);
    EQ_LL(t6b_reader_prefix_hash(&r), wu_hash64(rec, (size_t)n));
    t6b_reader_free(&r);
}

/* ---------------- P2-2 复审 P1：前缀哈希提交的原子性 ---------------- */

/* 独立的一次性 FNV-1a 64 对照答案（不经 reader，只读文件前 upto 字节） */
static unsigned long long fnv_prefix_of_file(const char *path, long long upto)
{
    unsigned long long h = WU_HASH64_SEED;
    char buf[4096];
    long long left = upto;
    FILE *f = fopen(path, "rb");

    if (f == NULL) return 0;
    while (left > 0) {
        size_t want = (left > (long long)sizeof(buf)) ? sizeof(buf) : (size_t)left;
        size_t got = fread(buf, 1, want, f);
        if (got == 0) break;
        h = wu_hash64_ext(h, buf, got);
        left -= (long long)got;
    }
    fclose(f);
    return h;
}

/* 超长记录长度（不含换行）：
 *   ATOMIC_BIG 必须 > 一个读块，整行放不进缓存，commit 只能回读文件 → 中途失败可注入；
 *   ATOMIC_MID 只超过单行上限但仍整行在缓存里，commit 走缓存快速路径。 */
#define ATOMIC_BIG   (T6B_READ_CHUNK + 8192)
#define ATOMIC_MID   20000

static void test_reader_prefix_atomic(void)
{
    t6b_reader r;
    t6b_event ev;
    char path[600];
    char err[192];
    char rec[512];
    const char *reason = NULL;
    const char *field = NULL;
    unsigned long long h0;
    long long off0;
    long long pend0;
    long long errs0;
    int n;
    size_t i;
    char *big;

    /* ---------- 1) 回读路径：读完第一块之后失败，正式指纹必须保持原值 ---------- */
    T("reader/atomic fold: mid-way read fault keeps prefix hash (re-read path)");
    mk_path(path, sizeof(path), "events_atomic_partial.jsonl");
    remove_file(path);
    n = mk_rec(rec, sizeof(rec), 1, 1, "atom-a", "alpha");
    write_bytes(path, rec, (size_t)n, 0);
    off0 = (long long)n;

    big = (char *)malloc(ATOMIC_BIG + 1);
    OK(big != NULL);
    for (i = 0; i < ATOMIC_BIG; i++) big[i] = (i == 0) ? '{' : 'z';
    big[ATOMIC_BIG] = '\n';
    write_bytes(path, big, ATOMIC_BIG + 1, 1);
    n = mk_rec(rec, sizeof(rec), 2, 1, "atom-b", "beta");     /* 故障恢复后还能继续消费 */
    write_bytes(path, rec, (size_t)n, 1);

    EQ_LL(rd_init_seed(&r, path, 0, 0, 0, WU_HASH64_SEED, T6B_REC_DEFAULT), 0);
    EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 1);
    EQ_STR(ev.event_id, "atom-a");
    EQ_LL(t6b_reader_commit(&r), 0);
    EQ_LL(r.off, off0);

    /* 超长行：整行跳过，pending 指向它的结尾；提交它必须回读文件 */
    EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), -3);
    OK(reason != NULL && strcmp(reason, "record_too_long") == 0);
    pend0 = t6b_reader_pending(&r);
    EQ_LL(pend0, off0 + (long long)ATOMIC_BIG + 1);
    h0 = t6b_reader_prefix_hash(&r);
    EQ_LL(h0, fnv_prefix_of_file(path, off0));

    errs0 = r.io_errors;
    set_fault_prefix("fold_partial");
    EQ_LL(t6b_reader_commit(&r), -1);                       /* 第一块之后失败 */
    EQ_LL(r.io_errors, errs0 + 1);
    EQ_LL(t6b_reader_prefix_hash(&r), h0);                  /* 指纹一个字节都没前进 */
    OK(t6b_reader_prefix_hash(&r) != fnv_prefix_of_file(path, pend0));
    EQ_LL(r.off, off0);                                     /* 偏移没前进 */
    EQ_LL(t6b_reader_pending(&r), pend0);                   /* pending 没被推进也没被清零 */
    EQ_LL(t6b_reader_hash_valid(&r), 1);                    /* 状态仍自洽：指纹对应 [0,off) */
    set_fault_prefix("");

    EQ_LL(t6b_reader_commit(&r), 0);                        /* 故障消失后一次性提交 */
    EQ_LL(r.off, pend0);
    EQ_LL(t6b_reader_prefix_hash(&r), fnv_prefix_of_file(path, pend0));

    EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 1);
    EQ_STR(ev.event_id, "atom-b");
    EQ_LL(t6b_reader_commit(&r), 0);
    EQ_LL(r.off, wu_file_size(path));
    EQ_LL(t6b_reader_prefix_hash(&r), fnv_prefix_of_file(path, wu_file_size(path)));
    t6b_reader_free(&r);
    free(big);

    /* ---------- 2) 缓存快速路径：整段算完才提交，失败则完全不动 ---------- */
    T("reader/atomic fold: cache path commits the whole span or nothing");
    mk_path(path, sizeof(path), "events_atomic_cache.jsonl");
    remove_file(path);
    big = (char *)malloc(ATOMIC_MID + 1);
    OK(big != NULL);
    for (i = 0; i < ATOMIC_MID; i++) big[i] = (i == 0) ? '{' : 'y';
    big[ATOMIC_MID] = '\n';
    write_bytes(path, big, ATOMIC_MID + 1, 0);
    n = mk_rec(rec, sizeof(rec), 3, 1, "atom-c", "gamma");
    write_bytes(path, rec, (size_t)n, 1);
    free(big);

    EQ_LL(rd_init_seed(&r, path, 0, 0, 0, WU_HASH64_SEED, T6B_REC_DEFAULT), 0);
    EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), -3);
    pend0 = t6b_reader_pending(&r);
    EQ_LL(pend0, (long long)ATOMIC_MID + 1);
    EQ_LL(t6b_reader_prefix_hash(&r), WU_HASH64_SEED);

    set_fault_prefix("fold");
    EQ_LL(t6b_reader_commit(&r), -1);
    EQ_LL(t6b_reader_prefix_hash(&r), WU_HASH64_SEED);      /* 缓存路径同样是全有或全无 */
    EQ_LL(r.off, 0);
    EQ_LL(t6b_reader_pending(&r), pend0);
    set_fault_prefix("");

    /* fold_partial 只作用于多块回读：缓存路径没有"中途"，一次算完即提交 */
    set_fault_prefix("fold_partial");
    EQ_LL(t6b_reader_commit(&r), 0);
    set_fault_prefix("");
    EQ_LL(r.off, pend0);
    EQ_LL(t6b_reader_prefix_hash(&r), fnv_prefix_of_file(path, pend0));

    EQ_LL(t6b_reader_next(&r, &ev, &reason, &field, err, sizeof(err)), 1);
    EQ_STR(ev.event_id, "atom-c");
    EQ_LL(t6b_reader_commit(&r), 0);
    EQ_LL(r.off, wu_file_size(path));
    EQ_LL(t6b_reader_prefix_hash(&r), fnv_prefix_of_file(path, wu_file_size(path)));
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
    printf("=== T5-06B worker unit test ===\n");
    printf("abi: %d-bit long, ULONG_MAX=%llu (seq upper bound depends on this)\n",
           (int)(sizeof(long) * 8), (unsigned long long)ULONG_MAX);
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
    test_reader_legacy_state();
    test_reader_prefix_incremental();
    test_reader_fault_prefix();
    test_reader_prefix_atomic();
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
