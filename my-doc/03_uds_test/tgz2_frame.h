/*
 * tgz2_frame.h -- TG-Z02 PCM 旁路 wire protocol v2 (portable C, Win32 + POSIX)
 *
 * 一帧 = 40 B 头 + 1280 B 载荷 = 1320 B，对应原厂 40 ms / 16000 Hz 单声道 ch0。
 *
 * v1 -> v2 的唯一变化：头 offset 20 由 frames_total 改为 epoch（发送端实例标识），
 * 以便把「发送端重启」和「真的丢帧」分开；TGZ2_VER 同步改为 2，老接收端会明确拒收。
 *
 * 头布局（全部小端，手工序列化，不依赖 struct 对齐）：
 *   off  size  field
 *   0    4     magic        'T''G''Z''2' = 0x325A4754
 *   4    1     ver          2
 *   5    1     flags        bit0 synthetic, bit1 speech_active
 *   6    2     hdr_len      40
 *   8    4     seq          生产序号，从 0 起，单调 +1（缺口 = 丢帧）
 *   12   8     ts_us        采集时刻，同一台机器内的单调微秒（跨进程可直接相减）
 *   20   4     epoch        发送端实例标识（重启即变）
 *   24   4     rate         16000
 *   28   2     ch           1
 *   30   2     bits         16
 *   32   4     payload_len  1280
 *   36   4     crc          FNV-1a(payload)
 *
 * 载荷：由 seq 决定的确定性伪随机 int16 序列（见 tgz2_fill_payload）。
 *       接收端可本地重算并逐字节比对，所以任何截断/错位/串帧都会被立刻发现。
 */
#ifndef TGZ2_FRAME_H
#define TGZ2_FRAME_H

#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#ifdef _WIN32
#  define WIN32_LEAN_AND_MEAN
#  include <winsock2.h>
#  include <ws2tcpip.h>
#  include <windows.h>
#  include <io.h>
#  ifndef AF_UNIX
#    define AF_UNIX 1
#  endif
   typedef SOCKET tgz2_sock;
#  define TGZ2_BADF INVALID_SOCKET
   /* MinGW 不提供 struct sockaddr_un，按 winsock 的 AF_UNIX 布局自己定义 */
   typedef struct { ADDRESS_FAMILY sun_family; char sun_path[108]; } tgz2_addr;
#else
#  include <unistd.h>
#  include <fcntl.h>
#  include <errno.h>
#  include <time.h>
#  include <sys/socket.h>
#  include <sys/un.h>
#  include <pthread.h>
   typedef int tgz2_sock;
#  define TGZ2_BADF (-1)
   typedef struct sockaddr_un tgz2_addr;
#endif

#define TGZ2_MAGIC        0x325A4754u
#define TGZ2_VER          2
#define TGZ2_HDR_LEN      40
#define TGZ2_RATE         16000
#define TGZ2_CH           1
#define TGZ2_BITS         16
#define TGZ2_SPF          640                       /* 16000 * 0.04 */
#define TGZ2_PAYLOAD      (TGZ2_SPF * TGZ2_CH * 2)  /* 1280 */
#define TGZ2_MSG          (TGZ2_HDR_LEN + TGZ2_PAYLOAD) /* 1320 */
#define TGZ2_PERIOD_US    40000
#define TGZ2_RING_CAP     64                        /* 64 * 40 ms = 2.56 s 上限 */

#define TGZ2_FLAG_SYNTHETIC   0x01
#define TGZ2_FLAG_SPEECH      0x02

/* ---------------- 时间戳：整机单调微秒，跨进程可比 ---------------- */
static inline uint64_t tgz2_now_us(void)
{
#ifdef _WIN32
    static LONGLONG freq = 0;
    LARGE_INTEGER c;
    if (freq == 0) {
        LARGE_INTEGER f;
        QueryPerformanceFrequency(&f);
        freq = f.QuadPart;
    }
    QueryPerformanceCounter(&c);
    return (uint64_t)((c.QuadPart * 1000000LL) / freq);
#else
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (uint64_t)ts.tv_sec * 1000000u + (uint64_t)ts.tv_nsec / 1000u;
#endif
}

