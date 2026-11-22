/*
 * t7_06r2_dead_letter_unit_test.c -- 死信 JSON 序列化 + 持久化追加的主机测试
 *
 * 覆盖三轮修的东西：
 *   T7-06-R1 缺陷：整行引号被换成单引号 -> 不是合法 JSON；
 *   T7-06-R2 修复：严格转义 / 一行一条 / 缓冲区不足拒绝 / 半行修复 / 失败回滚；
 *   T7-08 补丁（本文件的重点）：
 *     A1 ts 必须是墙钟（Epoch ms），不是单调时钟；
 *     A2 尾部修复无 4 KB 上限，超长半行要能截掉，且绝不"补换行扶正"；
 *     A3 追加写有排他锁 + 单次 write + 短写续写 + 失败回滚（并发由 python 侧验证）；
 *     A4 fsync 成功而 close 失败 = 已持久化（返回 0，只告警），不得重复追加。
 *
 * 故障注入靠编译宏 T6B_DL_TESTING（生产构建不定义，相关代码不参与编译）。
 *
 * 用法：
 *   t7_06r2_dead_letter_unit_test.exe <outdir>                      正常自测
 *   t7_06r2_dead_letter_unit_test.exe appendloop <file> <n> <tag>   并发写压力（供 python 调用）
 */
#include "dead_letter.h"

#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <time.h>

#include "worker_util.h"         /* 只为 A1：wu_wall_ms() 的语义对照 */

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

