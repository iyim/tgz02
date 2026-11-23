/*
 * test_obs.c -- T8-12.15 主机单测：NLU 回调被动观测环 + 回调契约
 *
 * 做法（为什么这样算"测生产代码"）：
 *   gen_obs.inc 由 extract_obs.py 从 hook_agent/libtg_hook.c **逐字**抽出，
 *   包含 obs_record / tg_nlu_observe / tg_nlp_cb 三段的原文（含注释），不做任何改写；
 *   抽取器同时把两段的 SHA256 打进 inc 头注释，报告里据此对齐。
 *
 * 覆盖点（对应任务书 §五）：
 *   A1 sizeof / 对齐 / 2 的幂（编译期检查在抽取物里，运行时再打印一遍）
 *   A2 单线程计数与分布
 *   A3 环形覆盖：写满后覆盖最旧，overwritten 计数准确，环内只剩最新 CAP 条
 *   A4 多线程并发写入：总数精确、无数据竞争（不变量 sid+type==0）
 *   A5 快照不返回半条记录：读取方并发读，逐条校验不变量
 *   A6 分块导出：小缓冲分块取完整环，不重不漏
 *   B  回调契约：PASS 放行但计数；DECIDE+已登记丢；DECIDE+未登记放行；FAILCLOSED 丢；
 *      三种模式下 g_nlu_nlp_calls 的旧语义不变；观测不改变返回值
 */

#include <pthread.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <time.h>

#include "nlu_takeover.h"
#include "nlu_switch.h"

/* 生产文件里的同一份定义（extract_obs.py 会核对这两行仍在原文件里） */
#define INC(v) __atomic_fetch_add(&(v), 1UL, __ATOMIC_RELAXED)
#define GET(v) __atomic_load_n(&(v), __ATOMIC_RELAXED)

/* 被抽出的 tg_nlp_cb 依赖这些外部符号，由本测试提供 */
static volatile unsigned long g_nlu_nlp_calls, g_nlu_nlp_skip, g_nlu_nlp_pass, g_nlu_nlp_failclosed;
static volatile unsigned long g_nlu_terminal_pass;   /* R13 收尾放行计数 */
static t8_to_state g_to;
static int g_stub_mode = NLS_PASS;

static int nlu_mode_now(void) { return g_stub_mode; }

static long long wall_ms(void)
{
    struct timespec ts;

    clock_gettime(CLOCK_REALTIME, &ts);
    return (long long)ts.tv_sec * 1000LL + (long long)(ts.tv_nsec / 1000000L);
}

#include "gen_obs.inc"

/* ------------------------------------------------------------------ 测试框架 */

static int g_fail;
static int g_pass;

static void check_impl(int ok, const char *what, int line)
{
    if (ok) {
        g_pass++;
    } else {
        g_fail++;
        printf("FAIL  line=%d  %s\n", line, what);
    }
}

#define CHECK(cond) check_impl((cond) ? 1 : 0, #cond, __LINE__)

/* ------------------------------------------------------------- A1 布局与容量 */

static void test_layout(void)
{
    printf("\n[A1] layout\n");
    printf("      sizeof(tg_obs_slot)=%u  __alignof__=%u  TG_OBS_CAP=%u\n",
           (unsigned)sizeof(tg_obs_slot), (unsigned)__alignof__(tg_obs_slot),
           (unsigned)TG_OBS_CAP);
    CHECK(sizeof(tg_obs_slot) % 8 == 0);          /* ARM32 上 8 字节原子需要 8 对齐 */
    CHECK(__alignof__(tg_obs_slot) >= 8);
    CHECK((TG_OBS_CAP & (TG_OBS_CAP - 1u)) == 0); /* 2 的幂 */
    CHECK(sizeof(tg_obs_slot) <= 64);             /* 单条记录不许膨胀 */
}

/* --------------------------------------------------------- A2 单线程计数分布 */

static void test_single(void)
{
    unsigned long t0 = GET(g_obs_total), r0 = GET(g_obs_release), s0 = GET(g_obs_skip);

    printf("\n[A2] single-thread accounting\n");
    obs_record(11, 1, NLS_PASS, 0, 0);
    obs_record(12, 2, NLS_DECIDE, 1, 0);
    obs_record(13, 3, NLS_DECIDE, 0, 1);
    obs_record(14, 4, NLS_FAILCLOSED, 1, 0);

    CHECK(GET(g_obs_total) == t0 + 4);
    CHECK(GET(g_obs_release) == r0 + 2);
    CHECK(GET(g_obs_skip) == s0 + 2);
}

