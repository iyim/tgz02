/*
 * tgb_client.c -- T5-05A 主机测试用的客户端（同时也是"最小可用发送端"参考实现）
 *
 * 为什么客户端也是 C：
 *   本机 CPython 3.11.9 没有编译 AF_UNIX（socket.AF_UNIX 不存在），
 *   而 T3 已实测 Windows 内核 + winsock 的 AF_UNIX/SOCK_STREAM 可用。
 *   所以"连 socket 的那一端"必须是 C；Python 只做编排与断言（不需要 socket 能力）。
 *
 * 用法：
 *   tgb_client --sock-path PATH --scenario NAME [--count N] [--timeout-ms N] [--verbose]
 *   tgb_client --sock NAME       --scenario NAME ...        （Linux/Android 抽象命名空间）
 *
 * 输出（stdout，一行一条）：
 *   ACK <json body>                                      每个 ACK 帧
 *   {"type":"CLIENT_SUMMARY","scenario":..,"sent":N,"acks":N,"elapsed_ms":N,"closed_by_peer":bool}
 * 退出码：0 = 传输层成功；1 = 连接/发送失败
 */
#ifdef _WIN32
#  ifndef _WIN32_WINNT
#    define _WIN32_WINNT 0x0601     /* GetTickCount64 */
#  endif
#endif
#if !defined(_WIN32) && !defined(_POSIX_C_SOURCE)
#  define _POSIX_C_SOURCE 200809L
#endif

#include "tgb_proto.h"
#include "../../03_uds_test/tgz2_frame.h"

#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#ifdef _WIN32
#  include <stddef.h>
typedef int tgbc_slen;
#else
#  include <stddef.h>
#  include <sys/select.h>
#  include <unistd.h>
typedef socklen_t tgbc_slen;
#endif

static int g_sent = 0;
static int g_acks = 0;
static int g_closed = 0;
static int g_verbose = 0;
static int g_retries = 40;     /* 连接重试次数（每次间隔 50 ms） */
static const char *g_prefix = "evt-batch";  /* batch/noread 的 event_id 前缀（并发测试用） */
static int g_hold_ms = 1000;   /* hold 场景占用连接的时长 */

static long long now_ms(void)
{
#ifdef _WIN32
    return (long long)GetTickCount64();
#else
    struct timespec ts;
    if (clock_gettime(CLOCK_MONOTONIC, &ts) != 0) return 0;
    return (long long)ts.tv_sec * 1000LL + (long long)(ts.tv_nsec / 1000000L);
#endif
}

static tgz2_sock sock_connect(const char *abs_name, const char *path)
{
    tgz2_addr addr;
    tgbc_slen alen = 0;
    tgz2_sock fd;
    int try;

    if (tgz2_sock_init() != 0) return TGZ2_BADF;
    fd = socket(AF_UNIX, SOCK_STREAM, 0);
    if (fd == TGZ2_BADF) return TGZ2_BADF;

    memset(&addr, 0, sizeof(addr));
    addr.sun_family = AF_UNIX;
    if (abs_name != NULL && abs_name[0] != '\0') {
        size_t n = strlen(abs_name);
        if (n + 1 > sizeof(addr.sun_path)) { tgz2_sock_close(fd); return TGZ2_BADF; }
        addr.sun_path[0] = '\0';
        memcpy(addr.sun_path + 1, abs_name, n);
        alen = (tgbc_slen)(offsetof(tgz2_addr, sun_path) + 1 + n);
    } else {
        size_t n = strlen(path);
        if (n + 1 > sizeof(addr.sun_path)) { tgz2_sock_close(fd); return TGZ2_BADF; }
        memcpy(addr.sun_path, path, n);
#ifdef _WIN32
        alen = (tgbc_slen)sizeof(addr);        /* winsock 要求整结构长度 */
#else
        alen = (tgbc_slen)(offsetof(tgz2_addr, sun_path) + n + 1);
#endif
    }

    /* 接收端可能还在启动（Windows 上进程创建有几百毫秒抖动）：重试若干次 */
    for (try = 0; try < g_retries; try++) {
        if (connect(fd, (struct sockaddr *)&addr, alen) == 0) break;
        if (g_verbose) fprintf(stderr, "connect failed err=%d (try %d)\n", tgz2_last_err(), try);
        if (try + 1 < g_retries) tgz2_sleep_us(50 * 1000);
    }
    if (try >= g_retries) {
        tgz2_sock_close(fd);
        return TGZ2_BADF;
    }
    return fd;
}

