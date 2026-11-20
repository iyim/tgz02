/*
 * worker_util.c -- 见 worker_util.h
 */
#ifdef _WIN32
#  ifndef _WIN32_WINNT
#    define _WIN32_WINNT 0x0601
#  endif
#endif

#include "worker_util.h"

#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <time.h>

#ifdef _WIN32
#  include <direct.h>
#  include <io.h>
#  include <windows.h>
#  include <process.h>
#  define WU_MKDIR(p)      _mkdir(p)
#  define WU_OPEN_RO(p)    _open((p), _O_RDONLY | _O_BINARY)
#  define WU_OPEN_WO(p)    _open((p), _O_WRONLY | _O_CREAT | _O_TRUNC | _O_BINARY, _S_IREAD | _S_IWRITE)
#  define WU_FSYNC(fd)     _commit(fd)
#  define WU_CLOSE(fd)     _close(fd)
#  define WU_READ(fd, b, n) _read((fd), (b), (unsigned int)(n))
#  define WU_SEEK(fd, o)   _lseeki64((fd), (o), SEEK_SET)
#  define WU_UNLINK(p)     _unlink(p)
#else
#  include <dirent.h>
#  include <signal.h>
#  include <sys/file.h>      /* flock */
#  include <unistd.h>
#  define WU_MKDIR(p)      mkdir((p), 0775)
#  define WU_OPEN_RO(p)    open((p), O_RDONLY | O_CLOEXEC)
#  define WU_OPEN_WO(p)    open((p), O_WRONLY | O_CREAT | O_TRUNC | O_CLOEXEC, 0600)
#  define WU_FSYNC(fd)     fsync(fd)
#  define WU_CLOSE(fd)     close(fd)
#  define WU_READ(fd, b, n) read((fd), (b), (n))
#  define WU_SEEK(fd, o)   lseek((fd), (off_t)(o), SEEK_SET)
#  define WU_UNLINK(p)     unlink(p)
#endif

/* 写打开（截断/新建，0600）；只给状态文件用，失败返回 -1 */
int wu_open_wo(const char *path)
{
    return WU_OPEN_WO(path);
}

int wu_open_excl(const char *path)
{
#ifdef _WIN32
    return _open(path, _O_WRONLY | _O_CREAT | _O_EXCL | _O_BINARY, _S_IREAD | _S_IWRITE);
#else
    return open(path, O_WRONLY | O_CREAT | O_EXCL | O_CLOEXEC, 0600);
#endif
}

long long wu_self_pid(void)
{
#ifdef _WIN32
    return (long long)_getpid();
#else
    return (long long)getpid();
#endif
}

long long wu_now_ms(void)
{
#ifdef _WIN32
    return (long long)GetTickCount64();
#else
    struct timespec ts;
    if (clock_gettime(CLOCK_MONOTONIC, &ts) != 0) return 0;
    return (long long)ts.tv_sec * 1000LL + (long long)(ts.tv_nsec / 1000000L);
#endif
}

long long wu_wall_ms(void)
{
#ifdef _WIN32
    FILETIME ft;
    ULARGE_INTEGER u;
    GetSystemTimeAsFileTime(&ft);
    u.LowPart = ft.dwLowDateTime;
    u.HighPart = ft.dwHighDateTime;
    /* 100ns since 1601-01-01 -> ms since 1970-01-01 */
    return (long long)(u.QuadPart / 10000ULL) - 11644473600000LL;
#else
    struct timespec ts;
    if (clock_gettime(CLOCK_REALTIME, &ts) != 0) return 0;
    return (long long)ts.tv_sec * 1000LL + (long long)(ts.tv_nsec / 1000000L);
#endif
}

void wu_time_str(char *out, size_t outlen)
{
    time_t now;
    struct tm tmv;

    if (out == NULL || outlen == 0) return;
    now = time(NULL);
#ifdef _WIN32
    {
        struct tm *p = localtime(&now);
        if (p == NULL) { out[0] = '\0'; return; }
        tmv = *p;
    }
#else
    if (localtime_r(&now, &tmv) == NULL) { out[0] = '\0'; return; }
#endif
    if (strftime(out, outlen, "%Y-%m-%dT%H:%M:%S", &tmv) == 0) out[0] = '\0';
}

int wu_is_dir(const char *path)
{
    struct stat st;
    if (path == NULL || path[0] == '\0') return 0;
    if (stat(path, &st) != 0) return 0;
    return (st.st_mode & S_IFMT) == S_IFDIR ? 1 : 0;
}

