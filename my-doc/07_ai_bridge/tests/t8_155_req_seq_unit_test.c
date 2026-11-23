/* t8_155_req_seq_unit_test.c -- T8-15.5 续听请求序号契约（host 单测）
 *
 * 被测代码是 android/tg_req_seq.h —— worker 与 native 守卫共用的那一份实现。
 * 这里不重写逻辑、不做替身：直接 include 头文件，测的就是上机跑的那份代码。
 *
 * 覆盖：
 *   A 解析器：空文件 / 半截数字 / 负数 / 尾巴脏数据 / 溢出 / 无换行 / 不存在
 *   B 受理规则：首次、递增、重复、小幅倒退、低于下限、计时基准重置、重置节流
 *   C 竞态直击：把真实序号的所有真前缀（= 旧写法截断后能被读到的最坏内容）
 *     逐个喂给解析器和受理器，确认不可能变成一次开麦请求
 *   D 原子写压测：写线程 3000 次 tg_req_write_atomic，读线程同时狂读
 *      要求：读到的每个值都是真实写入过的序号，无效读 = 0
 *   E 灵敏度对照：同一组线程改成旧写法（fopen "w" 截断后写），应当读到无效内容
 *      —— 证明 D 的"0 次"不是测不出来的假通过
 *   F 生命周期：守卫重启（旧序号只当基线）、worker 重启（序号变大仍受理）
 *
 * host only：pwsh tests/run_t8_155_req_seq_tests.ps1
 */
#include <pthread.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#include "tg_req_seq.h"

#ifdef _WIN32
#include <direct.h>
#define TEST_MKDIR(d) _mkdir(d)
#else
#define TEST_MKDIR(d) mkdir(d, 0777)
#endif

static int g_fail;
static int g_pass;

static void ok(int cond, const char *fmt, ...)
{
    va_list ap;

    if (cond) {
        g_pass++;
        return;
    }
    g_fail++;
    fputs("FAIL: ", stdout);
    va_start(ap, fmt);
    vprintf(fmt, ap);
    va_end(ap);
    fputc('\n', stdout);
}

static void write_raw(const char *path, const char *text)
{
    FILE *f = fopen(path, "wb");

    if (f == NULL) { printf("FAIL: cannot create %s\n", path); g_fail++; return; }
    if (text != NULL) fwrite(text, 1, strlen(text), f);
    fclose(f);
}

static void msleep(int ms)
{
    struct timespec ts;

    ts.tv_sec = ms / 1000;
    ts.tv_nsec = (long)(ms % 1000) * 1000000L;
    nanosleep(&ts, NULL);
}

/* ---------------- A：解析器 ---------------- */
static void test_parser(const char *dir)
{
    char p[256];
    long long v = 0;

    snprintf(p, sizeof(p), "%s/a.req", dir);

    write_raw(p, "121635016\n");
    ok(tg_req_read(p, &v) == 0 && v == 121635016LL, "A1 valid seq -> %lld", v);

    write_raw(p, "121635016");
    ok(tg_req_read(p, &v) == 0 && v == 121635016LL, "A2 no trailing newline -> %lld", v);

    write_raw(p, "121635016\r\n");
    ok(tg_req_read(p, &v) == 0 && v == 121635016LL, "A3 CRLF -> %lld", v);

    write_raw(p, "");
    ok(tg_req_read(p, &v) == -1, "A4 empty file must be rejected (was the open()-truncate window)");

    write_raw(p, "-1\n");
    ok(tg_req_read(p, &v) == -1, "A5 negative must be rejected");

    write_raw(p, "  12\n");
    ok(tg_req_read(p, &v) == -1, "A6 leading space must be rejected");

    write_raw(p, "12x\n");
    ok(tg_req_read(p, &v) == -1, "A7 trailing garbage must be rejected");

    write_raw(p, "12\n34\n");
    ok(tg_req_read(p, &v) == -1, "A8 two numbers must be rejected");

    write_raw(p, "99999999999999999999\n");
    ok(tg_req_read(p, &v) == -1, "A9 out of range must be rejected");

    snprintf(p, sizeof(p), "%s/does_not_exist.req", dir);
    ok(tg_req_read(p, &v) == -1, "A10 missing file must be rejected");
}

