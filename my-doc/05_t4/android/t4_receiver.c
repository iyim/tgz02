/*
 * t4_receiver.c -- T4-01 独立 PCM 接收进程（TG-Z02 / ARMv7 / Android 8.1）
 *
 *   T3 bridge (smartapp:core) --AF_UNIX SOCK_DGRAM/abstract:tgz2_pcm--> 本进程
 *      recv 一帧 -> TGZ2 v2 校验（长度/magic/ver/hdr/参数/CRC）-> 有界队列
 *      -> 处理线程：lane0 已由发送端取好（1280 B 单声道）-> 能量 VAD -> WAV 片段
 *
 * 设计要点：
 *   - 接收与 VAD/写盘解耦：单生产者（recv 线程）→ 有界队列 → 单消费者（处理线程），
 *     只用一把互斥锁 + 一个条件变量，不引入线程池；
 *   - 队列满时丢弃**新帧**并计数（queue_drop），绝不覆盖未处理帧，也绝不反压发送端；
 *   - 只用"帧到达顺序"驱动 VAD，不用发送端 ts_us 做定时器（ts_us 仅记录/日志）；
 *   - 接收端从不向发送端发送任何数据（无 ACK），不阻塞、不反向控制 T3；
 *   - SIGINT/SIGTERM：置停止标志 -> 关队列 -> 有片段则以 shutdown 原因收尾并关闭 WAV。
 *
 * 输出（每行一个纯 JSON 对象，见 README）：
 *   {"type":"CONFIG", ...}  启动配置（含所有 VAD 参数的实际生效值）
 *   {"type":"READY", ...}   socket/缓冲区就绪
 *   {"type":"SEGMENT", ...} 每个片段一条
 *   {"type":"SUMMARY", ...} 退出统计
 */
#define _POSIX_C_SOURCE 200809L

#include <errno.h>
#include <pthread.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/select.h>
#include <sys/socket.h>
#include <sys/stat.h>
#include <sys/time.h>
#include <sys/types.h>
#include <sys/un.h>
#include <time.h>
#include <unistd.h>

#include "rx_core.h"
#include "vad_energy.h"

/* ============ 全局停止标志 ============ */
static volatile sig_atomic_t g_stop = 0;
static void on_signal(int sig) { (void)sig; g_stop = 1; }

/* ============ 片段写入状态（只由处理线程访问） ============ */
typedef struct {
    t4_wav      wav;
    int         active;
    long        id;
    long        frames;
    int         frame_ms;
    double      rms_sum;
    double      rms_max;
    uint32_t    start_seq;
    uint32_t    last_seq;
    uint64_t    start_ts;
    uint64_t    last_ts;
    uint64_t    segments;         /* 成功保存的片段数 */
    uint64_t    write_errors;
    const char *out_dir;
} seg_state;

/* ============ 运行上下文 ============ */
typedef struct {
    int             fd;
    int             rcvbuf_req;
    int             rcvbuf_eff;
    pthread_mutex_t mu;
    pthread_cond_t  cv;
    rx_stats        stats;        /* 由 mu 保护 */
    rx_queue        q;            /* 由 mu 保护 */
    int             rx_done;      /* 接收线程已彻底结束（由 mu 保护；T4-03 P1） */
} t4_ctx;

/* 全局对象：进程级单实例，放在 BSS（rx_queue 的槽位是堆分配，不在这里） */
static t4_ctx    g_ctx;
static vad_t     g_vad;
static seg_state g_seg;
static uint64_t  g_processed;              /* 实际送入 VAD 的帧数（处理线程写，main join 后读） */
static uint32_t  g_run_id;                 /* 本次进程运行的唯一标识（进 WAV 文件名） */

/* 第一轮基线参数：任务书给的值，所有项都可由 CLI 覆盖 */
void t4_default_vad_config(vad_config *cfg)
{
    if (cfg == NULL) return;
    cfg->sample_rate     = TGZ2_RATE;
    cfg->frame_samples   = TGZ2_SPF;
    cfg->min_start_rms   = 180.0;
    cfg->start_ratio     = 3.0;
    cfg->end_ratio       = 0.6;
    cfg->calibration_ms  = 1000;
    cfg->start_frames    = 2;
    cfg->hangover_ms     = 600;
    cfg->pre_roll_ms     = 200;
    cfg->max_segment_ms  = 15000;
    cfg->noise_alpha     = 0.05;
}

