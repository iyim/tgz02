/* t5c_peer.c -- T5-05C 验收用可控测试对端（一次性夹具，不属于仓库生产代码）
 *
 * 在抽象命名空间监听 tgz2_asr_bridge（必须先停掉真 Bridge），接收发送端的 REQ 帧，
 * 按 mode 决定回什么 ACK，用来制造 ACK 缺失 / 错 id / 坏 CRC / 错类型 /
 * duplicate / 临时 error / 永久 rejected / 帧级 rejected 等异常。
 *
 * 用法：
 *   t5c_peer <mode> [name] [flagfile]
 *
 *   mode = noack      不 ACK；若 flagfile 存在则改为对每帧回 stored（用于"恢复 ACK"）
 *          badid      第 1 帧回错 event_id 的 stored，之后正常 stored
 *          badcrc     第 1 帧回 CRC 被篡改的 ACK，之后正常 stored
 *          badtype    第 1 帧回 type=1（REQ）的"ACK"，之后正常 stored
 *          dup        第 1 帧回 status=duplicate，之后正常 stored
 *          error      前 2 帧回 status=error / code=store_failed，之后正常 stored
 *          reject     第 1 帧回 status=rejected / code=bad_field_type（带 ack id），之后正常 stored
 *          rejectnull 第 1 帧回 status=rejected 且 ack=null / code=bad_crc，之后正常 stored
 *          silent     接受连接后完全不读（用于让发送端写满缓冲/超时）
 *
 * 帧格式与 T5-05A 一致：16 B 头（magic/ver/type/hdr_len/body_len/crc）+ JSON body，
 * 小端，CRC = FNV-1a 32。
 */
#include <errno.h>
#include <fcntl.h>
#include <signal.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <sys/stat.h>
#include <sys/un.h>
#include <unistd.h>

#define MAGIC      0x31424754u
#define HDR_LEN    16
#define MAX_BODY   1024
#define TYPE_REQ   1
#define TYPE_ACK   2

static const char *g_mode = "noack";
static const char *g_flag = NULL;

static volatile sig_atomic_t g_stop = 0;

static void on_term(int s) { (void)s; g_stop = 1; }

static uint16_t rd16(const uint8_t *p) { return (uint16_t)(p[0] | (p[1] << 8)); }
static uint32_t rd32(const uint8_t *p)
{
    return (uint32_t)p[0] | ((uint32_t)p[1] << 8) | ((uint32_t)p[2] << 16) | ((uint32_t)p[3] << 24);
}
static void wr16(uint8_t *p, uint16_t v) { p[0] = (uint8_t)v; p[1] = (uint8_t)(v >> 8); }
static void wr32(uint8_t *p, uint32_t v)
{
    p[0] = (uint8_t)v; p[1] = (uint8_t)(v >> 8);
    p[2] = (uint8_t)(v >> 16); p[3] = (uint8_t)(v >> 24);
}

static uint32_t fnv1a(const void *data, size_t len)
{
    const uint8_t *p = (const uint8_t *)data;
    uint32_t h = 2166136261u;
    size_t i;

    for (i = 0; i < len; i++) { h ^= (uint32_t)p[i]; h *= 16777619u; }
    return h;
}

/* 从 body 里抠出 "event_id":"..." —— 夹具够用即可，不做完整 JSON 解析 */
static int pick_id(const char *body, char *out, size_t cap)
{
    const char *p = strstr(body, "\"event_id\":\"");
    size_t n = 0;

    if (p == NULL) { out[0] = '\0'; return -1; }
    p += 12;
    while (*p && *p != '"' && n + 1 < cap) out[n++] = *p++;
    out[n] = '\0';
    return 0;
}

static int send_all(int fd, const uint8_t *buf, size_t len)
{
    size_t off = 0;

    while (off < len) {
        ssize_t n = send(fd, buf + off, len - off, MSG_NOSIGNAL);
        if (n > 0) { off += (size_t)n; continue; }
        if (n < 0 && (errno == EINTR)) continue;
        return -1;
    }
    return 0;
}

