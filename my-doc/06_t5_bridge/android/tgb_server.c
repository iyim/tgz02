/*
 * tgb_server.c -- 见 tgb_server.h
 *
 * socket 类型/端口工具复用 03_uds_test/tgz2_frame.h 的平台薄封装
 * （tgz2_sock / tgz2_addr / tgz2_set_nonblock / tgz2_would_block），
 * 与 T3/T4 用的是同一份，避免第三套 sockaddr_un 兼容代码。
 */
#if !defined(_WIN32) && !defined(_POSIX_C_SOURCE)
#  define _POSIX_C_SOURCE 200809L      /* clock_gettime */
#endif

#include "tgb_server.h"

#include "t5_util.h"
#include "../../03_uds_test/tgz2_frame.h"

#include <errno.h>
#include <signal.h>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#ifdef _WIN32
#  include <direct.h>
#  include <process.h>
#  define TGB_GETPID() ((long)_getpid())
typedef int tgb_slen;
#else
#  include <sys/select.h>
#  include <unistd.h>
#  define TGB_GETPID() ((long)getpid())
typedef socklen_t tgb_slen;
#endif

static volatile sig_atomic_t g_stop = 0;

void tgb_server_request_stop(void)
{
    g_stop = 1;
}

/* ---------------- 基础工具 ---------------- */

static long long wall_ms(void)
{
#ifdef _WIN32
    FILETIME ft;
    ULARGE_INTEGER u;
    GetSystemTimeAsFileTime(&ft);
    u.LowPart = ft.dwLowDateTime;
    u.HighPart = ft.dwHighDateTime;
    return (long long)(u.QuadPart / 10000ULL) - 11644473600000LL;
#else
    struct timespec ts;
    if (clock_gettime(CLOCK_REALTIME, &ts) != 0) return 0;
    return (long long)ts.tv_sec * 1000LL + (long long)(ts.tv_nsec / 1000000L);
#endif
}

void tgb_config_defaults(tgb_config *c)
{
    memset(c, 0, sizeof(*c));
    snprintf(c->sock_name, sizeof(c->sock_name), "tgz2_asr_bridge");
    snprintf(c->work_dir, sizeof(c->work_dir), "/data/local/tmp/t5_bridge/work");
    c->max_clients = TGB_MAX_CLIENTS_DEFAULT;
    c->dedup_cap = 8192;
    c->fault_after_writes = -1;
    c->status_interval_ms = 1000;
    c->verbose = 0;
}

int tgb_config_check(const tgb_config *c, char *err, size_t errlen)
{
    if (c->sock_name[0] == '\0' && c->sock_path[0] == '\0') {
        if (err && errlen) snprintf(err, errlen, "need --sock NAME or --sock-path PATH");
        return -1;
    }
    if (c->sock_name[0] != '\0' && c->sock_path[0] != '\0') {
        if (err && errlen) snprintf(err, errlen, "--sock and --sock-path are mutually exclusive");
        return -1;
    }
    /* sun_path 只有 108 字节：超长的名字在这里就拒掉，不要"悄悄截断后 bind 到别的名字上" */
    if (strlen(c->sock_name) > 90) {
        if (err && errlen) snprintf(err, errlen, "--sock name too long (<=90)");
        return -1;
    }
    if (strlen(c->sock_path) > 100) {
        if (err && errlen) snprintf(err, errlen, "--sock-path too long (<=100)");
        return -1;
    }
    if (c->max_clients < 1 || c->max_clients > TGB_MAX_CLIENTS_LIMIT) {
        if (err && errlen) snprintf(err, errlen, "--max-clients must be 1..%d", TGB_MAX_CLIENTS_LIMIT);
        return -1;
    }
    if (c->dedup_cap < 64 || c->dedup_cap > (1 << 20)) {
        if (err && errlen) snprintf(err, errlen, "--dedup-cap must be 64..1048576");
        return -1;
    }
    if (c->work_dir[0] == '\0') {
        if (err && errlen) snprintf(err, errlen, "need --work-dir DIR");
        return -1;
    }
    return 0;
}

/* ---------------- 连接 ---------------- */

typedef struct {
    tgz2_sock     fd;
    int           used;
    uint8_t       in[TGB_MAX_FRAME];
    size_t        inlen;
    uint8_t       out[TGB_OUT_BUF];
    size_t        outlen;
    unsigned long frames;
} tgb_conn;

