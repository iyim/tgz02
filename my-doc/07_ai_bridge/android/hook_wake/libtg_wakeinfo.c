/*
 * libtg_wakeinfo.c -- T7-06-R1：只读采集原厂 _WakeUpInfo_（回调轻量化 + 后台线程）
 *
 * Hook 点：AliAiLabs::AGUI::SessionManager::onStartTalk(typeA, typeB, _WakeUpInfo_*, _WakeUpEventRet_*)
 *   - 符号从 dynsym 解析（不用硬编码偏移），序言 E92D4FF0 E28DB01C 逐字校验
 *
 * T7-06 第一版的问题（本轮修）：
 *   1) 回调里直接 pipe 探测指针 + JSON 编码 + open/write + 写状态文件 —— 跑在原厂语音线程上，
 *      这些都是阻塞操作；
 *   2) 为了绕开权限，把目录开到 0777、文件 0666。
 *
 * 现在的分工：
 *   回调（原厂语音线程）：取参数 -> process_vm_readv 安全拷 0x60 字节 -> 计时 -> 入固定队列 -> 返回。
 *                        没有文件操作、没有 pipe、没有 JSON、没有等待。
 *   后台线程：出队 -> 指针安全探测 -> JSON 编码 -> 追加写 -> 每秒刷新状态 -> 退出前把队列刷完。
 *
 * 权限：编译期就知道 :core 的 uid 是 1000(system)，但代码里不写死 —— 用 getuid()，目录
 * 由本进程以自身 UID 创建（0700），文件 0600；遇到别人留下的宽松文件，先 chmod 收紧，
 * 收紧不了就改名归档再新建（决策在 wake_store.c，可在主机单测）。root 因为 DAC 豁免仍可读/归档。
 *
 * 安全：不写 CDM、不改参数、不改返回值、不调用任何原厂函数；stub 结束无条件跳 trampoline，
 * 即使快照失败原厂也照原参数执行。
 */
#define _GNU_SOURCE 1

#include <android/log.h>
#include <dlfcn.h>
#include <elf.h>
#include <errno.h>
#include <fcntl.h>
#include <link.h>
#include <pthread.h>
#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <sys/uio.h>
#include <time.h>
#include <unistd.h>

#include "wake_queue.h"
#include "wake_store.h"

#define TG_LOG_TAG   "tg_wakeinfo"
#define TG_MODULE    "libsmartbox.so"

static const uint32_t PRO_ON_START[2] = { 0xE92D4FF0u, 0xE28DB01Cu };
#define SYM_ON_START \
    "_ZN9AliAiLabs4AGUI14SessionManager11onStartTalkENS0_19IInputDeviceManager15InputDeviceTypeES3_PNS2_12_WakeUpInfo_EPNS2_16_WakeUpEventRet_E"

#define WI_DUMP_BYTES   0x60
#define WI_STUB_PAGE    4096
#define WI_PROBE_BYTES  64
#define WI_TEXT_MAX     48
#define WI_LINE_MAX     2048

#define WI_DIR_PRIMARY  "/data/data/com.alibaba.ailabs.genie.smartapp/files/wake"
#define WI_DIR_FALLBACK "/data/local/tmp/t7/wake"
#define WI_NAME_LOG     "wakeinfo.jsonl"
#define WI_NAME_STATUS  "wakeinfo.status"

#define WI_THREAD_TICK_MS 10
#define WI_STATUS_EVERY   100   /* 每次 tick 计数，100 * 10ms = 1s */

enum {
    WI_OK = 0,
    WI_E_MODULE = -3,
    WI_E_SYMBOL = -4,
    WI_E_PROLOGUE = -5,
    WI_E_MMAP = -6,
    WI_E_PROT = -7,
    WI_E_THREAD = -8,
    WI_E_STORE = -9
};

typedef struct {
    const char *name;
    const char *sym;
    uint32_t    func;
    uint32_t    orig[2];
    uint32_t    pro[2];
    uint32_t    stub;
    uint32_t    tramp;
    int         hooked;
} wi_hook;

static wi_hook   g_hook = { "SessionManager::onStartTalk", SYM_ON_START, 0, {0,0}, {0,0}, 0, 0, 0 };
static uintptr_t g_base;
static void     *g_stub_page;
static int       g_state = WI_OK;
static int       g_patched;
static char      g_err[192];

/* 采集落点（install 时确定） */
static char      g_dir[192];
static int       g_uid;
static int       g_dir_mode;      /* 实际生效的目录权限（用于状态展示） */
static int       g_file_mode;

/* 队列与计数 */
static wq        g_q;
static volatile int g_run;
static pthread_t g_thread;
static int       g_thread_started;
static volatile int g_thread_exited;
static volatile unsigned long g_seq;

static volatile unsigned long g_cb_count;
static volatile unsigned long g_cb_last_us;
static volatile unsigned long g_cb_max_us;
static volatile unsigned long long g_cb_sum_us;
static volatile unsigned long g_sent;
static volatile unsigned long g_write_errors;
static volatile unsigned long g_vm_ok;
static volatile unsigned long g_vm_fail;

