/*
 * t5_host_test.c -- T5 的 Windows/GCC 自动化测试（不需要设备、不需要 Frida）
 *
 * 覆盖任务书 §四 的 12 项：
 *   T01 正常 WAV 被发现建 Job 并成功识别
 *   T02 非 .wav 文件被忽略
 *   T03 不完整 WAV 不处理，补全后再处理
 *   T04 头错误/格式不符 -> FAILED 并记录原因
 *   T05 同一 WAV 重复扫描不重复建 Job
 *   T06 重启后不重复执行已成功的识别
 *   T07 PROCESSING 异常退出后可恢复
 *   T08 成功结果与源文件路径/片段号正确关联（且不改原始 WAV）
 *   T09 Mock 失败后记录错误并按策略重试，超限转 FAILED
 *   T10 单个坏 WAV 不影响其他 WAV
 *   T11 不同 run_id 的文件不会 ID 冲突
 *   T12 多任务连续处理时内存/队列有界
 *
 * 全部 fixture 在临时目录里现造，绝不动真实 T4 录音。
 */
#include "t5_engine.h"
#include "t5_provider.h"
#include "t5_store.h"
#include "t5_types.h"
#include "t5_util.h"
#include "t5_wav.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#ifdef _WIN32
#  include <direct.h>
#  include <io.h>
#  define T5_TEST_MKDIR(p) _mkdir(p)
#else
#  include <unistd.h>
#  define T5_TEST_MKDIR(p) mkdir((p), 0775)
#endif

static int g_pass = 0, g_fail = 0;
static char g_root[T5_MAX_PATH];

static void ok_impl(int cond, const char *name, const char *detail)
{
    if (cond) { g_pass++; printf("  ok   %s\n", name); }
    else {
        g_fail++;
        printf("  FAIL %s%s%s\n", name, detail ? " :: " : "", detail ? detail : "");
    }
}
/* 允许 ok(cond, name) 与 ok(cond, name, "detail") 两种写法 */
#define ok(cond, name, ...) ok_impl((cond), (name), "" __VA_ARGS__)

static void ok_eq_ll(long long got, long long want, const char *name)
{
    char d[96];
    snprintf(d, sizeof(d), "got=%lld want=%lld", got, want);
    ok_impl(got == want, name, d);
}

static void ok_contains(const char *hay, const char *needle, const char *name)
{
    char d[256];
    snprintf(d, sizeof(d), "hay=\"%.120s\" needle=\"%s\"", hay ? hay : "", needle);
    ok_impl(hay != NULL && strstr(hay, needle) != NULL, name, d);
}

static void purge_dir(const char *p)
{
    char cmd[T5_MAX_PATH + 32];
#ifdef _WIN32
    snprintf(cmd, sizeof(cmd), "rmdir /S /Q \"%s\" 2>NUL", p);
#else
    snprintf(cmd, sizeof(cmd), "rm -rf \"%s\" 2>/dev/null", p);
#endif
    if (system(cmd) != 0) { /* 无所谓 */ }
}

static void prep_root(void)
{
    snprintf(g_root, sizeof(g_root), "_t5_test/%ld_%ld",
             (long)time(NULL), (long)(t5_now_ms() % 100000));
    purge_dir(g_root);
    T5_TEST_MKDIR("_t5_test");
    T5_TEST_MKDIR(g_root);
}

static void set_env_kv(const char *k, const char *v)
{
#ifdef _WIN32
    _putenv_s(k, v);
#else
    setenv(k, v, 1);
#endif
}

/* ---------------- WAV fixture ---------------- */

static void wr_u32(unsigned char *p, uint32_t v)
{
    p[0] = (unsigned char)(v & 0xff);
    p[1] = (unsigned char)((v >> 8) & 0xff);
    p[2] = (unsigned char)((v >> 16) & 0xff);
    p[3] = (unsigned char)((v >> 24) & 0xff);
}

static void wr_u16(unsigned char *p, uint16_t v)
{
    p[0] = (unsigned char)(v & 0xff);
    p[1] = (unsigned char)((v >> 8) & 0xff);
}

/*
 * mode: 0 = 完成（头里回填真实长度）
 *       1 = 未关闭（data_len=0，riff=36，但数据已经写进去）
 *       2 = 截断（头声称完整长度，实际只写一半）
 */
static void make_wav(const char *path, uint32_t data_bytes, int mode,
                     uint32_t rate, uint16_t channels, uint16_t bits)
{
    unsigned char hdr[44];
    unsigned char *data;
    FILE *f;
    uint32_t claim;
    uint32_t written;

    memset(hdr, 0, sizeof(hdr));
    memcpy(hdr + 0, "RIFF", 4);
    memcpy(hdr + 8, "WAVE", 4);
    memcpy(hdr + 12, "fmt ", 4);
    wr_u32(hdr + 16, 16);
    wr_u16(hdr + 20, 1);
    wr_u16(hdr + 22, channels);
    wr_u32(hdr + 24, rate);
    wr_u32(hdr + 28, rate * (uint32_t)channels * (uint32_t)(bits / 8));
    wr_u16(hdr + 32, (uint16_t)(channels * bits / 8));
    wr_u16(hdr + 34, bits);
    memcpy(hdr + 36, "data", 4);

    claim = (mode == 1) ? 0u : data_bytes;
    wr_u32(hdr + 4, (mode == 1) ? 36u : (36u + data_bytes));
    wr_u32(hdr + 40, claim);

    written = (mode == 2) ? (data_bytes / 2) : data_bytes;

    data = (unsigned char *)malloc(data_bytes ? data_bytes : 1);
    if (data == NULL) return;
    memset(data, 0x11, data_bytes);

    f = fopen(path, "wb");
    if (f == NULL) { free(data); return; }
    fwrite(hdr, 1, sizeof(hdr), f);
    fwrite(data, 1, written, f);
    fclose(f);
    free(data);
}

/* 把未关闭的 WAV 补成关闭状态（模拟 T4 的 t4_wav_close） */
static void finalize_wav(const char *path, uint32_t data_bytes)
{
    unsigned char b[4];
    FILE *f = fopen(path, "r+b");
    if (f == NULL) return;
    wr_u32(b, 36u + data_bytes);
    fseek(f, 4L, SEEK_SET);
    fwrite(b, 1, 4, f);
    wr_u32(b, data_bytes);
    fseek(f, 40L, SEEK_SET);
    fwrite(b, 1, 4, f);
    fclose(f);
}

static long long file_hash(const char *path)
{
    unsigned char buf[4096];
    long long h = 0;
    FILE *f = fopen(path, "rb");
    size_t n;
    if (f == NULL) return -1;
    while ((n = fread(buf, 1, sizeof(buf), f)) > 0) {
        size_t i;
        for (i = 0; i < n; i++) h = h * 131 + (long long)buf[i];
    }
    fclose(f);
    return h;
}

/* 把截断的 WAV 补到头部声称的长度（T4 继续写数据的情形：大小变化，头不变） */
static void extend_wav(const char *path, uint32_t total_data_bytes)
{
    long long cur;
    long long want;
    FILE *f;

    cur = t5_file_size(path);
    want = 44 + (long long)total_data_bytes;
    if (cur < 0 || cur >= want) return;
    f = fopen(path, "ab");
    if (f == NULL) return;
    while (cur < want) {
        char zero[512];
        size_t n = (size_t)((want - cur) > 512 ? 512 : (want - cur));
        memset(zero, 0, sizeof(zero));
        if (fwrite(zero, 1, n, f) != n) break;
        cur += (long long)n;
    }
    fclose(f);
}

/* ---------------- 引擎快捷方式 ---------------- */

static t5_config mk_cfg(const char *watch, const char *work)
{
    t5_config c;
    t5_config_defaults(&c);
    snprintf(c.watch_dir, sizeof(c.watch_dir), "%s", watch);
    snprintf(c.work_dir, sizeof(c.work_dir), "%s", work);
    c.stable_ms = 0;                /* 测试不等待稳定窗口 */
    c.scan_interval_ms = 10;
    c.retry_delay_ms = 0;
    c.incomplete_timeout_ms = 600000;
    c.max_jobs = 64;
    c.max_retries = 3;
    c.provider_name = "mock";
    return c;
}

