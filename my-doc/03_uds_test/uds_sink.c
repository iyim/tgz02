/*
 * uds_sink.c -- PCM bypass receiver (PC-side prototype)
 *
 * Reference implementation for the device-side assistant process as well.
 *
 * Behaviour:
 *   1. Receive + validate + count only. Never ACKs, never sends back,
 *      so the sender can never be blocked by this end.
 *   2. stream mode keeps a reassembly buffer and resynchronises on the
 *      magic word, counting every resync.
 *   3. Every frame is checked with a deterministic payload compare plus a
 *      CRC, so truncation / misalignment / frame splicing is detected.
 *   4. latency = recv_time - capture timestamp in the header (same machine,
 *      monotonic clock, so the subtraction is meaningful).
 *   5. --stall-at / --stall-len freeze the receiver on purpose to prove the
 *      sender drops instead of blocking.
 *
 * build (Windows, TDM-GCC): gcc -O2 -o uds_sink.exe uds_sink.c -lws2_32
 * build (Linux/Android)   : gcc -O2 -o uds_sink uds_sink.c
 */
#include "tgz2_frame.h"
#include <signal.h>

#define ACC_CAP (256 * 1024)   /* reassembly buffer: must exceed any single recv burst */

typedef struct {
    uint64_t msgs;
    uint64_t bytes_rx;
    uint64_t accepted;
    uint64_t reject_bad_magic;
    uint64_t reject_short;
    uint64_t reject_hdr;
    uint64_t reject_crc;
    uint64_t reject_payload;
    uint64_t resync;
    uint32_t seq_first;
    uint32_t seq_last;
    uint64_t missing;
    uint64_t dup;
    uint64_t reorder;
    int      have_seq;
    uint32_t *lat;
    size_t    lat_n;
    size_t    lat_cap;
    uint64_t  lat_sum;
    uint32_t  lat_max;
    uint64_t  last_rx_us;
    uint64_t  last_ts_us;
    uint64_t  gap_max_us;      /* recv-side: did the reader get scheduled late? */
    uint64_t  tsgap_max_us;    /* capture-side: did the sender's cadence hiccup? */
    uint64_t  tsgap_min_us;
    int       stalled_count;
    uint64_t  stall_total_us;
    uint32_t  epoch;
    int       have_epoch;
    uint64_t  epochs;
    uint64_t  stale;
    uint64_t  max_age_us;
} stats;

static volatile sig_atomic_t g_stop = 0;
static void on_sigint(int sig) { (void)sig; g_stop = 1; }

static void lat_push(stats *s, uint32_t v)
{
    if (s->lat_n == s->lat_cap) {
        size_t nc = s->lat_cap ? s->lat_cap * 2 : 65536;
        uint32_t *p = (uint32_t *)realloc(s->lat, nc * sizeof(uint32_t));
        if (!p) return;                 /* out of memory: keep sum/max only */
        s->lat = p;
        s->lat_cap = nc;
    }
    s->lat[s->lat_n++] = v;
    s->lat_sum += v;
    if (v > s->lat_max) s->lat_max = v;
}

static int cmp_u32(const void *a, const void *b)
{
    uint32_t x = *(const uint32_t *)a, y = *(const uint32_t *)b;
    return (x < y) ? -1 : (x > y) ? 1 : 0;
}

static uint32_t pct(stats *s, double q)
{
    if (!s->lat_n) return 0;
    size_t i = (size_t)(q * (double)(s->lat_n - 1) + 0.5);
    if (i >= s->lat_n) i = s->lat_n - 1;
    return s->lat[i];
}