static int send_ack(int fd, const char *id, const char *status, const char *code,
                    int tweak)
{
    char body[MAX_BODY];
    uint8_t frame[HDR_LEN + MAX_BODY];
    size_t blen;
    int type = TYPE_ACK;
    uint32_t crc;

    if (id == NULL || id[0] == '\0') {
        blen = (size_t)snprintf(body, sizeof(body),
                                "{\"version\":1,\"ack\":null,\"status\":\"%s\",\"code\":\"%s\","
                                "\"dup_count\":0,\"events_stored\":0}",
                                status, code);
    } else {
        blen = (size_t)snprintf(body, sizeof(body),
                                "{\"version\":1,\"ack\":\"%s\",\"status\":\"%s\",\"code\":\"%s\","
                                "\"dup_count\":0,\"events_stored\":1}",
                                id, status, code);
    }
    if (blen >= sizeof(body)) return -1;

    crc = fnv1a(body, blen);
    if (tweak == 1) crc ^= 0xFFFFFFFFu;   /* badcrc：故意写错 CRC */
    if (tweak == 2) type = TYPE_REQ;      /* badtype：写成请求类型 */

    wr32(frame + 0, MAGIC);
    frame[4] = 1;
    frame[5] = (uint8_t)type;
    wr16(frame + 6, HDR_LEN);
    wr32(frame + 8, (uint32_t)blen);
    wr32(frame + 12, crc);
    memcpy(frame + HDR_LEN, body, blen);

    printf("TX id=%s status=%s code=%s tweak=%d bytes=%zu\n",
           (id && id[0]) ? id : "(null)", status, code, tweak, HDR_LEN + blen);
    fflush(stdout);
    return send_all(fd, frame, HDR_LEN + blen);
}

static int ack_enabled(void)
{
    if (g_flag == NULL) return 0;
    return access(g_flag, F_OK) == 0;
}