typedef struct {
    tgb_config    cfg;
    tgz2_sock     listen_fd;
    tgb_conn      conns[TGB_MAX_CLIENTS_LIMIT];
    int           nconn;
    tgb_store     store;
    tgb_dedup    *dedup;
    tgb_stats     st;
    unsigned long seq;
    long long     last_status_ms;
    char          status_path[TGB_PATH_MAX];
    int           dry_store;       /* 用于状态文件写失败时不再反复报错 */
} tgb_srv;

static size_t ack_body(char *buf, size_t cap, const char *event_id,
                       const char *status, const char *code, const char *field,
                       unsigned long dup_count, unsigned long stored_total,
                       long long recv_at, long long stored_at)
{
    char idpart[TGB_MAX_ID_LEN * 2 + 8];
    int n;

    if (event_id != NULL && event_id[0] != '\0') {
        char esc[TGB_MAX_ID_LEN * 2 + 4];
        t5_json_escape(esc, sizeof(esc), event_id);
        snprintf(idpart, sizeof(idpart), "\"%s\"", esc);
    } else {
        snprintf(idpart, sizeof(idpart), "null");
    }

    n = snprintf(buf, cap,
                 "{\"version\":1,\"ack\":%s,\"status\":\"%s\",\"code\":\"%s\","
                 "\"dup_count\":%lu,\"events_stored\":%lu,\"recv_at_ms\":%lld,"
                 "\"stored_at_ms\":%lld",
                 idpart, status, code, dup_count, stored_total, recv_at, stored_at);
    if (n < 0 || (size_t)n >= cap) return 0;
    if (field != NULL) {
        int m = snprintf(buf + n, cap - (size_t)n, ",\"field\":\"%s\"", field);
        if (m < 0 || (size_t)(n + m) >= cap) return 0;
        n += m;
    }
    if ((size_t)n + 1 >= cap) return 0;
    buf[n++] = '}';
    buf[n] = '\0';
    return (size_t)n;
}

static int conn_queue_ack(tgb_srv *s, tgb_conn *c, const char *body, size_t blen)
{
    size_t flen = 0;

    (void)s;
    if (c->outlen >= TGB_OUT_BUF) return -1;
    if (tgb_frame_pack(TGB_TYPE_ACK, body, (uint32_t)blen,
                       c->out + c->outlen, TGB_OUT_BUF - c->outlen, &flen) != 0)
        return -1;
    c->outlen += flen;
    return 0;
}

static int conn_flush(tgb_srv *s, tgb_conn *c)
{
    (void)s;
    while (c->outlen > 0) {
        int n;
#ifdef _WIN32
        n = send(c->fd, (const char *)c->out, (int)c->outlen, 0);
#else
        n = (int)send(c->fd, c->out, c->outlen, 0);
#endif
        if (n < 0) {
            if (tgz2_would_block()) return 0;      /* 对端还没读走：留到下次 select */
            return -1;
        }
        if (n == 0) return -1;
        if ((size_t)n >= c->outlen) {
            c->outlen = 0;
            break;
        }
        memmove(c->out, c->out + n, c->outlen - (size_t)n);
        c->outlen -= (size_t)n;
    }
    return 0;
}

static void conn_close(tgb_srv *s, tgb_conn *c)
{
    if (!c->used) return;
    tgz2_sock_close(c->fd);
    c->used = 0;
    c->inlen = 0;
    c->outlen = 0;
    s->nconn--;
    s->st.clients_closed++;
}

static void send_ack(tgb_srv *s, tgb_conn *c, const char *event_id,
                          const char *status, const char *code, const char *field,
                          long long recv_at, long long stored_at)
{
    char body[TGB_MAX_BODY];
    size_t n = ack_body(body, sizeof(body), event_id, status, code, field,
                        s->st.duplicate, s->st.stored, recv_at, stored_at);
    if (n > 0 && conn_queue_ack(s, c, body, n) != 0) {
        s->st.client_overflow++;
        conn_close(s, c);
    }
}

/* ---------------- 事件处理 ---------------- */