static t5_engine *open_engine(const t5_config *c)
{
    char err[T5_MAX_ERR];
    t5_engine *e = t5_engine_open(c, err, sizeof(err));
    if (e == NULL) printf("  !! engine open failed: %s\n", err);
    return e;
}

static void case_dirs(int n, char *watch, size_t wl, char *work, size_t kl)
{
    char base[T5_MAX_PATH];
    snprintf(base, sizeof(base), "%s/case%02d", g_root, n);
    snprintf(watch, wl, "%s/watch", base);
    snprintf(work, kl, "%s/work", base);
    t5_mkdir_p(watch);
    t5_mkdir_p(work);
}

/* 两次采样：第一次只登记候选，第二次才可能判定"写完了"。
 * stable_ms=0 时也至少要两个样本，否则无法证明大小不再变化。 */
static int scan2(t5_engine *e)
{
    (void)t5_engine_scan(e);
    return t5_engine_scan(e);
}

static void rel_path(char *out, size_t outlen, const char *dir, const char *name)
{
    snprintf(out, outlen, "%s/%s", dir, name);
}

/* ================= T01 + T08 ================= */
static void test_basic(void)
{
    char watch[T5_MAX_PATH], work[T5_MAX_PATH], wav[T5_MAX_PATH];
    t5_config c;
    t5_engine *e;
    const t5_job *j;
    const t5_stats *s;
    long long h_before, h_after;
    char id[T5_MAX_ID];

    printf("\n[T01/T08] 正常 WAV 被发现、校验、Mock 识别、结果关联\n");
    case_dirs(1, watch, sizeof(watch), work, sizeof(work));
    rel_path(wav, sizeof(wav), watch, "seg_aabbccdd_0007_1119.wav");
    make_wav(wav, 12800, 0, 16000, 1, 16);
    h_before = file_hash(wav);

    c = mk_cfg(watch, work);
    e = open_engine(&c);
    ok(e != NULL, "T01 引擎打开");
    if (e == NULL) return;

    ok_eq_ll(t5_engine_scan(e), 0, "T01 首次采样只登记候选（不判定稳定）");
    ok_eq_ll(t5_engine_scan(e), 1, "T01 第二次采样确认稳定并建 Job");
    t5_make_job_id("seg_aabbccdd_0007_1119.wav", 44 + 12800, id);
    j = t5_engine_find_job(e, id);
    ok(j != NULL, "T01 能按 job_id 找到任务");
    if (j != NULL) {
        ok(j->state == T5_PENDING, "T01 校验通过后状态为 PENDING");
        ok_eq_ll((long long)j->size, 44 + 12800, "T01 记录文件大小");
    }

    ok_eq_ll(t5_engine_process_ready(e, 0), 1, "T01 处理了 1 个任务");
    j = t5_engine_find_job(e, id);
    ok(j != NULL && j->state == T5_SUCCEEDED, "T01 状态变为 SUCCEEDED");
    if (j != NULL) {
        ok_contains(j->text, "[MOCK] recognized segment 7", "T08 识别文本带 [MOCK] 与片段号");
        ok_contains(j->file, "seg_aabbccdd_0007_1119.wav", "T08 结果关联到源 WAV 路径");
        ok_contains(j->name, "seg_aabbccdd_0007_1119.wav", "T08 保留原文件名");
        ok(strcmp(j->provider, "mock") == 0, "T08 provider = mock");
        ok(strcmp(j->provider_type, "mock") == 0, "T08 provider_type = mock");
        ok_contains(j->run_id, "aabbccdd", "T08 解析出 T4 run_id");
        ok_eq_ll(j->seg_id, 7, "T08 解析出片段 ID");
        ok_eq_ll(j->start_seq, 1119, "T08 解析出起始序号");
        ok(j->t_start[0] != '\0' && j->t_end[0] != '\0', "T08 记录开始/完成时间");
    }

    s = t5_engine_stats(e);
    ok_eq_ll((long long)s->succeeded, 1, "T01 succeeded = 1");
    ok_eq_ll((long long)s->failed, 0, "T01 failed = 0");

    /* T08：原始 WAV 未被修改 */
    h_after = file_hash(wav);
    ok(h_before == h_after, "T08 原始 WAV 内容未被改动");
    ok_eq_ll(t5_file_size(wav), 44 + 12800, "T08 原始 WAV 大小未变");

    t5_engine_close(e);
}

/* ================= T02 ================= */
static void test_non_wav_ignored(void)
{
    char watch[T5_MAX_PATH], work[T5_MAX_PATH], p[T5_MAX_PATH];
    t5_config c;
    t5_engine *e;

    printf("\n[T02] 非 .wav 文件被忽略\n");
    case_dirs(2, watch, sizeof(watch), work, sizeof(work));
    rel_path(p, sizeof(p), watch, "notes.txt");
    { FILE *f = fopen(p, "wb"); if (f) { fputs("hello", f); fclose(f); } }
    rel_path(p, sizeof(p), watch, "seg_x.wav.tmp");
    make_wav(p, 1280, 0, 16000, 1, 16);
    rel_path(p, sizeof(p), watch, "seg_y.WAV.bak");
    make_wav(p, 1280, 0, 16000, 1, 16);

    c = mk_cfg(watch, work);
    e = open_engine(&c);
    if (e == NULL) return;
    ok_eq_ll(scan2(e), 0, "T02 扫描两轮都没有新增 Job");
    ok_eq_ll(t5_engine_process_ready(e, 0), 0, "T02 没有可处理任务");
    t5_engine_close(e);
}

/* ================= T03 ================= */
/*
 * T4 写盘中的文件：riff_size=36（占位）、data_len=0、数据已经在增长。
 * 修正后判 INCOMPLETE（t4-open-placeholder）-> 延迟重试；
 * t4_wav_close() 回填头部后重新校验 -> PENDING -> 识别成功。
 */
static void test_incomplete(void)
{
    char watch[T5_MAX_PATH], work[T5_MAX_PATH], wav[T5_MAX_PATH];
    t5_config c;
    t5_engine *e;
    const t5_stats *s;
    char id[T5_MAX_ID];
    const t5_job *j;

    printf("\n[T03a] T4 写盘中的文件 -> incomplete，回填后正常处理\n");
    case_dirs(3, watch, sizeof(watch), work, sizeof(work));
    rel_path(wav, sizeof(wav), watch, "seg_00112233_0001_100.wav");
    make_wav(wav, 6400, 1, 16000, 1, 16);

    c = mk_cfg(watch, work);
    e = open_engine(&c);
    if (e == NULL) return;
    ok_eq_ll(t5_engine_scan(e), 0, "T03a 首次采样只登记候选");
    ok_eq_ll(t5_engine_scan(e), 0, "T03a 写盘中不建 Job");
    s = t5_engine_stats(e);
    ok(s->incomplete_skips >= 1, "T03a 计入 incomplete_skips（不是 invalid）");
    ok_eq_ll((long long)s->invalid, 0, "T03a 没有判永久失败");

    finalize_wav(wav, 6400);                   /* 模拟 T4 关闭并回填 */
    ok_eq_ll(t5_engine_scan(e), 1, "T03a 回填后建了 1 个 Job");
    t5_make_job_id("seg_00112233_0001_100.wav", 44 + 6400, id);
    j = t5_engine_find_job(e, id);
    ok(j != NULL && j->state == T5_PENDING, "T03a 状态为 PENDING");
    ok_eq_ll(t5_engine_process_ready(e, 0), 1, "T03a 可以处理");
    ok_eq_ll((long long)t5_engine_stats(e)->succeeded, 1, "T03a succeeded = 1");
    ok_eq_ll(t5_engine_scan(e), 0, "T03a 之后重复扫描不新建 Job");
    t5_engine_close(e);

    /* T03b：截断（头声称 6400，实际 3200）-> INCOMPLETE，补数据后可正常处理 */
    {
        char watch2[T5_MAX_PATH], work2[T5_MAX_PATH], wav2[T5_MAX_PATH];
        t5_engine *e2;
        case_dirs(4, watch2, sizeof(watch2), work2, sizeof(work2));
        rel_path(wav2, sizeof(wav2), watch2, "seg_00112233_0002_200.wav");
        make_wav(wav2, 6400, 2, 16000, 1, 16);

        c = mk_cfg(watch2, work2);
        e2 = open_engine(&c);
        if (e2 != NULL) {
            ok_eq_ll(t5_engine_scan(e2), 0, "T03b 首次采样只登记候选");
            ok_eq_ll(t5_engine_scan(e2), 0, "T03b 截断文件不建 Job");
            ok(t5_engine_stats(e2)->incomplete_skips >= 1, "T03b 截断计入 incomplete_skips");

            extend_wav(wav2, 6400);            /* T4 继续把剩下的数据写完（大小变化） */
            ok_eq_ll(t5_engine_scan(e2), 0, "T03b 刚补完的一轮只更新候选");
            ok_eq_ll(t5_engine_scan(e2), 1, "T03b 稳定后建 Job");
            ok_eq_ll(t5_engine_process_ready(e2, 0), 1, "T03b 补全后可以处理");
            ok_eq_ll((long long)t5_engine_stats(e2)->succeeded, 1, "T03b succeeded = 1");
            t5_engine_close(e2);
        }
    }
}