/* ------------------------------------------------------------- A3 环形覆盖 */

static void test_overwrite(void)
{
    unsigned long t0 = GET(g_obs_total);
    unsigned long o0 = GET(g_obs_overwritten);
    unsigned long i;
    int extra = 37;

    printf("\n[A3] ring overwrite\n");
    for (i = 0; i < (unsigned long)TG_OBS_CAP + (unsigned long)extra; i++) {
        int sid = (int)(i & 0xFFFFu);

        obs_record(sid, -sid, NLS_DECIDE, (int)(i & 1u), 0);
    }
    CHECK(GET(g_obs_total) == t0 + (unsigned long)TG_OBS_CAP + (unsigned long)extra);
    {   /* 覆盖数 = 写入总数超出容量的部分（从进程启动起算，不是从本轮测试起算） */
        unsigned long total_now = t0 + (unsigned long)TG_OBS_CAP + (unsigned long)extra;
        unsigned long expect_ov = (total_now > (unsigned long)TG_OBS_CAP)
                                  ? total_now - (unsigned long)TG_OBS_CAP : 0UL;

        CHECK(GET(g_obs_overwritten) == o0 + expect_ov);
    }

    {   /* 环里应当只剩最新 CAP 条：第一条的序号 = total - CAP */
        char buf[256];
        int next = tg_nlu_observe(buf, sizeof(buf), 0);

        CHECK(next > 0);
        CHECK(strstr(buf, "obs v=1") != NULL);
        printf("      header: %.150s\n", buf);
    }
}

/* ------------------------------------------------- A4/A5 并发写入 + 并发读取 */

#define WRITERS    8
#define PER_WRITER 20000

static volatile int g_reader_stop;
static unsigned long g_reader_records;
static unsigned long g_reader_violations;
static unsigned long g_reader_dups;
static unsigned long g_reader_passes;

static void *writer_main(void *arg)
{
    long id = (long)(intptr_t)arg;
    long i;

    for (i = 0; i < PER_WRITER; i++) {
        unsigned long t = (unsigned long)id * (unsigned long)PER_WRITER + (unsigned long)i;
        int sid = (int)(t & 0x3FFFFFUL);

        /* 不变量：type == -sid。任何"半条记录"或两个写者混写都会破坏它。 */
        obs_record(sid, -sid, NLS_DECIDE, (int)(t & 1u), 0);
    }
    return NULL;
}

static void *writer_main_small(void *arg)
{
    long id = (long)(intptr_t)arg;
    long i;

    for (i = 0; i < 200; i++) {
        unsigned long t = (unsigned long)id * 200UL + (unsigned long)i;
        int sid = (int)(t & 0x3FFFFFUL);

        obs_record(sid, -sid, NLS_DECIDE, (int)(t & 1u), 0);
    }
    return NULL;
}
static void *reader_main(void *arg)
{
    char buf[4096];

    (void)arg;
    while (!g_reader_stop) {
        unsigned int from = 0;
        int guard = 0;

        while (guard++ < 4096) {
            unsigned long last = 0;
            int next = tg_nlu_observe(buf, sizeof(buf), from);
            char *p = buf;
            int saw = 0;

            while (p != NULL && *p != '\0') {
                char *nl = strchr(p, '\n');

                if (nl != NULL) *nl = '\0';
                if (strncmp(p, "obs i=", 6) == 0) {
                    unsigned long idx = 0;
                    long long mono = 0, wall = 0;
                    int sid = 0, type = 0;
                    char mode[24] = {0};
                    char dec[16] = {0};

                    if (sscanf(p, "obs i=%lu mono=%lld wall=%lld sid=%d type=%d mode=%23s decision=%15s",
                               &idx, &mono, &wall, &sid, &type, mode, dec) == 7) {
                        g_reader_records++;
                        if (type != -sid) g_reader_violations++;       /* 撕裂/混写 */
                        if (saw && idx <= last) g_reader_dups++;       /* 块内乱序 */
                        last = idx;
                        saw = 1;
                    } else {
                        g_reader_violations++;                         /* 行不完整 */
                    }
                }
                if (nl == NULL) break;
                p = nl + 1;
            }
            g_reader_passes++;
            if (next <= 0) break;
            if ((unsigned int)next == from) break;                     /* 防死循环 */
            from = (unsigned int)next;
        }
    }
    return NULL;
}

