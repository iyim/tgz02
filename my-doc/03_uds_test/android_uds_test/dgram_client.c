/*
 * dgram_client.c -- minimal AF_UNIX SOCK_DGRAM sender for Android (armv7)
 *
 * Sends 1320-byte frames (40 B header + 1280 B deterministic payload) at a
 * strict 40 ms cadence, non-blocking, and counts *separately*:
 *     EAGAIN / ENOBUFS / other errno / drops
 * so the receiver-side pause test can prove "full buffer => drop, never block".
 *
 * --block opts out of O_NONBLOCK on purpose: that is the negative control which
 * shows what "sending from the audio thread" would cost.
 *
 * Does not touch smartapp, does not hook anything, needs no root.
 *
 * run: ./dgram_client --abstract tgz2pcm --secs 20 --sndbuf 8192
 *      ./dgram_client --abstract tgz2pcm --secs 20 --block
 */
#include "../tgz2_frame.h"
#include <signal.h>
#include <errno.h>

static volatile sig_atomic_t g_stop = 0;
static void on_sig(int s) { (void)s; g_stop = 1; }

int main(int argc, char **argv)
{
    const char *abstract_name = "tgz2pcm";
    const char *file_path = NULL;
    double secs = 20.0;
    int sndbuf = 8192;
    int period_ms = 40;
    int block = 0;
    int i;

    for (i = 1; i < argc; i++) {
        if (!strcmp(argv[i], "--abstract") && i + 1 < argc) abstract_name = argv[++i];
        else if (!strcmp(argv[i], "--file") && i + 1 < argc) file_path = argv[++i];
        else if (!strcmp(argv[i], "--secs") && i + 1 < argc) secs = atof(argv[++i]);
        else if (!strcmp(argv[i], "--sndbuf") && i + 1 < argc) sndbuf = atoi(argv[++i]);
        else if (!strcmp(argv[i], "--period-ms") && i + 1 < argc) period_ms = atoi(argv[++i]);
        else if (!strcmp(argv[i], "--block")) block = 1;
        else {
            fprintf(stderr,
                "usage: %s [--abstract NAME | --file PATH] [--secs N] [--sndbuf BYTES]\n"
                "          [--period-ms N] [--block]\n", argv[0]);
            return 2;
        }
    }

    signal(SIGINT, on_sig);
    signal(SIGTERM, on_sig);

    int fd = socket(AF_UNIX, SOCK_DGRAM, 0);
    if (fd < 0) { perror("socket"); return 1; }

    if (sndbuf > 0 && setsockopt(fd, SOL_SOCKET, SO_SNDBUF, &sndbuf, sizeof(sndbuf)) != 0)
        perror("setsockopt SO_SNDBUF");
    int got = 0;
    socklen_t gl = sizeof(got);
    getsockopt(fd, SOL_SOCKET, SO_SNDBUF, &got, &gl);

    struct sockaddr_un a;
    memset(&a, 0, sizeof(a));
    a.sun_family = AF_UNIX;
    socklen_t alen;
    if (file_path) {
        strncpy(a.sun_path, file_path, sizeof(a.sun_path) - 1);
        alen = sizeof(a);
    } else {
        a.sun_path[0] = 0;
        strncpy(a.sun_path + 1, abstract_name, sizeof(a.sun_path) - 2);
        alen = (socklen_t)(2 + 1 + strlen(abstract_name));
    }

    if (!block) {
        int fl = fcntl(fd, F_GETFL, 0);
        if (fl < 0 || fcntl(fd, F_SETFL, fl | O_NONBLOCK) < 0) {
            /* 关键：非阻塞设不上就关掉，绝不用可能阻塞的 fd */
            perror("fcntl O_NONBLOCK");
            close(fd);
            return 3;
        }
    }

    printf("READY {\"role\":\"client\",\"mode\":\"%s\",\"name\":\"%s\",\"sndbuf_req\":%d,"
           "\"sndbuf_eff\":%d,\"blocking\":%d}\n",
           file_path ? "file" : "abstract", file_path ? file_path : abstract_name,
           sndbuf, got, block);
    fflush(stdout);

    static uint8_t msg[TGZ2_MSG];
    static uint8_t payload[TGZ2_PAYLOAD];
    uint32_t epoch = ((uint32_t)tgz2_now_us() ^ 0x1234ABCDu) | 1u;
    uint32_t seq = 0;
    uint64_t t0 = tgz2_now_us();
    uint64_t t_end = t0 + (uint64_t)(secs * 1e6);
    uint64_t period = (uint64_t)period_ms * 1000ull;
    uint64_t deadline = tgz2_now_us();
    uint64_t t_next = t0 + 5000000ull;

    uint64_t produced = 0, ok = 0, eagain = 0, enobufs = 0, other = 0, partial = 0;
    uint64_t tick_late_max = 0, tick_late_sum = 0, tick_n = 0, tick_missed = 0;
    uint64_t send_us_max = 0;
    int last_err = 0;

    while (!g_stop) {
        uint64_t now = tgz2_now_us();
        if (now >= t_end) break;

        tgz2_fill_payload(seq, payload);
        tgz2_hdr h;
        h.seq = seq;
        h.ts_us = now;
        h.epoch = epoch;
        h.flags = TGZ2_FLAG_SYNTHETIC;
        h.payload_len = TGZ2_PAYLOAD;
        h.crc = tgz2_fnv1a(payload, TGZ2_PAYLOAD);
        tgz2_pack(msg, &h, payload);

        uint64_t s0 = tgz2_now_us();
        long r = (long)sendto(fd, msg, TGZ2_MSG, 0, (struct sockaddr *)&a, alen);
        uint64_t s1 = tgz2_now_us();
        if (s1 - s0 > send_us_max) send_us_max = s1 - s0;

        produced++;
        if (r == TGZ2_MSG) ok++;
        else if (r < 0) {
            last_err = errno;
            if (errno == EAGAIN || errno == EWOULDBLOCK) eagain++;
            else if (errno == ENOBUFS) enobufs++;
            else other++;
        } else partial++;
        seq++;

        deadline += period;
        uint64_t t = tgz2_now_us();
        if (t < deadline) {
            uint64_t rem = deadline - t;
            while (tgz2_now_us() < deadline) {
                rem = deadline - tgz2_now_us();
                if (rem > 2000) tgz2_sleep_us(rem - 1000);
            }
            tick_n++;
        }
        uint64_t after = tgz2_now_us();
        uint64_t late = after > deadline ? after - deadline : 0;
        tick_late_sum += late;
        if (late > tick_late_max) tick_late_max = late;
        if (late > period) { tick_missed++; deadline = after + period; }

        if (tgz2_now_us() >= t_next) {
            printf("STAT {\"produced\":%llu,\"ok\":%llu,\"eagain\":%llu,\"enobufs\":%llu,"
                   "\"other\":%llu,\"tick_late_max_us\":%llu,\"send_us_max\":%llu}\n",
                   (unsigned long long)produced, (unsigned long long)ok,
                   (unsigned long long)eagain, (unsigned long long)enobufs,
                   (unsigned long long)other, (unsigned long long)tick_late_max,
                   (unsigned long long)send_us_max);
            fflush(stdout);
            t_next += 5000000ull;
        }
    }

    double dur = (double)(tgz2_now_us() - t0) / 1e6;
    printf("SUMMARY {\"role\":\"client\",\"mode\":\"%s\",\"dur_s\":%.3f,\"epoch\":%u,"
           "\"blocking\":%d,\"produced\":%llu,\"ok\":%llu,\"eagain\":%llu,\"enobufs\":%llu,"
           "\"other\":%llu,\"partial\":%llu,\"last_errno\":%d,"
           "\"tick_late_max_us\":%llu,\"tick_late_avg_us\":%.1f,\"tick_missed\":%llu,"
           "\"send_us_max\":%llu,\"rate_kib_s\":%.2f}\n",
           file_path ? "file" : "abstract", dur, epoch, block,
           (unsigned long long)produced, (unsigned long long)ok,
           (unsigned long long)eagain, (unsigned long long)enobufs,
           (unsigned long long)other, (unsigned long long)partial, last_err,
           (unsigned long long)tick_late_max,
           tick_n ? (double)tick_late_sum / (double)tick_n : 0.0,
           (unsigned long long)tick_missed, (unsigned long long)send_us_max,
           dur > 0 ? (double)(ok * TGZ2_MSG) / 1024.0 / dur : 0.0);

    close(fd);
    return 0;
}