static int send_bytes(tgz2_sock fd, const void *buf, size_t len)
{
    const char *p = (const char *)buf;
    size_t off = 0;

    while (off < len) {
#ifdef _WIN32
        int n = send(fd, p + off, (int)(len - off), 0);
#else
        int n = (int)send(fd, p + off, len - off, 0);
#endif
        if (n <= 0) {
            if (g_verbose) fprintf(stderr, "send failed errno=%d (%zu/%zu)\n", errno, off, len);
            return -1;
        }
        off += (size_t)n;
    }
    return 0;
}

/* 正常帧：ver/type 固定为 1/REQ，CRC 正确 */
static int send_body(tgz2_sock fd, const char *body)
{
    uint8_t frame[TGB_MAX_FRAME];
    size_t flen = 0;

    if (tgb_frame_pack(TGB_TYPE_REQ, body, (uint32_t)strlen(body),
                       frame, sizeof(frame), &flen) != 0) {
        if (g_verbose) fprintf(stderr, "pack failed (body %zu B)\n", strlen(body));
        return -1;
    }
    if (send_bytes(fd, frame, flen) != 0) return -1;
    g_sent++;
    return 0;
}

/* 手工组帧：用于构造"帧头故意非法"的用例 */
static int send_raw_frame(tgz2_sock fd, uint8_t ver, uint8_t type,
                          const char *body, uint32_t body_len, int corrupt_crc)
{
    uint8_t frame[TGB_MAX_FRAME];
    uint32_t crc;
    size_t total;

    if (body_len > TGB_MAX_BODY) {
        /* 声明超长：头里写真实长度，但不发 body（接收端应当直接拒收） */
        memset(frame, 0, sizeof(frame));
        tgz2_put_u32(frame, TGB_MAGIC);
        frame[4] = ver;
        frame[5] = type;
        tgz2_put_u16(frame + 6, TGB_HDR_LEN);
        tgz2_put_u32(frame + 8, body_len);
        tgz2_put_u32(frame + 12, 0xdeadbeefu);
        return send_bytes(fd, frame, TGB_HDR_LEN) == 0 ? (g_sent++, 0) : -1;
    }

    memset(frame, 0, sizeof(frame));
    tgz2_put_u32(frame, TGB_MAGIC);
    frame[4] = ver;
    frame[5] = type;
    tgz2_put_u16(frame + 6, TGB_HDR_LEN);
    tgz2_put_u32(frame + 8, body_len);
    crc = tgb_crc32(body, body_len);
    if (corrupt_crc) crc ^= 0x1u;
    tgz2_put_u32(frame + 12, crc);
    memcpy(frame + TGB_HDR_LEN, body, body_len);
    total = (size_t)TGB_HDR_LEN + body_len;
    if (send_bytes(fd, frame, total) != 0) return -1;
    g_sent++;
    return 0;
}

/* 读一个 ACK 帧；返回 1 = 读到，0 = 超时/对端关闭，-1 = 帧坏了 */
static int recv_ack(tgz2_sock fd, int timeout_ms, char *body, size_t cap)
{
    uint8_t hdr[TGB_HDR_LEN];
    size_t got = 0;
    long long deadline = now_ms() + timeout_ms;

    while (got < TGB_HDR_LEN) {
        long long left = deadline - now_ms();
        fd_set rs;
        struct timeval tv;
        int n;

        if (left <= 0) return 0;
        FD_ZERO(&rs);
        FD_SET(fd, &rs);
        tv.tv_sec = 0;
        tv.tv_usec = (long)(left * 1000);
#ifdef _WIN32
        n = select(0, &rs, NULL, NULL, &tv);
#else
        n = select((int)fd + 1, &rs, NULL, NULL, &tv);
#endif
        if (n <= 0) return 0;
#ifdef _WIN32
        n = recv(fd, (char *)hdr + got, (int)(TGB_HDR_LEN - got), 0);
#else
        n = (int)recv(fd, hdr + got, TGB_HDR_LEN - got, 0);
#endif
        if (n <= 0) { g_closed = 1; return 0; }
        got += (size_t)n;
    }

    {
        uint32_t body_len = tgz2_get_u32(hdr + 8);
        uint32_t crc = tgz2_get_u32(hdr + 12);

        if (tgz2_get_u32(hdr) != TGB_MAGIC || hdr[4] != TGB_VER_FRAME ||
            hdr[5] != TGB_TYPE_ACK || tgz2_get_u16(hdr + 6) != TGB_HDR_LEN) {
            if (g_verbose) fprintf(stderr, "bad ACK header\n");
            return -1;
        }
        if (body_len > TGB_MAX_BODY) return -1;
        got = 0;
        while (got < body_len) {
            long long left = deadline - now_ms();
            fd_set rs;
            struct timeval tv;
            int n;

            if (left <= 0) return 0;
            FD_ZERO(&rs);
            FD_SET(fd, &rs);
            tv.tv_sec = 0;
            tv.tv_usec = (long)(left * 1000);
#ifdef _WIN32
            n = select(0, &rs, NULL, NULL, &tv);
#else
            n = select((int)fd + 1, &rs, NULL, NULL, &tv);
#endif
            if (n <= 0) return 0;
#ifdef _WIN32
            n = recv(fd, (char *)body + got, (int)(body_len - got), 0);
#else
            n = (int)recv(fd, body + got, body_len - got, 0);
#endif
            if (n <= 0) { g_closed = 1; return 0; }
            got += (size_t)n;
        }
        if (crc != tgb_crc32(body, body_len)) return -1;
        if (body_len >= cap) return -1;
        body[body_len] = '\0';
        g_acks++;
        return 1;
    }
}

