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
    /* 真机上的量级：CLOCK_MONOTONIC 毫秒（2026-11-24 实测 ~1.5258e8） */
    const long long NOW = 152600000LL;
    const long long SEQ = NOW - 800LL;          /* 800 ms 前刚发出的请求 */
    int i;

    tg_req_state_init(&st);
    ok(st.last_seq == -1 && st.last_code == TG_REQ_R_NONE, "B0 init: no baseline");
    ok(strcmp(tg_req_accept(&st, SEQ, NOW), "first") == 0,
       "B1 first plausible seq is a request (guard start saw an empty file)");
    ok(tg_req_accept(&st, SEQ, NOW + 120) == NULL && st.last_code == TG_REQ_R_REPEAT,
       "B2 same seq twice must not fire");
    ok(strcmp(tg_req_accept(&st, SEQ + 7000, NOW + 8000), "new") == 0,
       "B3 increasing seq fires");
    ok(tg_req_accept(&st, 1LL, NOW + 8100) == NULL && st.last_code == TG_REQ_R_TINY,
       "B4 tiny seq (truncated prefix) must not fire");
    ok(tg_req_accept(&st, 0LL, NOW + 8200) == NULL, "B5 zero must not fire");
    ok(tg_req_accept(&st, -1LL, NOW + 8300) == NULL, "B6 -1 must not fire");

    /* ---- T8-15.5R 的核心负例：残留的合法旧序号，连续读 5 次仍然不许开麦 ---- */
    {
        long long stale = SEQ - 90000;          /* 90 s 前写过一次，文件里留着 */
        unsigned fires = 0;
        int first_code = TG_REQ_R_NONE;

        tg_req_state_init(&st);
        st.last_seq = SEQ;                      /* 基线 = 已受理的新序号 */
        for (i = 0; i < 5; i++) {
            if (tg_req_accept(&st, stale, NOW + 1000 + i * 120LL) != NULL) fires++;
            if (i == 0) first_code = st.last_code;
        }
        ok(fires == 0, "B7 a stale but well-formed old seq never fires, even read 5 times (%u)",
           fires);
        ok(first_code == TG_REQ_R_BELOW && st.last_seq == stale,
           "B7b ...the first read only re-baselines silently (code=%d base=%lld)",
           first_code, st.last_seq);
        ok(st.last_code == TG_REQ_R_REPEAT,
           "B7c ...and the later identical reads are counted as repeats (code=%d)",
           st.last_code);
    }

    /* 同一个异常旧值重复出现：旧实现(候选+二次确认)在这里会开麦 */
    {
        long long odd = SEQ - 30000;
        unsigned fires = 0;

        tg_req_state_init(&st);
        st.last_seq = SEQ;
        for (i = 0; i < 3; i++) {
            if (tg_req_accept(&st, odd, NOW + 2000 + i * 120LL) != NULL) fires++;
        }
        ok(fires == 0, "B8 identical anomalous value repeated 3x never fires (%u)", fires);
    }

    /* 未来值：手工往请求文件里写 epoch（秒/毫秒）之类的脏数据 */
    tg_req_state_init(&st);
    st.last_seq = SEQ;
    ok(tg_req_accept(&st, 1795477000LL, NOW) == NULL && st.last_code == TG_REQ_R_FUTURE,
       "B9 epoch seconds must be rejected (in the future)");
    ok(tg_req_accept(&st, 1795477000000LL, NOW) == NULL && st.last_code == TG_REQ_R_FUTURE,
       "B10 epoch milliseconds must be rejected");
    ok(st.last_seq == SEQ, "B10b junk must not move the baseline");

    /* 太旧：不可能是"刚发出"的请求 */
    ok(tg_req_accept(&st, NOW - TG_REQ_CLOCK_STALE_MS - 5000, NOW) == NULL &&
       st.last_code == TG_REQ_R_TOO_OLD, "B11 too-old value must be rejected");
    ok(st.last_seq == SEQ, "B11b too-old value must not move the baseline");

    /* 边界：稍早于 now、在窗口内、且比基线大 -> 受理 */
    ok(strcmp(tg_req_accept(&st, NOW + 900, NOW + 1000), "new") == 0,
       "B12 slightly-ahead-but-plausible value is accepted");

    /* 基线被历史脏值抬高过（旧版本遗留 1.79e9）：真请求先静默落地，下一条恢复 */
    tg_req_state_init(&st);
    st.last_seq = 1795477000000LL;
    ok(tg_req_accept(&st, SEQ, NOW) == NULL && st.last_code == TG_REQ_R_BELOW,
       "B13 real request under a polluted baseline: silent re-baseline, no mic");
    ok(st.last_seq == SEQ, "B13b baseline healed");
    ok(strcmp(tg_req_accept(&st, SEQ + 1500, NOW + 1500), "new") == 0,
       "B14 the next real request fires normally");
}

