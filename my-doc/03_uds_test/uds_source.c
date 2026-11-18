/*
 * uds_source.c -- synthetic PCM sender (PC-side prototype)
 *
 * Structure is deliberately 1:1 with what the device will have to do:
 *
 *     [producer]  40 ms absolute-deadline tick -> build 1320 B frame
 *                 -> non-blocking push into ring buffer
 *                 ^ stands in for the Frida/native hook inside the audio thread
 *                   (no sleep, no IPC, no allocation allowed here)
 *     [ring]      lock-free SPSC, capacity = --ring (default 64 = 2.56 s), full => drop
 *     [consumer]  dedicated thread -> non-blocking send(); EWOULDBLOCK => drop + count
 *
 * So the headline number is producer tick lateness (tick_late_max_us): as long
 * as it stays in the tens of microseconds, the bypass cannot slow the audio thread.
 *
 * build (Windows): gcc -O2 -o uds_source.exe uds_source.c -lws2_32 -lwinmm
 * build (Linux)  : gcc -O2 -o uds_source uds_source.c -lpthread
 */
#include "tgz2_frame.h"
#include <signal.h>

#ifdef _WIN32
#  include <mmsystem.h>
#  define TGZ2_THREAD HANDLE
   static DWORD WINAPI consumer_main(LPVOID p);
#else
#  include <pthread.h>
#  define TGZ2_THREAD pthread_t
   static void *consumer_main(void *p);
#endif

typedef struct {
    tgz2_ring  ring;
    tgz2_sock  sock;
    tgz2_addr  addr;
    int        proto;
    uint64_t   produced;
    uint64_t   push_ok;
    uint64_t   ring_drop;
    uint64_t   push_us_max;
    uint64_t   push_us_sum;
    uint64_t   tick_late_max;
    uint64_t   tick_late_sum;
    uint64_t   tick_n;
    uint64_t   tick_missed;
    uint32_t   depth_max;
    uint32_t   epoch;
    uint64_t   reconnects;
    uint32_t   need_reopen;
    uint64_t   send_ok;
    uint64_t   send_bytes;
    uint64_t   send_drop_wb;
    uint64_t   send_partial;
    uint64_t   send_err_other;
    double     consumer_pause_at;
    int        consumer_pause_ms;
    int        naive;              /* 1 = negative control: blocking send inside producer */
    uint64_t   ts_prev;
    uint64_t   ts_delta_max;
    uint64_t   ts_delta_min;
    uint64_t   t0;
    volatile int stop;
} ctx;

static ctx *g_ctx;
static void on_sigint(int sig) { (void)sig; if (g_ctx) g_ctx->stop = 1; }

static void pause_window(ctx *c, double elapsed_s)
{
    if (c->consumer_pause_at > 0 && c->consumer_pause_ms > 0 &&
        elapsed_s >= c->consumer_pause_at) {
        printf("CONSUMER_PAUSE {\"ms\":%d}\n", c->consumer_pause_ms);
        fflush(stdout);
        tgz2_sleep_us((uint64_t)c->consumer_pause_ms * 1000ull);
        c->consumer_pause_at = -1;
    }
}

/* 对端消失后的重连：关闭 -> 重建 -> connect -> 转非阻塞，失败就返回 0（下轮再试） */
static int reopen(ctx *c)
{
    if (c->sock != TGZ2_BADF) tgz2_sock_close(c->sock);
    c->sock = socket(AF_UNIX, c->proto ? SOCK_DGRAM : SOCK_STREAM, 0);
    if (c->sock == TGZ2_BADF) return 0;
    if (c->proto) { tgz2_set_nonblock(c->sock); c->reconnects++; return 1; }
    if (connect(c->sock, (struct sockaddr *)&c->addr, sizeof(c->addr)) != 0) {
        tgz2_sock_close(c->sock); c->sock = TGZ2_BADF; return 0;
    }
    if (c->naive) tgz2_set_block(c->sock); else tgz2_set_nonblock(c->sock);
    c->reconnects++;
    return 1;
}
static int push_one(ctx *c, const uint8_t *msg)
{
    int sent;
    if (c->proto) {
        sent = (int)sendto(c->sock, (const char *)msg, TGZ2_MSG, 0,
                           (struct sockaddr *)&c->addr, sizeof(c->addr));
    } else {
        sent = (int)send(c->sock, (const char *)msg, TGZ2_MSG, 0);
    }
    if (sent == TGZ2_MSG) { c->send_ok++; c->send_bytes += TGZ2_MSG; return 1; }
    if (sent < 0) {
        if (tgz2_would_block()) c->send_drop_wb++;
        else {
            c->send_err_other++;
            if (tgz2_peer_gone()) c->need_reopen = 1;   /* 对端没了：下轮重连 */
        }
        return 0;
    }
    /* stream half-frame: never chase the remainder (that would block);
       the receiver resynchronises on the next magic word instead */
    c->send_partial++;
    c->send_drop_wb++;
    return 0;
}