static volatile int g_vm_readv_ok = 1;   /* process_vm_readv 是否可用 */
static int g_fd = -1;
static char g_path_log[256];
static char g_path_status[256];

#define GET(x) __atomic_load_n(&(x), __ATOMIC_RELAXED)
#define INC(x) __atomic_add_fetch(&(x), 1ul, __ATOMIC_RELAXED)
#define ADDU(x, v) __atomic_add_fetch(&(x), (v), __ATOMIC_RELAXED)

static void slog(const char *fmt, ...)
{
    char buf[400];
    va_list ap;

    va_start(ap, fmt);
    vsnprintf(buf, sizeof(buf), fmt, ap);
    va_end(ap);
    buf[sizeof(buf) - 1] = '\0';
    __android_log_write(ANDROID_LOG_INFO, TG_LOG_TAG, buf);
}

static void set_err(const char *fmt, ...)
{
    va_list ap;

    va_start(ap, fmt);
    vsnprintf(g_err, sizeof(g_err), fmt, ap);
    va_end(ap);
    g_err[sizeof(g_err) - 1] = '\0';
}

static long long mono_us(void)
{
    struct timespec ts;

    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (long long)ts.tv_sec * 1000000 + ts.tv_nsec / 1000;
}

/* 墙钟毫秒：日志里要能和 events.jsonl 的 received_at_ms 直接对照 */
static long long wall_ms(void)
{
    struct timespec ts;

    clock_gettime(CLOCK_REALTIME, &ts);
    return (long long)ts.tv_sec * 1000 + ts.tv_nsec / 1000000;
}

/* ---------------- 采集落点与权限 ---------------- */

static void fill_stat(const char *p, ws_stat *st)
{
    struct stat sb;

    memset(st, 0, sizeof(*st));
    if (stat(p, &sb) != 0) return;
    st->exists = 1;
    st->uid = (int)sb.st_uid;
    st->mode = (unsigned)(sb.st_mode & 0777);
    st->can_chmod = (sb.st_uid == (uid_t)g_uid);
}

/* 让落点目录变成"本进程所有 + 0700"；返回 0 成功 */
static int ensure_dir_private(const char *dir)
{
    ws_stat st;
    ws_action act;
    char aside[256];
    mode_t old_mask;

    fill_stat(dir, &st);
    act = ws_plan_dir(&st, g_uid);

    if (act == WS_ACT_MOVE_ASIDE) {
        snprintf(aside, sizeof(aside), "%s.foreign.%d", dir, (int)getpid());
        if (rename(dir, aside) != 0) {
            /* 父目录不可写（例如 /data/local/tmp/t7 不够放）—— 只能报错让上层换落点 */
            set_err("dir %s owned by uid %d mode %04o cannot be moved aside: %s",
                    dir, st.uid, st.mode, strerror(errno));
            return -1;
        }
        slog("moved aside foreign dir %s (uid=%d mode=%04o) -> %s", dir, st.uid, st.mode, aside);
        act = WS_ACT_CREATE;
    }

    if (act == WS_ACT_CREATE) {
        old_mask = umask(0077);          /* 创建瞬间就不给别人权限 */
        if (mkdir(dir, WS_DIR_MODE) != 0 && errno != EEXIST) {
            umask(old_mask);
            set_err("mkdir %s failed: %s", dir, strerror(errno));
            return -1;
        }
        umask(old_mask);
    }

    if (chmod(dir, WS_DIR_MODE) != 0) {
        set_err("chmod %s 0700 failed: %s", dir, strerror(errno));
        return -1;
    }
    {
        struct stat sb;
        if (stat(dir, &sb) != 0 || sb.st_uid != (uid_t)g_uid || (sb.st_mode & 0777) != WS_DIR_MODE) {
            set_err("dir %s not private after fix (uid=%d mode=%04o)", dir,
                    (int)sb.st_uid, (unsigned)(sb.st_mode & 0777));
            return -1;
        }
        g_dir_mode = (int)(sb.st_mode & 0777);
    }
    return 0;
}