/* ================= T04 ================= */
static void test_bad_format(void)
{
    char watch[T5_MAX_PATH], work[T5_MAX_PATH], p[T5_MAX_PATH];
    t5_config c;
    t5_engine *e;
    const t5_stats *s;
    int i;

    printf("\n[T04] 头错误/格式不符 -> FAILED 并记录原因\n");
    case_dirs(5, watch, sizeof(watch), work, sizeof(work));
    rel_path(p, sizeof(p), watch, "seg_11111111_0001_100.wav");
    make_wav(p, 6400, 0, 44100, 1, 16);          /* 采样率不符 */
    rel_path(p, sizeof(p), watch, "seg_11111111_0002_200.wav");
    make_wav(p, 6400, 0, 16000, 2, 16);          /* 立体声 */
    rel_path(p, sizeof(p), watch, "seg_11111111_0003_300.wav");
    {
        FILE *f; unsigned char junk[100];
        memset(junk, 0x5a, sizeof(junk));
        f = fopen(p, "wb");
        if (f) { fwrite(junk, 1, sizeof(junk), f); fclose(f); }
    }

    c = mk_cfg(watch, work);
    e = open_engine(&c);
    if (e == NULL) return;
    ok_eq_ll(scan2(e), 3, "T04 三个坏文件都建了 Job（便于留证）");
    s = t5_engine_stats(e);
    ok_eq_ll((long long)s->invalid, 3, "T04 invalid = 3");
    ok_eq_ll((long long)s->succeeded, 0, "T04 没有成功任务");

    {
        char id[T5_MAX_ID];
        const t5_job *j;
        t5_make_job_id("seg_11111111_0001_100.wav", 44 + 6400, id);
        j = t5_engine_find_job(e, id);
        ok(j != NULL && j->state == T5_FAILED, "T04 采样率不符 -> FAILED");
        if (j) ok_contains(j->err_msg, "not-16000hz", "T04 错误原因 not-16000hz");

        t5_make_job_id("seg_11111111_0002_200.wav", 44 + 6400, id);
        j = t5_engine_find_job(e, id);
        ok(j != NULL && j->state == T5_FAILED, "T04 立体声 -> FAILED");
        if (j) ok_contains(j->err_msg, "not-mono", "T04 错误原因 not-mono");

        t5_make_job_id("seg_11111111_0003_300.wav", 100, id);
        j = t5_engine_find_job(e, id);
        ok(j != NULL && j->state == T5_FAILED, "T04 垃圾数据 -> FAILED");
        if (j) ok_contains(j->err_msg, "bad-magic", "T04 错误原因 bad-magic");
    }
    for (i = 0; i < 3; i++) { /* 只是保证循环变量被使用 */ }
    t5_engine_close(e);
}

/* ================= T05 ================= */
static void test_no_dup(void)
{
    char watch[T5_MAX_PATH], work[T5_MAX_PATH], wav[T5_MAX_PATH];
    t5_config c;
    t5_engine *e;

    printf("\n[T05] 同一 WAV 重复扫描不重复建 Job\n");
    case_dirs(6, watch, sizeof(watch), work, sizeof(work));
    rel_path(wav, sizeof(wav), watch, "seg_22222222_0001_100.wav");
    make_wav(wav, 6400, 0, 16000, 1, 16);

    c = mk_cfg(watch, work);
    e = open_engine(&c);
    if (e == NULL) return;
    ok_eq_ll(t5_engine_scan(e), 0, "T05 首次采样只登记候选");
    ok_eq_ll(t5_engine_scan(e), 1, "T05 第二次采样建 Job");
    ok_eq_ll(t5_engine_scan(e), 0, "T05 第三次扫描不新增");
    ok_eq_ll(t5_engine_process_ready(e, 0), 1, "T05 只处理 1 次");
    ok_eq_ll(t5_engine_scan(e), 0, "T05 处理后再扫描也不新增");
    ok_eq_ll((long long)t5_engine_stats(e)->new_jobs, 1, "T05 new_jobs 恒为 1");
    ok(t5_engine_stats(e)->dup_skips >= 2, "T05 dup_skips 累计（后续扫描都走重复路径）");
    t5_engine_close(e);
}

/* ================= T06 ================= */
static void test_restart_no_repeat(void)
{
    char watch[T5_MAX_PATH], work[T5_MAX_PATH], wav[T5_MAX_PATH];
    t5_config c;
    t5_engine *e;
    const t5_job *j;
    char id[T5_MAX_ID];

    printf("\n[T06] 重启后不重复执行已成功的识别\n");
    case_dirs(7, watch, sizeof(watch), work, sizeof(work));
    rel_path(wav, sizeof(wav), watch, "seg_33333333_0001_100.wav");
    make_wav(wav, 6400, 0, 16000, 1, 16);

    c = mk_cfg(watch, work);
    e = open_engine(&c);
    if (e == NULL) return;
    scan2(e);
    t5_engine_process_ready(e, 0);
    ok_eq_ll((long long)t5_engine_stats(e)->succeeded, 1, "T06 第一次运行成功 1 个");
    t5_engine_close(e);                            /* 模拟进程退出 */

    e = open_engine(&c);                           /* 重新启动 */
    ok(e != NULL, "T06 第二次打开引擎");
    if (e == NULL) return;
    ok_eq_ll((long long)t5_engine_stats(e)->replay_lines, 5,
             "T06 回放到 5 条状态记录（DISCOVERED/VALIDATING/PENDING/PROCESSING/SUCCEEDED）");
    ok_eq_ll(t5_engine_scan(e), 0, "T06 重启后扫描不新增 Job");
    ok_eq_ll(t5_engine_process_ready(e, 0), 0, "T06 重启后没有可处理任务");
    ok_eq_ll((long long)t5_engine_stats(e)->succeeded, 0, "T06 没有重复执行 Mock");

    t5_make_job_id("seg_33333333_0001_100.wav", 44 + 6400, id);
    j = t5_engine_find_job(e, id);
    ok(j != NULL && j->state == T5_SUCCEEDED, "T06 任务仍是 SUCCEEDED");
    if (j) ok_contains(j->text, "[MOCK]", "T06 原有识别文本仍在");
    t5_engine_close(e);
}