static int handle_event(tgb_srv *s, tgb_conn *c, const char *body, size_t len,
                        long long recv_at)
{
    tgb_event ev;
    const char *field = NULL;
    tgb_eval r;
    char rec[TGB_REC_LINE_MAX];
    char err[200];
    int rl;
    long long stored_at;

    s->st.frames++;
    c->frames++;

    r = tgb_event_parse(body, len, &ev, &field);
    if (r != TGB_E_OK) {
        s->st.rejected++;
        s->st.reject_by_code[r]++;
        if (s->cfg.verbose)
            fprintf(stderr, "[tgb] reject code=%s field=%s\n",
                    tgb_eval_name(r), field != NULL ? field : "-");
        /* event_id 已解析且字符集合法就回带：发送端要对账是哪一条被拒；
         * 解析不出可信 event_id 时回 null（绝不猜一个 id 回去）。 */
        send_ack(s, c, tgb_event_id_ok(ev.event_id) ? ev.event_id : NULL,
                       "rejected", tgb_eval_name(r), field, recv_at, 0);
        return c->used ? 0 : -1;
    }

    if (tgb_dedup_contains(s->dedup, ev.event_id)) {
        s->st.duplicate++;
        send_ack(s, c, ev.event_id, "duplicate", "duplicate_event_id", NULL,
                       recv_at, 0);
        return c->used ? 0 : -1;
    }

    if (s->store.failed) {
        s->st.store_errors++;
        send_ack(s, c, ev.event_id, "error", "store_unavailable", NULL, recv_at, 0);
        return c->used ? 0 : -1;
    }

    stored_at = wall_ms();
    rl = tgb_event_to_record(&ev, recv_at, stored_at, s->seq + 1, rec, sizeof(rec));
    if (rl < 0) {
        s->st.store_errors++;
        send_ack(s, c, ev.event_id, "error", "record_too_long", NULL, recv_at, 0);
        return c->used ? 0 : -1;
    }

    if (tgb_store_append(&s->store, rec, (size_t)rl, err, sizeof(err)) != 0) {
        s->st.store_errors++;
        if (s->cfg.verbose) fprintf(stderr, "[tgb] store append failed: %s\n", err);
        send_ack(s, c, ev.event_id, "error",
                       s->store.failed ? "store_unavailable" : "store_failed",
                       NULL, recv_at, 0);
        return c->used ? 0 : -1;
    }

    /* 到这里记录已经 fsync 落盘：先记账，再回 success ACK */
    s->seq++;
    (void)tgb_dedup_add(s->dedup, ev.event_id);
    s->st.stored++;
    if (s->cfg.verbose)
        fprintf(stderr, "[tgb] stored seq=%lu session=%s bytes=%d chars=%d\n",
                s->seq, ev.session_id, ev.text_bytes, ev.text_chars);
    send_ack(s, c, ev.event_id, "stored", "ok", NULL, recv_at, stored_at);
    return c->used ? 0 : -1;
}

static void frame_reject(tgb_srv *s, tgb_conn *c, int rc, long long recv_at)
{
    s->st.frame_errors++;
    s->st.rejected++;
    if (s->cfg.verbose) fprintf(stderr, "[tgb] frame reject: %s\n", tgb_frame_err_name(rc));
    send_ack(s, c, NULL, "rejected", tgb_frame_err_name(rc), NULL, recv_at, 0);
    if (c->used) (void)conn_flush(s, c);
}

/* 把输入缓冲里所有完整帧处理掉；返回 -1 = 连接必须关闭 */
static int conn_process(tgb_srv *s, tgb_conn *c, long long recv_at)
{
    for (;;) {
        tgb_hdr h;
        int rc;
        size_t need;

        if (c->inlen < TGB_HDR_LEN) return 0;
        rc = tgb_hdr_decode(c->in, c->inlen, &h);
        if (rc == TGB_ERR_SHORT) return 0;
        if (rc != TGB_FRAME_OK) {
            frame_reject(s, c, rc, recv_at);
            return -1;                 /* 帧头都不自洽，流已经无法重新对齐 */
        }
        need = (size_t)TGB_HDR_LEN + (size_t)h.body_len;
        if (c->inlen < need) {
            if (c->inlen >= sizeof(c->in)) {   /* 防御：缓冲满却凑不出一帧 */
                frame_reject(s, c, TGB_ERR_OVERSIZE, recv_at);
                return -1;
            }
            return 0;                      /* 等 body 到齐 */
        }
        rc = tgb_body_check(c->in, &h, c->inlen);
        if (rc != TGB_FRAME_OK) {
            frame_reject(s, c, rc, recv_at);
            return -1;
        }
        if (handle_event(s, c, (const char *)(c->in + TGB_HDR_LEN), h.body_len,
                         recv_at) != 0)
            return -1;
        memmove(c->in, c->in + need, c->inlen - need);
        c->inlen -= need;
        if (conn_flush(s, c) != 0) return -1;
    }
}