/* 打开私有日志文件；遇到别人的 / 过宽的文件按 wake_store 决策处理 */
static int open_private_log(const char *dir, const char *name, char *out, size_t outlen, int *mode_out)
{
    char path[256];
    ws_stat st;
    ws_action act;
    char aside[320];
    int fd;

    snprintf(path, sizeof(path), "%s/%s", dir, name);
    fill_stat(path, &st);
    act = ws_plan_file(&st, g_uid);

    if (act == WS_ACT_MOVE_ASIDE) {
        snprintf(aside, sizeof(aside), "%s.foreign.%d", path, (int)getpid());
        if (rename(path, aside) != 0) {
            set_err("file %s owned by uid %d mode %04o cannot be moved aside: %s",
                    path, st.uid, st.mode, strerror(errno));
            return -1;
        }
        slog("moved aside foreign file %s (uid=%d mode=%04o) -> %s", path, st.uid, st.mode, aside);
        act = WS_ACT_CREATE;
    } else if (act == WS_ACT_CHMOD) {
        if (chmod(path, WS_FILE_MODE) != 0) {
            set_err("chmod %s 0600 failed: %s", path, strerror(errno));
            return -1;
        }
        slog("tightened %s from %04o to 0600", path, st.mode);
    }

    {
        mode_t old_mask = umask(0177);
        fd = open(path, O_WRONLY | O_CREAT | O_APPEND | O_CLOEXEC, WS_FILE_MODE);
        umask(old_mask);
    }
    if (fd < 0) {
        set_err("open %s failed: %s", path, strerror(errno));
        return -1;
    }
    if (fchmod(fd, WS_FILE_MODE) != 0) {
        close(fd);
        set_err("fchmod %s 0600 failed: %s", path, strerror(errno));
        return -1;
    }
    {
        struct stat sb;
        if (fstat(fd, &sb) != 0) {
            close(fd);
            set_err("fstat %s failed", path);
            return -1;
        }
        if ((sb.st_mode & 0777) != WS_FILE_MODE) {
            close(fd);
            set_err("%s mode=%04o after chmod (want 0600)", path, (unsigned)(sb.st_mode & 0777));
            return -1;
        }
        if (mode_out != NULL) *mode_out = (int)(sb.st_mode & 0777);
    }
    snprintf(out, outlen, "%s", path);
    return fd;
}

static int pick_dir(void)
{
    if (ensure_dir_private(WI_DIR_PRIMARY) == 0) {
        snprintf(g_dir, sizeof(g_dir), "%s", WI_DIR_PRIMARY);
        return 0;
    }
    slog("primary dir unusable (%s); falling back to %s", g_err, WI_DIR_FALLBACK);
    if (ensure_dir_private(WI_DIR_FALLBACK) == 0) {
        snprintf(g_dir, sizeof(g_dir), "%s", WI_DIR_FALLBACK);
        return 0;
    }
    return -1;
}

/* ---------------- 安全读取（回调里用 process_vm_readv，不阻塞、不 pipe） ---------------- */
static int safe_read_self(void *dst, const void *src, size_t n)
{
    struct iovec local, remote;
    ssize_t r;

    if (src == NULL || dst == NULL || n == 0) return -1;
    if (!GET(g_vm_readv_ok)) return -2;

    local.iov_base = dst;
    local.iov_len = n;
    remote.iov_base = (void *)src;
    remote.iov_len = n;
    r = syscall(SYS_process_vm_readv, (pid_t)getpid(), &local, 1ul, &remote, 1ul, 0ul);
    if (r < 0) {
        if (errno == ENOSYS) {
            __atomic_store_n(&g_vm_readv_ok, 0, __ATOMIC_RELAXED);
            slog("process_vm_readv unavailable (ENOSYS); snapshots disabled");
        }
        return -1;
    }
    return (int)r;
}

/* ---------------- JSON ---------------- */
static size_t jesc(char *dst, size_t cap, const char *src, size_t n)
{
    size_t o = 0;
    size_t i;

    if (cap == 0) return 0;
    for (i = 0; i < n && o + 8 < cap; i++) {
        unsigned char c = (unsigned char)src[i];
        if (c == '"' || c == '\\') { dst[o++] = '\\'; dst[o++] = (char)c; }
        else if (c >= 0x20 && c < 0x7f) dst[o++] = (char)c;
        else {
            /* JSON 没有 \xNN；0x80+ 也不一定是合法 UTF-8，一律按 latin-1 码点转 \u00NN */
            dst[o++] = '\\';
            dst[o++] = 'u';
            dst[o++] = '0';
            dst[o++] = '0';
            dst[o++] = "0123456789abcdef"[c >> 4];
            dst[o++] = "0123456789abcdef"[c & 0xf];
        }
    }
    dst[o] = '\0';
    return o;
}

static int printable_ratio(const unsigned char *p, int n)
{
    int i, ok = 0;

    for (i = 0; i < n; i++) {
        unsigned char c = p[i];
        if (c == 0) continue;
        if ((c >= 0x20 && c < 0x7f) || c >= 0x80) ok++;
    }
    return (n > 0) ? (ok * 100 / n) : 0;
}

/* ---------------- 后台线程 ---------------- */
static void comm_of(pid_t tid, char *dst, size_t cap)
{
    char path[64];
    int fd;
    ssize_t n;

    dst[0] = '\0';
    snprintf(path, sizeof(path), "/proc/self/task/%d/comm", (int)tid);
    fd = open(path, O_RDONLY | O_CLOEXEC);
    if (fd < 0) return;
    n = read(fd, dst, cap - 1);
    if (n > 0) {
        while (n > 0 && (dst[n - 1] == '\n' || dst[n - 1] == '\r')) n--;
        dst[n] = '\0';
    }
    close(fd);
}

/* tid -> comm 缓存：回调里不读 /proc，后台线程按需解析一次 */
#define WI_COMM_CACHE 8
static struct { int tid; char comm[16]; } g_comm_cache[WI_COMM_CACHE];
static int g_comm_used;