/* ---------------- 小端序列化 ---------------- */
static inline void tgz2_put_u16(uint8_t *p, uint16_t v) { p[0] = (uint8_t)(v); p[1] = (uint8_t)(v >> 8); }
static inline void tgz2_put_u32(uint8_t *p, uint32_t v) { p[0] = (uint8_t)v; p[1] = (uint8_t)(v >> 8); p[2] = (uint8_t)(v >> 16); p[3] = (uint8_t)(v >> 24); }
static inline void tgz2_put_u64(uint8_t *p, uint64_t v) { tgz2_put_u32(p, (uint32_t)v); tgz2_put_u32(p + 4, (uint32_t)(v >> 32)); }
static inline uint16_t tgz2_get_u16(const uint8_t *p) { return (uint16_t)(p[0] | (p[1] << 8)); }
static inline uint32_t tgz2_get_u32(const uint8_t *p) { return (uint32_t)p[0] | ((uint32_t)p[1] << 8) | ((uint32_t)p[2] << 16) | ((uint32_t)p[3] << 24); }
static inline uint64_t tgz2_get_u64(const uint8_t *p) { return (uint64_t)tgz2_get_u32(p) | ((uint64_t)tgz2_get_u32(p + 4) << 32); }

/* ---------------- FNV-1a 32 ---------------- */
static inline uint32_t tgz2_fnv1a(const uint8_t *p, size_t n)
{
    uint32_t h = 2166136261u;
    size_t i;
    for (i = 0; i < n; i++) { h ^= p[i]; h *= 16777619u; }
    return h;
}

/* ---------------- 确定性载荷：seq -> 1280 B（640 x int16） ---------------- */
static inline uint32_t tgz2_xorshift32(uint32_t *s)
{
    uint32_t x = *s ? *s : 0x1234567u;
    x ^= x << 13; x ^= x >> 17; x ^= x << 5;
    *s = x;
    return x;
}

static inline void tgz2_fill_payload(uint32_t seq, uint8_t *out)
{
    uint32_t st = seq * 2654435761u + 0x9E3779B9u;
    int i;
    for (i = 0; i < TGZ2_SPF; i++) {
        uint32_t r = tgz2_xorshift32(&st);
        int32_t   v = (int32_t)(r >> 17) - 16384;   /* [-16384, 16383] */
        out[i * 2 + 0] = (uint8_t)(v & 0xFF);
        out[i * 2 + 1] = (uint8_t)((v >> 8) & 0xFF);
    }
}

static inline int tgz2_check_payload(uint32_t seq, const uint8_t *in)
{
    uint8_t tmp[TGZ2_PAYLOAD];
    tgz2_fill_payload(seq, tmp);
    return memcmp(tmp, in, TGZ2_PAYLOAD) == 0;
}

/* ---------------- 一帧的组装 ---------------- */
typedef struct {
    uint32_t seq;
    uint64_t ts_us;
    uint32_t epoch;          /* 发送端实例标识，重启即变，用于识别"新会话" */
    uint8_t  flags;
    uint32_t payload_len;
    uint32_t crc;
} tgz2_hdr;

static inline void tgz2_pack(uint8_t *msg, const tgz2_hdr *h, const uint8_t *payload)
{
    tgz2_put_u32(msg + 0, TGZ2_MAGIC);
    msg[4] = TGZ2_VER;
    msg[5] = h->flags;
    tgz2_put_u16(msg + 6, TGZ2_HDR_LEN);
    tgz2_put_u32(msg + 8, h->seq);
    tgz2_put_u64(msg + 12, h->ts_us);
    tgz2_put_u32(msg + 20, h->epoch);
    tgz2_put_u32(msg + 24, TGZ2_RATE);
    tgz2_put_u16(msg + 28, TGZ2_CH);
    tgz2_put_u16(msg + 30, TGZ2_BITS);
    tgz2_put_u32(msg + 32, h->payload_len);
    tgz2_put_u32(msg + 36, h->crc);
    if (payload) memcpy(msg + TGZ2_HDR_LEN, payload, h->payload_len);
}