int wu_mkdir_p(const char *path)
{
    char tmp[512];
    size_t i, n;
    int rc;

    if (path == NULL || path[0] == '\0') return -1;
    if (wu_is_dir(path)) return 0;

    n = strlen(path);
    if (n >= sizeof(tmp)) return -1;
    memcpy(tmp, path, n + 1);

    for (i = 1; i < n; i++) {
        if (tmp[i] != '/') continue;
#ifdef _WIN32
        if (tmp[i - 1] == ':') continue;  /* "D:\" */
#endif
        tmp[i] = '\0';
        if (tmp[0] != '\0' && !wu_is_dir(tmp)) {
            rc = WU_MKDIR(tmp);
            if (rc != 0 && errno != EEXIST) { tmp[i] = '/'; return -1; }
        }
        tmp[i] = '/';
    }
    rc = WU_MKDIR(tmp);
    if (rc != 0 && errno != EEXIST) return -1;
    return wu_is_dir(path) ? 0 : -1;
}

long long wu_file_size(const char *path)
{
    struct stat st;
    if (path == NULL) return -1;
    if (stat(path, &st) != 0) return -1;
    return (long long)st.st_size;
}

int wu_file_identity(const char *path, unsigned long long *dev,
                     unsigned long long *ino, long long *size)
{
    if (path == NULL) return -1;
#ifdef _WIN32
    {
        HANDLE h;
        BY_HANDLE_FILE_INFORMATION info;
        h = CreateFileA(path, 0, FILE_SHARE_READ | FILE_SHARE_WRITE | FILE_SHARE_DELETE,
                        NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
        if (h == INVALID_HANDLE_VALUE) return -1;
        if (!GetFileInformationByHandle(h, &info)) { CloseHandle(h); return -1; }
        CloseHandle(h);
        if (dev)  *dev = (unsigned long long)info.dwVolumeSerialNumber;
        if (ino)  *ino = ((unsigned long long)info.nFileIndexHigh << 32) |
                         (unsigned long long)info.nFileIndexLow;
        if (size) *size = (long long)(((unsigned long long)info.nFileSizeHigh << 32) |
                                      (unsigned long long)info.nFileSizeLow);
        return 0;
    }
#else
    {
        struct stat st;
        if (stat(path, &st) != 0) return -1;
        if (dev)  *dev = (unsigned long long)st.st_dev;
        if (ino)  *ino = (unsigned long long)st.st_ino;
        if (size) *size = (long long)st.st_size;
        return 0;
    }
#endif
}

int wu_open_ro(const char *path)
{
#ifdef _WIN32
    /* 用 CreateFileA 而不是 _open：需要 FILE_SHARE_DELETE，
     * 否则 events.jsonl 在被消费期间无法被删除/重建（POSIX 语义要求能），
     * 主机测试的"文件被重新创建"用例也依赖这个共享模式。 */
    HANDLE h;
    int fd;

    h = CreateFileA(path, GENERIC_READ,
                    FILE_SHARE_READ | FILE_SHARE_WRITE | FILE_SHARE_DELETE,
                    NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
    if (h == INVALID_HANDLE_VALUE) return -1;
    fd = _open_osfhandle((intptr_t)h, _O_RDONLY | _O_BINARY);
    if (fd < 0) { CloseHandle(h); return -1; }
    return fd;
#else
    return WU_OPEN_RO(path);
#endif
}

int wu_read_some(int fd, void *buf, size_t len)
{
    if (fd < 0 || buf == NULL || len == 0) return -1;
    return (int)WU_READ(fd, buf, len);
}

int wu_seek(int fd, long long off)
{
    if (fd < 0 || off < 0) return -1;
    return WU_SEEK(fd, off) < 0 ? -1 : 0;
}

int wu_write_all(int fd, const void *buf, size_t len)
{
    const char *p = (const char *)buf;
    size_t done = 0;

    if (fd < 0) return -1;
    while (done < len) {
#ifdef _WIN32
        int n = _write(fd, p + done, (unsigned int)(len - done));
#else
        ssize_t n = write(fd, p + done, len - done);
#endif
        if (n < 0) {
            if (errno == EINTR) continue;
            return -1;
        }
        if (n == 0) return -1;
        done += (size_t)n;
    }
    return 0;
}

int wu_fsync(int fd)
{
    if (fd < 0) return -1;
    return WU_FSYNC(fd) == 0 ? 0 : -1;
}

int wu_fsync_dir(const char *dirpath)
{
#ifdef _WIN32
    (void)dirpath;
    return 0;   /* Windows 没有目录 fsync 语义 */
#else
    int fd;
    int rc;
    if (dirpath == NULL || dirpath[0] == '\0') return -1;
    fd = open(dirpath, O_RDONLY | O_DIRECTORY | O_CLOEXEC);
    if (fd < 0) return -1;
    rc = fsync(fd);
    close(fd);
    return rc == 0 ? 0 : -1;
#endif
}

int wu_close(int fd)
{
    if (fd < 0) return -1;
    return WU_CLOSE(fd) == 0 ? 0 : -1;
}

int wu_unlink(const char *path)
{
    if (path == NULL) return -1;
    return WU_UNLINK(path) == 0 ? 0 : -1;
}

void wu_dir_name(const char *path, char *out, size_t cap)
{
    size_t i;
    size_t cut = 0;
    int found = 0;

    if (out == NULL || cap == 0) return;
    out[0] = '\0';
    if (path == NULL) { snprintf(out, cap, "."); return; }

    for (i = 0; path[i] != '\0'; i++) {
        if (path[i] == '/' || path[i] == '\\') { cut = i; found = 1; }
    }
    if (!found) { snprintf(out, cap, "."); return; }
    if (cut == 0) cut = 1;                       /* "/x" -> "/" */
    if (cut >= cap) cut = cap - 1;
    memcpy(out, path, cut);
    out[cut] = '\0';
}

int wu_rename_replace(const char *from, const char *to)
{
    if (from == NULL || to == NULL) return -1;
#ifdef _WIN32
    if (MoveFileExA(from, to, MOVEFILE_REPLACE_EXISTING | MOVEFILE_WRITE_THROUGH))
        return 0;
    return -1;
#else
    return rename(from, to) == 0 ? 0 : -1;
#endif
}

long long wu_sleep_ms(long long ms)
{
    if (ms <= 0) return 0;
#ifdef _WIN32
    Sleep((DWORD)ms);
    return 0;
#else
    {
        struct timespec req;
        struct timespec rem;
        req.tv_sec = (time_t)(ms / 1000);
        req.tv_nsec = (long)((ms % 1000) * 1000000L);
        rem.tv_sec = 0;
        rem.tv_nsec = 0;
        if (nanosleep(&req, &rem) == 0) return 0;
        if (errno == EINTR)
            return (long long)rem.tv_sec * 1000LL + (long long)(rem.tv_nsec / 1000000L);
        return 0;
    }
#endif
}

int wu_pid_alive(long long pid)
{
    if (pid <= 1) return 0;
#ifdef _WIN32
    {
        HANDLE h;
        DWORD wr;

        /* WaitForSingleObject(0) == WAIT_TIMEOUT 表示进程还活着；
         * 已退出的进程句柄处于已触发状态。比 GetExitCodeProcess 更省权限。 */
        h = OpenProcess(SYNCHRONIZE | 0x1000 /* PROCESS_QUERY_LIMITED_INFORMATION */,
                        FALSE, (DWORD)pid);
        if (h == NULL) return 0;
        wr = WaitForSingleObject(h, 0);
        CloseHandle(h);
        return (wr == WAIT_TIMEOUT) ? 1 : 0;
    }
#else
    if (kill((pid_t)pid, 0) == 0) return 1;
    return errno == EPERM ? 1 : 0;
#endif
}

/* ---------------- 单实例锁 ---------------- */

static void lock_write_pid(int fd, long long pid)
{
    char buf[32];
    int n = snprintf(buf, sizeof(buf), "%lld\n", pid);

    if (n <= 0) return;
    if (wu_seek(fd, 0) != 0) return;
#ifdef _WIN32
    _chsize(fd, 0);            /* msvcrt 没有 ftruncate 的统一名字 */
#else
    if (ftruncate(fd, 0) != 0) { /* 诊断信息，写不进去也不影响锁 */ }
#endif
    (void)wu_write_all(fd, buf, (size_t)n);
    (void)wu_fsync(fd);
}

static long long lock_read_pid(int fd)
{
    char buf[32];
    int n;

    if (wu_seek(fd, 0) != 0) return 0;
    n = wu_read_some(fd, buf, sizeof(buf) - 1);
    if (n <= 0) return 0;
    buf[n] = '\0';
    return (long long)strtol(buf, NULL, 10);
}

int wu_lock_acquire(wu_lockfile *lk, const char *path, char *err, size_t errlen)
{
    long long me = wu_self_pid();

    if (lk == NULL || path == NULL) return -1;
    lk->fd = -1;
    lk->held = 0;
    lk->owner_pid = 0;

#ifdef _WIN32
    {
        HANDLE h;
        int fd = -1;
        OVERLAPPED ov;

        /* 用 CreateFileA 而不是 _open：_open 的默认共享模式会让别的进程
         * 连"只读打开"都失败（主机测试读不到锁文件里的 PID）。
         * 这里显式给全共享，锁的互斥完全交给 LockFileEx。 */
        h = CreateFileA(path, GENERIC_READ | GENERIC_WRITE,
                        FILE_SHARE_READ | FILE_SHARE_WRITE | FILE_SHARE_DELETE,
                        NULL, OPEN_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);
        if (h == INVALID_HANDLE_VALUE) {
            if (err) snprintf(err, errlen, "lock open failed: %s", path);
            return -1;
        }
        fd = _open_osfhandle((intptr_t)h, _O_RDWR | _O_BINARY);
        if (fd < 0) { CloseHandle(h); if (err) snprintf(err, errlen, "lock fd wrap failed"); return -1; }

        memset(&ov, 0, sizeof(ov));
        /* 只锁 PID 文本之后的一个字节（偏移 64）：LockFileEx 会阻止别的进程读被锁区间，
         * 全文件加锁会让"读 PID 做诊断"在 Windows 上直接失败。锁的互斥性不变。 */
        ov.Offset = 64;
        ov.OffsetHigh = 0;
        if (!LockFileEx(h, LOCKFILE_EXCLUSIVE_LOCK | LOCKFILE_FAIL_IMMEDIATELY,
                        0, 1, 0, &ov)) {
            DWORD e = GetLastError();
            if (e == ERROR_LOCK_VIOLATION || e == ERROR_SHARING_VIOLATION) {
                lk->owner_pid = lock_read_pid(fd);
                _close(fd);
                if (err) {
                    if (lk->owner_pid > 1)
                        snprintf(err, errlen, "another ai_worker holds the lock: %s (owner pid=%lld)",
                                 path, lk->owner_pid);
                    else
                        snprintf(err, errlen, "another ai_worker holds the lock: %s", path);
                }
                return 1;
            }
            _close(fd);
            if (err) snprintf(err, errlen, "LockFileEx failed: %lu", (unsigned long)e);
            return -1;
        }
        lk->fd = fd;
        lk->held = 1;
        lk->owner_pid = lock_read_pid(fd);
        lock_write_pid(fd, me);
        return 0;
    }
#else
    {
        int fd = open(path, O_CREAT | O_RDWR | O_CLOEXEC, 0600);

        if (fd < 0) {
            if (err) snprintf(err, errlen, "lock open failed: %s (%s)", path, strerror(errno));
            return -1;
        }
        if (flock(fd, LOCK_EX | LOCK_NB) != 0) {
            int e = errno;
            if (e == EWOULDBLOCK) {
                long long owner = lock_read_pid(fd);
                close(fd);
                lk->owner_pid = owner;
                if (err) {
                    if (owner > 1)
                        snprintf(err, errlen, "another ai_worker holds the lock: %s (owner pid=%lld)",
                                 path, owner);
                    else
                        snprintf(err, errlen, "another ai_worker holds the lock: %s", path);
                }
                return 1;
            }
            close(fd);
            if (err) snprintf(err, errlen, "flock failed: %s", strerror(e));
            return -1;
        }
        lk->fd = fd;
        lk->held = 1;
        lk->owner_pid = lock_read_pid(fd);
        lock_write_pid(fd, me);
        return 0;
    }
#endif
}

void wu_lock_release(wu_lockfile *lk)
{
    if (lk == NULL || lk->fd < 0) return;
#ifdef _WIN32
    {
        HANDLE h = (HANDLE)_get_osfhandle(lk->fd);
        OVERLAPPED ov;

        memset(&ov, 0, sizeof(ov));
        ov.Offset = 64;
        ov.OffsetHigh = 0;
        if (lk->held) (void)UnlockFileEx(h, 0, 1, 0, &ov);
        _close(lk->fd);
    }
#else
    if (lk->held) (void)flock(lk->fd, LOCK_UN);
    close(lk->fd);
#endif
    lk->fd = -1;
    lk->held = 0;
}

unsigned long long wu_hash64(const void *data, size_t len)
{
    const unsigned char *p = (const unsigned char *)data;
    unsigned long long h = 1469598103934665603ULL;   /* FNV offset basis */
    size_t i;

    for (i = 0; i < len; i++) {
        h ^= (unsigned long long)p[i];
        h *= 1099511628211ULL;
    }
    return h;
}

size_t wu_json_escape(char *dst, size_t cap, const char *src)
{
    size_t o = 0;
    const unsigned char *s = (const unsigned char *)(src ? src : "");

    if (dst == NULL || cap == 0) return 0;
    while (*s != '\0') {
        unsigned char c = *s++;
        const char *esc = NULL;
        char ubuf[8];
        size_t need = 1;

        switch (c) {
        case '"':  esc = "\\\""; break;
        case '\\': esc = "\\\\"; break;
        case '\b': esc = "\\b"; break;
        case '\f': esc = "\\f"; break;
        case '\n': esc = "\\n"; break;
        case '\r': esc = "\\r"; break;
        case '\t': esc = "\\t"; break;
        default:
            if (c < 0x20 || c == 0x7f) {
                snprintf(ubuf, sizeof(ubuf), "\\u%04x", (unsigned int)c);
                esc = ubuf;
            }
            break;
        }
        if (esc != NULL) need = strlen(esc);
        if (o + need + 1 > cap) break;         /* 留 NUL */
        if (esc != NULL) {
            memcpy(dst + o, esc, need);
            o += need;
        } else {
            dst[o++] = (char)c;
        }
    }
    dst[o] = '\0';
    return o;
}

int wu_read_file(const char *path, char *buf, size_t cap, size_t *outlen)
{
    int fd;
    size_t used = 0;

    if (path == NULL || buf == NULL || cap == 0) return -1;
    fd = wu_open_ro(path);
    if (fd < 0) return -1;
    while (used + 1 < cap) {
        int n = wu_read_some(fd, buf + used, cap - 1 - used);
        if (n < 0) { wu_close(fd); return -1; }
        if (n == 0) break;
        used += (size_t)n;
    }
    wu_close(fd);
    buf[used] = '\0';
    if (outlen) *outlen = used;
    return 0;
}

int wu_utf8_validate(const char *s, size_t len)
{
    const unsigned char *p = (const unsigned char *)s;
    size_t i = 0;

    while (i < len) {
        unsigned char c = p[i];
        unsigned int cp;
        int extra;
        int k;

        if (c < 0x80) { i++; continue; }
        if (c >= 0xC2 && c <= 0xDF) { cp = c & 0x1F; extra = 1; }
        else if (c >= 0xE0 && c <= 0xEF) { cp = c & 0x0F; extra = 2; }
        else if (c >= 0xF0 && c <= 0xF4) { cp = c & 0x07; extra = 3; }
        else return -1;                       /* 0x80..0xC1 / 0xF5..0xFF */

        /* 需要 extra 个续字节，越界即判非法（后面 for 里逐字节判断） */
        for (k = 1; k <= extra; k++) {
            if (i + (size_t)k >= len) return -1;
            if ((p[i + (size_t)k] & 0xC0) != 0x80) return -1;
            cp = (cp << 6) | (unsigned int)(p[i + (size_t)k] & 0x3F);
        }
        if (extra == 2 && cp < 0x800) return -1;      /* overlong */
        if (extra == 3 && cp < 0x10000) return -1;
        if (cp > 0x10FFFF) return -1;
        if (cp >= 0xD800 && cp <= 0xDFFF) return -1;  /* 代理区 */
        i += (size_t)extra + 1;
    }
    return 0;
}

int wu_utf8_count(const char *s, size_t len)
{
    const unsigned char *p = (const unsigned char *)s;
    size_t i = 0;
    int n = 0;

    while (i < len) {
        unsigned char c = p[i];
        int extra = 0;
        if (c < 0x80) extra = 0;
        else if (c < 0xE0) extra = 1;
        else if (c < 0xF0) extra = 2;
        else extra = 3;
        i += (size_t)extra + 1;
        n++;
    }
    return n;
}
