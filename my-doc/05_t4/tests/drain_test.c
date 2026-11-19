/*
 * drain_test.c -- T4 退出路径的确定性测试（pthread，POSIX/Android 专用）
 *
 * 关键点：**不是另写一份模拟实现**，而是 `#define main` 改名后直接 #include
 * 生产文件 ../android/t4_receiver.c，调用的就是设备上跑的 proc_thread()、rx_queue、
 * 同一把 mutex/cond、同一个 VAD 与 WAV sink；WAV 部分直接调生产 rx_core.c 的 t4_wav_open()。
 *
 * 用例：
 *   A 停止标志先置位、队列已有 85 帧（rx_done 已置）-> 必须全部处理完、最后才 vad_flush
 *   B 空队列 + 停止 + rx_done -> 立即退出
 *   C 真线程：先入队 40 帧，运行中置停止并 broadcast -> join 后 processed==40
 *   D 【T4-03 P1】停止竞态：g_stop=1 但 rx_done=0 时处理线程**不得退出**，
 *     随后"在飞的最后一帧"入队，再置 rx_done 并广播 —— 该帧必须被处理，
 *     且 vad_flush 在最后一帧之后才发生（片段 shutdown，含 2 帧）
 *   E 【T4-03 P2】4 个线程同时用相同 run_id/片段号/起始序号创建 WAV：
 *     必须得到 4 个不同文件名、4 个完好 WAV（O_EXCL 原子独占）
 *
 * 统计口径：本测试直接构造 rx_frame 入队，**不经过 rx_classify**，
 * 因此不拿 accepted 做断言（accepted 恒为 0）；这里断言的是 processed/队列深度/VAD 状态。
 *
 * Windows 没有 pthread，本测试只能在 Linux/WSL 或 Android 上跑；
 * 本轮实际执行方式：NDK 交叉编译后推到 TG-Z02 真机运行（见报告）。
 *
 * build (Android/NDK):
 *   armv7a-linux-androideabi26-clang -O2 -Wall -Wextra -static \
 *       -o out/drain_test ../tests/drain_test.c ../android/rx_core.c ../android/vad_energy.c -lm
 */
#define main t4_receiver_main
#include "../android/t4_receiver.c"
#undef main

#include <dirent.h>
#include <sys/stat.h>

static int g_pass = 0, g_fail = 0;

static void expect(int cond, const char *name)
{
    if (cond) { g_pass++; printf("  ok   %s\n", name); }
    else { g_fail++; printf("  FAIL %s\n", name); }
}

static int count_wavs(const char *dir)
{
    DIR *d = opendir(dir);
    struct dirent *e;
    int n = 0;
    if (d == NULL) return -1;
    while ((e = readdir(d)) != NULL) {
        size_t len = strlen(e->d_name);
        if (len > 4 && !strcmp(e->d_name + len - 4, ".wav")) n++;
    }
    closedir(d);
    return n;
}

static long file_size(const char *dir, const char *name)
{
    char path[512];
    struct stat st;
    snprintf(path, sizeof(path), "%s/%s", dir, name);
    if (stat(path, &st) != 0) return -1;
    return (long)st.st_size;
}

static const char *find_wav(const char *dir, const char *needle, char *out, size_t outlen)
{
    DIR *d = opendir(dir);
    struct dirent *e;
    out[0] = '\0';
    if (d == NULL) return NULL;
    while ((e = readdir(d)) != NULL) {
        size_t len = strlen(e->d_name);
        if (len > 4 && !strcmp(e->d_name + len - 4, ".wav") &&
            (needle == NULL || strstr(e->d_name, needle) != NULL)) {
            snprintf(out, outlen, "%s", e->d_name);
            closedir(d);
            return out;
        }
    }
    closedir(d);
    return NULL;
}