static void print_stat(const char *tag, stats *s, uint64_t t0)
{
    double dur = (double)(tgz2_now_us() - t0) / 1e6;
    printf("%s {\"dur_s\":%.3f,\"frames\":%llu,\"accepted\":%llu,\"bytes\":%llu,"
           "\"seq_last\":%u,\"missing\":%llu,\"dup\":%llu,\"reorder\":%llu,"
           "\"reject\":%llu,\"resync\":%llu,\"lat_avg_us\":%.1f,\"lat_max_us\":%u,"
           "\"gap_max_ms\":%.1f,\"stalls\":%d}\n",
           tag, dur,
           (unsigned long long)s->msgs, (unsigned long long)s->accepted,
           (unsigned long long)s->bytes_rx,
           s->seq_last, (unsigned long long)s->missing,
           (unsigned long long)s->dup, (unsigned long long)s->reorder,
           (unsigned long long)(s->reject_bad_magic + s->reject_short + s->reject_hdr
                                + s->reject_crc + s->reject_payload),
           (unsigned long long)s->resync,
           s->lat_n ? (double)s->lat_sum / (double)s->lat_n : 0.0,
           s->lat_max, (double)s->gap_max_us / 1000.0, s->stalled_count);
    fflush(stdout);
}

/* account one validated frame */
static void account(stats *s, const uint8_t *msg, const tgz2_hdr *h, uint64_t rx_us, FILE *cap)
{
    uint32_t lat;

    /* 过期帧：宁可丢，也不把几分钟前的语音送进 ASR */
    if (s->max_age_us && rx_us > h->ts_us && (rx_us - h->ts_us) > s->max_age_us) {
        s->stale++;
        return;
    }

    /* 发送端重启：epoch 变了就重开一个会话，不把序号跳变算成丢帧 */
    if (!s->have_epoch) {
        s->epoch = h->epoch;
        s->have_epoch = 1;
    } else if (h->epoch != s->epoch) {
        s->epoch = h->epoch;
        s->epochs++;
        s->have_seq = 0;
    }

    s->accepted++;
    s->msgs++;

    if (!s->have_seq) {
        s->seq_first = h->seq;
        s->have_seq = 1;
    } else {
        int32_t d = (int32_t)(h->seq - s->seq_last);
        if (d == 0)       s->dup++;
        else if (d > 1)   s->missing += (uint32_t)(d - 1);
        else if (d < 0)   s->reorder++;
    }
    s->seq_last = h->seq;

    /* payload integrity: deterministic regenerated pattern */
    if (!tgz2_check_payload(h->seq, msg + TGZ2_HDR_LEN)) s->reject_payload++;

    lat = (uint32_t)(rx_us > h->ts_us ? (rx_us - h->ts_us) : 0);
    lat_push(s, lat);

    if (s->last_rx_us) {
        uint64_t g = rx_us - s->last_rx_us;
        if (g > s->gap_max_us) s->gap_max_us = g;
    }
    s->last_rx_us = rx_us;

    if (s->last_ts_us) {
        int64_t g = (int64_t)h->ts_us - (int64_t)s->last_ts_us;
        if (g > 0) {
            if ((uint64_t)g > s->tsgap_max_us) s->tsgap_max_us = (uint64_t)g;
            if (!s->tsgap_min_us || (uint64_t)g < s->tsgap_min_us) s->tsgap_min_us = (uint64_t)g;
        }
    }
    s->last_ts_us = h->ts_us;

    if (cap) fwrite(msg, 1, TGZ2_MSG, cap);
}