static const char *comm_cached(int tid)
{
    int i, slot;

    for (i = 0; i < g_comm_used; i++) {
        if (g_comm_cache[i].tid == tid) return g_comm_cache[i].comm;
    }
    slot = (g_comm_used < WI_COMM_CACHE) ? g_comm_used++ : (g_comm_used - 1);
    g_comm_cache[slot].tid = tid;
    comm_of(tid, g_comm_cache[slot].comm, sizeof(g_comm_cache[slot].comm));
    return g_comm_cache[slot].comm;
}

static void write_all(int fd, const char *buf, size_t n)
{
    size_t off = 0;

    while (off < n) {
        ssize_t w = write(fd, buf + off, n - off);
        if (w <= 0) { INC(g_write_errors); return; }
        off += (size_t)w;
    }
}

static void write_status(void)
{
    char buf[512];
    int fd, n;
    unsigned long long depth = wq_depth(&g_q);
    unsigned long cb_n = GET(g_cb_count);
    unsigned long cb_avg = (cb_n > 0) ? (unsigned long)(GET(g_cb_sum_us) / cb_n) : 0;

    if (g_path_status[0] == '\0') return;
    n = snprintf(buf, sizeof(buf),
                 "seq=%lu calls=%lu queued=%lu sent=%lu depth=%llu max_depth=%llu dropped=%llu "
                 "write_errors=%lu cb_us_last=%lu cb_us_max=%lu cb_us_avg=%lu "
                 "vm_ok=%lu vm_fail=%lu threaded=%d thread_exited=%d uid=%d dir_mode=%04o "
                 "file_mode=%04o dir=%s\n",
                 GET(g_seq), cb_n, (unsigned long)wq_depth(&g_q), GET(g_sent), depth,
                 wq_max_depth(&g_q), wq_dropped(&g_q), GET(g_write_errors),
                 GET(g_cb_last_us), GET(g_cb_max_us), cb_avg,
                 GET(g_vm_ok), GET(g_vm_fail), g_thread_started, GET(g_thread_exited),
                 g_uid, g_dir_mode, g_file_mode, g_dir);

    fd = open(g_path_status, O_WRONLY | O_CREAT | O_TRUNC | O_CLOEXEC, WS_FILE_MODE);
    if (fd < 0) { INC(g_write_errors); return; }
    fchmod(fd, WS_FILE_MODE);
    write_all(fd, buf, strlen(buf));
    close(fd);
}

static void emit_item(const wq_item *it)
{
    unsigned char raw[WI_DUMP_BYTES];
    char line[WI_LINE_MAX];
    char probes[900];
    char rawtxt[WI_DUMP_BYTES * 3 + 8];
    const char *comm = comm_cached(it->tid);
    int wake_type = -1;
    int i, po = 0, n = it->bytes;

    memcpy(raw, it->raw, sizeof(raw));
    if (n > 0 && n >= 4) memcpy(&wake_type, raw, 4);

    po = 0;
    for (i = 0; i < WI_DUMP_BYTES; i++) {
        if (i < n) po += snprintf(rawtxt + po, sizeof(rawtxt) - (size_t)po, "%02x", raw[i]);
        else       po += snprintf(rawtxt + po, sizeof(rawtxt) - (size_t)po, "..");
    }
    rawtxt[po] = '\0';

    probes[0] = '\0';
    if (n >= 4) {
        int written = 0;
        for (i = 0; i + 4 <= (n < WI_DUMP_BYTES ? n : WI_DUMP_BYTES); i += 4) {
            uint32_t v;
            unsigned char pb[WI_PROBE_BYTES];
            char text[WI_TEXT_MAX * 6 + 8];
            char part[WI_TEXT_MAX * 6 + 64];
            int pn, plen;

            memcpy(&v, raw + i, 4);
            if (v < 0x10000u || v >= 0xc0000000u || (v & 3u) != 0) continue;
            pn = safe_read_self(pb, (const void *)(uintptr_t)v, sizeof(pb));
            if (pn <= 0) continue;
            if (printable_ratio(pb, pn < 24 ? pn : 24) < 60) continue;
            jesc(text, sizeof(text), (const char *)pb, (size_t)(pn < WI_TEXT_MAX ? pn : WI_TEXT_MAX));
            /* 先整条渲染到 part，再决定能不能放进 probes：
             * 绝不能让 snprintf 在 "\u00NN" 中间截断（那样这一行就不是合法 JSON 了）。 */
            plen = snprintf(part, sizeof(part), "%s\"0x%02x:0x%08x:%d:%s\"",
                            written > 0 ? "," : "", i, v, pn, text);
            if (plen < 0 || plen >= (int)sizeof(part)) break;
            if (written + plen + 2 >= (int)sizeof(probes)) break;
            memcpy(probes + written, part, (size_t)plen);
            written += plen;
            probes[written] = '\0';
        }
    }

    {
        int n_line = snprintf(line, sizeof(line),
                 "{\"seq\":%u,\"t_ms\":%lld,\"pid\":%d,\"tid\":%d,\"comm\":\"%s\","
                 "\"this\":\"0x%08x\",\"typeA\":%d,\"typeB\":%d,\"info\":\"0x%08x\","
                 "\"info_null\":%d,\"bytes\":%d,\"wake_type\":%d,\"cb_us\":%u,\"raw\":\"%s\","
                 "\"probes\":[%s]}",
                 it->seq, it->t_ms, it->pid, it->tid, comm[0] ? comm : "?",
                 it->args[0], (int)it->args[1], (int)it->args[2], it->args[3],
                 it->args[3] == 0 ? 1 : 0, n, wake_type, it->cb_us, rawtxt, probes);
        if (n_line < 0 || n_line >= (int)sizeof(line)) {
            /* 兜底：去掉 probes 再渲染一次，宁可少字段也不写半行 JSON */
            snprintf(line, sizeof(line),
                     "{\"seq\":%u,\"t_ms\":%lld,\"pid\":%d,\"tid\":%d,\"comm\":\"%s\","
                     "\"this\":\"0x%08x\",\"typeA\":%d,\"typeB\":%d,\"info\":\"0x%08x\","
                     "\"info_null\":%d,\"bytes\":%d,\"wake_type\":%d,\"cb_us\":%u,\"raw\":\"%s\","
                     "\"probes\":[]}",
                     it->seq, it->t_ms, it->pid, it->tid, comm[0] ? comm : "?",
                     it->args[0], (int)it->args[1], (int)it->args[2], it->args[3],
                     it->args[3] == 0 ? 1 : 0, n, wake_type, it->cb_us, rawtxt);
            INC(g_write_errors);
        }
    }

    if (g_fd >= 0) {
        write_all(g_fd, line, strlen(line));
        write_all(g_fd, "\n", 1);
        INC(g_sent);
    }
}