/* 清掉本测试目录里上次运行留下的 WAV，保证重复运行结果可复现 */
static int clean_dir_wavs(const char *dir)
{
    DIR *d = opendir(dir);
    struct dirent *e;
    int removed = 0;
    char path[512];
    if (d == NULL) return 0;
    while ((e = readdir(d)) != NULL) {
        size_t len = strlen(e->d_name);
        if (len > 4 && !strcmp(e->d_name + len - 4, ".wav")) {
            snprintf(path, sizeof(path), "%s/%s", dir, e->d_name);
            if (unlink(path) == 0) removed++;
        }
    }
    closedir(d);
    return removed;
}

static void reset_state(void)
{
    if (g_ctx.q.slots != NULL) rx_queue_free(&g_ctx.q);
    rx_queue_init(&g_ctx.q, 128);
    rx_stats_init(&g_ctx.stats);
    g_processed = 0;
    g_stop = 0;
    g_ctx.rx_done = 0;
}

static void push_frame(uint32_t seq, int amp)
{
    rx_frame f;
    int i;
    memset(&f, 0, sizeof(f));
    for (i = 0; i < TGZ2_SPF; i++) {
        f.samples[i] = (i & 1) ? (int16_t)(-amp) : (int16_t)amp;
    }
    f.seq = seq;
    f.epoch = 0xABCD0001u;
    f.ts_us = 1000000ull + (uint64_t)seq * 40000ull;
    if (!rx_queue_push(&g_ctx.q, &f)) printf("  (warn) push failed seq=%u\n", seq);
}

static void *proc_trampoline(void *arg) { return proc_thread(arg); }

/* ---- 用例 E 用：多个线程同时用相同参数创建 WAV（验证 O_EXCL 原子独占） ---- */
static const char *const TEST_DIR = "/data/local/tmp/t4/drain_out";
static const uint32_t  TEST_RUN_ID = 0x11223344u;

static void *wav_thread(void *arg)
{
    char *out_path = (char *)arg;
    t4_wav w;
    int16_t block[TGZ2_SPF];
    int i;

    if (t4_wav_open(&w, TEST_DIR, TEST_RUN_ID, 7, 42u, TGZ2_RATE) != 0) return NULL;
    for (i = 0; i < TGZ2_SPF; i++) block[i] = (int16_t)(i % 1000);
    if (t4_wav_write(&w, block, TGZ2_SPF) != 0) {
        t4_wav_close(&w);
        return NULL;
    }
    if (t4_wav_close(&w) != 0) return NULL;
    snprintf(out_path, T4_SEG_PATH_MAX, "%s", w.path);
    return NULL;
}

static void nap_ms(long ms)
{
    struct timespec nap;
    nap.tv_sec = ms / 1000;
    nap.tv_nsec = (ms % 1000) * 1000000L;
    nanosleep(&nap, NULL);
}

static void stop_and_broadcast(void)
{
    g_stop = 1;
    pthread_mutex_lock(&g_ctx.mu);
    pthread_cond_broadcast(&g_ctx.cv);
    pthread_mutex_unlock(&g_ctx.mu);
}