/* ---------------- B：受理规则 ---------------- */
static void test_accept(void)
{
    tg_req_state st;

    tg_req_state_init(&st);
    ok(st.last_seq == -1 && st.cand_seq == -1, "B0 init: no baseline, no candidate");
    ok(strcmp(tg_req_accept(&st, 121635016LL, 1000), "first") == 0,
       "B1 first valid seq is a request (guard start saw an empty file)");
    ok(tg_req_accept(&st, 121635016LL, 1100) == NULL, "B2 same seq twice must not fire");
    ok(strcmp(tg_req_accept(&st, 121635017LL, 1200), "new") == 0, "B3 increasing seq fires");
    ok(tg_req_accept(&st, 121635016LL, 1300) == NULL, "B4 one-step backwards must not fire");
    ok(st.last_seq == 121635017LL, "B5 backwards value must not move the baseline");
    ok(tg_req_accept(&st, 1LL, 1400) == NULL, "B6 tiny seq (truncated prefix) must not fire");
    ok(tg_req_accept(&st, 0LL, 1500) == NULL, "B7 zero must not fire");
    ok(tg_req_accept(&st, -1LL, 1600) == NULL, "B8 -1 must not fire");
    ok(st.cand_seq == -1, "B8b garbage values must not even create a candidate");

    /* 计时基准重置：有人手工写过 epoch 秒(1.79e9)，worker 用单调毫秒(1.21e8)。
     * 第一拍只记候选，第二拍确认 —— 这是半截文件挡不住的关键。 */
    tg_req_state_init(&st);
    st.last_seq = 1790000000LL;
    ok(tg_req_accept(&st, 121635016LL, 5000) == NULL,
       "B9 a backwards jump alone never fires (candidate only)");
    ok(st.cand_seq == 121635016LL, "B9b candidate recorded");
    ok(strcmp(tg_req_accept(&st, 121635016LL, 5120), "clock-base reset") == 0,
       "B10 confirmed on the next poll -> honoured once");
    ok(st.cand_seq == -1 && st.last_seq == 121635016LL, "B10b state settled");
    ok(tg_req_accept(&st, 121635016LL, 5200) == NULL, "B11 same value again must not fire");
    ok(strcmp(tg_req_accept(&st, 121635017LL, 5300), "new") == 0,
       "B12 after the reset the stream continues normally");

    /* 候选过期：半截内容没被完整内容接上就不算数 */
    tg_req_state_init(&st);
    st.last_seq = 1790000000LL;
    ok(tg_req_accept(&st, 121635016LL, 6000) == NULL, "B13 candidate armed");
    ok(tg_req_accept(&st, 121635016LL, 6000 + TG_REQ_CONFIRM_MS + 100) == NULL,
       "B14 a candidate that was never confirmed within the window cannot fire");

    /* 重置节流：3 s 内不能连着放行两个不同的倒退值 */
    tg_req_state_init(&st);
    st.last_seq = 1790000000LL;
    ok(tg_req_accept(&st, 100000000LL, 7000) == NULL, "B15 candidate armed (100e6)");
    ok(strcmp(tg_req_accept(&st, 100000000LL, 7120), "clock-base reset") == 0,
       "B16 confirmed reset at 7120");
    ok(tg_req_accept(&st, 50000000LL, 7200) == NULL, "B17 second reset inside 3 s: no candidate");
    ok(st.cand_seq == -1, "B17b throttled value must not even arm a candidate");
    ok(tg_req_accept(&st, 50000000LL, 7400) == NULL, "B18 still throttled");
    ok(tg_req_accept(&st, 50000000LL, 10500) == NULL,
       "B19 after the gap it only arms a candidate again");
    ok(strcmp(tg_req_accept(&st, 50000000LL, 10620), "clock-base reset") == 0,
       "B20 and confirms once");
}

/* ---------------- C：竞态直击（旧写法的全部可见前缀） ---------------- */
static void test_prefix_race(const char *dir)
{
    static const char *full = "121635016\n";
    char path[256];
    size_t len = strlen(full);
    size_t i;
    unsigned singles = 0, fired_single = 0;
    unsigned unreadable = 0;

    snprintf(path, sizeof(path), "%s/c.req", dir);
    for (i = 0; i <= len; i++) {
        char cut[32];
        long long v = -1;
        tg_req_state st;

        memcpy(cut, full, i);
        cut[i] = '\0';
        write_raw(path, cut);

        /* 真实运行态：守卫已经受理过 9.0e7 的基线 */
        tg_req_state_init(&st);
        st.last_seq = 1790000000LL;

        if (tg_req_read(path, &v) != 0) { unreadable++; continue; }
        singles++;
        if (tg_req_accept(&st, v, 8000) != NULL) {
            fired_single++;
            printf("  prefix [%s] fired v=%lld\n", cut[0] != '\0' ? cut : "(empty)", v);
        }
    }
    printf("  prefixes: total=%u readable=%u unreadable=%u fired_on_single_read=%u\n",
           (unsigned)len + 1, singles, unreadable, fired_single);
    ok(fired_single == 0, "C1 no mid-write prefix may fire on a single observation (%u)",
       fired_single);
    ok(unreadable == 1, "C2 the empty (truncated) file is unreadable, not seq=-1 (%u)",
       unreadable);

    /* 半截被完整内容接上：只开一次麦，而且用的是完整序号 */
    {
        tg_req_state st;
        long long v = -1;
        unsigned fires = 0;

        write_raw(path, "1216");                    /* 旧写法截断后的中间态 */
        tg_req_state_init(&st);
        st.last_seq = 1790000000LL;
        if (tg_req_read(path, &v) == 0 && tg_req_accept(&st, v, 8100) != NULL) fires++;
        write_raw(path, full);                      /* 完整内容落地 */
        if (tg_req_read(path, &v) == 0 && tg_req_accept(&st, v, 8220) != NULL) fires++;
        ok(fires == 1, "C3 partial-then-complete fires exactly once (%u)", fires);
        ok(st.last_seq == 121635016LL, "C4 and it fires with the complete seq (%lld)", st.last_seq);
    }

    /* 同一条竞态在旧判定下的表现：seq 保持 -1，(last_seq - seq) > 60000 -> 受理 */
    {
        long long last_seq = 1790000000LL;
        long long seq = -1;                 /* fgets 读到空文件时的旧代码路径 */

        ok(!(seq > last_seq) && (last_seq - seq) > 60000,
           "C5 control: the old rule does accept seq=-1 (proves the bug was real)");
    }
}