static void *wi_thread(void *arg)
{
    wq_item it;
    int tick = 0;

    (void)arg;
    while (GET(g_run)) {
        while (wq_pop(&g_q, &it)) emit_item(&it);
        if (++tick >= WI_STATUS_EVERY) { tick = 0; write_status(); }
        {
            struct timespec ts;
            ts.tv_sec = 0;
            ts.tv_nsec = (long)WI_THREAD_TICK_MS * 1000000L;
            nanosleep(&ts, NULL);
        }
    }
    /* 退出前把队列里剩下的刷完（有界：最多 WQ_CAP 条） */
    while (wq_pop(&g_q, &it)) emit_item(&it);
    write_status();
    __atomic_store_n(&g_thread_exited, 1, __ATOMIC_RELEASE);
    slog("wakeinfo writer thread exiting (sent=%lu dropped=%llu)", GET(g_sent), wq_dropped(&g_q));
    return NULL;
}

/* ---------------- 回调（原厂语音线程，必须极短） ---------------- */
static void cb_on_start(uint32_t *r)
{
    wq_item it;
    long long t0;
    const void *info;

    t0 = mono_us();
    memset(&it, 0, sizeof(it));
    it.seq = (unsigned)INC(g_seq);
    it.pid = (int)getpid();
    it.tid = (int)syscall(SYS_gettid);
    it.args[0] = r[0];
    it.args[1] = r[1];
    it.args[2] = r[2];
    it.args[3] = r[3];
    info = (const void *)(uintptr_t)r[3];

    if (info != NULL && (((uintptr_t)info & 3u) == 0)) {
        int n = safe_read_self(it.raw, info, sizeof(it.raw));
        if (n > 0) { it.bytes = n; INC(g_vm_ok); }
        else       { it.bytes = 0; INC(g_vm_fail); }
    } else {
        it.bytes = 0;
        INC(g_vm_fail);
    }
        it.t_ms = wall_ms();
    it.cb_us = (unsigned)(mono_us() - t0);
    {
        unsigned long us = it.cb_us;
        INC(g_cb_count);
        __atomic_store_n(&g_cb_last_us, it.cb_us, __ATOMIC_RELAXED);
        ADDU(g_cb_sum_us, (unsigned long long)us);
        {
            unsigned long mx = GET(g_cb_max_us);
            while (us > mx &&
                   !__atomic_compare_exchange_n(&g_cb_max_us, &mx, us, 0,
                                                __ATOMIC_RELAXED, __ATOMIC_RELAXED)) {
            }
        }
    }
    (void)wq_push(&g_q, &it);
}

/* ---------------- ELF 解析（与 T6-01/T7-02 同一套做法） ---------------- */
typedef struct {
    uintptr_t base;
    int       found;
} wi_mod;

static int mod_cb(struct dl_phdr_info *info, size_t size, void *data)
{
    wi_mod *m = (wi_mod *)data;
    const char *name = info->dlpi_name;
    const char *bn;

    (void)size;
    if (name == NULL || name[0] == '\0') return 0;
    bn = strrchr(name, '/');
    bn = (bn != NULL) ? bn + 1 : name;
    if (strcmp(bn, TG_MODULE) != 0) return 0;
    m->base = info->dlpi_addr;
    m->found = 1;
    return 1;
}

