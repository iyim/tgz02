/*
 * dgram_server.c -- minimal AF_UNIX SOCK_DGRAM receiver for Android (armv7)
 *
 * Purpose: receive the TGZ2 v2 frames produced by the Frida bridge
 * (pcm_bridge_draft.js) from the factory process, verify the protocol header
 * and the FNV-1a CRC, and optionally write the accepted frames to a file for
 * offline checking with verify_capture.py.
 *
 * Two payload classes (see ../tgz2_frame.h):
 *   flags & TGZ2_FLAG_SYNTHETIC  -> payload is regenerated from seq and compared
 *                                   byte-for-byte (dgram_client.c test data)
 *   no SYNTHETIC bit             -> real PCM: payload cannot be regenerated,
 *                                   integrity is verified by the frame CRC only
 *
 * It never sends anything back (no ACK), never touches smartapp, needs no root.
 *
 * build (NDK): see README.md
 * run        : ./dgram_server --abstract tgz2_pcm --secs 60 \
 *                              --capture /data/local/tmp/tgz2_uds/t3_real_pcm.cap
 */
#include "../tgz2_frame.h"
#include <signal.h>
#include <sys/select.h>

static volatile sig_atomic_t g_stop = 0;
static void on_sig(int s) { (void)s; g_stop = 1; }

typedef struct {
    uint64_t msgs, accepted, bytes_rx, stale, captured;
    uint64_t bad_magic, bad_ver, bad_hdr, bad_len, bad_param, bad_crc, bad_payload;
    uint64_t dup, reorder, missing;
    uint64_t synthetic, real_pcm;
    uint32_t seq_last, seq_first, epoch;
    int have_seq, have_epoch;
    uint64_t last_ts;
    uint64_t tsgap_max, tsgap_min;
    uint64_t lat_sum, lat_max;
    size_t   lat_n;
    int      paused;
} stats;

static void print_stat(const stats *S)
{
    printf("STAT {\"msgs\":%llu,\"accepted\":%llu,\"missing\":%llu,\"dup\":%llu,"
           "\"stale\":%llu,\"real_pcm\":%llu,\"synthetic\":%llu,"
           "\"lat_avg_us\":%.1f,\"lat_max_us\":%llu}\n",
           (unsigned long long)S->msgs, (unsigned long long)S->accepted,
           (unsigned long long)S->missing, (unsigned long long)S->dup,
           (unsigned long long)S->stale, (unsigned long long)S->real_pcm,
           (unsigned long long)S->synthetic,
           S->lat_n ? (double)S->lat_sum / (double)S->lat_n : 0.0,
           (unsigned long long)S->lat_max);
    fflush(stdout);
}

/* ---------------- JSON 输出辅助（只在本文件内使用） ----------------
 * READY 行必须是**可以被标准 JSON 解析器直接解析的完整 JSON 对象**，
 * 因此路径一类的外部字符串一律经 json_write_string() 转义，绝不直接拼接。
 */
static void json_write_string(FILE *f, const char *s)
{
    const unsigned char *p = (const unsigned char *)s;
    fputc('"', f);
    for (; *p; p++) {
        switch (*p) {
        case '"':  fputs("\\\"", f); break;
        case '\\': fputs("\\\\", f); break;
        case '\b': fputs("\\b", f); break;
        case '\f': fputs("\\f", f); break;
        case '\n': fputs("\\n", f); break;
        case '\r': fputs("\\r", f); break;
        case '\t': fputs("\\t", f); break;
        default:
            if (*p < 0x20) fprintf(f, "\\u%04x", (unsigned)*p);   /* 其余控制字符 */
            else fputc((int)*p, f);                               /* UTF-8 字节原样输出 */
            break;
        }
    }
    fputc('"', f);
}

/* NULL -> JSON null（未指定 --capture 时必须这样输出，不能输出空串/裸文本） */
static void json_write_string_or_null(FILE *f, const char *s)
{
    if (s) json_write_string(f, s);
    else fputs("null", f);
}

static void print_ready(FILE *f, const char *mode, const char *name,
                        int rcvbuf_req, int rcvbuf_eff, int max_age_ms,
                        const char *capture_path)
{
    fputs("{\"type\":\"READY\",\"role\":\"server\",\"mode\":", f);
    json_write_string(f, mode);
    fputs(",\"name\":", f);
    json_write_string(f, name);
    fprintf(f, ",\"rcvbuf_req\":%d,\"rcvbuf_eff\":%d,\"max_age_ms\":%d,",
            rcvbuf_req, rcvbuf_eff, max_age_ms);
    fputs("\"capture\":", f);
    json_write_string_or_null(f, capture_path);
    fputs(",\"payload_policy\":\"synthetic=regen-compare,real-pcm=crc-only\"}\n", f);
}

/* 尾部 CAPTURE 行：CAPTURE 是行前缀，其后的对象必须是合法 JSON。
 * file 走 json_write_string_or_null()（路径里的 " 和 \ 必须转义），
 * frames / bytes 保持 JSON 数字，字段名与含义与旧版一致。 */