static void test_concurrent(void)
{
    pthread_t w[WRITERS], r[2];
    unsigned long t0 = GET(g_obs_total);
    long i;

    printf("\n[A4/A5] concurrent write + concurrent snapshot\n");
    g_reader_stop = 0;
    g_reader_records = 0;
    g_reader_violations = 0;
    g_reader_dups = 0;
    g_reader_passes = 0;

    for (i = 0; i < 2; i++) pthread_create(&r[i], NULL, reader_main, NULL);
    for (i = 0; i < WRITERS; i++) pthread_create(&w[i], NULL, writer_main, (void *)(intptr_t)i);
    for (i = 0; i < WRITERS; i++) pthread_join(w[i], NULL);
    g_reader_stop = 1;
    for (i = 0; i < 2; i++) pthread_join(r[i], NULL);

    printf("      reader: passes=%lu records=%lu violations=%lu dups=%lu contended=%lu\n",
           g_reader_passes, g_reader_records, g_reader_violations, g_reader_dups,
           GET(g_obs_contended));
    CHECK(GET(g_obs_total) == t0 + (unsigned long)WRITERS * (unsigned long)PER_WRITER);
    CHECK(g_reader_violations == 0);   /* 没有半条记录、没有撕裂 */
    CHECK(g_reader_dups == 0);         /* 分块之间不重复、不乱序 */
    CHECK(g_reader_records > 0);       /* 读取方确实读到了东西 */
}

/* 真实并发模型：:core 里同时到达的 NLU 回调只有 1~2 条（真机 24 轮实测全是单条）。
 * 这里用 2 个写者 × 200 条验证：在这个量级下槽位抢占一次都不该失败。 */
static void test_realistic_concurrency(void)
{
    pthread_t th[2];
    unsigned long c0 = GET(g_obs_contended);
    long i;

    printf("\n[A4b] realistic concurrency (2 writers, 200 records each)\n");
    for (i = 0; i < 2; i++) pthread_create(&th[i], NULL, writer_main_small, (void *)(intptr_t)i);
    for (i = 0; i < 2; i++) pthread_join(th[i], NULL);
    printf("      contended delta=%lu\n", GET(g_obs_contended) - c0);
    CHECK(GET(g_obs_contended) == c0);
}

/* ------------------------------------------------------------- A6 分块导出 */

static void test_chunked(void)
{
    unsigned long total = GET(g_obs_total);
    unsigned long first = (total > (unsigned long)TG_OBS_CAP) ? total - TG_OBS_CAP : 0;
    unsigned int from = 0;
    unsigned long seen = 0, prev = 0;
    int chunks = 0, bad = 0;
    char buf[256];       /* 故意用小缓冲，逼出分块路径 */

    printf("\n[A6] chunked export with %u-byte buffer\n", (unsigned)sizeof(buf));
    while (chunks++ < 4096) {
        int next = tg_nlu_observe(buf, sizeof(buf), from);
        char *p = buf;

        while (p != NULL && *p != '\0') {
            char *nl = strchr(p, '\n');

            if (nl != NULL) *nl = '\0';
            if (strncmp(p, "obs i=", 6) == 0) {
                unsigned long idx = 0;

                if (sscanf(p, "obs i=%lu", &idx) == 1) {
                    if (seen > 0 && idx != prev + 1) bad++;
                    if (seen == 0 && idx != first) bad++;
                    prev = idx;
                    seen++;
                }
            }
            if (nl == NULL) break;
            p = nl + 1;
        }
        if (next <= 0) break;
        if ((unsigned int)next == from) { bad++; break; }
        from = (unsigned int)next;
    }
    printf("      chunks=%d records=%lu expected=%lu\n", chunks, seen,
           (total > (unsigned long)TG_OBS_CAP) ? (unsigned long)TG_OBS_CAP : total);
    CHECK(bad == 0);
    CHECK(seen == ((total > (unsigned long)TG_OBS_CAP) ? (unsigned long)TG_OBS_CAP : total));
}

/* --------------------------------------------------------- B 回调契约（不改语义） */