/* ---------------- C：竞态直击（旧写法的全部可见前缀） ---------------- */
static void test_prefix_race(const char *dir)
{
    /* 真机量级：基线 = 已经受理过的 152599100，文件里被写入的完整序号 = 152599200。 */
    static const char *full = "152599200\n";
    const long long BASELINE = 152599100LL;
    const long long NOW = 152600000LL;
    char path[256];
    size_t len = strlen(full);
    size_t i;
    unsigned singles = 0, fired_partial = 0, fired_complete = 0;
    unsigned unreadable = 0;

    snprintf(path, sizeof(path), "%s/c.req", dir);
    for (i = 0; i <= len; i++) {
        char cut[32];
        long long v = -1;
        tg_req_state st;

        memcpy(cut, full, i);
        cut[i] = '\0';
        write_raw(path, cut);

        tg_req_state_init(&st);
        st.last_seq = BASELINE;

        if (tg_req_read(path, &v) != 0) { unreadable++; continue; }
        singles++;
        if (tg_req_accept(&st, v, NOW) != NULL) {
            if (v == 152599200LL) fired_complete++;
            else {
                fired_partial++;
                printf("  prefix [%s] fired v=%lld\n", cut, v);
            }
        }
    }
    printf("  prefixes: total=%u readable=%u unreadable=%u fired_partial=%u fired_complete=%u\n",
           (unsigned)len + 1, singles, unreadable, fired_partial, fired_complete);
    ok(fired_partial == 0, "C1 no mid-write prefix may fire (%u)", fired_partial);
    /* i=9（"152599200"，无换行）与 i=10（带 \n）都是完整序号，各自算一次真请求 */
    ok(fired_complete == 2, "C2 the complete seq does fire, exactly once per read (%u)",
       fired_complete);
    ok(unreadable == 1, "C3 the empty (truncated) file is unreadable, not seq=0 (%u)",
       unreadable);

    /* 半截被完整内容接上：只开一次麦，而且用的是完整序号 */
    {
        tg_req_state st;
        long long v = -1;
        unsigned fires = 0;

        write_raw(path, "1525");                    /* 旧写法截断后的中间态 */
        tg_req_state_init(&st);
        st.last_seq = BASELINE;
        if (tg_req_read(path, &v) == 0 && tg_req_accept(&st, v, NOW) != NULL) fires++;
        write_raw(path, full);                      /* 完整内容落地 */
        if (tg_req_read(path, &v) == 0 && tg_req_accept(&st, v, NOW + 120) != NULL) fires++;
        ok(fires == 1, "C4 partial-then-complete fires exactly once (%u)", fires);
        ok(st.last_seq == 152599200LL, "C5 and it fires with the complete seq (%lld)", st.last_seq);
    }

    /* 同一条竞态在 T8-15.4 的旧判定下的表现（空文件 -> seq 保持 -1 -> 受理） */
    {
        long long last_seq = 152599100LL;
        long long seq = -1;                 /* fgets 读到空文件时的旧代码路径 */

        ok(!(seq > last_seq) && (last_seq - seq) > 60000,
           "C6 control: the old rule does accept seq=-1 (proves the bug was real)");
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
    const long long NOW = 152600000LL;

    snprintf(path, sizeof(path), "%s/f.req", dir);

    /* 守卫重启：文件里已有旧序号 -> 只能当基线，不能开麦 */
    write_raw(path, "152599900\n");
    tg_req_state_init(&st);
    ok(tg_req_read(path, &st.last_seq) == 0 && st.last_seq == 152599900LL,
       "F1 guard restart re-baselines from the file");
    ok(tg_req_accept(&st, 152599900LL, NOW) == NULL && st.last_code == TG_REQ_R_REPEAT,
       "F2 the seq that existed before restart must not fire");

    /* worker 重启后写的序号（同一 CLOCK_MONOTONIC 毫秒）更大 -> 正常受理 */
    ok(strcmp(tg_req_accept(&st, NOW, NOW + 100), "new") == 0,
       "F3 a fresh request after worker restart still fires");

    /* 守卫重启 + 文件被清空 -> 不建基线，下一条合法序号就是真请求 */
    write_raw(path, "");
    tg_req_state_init(&st);
    ok(tg_req_read(path, &st.last_seq) == -1 && st.last_seq == -1,
       "F4 empty file at guard start leaves no baseline");
    ok(strcmp(tg_req_accept(&st, NOW + 100, NOW + 600), "first") == 0,
       "F5 the next valid seq after an empty start is a real request");

    /* 停止/退出后的迟到请求由 hold 文件与 worker 侧取消负责，这里只确认
     * 受理器本身不会因为"很久没请求"而自行放行任何值。 */
    ok(tg_req_accept(&st, NOW + 50, NOW + 700) == NULL,
       "F6 an older seq after the baseline moved stays quiet");
}

int main(int argc, char **argv)
{
    /* argc>1 时用给定目录（真机跑 /data/local/tmp/t8155），否则用 host 的临时目录 */
    const char *dir = (argc > 1) ? argv[1] : "t8_155_req_unit_dir";
    char probe_path[300];

    printf("# T8-15.5 request-seq contract unit test\n");
    setvbuf(stdout, NULL, _IONBF, 0);   /* 崩在哪一步都要能看见日志 */
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
