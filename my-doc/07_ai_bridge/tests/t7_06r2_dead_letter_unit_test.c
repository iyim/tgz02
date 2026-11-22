/*
 * t7_06r2_dead_letter_unit_test.c -- T7-06-R2 死信 JSON 序列化 + 追加写的主机测试
 *
 * 缺陷背景：T7-06-R1 的 dead_letter_event() 会把整行 JSON 里的所有 '"' 换成 '\''，
 * 于是 dead_letter.jsonl 里每一行都不是合法 JSON（连结构引号都被压掉了）。
 *
 * 这个测试只做两件事：
 *   1) 逐字节断言 t6b_dl_format() 的输出（引号 / 反斜杠 / 换行 / 制表 / 控制字符 /
 *      非 ASCII / 非法 UTF-8 / 缓冲区不足）；
 *   2) 断言 t6b_dl_append() 的落盘语义（一行一条、行尾 '\n'、半行修复、失败返回 -1）。
 *
 * 另外把测试用的样例行写到 <out>/t7_06r2_dead_letter_samples.jsonl，
 * 由 t7_06r2_dead_letter_json_test.py 用标准解析器（json.loads）逐行验证 ——
 * "能被标准 JSON 解析器独立解析"这一条必须由真正的解析器来判。
 *
 * 用法：t7_06r2_dead_letter_unit_test.exe [输出目录]
 */
#include "dead_letter.h"

#include <errno.h>
#include <stdio.h>
#include <string.h>
#include <sys/stat.h>

#ifdef _WIN32
#  include <direct.h>
#  include <io.h>
#  define MKDIR(p) _mkdir(p)
#  define UNLINK(p) _unlink(p)
#else
#  include <unistd.h>
#  define MKDIR(p) mkdir((p), 0775)
#  define UNLINK(p) unlink(p)
#endif

static int g_pass;
static int g_fail;

static void ok(int cond, const char *what)
{
    if (cond) g_pass++;
    else { g_fail++; printf("FAIL %s\n", what); }
}

static void eq(const char *what, const char *got, const char *want)
{
    if (strcmp(got, want) == 0) { g_pass++; return; }
    g_fail++;
    printf("FAIL %s\n  got : %s\n  want: %s\n", what, got, want);
}

/* 构造一行；返回长度，0 = 放不下 */
static size_t fmt(char *dst, size_t cap, long long ts, const char *eid, size_t eidlen,
                  unsigned long seq, int attempts, const char *cls, size_t clslen,
                  int errbytes)
{
    t6b_dl_rec r;

    memset(&r, 0, sizeof(r));
    r.ts_ms = ts;
    r.event_id = eid;
    r.event_id_len = (eidlen == (size_t)-1) ? strlen(eid) : eidlen;
    r.seq = seq;
    r.attempts = attempts;
    r.error_class = cls;
    r.error_class_len = (clslen == (size_t)-1) ? strlen(cls) : clslen;
    r.error_bytes = errbytes;
    return t6b_dl_format(dst, cap, &r);
}

static void read_all(const char *path, char *buf, size_t cap, size_t *outlen)
{
    FILE *f = fopen(path, "rb");
    size_t n = 0;

    if (f == NULL) { buf[0] = '\0'; if (outlen) *outlen = 0; return; }
    n = fread(buf, 1, cap - 1, f);
    fclose(f);
    buf[n] = '\0';
    if (outlen) *outlen = n;
}

static void write_raw(const char *path, const char *data, size_t len)
{
    FILE *f = fopen(path, "wb");
    size_t n;
    if (f == NULL) return;
    n = fwrite(data, 1, len, f);
    (void)n;
    fclose(f);
}

/* 收集样例行，交给 Python 解析器验证 */
static char g_samples[65536];
static size_t g_samples_len;
static int g_samples_count;

static void keep(const char *line, size_t len)
{
    if (g_samples_len + len + 1 >= sizeof(g_samples)) return;
    memcpy(g_samples + g_samples_len, line, len);
    g_samples_len += len;
    g_samples_count++;
}

