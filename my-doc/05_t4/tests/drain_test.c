/*
 * drain_test.c -- T4-02 P1：退出时必须排空队列（pthread，POSIX/Android 专用）
 *
 * 关键点：**不是另写一份模拟实现**，而是 `#define main` 改名后直接 #include
 * 生产文件 ../android/t4_receiver.c，调用的就是设备上跑的 proc_thread()、
 * 同一把 mutex/cond、同一个 VAD 与 WAV sink。
 *
 * 覆盖：
 *   A 停止标志先置位、队列里已有 85 帧 -> 必须全部处理完（processed==85、队列空、
 *     最后才 vad_flush -> 片段以 shutdown 关闭、WAV 落盘）
 *   B 队列为空 + 停止标志 -> 立即退出，processed==0
 *   C 真线程：先入队 40 帧、g_stop=0 起线程（走 cond_timedwait 等待路径），
 *     200 ms 后置停止并 broadcast -> join 后 processed==40、队列空
 *
 * Windows 没有 pthread，本测试只能在 Linux/WSL 或 Android 上跑。
 * 本轮实际执行方式：NDK 交叉编译后在 TG-Z02 真机上跑（见报告）。
 *
 * build (Android/NDK):
 *   armv7a-linux-androideabi26-clang -O2 -Wall -Wextra -static \
 *       -o out/drain_test drain_test.c ../android/rx_core.c ../android/vad_energy.c -lm
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

static const char *first_wav(const char *dir, char *out, size_t outlen)
{
    DIR *d = opendir(dir);
    struct dirent *e;
    out[0] = '\0';
    if (d == NULL) return NULL;
    while ((e = readdir(d)) != NULL) {
        size_t len = strlen(e->d_name);
        if (len > 4 && !strcmp(e->d_name + len - 4, ".wav")) {
            snprintf(out, outlen, "%s", e->d_name);
            closedir(d);
            return out;
        }
    }
    closedir(d);
    return NULL;
}

static void reset_state(void)
{
    if (g_ctx.q.slots != NULL) rx_queue_free(&g_ctx.q);
    rx_queue_init(&g_ctx.q, 128);
    rx_stats_init(&g_ctx.stats);
    g_processed = 0;
    g_stop = 0;
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

int main(void)
{
    const char *dir = "/data/local/tmp/t4/drain_out";
    vad_config cfg;
    char name[256];
    int i;

    printf("drain_test  (proc_thread from t4_receiver.c, frame=%d samples)\n", TGZ2_SPF);
    mkdir(dir, 0775);

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

    g_stop = 1;                        /* 进循环前就处于"已收到停止信号"状态 */
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
    if (first_wav(dir, name, sizeof(name)) != NULL) {
        long sz = file_size(dir, name);
        /* 片段帧数：pre-roll 5 + 触发后 58 = 63 帧 */
        expect(g_seg.frames == 63, "A 片段含 63 帧（5 帧 pre-roll + 58 帧）");
        expect(sz == 44 + (long)g_seg.frames * TGZ2_PAYLOAD,
               "A WAV 大小 = 44 + 帧数*1280");
    } else {
        expect(0, "A 找到 WAV 文件");
    }

    /* ---------- B：空队列 + 停止 ---------- */
    printf("\n[B] 队列为空 + g_stop=1：立即退出\n");
    vad_init(&g_vad, &cfg);
    memset(&g_seg, 0, sizeof(g_seg));
    g_seg.frame_ms = g_vad.frame_ms;
    g_seg.out_dir = dir;
    reset_state();
    g_stop = 1;
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
            struct timespec nap;
            nap.tv_sec = 0;
            nap.tv_nsec = 200L * 1000000L;      /* 让线程先把队列吃掉并进入等待 */
            nanosleep(&nap, NULL);
            g_stop = 1;                          /* 与生产 main 相同的收尾方式 */
            pthread_mutex_lock(&g_ctx.mu);
            pthread_cond_broadcast(&g_ctx.cv);
            pthread_mutex_unlock(&g_ctx.mu);
            pthread_join(th, NULL);
        }
        expect(g_processed == 40, "C processed == 40");
        expect(rx_queue_count(&g_ctx.q) == 0, "C 队列深度 == 0");
        expect(g_vad.frames_seen == 40, "C VAD 收到 40 帧");
    }

    printf("\n=== %d passed, %d failed ===\n", g_pass, g_fail);
    return g_fail ? 1 : 0;
}