static uint32_t mem_sym(uintptr_t base, const char *want)
{
    const Elf32_Ehdr *eh = (const Elf32_Ehdr *)base;
    const Elf32_Phdr *ph;
    const uint32_t *dyn = NULL;
    uint32_t i, symtab = 0, strtab = 0, gnuhash = 0, strsz = 0, nsyms = 0;

    if (eh->e_ident[EI_MAG0] != ELFMAG0 || eh->e_ident[EI_CLASS] != ELFCLASS32 ||
        eh->e_machine != EM_ARM) {
        return 0;
    }
    ph = (const Elf32_Phdr *)(base + eh->e_phoff);
    for (i = 0; i < eh->e_phnum; i++) {
        if (ph[i].p_type == PT_DYNAMIC) {
            dyn = (const uint32_t *)(base + ph[i].p_vaddr);
            break;
        }
    }
    if (dyn == NULL) return 0;
    for (i = 0; dyn[i * 2] != DT_NULL; i++) {
        uint32_t tag = dyn[i * 2], val = dyn[i * 2 + 1];
        if (tag == DT_SYMTAB) symtab = val;
        else if (tag == DT_STRTAB) strtab = val;
        else if (tag == DT_STRSZ) strsz = val;
        else if (tag == DT_GNU_HASH) gnuhash = val;
    }
    if (symtab == 0 || strtab == 0 || strsz == 0 || gnuhash == 0) return 0;

    {
        const uint32_t *h = (const uint32_t *)(base + gnuhash);
        uint32_t nbuckets = h[0], symoffset = h[1], bloom = h[2];
        const uint32_t *buckets = h + 4 + bloom;
        const uint32_t *chain = buckets + nbuckets;
        uint32_t maxb = 0, k;

        for (k = 0; k < nbuckets; k++) if (buckets[k] > maxb) maxb = buckets[k];
        if (maxb < symoffset) {
            nsyms = symoffset;
        } else {
            while ((chain[maxb - symoffset] & 1u) == 0) maxb++;
            nsyms = maxb + 1;
        }
    }
    if (nsyms == 0 || nsyms > 300000u) return 0;

    {
        const Elf32_Sym *syms = (const Elf32_Sym *)(base + symtab);
        const char *strs = (const char *)(base + strtab);

        for (i = 0; i < nsyms; i++) {
            const char *nm;
            if (syms[i].st_name == 0 || syms[i].st_name >= strsz) continue;
            nm = strs + syms[i].st_name;
            if (strcmp(nm, want) != 0) continue;
            if (syms[i].st_shndx == SHN_UNDEF) continue;
            return (uint32_t)(base + syms[i].st_value);
        }
    }
    return 0;
}

/* ---------------- stub 页与补丁 ---------------- */
static int page_rwx(uintptr_t addr)
{
    long ps = sysconf(_SC_PAGESIZE);
    uintptr_t page = addr & ~(uintptr_t)(ps - 1);

    if (mprotect((void *)page, (size_t)ps, PROT_READ | PROT_WRITE | PROT_EXEC) == 0) return 0;
    return -1;
}