int main(int argc, char **argv)
{
    const char *path = NULL;
    const char *cap_path = NULL;
    int proto = 0;                 /* 0 stream, 1 dgram */
    double secs = 600.0;
    double stall_at = -1.0, stall_len = 0.5;
    uint32_t slow_us = 0;
    int rcvbuf = 0;
    int max_age_ms = 500;
    int i;

    for (i = 1; i < argc; i++) {
        if (!strcmp(argv[i], "--path") && i + 1 < argc) path = argv[++i];
        else if (!strcmp(argv[i], "--proto") && i + 1 < argc) proto = strcmp(argv[++i], "dgram") ? 0 : 1;
        else if (!strcmp(argv[i], "--secs") && i + 1 < argc) secs = atof(argv[++i]);
        else if (!strcmp(argv[i], "--capture") && i + 1 < argc) cap_path = argv[++i];
        else if (!strcmp(argv[i], "--stall-at") && i + 1 < argc) stall_at = atof(argv[++i]);
        else if (!strcmp(argv[i], "--stall-len") && i + 1 < argc) stall_len = atof(argv[++i]);
        else if (!strcmp(argv[i], "--slow-us") && i + 1 < argc) slow_us = (uint32_t)atoi(argv[++i]);
        else if (!strcmp(argv[i], "--rcvbuf") && i + 1 < argc) rcvbuf = atoi(argv[++i]);
        else if (!strcmp(argv[i], "--max-age-ms") && i + 1 < argc) max_age_ms = atoi(argv[++i]);
        else {
            fprintf(stderr, "usage: %s --path P [--proto stream|dgram] [--secs N] [--capture F]\n"
                            "          [--stall-at SEC --stall-len SEC] [--slow-us US] [--rcvbuf BYTES]\n", argv[0]);
            return 2;
        }
    }
    if (!path) { fprintf(stderr, "sink: --path required\n"); return 2; }

    if (tgz2_sock_init() != 0) { fprintf(stderr, "sink: winsock init failed\n"); return 1; }
    signal(SIGINT, on_sigint);
#ifdef SIGTERM
    signal(SIGTERM, on_sigint);
#endif

#ifdef _WIN32
    DeleteFileA(path);
#else
    unlink(path);
#endif

    tgz2_sock srv = socket(AF_UNIX, proto ? SOCK_DGRAM : SOCK_STREAM, 0);
    if (srv == TGZ2_BADF) { fprintf(stderr, "sink: socket() failed err=%d\n", tgz2_last_err()); return 1; }

    tgz2_addr a;
    if (tgz2_fill_addr(&a, path) != 0) { fprintf(stderr, "sink: path too long\n"); return 1; }
    if (bind(srv, (struct sockaddr *)&a, sizeof(a)) != 0) {
        fprintf(stderr, "sink: bind(%s) failed err=%d\n", path, tgz2_last_err());
        return 1;
    }
    if (rcvbuf > 0) setsockopt(srv, SOL_SOCKET, SO_RCVBUF, (const char *)&rcvbuf, sizeof(rcvbuf));

    /* ready marker so the orchestrator never has to poll our stdout */
    {
        char rf[512];
        snprintf(rf, sizeof(rf), "%s.ready", path);
        FILE *f = fopen(rf, "wb");
        if (f) { fputs("ok", f); fclose(f); }
    }

    tgz2_sock cli = TGZ2_BADF;
    if (!proto) {
        if (listen(srv, 4) != 0) { fprintf(stderr, "sink: listen failed err=%d\n", tgz2_last_err()); return 1; }
        printf("READY {\"path\":\"%s\",\"proto\":\"stream\",\"rcvbuf\":%d}\n", path, rcvbuf);
        fflush(stdout);
        tgz2_set_nonblock(srv);
        while (!g_stop && cli == TGZ2_BADF) {
            cli = accept(srv, NULL, NULL);
            if (cli == TGZ2_BADF) tgz2_sleep_us(20000);
        }
        if (cli == TGZ2_BADF) { fprintf(stderr, "sink: no client\n"); return 1; }
        tgz2_set_nonblock(cli);
    } else {
        printf("READY {\"path\":\"%s\",\"proto\":\"dgram\",\"rcvbuf\":%d}\n", path, rcvbuf);
        fflush(stdout);
        tgz2_set_nonblock(srv);
        cli = srv;
    }
    printf("CONNECTED\n"); fflush(stdout);

    FILE *cap = cap_path ? fopen(cap_path, "wb") : NULL;
    if (cap_path && !cap) fprintf(stderr, "sink: cannot open capture %s\n", cap_path);

    stats S;
    memset(&S, 0, sizeof(S));
    S.max_age_us = max_age_ms > 0 ? (uint64_t)max_age_ms * 1000ull : 0;
    uint64_t t0 = tgz2_now_us();
    uint64_t t_next_stat = t0 + 5000000ULL;
    uint64_t t_end = secs > 0 ? t0 + (uint64_t)(secs * 1e6) : 0;
    int stalled_done = 0;

    static uint8_t acc[ACC_CAP];
    size_t acc_len = 0;
    static uint8_t rbuf[65536];

    while (!g_stop) {
        uint64_t now = tgz2_now_us();
        if (t_end && now >= t_end) break;

        /* deliberate stall: receiver freezes, sender must not block */
        if (stall_at > 0 && !stalled_done && (double)(now - t0) / 1e6 >= stall_at) {
            uint64_t st = tgz2_now_us();
            printf("STALL_BEGIN {}\n"); fflush(stdout);
            tgz2_sleep_us((uint64_t)(stall_len * 1e6));
            S.stalled_count++;
            S.stall_total_us += tgz2_now_us() - st;
            printf("STALL_END {}\n"); fflush(stdout);
            stalled_done = 1;
        }

        fd_set rs;
        FD_ZERO(&rs);
        FD_SET(cli, &rs);
        struct timeval tv;
        tv.tv_sec = 0;
        tv.tv_usec = 100000;
#ifdef _WIN32
        int sel = select(0, &rs, NULL, NULL, &tv);
#else
        int sel = select(cli + 1, &rs, NULL, NULL, &tv);
#endif
        if (sel <= 0) {
            if (tgz2_now_us() >= t_next_stat) { print_stat("STAT", &S, t0); t_next_stat += 5000000ULL; }
            continue;
        }

        /* read straight into the reassembly buffer, never more than it can hold:
           a recv burst bigger than ACC_CAP used to force a fake resync */
        size_t room = sizeof(acc) - acc_len;
        int rn = (int)(room > sizeof(rbuf) ? sizeof(rbuf) : room);
        if (rn < TGZ2_MSG) { acc_len = 0; rn = (int)sizeof(rbuf); }
        int n = (int)recv(cli, (char *)(proto ? rbuf : (acc + acc_len)), rn, 0);
        if (n <= 0) {
            if (n == 0 && !proto) {
                /* 对端关闭：重新 accept，而不是退出（否则发送端重启后就再也收不到） */
                printf("PEER_CLOSED {}\n"); fflush(stdout);
                tgz2_sock_close(cli);
                cli = TGZ2_BADF;
                acc_len = 0;
                while (cli == TGZ2_BADF && !g_stop) {
                    if (t_end && tgz2_now_us() >= t_end) break;
                    cli = accept(srv, NULL, NULL);
                    if (cli == TGZ2_BADF) tgz2_sleep_us(20000);
                }
                if (cli == TGZ2_BADF) break;
                tgz2_set_nonblock(cli);
                printf("REACCEPT {}\n"); fflush(stdout);
                continue;
            }
            continue;
        }
        uint64_t rx_us = tgz2_now_us();
        S.bytes_rx += (uint64_t)n;

        if (proto) {   /* datagram: one recv == one frame, boundary guaranteed */
            if (n < TGZ2_MSG) { S.reject_short++; continue; }
            tgz2_hdr h;
            int rc = tgz2_unpack(rbuf, &h);
            if (rc) {
                if (rc == -8) S.reject_crc++;
                else if (rc == -1) S.reject_bad_magic++;
                else S.reject_hdr++;
                continue;
            }
            account(&S, rbuf, &h, rx_us, cap);
            if (slow_us) tgz2_sleep_us(slow_us);   /* slow-consumer: per FRAME, not per recv */
        } else {       /* stream: data already landed in acc[acc_len..], just consume */
            acc_len += (size_t)n;
            for (;;) {
                if (acc_len < TGZ2_HDR_LEN) break;
                if (tgz2_get_u32(acc) != TGZ2_MAGIC) {
                    size_t k = 1;
                    while (k + 4 <= acc_len && tgz2_get_u32(acc + k) != TGZ2_MAGIC) k++;
                    S.resync++;
                    S.reject_bad_magic++;
                    if (k + 4 > acc_len) { acc_len = 0; break; }
                    memmove(acc, acc + k, acc_len - k);
                    acc_len -= k;
                    continue;
                }
                if (acc_len < TGZ2_MSG) break;
                tgz2_hdr h;
                int rc = tgz2_unpack(acc, &h);
                if (rc) {
                    S.reject_hdr++;
                    memmove(acc, acc + 1, acc_len - 1);
                    acc_len -= 1;
                    continue;
                }
                account(&S, acc, &h, rx_us, cap);
                if (slow_us) tgz2_sleep_us(slow_us);   /* slow-consumer: per FRAME */
                memmove(acc, acc + TGZ2_MSG, acc_len - TGZ2_MSG);
                acc_len -= TGZ2_MSG;
            }
        }

        if (tgz2_now_us() >= t_next_stat) { print_stat("STAT", &S, t0); t_next_stat += 5000000ULL; }
    }

    if (cap) fclose(cap);
    if (S.lat) qsort(S.lat, S.lat_n, sizeof(uint32_t), cmp_u32);
    double dur = (double)(tgz2_now_us() - t0) / 1e6;
    double cpu = tgz2_cpu_seconds();
    printf("SUMMARY {\"role\":\"sink\",\"proto\":\"%s\",\"dur_s\":%.3f,"
           "\"cpu_s\":%.3f,\"cpu_pct_one_core\":%.2f,"
           "\"accepted\":%llu,\"bytes\":%llu,\"bytes_rx\":%llu,"
           "\"reject\":{\"magic\":%llu,\"short\":%llu,\"hdr\":%llu,\"crc\":%llu,\"payload\":%llu},"
           "\"resync\":%llu,\"seq_first\":%u,\"seq_last\":%u,\"miss_before_first\":%u,"
           "\"missing\":%llu,\"dup\":%llu,\"reorder\":%llu,"
           "\"lat_us\":{\"avg\":%.1f,\"p50\":%u,\"p95\":%u,\"p99\":%u,\"max\":%u},"
           "\"gap_max_ms\":%.2f,\"stalls\":%d,\"stall_total_ms\":%.1f,"
           "\"tsgap_ms\":{\"min\":%.2f,\"max\":%.2f},"
           "\"stale\":%llu,\"epoch\":%u,\"epochs\":%llu,\"max_age_ms\":%d,"
           "\"rate_kib_s\":%.2f}\n",
           proto ? "dgram" : "stream", dur,
           cpu, dur > 0 ? cpu / dur * 100.0 : 0.0,
           (unsigned long long)S.accepted,
           (unsigned long long)(S.accepted * TGZ2_MSG),
           (unsigned long long)S.bytes_rx,
           (unsigned long long)S.reject_bad_magic, (unsigned long long)S.reject_short,
           (unsigned long long)S.reject_hdr, (unsigned long long)S.reject_crc,
           (unsigned long long)S.reject_payload,
           (unsigned long long)S.resync, S.seq_first, S.seq_last,
           S.seq_first,
           (unsigned long long)S.missing, (unsigned long long)S.dup,
           (unsigned long long)S.reorder,
           S.lat_n ? (double)S.lat_sum / (double)S.lat_n : 0.0,
           pct(&S, 0.50), pct(&S, 0.95), pct(&S, 0.99), S.lat_max,
           (double)S.gap_max_us / 1000.0, S.stalled_count,
           (double)S.stall_total_us / 1000.0,
           (double)S.tsgap_min_us / 1000.0, (double)S.tsgap_max_us / 1000.0,
           (unsigned long long)S.stale, S.epoch, (unsigned long long)S.epochs,
           (int)(S.max_age_us / 1000),
           dur > 0 ? (double)(S.accepted * TGZ2_PAYLOAD) / 1024.0 / dur : 0.0);

    tgz2_sock_close(cli);
    if (srv != cli) tgz2_sock_close(srv);
    {
        char rf[512];
        snprintf(rf, sizeof(rf), "%s.ready", path);
#ifdef _WIN32
        DeleteFileA(rf);
        DeleteFileA(path);
#else
        unlink(rf);
        unlink(path);
#endif
    }
    free(S.lat);
    return 0;
}