int main(int argc, char **argv)
{
    const char *name = "tgz2_asr_bridge";
    struct sockaddr_un a;
    size_t nlen;
    int lfd;
    long frames_total = 0;

    setvbuf(stdout, NULL, _IOLBF, 0);
    signal(SIGTERM, on_term);
    signal(SIGINT, on_term);
    signal(SIGPIPE, SIG_IGN);

    if (argc >= 2) g_mode = argv[1];
    if (argc >= 3) name = argv[2];
    if (argc >= 4) g_flag = argv[3];

    nlen = strlen(name);
    lfd = socket(AF_UNIX, SOCK_STREAM, 0);
    if (lfd < 0) { printf("socket errno=%d\n", errno); return 1; }

    memset(&a, 0, sizeof(a));
    a.sun_family = AF_UNIX;
    a.sun_path[0] = '\0';
    memcpy(a.sun_path + 1, name, nlen);

    if (bind(lfd, (struct sockaddr *)&a,
             (socklen_t)(offsetof(struct sockaddr_un, sun_path) + 1 + nlen)) != 0) {
        printf("bind errno=%d (%s) — 真 Bridge 还在跑？\n", errno, strerror(errno));
        return 1;
    }
    if (listen(lfd, 8) != 0) { printf("listen errno=%d\n", errno); return 1; }
    printf("peer listening abstract:%s mode=%s flag=%s\n", name, g_mode,
           g_flag ? g_flag : "-");

    while (!g_stop) {
        int cfd = accept(lfd, NULL, NULL);
        uint8_t buf[HDR_LEN + MAX_BODY + 8];
        size_t have = 0;

        if (cfd < 0) {
            if (errno == EINTR) continue;
            printf("accept errno=%d\n", errno);
            break;
        }
        printf("accepted cfd=%d\n", cfd);

        if (!strcmp(g_mode, "silent")) {
            /* 不读、不写、不关：发送端会一直等 */
            while (!g_stop) sleep(1);
            close(cfd);
            continue;
        }

        while (!g_stop) {
            ssize_t n = recv(cfd, buf + have, sizeof(buf) - have, 0);
            if (n > 0) {
                size_t off = 0;

                have += (size_t)n;
                for (;;) {
                    uint32_t blen;
                    char id[128];

                    if (have - off < HDR_LEN) break;
                    if (rd32(buf + off) != MAGIC) {
                        printf("bad magic from peer client, drop conn\n");
                        have = 0;
                        break;
                    }
                    blen = rd32(buf + off + 8);
                    if (blen > MAX_BODY) { printf("oversize\n"); have = 0; break; }
                    if (have - off < HDR_LEN + blen) break;

                    buf[off + HDR_LEN + blen] = '\0';
                    pick_id((const char *)(buf + off + HDR_LEN), id, sizeof(id));
                    frames_total++;
                    printf("RX n=%ld id=%s bytes=%zu mode=%s\n",
                           frames_total, id[0] ? id : "(none)", HDR_LEN + blen, g_mode);
                    fflush(stdout);

                    if (!strcmp(g_mode, "noack")) {
                        if (ack_enabled()) {
                            if (send_ack(cfd, id, "stored", "ok", 0) != 0) { have = 0; break; }
                        }
                    } else if (!strcmp(g_mode, "badid")) {
                        if (frames_total == 1) {
                            char wrong[160];
                            snprintf(wrong, sizeof(wrong), "%s-g9", id);
                            send_ack(cfd, wrong, "stored", "ok", 0);
                        } else {
                            send_ack(cfd, id, "stored", "ok", 0);
                        }
                    } else if (!strcmp(g_mode, "badcrc")) {
                        if (frames_total == 1) send_ack(cfd, id, "stored", "ok", 1);
                        else send_ack(cfd, id, "stored", "ok", 0);
                    } else if (!strcmp(g_mode, "badtype")) {
                        if (frames_total == 1) send_ack(cfd, id, "stored", "ok", 2);
                        else send_ack(cfd, id, "stored", "ok", 0);
                    } else if (!strcmp(g_mode, "dup")) {
                        if (frames_total == 1) send_ack(cfd, id, "duplicate", "dup_event_id", 0);
                        else send_ack(cfd, id, "stored", "ok", 0);
                    } else if (!strcmp(g_mode, "error")) {
                        if (frames_total <= 2) send_ack(cfd, id, "error", "store_failed", 0);
                        else send_ack(cfd, id, "stored", "ok", 0);
                    } else if (!strcmp(g_mode, "reject")) {
                        if (frames_total == 1) send_ack(cfd, id, "rejected", "bad_field_type", 0);
                        else send_ack(cfd, id, "stored", "ok", 0);
                    } else if (!strcmp(g_mode, "rejectnull")) {
                        if (frames_total == 1) send_ack(cfd, NULL, "rejected", "bad_crc", 0);
                        else send_ack(cfd, id, "stored", "ok", 0);
                    } else {
                        send_ack(cfd, id, "stored", "ok", 0);
                    }

                    off += HDR_LEN + blen;
                }
                if (off > 0 && off < have) memmove(buf, buf + off, have - off);
                if (off > 0) have -= off;
                if (have == 0 && !strcmp(g_mode, "noack") && !ack_enabled()) {
                    /* 继续等帧；连接保持 */
                }
            } else if (n == 0) {
                printf("client closed\n");
                break;
            } else if (errno == EINTR) {
                continue;
            } else if (errno == EAGAIN || errno == EWOULDBLOCK) {
                usleep(20000);
            } else {
                printf("recv errno=%d\n", errno);
                break;
            }
        }
        close(cfd);
        printf("connection done, frames_total=%ld\n", frames_total);
    }

    close(lfd);
    printf("peer exit\n");
    return 0;
}