static void test_callback(void)
{
    t8_to_why why = T8_TO_WHY_NONE;
    t8_to_decision d;
    long long now = wall_ms();
    unsigned long t0, calls0, skip0, pass0, fc0;
    int rc;

    printf("\n[B] tg_nlp_cb contract (observation must not change the return value)\n");
    CHECK(t8_to_init(&g_to) == 0);
    CHECK(t8_to_enabled_set(&g_to, 1) == 0);

    /* 会话登记：文本没有命中任何本地意图 → 归 AI → 登记进表 */
    d = t8_to_on_final(&g_to, "4242", "zzz no local intent here", now, 0, &why);
    printf("      t8_to_on_final(4242) decision=%d why=%s\n", (int)d, t8_to_why_name(why));
    CHECK(d == T8_TO_TAKE);

    /* 1) PASS：原厂放行，观测 +1，g_nlu_nlp_calls 语义不变（仍旧只在非 PASS 时累加） */
    t0 = GET(g_obs_total); calls0 = GET(g_nlu_nlp_calls);
    g_stub_mode = NLS_PASS;
    rc = tg_nlp_cb(NULL, 4242, 0, NULL);
    CHECK(rc == 0);
    CHECK(GET(g_obs_total) == t0 + 1);
    CHECK(GET(g_nlu_nlp_calls) == calls0);

    /* 2) DECIDE + 已登记会话：丢（返回 1），观测记 DROP */
    skip0 = GET(g_nlu_nlp_skip);
    g_stub_mode = NLS_DECIDE;
    rc = tg_nlp_cb(NULL, 4242, 0, NULL);
    CHECK(rc == 1);
    CHECK(GET(g_nlu_nlp_skip) == skip0 + 1);

    /* 3) DECIDE + 未登记会话：放行（返回 0），观测记 PASS */
    pass0 = GET(g_nlu_nlp_pass);
    rc = tg_nlp_cb(NULL, 9999, 0, NULL);
    CHECK(rc == 0);
    CHECK(GET(g_nlu_nlp_pass) == pass0 + 1);

    /* 4) FAILCLOSED：丢（返回 1），且不碰会话表（登记仍然在，切回 DECIDE 还能丢） */
    fc0 = GET(g_nlu_nlp_failclosed);
    g_stub_mode = NLS_FAILCLOSED;
    rc = tg_nlp_cb(NULL, 4242, 0, NULL);
    CHECK(rc == 1);
    CHECK(GET(g_nlu_nlp_failclosed) == fc0 + 1);

    g_stub_mode = NLS_DECIDE;
    CHECK(tg_nlp_cb(NULL, 4242, 0, NULL) == 1);

    /* 5) 目标进程里卸载/关闭接管时，原厂必须全部放行 */
    CHECK(t8_to_enabled_set(&g_to, 0) == 0);
    g_stub_mode = NLS_PASS;
    CHECK(tg_nlp_cb(NULL, 4242, 0, NULL) == 0);
    CHECK(tg_nlp_cb(NULL, 4243, 0, NULL) == 0);
}

/* ------------------------------------------------------- R13 收尾通知保护 */

/*
 * type=2（exitTalk 合成结果）与 type=3（Handler 收尾通知，res 可为 NULL）：
 * 必须无条件放行，优先级高于 DECIDE / FAILCLOSED，且不碰会话表、不计普通 NLU 判定。
 */