/* run_id：PID + 实时时钟纳秒混合，保证不同进程运行不会撞车（同名也不会覆盖旧文件） */
static uint32_t make_run_id(void)
{
    struct timespec ts;
    uint32_t pid = (uint32_t)getpid();
    uint32_t sec = 0, ns = 0;

    if (clock_gettime(CLOCK_REALTIME, &ts) == 0) {
        sec = (uint32_t)ts.tv_sec;
        ns = (uint32_t)ts.tv_nsec;
    }
    return (uint32_t)((pid * 2654435761u) ^ (sec << 8) ^ ns ^ 0xA5A5u);
}

static void now_mono(struct timespec *ts)
{
    if (clock_gettime(CLOCK_MONOTONIC, ts) != 0) {
        ts->tv_sec = 0;
        ts->tv_nsec = 0;
    }
}

static double ts_diff_s(const struct timespec *a, const struct timespec *b)
{
    return (double)(a->tv_sec - b->tv_sec) + (double)(a->tv_nsec - b->tv_nsec) / 1e9;
}

/* ============ 片段 sink ============ */
static void seg_on_open(void *ud, long segment_id, uint32_t start_seq, uint64_t start_ts)
{
    seg_state *s = (seg_state *)ud;
    s->id = segment_id;
    s->frames = 0;
    s->rms_sum = 0.0;
    s->rms_max = 0.0;
    s->start_seq = start_seq;
    s->last_seq = start_seq;
    s->start_ts = start_ts;
    s->last_ts = start_ts;
    s->active = 1;
    if (t4_wav_open(&s->wav, s->out_dir, g_run_id, segment_id, start_seq, TGZ2_RATE) != 0) {
        s->write_errors++;
        s->active = 0;                      /* 打开失败：本片段不写盘，但继续接收/检测 */
        fprintf(stderr, "[!] segment %ld: wav open failed in %s (errno=%d)\n",
                segment_id, s->out_dir, errno);
        fflush(stderr);
    }
}

static void seg_on_frame(void *ud, const int16_t *samples, int n,
                         uint32_t seq, uint64_t ts_us, double rms)
{
    seg_state *s = (seg_state *)ud;
    if (!s->active) return;
    if (t4_wav_write(&s->wav, samples, n) != 0) {
        s->write_errors++;
        t4_wav_close(&s->wav);
        s->active = 0;
        fprintf(stderr, "[!] segment %ld: wav write failed (errno=%d); segment aborted\n",
                s->id, errno);
        fflush(stderr);
        return;
    }
    s->frames++;
    s->rms_sum += rms;
    if (rms > s->rms_max) s->rms_max = rms;
    s->last_seq = seq;
    s->last_ts = ts_us;
}

static void seg_on_close(void *ud, long segment_id, vad_end_reason reason, long frame_count,
                         double rms_avg, double rms_max, uint32_t start_seq, uint32_t end_seq,
                         uint64_t start_ts, uint64_t end_ts)
{
    seg_state *s = (seg_state *)ud;
    int saved = 0;

    if (s->active) {
        if (t4_wav_close(&s->wav) == 0) {
            saved = 1;
            s->segments++;
        } else {
            s->write_errors++;
            fprintf(stderr, "[!] segment %ld: wav close failed (errno=%d)\n", s->id, errno);
            fflush(stderr);
        }
        s->active = 0;
    }

    printf("{\"type\":\"SEGMENT\",\"segment_id\":%ld,\"start_seq\":%u,\"end_seq\":%u,"
           "\"frame_count\":%ld,\"duration_ms\":%ld,\"rms_avg\":%.1f,\"rms_max\":%.1f,"
           "\"end_reason\":\"%s\",\"saved\":%s,\"written_frames\":%ld,\"file\":",
           segment_id, (unsigned)start_seq, (unsigned)end_seq,
           frame_count, (long)frame_count * (long)s->frame_ms,
           rms_avg, rms_max, vad_end_reason_name(reason),
           saved ? "true" : "false", s->frames);
    json_write_string_or_null(stdout, saved ? s->wav.path : NULL);
    printf(",\"vad_segment_id\":%ld,\"start_ts_us\":%llu,\"end_ts_us\":%llu}\n",
           segment_id, (unsigned long long)start_ts, (unsigned long long)end_ts);
    fflush(stdout);
}