/* ================= T07 ================= */
static void test_recover_processing(void)
{
    char watch[T5_MAX_PATH], work[T5_MAX_PATH], wav[T5_MAX_PATH], wpath[T5_MAX_PATH];
    t5_config c;
    t5_engine *e;
    t5_job fake;
    t5_store st;
    const t5_job *j;
    char id[T5_MAX_ID];

    printf("\n[T07] PROCESSING 中异常退出后可恢复\n");
    case_dirs(8, watch, sizeof(watch), work, sizeof(work));
    rel_path(wav, sizeof(wav), watch, "seg_44444444_0001_100.wav");
    make_wav(wav, 6400, 0, 16000, 1, 16);

    /* 手工造一条"上次进程在处理中被打断"的记录 */
    memset(&fake, 0, sizeof(fake));
    t5_make_job_id("seg_44444444_0001_100.wav", 44 + 6400, id);
    snprintf(fake.job_id, sizeof(fake.job_id), "%s", id);
    rel_path(wpath, sizeof(wpath), watch, "seg_44444444_0001_100.wav");
    snprintf(fake.file, sizeof(fake.file), "%s", wpath);
    snprintf(fake.name, sizeof(fake.name), "%s", "seg_44444444_0001_100.wav");
    fake.size = 44 + 6400;
    fake.state = T5_PROCESSING;
    snprintf(fake.provider, sizeof(fake.provider), "mock");
    snprintf(fake.provider_type, sizeof(fake.provider_type), "mock");
    snprintf(fake.t_start, sizeof(fake.t_start), "2026-11-19T22:00:00");
    snprintf(fake.run_id, sizeof(fake.run_id), "44444444");
    fake.seg_id = 1;
    fake.start_seq = 100;

    ok(t5_store_open(&st, work, "jobs.jsonl") == 0, "T07 打开 jobs.jsonl");
    ok(t5_store_append(&st, &fake) == 0, "T07 写入一条 PROCESSING 记录");
    t5_store_close(&st);

    c = mk_cfg(watch, work);
    e = open_engine(&c);
    if (e == NULL) return;
    ok_eq_ll((long long)t5_engine_stats(e)->recovered, 1, "T07 恢复计数 = 1");
    j = t5_engine_find_job(e, id);
    ok(j != NULL && j->state == T5_RETRY, "T07 中间态被改成 RETRY");
    if (j) ok_contains(j->err_msg, "recovered-from-PROCESSING", "T07 记录恢复原因");

    ok_eq_ll(t5_engine_process_ready(e, 0), 1, "T07 恢复后可以继续处理");
    j = t5_engine_find_job(e, id);
    ok(j != NULL && j->state == T5_SUCCEEDED, "T07 恢复后识别成功");
    t5_engine_close(e);
}

/* ================= T09 ================= */
static void test_failure_retry(void)
{
    char watch[T5_MAX_PATH], work[T5_MAX_PATH], wav[T5_MAX_PATH];
    t5_config c;
    t5_engine *e;
    const t5_job *j;
    char id[T5_MAX_ID];
    int round;

    printf("\n[T09] Mock 失败记录错误并按策略重试，超限转 FAILED\n");
    case_dirs(9, watch, sizeof(watch), work, sizeof(work));
    rel_path(wav, sizeof(wav), watch, "seg_55555555_0001_100_failme.wav");
    make_wav(wav, 6400, 0, 16000, 1, 16);

    set_env_kv(T5_MOCK_FAIL_MATCH_ENV, "failme");
    set_env_kv(T5_MOCK_FAIL_KIND_ENV, "transient");

    c = mk_cfg(watch, work);
    c.max_retries = 2;
    e = open_engine(&c);
    if (e == NULL) return;
    t5_make_job_id("seg_55555555_0001_100_failme.wav", 44 + 6400, id);

    ok_eq_ll(scan2(e), 1, "T09 扫描新增 1");
    for (round = 0; round < 4; round++) t5_engine_process_ready(e, 0);

    j = t5_engine_find_job(e, id);
    ok(j != NULL && j->state == T5_FAILED, "T09 超过重试上限后 FAILED");
    if (j != NULL) {
        ok(j->attempt >= 2, "T09 attempt >= 2");
        ok_eq_ll(j->err_code, T5_ASR_TRANSIENT, "T09 错误码是 transient");
        ok_contains(j->err_msg, "injected-transient", "T09 记录错误描述");
    }
    ok_eq_ll((long long)t5_engine_stats(e)->retried, 2, "T09 retried = 2（达到上限）");
    t5_engine_close(e);

    /* 永久失败：一次就 FAILED */
    {
        char watch2[T5_MAX_PATH], work2[T5_MAX_PATH], wav2[T5_MAX_PATH];
        t5_engine *e2;
        char id2[T5_MAX_ID];
        case_dirs(10, watch2, sizeof(watch2), work2, sizeof(work2));
        rel_path(wav2, sizeof(wav2), watch2, "seg_55555555_0002_200_failme.wav");
        make_wav(wav2, 6400, 0, 16000, 1, 16);
        set_env_kv(T5_MOCK_FAIL_KIND_ENV, "permanent");
        c = mk_cfg(watch2, work2);
        c.max_retries = 3;
        e2 = open_engine(&c);
        if (e2 != NULL) {
            scan2(e2);
            t5_engine_process_ready(e2, 0);
            t5_make_job_id("seg_55555555_0002_200_failme.wav", 44 + 6400, id2);
            j = t5_engine_find_job(e2, id2);
            ok(j != NULL && j->state == T5_FAILED, "T09 永久失败立即 FAILED");
            if (j) ok_eq_ll(j->err_code, T5_ASR_PERMANENT, "T09 错误码是 permanent");
            ok_eq_ll((long long)t5_engine_stats(e2)->retried, 0, "T09 永久失败不重试");
            t5_engine_close(e2);
        }
    }

    set_env_kv(T5_MOCK_FAIL_MATCH_ENV, "");
    set_env_kv(T5_MOCK_FAIL_KIND_ENV, "transient");
}

/* ================= T10 ================= */
static void test_bad_isolated(void)
{
    char watch[T5_MAX_PATH], work[T5_MAX_PATH], p[T5_MAX_PATH];
    t5_config c;
    t5_engine *e;

    printf("\n[T10] 单个坏 WAV 不影响其他 WAV\n");
    case_dirs(11, watch, sizeof(watch), work, sizeof(work));
    rel_path(p, sizeof(p), watch, "seg_66666666_0001_100.wav");
    make_wav(p, 6400, 0, 16000, 1, 16);
    rel_path(p, sizeof(p), watch, "seg_66666666_0002_200.wav");
    make_wav(p, 6400, 0, 48000, 1, 16);          /* 坏 */
    rel_path(p, sizeof(p), watch, "seg_66666666_0003_300.wav");
    make_wav(p, 6400, 0, 16000, 1, 16);

    c = mk_cfg(watch, work);
    e = open_engine(&c);
    if (e == NULL) return;
    ok_eq_ll(scan2(e), 3, "T10 三个文件各建一个 Job");
    t5_engine_process_ready(e, 0);
    ok_eq_ll((long long)t5_engine_stats(e)->succeeded, 2, "T10 两个好文件成功");
    ok_eq_ll((long long)t5_engine_stats(e)->failed, 0, "T10 坏文件在扫描期就判 FAILED，不进识别");
    ok_eq_ll((long long)t5_engine_stats(e)->invalid, 1, "T10 invalid = 1");
    t5_engine_close(e);
}

/* ================= T11 ================= */
static void test_distinct_run_ids(void)
{
    char watch[T5_MAX_PATH], work[T5_MAX_PATH], p[T5_MAX_PATH];
    t5_config c;
    t5_engine *e;
    char id1[T5_MAX_ID], id2[T5_MAX_ID];
    const t5_job *j1, *j2;

    printf("\n[T11] 不同 run_id 的文件不会 ID 冲突\n");
    case_dirs(12, watch, sizeof(watch), work, sizeof(work));
    rel_path(p, sizeof(p), watch, "seg_aaaaaaaa_0001_100.wav");
    make_wav(p, 6400, 0, 16000, 1, 16);
    rel_path(p, sizeof(p), watch, "seg_bbbbbbbb_0001_100.wav");
    make_wav(p, 6400, 0, 16000, 1, 16);

    c = mk_cfg(watch, work);
    e = open_engine(&c);
    if (e == NULL) return;
    ok_eq_ll(scan2(e), 2, "T11 两个文件各建一个 Job");
    t5_make_job_id("seg_aaaaaaaa_0001_100.wav", 44 + 6400, id1);
    t5_make_job_id("seg_bbbbbbbb_0001_100.wav", 44 + 6400, id2);
    ok(strcmp(id1, id2) != 0, "T11 job_id 不同");
    j1 = t5_engine_find_job(e, id1);
    j2 = t5_engine_find_job(e, id2);
    ok(j1 != NULL && j2 != NULL, "T11 两个任务都能按各自 job_id 找到");
    ok(j1 != NULL && j2 != NULL && strcmp(j1->file, j2->file) != 0, "T11 指向不同文件");
    t5_engine_process_ready(e, 0);
    ok_eq_ll((long long)t5_engine_stats(e)->succeeded, 2, "T11 两个都成功");
    t5_engine_close(e);
}