static int conn_read(tgb_srv *s, tgb_conn *c)
{
    int round;

    for (round = 0; round < 16; round++) {
        size_t space = sizeof(c->in) - c->inlen;
        int n;

        if (space == 0) {
            s->st.client_overflow++;
            return -1;
        }
        n = (int)recv(c->fd, (char *)(c->in + c->inlen), (int)space, 0);
        if (n == 0) {
            s->st.client_aborts++;          /* 对端正常/异常关闭 */
            return -1;
        }
        if (n < 0) {
            if (tgz2_would_block()) return 0;
            s->st.client_aborts++;
            return -1;
        }
        c->inlen += (size_t)n;
        if (conn_process(s, c, wall_ms()) != 0) return -1;
        if ((size_t)n < space) return 0;
    }
    return 0;
}

/* ---------------- 监听与主循环 ---------------- */

static int bind_listen(tgb_srv *s, char *err, size_t errlen)
{
    tgz2_addr addr;
    tgb_slen alen = 0;

    s->listen_fd = socket(AF_UNIX, SOCK_STREAM, 0);
    if (s->listen_fd == TGZ2_BADF) {
        snprintf(err, errlen, "socket() failed err=%d", tgz2_last_err());
        return -1;
    }

    memset(&addr, 0, sizeof(addr));
    addr.sun_family = AF_UNIX;

    if (s->cfg.sock_name[0] != '\0') {
        size_t n = strlen(s->cfg.sock_name);
        if (n + 1 > sizeof(addr.sun_path)) {
            snprintf(err, errlen, "abstract name too long");
            return -1;
        }
#ifdef _WIN32
        snprintf(err, errlen, "abstract namespace is not available on this platform; use --sock-path");
        return -1;
#else
        addr.sun_path[0] = '\0';
        memcpy(addr.sun_path + 1, s->cfg.sock_name, n);
        alen = (tgb_slen)(offsetof(tgz2_addr, sun_path) + 1 + n);
#endif
    } else {
        size_t n = strlen(s->cfg.sock_path);
        if (n + 1 > sizeof(addr.sun_path)) {
            snprintf(err, errlen, "socket path too long");
            return -1;
        }
        memcpy(addr.sun_path, s->cfg.sock_path, n);
#ifdef _WIN32
        /* winsock 的 AF_UNIX 按「整个 sockaddr」传长度（与 T3 的 uds_sink.c 一致，已实测） */
        alen = (tgb_slen)sizeof(addr);
#else
        alen = (tgb_slen)(offsetof(tgz2_addr, sun_path) + n + 1);
        (void)unlink(s->cfg.sock_path);         /* 清掉上次崩溃留下的 socket 文件 */
#endif
    }

    if (bind(s->listen_fd, (struct sockaddr *)&addr, alen) != 0) {
        snprintf(err, errlen, "bind failed errno=%d err=%d", errno, tgz2_last_err());
        return -1;
    }
    if (listen(s->listen_fd, 16) != 0) {
        snprintf(err, errlen, "listen failed errno=%d", errno);
        return -1;
    }
    if (tgz2_set_nonblock(s->listen_fd) != 0) {
        snprintf(err, errlen, "nonblock listen failed errno=%d", errno);
        return -1;
    }
    return 0;
}