static size_t read_all(const char *path, char *buf, size_t cap)
{
    FILE *f = fopen(path, "rb");
    size_t n;

    if (f == NULL) { buf[0] = '\0'; return 0; }
    n = fread(buf, 1, cap - 1, f);
    fclose(f);
    buf[n] = '\0';
    return n;
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

static long long file_size(const char *path)
{
    struct stat st;
    if (stat(path, &st) != 0) return -1;
    return (long long)st.st_size;
}

static int count_lines(const char *buf, size_t len)
{
    size_t i;
    int n = 0;

    for (i = 0; i < len; i++) if (buf[i] == '\n') n++;
    return n;
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

/* 并发写压力模式：由 python 起多个进程同时追加，验证排他锁确实不让行与行互相插入 */
static int append_loop(const char *path, int count, const char *tag)
{
    char line[T6B_DL_LINE_MAX];
    size_t n;
    int i;

    for (i = 0; i < count; i++) {
        char eid[64];
        t6b_dl_out o;
        snprintf(eid, sizeof(eid), "%s-%04d", tag, i);
        n = fmt(line, sizeof(line), 1700000000000LL + i, eid, (size_t)-1, (unsigned long)i,
                1, "http_503", (size_t)-1, 7);
        if (n == 0) return 2;
        if (t6b_dl_append(path, line, n, &o) != 0) return 3;
    }
    return 0;
}

int main(int argc, char **argv)
{
    const char *outdir = (argc > 1) ? argv[1] : ".";
    char path[512];
    char tmp[512];
    char line[T6B_DL_LINE_MAX];
    char another[T6B_DL_LINE_MAX];
    static char back[262144];
    char want[T6B_DL_LINE_MAX];
    size_t n, n2, blen;
    t6b_dl_out out;

    if (argc > 4 && strcmp(argv[1], "appendloop") == 0)
        return append_loop(argv[2], atoi(argv[3]), argv[4]);

    printf("=== dead letter JSON unit test (T7-06-R2 + T7-08) ===\n");

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

    /* ---------- 9. A1：ts 必须是墙钟（Epoch ms） ---------- */
    {
        long long w = wu_wall_ms();
        long long sys = (long long)time(NULL) * 1000LL;
        long long diff = (w > sys) ? (w - sys) : (sys - w);
        char tsbuf[64];

        ok(diff < 5000, "A1: wu_wall_ms() is within 5 s of system Epoch time");
        ok(w > 1600000000000LL, "A1: wall ms is an Epoch value (> 2020-09), not a boot counter");

        n = fmt(line, sizeof(line), w, "wall-clock", (size_t)-1, 1, 1, "http_503", (size_t)-1, 4);
        snprintf(tsbuf, sizeof(tsbuf), "\"ts\":%lld", w);
        ok(strstr(line, tsbuf) != NULL, "A1: formatted ts uses the wall-clock value verbatim");
        keep(line, n);
    }

    /* ---------- 10. 追加写：一行一条、行尾 '\n' ---------- */
    snprintf(tmp, sizeof(tmp), "%s/_dl_tmp", outdir);
    (void)MKDIR(tmp);
    snprintf(path, sizeof(path), "%s/dead_letter.jsonl", tmp);
    (void)UNLINK(path);

    n = fmt(line, sizeof(line), 10, "e-1", (size_t)-1, 1, 1, "http_503", (size_t)-1, 3);
    n2 = fmt(another, sizeof(another), 11, "e-2", (size_t)-1, 2, 1, "http_503", (size_t)-1, 3);
    ok(t6b_dl_append(path, line, n, &out) == 0, "append: first line ok");
    ok(out.repaired_bytes == 0, "append: nothing repaired on a fresh file");
    ok(out.close_failed == 0, "append: no close warning on a normal run");
    ok(t6b_dl_append(path, another, n2, &out) == 0, "append: second line ok");
    blen = read_all(path, back, sizeof(back));
    ok(blen == n + n2, "append: both lines present, byte-exact length");
    ok(blen > 0 && back[blen - 1] == '\n', "append: file ends with newline");
    ok(strncmp(back, line, n) == 0 && strncmp(back + n, another, n2) == 0,
       "append: lines in order, no rewriting");

    /* ---------- 11. 半行修复：崩溃留下的残行不许粘到新记录上 ---------- */
    {
        static const char partial[] = "{\"ts\":9,\"event_id\":\"broken";
        write_raw(path, partial, sizeof(partial) - 1);
        ok(t6b_dl_append(path, line, n, &out) == 0, "repair: append after partial line ok");
        ok(out.repaired_bytes == (long long)(sizeof(partial) - 1), "repair: partial bytes truncated");
        blen = read_all(path, back, sizeof(back));
        ok(blen == n, "repair: file contains exactly the new record");
        ok(strncmp(back, line, n) == 0, "repair: record intact");
    }

    /* ---------- 12. 完整行 + 半行：只丢半行，前面的记录保留 ---------- */
    {
        static const char tailpart[] = "{\"ts\":12,\"half";
        char seed[512];
        size_t seedlen;

        seedlen = (size_t)snprintf(seed, sizeof(seed), "%s", line);
        memcpy(seed + seedlen, tailpart, sizeof(tailpart) - 1);
        seedlen += sizeof(tailpart) - 1;
        write_raw(path, seed, seedlen);
        ok(t6b_dl_append(path, another, n2, &out) == 0, "repair2: append ok");
        ok(out.repaired_bytes == (long long)(sizeof(tailpart) - 1), "repair2: only the half line dropped");
        blen = read_all(path, back, sizeof(back));
        ok(blen == n + n2, "repair2: good line + new line only");
        ok(strncmp(back, line, n) == 0, "repair2: previous record untouched");
        ok(strncmp(back + n, another, n2) == 0, "repair2: new record intact");
    }

    /* ---------- 13. A2：超过 4 KB 的超长半行也要修掉 ---------- */
    {
        size_t huge = 12000;          /* 远大于旧实现的 4096 窗口 */
        char *big = (char *)malloc(huge + 1);

        ok(big != NULL, "A2: alloc for the oversize tail");
        if (big != NULL) {
            memset(big, 'x', huge);   /* 没有换行、也没有合法 JSON */
            big[huge] = '\0';
            /* 先放一条完整记录，再接一段 12 KB 的无换行垃圾 */
            {
                char seed[512];
                size_t seedlen = (size_t)snprintf(seed, sizeof(seed), "%s", line);
                char *both = (char *)malloc(seedlen + huge + 1);
                ok(both != NULL, "A2: alloc for combined fixture");
                if (both != NULL) {
                    memcpy(both, seed, seedlen);
                    memcpy(both + seedlen, big, huge);
                    write_raw(path, both, seedlen + huge);
                    free(both);
                }
            }
            ok(t6b_dl_append(path, another, n2, &out) == 0, "A2: append after 12 KB junk ok");
            ok(out.repaired_bytes == (long long)huge, "A2: all 12000 junk bytes truncated");
            blen = read_all(path, back, sizeof(back));
            ok(blen == n + n2, "A2: kept record + new record, nothing else");
            ok(strncmp(back, line, n) == 0, "A2: the complete record survived");
            ok(count_lines(back, blen) == 2, "A2: exactly two lines");
            free(big);
        }
    }

    /* ---------- 14. A2：整个文件都没有换行 -> 视为全损坏，清空 ---------- */
    {
        static const char junk[] = "this-file-has-no-newline-at-all-0123456789";
        write_raw(path, junk, sizeof(junk) - 1);
        ok(t6b_dl_append(path, line, n, &out) == 0, "A2b: append into a fully broken file ok");
        ok(out.repaired_bytes == (long long)(sizeof(junk) - 1), "A2b: whole junk removed");
        blen = read_all(path, back, sizeof(back));
        ok(blen == n, "A2b: only the new record remains");
        ok(strncmp(back, line, n) == 0, "A2b: new record intact");
    }

    /* ---------- 15. 落盘失败：返回 -1（调用方据此不推进 offset） ---------- */
    snprintf(path, sizeof(path), "%s/no_such_dir/dead_letter.jsonl", tmp);
    ok(t6b_dl_append(path, line, n, NULL) == -1, "append: missing dir -> -1");
    snprintf(path, sizeof(path), "%s", tmp);      /* 目录本身当文件 */
    ok(t6b_dl_append(path, line, n, NULL) == -1, "append: path is a directory -> -1");
    ok(t6b_dl_append(NULL, line, n, NULL) == -1, "append: null path -> -1");
    ok(t6b_dl_append(tmp, NULL, 0, NULL) == -1, "append: empty line -> -1");
    {
        static const char noterm[] = "abcde";   /* 缺行尾：必须是完整的一行才收 */
        snprintf(path, sizeof(path), "%s/_dl_tmp/noterm.jsonl", outdir);
        (void)UNLINK(path);
        ok(t6b_dl_append(path, noterm, sizeof(noterm) - 1, NULL) == -1,
           "append: line without trailing newline -> -1");
        ok(file_size(path) <= 0, "append: rejected line left no file content");
    }

    /* ---------- 16. 故障注入矩阵（T7-09 A2） ---------- */
    snprintf(tmp, sizeof(tmp), "%s/_dl_tmp", outdir);
    snprintf(path, sizeof(path), "%s/fault.jsonl", tmp);
    (void)UNLINK(path);

    /* 16.1 短写：第一次只写一半，第二次写完 -> 记录完整（不是失败） */
    t6b_dl_test_fault_set(T6B_DL_FAULT_WRITE_SHORT);
    ok(t6b_dl_append(path, line, n, &out) == T6B_DL_OK, "A3: short write is continued, not lost");
    ok(t6b_dl_test_fault_peek() == T6B_DL_FAULT_NONE, "A3: injected fault consumed once");
    blen = read_all(path, back, sizeof(back));
    ok(blen == n, "A3: short write produced exactly one complete line");
    ok(strncmp(back, line, n) == 0, "A3: short write content byte-exact");

    /* 16.2 短写后第二次 write 失败，回滚成功 -> -1：已确认干净，Worker 可以安全重试 */
    {
        long long before = file_size(path);
        memset(&out, 0xff, sizeof(out));
        t6b_dl_test_fault_set(T6B_DL_FAULT_WRITE_SHORT_FAIL);
        t6b_dl_test_fault2_set(T6B_DL_FAULT_WRITE_FAIL);
        ok(t6b_dl_append(path, another, n2, &out) == T6B_DL_E_IO,
           "A2-1: partial write then write failure -> E_IO (retryable)");
        ok(out.io_stage == T6B_DL_STAGE_WRITE, "A2-1: io_stage == WRITE");
        ok(out.rollback_stage == T6B_DL_STAGE_NONE, "A2-1: rollback confirmed (stage NONE)");
        ok(out.pre_len == before, "A2-1: pre_len reported");
        ok(file_size(path) == before, "A2-1: file rolled back to pre_len");
        blen = read_all(path, back, sizeof(back));
        ok(blen == n && strncmp(back, line, n) == 0, "A2-1: previous record untouched");
    }

    /* 16.3 write 失败 + 回滚截断成功 -> -1（干净失败） */
    {
        long long before = file_size(path);
        memset(&out, 0xff, sizeof(out));
        t6b_dl_test_fault_set(T6B_DL_FAULT_WRITE_FAIL);
        ok(t6b_dl_append(path, another, n2, &out) == T6B_DL_E_IO, "A2-2: write failure -> E_IO");
        ok(out.io_stage == T6B_DL_STAGE_WRITE && out.rollback_stage == T6B_DL_STAGE_NONE,
           "A2-2: rollback confirmed");
        ok(file_size(path) == before, "A2-2: rolled back to pre_len");
    }

    /* 16.4 write 失败 + 回滚截断失败 -> -2：状态不确定，禁止重试 */
    {
        long long before = file_size(path);
        memset(&out, 0xff, sizeof(out));
        t6b_dl_test_fault_set(T6B_DL_FAULT_WRITE_FAIL);
        t6b_dl_test_fault2_set(T6B_DL_FAULT_TRUNC_FAIL);
        ok(t6b_dl_append(path, another, n2, &out) == T6B_DL_E_ROLLBACK,
           "A2-3: write failure + rollback trunc failure -> E_ROLLBACK");
        ok(out.io_stage == T6B_DL_STAGE_WRITE, "A2-3: io_stage == WRITE");
        ok(out.io_errno != 0, "A2-3: io_errno recorded");
        ok(out.rollback_stage == T6B_DL_STAGE_TRUNC, "A2-3: rollback_stage == TRUNC");
        ok(out.pre_len == before, "A2-3: pre_len recorded");
        ok(out.cur_len_valid == 1, "A2-3: current length readable");
        ok(file_size(path) == before, "A2-3: nothing extra was actually written");
    }

    /* 16.5 fsync 失败 + 回滚成功 -> -1 */
    {
        long long before = file_size(path);
        memset(&out, 0xff, sizeof(out));
        t6b_dl_test_fault_set(T6B_DL_FAULT_FSYNC_FAIL);
        ok(t6b_dl_append(path, another, n2, &out) == T6B_DL_E_IO, "A2-4: fsync failure -> E_IO");
        ok(out.io_stage == T6B_DL_STAGE_FSYNC && out.rollback_stage == T6B_DL_STAGE_NONE,
           "A2-4: fsync stage + rollback confirmed");
        ok(file_size(path) == before, "A2-4: rolled back");
    }

    /* 16.6 fsync 失败 + 回滚截断失败 -> -2 */
    {
        long long before = file_size(path);
        memset(&out, 0xff, sizeof(out));
        t6b_dl_test_fault_set(T6B_DL_FAULT_FSYNC_FAIL);
        t6b_dl_test_fault2_set(T6B_DL_FAULT_TRUNC_FAIL);
        ok(t6b_dl_append(path, another, n2, &out) == T6B_DL_E_ROLLBACK,
           "A2-5: fsync failure + rollback trunc failure -> E_ROLLBACK");
        ok(out.io_stage == T6B_DL_STAGE_FSYNC, "A2-5: io_stage == FSYNC");
        ok(out.rollback_stage == T6B_DL_STAGE_TRUNC, "A2-5: rollback_stage == TRUNC");
        /* 关键：截断失败 => 那一行**还留在文件里**（状态不确定），这正是不能重试的原因 */
        ok(file_size(path) == before + (long long)n2,
           "A2-5: unrolled-back record is still in the file (uncertain state)");
        ok(out.cur_len == before + (long long)n2, "A2-5: cur_len reflects the uncertain length");
    }

    /* 16.7 回滚截断成功但回滚 fsync 失败 -> -2 */
    {
        memset(&out, 0xff, sizeof(out));
        t6b_dl_test_fault_set(T6B_DL_FAULT_FSYNC_FAIL);
        t6b_dl_test_fault2_set(T6B_DL_FAULT_ROLLBACK_SYNC_FAIL);
        ok(t6b_dl_append(path, another, n2, &out) == T6B_DL_E_ROLLBACK,
           "A2-6: truncate ok but rollback fsync failed -> E_ROLLBACK");
        ok(out.io_stage == T6B_DL_STAGE_FSYNC, "A2-6: io_stage == FSYNC");
        ok(out.rollback_stage == T6B_DL_STAGE_ROLLBACK_SYNC,
           "A2-6: rollback_stage == ROLLBACK_SYNC");
        ok(out.rollback_errno != 0, "A2-6: rollback_errno recorded");
    }

    /* 16.8 fsync 成功、close 失败 -> 0（数据已持久化），只报警一次，不重复追加 */
    {
        long long before;

        /* 前面的"状态不确定"用例会在文件里留下未回滚的记录，这里先重置成单行夹具 */
        write_raw(path, line, n);
        before = file_size(path);
        ok(before == (long long)n, "A4: fixture reset to exactly one record");
        memset(&out, 0, sizeof(out));
        t6b_dl_test_fault_set(T6B_DL_FAULT_CLOSE_FAIL);
        ok(t6b_dl_append(path, another, n2, &out) == T6B_DL_OK,
           "A4: close failure after fsync is NOT a write failure");
        ok(out.close_failed == 1, "A4: close failure reported in out.close_failed");
        ok(out.io_stage == T6B_DL_STAGE_NONE, "A4: no io error recorded");
        ok(file_size(path) == before + (long long)n2, "A4: record is on disk exactly once");
        blen = read_all(path, back, sizeof(back));
        ok(count_lines(back, blen) == 2, "A4: no duplicate line from the close-failure path");
        ok(strncmp(back + n, another, n2) == 0, "A4: appended record byte-exact");
    }

    /* 16.9 加锁失败 -> -1，不写，也不破坏文件 */
    {
        long long before = file_size(path);
        memset(&out, 0xff, sizeof(out));
        t6b_dl_test_fault_set(T6B_DL_FAULT_LOCK_FAIL);
        ok(t6b_dl_append(path, line, n, &out) == T6B_DL_E_IO, "A3: lock failure -> E_IO");
        ok(out.io_stage == T6B_DL_STAGE_LOCK, "A3: io_stage == LOCK");
        ok(file_size(path) == before, "A3: lock failure leaves the file untouched");
    }

    /* 16.10 尾部修复本身失败 -> -1（什么都没追加，重试安全），但必须报 REPAIR 阶段 */
    {
        static const char half[] = "{\"ts\":1,\"half";
        char seed[512];
        size_t seedlen;
        long long before;

        seedlen = (size_t)snprintf(seed, sizeof(seed), "%s", line);
        memcpy(seed + seedlen, half, sizeof(half) - 1);
        seedlen += sizeof(half) - 1;
        write_raw(path, seed, seedlen);
        before = file_size(path);

        memset(&out, 0xff, sizeof(out));
        t6b_dl_test_fault2_set(T6B_DL_FAULT_TRUNC_FAIL);
        ok(t6b_dl_append(path, another, n2, &out) == T6B_DL_E_IO,
           "A2-7: tail-repair truncate failure -> E_IO (nothing appended)");
        ok(out.io_stage == T6B_DL_STAGE_REPAIR, "A2-7: io_stage == REPAIR");
        ok(file_size(path) == before, "A2-7: file untouched (junk still there, append refused)");
        t6b_dl_test_fault2_set(T6B_DL_FAULT_NONE);
    }

    /* ---------- 17. 样例行齐了 ---------- */
    ok(g_samples_count >= 8, "samples: adversarial lines collected for the JSON parser");

    snprintf(want, sizeof(want), "%s/t7_06r2_dead_letter_samples.jsonl", outdir);
    write_raw(want, g_samples, g_samples_len);
    printf("samples: %d line(s) -> %s\n", g_samples_count, want);

    printf("pass=%d fail=%d\n", g_pass, g_fail);
    return (g_fail == 0) ? 0 : 1;
}