/* ================= T12 ================= */
static void test_bounded(void)
{
    char watch[T5_MAX_PATH], work[T5_MAX_PATH], p[T5_MAX_PATH];
    t5_config c;
    t5_engine *e;
    const t5_stats *s;
    int i;
    const int nfiles = 40, maxjobs = 8;

    printf("\n[T12] 多任务连续处理时内存/队列有界\n");
    case_dirs(13, watch, sizeof(watch), work, sizeof(work));
    for (i = 0; i < nfiles; i++) {
        char name[64];
        snprintf(name, sizeof(name), "seg_77777777_%04d_%d.wav", i + 1, 100 + i);
        rel_path(p, sizeof(p), watch, name);
        make_wav(p, 3200, 0, 16000, 1, 16);
    }

    c = mk_cfg(watch, work);
    c.max_jobs = maxjobs;
    e = open_engine(&c);
    if (e == NULL) return;

    scan2(e);
    s = t5_engine_stats(e);
    ok(s->jobs_tracked <= (unsigned long)maxjobs, "T12 任务表不超过 max_jobs");
    ok_eq_ll((long long)s->new_jobs, (long long)maxjobs, "T12 首轮最多建 max_jobs 个任务");
    ok(s->queue_full > 0 || s->evicted > 0, "T12 超出容量被明确计数（不是静默丢）");

    /* 多轮：每轮扫描 + 处理，任务数始终有界，剩余文件陆续被处理 */
    for (i = 0; i < 20; i++) {
        t5_engine_scan(e);
        t5_engine_process_ready(e, 0);
        s = t5_engine_stats(e);
        if (s->jobs_tracked > (unsigned long)maxjobs) break;
    }
    ok(s->jobs_tracked <= (unsigned long)maxjobs, "T12 多轮后任务表仍然有界");
    ok(s->succeeded > 0, "T12 确实处理了任务");
    ok(s->succeeded == s->new_jobs - s->invalid - s->failed,
       "T12 计数自洽：succeeded = new_jobs - invalid - failed");
    ok(s->store_errors == 0, "T12 落库没有错误");
    t5_engine_close(e);
}

/* ================= 结果文件格式 ================= */
static void test_store_format(void)
{
    char watch[T5_MAX_PATH], work[T5_MAX_PATH], p[T5_MAX_PATH], path[T5_MAX_PATH];
    t5_config c;
    t5_engine *e;
    FILE *f;
    char line[2048];
    int saw_job = 0, saw_result = 0;
    unsigned long lines = 0, bad = 0;

    printf("\n[T13] jobs.jsonl / results.jsonl 字段与回放\n");
    case_dirs(14, watch, sizeof(watch), work, sizeof(work));
    rel_path(p, sizeof(p), watch, "seg_88888888_0003_333.wav");
    make_wav(p, 6400, 0, 16000, 1, 16);
    c = mk_cfg(watch, work);
    e = open_engine(&c);
    if (e == NULL) return;
    scan2(e);
    t5_engine_process_ready(e, 0);
    t5_engine_close(e);

    snprintf(path, sizeof(path), "%s/results.jsonl", work);
    f = fopen(path, "rb");
    ok(f != NULL, "T13 results.jsonl 已生成");
    if (f != NULL) {
        if (fgets(line, sizeof(line), f) != NULL) {
            saw_result = 1;
            ok_contains(line, "\"state\":\"SUCCEEDED\"", "T13 结果行含 SUCCEEDED");
            ok_contains(line, "[MOCK] recognized segment 3", "T13 结果行含 MOCK 文本");
            ok_contains(line, "\"provider_type\":\"mock\"", "T13 结果行标明 mock");
            ok_contains(line, "\"err_code\":0", "T13 结果行含 err_code");
            ok_contains(line, "\"attempt\":", "T13 结果行含 attempt");
            ok_contains(line, "\"run_id\":\"88888888\"", "T13 结果行含 run_id");
        }
        fclose(f);
    }
    ok(saw_result, "T13 results.jsonl 有内容");

    snprintf(path, sizeof(path), "%s/jobs.jsonl", work);
    f = fopen(path, "rb");
    if (f != NULL) {
        while (fgets(line, sizeof(line), f) != NULL) {
            if (strstr(line, "\"state\":\"PROCESSING\"") != NULL) saw_job = 1;
            lines++;
        }
        fclose(f);
    }
    ok(saw_job, "T13 jobs.jsonl 记录了 PROCESSING 状态");
    ok(lines >= 4, "T13 jobs.jsonl 至少有 DISCOVERED/VALIDATING/PENDING/PROCESSING/SUCCEEDED");

    /* 半条记录（崩溃残留）应被丢弃而不是把整个库读坏 */
    {
        FILE *g = fopen(path, "ab");
        if (g) { fputs("{\"v\":1,\"rec\":\"job\",\"job_id\":\"deadbeefdead", g); fclose(g); }
    }
    {
        unsigned long l2 = 0, b2 = 0;
        ok(t5_store_replay(work, "jobs.jsonl", NULL, NULL, &l2, &b2) == 0, "T13 回放半条记录不报错");
        ok(b2 >= 1, "T13 半条记录被计入 bad");
        ok(l2 == lines, "T13 有效行数与写入时一致");
        (void)bad;
    }
}


/* ================= T14：WAV 解析健壮性 ================= */
static void patch_u32(const char *path, long off, uint32_t v)
{
    FILE *f = fopen(path, "r+b");
    unsigned char b[4];
    if (f == NULL) return;
    b[0] = (unsigned char)(v & 0xff);
    b[1] = (unsigned char)((v >> 8) & 0xff);
    b[2] = (unsigned char)((v >> 16) & 0xff);
    b[3] = (unsigned char)((v >> 24) & 0xff);
    fseek(f, off, SEEK_SET);
    fwrite(b, 1, 4, f);
    fclose(f);
}

static void check_one(const char *path, t5_wav_check want, const char *want_err,
                      const char *name)
{
    t5_wav_info wi;
    char err[T5_MAX_ERR];
    t5_wav_check got;

    err[0] = '\0';
    got = t5_wav_inspect(path, &wi, err, sizeof(err));
    ok_impl(got == want, name, t5_wav_check_name(got));
    if (want_err != NULL) ok_contains(err, want_err, "  └ 错误原因");
}