/* ---------------- D/E：原子写压测 + 灵敏度对照 ---------------- */
#define STRESS_ITERS 3000
#define BASE_SEQ     121600000LL

typedef struct {
    const char *path;
    int legacy;              /* 1 = 用旧的 fopen("w") 截断后写 */
    volatile int done;
    long long last_written;
    unsigned empty_content;  /* 读到了空文件   <- 旧写法的竞态产物 */
    unsigned partial;        /* 读到了半截数字 <- 旧写法的竞态产物 */
    unsigned missing;        /* 打开失败（Windows 的 replace 会先删目标；POSIX rename 不会） */
    unsigned good_reads;
    unsigned out_of_range;
    unsigned write_fails;
} stress_ctx;

static void *writer_thread(void *arg)
{
    stress_ctx *c = (stress_ctx *)arg;
    int i;

    for (i = 1; i <= STRESS_ITERS; i++) {
        long long seq = BASE_SEQ + i;

        if (c->legacy) {
            FILE *f = fopen(c->path, "w");

            if (f != NULL) {
                fprintf(f, "%lld\n", seq);
                fclose(f);
            }
        } else if (tg_req_write_atomic(c->path, seq) != 0) {
            c->write_fails++;
        }
        c->last_written = seq;
        if ((i % 7) == 0) msleep(1);
    }
    c->done = 1;
    return NULL;
}

static void *reader_thread(void *arg)
{
    stress_ctx *c = (stress_ctx *)arg;

    while (!c->done) {
        char buf[TG_REQ_BUF];
        long long v = -1;
        size_t n = 0;
        FILE *f = fopen(c->path, "rb");

        if (f == NULL) {
            c->missing++;
            continue;
        }
        n = fread(buf, 1, sizeof(buf) - 1, f);
        fclose(f);
        if (n == 0) {
            c->empty_content++;
            continue;
        }
        if (tg_req_parse(buf, n, &v) != 0) {
            c->partial++;
            continue;
        }
        c->good_reads++;
        if (v < BASE_SEQ || v > BASE_SEQ + STRESS_ITERS) c->out_of_range++;
    }
    return NULL;
}