static void consumer_loop(ctx *c)
{
    static uint8_t msg[TGZ2_MSG];
    while (!c->stop) {
        pause_window(c, (double)(tgz2_now_us() - c->t0) / 1e6);
        if (c->need_reopen) {
            c->need_reopen = 0;
            if (!reopen(c)) { tgz2_sleep_us(200000); continue; }   /* 200 ms 后再试 */
        }
        if (!tgz2_ring_pop(&c->ring, msg)) {
            tgz2_sleep_us(1000);      /* idle poll 1 ms; NOT a blocking send */
            continue;
        }
        push_one(c, msg);
    }
    /* drain what is left, bounded to 250 ms so shutdown is predictable */
    uint64_t deadline = tgz2_now_us() + 250000ull;
    while (tgz2_now_us() < deadline) {
        if (!tgz2_ring_pop(&c->ring, msg)) break;
        push_one(c, msg);
    }
}

#ifdef _WIN32
static DWORD WINAPI consumer_main(LPVOID p) { consumer_loop((ctx *)p); return 0; }
#else
static void *consumer_main(void *p) { consumer_loop((ctx *)p); return NULL; }
#endif

int main(int argc, char **argv)
{
    const char *path = NULL;
    int proto = 0;
    double secs = 600.0;
    int ring_cap = TGZ2_RING_CAP;
    int skip_every = 0;
    double pause_at = 0.0;
    int pause_ms = 0;
    int warmup_ms = 0;
    int naive = 0;
    int sndbuf = 0;
    int i;

    for (i = 1; i < argc; i++) {
        if (!strcmp(argv[i], "--path") && i + 1 < argc) path = argv[++i];
        else if (!strcmp(argv[i], "--proto") && i + 1 < argc) proto = strcmp(argv[++i], "dgram") ? 0 : 1;
        else if (!strcmp(argv[i], "--secs") && i + 1 < argc) secs = atof(argv[++i]);
        else if (!strcmp(argv[i], "--ring") && i + 1 < argc) ring_cap = atoi(argv[++i]);
        else if (!strcmp(argv[i], "--skip-every") && i + 1 < argc) skip_every = atoi(argv[++i]);
        else if (!strcmp(argv[i], "--consumer-pause-at") && i + 1 < argc) pause_at = atof(argv[++i]);
        else if (!strcmp(argv[i], "--consumer-pause-ms") && i + 1 < argc) pause_ms = atoi(argv[++i]);
        else if (!strcmp(argv[i], "--warmup-ms") && i + 1 < argc) warmup_ms = atoi(argv[++i]);
        else if (!strcmp(argv[i], "--naive")) naive = 1;
        else if (!strcmp(argv[i], "--sndbuf") && i + 1 < argc) sndbuf = atoi(argv[++i]);
        else {
            fprintf(stderr, "usage: %s --path P [--proto stream|dgram] [--secs N] [--ring N]\n"
                            "          [--skip-every N] [--consumer-pause-at SEC --consumer-pause-ms MS]\n"
                            "          [--warmup-ms N] [--naive]\n", argv[0]);
            return 2;
        }
    }
    if (!path) { fprintf(stderr, "source: --path required\n"); return 2; }

    if (tgz2_sock_init() != 0) { fprintf(stderr, "source: winsock init failed\n"); return 1; }
    signal(SIGINT, on_sigint);
#ifdef SIGTERM
    signal(SIGTERM, on_sigint);
#endif
#ifdef _WIN32
    timeBeginPeriod(1);      /* 15.6 ms -> ~1 ms timer granularity, needed for a 40 ms tick */
#endif

    ctx C;
    memset(&C, 0, sizeof(C));
    C.epoch = ((uint32_t)tgz2_now_us() ^ 0x5A5A5A5Au) | 1u;   /* 本实例标识 */
    tgz2_ring_init(&C.ring, (uint32_t)ring_cap);
    C.proto = proto;
    C.consumer_pause_at = pause_at;
    C.consumer_pause_ms = pause_ms;
    C.naive = naive;
    g_ctx = &C;

    if (tgz2_fill_addr(&C.addr, path) != 0) { fprintf(stderr, "source: path too long\n"); return 1; }
    C.sock = socket(AF_UNIX, proto ? SOCK_DGRAM : SOCK_STREAM, 0);
    if (C.sock == TGZ2_BADF) { fprintf(stderr, "source: socket() failed err=%d\n", tgz2_last_err()); return 1; }
    if (sndbuf > 0) setsockopt(C.sock, SOL_SOCKET, SO_SNDBUF, (const char *)&sndbuf, sizeof(sndbuf));

    if (!proto) {
        if (warmup_ms > 0) tgz2_sleep_us((uint64_t)warmup_ms * 1000ull);
        int tries = 0;
        for (;;) {                              /* blocking connect, then flip to non-blocking */
            int r = connect(C.sock, (struct sockaddr *)&C.addr, sizeof(C.addr));
            if (r == 0) break;
            int e = tgz2_last_err();
#ifdef _WIN32
            if (e == WSAEISCONN) break;
            int retryable = (e == WSAECONNREFUSED || e == WSAEWOULDBLOCK || e == WSAEADDRNOTAVAIL);
#else
            if (e == EISCONN) break;
            int retryable = (e == ECONNREFUSED || e == ENOENT || e == EINPROGRESS || e == EAGAIN);
#endif
            if (!retryable || ++tries > 500) {
                fprintf(stderr, "source: connect failed err=%d\n", e);
                return 1;
            }
            tgz2_sleep_us(20000);
        }
        tgz2_set_nonblock(C.sock);
        printf("CONNECTED\n");
        fflush(stdout);
    }
    /* naive 对照组：socket 保持阻塞，生产者直接 send，用来验证「阻塞会拖死节拍」这一前提 */
    if (C.naive) tgz2_set_block(C.sock);

    uint64_t t0 = tgz2_now_us();
    C.t0 = t0;
    TGZ2_THREAD th;
    int have_thread = 0;
    if (!C.naive) {
#ifdef _WIN32
        th = CreateThread(NULL, 0, consumer_main, &C, 0, NULL);
        have_thread = (th != NULL);
#else
        have_thread = (pthread_create(&th, NULL, consumer_main, &C) == 0);
#endif
    }

    uint64_t period = TGZ2_PERIOD_US;
    uint64_t deadline = tgz2_now_us();   /* frame 0 is produced now, next one +period */
    uint64_t t_end = secs > 0 ? t0 + (uint64_t)(secs * 1e6) : 0;
    uint64_t t_next_stat = t0 + 5000000ULL;
    uint32_t seq = 0;
    uint32_t frames_total = 0;
    static uint8_t msg[TGZ2_MSG];
    static uint8_t payload[TGZ2_PAYLOAD];

    while (!C.stop) {
        uint64_t now = tgz2_now_us();
        if (t_end && now >= t_end) break;

        /* ---- producer: the only thing the hook is allowed to do ---- */
        tgz2_fill_payload(seq, payload);
        tgz2_hdr h;
        h.seq = seq;
        h.ts_us = now;
        h.epoch = C.epoch;
        h.flags = TGZ2_FLAG_SYNTHETIC;
        h.payload_len = TGZ2_PAYLOAD;
        h.crc = tgz2_fnv1a(payload, TGZ2_PAYLOAD);
        tgz2_pack(msg, &h, payload);

        uint64_t p0 = tgz2_now_us();
        int ok;
        if (C.naive) {
            /* 对照组：生产者直接阻塞式发送（这就是要避免的写法） */
            int sent = C.proto
                ? (int)sendto(C.sock, (const char *)msg, TGZ2_MSG, 0, (struct sockaddr *)&C.addr, sizeof(C.addr))
                : (int)send(C.sock, (const char *)msg, TGZ2_MSG, 0);
            ok = (sent == TGZ2_MSG);
            if (ok) { C.send_ok++; C.send_bytes += TGZ2_MSG; }
            else if (sent < 0) { if (tgz2_would_block()) C.send_drop_wb++; else C.send_err_other++; }
            else { C.send_partial++; C.send_drop_wb++; }
        }
        else if (skip_every > 0 && (seq % (uint32_t)skip_every) == 0) ok = 0;   /* injected upstream loss */
        else ok = tgz2_ring_push(&C.ring, msg);
        uint64_t p1 = tgz2_now_us();

        C.push_ok += ok ? 1 : 0;
        C.ring_drop += ok ? 0 : 1;
        uint64_t pu = p1 - p0;
        C.push_us_sum += pu;
        if (pu > C.push_us_max) C.push_us_max = pu;

        C.produced++;
        frames_total++;
        seq++;

        uint32_t d = tgz2_ring_depth(&C.ring);
        if (d > C.depth_max) C.depth_max = d;

        /* cadence jitter measured on the capture timestamps themselves */
        if (C.ts_prev) {
            uint64_t dg = h.ts_us - C.ts_prev;
            if (dg > C.ts_delta_max) C.ts_delta_max = dg;
            if (!C.ts_delta_min || dg < C.ts_delta_min) C.ts_delta_min = dg;
        }
        C.ts_prev = h.ts_us;

        /* ---- tick: absolute deadline, measure the real pacing error ---- */
        deadline += period;
        uint64_t t = tgz2_now_us();
        if (t < deadline) {
            uint64_t rem = deadline - t;
            while (rem > 1500) {
                tgz2_sleep_us(rem - 1000);
                uint64_t t2 = tgz2_now_us();
                if (t2 >= deadline) break;
                rem = deadline - t2;
            }
            while (tgz2_now_us() < deadline) { /* last ~1.5 ms spin for tick accuracy */ }
        }
        {
            uint64_t after = tgz2_now_us();
            uint64_t late = after > deadline ? after - deadline : 0;
            C.tick_late_sum += late;
            if (late > C.tick_late_max) C.tick_late_max = late;
            C.tick_n++;
            if (late > period) {          /* a whole frame was lost to scheduling */
                C.tick_missed++;
                deadline = after + period;
            }
        }

        if (tgz2_now_us() >= t_next_stat) {
            printf("STAT {\"produced\":%llu,\"sent\":%llu,\"ring_drop\":%llu,"
                   "\"depth_max\":%u,\"tick_late_max_us\":%llu,\"push_us_max\":%llu}\n",
                   (unsigned long long)C.produced, (unsigned long long)C.send_ok,
                   (unsigned long long)C.ring_drop, C.depth_max,
                   (unsigned long long)C.tick_late_max, (unsigned long long)C.push_us_max);
            fflush(stdout);
            t_next_stat += 5000000ULL;
        }
    }

    C.stop = 1;
    if (have_thread) {
#ifdef _WIN32
        WaitForSingleObject(th, 3000);
        CloseHandle(th);
#else
        pthread_join(th, NULL);
#endif
    }

    double dur = (double)(tgz2_now_us() - t0) / 1e6;
    double cpu = tgz2_cpu_seconds();
    printf("SUMMARY {\"role\":\"source\",\"proto\":\"%s\",\"dur_s\":%.3f,"
           "\"cpu_s\":%.3f,\"cpu_pct_one_core\":%.2f,"
           "\"produced\":%llu,\"push_ok\":%llu,\"ring_drop\":%llu,"
           "\"send_ok\":%llu,\"send_drop_wb\":%llu,\"send_partial\":%llu,\"send_err\":%llu,"
           "\"bytes_sent\":%llu,\"depth_max\":%u,"
           "\"tick_n\":%llu,\"tick_late_max_us\":%llu,\"tick_late_avg_us\":%.1f,"
           "\"tick_missed\":%llu,\"push_us_max\":%llu,\"push_us_avg_us\":%.2f,"
           "\"ts_delta_ms\":{\"min\":%.2f,\"max\":%.2f},"
           "\"naive\":%d,\"epoch\":%u,\"reconnects\":%llu,\"ring_cap\":%d,\"rate_kib_s\":%.2f}\n",
           proto ? "dgram" : "stream", dur,
           cpu, dur > 0 ? cpu / dur * 100.0 : 0.0,
           (unsigned long long)C.produced, (unsigned long long)C.push_ok,
           (unsigned long long)C.ring_drop, (unsigned long long)C.send_ok,
           (unsigned long long)C.send_drop_wb, (unsigned long long)C.send_partial,
           (unsigned long long)C.send_err_other, (unsigned long long)C.send_bytes,
           C.depth_max, (unsigned long long)C.tick_n,
           (unsigned long long)C.tick_late_max,
           C.tick_n ? (double)C.tick_late_sum / (double)C.tick_n : 0.0,
           (unsigned long long)C.tick_missed, (unsigned long long)C.push_us_max,
           C.produced ? (double)C.push_us_sum / (double)C.produced : 0.0,
           (double)C.ts_delta_min / 1000.0, (double)C.ts_delta_max / 1000.0,
           C.naive, C.epoch, (unsigned long long)C.reconnects, C.ring.cap,
           dur > 0 ? (double)C.send_bytes / 1024.0 / dur : 0.0);

#ifdef _WIN32
    timeEndPeriod(1);
#endif
    tgz2_sock_close(C.sock);
    return 0;
}