static void print_capture(FILE *f, const char *capture_path, uint64_t frames)
{
    fputs("CAPTURE {\"file\":", f);
    json_write_string_or_null(f, capture_path);
    fprintf(f, ",\"frames\":%llu,\"bytes\":%llu}\n",
            (unsigned long long)frames,
            (unsigned long long)(frames * (uint64_t)TGZ2_MSG));
}

int main(int argc, char **argv)
{
    const char *abstract_name = "tgz2pcm";
    const char *file_path = NULL;
    const char *capture_path = NULL;
    double secs = 30.0;
    double pause_at = -1.0, pause_len = 2.0;
    int rcvbuf = 8192;
    int max_age_ms = 500;
    int i;

    for (i = 1; i < argc; i++) {
        if (!strcmp(argv[i], "--abstract") && i + 1 < argc) abstract_name = argv[++i];
        else if (!strcmp(argv[i], "--file") && i + 1 < argc) file_path = argv[++i];
        else if (!strcmp(argv[i], "--capture") && i + 1 < argc) capture_path = argv[++i];
        else if (!strcmp(argv[i], "--secs") && i + 1 < argc) secs = atof(argv[++i]);
        else if (!strcmp(argv[i], "--pause-at") && i + 1 < argc) pause_at = atof(argv[++i]);
        else if (!strcmp(argv[i], "--pause-len") && i + 1 < argc) pause_len = atof(argv[++i]);
        else if (!strcmp(argv[i], "--rcvbuf") && i + 1 < argc) rcvbuf = atoi(argv[++i]);
        else if (!strcmp(argv[i], "--max-age-ms") && i + 1 < argc) max_age_ms = atoi(argv[++i]);
        else {
            fprintf(stderr,
                "usage: %s [--abstract NAME | --file PATH] [--secs N] [--pause-at SEC]\n"
                "          [--pause-len SEC] [--rcvbuf BYTES] [--max-age-ms N]\n"
                "          [--capture FILE]\n", argv[0]);
            return 2;
        }
    }

    signal(SIGINT, on_sig);
    signal(SIGTERM, on_sig);

    FILE *cap = NULL;
    if (capture_path) {
        cap = fopen(capture_path, "wb");
        if (!cap) { perror("capture"); return 1; }
    }

    int fd = socket(AF_UNIX, SOCK_DGRAM, 0);
    if (fd < 0) { perror("socket"); if (cap) fclose(cap); return 1; }

    struct sockaddr_un a;
    memset(&a, 0, sizeof(a));
    a.sun_family = AF_UNIX;
    socklen_t alen;
    if (file_path) {
        unlink(file_path);
        strncpy(a.sun_path, file_path, sizeof(a.sun_path) - 1);
        alen = sizeof(a);
    } else {
        /* 抽象命名空间：sun_path[0]=0，不进文件系统，普通 shell 也不需要额外权限 */
        a.sun_path[0] = 0;
        strncpy(a.sun_path + 1, abstract_name, sizeof(a.sun_path) - 2);
        alen = (socklen_t)(2 + 1 + strlen(abstract_name));
    }

    if (bind(fd, (struct sockaddr *)&a, alen) != 0) {
        perror("bind");
        if (cap) fclose(cap);
        return 1;
    }
    if (rcvbuf > 0 && setsockopt(fd, SOL_SOCKET, SO_RCVBUF, &rcvbuf, sizeof(rcvbuf)) != 0)
        perror("setsockopt SO_RCVBUF");

    int got = 0;
    socklen_t gl = sizeof(got);
    getsockopt(fd, SOL_SOCKET, SO_RCVBUF, &got, &gl);

    print_ready(stdout, file_path ? "file" : "abstract",
                file_path ? file_path : abstract_name,
                rcvbuf, got, max_age_ms, capture_path);
    fflush(stdout);

    static uint8_t buf[8192];
    stats S;
    memset(&S, 0, sizeof(S));
    uint64_t t0 = tgz2_now_us();
    uint64_t t_end = t0 + (uint64_t)(secs * 1e6);
    uint64_t t_next = t0 + 5000000ull;
    int paused_done = 0;
    uint64_t max_age_us = max_age_ms > 0 ? (uint64_t)max_age_ms * 1000ull : 0;

    while (!g_stop) {
        uint64_t now = tgz2_now_us();
        if (now >= t_end) break;

        if (pause_at >= 0 && !paused_done && (double)(now - t0) / 1e6 >= pause_at) {
            printf("PAUSE_BEGIN {\"len_s\":%.2f}\n", pause_len);
            fflush(stdout);
            tgz2_sleep_us((uint64_t)(pause_len * 1e6));
            paused_done = 1;
            S.paused = 1;
            printf("PAUSE_END {}\n");
            fflush(stdout);
            continue;
        }

        fd_set rs;
        FD_ZERO(&rs);
        FD_SET(fd, &rs);
        struct timeval tv;
        tv.tv_sec = 0;
        tv.tv_usec = 100000;
        int sel = select(fd + 1, &rs, NULL, NULL, &tv);
        if (sel <= 0) {
            if (tgz2_now_us() >= t_next) { print_stat(&S); t_next += 5000000ull; }
            continue;
        }

        int n = (int)recv(fd, buf, sizeof(buf), 0);
        if (n <= 0) continue;
        uint64_t rx = tgz2_now_us();
        S.msgs++;
        if (n > 0) S.bytes_rx += (uint64_t)n;

        /* DGRAM 必须一帧一个数据报：长度不等于 1320 就是边界被破坏 */
        if (n != TGZ2_MSG) { S.bad_len++; continue; }

        tgz2_hdr h;
        int rc = tgz2_unpack(buf, &h);
        if (rc) {
            if (rc == -1) S.bad_magic++;
            else if (rc == -2) S.bad_ver++;
            else if (rc == -3) S.bad_hdr++;
            else if (rc == -4) S.bad_len++;
            else if (rc == -8) S.bad_crc++;
            else S.bad_param++;          /* -5 rate / -6 ch / -7 bits */
            continue;
        }

        if (max_age_us && rx > h.ts_us && (rx - h.ts_us) > max_age_us) { S.stale++; continue; }

        if (!S.have_epoch) { S.epoch = h.epoch; S.have_epoch = 1; }
        else if (h.epoch != S.epoch) { S.epoch = h.epoch; S.have_seq = 0; }

        if (!S.have_seq) { S.seq_first = h.seq; S.have_seq = 1; }
        else {
            int32_t d = (int32_t)(h.seq - S.seq_last);
            if (d == 0) S.dup++;
            else if (d > 1) S.missing += (uint64_t)(d - 1);
            else if (d < 0) S.reorder++;
        }
        S.seq_last = h.seq;

        /* 载荷策略：SYNTHETIC 才有"可重算"的确定性载荷；真实 PCM 只信 CRC */
        if (h.flags & TGZ2_FLAG_SYNTHETIC) {
            S.synthetic++;
            if (!tgz2_check_payload(h.seq, buf + TGZ2_HDR_LEN)) { S.bad_payload++; continue; }
        } else {
            S.real_pcm++;
        }

        if (cap) {
            if (fwrite(buf, 1, TGZ2_MSG, cap) != TGZ2_MSG) {
                perror("capture-write");
                fclose(cap);
                cap = NULL;
            } else {
                S.captured++;
            }
        }

        {
            uint32_t lat = (uint32_t)(rx > h.ts_us ? rx - h.ts_us : 0);
            S.lat_sum += lat;
            S.lat_n++;
            if (lat > S.lat_max) S.lat_max = lat;
        }

        if (S.last_ts) {
            uint64_t g = h.ts_us - S.last_ts;
            if (g > S.tsgap_max) S.tsgap_max = g;
            if (!S.tsgap_min || g < S.tsgap_min) S.tsgap_min = g;
        }
        S.last_ts = h.ts_us;
        S.accepted++;

        if (tgz2_now_us() >= t_next) { print_stat(&S); t_next += 5000000ull; }
    }

    double dur = (double)(tgz2_now_us() - t0) / 1e6;
    printf("SUMMARY {\"role\":\"server\",\"mode\":\"%s\",\"dur_s\":%.3f,\"msgs\":%llu,"
           "\"accepted\":%llu,\"bytes\":%llu,\"stale\":%llu,\"paused\":%d,"
           "\"bad\":{\"magic\":%llu,\"ver\":%llu,\"hdr\":%llu,\"len\":%llu,"
           "\"param\":%llu,\"crc\":%llu,\"payload\":%llu},"
           "\"synthetic\":%llu,\"real_pcm\":%llu,\"captured\":%llu,"
           "\"seq_first\":%u,\"seq_last\":%u,\"missing\":%llu,\"dup\":%llu,\"reorder\":%llu,"
           "\"lat_us\":{\"avg\":%.1f,\"max\":%llu},\"tsgap_ms\":{\"min\":%.2f,\"max\":%.2f},"
           "\"epoch\":%u}\n",
           file_path ? "file" : "abstract", dur,
           (unsigned long long)S.msgs, (unsigned long long)S.accepted,
           (unsigned long long)S.bytes_rx, (unsigned long long)S.stale, S.paused,
           (unsigned long long)S.bad_magic, (unsigned long long)S.bad_ver,
           (unsigned long long)S.bad_hdr, (unsigned long long)S.bad_len,
           (unsigned long long)S.bad_param, (unsigned long long)S.bad_crc,
           (unsigned long long)S.bad_payload,
           (unsigned long long)S.synthetic, (unsigned long long)S.real_pcm,
           (unsigned long long)S.captured,
           S.seq_first, S.seq_last, (unsigned long long)S.missing,
           (unsigned long long)S.dup, (unsigned long long)S.reorder,
           S.lat_n ? (double)S.lat_sum / (double)S.lat_n : 0.0,
           (unsigned long long)S.lat_max,
           (double)S.tsgap_min / 1000.0, (double)S.tsgap_max / 1000.0, S.epoch);

    if (cap) {
        fflush(cap);
        fclose(cap);
        print_capture(stdout, capture_path, S.captured);
    }
    fflush(stdout);

    close(fd);
    if (file_path) unlink(file_path);
    return 0;
}