static void accept_all(tgb_srv *s)
{
    for (;;) {
        tgz2_sock fd = accept(s->listen_fd, NULL, NULL);
        int i, slot = -1;

        if (fd == TGZ2_BADF) {
            if (tgz2_would_block()) return;
            return;
        }
        if (tgz2_set_nonblock(fd) != 0) {
            tgz2_sock_close(fd);
            continue;
        }
        {
            /* ACK 不是数据面：故意把发送缓冲压小，客户端长期不读 ACK 时能很快被发现并断开，
             * 而不是在内核里悄悄堆到几十 KB 之后才溢出（见 README §5 背压说明）。 */
            int snd = TGB_SOCK_SNDBUF;
#ifdef _WIN32
            (void)setsockopt(fd, SOL_SOCKET, SO_SNDBUF, (const char *)&snd, sizeof(snd));
#else
            (void)setsockopt(fd, SOL_SOCKET, SO_SNDBUF, &snd, sizeof(snd));
#endif
        }
        if (s->nconn >= s->cfg.max_clients) {
            /* 连接数上限：直接关掉。客户端会重连并重发（幂等，安全）。 */
            s->st.client_overflow++;
            tgz2_sock_close(fd);
            continue;
        }
        for (i = 0; i < TGB_MAX_CLIENTS_LIMIT; i++) {
            if (!s->conns[i].used) { slot = i; break; }
        }
        if (slot < 0) {
            s->st.client_overflow++;
            tgz2_sock_close(fd);
            continue;
        }
        memset(&s->conns[slot], 0, sizeof(s->conns[slot]));
        s->conns[slot].fd = fd;
        s->conns[slot].used = 1;
        s->nconn++;
        s->st.clients_accepted++;
        if (s->cfg.verbose) fprintf(stderr, "[tgb] client connected slot=%d\n", slot);
    }
}

static void write_status(tgb_srv *s, const char *state)
{
    char buf[2048];
    char tstr[32];
    char sock_esc[256];
    char dir_esc[TGB_PATH_MAX * 2];
    const char *sockdesc;
    FILE *f;

    t5_time_str(tstr, sizeof(tstr));
    if (s->cfg.sock_name[0] != '\0') {
        char tmp[128];
        snprintf(tmp, sizeof(tmp), "abstract:%s", s->cfg.sock_name);
        t5_json_escape(sock_esc, sizeof(sock_esc), tmp);
    } else {
        t5_json_escape(sock_esc, sizeof(sock_esc), s->cfg.sock_path);
    }
    t5_json_escape(dir_esc, sizeof(dir_esc), s->cfg.work_dir);
    sockdesc = sock_esc;

    snprintf(buf, sizeof(buf),
             "{\"state\":\"%s\",\"pid\":%ld,\"sock\":\"%s\",\"work_dir\":\"%s\","
             "\"events_stored\":%lu,\"duplicates\":%lu,\"rejected\":%lu,\"frames\":%lu,"
             "\"clients\":%d,\"clients_accepted\":%lu,\"clients_closed\":%lu,"
             "\"client_aborts\":%lu,\"client_overflow\":%lu,\"frame_errors\":%lu,"
             "\"store_errors\":%lu,"
             "\"replay_lines\":%lu,\"bad_lines\":%lu,"
             "\"truncated_bytes\":%lld,\"dedup_size\":%lu,\"dedup_evicted\":%lu,"
             "\"store_failed\":%s,\"updated_at\":\"%s\"}\n",
             state, TGB_GETPID(), sockdesc, dir_esc,
             s->st.stored, s->st.duplicate, s->st.rejected, s->st.frames,
             s->nconn, s->st.clients_accepted, s->st.clients_closed,
             s->st.client_aborts, s->st.client_overflow, s->st.frame_errors,
             s->st.store_errors,
             s->st.replay_lines, s->st.replay_bad,
             s->st.truncated_bytes, tgb_dedup_size(s->dedup),
             tgb_dedup_evicted(s->dedup),
             s->store.failed ? "true" : "false", tstr);

    f = fopen(s->status_path, "wb");
    if (f == NULL) {
        if (!s->dry_store) {
            s->dry_store = 1;
            fprintf(stderr, "[tgb] warn: cannot write status file %s\n", s->status_path);
        }
        return;
    }
    fwrite(buf, 1, strlen(buf), f);
    fclose(f);
}