/* 返回 0 = 合法；负值 = 具体原因（对应 sink 的 reject_* 计数） */
static inline int tgz2_unpack(const uint8_t *msg, tgz2_hdr *h)
{
    if (tgz2_get_u32(msg + 0) != TGZ2_MAGIC)  return -1;   /* bad magic */
    if (msg[4] != TGZ2_VER)                   return -2;   /* bad ver   */
    if (tgz2_get_u16(msg + 6) != TGZ2_HDR_LEN) return -3;  /* bad hdr   */
    h->seq          = tgz2_get_u32(msg + 8);
    h->ts_us        = tgz2_get_u64(msg + 12);
    h->epoch        = tgz2_get_u32(msg + 20);
    h->flags        = msg[5];
    h->payload_len  = tgz2_get_u32(msg + 32);
    h->crc          = tgz2_get_u32(msg + 36);
    if (h->payload_len != TGZ2_PAYLOAD)        return -4;  /* bad len   */
    if (tgz2_get_u32(msg + 24) != TGZ2_RATE)   return -5;
    if (tgz2_get_u16(msg + 28) != TGZ2_CH)     return -6;
    if (tgz2_get_u16(msg + 30) != TGZ2_BITS)   return -7;
    if (tgz2_fnv1a(msg + TGZ2_HDR_LEN, TGZ2_PAYLOAD) != h->crc) return -8; /* crc */
    return 0;
}

/* ---------------- 无锁 SPSC 环形缓冲（单生产者 / 单消费者） ---------------- */
typedef struct {
    uint8_t  slot[TGZ2_RING_CAP][TGZ2_MSG];
    uint32_t head;   /* 消费者写，生产者读 */
    uint32_t tail;   /* 生产者写，消费者读 */
    uint32_t cap;
} tgz2_ring;

static inline void tgz2_ring_init(tgz2_ring *r, uint32_t cap)
{
    if (cap == 0 || cap > TGZ2_RING_CAP) cap = TGZ2_RING_CAP;
    r->head = r->tail = 0;
    r->cap = cap;
}

/* 非阻塞入队：满则丢弃并返回 0 */
static inline int tgz2_ring_push(tgz2_ring *r, const uint8_t *msg)
{
    uint32_t t = r->tail;
    uint32_t h = __atomic_load_n(&r->head, __ATOMIC_ACQUIRE);
    uint32_t depth = t - h;
    if (depth >= r->cap) return 0;
    memcpy(r->slot[t % r->cap], msg, TGZ2_MSG);
    __atomic_store_n(&r->tail, t + 1, __ATOMIC_RELEASE);
    return 1;
}

/* 非阻塞出队：空则返回 0 */
static inline int tgz2_ring_pop(tgz2_ring *r, uint8_t *out)
{
    uint32_t h = r->head;
    uint32_t t = __atomic_load_n(&r->tail, __ATOMIC_ACQUIRE);
    if (h == t) return 0;
    memcpy(out, r->slot[h % r->cap], TGZ2_MSG);
    __atomic_store_n(&r->head, h + 1, __ATOMIC_RELEASE);
    return 1;
}

static inline uint32_t tgz2_ring_depth(tgz2_ring *r)
{
    return __atomic_load_n(&r->tail, __ATOMIC_ACQUIRE) - __atomic_load_n(&r->head, __ATOMIC_ACQUIRE);
}

/* ---------------- socket 封装 ---------------- */
static inline int tgz2_sock_init(void)
{
#ifdef _WIN32
    WSADATA w;
    return WSAStartup(MAKEWORD(2, 2), &w) == 0 ? 0 : -1;
#else
    return 0;
#endif
}