int main(void)
{
    const char *dir = TEST_DIR;
    vad_config cfg;
    char name[256];
    int i;

    printf("drain_test  (proc_thread from t4_receiver.c, frame=%d samples)\n", TGZ2_SPF);
    mkdir(dir, 0775);
    {
        int stale = clean_dir_wavs(dir);
        printf("(cleanup) removed %d stale wav files from %s\n", stale, dir);
    }

    /* ---------- A：停止标志先置位，队列里已有 85 帧 ---------- */
    printf("\n[A] g_stop=1 且队列 85 帧：必须排空后再退出\n");
    t4_default_vad_config(&cfg);
    vad_init(&g_vad, &cfg);
    memset(&g_seg, 0, sizeof(g_seg));
    g_seg.frame_ms = g_vad.frame_ms;
    g_seg.out_dir = dir;
    g_run_id = 0xD3A17001u;
    reset_state();
    pthread_mutex_init(&g_ctx.mu, NULL);
    pthread_cond_init(&g_ctx.cv, NULL);

    for (i = 0; i < 25; i++) push_frame((uint32_t)(i + 1), 0);        /* 校准 1 s 静音 */
    for (i = 0; i < 60; i++) push_frame((uint32_t)(26 + i), 500);     /* 说 2.4 s */

    g_stop = 1;
    g_ctx.rx_done = 1;                 /* 接收线程已结束（本用例模拟它先退出） */
    proc_thread(&g_ctx);               /* 同步调用：返回时应当已排空并 flush */

    expect(g_processed == 85, "A processed == 85（停止后仍逐帧处理）");
    expect(rx_queue_count(&g_ctx.q) == 0, "A 队列深度 == 0");
    expect(g_vad.frames_seen == 85, "A VAD 实际收到 85 帧");
    expect(g_vad.segments_opened == 1, "A 只开了一个片段");
    expect(g_vad.segments_closed == 1, "A 收尾时关闭了该片段（vad_flush 生效）");
    expect(g_vad.state == VAD_STATE_IDLE, "A flush 后状态回到 IDLE");
    expect(g_seg.segments == 1, "A 片段 WAV 保存成功");
    expect(g_seg.write_errors == 0, "A 没有写盘错误");
    expect(count_wavs(dir) >= 1, "A 输出目录里有 WAV");
    if (find_wav(dir, "d3a17001", name, sizeof(name)) != NULL) {
        long sz = file_size(dir, name);
        expect(g_seg.frames == 63, "A 片段含 63 帧（5 帧 pre-roll + 58 帧）");
        expect(sz == 44 + (long)g_seg.frames * TGZ2_PAYLOAD,
               "A WAV 大小 = 44 + 帧数*1280");
        expect(strstr(name, "seg_d3a17001_0001_23.wav") != NULL,
               "A 文件名含 run_id/片段号/起始序号");
    } else {
        expect(0, "A 找到 WAV 文件");
    }

    /* ---------- B：空队列 + 停止 ---------- */
    printf("\n[B] 队列为空 + g_stop=1 + rx_done=1：立即退出\n");
    vad_init(&g_vad, &cfg);
    memset(&g_seg, 0, sizeof(g_seg));
    g_seg.frame_ms = g_vad.frame_ms;
    g_seg.out_dir = dir;
    reset_state();
    g_stop = 1;
    g_ctx.rx_done = 1;
    proc_thread(&g_ctx);
    expect(g_processed == 0, "B processed == 0");
    expect(g_vad.frames_seen == 0, "B VAD 没收到帧");
    expect(g_vad.segments_closed == 0, "B 没有片段需要收尾");

    /* ---------- C：真线程 + broadcast ---------- */
    printf("\n[C] 真线程：先入队 40 帧，运行中置停止并 broadcast\n");
    vad_init(&g_vad, &cfg);
    memset(&g_seg, 0, sizeof(g_seg));
    g_seg.frame_ms = g_vad.frame_ms;
    g_seg.out_dir = dir;
    reset_state();
    for (i = 0; i < 40; i++) push_frame((uint32_t)(i + 1), 300);

    {
        pthread_t th;
        int rc = pthread_create(&th, NULL, proc_trampoline, &g_ctx);
        expect(rc == 0, "C pthread_create 成功");
        if (rc == 0) {
            nap_ms(200);                   /* 让线程先把队列吃掉并进入等待 */
            g_ctx.rx_done = 1;             /* 接收线程已结束（本用例无接收线程） */
            stop_and_broadcast();
            pthread_join(th, NULL);
        }
        expect(g_processed == 40, "C processed == 40");
        expect(rx_queue_count(&g_ctx.q) == 0, "C 队列深度 == 0");
        expect(g_vad.frames_seen == 40, "C VAD 收到 40 帧");
    }

    /* ---------- D：停止竞态（T4-03 P1） ---------- */
    printf("\n[D] 停止竞态：g_stop=1 但 rx_done=0 时不得退出，最后一帧仍要处理\n");
    {
        pthread_t th;
        vad_config dcfg = cfg;
        int rc, waited = 0;

        /* 让第一帧就能开片段：不要校准窗口、pre-roll=0、start_frames=1 */
        dcfg.calibration_ms = 0;
        dcfg.start_frames = 1;
        dcfg.pre_roll_ms = 0;
        dcfg.hangover_ms = 60000;          /* 静音不结束，靠 shutdown 收尾 */
        vad_init(&g_vad, &dcfg);
        memset(&g_seg, 0, sizeof(g_seg));
        g_seg.frame_ms = g_vad.frame_ms;
        g_seg.out_dir = dir;
        reset_state();

        rc = pthread_create(&th, NULL, proc_trampoline, &g_ctx);
        expect(rc == 0, "D pthread_create 成功");

        if (rc == 0) {
            /* 1) 先送一帧，等它被处理 —— 以此确认线程在跑，且随后进入等待 */
            push_frame(9001, 500);
            pthread_mutex_lock(&g_ctx.mu);
            pthread_cond_signal(&g_ctx.cv);
            pthread_mutex_unlock(&g_ctx.mu);
            for (i = 0; i < 200 && g_processed < 1; i++) nap_ms(10);
            waited = (g_processed == 1);
            expect(waited, "D 第一帧已处理（处理线程在等待下一帧）");

            /* 2) 停止信号先到，但接收线程尚未结束（rx_done=0） */
            stop_and_broadcast();
            nap_ms(200);                    /* 给"错误实现"足够时间提前退出 */

            /* 3) 模拟接收线程"已经在 recv 里、停止后才拿到"的最后一帧 */
            push_frame(9002, 500);
            pthread_mutex_lock(&g_ctx.mu);
            pthread_cond_signal(&g_ctx.cv);
            pthread_mutex_unlock(&g_ctx.mu);
            nap_ms(100);

            /* 4) 接收线程真正结束 */
            pthread_mutex_lock(&g_ctx.mu);
            g_ctx.rx_done = 1;
            pthread_cond_broadcast(&g_ctx.cv);
            pthread_mutex_unlock(&g_ctx.mu);

            pthread_join(th, NULL);

            expect(g_processed == 2,
                   "D processed == 2（g_stop=1、rx_done=0 期间没有提前退出）");
            expect(rx_queue_count(&g_ctx.q) == 0, "D 队列深度 == 0");
            expect(g_ctx.rx_done == 1, "D rx_done == 1");
            expect(g_vad.frames_seen == 2, "D VAD 收到 2 帧");
            expect(g_vad.segments_closed == 1, "D 片段在退出时收尾");
            expect(g_seg.frames == 2, "D 片段含 2 帧（flush 在最后一帧之后）");
            expect(g_seg.write_errors == 0, "D 写盘无错误");
        }
    }

    /* ---------- E：并发原子创建 WAV（T4-03 P2） ---------- */
    printf("\n[E] 4 线程同时创建同名 WAV：必须全部独占成功（O_EXCL）\n");
    {
        enum { NTH = 4 };
        pthread_t th[NTH];
        char paths[NTH][T4_SEG_PATH_MAX];
        int t, created = 0, distinct = 1, okhdr = 0;

        memset(paths, 0, sizeof(paths));
        for (t = 0; t < NTH; t++) {
            pthread_create(&th[t], NULL, wav_thread, &paths[t]);
        }
        for (t = 0; t < NTH; t++) pthread_join(th[t], NULL);

        for (t = 0; t < NTH; t++) {
            if (paths[t][0] != '\0') created++;
        }
        expect(created == NTH, "E 4 个线程都拿到了文件");
        for (t = 0; t < NTH; t++) {
            int u;
            for (u = t + 1; u < NTH; u++) {
                if (strcmp(paths[t], paths[u]) == 0) distinct = 0;
            }
        }
        expect(distinct, "E 4 个文件名互不相同");
        for (t = 0; t < NTH; t++) {
            struct stat st;
            if (stat(paths[t], &st) == 0 && st.st_size == 44 + TGZ2_PAYLOAD) okhdr++;
        }
        expect(okhdr == NTH, "E 4 个文件都是 44 + 1280 字节（未被截断）");
    }

    printf("\n=== %d passed, %d failed ===\n", g_pass, g_fail);
    return g_fail ? 1 : 0;
}