/* 非阻塞地把当前已到达的 ACK 收干（真实客户端就是这样边发边收的，
 * 否则 ACK 会堆在 socket 缓冲里，把"背压"误测成"服务端不读"）。 */
static void drain_available(tgz2_sock fd)
{
    for (;;) {
        fd_set rs;
        struct timeval tv;
        char body[TGB_MAX_BODY + 1];
        int n;

        FD_ZERO(&rs);
        FD_SET(fd, &rs);
        tv.tv_sec = 0;
        tv.tv_usec = 0;
#ifdef _WIN32
        n = select(0, &rs, NULL, NULL, &tv);
#else
        n = select((int)fd + 1, &rs, NULL, NULL, &tv);
#endif
        if (n <= 0) return;
        if (recv_ack(fd, 200, body, sizeof(body)) != 1) return;
        printf("ACK %s\n", body);
        fflush(stdout);
    }
}

static void drain_acks(tgz2_sock fd, int timeout_ms_each)
{
    char body[TGB_MAX_BODY + 1];

    for (;;) {
        int r = recv_ack(fd, timeout_ms_each, body, sizeof(body));
        if (r == 1) { printf("ACK %s\n", body); fflush(stdout); continue; }
        break;
    }
}

/* ---- 事件 JSON 构造 ---- */

static int build_event(char *buf, size_t cap, const char *event_id, const char *session,
                       const char *text, int version, int is_final, long long pid,
                       const char *extra_fields, const char *suffix)
{
    int n = snprintf(buf, cap,
                     "{\"version\":%d,\"event_id\":\"%s\",\"event_type\":\"asr_final\","
                     "\"pid\":%lld,\"session_id\":\"%s\",\"text\":\"%s\","
                     "\"is_final\":%s,\"received_at_ms\":%lld%s}%s",
                     version, event_id, pid, session, text,
                     is_final ? "true" : "false", (long long)1763000000000LL,
                     extra_fields ? extra_fields : "", suffix ? suffix : "");
    if (n < 0 || (size_t)n >= cap) return -1;
    return n;
}