static void run_stress(const char *dir, int legacy, const char *label)
{
    char path[256];
    stress_ctx c;
    pthread_t w, r;

    memset(&c, 0, sizeof(c));
    snprintf(path, sizeof(path), "%s/%s.req", dir, legacy ? "stress_legacy" : "stress_atomic");
    c.path = path;
    c.legacy = legacy;
    /* 先放一个初始值：正式运行时请求文件总是存在（worker 首次写之后） */
    write_raw(path, "121600000\n");

    pthread_create(&w, NULL, writer_thread, &c);
    pthread_create(&r, NULL, reader_thread, &c);
    pthread_join(w, NULL);
    pthread_join(r, NULL);

    printf("%s: good=%u empty_content=%u partial=%u missing=%u out_of_range=%u write_fails=%u\n",
           label, c.good_reads, c.empty_content, c.partial, c.missing,
           c.out_of_range, c.write_fails);

    if (legacy) {
        /* 灵敏度对照：不判失败，只证明这套压测看得见"截断后写入"的竞态 */
        printf("control(legacy truncate writer): empty+partial reads = %u\n",
               c.empty_content + c.partial);
        ok(c.empty_content + c.partial > 0,
           "E1 control: the stress loop does detect truncate races (%u)",
           c.empty_content + c.partial);
        ok(c.out_of_range == 0, "E2 legacy: no out-of-range value was ever read (%u)",
           c.out_of_range);
    } else {
        ok(c.empty_content == 0,
           "D1 atomic writer: reader never saw an empty file (%u)", c.empty_content);
        ok(c.partial == 0,
           "D2 atomic writer: reader never saw a partial seq (%u)", c.partial);
        ok(c.out_of_range == 0, "D3 atomic writer: every read value is a real seq (%u)",
           c.out_of_range);
        ok(c.good_reads > 100, "D4 the reader really ran (%u reads)", c.good_reads);
        ok(c.last_written == BASE_SEQ + STRESS_ITERS, "D5 all %d writes issued",
           STRESS_ITERS);
        /* Windows 上 replace 不是单条原子系统调用，可能有短暂的"文件不存在"窗口；
         * 设备侧 POSIX rename 是单条 syscall，这个计数应当为 0。两者都只影响
         * "读失败 -> 不动作"，不会造成误开麦，所以这里只记录不判失败。 */
        printf("note: opening failures are platform specific (win replace=%u)\n", c.missing);
        {
            char tmp[300];
            FILE *f;

            snprintf(tmp, sizeof(tmp), "%s.tmp", path);
            f = fopen(tmp, "rb");
            ok(f == NULL, "D6 no temp file left behind: %s", tmp);
            if (f != NULL) fclose(f);
        }
        {
            long long v = -1;
            int rc = tg_req_write_atomic(path, BASE_SEQ + STRESS_ITERS + 1);

            ok(rc == 0 && tg_req_read(path, &v) == 0 && v == BASE_SEQ + STRESS_ITERS + 1,
               "D7 final write with no reader running lands (%d, %lld)", rc, v);
        }
    }
}

/* ---------------- F：生命周期 ---------------- */
static void test_lifecycle(const char *dir)
{
    char path[256];
    tg_req_state st;

    snprintf(path, sizeof(path), "%s/f.req", dir);

    /* 守卫重启：文件里已有旧序号 -> 只能当基线，不能开麦 */
    write_raw(path, "121635016\n");
    tg_req_state_init(&st);
    ok(tg_req_read(path, &st.last_seq) == 0 && st.last_seq == 121635016LL,
       "F1 guard restart re-baselines from the file");
    ok(tg_req_accept(&st, 121635016LL, 9000) == NULL,
       "F2 the seq that existed before restart must not fire");

    /* worker 重启后写的序号（单调毫秒）仍然更大 -> 正常受理 */
    ok(strcmp(tg_req_accept(&st, 121635999LL, 9100), "new") == 0,
       "F3 a fresh request after worker restart still fires");

    /* 守卫重启 + 文件被清空 -> 不建基线，下一条合法序号就是真请求 */
    write_raw(path, "");
    tg_req_state_init(&st);
    ok(tg_req_read(path, &st.last_seq) == -1 && st.last_seq == -1,
       "F4 empty file at guard start leaves no baseline");
    ok(strcmp(tg_req_accept(&st, 121640000LL, 9200), "first") == 0,
       "F5 the next valid seq after an empty start is a real request");

    /* 停止/退出后的迟到请求由 hold 文件与 worker 侧取消负责，这里只确认
     * 受理器本身不会因为"很久没请求"而自行放行任何值。 */
    ok(tg_req_accept(&st, 121639999LL, 9300) == NULL, "F6 stale seq after long idle stays quiet");
}

int main(int argc, char **argv)
{
    /* argc>1 时用给定目录（真机跑 /data/local/tmp/t8155），否则用 host 的临时目录 */
    const char *dir = (argc > 1) ? argv[1] : "t8_155_req_unit_dir";
    char probe_path[300];

    printf("# T8-15.5 request-seq contract unit test\n");
#ifdef _WIN32
    if (argc <= 1) system("rmdir /s /q t8_155_req_unit_dir >nul 2>nul");
#endif
    (void)TEST_MKDIR(dir);

    snprintf(probe_path, sizeof(probe_path), "%s/.probe", dir);
    {
        FILE *probe = fopen(probe_path, "wb");

        if (probe == NULL) {
            printf("FAIL: cannot create work dir %s\n", dir);
            return 2;
        }
        fclose(probe);
    }

    test_parser(dir);
    test_accept();
    test_prefix_race(dir);
    run_stress(dir, 1, "legacy(w=truncate)");
    run_stress(dir, 0, "atomic(tmp+rename)");
    test_lifecycle(dir);

    printf("\nchecks: pass=%d fail=%d\n", g_pass, g_fail);
    printf("%s\n", g_fail == 0 ? "RESULT: PASS" : "RESULT: FAIL");
    return g_fail == 0 ? 0 : 1;
}