static void test_r13_terminal(void)
{
    unsigned long t0, calls0, term0, idx;
    unsigned long marked0, dropped0, passed0, unknown0;
    int i, m;

    printf("\n[R13] type=2/3 收尾通知无条件放行\n");
    CHECK(t8_to_enabled_set(&g_to, 1) == 0);

    /* 注册一个会话：DECIDE 模式下"普通结果(type=0)"本来会被丢，用它对照"收尾不被误伤" */
    {
        t8_to_why why;

        CHECK(t8_to_on_final(&g_to, "7777", "zzz no local intent", wall_ms(), 0, &why) == T8_TO_TAKE);
    }
    marked0 = g_to.marked; dropped0 = g_to.dropped; passed0 = g_to.passed; unknown0 = g_to.unknown;

    for (i = 0; i < 2; i++) {
        int ty = (i == 0) ? 2 : 3;

        for (m = 0; m < 3; m++) {
            int mode = (m == 0) ? NLS_PASS : (m == 1) ? NLS_DECIDE : NLS_FAILCLOSED;
            int rc;

            t0 = GET(g_obs_total); calls0 = GET(g_nlu_nlp_calls); term0 = GET(g_nlu_terminal_pass);
            g_stub_mode = mode;
            rc = tg_nlp_cb(NULL, 7777, ty, NULL);   /* res=NULL -> resnull=1 */
            CHECK(rc == 0);                                   /* 收尾恒放行 */
            CHECK(GET(g_nlu_nlp_calls) == calls0);            /* 不进普通 NLU 判定 */
            CHECK(GET(g_nlu_terminal_pass) == term0 + 1);     /* 收尾计数 +1 */
            CHECK(GET(g_obs_total) == t0 + 1);

            idx = GET(g_obs_total) - 1;
            CHECK(g_obs[idx & TG_OBS_MASK].type == ty);
            CHECK(g_obs[idx & TG_OBS_MASK].decision == 0);
            CHECK(g_obs[idx & TG_OBS_MASK].res_is_null == 1);
        }
    }

    /* 收尾路径必须零接触会话表 */
    CHECK(g_to.marked == marked0);
    CHECK(g_to.dropped == dropped0);
    CHECK(g_to.passed == passed0);
    CHECK(g_to.unknown == unknown0);

    /* res != NULL 时 resnull=0（只比较指针，绝不 deref） */
    {
        g_stub_mode = NLS_DECIDE;
        CHECK(tg_nlp_cb(NULL, 7777, 3, (void *)0x1234u) == 0);
        idx = GET(g_obs_total) - 1;
        CHECK(g_obs[idx & TG_OBS_MASK].res_is_null == 0);
        CHECK(g_obs[idx & TG_OBS_MASK].type == 3);
    }

    CHECK(t8_to_enabled_set(&g_to, 0) == 0);
}

/* ------------------------------------------------------- R13-01 行格式化与边界 */

/*
 * 最坏情况行宽：INT32_MAX 的 sid/type + failclosed（最长 mode 名）+ resnull，
 * 时间戳走真实 clock（13 位）。校验导出完整、以换行结尾、不发生截断越界。
 */
static void test_line_format(void)
{
    char buf[2048];
    unsigned long t0 = GET(g_obs_total);
    int next;

    printf("\n[A7] worst-case line formatting (R13-01 buffer bound)\n");
    CHECK(TG_OBS_LINE_MAX >= 160);   /* 修复后的安全余量 */

    obs_record(2147483647, 2147483647, NLS_FAILCLOSED, 0, 1);  /* PASS + resnull=1 */
    obs_record(2147483647, 2147483647, NLS_FAILCLOSED, 1, 0);  /* DROP + resnull=0 */

    {   /* 从最新两条开始导出，避免被更早测试写入的 256 条环挤占缓冲 */
        unsigned long total = GET(g_obs_total);

        next = tg_nlu_observe(buf, sizeof(buf), (unsigned)(total - 2));
        CHECK(next == 0);
    }

    CHECK(strstr(buf, "sid=2147483647") != NULL);
    CHECK(strstr(buf, "type=2147483647") != NULL);
    CHECK(strstr(buf, "mode=failclosed") != NULL);
    CHECK(strstr(buf, "decision=PASS") != NULL);
    CHECK(strstr(buf, "decision=DROP") != NULL);
    CHECK(strstr(buf, "resnull=1") != NULL);
    CHECK(strstr(buf, "resnull=0") != NULL);

    {   /* 输出以完整一行的换行收尾 */
        size_t len = strlen(buf);

        CHECK(len > 0 && buf[len - 1] == '\n');
    }

    CHECK(GET(g_obs_total) == t0 + 2);
}

int main(void)
{
    printf("T8-12.15 host unit test: NLU callback passive observation\n");
    printf("build: %s %s\n", __DATE__, __TIME__);
    printf("(gen_obs.inc is extracted verbatim from hook_agent/libtg_hook.c)\n");

    test_layout();
    test_single();
    test_overwrite();
    test_concurrent();
    test_realistic_concurrency();
    test_chunked();
    test_callback();
    test_r13_terminal();
    test_line_format();

    printf("\n---\nchecks: pass=%d fail=%d\n", g_pass, g_fail);
    printf("RESULT: %s\n", (g_fail == 0) ? "PASS" : "FAIL");
    return (g_fail == 0) ? 0 : 1;
}