int main(int argc, char **argv)
{
    const char *abs_name = "tgz2_asr_bridge";
    const char *sock_path = NULL;
    const char *scenario = "basic";
    int count = 100;
    int timeout_ms = 1500;
    tgz2_sock fd;
    char body[4096];
    long long t0;
    int i;

    for (i = 1; i < argc; i++) {
        const char *a = argv[i];
        const char *v = (i + 1 < argc) ? argv[i + 1] : NULL;

        if (!strcmp(a, "--sock") && v) { abs_name = v; sock_path = NULL; i++; }
        else if (!strcmp(a, "--sock-path") && v) { sock_path = v; abs_name = NULL; i++; }
        else if (!strcmp(a, "--scenario") && v) { scenario = v; i++; }
        else if (!strcmp(a, "--count") && v) { count = atoi(v); i++; }
        else if (!strcmp(a, "--timeout-ms") && v) { timeout_ms = atoi(v); i++; }
        else if (!strcmp(a, "--verbose")) { g_verbose = 1; }
        else if (!strcmp(a, "--connect-retries") && v) { g_retries = atoi(v); i++; }
        else if (!strcmp(a, "--id-prefix") && v) { g_prefix = v; i++; }
        else if (!strcmp(a, "--hold-ms") && v) { g_hold_ms = atoi(v); i++; }
        else {
            fprintf(stderr, "unknown arg: %s\n", a);
            return 1;
        }
    }

    t0 = now_ms();
    fd = sock_connect(abs_name, sock_path);
    if (fd == TGZ2_BADF) {
        printf("{\"type\":\"CLIENT_ERROR\",\"scenario\":\"%s\",\"error\":\"connect\"}\n", scenario);
        return 1;
    }

    if (!strcmp(scenario, "basic")) {
        build_event(body, sizeof(body), "evt-basic-1", "1967001", "天猫精灵现在几点了", 1, 1, 16112, NULL, NULL);
        send_body(fd, body);
    } else if (!strcmp(scenario, "cjk_escaped")) {
        /* 用 \uXXXX 转义传同一句中文：接收端必须解出同样的 UTF-8 */
        snprintf(body, sizeof(body),
                 "{\"version\":1,\"event_id\":\"evt-cjk-esc-1\",\"event_type\":\"asr_final\","
                 "\"pid\":16112,\"session_id\":\"1967002\","
                 "\"text\":\"\\u5929\\u732b\\u7cbe\\u7075\\u73b0\\u5728\\u51e0\\u70b9\\u4e86\","
                 "\"is_final\":true,\"received_at_ms\":1763000000001}");
        send_body(fd, body);
    } else if (!strcmp(scenario, "dup")) {
        build_event(body, sizeof(body), "evt-dup-1", "1967003", "重复事件", 1, 1, 16112, NULL, NULL);
        send_body(fd, body);
        send_body(fd, body);
    } else if (!strcmp(scenario, "same_text_two_sessions")) {
        build_event(body, sizeof(body), "evt-ss-1", "1967004", "今天天气怎么样", 1, 1, 16112, NULL, NULL);
        send_body(fd, body);
        build_event(body, sizeof(body), "evt-ss-2", "1967005", "今天天气怎么样", 1, 1, 16112, NULL, NULL);
        send_body(fd, body);
    } else if (!strcmp(scenario, "batch")) {
        int k;
        for (k = 0; k < count; k++) {
            char eid[64], sid[64];
            snprintf(eid, sizeof(eid), "%s-%04d", g_prefix, k);
            snprintf(sid, sizeof(sid), "19671%02d", k % 10);
            if (build_event(body, sizeof(body), eid, sid, "第几条测试文本", 1, 1, 16112, NULL, NULL) < 0) {
                fprintf(stderr, "build failed at %d\n", k);
                return 1;
            }
            if (send_body(fd, body) != 0) break;
            if ((k & 7) == 7) drain_available(fd);
        }
        drain_available(fd);
    } else if (!strcmp(scenario, "empty_text")) {
        build_event(body, sizeof(body), "evt-empty-text", "1967006", "", 1, 1, 16112, NULL, NULL);
        send_body(fd, body);
    } else if (!strcmp(scenario, "empty_sid")) {
        build_event(body, sizeof(body), "evt-empty-sid", "", "有文本但没会话", 1, 1, 16112, NULL, NULL);
        send_body(fd, body);
    } else if (!strcmp(scenario, "empty_event_id")) {
        build_event(body, sizeof(body), "", "1967007", "有会话但没事件号", 1, 1, 16112, NULL, NULL);
        send_body(fd, body);
    } else if (!strcmp(scenario, "bad_utf8")) {
        /* 0xC3 0x28 是非法 UTF-8（截断的 2 字节序列）；用 \u00c3 + '(' 无法构造，
         * 因此这里直接把原始字节写进 body（JSON 里是裸字节，属于非法 JSON 字节流，
         * 接收端的 UTF-8 校验报 bad_json / bad_utf8 都算正确拒收） */
        size_t n = (size_t)snprintf(body, sizeof(body),
                 "{\"version\":1,\"event_id\":\"evt-bad-utf8\",\"event_type\":\"asr_final\","
                 "\"pid\":16112,\"session_id\":\"1967008\",\"text\":\"AB");
        body[n++] = (char)0xC3;
        body[n++] = (char)0x28;
        n += (size_t)snprintf(body + n, sizeof(body) - n, "\",\"is_final\":true,\"received_at_ms\":1763000000002}");
        send_raw_frame(fd, TGB_VER_FRAME, TGB_TYPE_REQ, body, (uint32_t)n, 0);
        goto skip_body_send;
    } else if (!strcmp(scenario, "overlong_utf8")) {
        /* 0xC0 0xAF = overlong 编码的 '/'，必须拒收 */
        size_t n = (size_t)snprintf(body, sizeof(body),
                 "{\"version\":1,\"event_id\":\"evt-overlong\",\"event_type\":\"asr_final\","
                 "\"pid\":16112,\"session_id\":\"1967009\",\"text\":\"");
        body[n++] = (char)0xC0;
        body[n++] = (char)0xAF;
        n += (size_t)snprintf(body + n, sizeof(body) - n, "\",\"is_final\":true,\"received_at_ms\":1763000000003}");
        send_raw_frame(fd, TGB_VER_FRAME, TGB_TYPE_REQ, body, (uint32_t)n, 0);
        goto skip_body_send;
    } else if (!strcmp(scenario, "lone_surrogate")) {
        snprintf(body, sizeof(body),
                 "{\"version\":1,\"event_id\":\"evt-surrogate\",\"event_type\":\"asr_final\","
                 "\"pid\":16112,\"session_id\":\"1967010\",\"text\":\"\\ud800\","
                 "\"is_final\":true,\"received_at_ms\":1763000000004}");
        send_body(fd, body);
    } else if (!strcmp(scenario, "text_too_long")) {
        char text[TGB_MAX_TEXT_BYTES + 8];
        memset(text, 'a', sizeof(text) - 1);
        text[sizeof(text) - 1] = '\0';           /* 512 字节，超过 511 上限 */
        build_event(body, sizeof(body), "evt-too-long", "1967011", text, 1, 1, 16112, NULL, NULL);
        send_body(fd, body);
    } else if (!strcmp(scenario, "text_max_ok")) {
        char text[TGB_MAX_TEXT_BYTES + 1];
        memset(text, 'a', sizeof(text) - 1);
        text[sizeof(text) - 1] = '\0';           /* 511 字节，正好在上限 */
        build_event(body, sizeof(body), "evt-max-ok", "1967012", text, 1, 1, 16112, NULL, NULL);
        send_body(fd, body);
    } else if (!strcmp(scenario, "bad_version")) {
        build_event(body, sizeof(body), "evt-badver", "1967013", "版本不对", 2, 1, 16112, NULL, NULL);
        send_body(fd, body);
    } else if (!strcmp(scenario, "bad_frame_version")) {
        build_event(body, sizeof(body), "evt-badfver", "1967014", "帧版本不对", 1, 1, 16112, NULL, NULL);
        send_raw_frame(fd, (uint8_t)(TGB_VER_FRAME + 1), TGB_TYPE_REQ, body,
                       (uint32_t)strlen(body), 0);
    } else if (!strcmp(scenario, "bad_crc")) {
        build_event(body, sizeof(body), "evt-badcrc", "1967015", "校验和不对", 1, 1, 16112, NULL, NULL);
        send_raw_frame(fd, TGB_VER_FRAME, TGB_TYPE_REQ, body, (uint32_t)strlen(body), 1);
    } else if (!strcmp(scenario, "bad_magic")) {
        uint8_t frame[TGB_HDR_LEN];
        memset(frame, 0, sizeof(frame));
        tgz2_put_u32(frame, 0x11223344u);
        frame[4] = TGB_VER_FRAME;
        frame[5] = TGB_TYPE_REQ;
        tgz2_put_u16(frame + 6, TGB_HDR_LEN);
        tgz2_put_u32(frame + 8, 2);
        send_bytes(fd, frame, sizeof(frame));
        g_sent++;
    } else if (!strcmp(scenario, "bad_type")) {
        build_event(body, sizeof(body), "evt-badtype", "1967016", "部分结果", 1, 1, 16112, NULL, NULL);
        {
            uint8_t frame[TGB_MAX_FRAME];
            size_t flen = 0;
            tgb_frame_pack(TGB_TYPE_ACK, body, (uint32_t)strlen(body), frame, sizeof(frame), &flen);
            send_bytes(fd, frame, flen);
            g_sent++;
        }
    } else if (!strcmp(scenario, "is_final_false")) {
        build_event(body, sizeof(body), "evt-notfinal", "1967017", "还没说完", 1, 0, 16112, NULL, NULL);
        send_body(fd, body);
    } else if (!strcmp(scenario, "event_type_partial")) {
        snprintf(body, sizeof(body),
                 "{\"version\":1,\"event_id\":\"evt-partial\",\"event_type\":\"asr_partial\","
                 "\"pid\":16112,\"session_id\":\"1967018\",\"text\":\"半句\","
                 "\"is_final\":true,\"received_at_ms\":1763000000005}");
        send_body(fd, body);
    } else if (!strcmp(scenario, "dup_field")) {
        snprintf(body, sizeof(body),
                 "{\"version\":1,\"event_id\":\"evt-dupfield-1\",\"event_id\":\"evt-dupfield-2\","
                 "\"event_type\":\"asr_final\",\"pid\":16112,\"session_id\":\"1967019\","
                 "\"text\":\"两个事件号\",\"is_final\":true,\"received_at_ms\":1763000000006}");
        send_body(fd, body);
    } else if (!strcmp(scenario, "trailing")) {
        build_event(body, sizeof(body), "evt-trailing", "1967020", "尾随垃圾", 1, 1, 16112, NULL, "x");
        send_body(fd, body);
    } else if (!strcmp(scenario, "missing_text")) {
        snprintf(body, sizeof(body),
                 "{\"version\":1,\"event_id\":\"evt-notext\",\"event_type\":\"asr_final\","
                 "\"pid\":16112,\"session_id\":\"1967021\","
                 "\"is_final\":true,\"received_at_ms\":1763000000007}");
        send_body(fd, body);
    } else if (!strcmp(scenario, "oversize_body")) {
        build_event(body, sizeof(body), "evt-oversize", "1967022", "声明超长", 1, 1, 16112, NULL, NULL);
        send_raw_frame(fd, TGB_VER_FRAME, TGB_TYPE_REQ, body, 5000, 0);
        /* 接收端会拒收并断开：drain_acks 里靠 EOF 结束 */
    } else if (!strcmp(scenario, "unknown_field")) {
        build_event(body, sizeof(body), "evt-unknown", "1967023", "带未知字段", 1, 1, 16112,
                    ",\"future_flag\":true,\"future_num\":42,\"future_str\":\"x\"", NULL);
        send_body(fd, body);
    } else if (!strcmp(scenario, "abort_half")) {
        uint8_t junk[8] = { 'T', 'G', 'B', '1', 1, 1, 16, 0 };
        send_bytes(fd, junk, sizeof(junk));
    } else if (!strcmp(scenario, "abort_after_header")) {
        uint8_t frame[TGB_HDR_LEN + 20];
        memset(frame, 0, sizeof(frame));
        tgz2_put_u32(frame, TGB_MAGIC);
        frame[4] = TGB_VER_FRAME;
        frame[5] = TGB_TYPE_REQ;
        tgz2_put_u16(frame + 6, TGB_HDR_LEN);
        tgz2_put_u32(frame + 8, 100);      /* 声明 100 字节 body，只发 20 字节 */
        send_bytes(fd, frame, sizeof(frame));
    } else if (!strcmp(scenario, "noread")) {
        int k;
        for (k = 0; k < count; k++) {
            char eid[64], sid[64];
            snprintf(eid, sizeof(eid), "%s-%04d", g_prefix, k);
            snprintf(sid, sizeof(sid), "19672%02d", k % 10);
            build_event(body, sizeof(body), eid, sid, "客户端不读 ACK", 1, 1, 16112, NULL, NULL);
            if (send_body(fd, body) != 0) break;
        }
    } else if (!strcmp(scenario, "hold")) {
        /* 占着连接不发事件：用来测 max_clients 上限 */
        tgz2_sleep_us((uint64_t)g_hold_ms * 1000ull);
    } else if (!strcmp(scenario, "idle")) {
        /* 连接后什么都不发，只等超时：接收端不应该被一个静默连接影响 */
    } else if (!strcmp(scenario, "resend_after_ack")) {
        build_event(body, sizeof(body), "evt-resend-1", "1967024", "先存后重发", 1, 1, 16112, NULL, NULL);
        send_body(fd, body);
        drain_acks(fd, timeout_ms);
        send_body(fd, body);
    } else {
        fprintf(stderr, "unknown scenario: %s\n", scenario);
        tgz2_sock_close(fd);
        return 1;
    }

skip_body_send:
    drain_acks(fd, timeout_ms);
    tgz2_sock_close(fd);

    printf("{\"type\":\"CLIENT_SUMMARY\",\"scenario\":\"%s\",\"sent\":%d,\"acks\":%d,"
           "\"elapsed_ms\":%lld,\"peer_closed\":%s}\n",
           scenario, g_sent, g_acks, now_ms() - t0, g_closed ? "true" : "false");
    fflush(stdout);
    (void)count;
    return 0;
}