static void test_wav_robustness(void)
{
    char base[T5_MAX_PATH], p[T5_MAX_PATH];
    char watch[T5_MAX_PATH], work[T5_MAX_PATH];

    printf("\n[T14] WAV 解析：正常头 / 畸形 chunk / 长度越界 / 不影响邻居\n");
    snprintf(base, sizeof(base), "%s/case20", g_root);
    t5_mkdir_p(base);
    rel_path(p, sizeof(p), base, "ok.wav");
    make_wav(p, 6400, 0, 16000, 1, 16);

    /* 1) 正常 T4 44 字节头 */
    check_one(p, T5_WAV_OK, NULL, "T14.1 正常 T4 WAV -> ok");

    /* 2) fmt chunk 长度 8（< 16） */
    {
        char f2[T5_MAX_PATH];
        rel_path(f2, sizeof(f2), base, "fmt_short.wav");
        make_wav(f2, 6400, 0, 16000, 1, 16);
        patch_u32(f2, 16, 8);
        check_one(f2, T5_WAV_INVALID, "fmt-too-short", "T14.2 fmt 长度 8 -> invalid");
    }

    /* 3) fmt chunk 长度 2000（超过剩余空间） */
    {
        char f3[T5_MAX_PATH];
        rel_path(f3, sizeof(f3), base, "fmt_over.wav");
        make_wav(f3, 6400, 0, 16000, 1, 16);
        patch_u32(f3, 16, 2000);
        check_one(f3, T5_WAV_INVALID, "chunk-length-out-of-range", "T14.3 fmt 长度 2000 -> invalid");
    }

    /* 4) chunk 长度 0xFFFFFFFF */
    {
        char f4[T5_MAX_PATH];
        rel_path(f4, sizeof(f4), base, "len_ffff.wav");
        make_wav(f4, 6400, 0, 16000, 1, 16);
        patch_u32(f4, 40, 0xFFFFFFFFu);
        check_one(f4, T5_WAV_INVALID, "chunk-length-out-of-range", "T14.4 data 长度 0xFFFFFFFF -> invalid");
    }

    /* 5) chunk 长度 0xFFFFFFF0 */
    {
        char f5[T5_MAX_PATH];
        rel_path(f5, sizeof(f5), base, "len_fffff0.wav");
        make_wav(f5, 6400, 0, 16000, 1, 16);
        patch_u32(f5, 16, 0xFFFFFFF0u);
        check_one(f5, T5_WAV_INVALID, "chunk-length-out-of-range", "T14.5 fmt 长度 0xFFFFFFF0 -> invalid");
    }

    /* 6) data 长度超出 RIFF 范围 */
    {
        char f6[T5_MAX_PATH];
        rel_path(f6, sizeof(f6), base, "data_over.wav");
        make_wav(f6, 6400, 0, 16000, 1, 16);
        patch_u32(f6, 40, 6400u + 64u);
        check_one(f6, T5_WAV_INVALID, "chunk-length-out-of-range", "T14.6 data 长度超出 RIFF -> invalid");
    }

    /* 7) RIFF 长度大于文件实际长度 */
    {
        char f7[T5_MAX_PATH];
        rel_path(f7, sizeof(f7), base, "riff_big.wav");
        make_wav(f7, 6400, 0, 16000, 1, 16);
        patch_u32(f7, 4, 36u + 6400u + 100u);
        check_one(f7, T5_WAV_INCOMPLETE, "riff-truncated", "T14.7 RIFF 长度 > 文件 -> incomplete");
    }

    /* 8) RIFF 长度小于文件实际长度 */
    {
        char f8[T5_MAX_PATH];
        rel_path(f8, sizeof(f8), base, "riff_small.wav");
        make_wav(f8, 6400, 0, 16000, 1, 16);
        patch_u32(f8, 4, 36u + 6400u - 100u);
        check_one(f8, T5_WAV_INVALID, "riff-size-mismatch", "T14.8 RIFF 长度 < 文件 -> invalid");
    }

    /* 10/11) T4 写盘中：RIFF=36、data=0，但 PCM 数据已经写入 */
    {
        char f9[T5_MAX_PATH];

        rel_path(f9, sizeof(f9), base, "t4_open.wav");
        make_wav(f9, 6400, 1, 16000, 1, 16);

        check_one(f9, T5_WAV_INCOMPLETE, "t4-open-placeholder",
                  "T14.10 T4 写盘中 WAV -> incomplete");

        /* 模拟 t4_wav_close() 回填头部 */
        finalize_wav(f9, 6400);

        check_one(f9, T5_WAV_OK, NULL, "T14.11 T4 关闭并回填后 WAV -> ok");
    }

    /* 9) 损坏 WAV 不影响同目录正常 WAV（经过引擎） */
    {
        t5_config c;
        t5_engine *e;
        case_dirs(21, watch, sizeof(watch), work, sizeof(work));
        rel_path(p, sizeof(p), watch, "seg_99999999_0001_100.wav");
        make_wav(p, 6400, 0, 16000, 1, 16);
        {
            char bad[T5_MAX_PATH];
            rel_path(bad, sizeof(bad), watch, "seg_99999999_0002_200.wav");
            make_wav(bad, 6400, 0, 16000, 1, 16);
            patch_u32(bad, 40, 0xFFFFFFFFu);
        }
        c = mk_cfg(watch, work);
        e = open_engine(&c);
        if (e != NULL) {
            ok_eq_ll(scan2(e), 2, "T14.9 好文件与坏文件各建一个 Job");
            t5_engine_process_ready(e, 0);
            ok_eq_ll((long long)t5_engine_stats(e)->succeeded, 1, "T14.9 好文件识别成功");
            ok_eq_ll((long long)t5_engine_stats(e)->invalid, 1, "T14.9 坏文件判 invalid");
            ok_eq_ll((long long)t5_engine_stats(e)->failed, 0, "T14.9 没有运行期失败");
            t5_engine_close(e);
        }
    }
}

/* ================= T15：JSONL 严格解析 ================= */
typedef struct {
    unsigned long calls;
    t5_job last;
} replay_sink;

static void sink_cb(void *ud, const t5_job *j)
{
    replay_sink *s = (replay_sink *)ud;
    s->calls++;
    s->last = *j;
}

static void write_text_file(const char *path, const char *content)
{
    FILE *f = fopen(path, "wb");
    if (f == NULL) return;
    fputs(content, f);
    fclose(f);
}

/* 把 jobs.jsonl 换成给定内容并回放，返回 (lines, bad) */
static void replay_with(const char *work, const char *content,
                        unsigned long *lines, unsigned long *bad, replay_sink *sink)
{
    char path[T5_MAX_PATH];
    snprintf(path, sizeof(path), "%s/jobs.jsonl", work);
    write_text_file(path, content);
    if (sink != NULL) { sink->calls = 0; memset(&sink->last, 0, sizeof(sink->last)); }
    if (t5_store_replay(work, "jobs.jsonl", sink_cb, sink, lines, bad) != 0) {
        *lines = 0;
        *bad = 0;
    }
}