static void print_stats(const tgb_srv *s, const char *tag)
{
    printf("{\"type\":\"STATS\",\"tag\":\"%s\",\"frames\":%lu,\"stored\":%lu,"
           "\"duplicate\":%lu,\"rejected\":%lu,\"frame_errors\":%lu,"
           "\"store_errors\":%lu,\"clients_accepted\":%lu,\"clients_closed\":%lu,"
           "\"client_aborts\":%lu,\"client_overflow\":%lu,"
           "\"replay_lines\":%lu,\"replay_bad\":%lu,\"truncated_bytes\":%lld,"
           "\"dedup_evicted\":%lu,\"store_failed\":%s}\n",
           tag, s->st.frames, s->st.stored, s->st.duplicate, s->st.rejected,
           s->st.frame_errors, s->st.store_errors, s->st.clients_accepted,
           s->st.clients_closed, s->st.client_aborts, s->st.client_overflow,
           s->st.replay_lines, s->st.replay_bad, s->st.truncated_bytes,
           tgb_dedup_evicted(s->dedup), s->store.failed ? "true" : "false");
    fflush(stdout);
}

static int srv_loop(tgb_srv *s)
{
    while (!g_stop) {
        fd_set rs, ws;
        struct timeval tv;
        int maxfd = 0;
        int i, nready;

        FD_ZERO(&rs);
        FD_ZERO(&ws);
        FD_SET(s->listen_fd, &rs);
        maxfd = (int)s->listen_fd;
        for (i = 0; i < TGB_MAX_CLIENTS_LIMIT; i++) {
            tgb_conn *c = &s->conns[i];
            if (!c->used) continue;
            FD_SET(c->fd, &rs);
            if (c->outlen > 0) FD_SET(c->fd, &ws);
            if ((int)c->fd > maxfd) maxfd = (int)c->fd;
        }

        tv.tv_sec = 0;
        tv.tv_usec = 200 * 1000;
#ifdef _WIN32
        nready = select(0, &rs, &ws, NULL, &tv);
        if (nready == SOCKET_ERROR) return -1;
#else
        nready = select(maxfd + 1, &rs, &ws, NULL, &tv);
        if (nready < 0) {
            if (errno == EINTR) continue;
            return -1;
        }
#endif
        if (nready > 0) {
            if (FD_ISSET(s->listen_fd, &rs)) accept_all(s);
            for (i = 0; i < TGB_MAX_CLIENTS_LIMIT; i++) {
                tgb_conn *c = &s->conns[i];
                if (!c->used) continue;
                if (FD_ISSET(c->fd, &ws)) {
                    if (conn_flush(s, c) != 0) { conn_close(s, c); continue; }
                }
                if (FD_ISSET(c->fd, &rs)) {
                    if (conn_read(s, c) != 0) conn_close(s, c);
                }
            }
        }

        {
            long long now = t5_now_ms();
            if (s->cfg.status_interval_ms > 0 &&
                now - s->last_status_ms >= (long long)s->cfg.status_interval_ms) {
                write_status(s, "running");
                s->last_status_ms = now;
            }
        }
    }
    return 0;
}

/* ---------------- 启动 / 收尾 ---------------- */

static int replay_cb(void *ud, const char *line, size_t len)
{
    tgb_srv *s = (tgb_srv *)ud;
    tgb_event ev;
    const char *field = NULL;

    if (tgb_event_parse(line, len, &ev, &field) != TGB_E_OK) return -1;
    return tgb_dedup_add(s->dedup, ev.event_id) < 0 ? -1 : 0;
}