/* ============ 线程：接收 ============ */
static void *rx_thread(void *arg)
{
    t4_ctx *ctx = (t4_ctx *)arg;
    uint8_t buf[8192];

    while (!g_stop) {
        fd_set rs;
        struct timeval tv;
        int sel, n;
        tgz2_hdr h;
        rx_result r;

        FD_ZERO(&rs);
        FD_SET(ctx->fd, &rs);
        tv.tv_sec = 0;
        tv.tv_usec = 100000;                 /* 100 ms：只为及时看到停止标志 */
        sel = select(ctx->fd + 1, &rs, NULL, NULL, &tv);
        if (sel <= 0) continue;

        n = (int)recv(ctx->fd, buf, sizeof(buf), 0);
        if (n <= 0) continue;                /* 不阻塞、不重试、不回写发送端 */

        pthread_mutex_lock(&ctx->mu);
        r = rx_classify(buf, n, &ctx->stats, &h);
        if (r == RX_OK) {
            rx_frame f;
            memset(&f, 0, sizeof(f));
            rx_payload_to_samples(buf + TGZ2_HDR_LEN, f.samples, TGZ2_SPF);
            f.seq = h.seq;
            f.epoch = h.epoch;
            f.ts_us = h.ts_us;
            if (rx_queue_push(&ctx->q, &f)) {
                pthread_cond_signal(&ctx->cv);
            }
        }
        pthread_mutex_unlock(&ctx->mu);
    }

    /*
     * T4-03 P1：接收线程在这里**彻底停止**接收与入队，然后在锁内标记 rx_done 并广播。
     * 处理线程必须看到 rx_done 才能退出，因此"最后一次 recv 成功后入队的那一帧"
     * 一定会被处理线程看到（竞态窗口被关闭）。
     */
    pthread_mutex_lock(&ctx->mu);
    ctx->rx_done = 1;
    pthread_cond_broadcast(&ctx->cv);
    pthread_mutex_unlock(&ctx->mu);
    return NULL;
}

/* ============ 线程：VAD 处理 ============ */
static void *proc_thread(void *arg)
{
    t4_ctx *ctx = (t4_ctx *)arg;
    vad_sink sink;

    sink.ud = &g_seg;
    sink.on_open = seg_on_open;
    sink.on_frame = seg_on_frame;
    sink.on_close = seg_on_close;

    /*
     * 退出语义（T4-03 P1 收紧）：
     *   - 收到停止标志后不再等待新数据，但必须把已入队的帧全部处理完；
     *   - 还必须等接收线程彻底结束（rx_done），否则接收线程可能"已经通过 !g_stop 检查、
     *     正在 select/recv"，随后又入队一帧，导致 join 之后队列非空；
     *   - 因此唯一退出条件是：g_stop && ctx->rx_done && 队列为空。
     * 绝不在停止时清空队列或丢弃剩余帧。
     */
    for (;;) {
        rx_frame f;
        int got = 0;

        pthread_mutex_lock(&ctx->mu);
        while (ctx->q.count == 0 && !(g_stop && ctx->rx_done)) {
            struct timespec dl;
            clock_gettime(CLOCK_REALTIME, &dl);
            dl.tv_nsec += 50L * 1000000L;    /* 50 ms 超时：兜底，不改变退出条件 */
            if (dl.tv_nsec >= 1000000000L) { dl.tv_sec++; dl.tv_nsec -= 1000000000L; }
            pthread_cond_timedwait(&ctx->cv, &ctx->mu, &dl);
        }
        if (ctx->q.count > 0) {
            got = rx_queue_pop(&ctx->q, &f);
        } else if (g_stop && ctx->rx_done) {
            pthread_mutex_unlock(&ctx->mu);
            break;                            /* 接收线程已结束且队列已空：可以退出 */
        }
        pthread_mutex_unlock(&ctx->mu);

        if (got) {
            vad_feed(&g_vad, f.samples, TGZ2_SPF, f.seq, f.ts_us, &sink);
            /* 计数也在 mu 下更新：测试（以及任何观察者）用同一把锁读取，不存在数据竞争 */
            pthread_mutex_lock(&ctx->mu);
            g_processed++;
            pthread_mutex_unlock(&ctx->mu);
        }
    }

    /* 只有队列排空之后才收尾：正在说话的片段以 shutdown 原因安全关闭 */
    vad_flush(&g_vad, &sink);
    return NULL;
}