static void test_jsonl_strict(void)
{
    char work[T5_MAX_PATH], path[T5_MAX_PATH], line[2048], buf[4096];
    t5_job j;
    replay_sink sink;
    unsigned long lines = 0, bad = 0;
    char watch[T5_MAX_PATH];

    printf("\n[T15] JSONL：严格解析（缺引号/非法转义/缺字段/溢出/损坏后仍可恢复）\n");
    case_dirs(22, watch, sizeof(watch), work, sizeof(work));
    (void)watch;

    memset(&j, 0, sizeof(j));
    snprintf(j.job_id, sizeof(j.job_id), "%s", "0123456789abcdef");
    snprintf(j.file, sizeof(j.file), "%s", "/data/local/tmp/t4/segments/x.wav");
    snprintf(j.name, sizeof(j.name), "%s", "seg_aaaaaaaa_0001_100.wav");
    j.size = 6444;
    j.state = T5_SUCCEEDED;
    snprintf(j.provider, sizeof(j.provider), "mock");
    snprintf(j.provider_type, sizeof(j.provider_type), "mock");
    snprintf(j.text, sizeof(j.text), "[MOCK] recognized segment 1");
    snprintf(j.run_id, sizeof(j.run_id), "aaaaaaaa");
    j.seg_id = 1;
    j.start_seq = 100;
    ok(t5_job_to_json(&j, line, sizeof(line)) > 0, "T15 序列化一条正常记录");

    /* 1) 正常记录 */
    replay_with(work, line, &lines, &bad, &sink);
    ok_eq_ll((long long)lines, 1, "T15.1 正常记录回放 1 条");
    ok_eq_ll((long long)bad, 0, "T15.1 没有坏行");
    ok(sink.calls == 1 && sink.last.state == T5_SUCCEEDED, "T15.1 状态 SUCCEEDED");
    ok_contains(sink.last.text, "[MOCK] recognized segment 1", "T15.1 文本解析正确");

    /* 2) 缺少结束双引号（字符串一直延续到记录结尾） */
    write_text_file((snprintf(path, sizeof(path), "%s/jobs.jsonl", work), path),
                    "{\"v\":1,\"job_id\":\"0123456789abcdef\",\"file\":\"/a.wav\","
                    "\"name\":\"a.wav\",\"size\":6444,\"state\":\"SUCCEEDED\",\"attempt\":0,"
                    "\"t_start\":\"\",\"t_end\":\"\",\"provider\":\"mock\","
                    "\"provider_type\":\"mock\",\"text\":\"unterminated}\n");
    lines = bad = 0;
    ok(t5_store_replay(work, "jobs.jsonl", NULL, NULL, &lines, &bad) == 0,
       "T15.2 回放不报 I/O 错误（坏行不是 I/O 错误）");
    ok_eq_ll((long long)lines, 0, "T15.2 缺结束引号 -> 该行被拒");
    ok_eq_ll((long long)bad, 1, "T15.2 计入 bad");

    /* 3) 非法转义 */
    snprintf(buf, sizeof(buf), "%s", line);
    {
        char *q = strstr(buf, "[MOCK]");
        if (q) { buf[0] = buf[0]; memmove(q + 1, q, strlen(q) + 1); q[0] = '\\'; q[1] = 'x'; }
    }
    replay_with(work, buf, &lines, &bad, &sink);
    ok_eq_ll((long long)lines, 0, "T15.3 非法转义 \\x -> 该行被拒");

    /* 4) 不完整 Unicode 转义 */
    write_text_file((snprintf(path, sizeof(path), "%s/jobs.jsonl", work), path),
                    "{\"v\":1,\"job_id\":\"0123456789abcdef\",\"file\":\"/a.wav\",\"name\":\"a.wav\","
                    "\"size\":6444,\"state\":\"SUCCEEDED\",\"attempt\":0,\"t_start\":\"\",\"t_end\":\"\","
                    "\"provider\":\"mock\",\"provider_type\":\"mock\",\"text\":\"\\u12\",\"err_code\":0,"
                    "\"err_msg\":\"\"}\n");
    lines = bad = 0;
    ok(t5_store_replay(work, "jobs.jsonl", NULL, NULL, &lines, &bad) == 0, "T15.4 回放不报 I/O 错误");
    ok_eq_ll((long long)lines, 0, "T15.4 不完整 \\u 转义 -> 该行被拒");
    ok_eq_ll((long long)bad, 1, "T15.4 计入 bad");

    /* 5) 缺 job_id */
    replay_with(work,
        "{\"v\":1,\"file\":\"/a.wav\",\"name\":\"a.wav\",\"size\":6444,\"state\":\"SUCCEEDED\","
        "\"attempt\":0,\"t_start\":\"\",\"t_end\":\"\",\"provider\":\"mock\",\"provider_type\":\"mock\","
        "\"text\":\"x\",\"err_code\":0,\"err_msg\":\"\"}\n", &lines, &bad, &sink);
    ok_eq_ll((long long)lines, 0, "T15.5 缺 job_id -> 该行被拒");

    /* 6) 缺 state */
    replay_with(work,
        "{\"v\":1,\"job_id\":\"0123456789abcdef\",\"file\":\"/a.wav\",\"name\":\"a.wav\",\"size\":6444,"
        "\"attempt\":0,\"t_start\":\"\",\"t_end\":\"\",\"provider\":\"mock\",\"provider_type\":\"mock\","
        "\"text\":\"x\",\"err_code\":0,\"err_msg\":\"\"}\n", &lines, &bad, &sink);
    ok_eq_ll((long long)lines, 0, "T15.6 缺 state -> 该行被拒");

    /* 7) 缺 file */
    replay_with(work,
        "{\"v\":1,\"job_id\":\"0123456789abcdef\",\"name\":\"a.wav\",\"size\":6444,\"state\":\"SUCCEEDED\","
        "\"attempt\":0,\"t_start\":\"\",\"t_end\":\"\",\"provider\":\"mock\",\"provider_type\":\"mock\","
        "\"text\":\"x\",\"err_code\":0,\"err_msg\":\"\"}\n", &lines, &bad, &sink);
    ok_eq_ll((long long)lines, 0, "T15.7 缺 file -> 该行被拒");

    /* 8) 数字字段溢出 */
    replay_with(work,
        "{\"v\":1,\"job_id\":\"0123456789abcdef\",\"file\":\"/a.wav\",\"name\":\"a.wav\","
        "\"size\":999999999999999999999999,\"state\":\"SUCCEEDED\",\"attempt\":0,"
        "\"t_start\":\"\",\"t_end\":\"\",\"provider\":\"mock\",\"provider_type\":\"mock\","
        "\"text\":\"x\",\"err_code\":0,\"err_msg\":\"\"}\n", &lines, &bad, &sink);
    ok_eq_ll((long long)lines, 0, "T15.8 size 溢出 -> 该行被拒");

    /* 9) 有效记录后跟随损坏记录 */
    snprintf(buf, sizeof(buf), "%s{\"broken\":1,\"text\":\"unterminated\n", line);
    replay_with(work, buf, &lines, &bad, &sink);
    ok_eq_ll((long long)lines, 1, "T15.9 有效记录仍被读出");
    ok_eq_ll((long long)bad, 1, "T15.9 损坏记录计入 bad");

    /* 11) 文本内容中的伪字段不能覆盖真正的 JSON 字段 */
    {
        char fake_text[T5_MAX_TEXT];

        snprintf(fake_text, sizeof(fake_text),
                 "recognized: \"err_msg\":\"fake-error\"");

        snprintf(j.text, sizeof(j.text), "%s", fake_text);
        snprintf(j.err_msg, sizeof(j.err_msg), "%s", "real-error");

        ok(t5_job_to_json(&j, line, sizeof(line)) > 0,
           "T15.11 生成包含伪字段的记录");

        replay_with(work, line, &lines, &bad, &sink);

        ok_eq_ll((long long)lines, 1, "T15.11 伪字段记录正常回放");

        ok(strcmp(sink.last.err_msg, "real-error") == 0,
           "T15.11 err_msg 必须取真正顶层字段");

        ok(strstr(sink.last.text, "fake-error") != NULL,
           "T15.11 原始识别文本必须完整保留");
    }

    /* T15.12：拒绝 JSON 对象结束后的非法尾随字符 */
    {
        size_t n = strlen(line);

        if (n > 0 && line[n - 1] == '\n') {
            snprintf(buf, sizeof(buf),
                     "%.*sgarbage\n",
                     (int)(n - 1), line);

            replay_with(work, buf, &lines, &bad, &sink);

            ok_eq_ll((long long)lines, 0,
                     "T15.12 JSON 对象后存在非法字符 -> 拒绝");

            ok_eq_ll((long long)bad, 1,
                     "T15.12 非法尾随字符计入 bad");
        } else {
            ok(0, "T15.12 测试前提：JSON 行以换行符结束");
        }
    }

    /* T15.13：拒绝 JSON 整数中的正号 */
    snprintf(buf, sizeof(buf), "%s", line);
    {
        char *q = strstr(buf, "\"size\":");

        if (q != NULL) {
            q += strlen("\"size\":");
            memmove(q + 1, q, strlen(q) + 1);
            *q = '+';

            replay_with(work, buf, &lines, &bad, &sink);

            ok_eq_ll((long long)lines, 0,
                     "T15.13 JSON 整数带正号 -> 拒绝");

            ok_eq_ll((long long)bad, 1,
                     "T15.13 非法正号整数计入 bad");
        } else {
            ok(0, "T15.13 测试前提：找到 size 字段");
        }
    }

    /* T15.14：拒绝 JSON 整数的前导零 */
    snprintf(buf, sizeof(buf), "%s", line);
    {
        char *q = strstr(buf, "\"size\":");

        if (q != NULL) {
            q += strlen("\"size\":");
            *q = '0';

            replay_with(work, buf, &lines, &bad, &sink);

            ok_eq_ll((long long)lines, 0,
                     "T15.14 JSON 整数存在前导零 -> 拒绝");

            ok_eq_ll((long long)bad, 1,
                     "T15.14 非法前导零整数计入 bad");
        } else {
            ok(0, "T15.14 测试前提：找到 size 字段");
        }
    }

    /* 10) 损坏记录之后的有效记录仍能恢复 */
    snprintf(buf, sizeof(buf), "{\"broken\":1\n%s", line);
    replay_with(work, buf, &lines, &bad, &sink);
    ok_eq_ll((long long)lines, 1, "T15.10 损坏行之后的有效记录被读出");
    ok_eq_ll((long long)bad, 1, "T15.10 损坏行计入 bad");
    ok(sink.calls == 1 && sink.last.state == T5_SUCCEEDED, "T15.10 恢复出的状态正确");
}