int tgb_server_run(const tgb_config *cfg, tgb_stats *out)
{
    tgb_srv *s;
    char err[256];
    char sockdesc[160];
    int rc = -1;

    if (cfg == NULL) return -1;
    s = (tgb_srv *)calloc(1, sizeof(*s));
    if (s == NULL) return -1;
    s->cfg = *cfg;
    s->listen_fd = TGZ2_BADF;
    s->store.fd = -1;

    if (tgb_config_check(cfg, err, sizeof(err)) != 0) {
        fprintf(stderr, "[tgb] config error: %s\n", err);
        free(s);
        return -1;
    }
    if (tgz2_sock_init() != 0) {
        fprintf(stderr, "[tgb] socket init failed\n");
        free(s);
        return -1;
    }
    if (t5_mkdir_p(cfg->work_dir) != 0 && !t5_is_dir(cfg->work_dir)) {
        fprintf(stderr, "[tgb] cannot create work dir %s\n", cfg->work_dir);
        free(s);
        return -1;
    }
    snprintf(s->status_path, sizeof(s->status_path), "%s/%s", cfg->work_dir, TGB_STATUS_FILE);

    /* 1) 修复尾部半条记录（崩溃可能留下没有换行符的最后一行） */
    if (tgb_store_repair(cfg->work_dir, TGB_EVENTS_FILE, &s->st.truncated_bytes,
                         err, sizeof(err)) != 0) {
        fprintf(stderr, "[tgb] store repair failed: %s\n", err);
        free(s);
        return -1;
    }

    /* 2) 回放历史，重建去重表（去重状态完全来自落盘数据） */
    s->dedup = tgb_dedup_new(cfg->dedup_cap);
    if (s->dedup == NULL) {
        fprintf(stderr, "[tgb] dedup alloc failed\n");
        free(s);
        return -1;
    }
    if (tgb_store_replay(cfg->work_dir, TGB_EVENTS_FILE, replay_cb, s,
                         &s->st.replay_lines, &s->st.replay_bad,
                         err, sizeof(err)) != 0) {
        fprintf(stderr, "[tgb] replay failed: %s\n", err);
        tgb_dedup_free(s->dedup);
        free(s);
        return -1;
    }

    /* 3) 追加打开 events.jsonl */
    if (tgb_store_open(&s->store, cfg->work_dir, TGB_EVENTS_FILE,
                       cfg->fault_after_writes, err, sizeof(err)) != 0) {
        fprintf(stderr, "[tgb] store open failed: %s\n", err);
        tgb_dedup_free(s->dedup);
        free(s);
        return -1;
    }

    /* 4) 监听 */
    if (bind_listen(s, err, sizeof(err)) != 0) {
        fprintf(stderr, "[tgb] listen failed: %s\n", err);
        tgb_store_close(&s->store);
        tgb_dedup_free(s->dedup);
        free(s);
        return -1;
    }

    if (cfg->sock_name[0] != '\0') snprintf(sockdesc, sizeof(sockdesc), "abstract:%s", cfg->sock_name);
    else snprintf(sockdesc, sizeof(sockdesc), "path:%s", cfg->sock_path);

    {
        char sock_esc[320];
        char dir_esc[TGB_PATH_MAX * 2];
        t5_json_escape(sock_esc, sizeof(sock_esc), sockdesc);
        t5_json_escape(dir_esc, sizeof(dir_esc), cfg->work_dir);
        printf("{\"type\":\"CONFIG\",\"sock\":\"%s\",\"work_dir\":\"%s\",\"max_clients\":%d,"
               "\"dedup_cap\":%d,\"fault_after_writes\":%lld,\"text_max_bytes\":%d,"
               "\"body_max\":%d}\n",
               sock_esc, dir_esc, cfg->max_clients, tgb_dedup_capacity(s->dedup),
               cfg->fault_after_writes, TGB_MAX_TEXT_BYTES, TGB_MAX_BODY);
    }
    printf("{\"type\":\"READY\",\"pid\":%ld,\"events_stored\":%lu,\"replay_lines\":%lu,"
           "\"bad_lines\":%lu,\"truncated_bytes\":%lld,\"dedup_size\":%lu}\n",
           TGB_GETPID(), s->st.stored, s->st.replay_lines, s->st.replay_bad,
           s->st.truncated_bytes, tgb_dedup_size(s->dedup));
    fflush(stdout);

    s->last_status_ms = t5_now_ms();
    write_status(s, "running");

    if (srv_loop(s) != 0) {
        fprintf(stderr, "[tgb] select loop error\n");
    } else {
        rc = 0;
    }

    /* 收尾：先把 ACK 冲干净，再关连接 */
    {
        int i;
        for (i = 0; i < TGB_MAX_CLIENTS_LIMIT; i++) {
            if (s->conns[i].used) {
                (void)conn_flush(s, &s->conns[i]);
                conn_close(s, &s->conns[i]);
            }
        }
    }
    if (s->listen_fd != TGZ2_BADF) {
        tgz2_sock_close(s->listen_fd);
        s->listen_fd = TGZ2_BADF;
    }
    if (cfg->sock_path[0] != '\0') {
#ifndef _WIN32
        (void)unlink(cfg->sock_path);
#endif
    }
    tgb_store_close(&s->store);
    print_stats(s, "final");
    write_status(s, "stopped");
    if (out != NULL) *out = s->st;
    tgb_dedup_free(s->dedup);
    free(s);
    return rc;
}