static int build_stub_page(void)
{
    uint32_t *s;

    if (g_stub_page != NULL) return 0;
    g_stub_page = mmap(NULL, WI_STUB_PAGE, PROT_READ | PROT_WRITE,
                       MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (g_stub_page == MAP_FAILED) {
        g_stub_page = NULL;
        set_err("mmap(stub page) failed errno=%d", errno);
        return WI_E_MMAP;
    }
    memset(g_stub_page, 0, WI_STUB_PAGE);

    g_hook.stub  = (uint32_t)(uintptr_t)g_stub_page;
    g_hook.tramp = (uint32_t)(uintptr_t)g_stub_page + 0x400;
    s = (uint32_t *)(uintptr_t)g_hook.stub;

    s[0] = 0xE92D401Fu;
    s[1] = 0xE1A0000Du;
    s[2] = 0xE59F1010u;
    s[3] = 0xE12FFF31u;
    s[4] = 0xE8BD401Fu;
    s[5] = 0xE59FF004u;
    s[6] = g_hook.tramp;
    s[7] = 0;
    s[8] = (uint32_t)(uintptr_t)cb_on_start;

    {
        uint32_t *t = (uint32_t *)(uintptr_t)g_hook.tramp;
        t[0] = g_hook.orig[0];
        t[1] = g_hook.orig[1];
        t[2] = 0xE59FF000u;                  /* ldr pc, [pc] */
        t[3] = g_hook.func + 8;
    }
    __builtin___clear_cache((char *)g_stub_page, (char *)g_stub_page + WI_STUB_PAGE);

    if (mprotect(g_stub_page, WI_STUB_PAGE, PROT_READ | PROT_EXEC) != 0) {
        if (mprotect(g_stub_page, WI_STUB_PAGE, PROT_READ | PROT_WRITE | PROT_EXEC) != 0) {
            set_err("mprotect(stub page RX/RWX) failed errno=%d", errno);
            return WI_E_PROT;
        }
    }
    return 0;
}

static int install_one(wi_hook *h)
{
    uint32_t *p;

    if (h->func == 0) return WI_E_SYMBOL;
    if (h->orig[0] != h->pro[0] || h->orig[1] != h->pro[1]) {
        set_err("%s: prologue %08x %08x != expected %08x %08x", h->name,
                h->orig[0], h->orig[1], h->pro[0], h->pro[1]);
        return WI_E_PROLOGUE;
    }
    if (page_rwx(h->func) != 0) {
        set_err("%s: mprotect(%08x) failed errno=%d", h->name, h->func, errno);
        return WI_E_PROT;
    }
    p = (uint32_t *)(uintptr_t)h->func;
    p[0] = 0xE51FF004u;
    p[1] = h->stub;
    __builtin___clear_cache((char *)h->func, (char *)(h->func + 8));
    h->hooked = 1;
    return 0;
}

/* 写回原厂两条指令，并**回读校验**。
 * T7-06-R1 现场教训：之前的实现 page_rwx 失败就静默 return，uninstall 仍然报成功，
 * 结果入口还指着我们的 stub（下一次 install 直接 prologue 不符）。卸载不能伪报成功。 */
static int restore_one(wi_hook *h)
{
    uint32_t *p;

    if (h == NULL) return 0;
    if (!h->hooked) return 0;
    if (page_rwx(h->func) != 0) {
        set_err("%s: mprotect(%08x) failed errno=%d", h->name, h->func, errno);
        return -1;
    }
    p = (uint32_t *)(uintptr_t)h->func;
    p[0] = h->orig[0];
    p[1] = h->orig[1];
    __builtin___clear_cache((char *)h->func, (char *)(h->func + 8));
    if (p[0] != h->orig[0] || p[1] != h->orig[1]) {
        set_err("%s: restore read-back %08x %08x != %08x %08x", h->name,
                p[0], p[1], h->orig[0], h->orig[1]);
        return -1;
    }
    h->hooked = 0;
    return 0;
}

/* 入口处是否还是我们的 patch（GROUND TRUTH；不看 g_patched 这个标志位） */
static int entry_patched(void)
{
    const uint32_t *p;

    if (g_hook.func == 0 || !g_hook.hooked) return 0;
    p = (const uint32_t *)(uintptr_t)g_hook.func;
    return (p[0] == 0xE51FF004u && p[1] == g_hook.stub) ? 1 : 0;
}

/* ---------------- 导出 ABI ---------------- */
int tg_hook_prepare(void)
{
    wi_mod m;
    uint32_t v;

    if (g_state != WI_OK) return g_state;

    g_uid = (int)getuid();
    wq_init(&g_q);
    if (pick_dir() != 0) {
        g_state = WI_E_STORE;
        return g_state;
    }
    g_fd = open_private_log(g_dir, WI_NAME_LOG, g_path_log, sizeof(g_path_log), &g_file_mode);
    if (g_fd < 0) {
        g_state = WI_E_STORE;
        return g_state;
    }
    {
        int smode = 0;
        int sfd = open_private_log(g_dir, WI_NAME_STATUS, g_path_status, sizeof(g_path_status), &smode);
        if (sfd >= 0) close(sfd);
        else slog("status file open failed: %s", g_err);
    }
    slog("store ready: dir=%s uid=%d dir_mode=%04o file_mode=%04o", g_dir, g_uid,
         g_dir_mode, g_file_mode);

    memset(&m, 0, sizeof(m));
    dl_iterate_phdr(mod_cb, &m);
    if (!m.found) {
        set_err("%s is not loaded in this process", TG_MODULE);
        g_state = WI_E_MODULE;
        return g_state;
    }
    g_base = m.base;
    v = mem_sym(m.base, g_hook.sym);
    if (v == 0) {
        set_err("%s: symbol not found", g_hook.name);
        g_state = WI_E_SYMBOL;
        return g_state;
    }
    g_hook.func = v;
    {
        const uint32_t *cp = (const uint32_t *)(uintptr_t)v;
        uint32_t c0 = cp[0], c1 = cp[1];

        /* 若上一次 uninstall 没还原成功（入口还指着我们的 stub），先用仍在内存里的
         * 原始字节自愈，否则接下来 install 会因为 "prologue 不符" 被拒绝。 */
        if (g_hook.hooked && c0 == 0xE51FF004u && c1 == g_hook.stub && g_hook.orig[0] != 0) {
            if (page_rwx(v) == 0) {
                uint32_t *wp = (uint32_t *)(uintptr_t)v;
                wp[0] = g_hook.orig[0];
                wp[1] = g_hook.orig[1];
                __builtin___clear_cache((char *)v, (char *)(v + 8));
                slog("recovered stale patch at %08x before reinstall", v);
                c0 = wp[0];
                c1 = wp[1];
                g_hook.hooked = 0;
            }
        }
        g_hook.orig[0] = c0;
        g_hook.orig[1] = c1;
    }
    g_hook.pro[0] = PRO_ON_START[0];
    g_hook.pro[1] = PRO_ON_START[1];
    slog("resolved %s @ %08x (offset 0x%x) prologue %08x %08x", g_hook.name, v,
         (unsigned)(v - (uint32_t)m.base), g_hook.orig[0], g_hook.orig[1]);
    return WI_OK;
}

/* Injector 用 lo/hi 组成被改写的字节区间 [lo, hi)，单 hook 只改入口 8 字节。 */
int tg_hook_patch_lo(void) { return (int)g_hook.func; }
int tg_hook_patch_hi(void) { return (int)(g_hook.func + 8); }

int tg_hook_install(void)
{
    int rc;

    if (g_state != WI_OK) return g_state;
    if (g_patched) return WI_OK;
    rc = build_stub_page();
    if (rc != 0) { g_state = rc; return rc; }

    /* 先把后台线程拉起来：装 hook 之前就位，避免首批快照没人收 */
    __atomic_store_n(&g_run, 1, __ATOMIC_RELEASE);
    if (pthread_create(&g_thread, NULL, wi_thread, NULL) != 0) {
        __atomic_store_n(&g_run, 0, __ATOMIC_RELEASE);
        set_err("pthread_create failed");
        g_state = WI_E_THREAD;
        return g_state;
    }
    g_thread_started = 1;

    rc = install_one(&g_hook);
    if (rc != 0) {
        __atomic_store_n(&g_run, 0, __ATOMIC_RELEASE);
        pthread_join(g_thread, NULL);
        g_thread_started = 0;
        g_state = rc;
        return rc;
    }
    g_patched = 1;
    slog("hooked %s @ %08x stub=%08x tramp=%08x (queue=%d, writer thread up)",
         g_hook.name, g_hook.func, g_hook.stub, g_hook.tramp, WQ_CAP);
    write_status();
    return WI_OK;
}

/*
 * 停止接收新快照 -> 让后台线程把队列刷完并退出。
 *
 * 注意：Injector 执行 uninstall 时会把其它线程都挂起，这时候 pthread_join 会一直等下去
 * （被挂起的线程没法跑）。所以这里只做**有界等待**（最多 200 ms），超时就 detach，
 * 让它在恢复运行后自己退出；状态里的 thread_exited 会如实反映结果。
 */
int tg_hook_uninstall(void)
{
    int i;
    int rc;

    rc = restore_one(&g_hook);         /* 先停入口，保证不再有新快照 */
    if (rc != 0) {
        /* 还原失败：保持 hooked=1 如实上报，绝不伪报 "uninstalled" */
        slog("uninstall FAILED: %s", g_err);
        write_status();
        return WI_E_PROT;
    }
    g_patched = 0;
    __atomic_store_n(&g_run, 0, __ATOMIC_RELEASE);

    if (g_thread_started) {
        for (i = 0; i < 200; i++) {
            if (__atomic_load_n(&g_thread_exited, __ATOMIC_ACQUIRE)) break;
            {
                struct timespec ts;
                ts.tv_sec = 0;
                ts.tv_nsec = 1000000L;
                nanosleep(&ts, NULL);
            }
        }
        if (__atomic_load_n(&g_thread_exited, __ATOMIC_ACQUIRE)) {
            pthread_join(g_thread, NULL);
            slog("writer thread joined (sent=%lu)", GET(g_sent));
        } else {
            pthread_detach(g_thread);
            slog("writer thread still running at uninstall; detached (will flush and exit)");
        }
        g_thread_started = 0;
    }
    write_status();
    if (g_fd >= 0) { close(g_fd); g_fd = -1; }
    return WI_OK;
}

int tg_hook_status(void) { return g_state; }
const char *tg_hook_last_error(void) { return g_err; }
int tg_hook_is_initialized(void) { return (g_state == WI_OK) ? 1 : 0; }
int tg_hook_hooked(void) { return entry_patched() ? 1 : 0; }

const char *tg_hook_stats(void)
{
    static char buf[430];
    unsigned long cb_n = GET(g_cb_count);
    unsigned long cb_avg = (cb_n > 0) ? (unsigned long)(GET(g_cb_sum_us) / cb_n) : 0;

    snprintf(buf, sizeof(buf),
             "state=%d hooked=%d calls=%lu queued=%lu sent=%lu depth=%llu max_depth=%llu "
             "dropped=%llu write_errors=%lu cb_us_last=%lu cb_us_max=%lu cb_us_avg=%lu "
             "vm_ok=%lu vm_fail=%lu thread=%d exited=%d uid=%d dir=%s func=%08x",
             g_state, g_patched ? 1 : 0, cb_n, (unsigned long)wq_depth(&g_q), GET(g_sent),
             wq_depth(&g_q), wq_max_depth(&g_q), wq_dropped(&g_q), GET(g_write_errors),
             GET(g_cb_last_us), GET(g_cb_max_us), cb_avg, GET(g_vm_ok), GET(g_vm_fail),
             g_thread_started, GET(g_thread_exited), g_uid, g_dir, g_hook.func);
    return buf;
}

__attribute__((constructor)) static void wi_ctor(void)
{
    slog("libtg_wakeinfo.so loaded (pid=%d uid=%d); waiting for tg_hook_install()",
         (int)getpid(), (int)getuid());
}