int main(int argc, char **argv)
{
    const char *outdir = (argc > 1) ? argv[1] : ".";
    char path[512];
    char tmp[512];
    char line[T6B_DL_LINE_MAX];
    char another[T6B_DL_LINE_MAX];
    char back[4096];
    char want[T6B_DL_LINE_MAX];
    size_t n, n2, blen;
    long long repaired = 0;

    printf("=== T7-06-R2 dead letter JSON unit test ===\n");

    /* ---------- 1. 普通记录：字段名、顺序、数值原样 ---------- */
    n = fmt(line, sizeof(line), 1700000000000LL, "t5b-4242-f000-g1", (size_t)-1,
            7, 4, "http_503", (size_t)-1, 42);
    ok(n > 0, "plain: formatted");
    eq("plain: exact bytes",
       line,
       "{\"ts\":1700000000000,\"event_id\":\"t5b-4242-f000-g1\",\"seq\":7,"
       "\"attempts\":4,\"error_class\":\"http_503\",\"error_bytes\":42,"
       "\"invalid_utf8\":0}\n");
    ok(line[n - 1] == '\n', "plain: ends with newline (JSON Lines)");
    keep(line, n);

    /* ---------- 2. 引号：必须是 \"，且输出里不许出现单引号伪装 ---------- */
    n = fmt(line, sizeof(line), 1, "a\"b", (size_t)-1, 1, 1, "c\"d", (size_t)-1, 0);
    ok(n > 0, "quote: formatted");
    ok(strstr(line, "\"event_id\":\"a\\\"b\"") != NULL, "quote: event_id escaped as \\\"");
    ok(strstr(line, "\"error_class\":\"c\\\"d\"") != NULL, "quote: error_class escaped as \\\"");
    ok(strchr(line, '\'') == NULL, "quote: no single-quote substitute in output");
    keep(line, n);

    /* ---------- 3. 反斜杠 ---------- */
    n = fmt(line, sizeof(line), 2, "a\\b", (size_t)-1, 2, 2, "x\\\\y", (size_t)-1, 0);
    ok(strstr(line, "\"event_id\":\"a\\\\b\"") != NULL, "backslash: doubled in event_id");
    ok(strstr(line, "\"error_class\":\"x\\\\\\\\y\"") != NULL, "backslash: doubled in error_class");
    keep(line, n);

    /* ---------- 4. 控制字符：短转义 + \u00XX ---------- */
    n = fmt(line, sizeof(line), 3, "a\nb\tc\rd\be\ff", (size_t)-1, 3, 3, "g\001h\177i", (size_t)-1, 0);
    ok(strstr(line, "\"event_id\":\"a\\nb\\tc\\rd\\be\\ff\"") != NULL,
       "control: \\n \\t \\r \\b \\f short escapes");
    ok(strstr(line, "\"error_class\":\"g\\u0001h\\u007fi\"") != NULL,
       "control: other control chars as \\u00XX");
    ok(strchr(line, '\n') != NULL && strchr(line, '\n') == line + n - 1,
       "control: only one raw newline (the line terminator)");
    keep(line, n);

    /* ---------- 5. 非 ASCII：合法 UTF-8 原样保留 ---------- */
    n = fmt(line, sizeof(line), 4, "\xe4\xbd\xa0\xe5\xa5\xbd", (size_t)-1, 5, 1,
            "\xf0\x9f\x98\x80", (size_t)-1, 0);   /* 你好 / 😀 */
    ok(n > 0, "utf8: formatted");
    ok(strstr(line, "\"event_id\":\"\xe4\xbd\xa0\xe5\xa5\xbd\"") != NULL,
       "utf8: 3-byte sequences kept raw");
    ok(strstr(line, "\"error_class\":\"\xf0\x9f\x98\x80\"") != NULL,
       "utf8: 4-byte sequence kept raw");
    ok(strstr(line, "\"invalid_utf8\":0") != NULL, "utf8: invalid_utf8 flag is 0");
    keep(line, n);

    /* ---------- 6. 非法 UTF-8：替换成 '?'，绝不留裸字节 ---------- */
    {
        char bad[16];
        const char *p;
        int has_ff = 0;
        int has_c0 = 0;

        bad[0] = (char)0xff;              /* 非法首字节 */
        bad[1] = (char)0xc3;              /* 截断的 2 字节序列 */
        bad[2] = (char)0xc0;              /* overlong */
        bad[3] = (char)0x80;
        bad[4] = (char)0xed;              /* 代理区 ED A0 80 */
        bad[5] = (char)0xa0;
        bad[6] = (char)0x80;
        bad[7] = 'A';
        n = fmt(line, sizeof(line), 5, bad, 8, 6, 1, "ok", (size_t)-1, 0);
        ok(n > 0, "badutf8: formatted");
        ok(strstr(line, "\"invalid_utf8\":1") != NULL, "badutf8: invalid_utf8 flag is 1");
        ok(strstr(line, "\"event_id\":\"???????A\"") != NULL,
           "badutf8: each invalid byte replaced with '?'");
        for (p = line; p < line + n; p++) {
            if ((unsigned char)*p == 0xff) has_ff = 1;
            if ((unsigned char)*p == 0xc0) has_c0 = 1;
        }
        ok(!has_ff && !has_c0, "badutf8: no raw invalid byte in output");
        keep(line, n);
    }

    /* ---------- 7. 结构注入尝试：引号不会提前闭合字符串 ---------- */
    {
        const char *payload = "\"},\"seq\":999,{\"x\":\"";
        char esc[128];
        size_t eo = 0, k;

        for (k = 0; payload[k] != '\0'; k++) {
            if (payload[k] == '"') { esc[eo++] = '\\'; esc[eo++] = '"'; }
            else esc[eo++] = payload[k];
        }
        esc[eo] = '\0';

        n = fmt(line, sizeof(line), 6, payload, (size_t)-1, 6, 1, "", (size_t)-1, 0);
        ok(n > 0, "inject: formatted");
        ok(strstr(line, ",\"seq\":999,") == NULL,
           "inject: payload cannot forge a top-level field");
        ok(strstr(line, esc) != NULL, "inject: payload fully escaped");
        keep(line, n);
    }

    /* ---------- 8. 缓冲区不足：返回 0，不写半条 ---------- */
    {
        char small[24];
        memset(small, 'X', sizeof(small));
        ok(fmt(small, sizeof(small), 7, "id", (size_t)-1, 1, 1, "cls", (size_t)-1, 0) == 0,
           "cap: too small -> 0 (never a truncated line)");
        small[0] = 'X';
        ok(fmt(small, 0, 7, "id", (size_t)-1, 1, 1, "cls", (size_t)-1, 0) == 0,
           "cap: zero -> 0");
    }
    ok(t6b_dl_format(NULL, 32, NULL) == 0, "cap: null out -> 0");

    /* ---------- 9. 追加写：一行一条、行尾 '\n' ---------- */
    snprintf(tmp, sizeof(tmp), "%s/_dl_tmp", outdir);
    (void)MKDIR(tmp);
    snprintf(path, sizeof(path), "%s/dead_letter.jsonl", tmp);
    (void)UNLINK(path);

    n = fmt(line, sizeof(line), 10, "e-1", (size_t)-1, 1, 1, "http_503", (size_t)-1, 3);
    n2 = fmt(another, sizeof(another), 11, "e-2", (size_t)-1, 2, 1, "http_503", (size_t)-1, 3);
    ok(t6b_dl_append(path, line, n, &repaired) == 0, "append: first line ok");
    ok(repaired == 0, "append: nothing repaired on a fresh file");
    ok(t6b_dl_append(path, another, n2, &repaired) == 0, "append: second line ok");
    read_all(path, back, sizeof(back), &blen);
    ok(blen == n + n2, "append: both lines present, byte-exact length");
    ok(blen > 0 && back[blen - 1] == '\n', "append: file ends with newline");
    ok(strncmp(back, line, n) == 0 && strncmp(back + n, another, n2) == 0,
       "append: lines in order, no rewriting");

    /* ---------- 10. 半行修复：崩溃留下的残行不许粘到新记录上 ---------- */
    {
        static const char partial[] = "{\"ts\":9,\"event_id\":\"broken";
        write_raw(path, partial, sizeof(partial) - 1);
        repaired = 0;
        ok(t6b_dl_append(path, line, n, &repaired) == 0, "repair: append after partial line ok");
        ok(repaired == (long long)(sizeof(partial) - 1), "repair: partial bytes truncated");
        read_all(path, back, sizeof(back), &blen);
        ok(blen == n, "repair: file contains exactly the new record");
        ok(strncmp(back, line, n) == 0, "repair: record intact");
    }

    /* ---------- 11. 完整行 + 半行：只丢半行，前面的记录保留 ---------- */
    {
        static const char tailpart[] = "{\"ts\":12,\"half";
        char seed[512];
        size_t seedlen;

        seedlen = (size_t)snprintf(seed, sizeof(seed), "%s", line);
        memcpy(seed + seedlen, tailpart, sizeof(tailpart) - 1);
        seedlen += sizeof(tailpart) - 1;
        write_raw(path, seed, seedlen);
        repaired = 0;
        ok(t6b_dl_append(path, another, n2, &repaired) == 0, "repair2: append ok");
        ok(repaired == (long long)(sizeof(tailpart) - 1), "repair2: only the half line dropped");
        read_all(path, back, sizeof(back), &blen);
        ok(blen == n + n2, "repair2: good line + new line only");
        ok(strncmp(back, line, n) == 0, "repair2: previous record untouched");
        ok(strncmp(back + n, another, n2) == 0, "repair2: new record intact");
    }

    /* ---------- 12. 落盘失败：返回 -1（调用方据此不推进 offset） ---------- */
    snprintf(path, sizeof(path), "%s/no_such_dir/dead_letter.jsonl", tmp);
    ok(t6b_dl_append(path, line, n, NULL) == -1, "append: missing dir -> -1");
    snprintf(path, sizeof(path), "%s", tmp);      /* 目录本身当文件写 */
    ok(t6b_dl_append(path, line, n, NULL) == -1, "append: path is a directory -> -1");
    ok(t6b_dl_append(NULL, line, n, NULL) == -1, "append: null path -> -1");
    ok(t6b_dl_append(tmp, NULL, 0, NULL) == -1, "append: empty line -> -1");

    /* ---------- 13. 每次格式化都是独立一行：累计样例行 ---------- */
    ok(g_samples_count >= 6, "samples: adversarial lines collected for the JSON parser");

    snprintf(want, sizeof(want), "%s/t7_06r2_dead_letter_samples.jsonl", outdir);
    write_raw(want, g_samples, g_samples_len);
    printf("samples: %d line(s) -> %s\n", g_samples_count, want);

    printf("pass=%d fail=%d\n", g_pass, g_fail);
    return (g_fail == 0) ? 0 : 1;
}