/* 损坏记录不能覆盖有效 SUCCEEDED 记录（引擎层面） */
static void test_corrupt_does_not_override(void)
{
    char watch[T5_MAX_PATH], work[T5_MAX_PATH], path[T5_MAX_PATH], line[2048];
    t5_config c;
    t5_engine *e;
    t5_job j;
    const t5_job *got;

    printf("\n[T15b] 损坏记录不覆盖有效 SUCCEEDED，也不触发重复识别\n");
    case_dirs(23, watch, sizeof(watch), work, sizeof(work));

    memset(&j, 0, sizeof(j));
    t5_make_job_id("seg_cccccccc_0001_100.wav", 6444, j.job_id);
    snprintf(j.file, sizeof(j.file), "%s/seg_cccccccc_0001_100.wav", watch);
    snprintf(j.name, sizeof(j.name), "%s", "seg_cccccccc_0001_100.wav");
    j.size = 6444;
    j.state = T5_SUCCEEDED;
    snprintf(j.provider, sizeof(j.provider), "mock");
    snprintf(j.provider_type, sizeof(j.provider_type), "mock");
    snprintf(j.text, sizeof(j.text), "[MOCK] recognized segment 1");
    j.seg_id = 1;
    j.start_seq = 100;
    ok(t5_job_to_json(&j, line, sizeof(line)) > 0, "T15b 造一条 SUCCEEDED 记录");

    snprintf(path, sizeof(path), "%s/jobs.jsonl", work);
    {
        FILE *f = fopen(path, "wb");
        if (f != NULL) {
            fputs(line, f);
            fputs("{\"v\":1,\"job_id\":\"deadbeefdeadbeef\",\"text\":\"broken\n", f);
            fclose(f);
        }
    }

    c = mk_cfg(watch, work);
    e = open_engine(&c);
    if (e != NULL) {
        ok_eq_ll((long long)t5_engine_stats(e)->replay_lines, 1, "T15b 有效记录 1 条");
        ok_eq_ll((long long)t5_engine_stats(e)->bad_lines, 1, "T15b 损坏记录 1 条");
        got = t5_engine_find_job(e, j.job_id);
        ok(got != NULL && got->state == T5_SUCCEEDED, "T15b 状态仍是 SUCCEEDED（未被覆盖）");
        ok_eq_ll(t5_engine_scan(e), 0, "T15b 扫描不新建 Job");
        ok_eq_ll(t5_engine_process_ready(e, 0), 0, "T15b 不重复识别");
        t5_engine_close(e);
    }
}

/* ================= T16：历史回放失败必须阻止启动 ================= */
static void test_replay_failure(void)
{
    char watch[T5_MAX_PATH], work[T5_MAX_PATH], path[T5_MAX_PATH];
    t5_config c;
    t5_engine *e;
    char err[T5_MAX_ERR];

    printf("\n[T16] 回放：文件不存在可启动 / 真实读取错误必须启动失败\n");

    /* 1) jobs.jsonl 不存在 -> 首次启动 */
    case_dirs(24, watch, sizeof(watch), work, sizeof(work));
    c = mk_cfg(watch, work);
    e = open_engine(&c);
    ok(e != NULL, "T16.1 jobs.jsonl 不存在 -> 正常启动");
    if (e != NULL) {
        ok_eq_ll((long long)t5_engine_stats(e)->replay_lines, 0, "T16.1 replay_lines = 0");
        t5_engine_close(e);
    }

    /* 2) 正常存在 -> 正常恢复 */
    {
        char wav[T5_MAX_PATH];
        rel_path(wav, sizeof(wav), watch, "seg_dddddddd_0001_100.wav");
        make_wav(wav, 6400, 0, 16000, 1, 16);
        e = open_engine(&c);
        if (e != NULL) {
            scan2(e);
            t5_engine_process_ready(e, 0);
            ok_eq_ll((long long)t5_engine_stats(e)->succeeded, 1, "T16.2 首次运行成功 1 个");
            t5_engine_close(e);
        }
        e = open_engine(&c);
        if (e != NULL) {
            ok(t5_engine_stats(e)->replay_lines > 0, "T16.2 重启读到历史记录");
            t5_engine_close(e);
        }
    }

    /* 3) 读取发生真实错误：把 jobs.jsonl 做成目录
     *    Windows: fopen 失败(EACCES) -> replay 返回 -1
     *    Linux/Android: fopen 成功但 fgets 读到 EISDIR -> ferror -> replay 返回 -1
     *    两条路径都必须让 t5_engine_open() 返回 NULL。 */
    {
        char work2[T5_MAX_PATH], watch2[T5_MAX_PATH];
        case_dirs(25, watch2, sizeof(watch2), work2, sizeof(work2));
        snprintf(path, sizeof(path), "%s/jobs.jsonl", work2);
        mkdir(path);
        ok(t5_is_dir(path), "T16.3 已把 jobs.jsonl 造成目录");

        {
            unsigned long l = 0, b = 0;
            ok(t5_store_replay(work2, "jobs.jsonl", NULL, NULL, &l, &b) == -1,
               "T16.3 历史读不出来时 t5_store_replay 返回 -1（目录/EISDIR）");
        }

        c = mk_cfg(watch2, work2);
        err[0] = '\0';
        e = t5_engine_open(&c, err, sizeof(err));
        ok(e == NULL, "T16.3 回放/打开失败 -> 引擎不启动");
        ok(strstr(err, "replay-failed") != NULL ||
           strstr(err, "cannot-open-store-in") != NULL,
           "T16.3 错误信息写明历史不可用（replay-failed / cannot-open-store-in）");
        if (e != NULL) t5_engine_close(e);

        /* 4) 回放失败时不得调用 Mock Provider、不得处理 WAV */
        {
            char wav[T5_MAX_PATH];
            rel_path(wav, sizeof(wav), watch2, "seg_eeeeeeee_0001_100.wav");
            make_wav(wav, 6400, 0, 16000, 1, 16);
            err[0] = '\0';
            e = t5_engine_open(&c, err, sizeof(err));
            ok(e == NULL, "T16.4 有 WAV 也一样不启动");
            snprintf(path, sizeof(path), "%s/results.jsonl", work2);
            ok(t5_file_size(path) < 0, "T16.4 没有产生任何识别结果");
        }
    }

    /* 5) 已成功任务重启后不得重复执行（独立基线） */
    {
        char watch3[T5_MAX_PATH], work3[T5_MAX_PATH], wav3[T5_MAX_PATH];
        case_dirs(26, watch3, sizeof(watch3), work3, sizeof(work3));
        rel_path(wav3, sizeof(wav3), watch3, "seg_ffffffff_0001_100.wav");
        make_wav(wav3, 6400, 0, 16000, 1, 16);
        c = mk_cfg(watch3, work3);
        e = open_engine(&c);
        if (e != NULL) {
            scan2(e);
            t5_engine_process_ready(e, 0);
            ok_eq_ll((long long)t5_engine_stats(e)->succeeded, 1, "T16.5 首次成功 1 个");
            t5_engine_close(e);
        }
        e = open_engine(&c);
        if (e != NULL) {
            ok_eq_ll((long long)t5_engine_stats(e)->succeeded, 0, "T16.5 重启后 succeeded = 0");
            ok_eq_ll(t5_engine_scan(e), 0, "T16.5 重启后不新建 Job");
            ok_eq_ll(t5_engine_process_ready(e, 0), 0, "T16.5 重启后不重复执行");
            t5_engine_close(e);
        }
    }
}

int main(void)
{
    printf("t5_host_test -- T5 ASR pipeline (mock) host tests\n");

    prep_root();
    printf("tmp root: %s\n", g_root);

    test_basic();
    test_non_wav_ignored();
    test_incomplete();
    test_bad_format();
    test_no_dup();
    test_restart_no_repeat();
    test_recover_processing();
    test_failure_retry();
    test_bad_isolated();
    test_distinct_run_ids();
    test_bounded();
    test_store_format();

    test_wav_robustness();
    test_jsonl_strict();
    test_corrupt_does_not_override();
    test_replay_failure();

    printf("\n=== %d passed, %d failed ===\n", g_pass, g_fail);
    printf("(fixtures kept under %s)\n", g_root);
    return g_fail == 0 ? 0 : 1;
}