static inline void tgz2_sock_close(tgz2_sock s)
{
#ifdef _WIN32
    closesocket(s);
#else
    close(s);
#endif
}

static inline int tgz2_set_nonblock(tgz2_sock s)
{
#ifdef _WIN32
    u_long nb = 1;
    return ioctlsocket(s, FIONBIO, &nb) == 0 ? 0 : -1;
#else
    int fl = fcntl(s, F_GETFL, 0);
    if (fl < 0) return -1;
    return fcntl(s, F_SETFL, fl | O_NONBLOCK) == 0 ? 0 : -1;
#endif
}

static inline int tgz2_set_block(tgz2_sock s)
{
#ifdef _WIN32
    u_long nb = 0;
    return ioctlsocket(s, FIONBIO, &nb) == 0 ? 0 : -1;
#else
    int fl = fcntl(s, F_GETFL, 0);
    if (fl < 0) return -1;
    return fcntl(s, F_SETFL, fl & ~O_NONBLOCK) == 0 ? 0 : -1;
#endif
}

static inline int tgz2_would_block(void){
#ifdef _WIN32
    int e = WSAGetLastError();
    return e == WSAEWOULDBLOCK;
#else
    return errno == EAGAIN || errno == EWOULDBLOCK || errno == ENOBUFS;
#endif
}

static inline int tgz2_last_err(void)
{
#ifdef _WIN32
    return WSAGetLastError();
#else
    return errno;
#endif
}

/* 对端消失类错误：值得重连（与"缓冲满"区分开） */
static inline int tgz2_peer_gone(void)
{
#ifdef _WIN32
    int e = WSAGetLastError();
    return e == WSAECONNRESET || e == WSAENOTCONN || e == WSAECONNREFUSED || e == WSAESHUTDOWN;
#else
    return errno == EPIPE || errno == ECONNRESET || errno == ENOTCONN || errno == ECONNREFUSED;
#endif
}

/* proto: 0 = stream, 1 = dgram */
static inline int tgz2_fill_addr(tgz2_addr *a, const char *path)
{
    memset(a, 0, sizeof(*a));
    a->sun_family = AF_UNIX;
    if (strlen(path) >= sizeof(a->sun_path)) return -1;
    strcpy(a->sun_path, path);
    return 0;
}

static inline void tgz2_sleep_us(uint64_t us)
{
#ifdef _WIN32
    DWORD ms = (DWORD)(us / 1000);
    if (ms == 0) ms = 1;          /* Windows 没有亚毫秒睡眠，别把 500us 退化成 Sleep(0) 忙等 */
    Sleep(ms);
#else
    struct timespec ts;
    ts.tv_sec = (time_t)(us / 1000000u);
    ts.tv_nsec = (long)((us % 1000000u) * 1000u);
    nanosleep(&ts, NULL);
#endif
}

/* 本进程累计 CPU 秒（用于量化旁路的开销） */
static inline double tgz2_cpu_seconds(void)
{
#ifdef _WIN32
    FILETIME c, e, k, u;
    ULARGE_INTEGER kk, uu;
    if (!GetProcessTimes(GetCurrentProcess(), &c, &e, &k, &u)) return 0.0;
    kk.LowPart = k.dwLowDateTime;  kk.HighPart = k.dwHighDateTime;
    uu.LowPart = u.dwLowDateTime;  uu.HighPart = u.dwHighDateTime;
    return (double)(kk.QuadPart + uu.QuadPart) / 1e7;
#else
    struct timespec ts;
    if (clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &ts) != 0) return 0.0;
    return (double)ts.tv_sec + (double)ts.tv_nsec / 1e9;
#endif
}

static inline uint64_t tgz2_parse_u64(const char *s) { return (uint64_t)strtoull(s, NULL, 10); }

#endif /* TGZ2_FRAME_H */