/* ============ 参数 ============ */
static void usage(const char *argv0)
{
    fprintf(stderr,
        "usage: %s [--abstract NAME] [--out DIR] [--secs N] [--rcvbuf BYTES] [--queue-cap N]\n"
        "          [--min-rms F] [--start-ratio F] [--end-ratio F] [--calibration-ms N]\n"
        "          [--start-frames N] [--hangover-ms N] [--pre-roll-ms N] [--max-segment-ms N]\n"
        "          [--noise-alpha F]\n", argv0);
}

static int parse_int(const char *s, long lo, long hi, long *out)
{
    char *end = NULL;
    long v;
    if (s == NULL || *s == '\0') return -1;
    errno = 0;
    v = strtol(s, &end, 10);
    if (errno != 0 || end == s || *end != '\0') return -1;
    if (v < lo || v > hi) return -1;
    *out = v;
    return 0;
}

static int parse_double(const char *s, double lo, double hi, double *out)
{
    char *end = NULL;
    double v;
    if (s == NULL || *s == '\0') return -1;
    errno = 0;
    v = strtod(s, &end);
    if (errno != 0 || end == s || *end != '\0') return -1;
    if (!(v >= lo && v <= hi)) return -1;
    *out = v;
    return 0;
}

/* ============ main ============ */
int main(int argc, char **argv)
{
    const char *abstract_name = "tgz2_pcm";
    const char *out_dir = "/data/local/tmp/t4_segments";
    double secs = 0.0;
    long v;
    int i;
    struct sockaddr_un addr;
    socklen_t alen;
    pthread_t th_rx, th_proc;
    struct timespec t0, t1;
    vad_config cfg;
    char err[160];

    /* 默认参数：任务书给的第一轮基线 */
    t4_default_vad_config(&cfg);
    g_run_id = make_run_id();

    g_ctx.rcvbuf_req = 262144;
    if (rx_queue_init(&g_ctx.q, T4_QUEUE_CAP_DEFAULT) != 0) {
        fprintf(stderr, "[!] cannot allocate receive queue\n");
        return 1;
    }
    rx_stats_init(&g_ctx.stats);

    for (i = 1; i < argc; i++) {
        const char *a = argv[i];
        const char *val = (i + 1 < argc) ? argv[i + 1] : NULL;

        if (!strcmp(a, "--help") || !strcmp(a, "-h")) { usage(argv[0]); return 0; }
        if (val == NULL) { fprintf(stderr, "[!] %s needs a value\n", a); return 2; }

        if (!strcmp(a, "--abstract")) { abstract_name = val; }
        else if (!strcmp(a, "--out")) { out_dir = val; }
        else if (!strcmp(a, "--secs")) {
            if (parse_double(val, 0.0, 86400.0, &secs) != 0) {
                fprintf(stderr, "[!] invalid --secs '%s' (expect 0..86400)\n", val); return 2;
            }
            i++;
            continue;
        }
        else if (!strcmp(a, "--rcvbuf")) {
            if (parse_int(val, 0, 16 * 1024 * 1024, &v) != 0) {
                fprintf(stderr, "[!] invalid --rcvbuf '%s'\n", val); return 2;
            }
            g_ctx.rcvbuf_req = (int)v;
        }
        else if (!strcmp(a, "--queue-cap")) {
            if (parse_int(val, 8, T4_QUEUE_CAP_MAX, &v) != 0) {
                fprintf(stderr, "[!] invalid --queue-cap '%s' (8..%d)\n", val, T4_QUEUE_CAP_MAX);
                return 2;
            }
            rx_queue_free(&g_ctx.q);
            if (rx_queue_init(&g_ctx.q, (int)v) != 0) {
                fprintf(stderr, "[!] cannot allocate receive queue (cap=%ld)\n", v);
                return 1;
            }
        }
        else if (!strcmp(a, "--min-rms")) {
            if (parse_double(val, 0.001, 32767.0, &cfg.min_start_rms) != 0) {
                fprintf(stderr, "[!] invalid --min-rms '%s'\n", val); return 2;
            }
        }
        else if (!strcmp(a, "--start-ratio")) {
            if (parse_double(val, 0.001, 100.0, &cfg.start_ratio) != 0) {
                fprintf(stderr, "[!] invalid --start-ratio '%s'\n", val); return 2;
            }
        }
        else if (!strcmp(a, "--end-ratio")) {
            if (parse_double(val, 0.001, 0.999, &cfg.end_ratio) != 0) {
                fprintf(stderr, "[!] invalid --end-ratio '%s' (0<r<1)\n", val); return 2;
            }
        }
        else if (!strcmp(a, "--calibration-ms")) {
            if (parse_int(val, 0, 60000, &v) != 0) {
                fprintf(stderr, "[!] invalid --calibration-ms '%s'\n", val); return 2;
            }
            cfg.calibration_ms = (int)v;
        }
        else if (!strcmp(a, "--start-frames")) {
            if (parse_int(val, 1, 100, &v) != 0) {
                fprintf(stderr, "[!] invalid --start-frames '%s'\n", val); return 2;
            }
            cfg.start_frames = (int)v;
        }
        else if (!strcmp(a, "--hangover-ms")) {
            if (parse_int(val, 0, 60000, &v) != 0) {
                fprintf(stderr, "[!] invalid --hangover-ms '%s'\n", val); return 2;
            }
            cfg.hangover_ms = (int)v;
        }
        else if (!strcmp(a, "--pre-roll-ms")) {
            if (parse_int(val, 0, 1600, &v) != 0) {
                fprintf(stderr, "[!] invalid --pre-roll-ms '%s' (0..1600)\n", val); return 2;
            }
            cfg.pre_roll_ms = (int)v;
        }
        else if (!strcmp(a, "--max-segment-ms")) {
            if (parse_int(val, 80, 600000, &v) != 0) {
                fprintf(stderr, "[!] invalid --max-segment-ms '%s' (>=80)\n", val); return 2;
            }
            cfg.max_segment_ms = (int)v;
        }
        else if (!strcmp(a, "--noise-alpha")) {
            if (parse_double(val, 0.001, 1.0, &cfg.noise_alpha) != 0) {
                fprintf(stderr, "[!] invalid --noise-alpha '%s' (0<a<=1)\n", val); return 2;
            }
        }
        else {
            fprintf(stderr, "[!] unknown option '%s'\n", a);
            usage(argv[0]);
            return 2;
        }
        i++;
    }

    if (vad_config_validate(&cfg, err, sizeof(err)) != 0) {
        fprintf(stderr, "[!] invalid VAD config: %s\n", err);
        return 2;
    }
    if (abstract_name == NULL || *abstract_name == '\0') {
        fprintf(stderr, "[!] --abstract must not be empty\n");
        return 2;
    }
    if (strlen(abstract_name) + 1 > sizeof(addr.sun_path)) {
        fprintf(stderr, "[!] --abstract too long\n");
        return 2;
    }
    if (vad_init(&g_vad, &cfg) != 0) {
        fprintf(stderr, "[!] vad_init failed\n");
        return 2;
    }

    memset(&g_seg, 0, sizeof(g_seg));
    g_seg.frame_ms = g_vad.frame_ms;
    g_seg.out_dir = out_dir;

    if (mkdir(out_dir, 0775) != 0 && errno != EEXIST) {
        fprintf(stderr, "[!] cannot create out dir '%s' (errno=%d)\n", out_dir, errno);
        return 2;
    }

    /* ---- socket ---- */
    g_ctx.fd = socket(AF_UNIX, SOCK_DGRAM, 0);
    if (g_ctx.fd < 0) { perror("socket"); return 1; }

    memset(&addr, 0, sizeof(addr));
    addr.sun_family = AF_UNIX;
    addr.sun_path[0] = '\0';                       /* 抽象命名空间 */
    memcpy(addr.sun_path + 1, abstract_name, strlen(abstract_name));
    alen = (socklen_t)(2 + 1 + strlen(abstract_name));

    if (bind(g_ctx.fd, (struct sockaddr *)&addr, alen) != 0) {
        fprintf(stderr, "[!] bind abstract:%s failed (errno=%d %s)\n",
                abstract_name, errno, strerror(errno));
        close(g_ctx.fd);
        return 2;
    }
    if (g_ctx.rcvbuf_req > 0) {
        int req = g_ctx.rcvbuf_req;
        if (setsockopt(g_ctx.fd, SOL_SOCKET, SO_RCVBUF, &req, sizeof(req)) != 0) {
            perror("setsockopt SO_RCVBUF");
        }
    }
    {
        int got = 0;
        socklen_t gl = sizeof(got);
        if (getsockopt(g_ctx.fd, SOL_SOCKET, SO_RCVBUF, &got, &gl) != 0) got = 0;
        g_ctx.rcvbuf_eff = got;
    }

    signal(SIGINT, on_signal);
    signal(SIGTERM, on_signal);

    /* ---- 启动配置（所有 VAD 参数的实际生效值） ---- */
    printf("{\"type\":\"CONFIG\",\"abstract\":");
    json_write_string(stdout, abstract_name);
    printf(",\"out\":");
    json_write_string(stdout, out_dir);
    printf(",\"secs\":%.3f,\"run_id\":%u,\"frame_ms\":%d,\"frame_samples\":%d,\"sample_rate\":%d,"
           "\"channels\":1,\"bits\":16,\"min_rms\":%.3f,\"start_ratio\":%.3f,"
           "\"end_ratio\":%.3f,\"calibration_ms\":%d,\"start_frames\":%d,"
           "\"hangover_ms\":%d,\"pre_roll_ms\":%d,\"max_segment_ms\":%d,"
           "\"noise_alpha\":%.3f,\"queue_cap\":%d,\"rcvbuf_req\":%d,"
           "\"vad_calib_frames\":%d,\"vad_hangover_frames\":%d,\"vad_pre_roll_frames\":%d,"
           "\"vad_max_segment_frames\":%d}\n",
           secs, g_run_id, g_vad.frame_ms, cfg.frame_samples, cfg.sample_rate,
           cfg.min_start_rms, cfg.start_ratio, cfg.end_ratio, cfg.calibration_ms,
           cfg.start_frames, cfg.hangover_ms, cfg.pre_roll_ms, cfg.max_segment_ms,
           cfg.noise_alpha, g_ctx.q.cap, g_ctx.rcvbuf_req,
           g_vad.calib_frames_needed, g_vad.hangover_frames_needed,
           g_vad.pre_roll_frames, g_vad.max_segment_frames);
    fflush(stdout);

    printf("{\"type\":\"READY\",\"role\":\"receiver\",\"abstract\":");
    json_write_string(stdout, abstract_name);
    printf(",\"out\":");
    json_write_string(stdout, out_dir);
    printf(",\"rcvbuf_req\":%d,\"rcvbuf_eff\":%d,\"queue_cap\":%d}\n",
           g_ctx.rcvbuf_req, g_ctx.rcvbuf_eff, g_ctx.q.cap);
    fflush(stdout);

    pthread_mutex_init(&g_ctx.mu, NULL);
    pthread_cond_init(&g_ctx.cv, NULL);
    now_mono(&t0);

    if (pthread_create(&th_rx, NULL, rx_thread, &g_ctx) != 0) {
        fprintf(stderr, "[!] cannot create rx thread\n");
        pthread_mutex_destroy(&g_ctx.mu);
        pthread_cond_destroy(&g_ctx.cv);
        close(g_ctx.fd);
        return 1;
    }
    if (pthread_create(&th_proc, NULL, proc_thread, &g_ctx) != 0) {
        fprintf(stderr, "[!] cannot create proc thread\n");
        g_stop = 1;
        pthread_join(th_rx, NULL);
        pthread_mutex_destroy(&g_ctx.mu);
        pthread_cond_destroy(&g_ctx.cv);
        close(g_ctx.fd);
        return 1;
    }

    /* 主线程只负责计时与停止标志 */
    while (!g_stop) {
        struct timespec nap;
        if (secs > 0.0) {
            struct timespec tn;
            now_mono(&tn);
            if (ts_diff_s(&tn, &t0) >= secs) break;
        }
        nap.tv_sec = 0;
        nap.tv_nsec = 20L * 1000000L;
        nanosleep(&nap, NULL);
    }

    g_stop = 1;
    pthread_mutex_lock(&g_ctx.mu);
    pthread_cond_broadcast(&g_ctx.cv);
    pthread_mutex_unlock(&g_ctx.mu);
    pthread_join(th_rx, NULL);
    pthread_join(th_proc, NULL);

    now_mono(&t1);
    pthread_mutex_lock(&g_ctx.mu);
    rx_write_summary(stdout, &g_ctx.stats, &g_ctx.q, g_processed,
                     (uint64_t)g_vad.speech_frames, g_seg.segments, g_seg.write_errors,
                     ts_diff_s(&t1, &t0), vad_noise_floor(&g_vad),
                     g_ctx.rcvbuf_req, g_ctx.rcvbuf_eff);
    fflush(stdout);
    pthread_mutex_unlock(&g_ctx.mu);

    pthread_mutex_destroy(&g_ctx.mu);
    pthread_cond_destroy(&g_ctx.cv);
    rx_queue_free(&g_ctx.q);
    close(g_ctx.fd);
    return 0;
}
