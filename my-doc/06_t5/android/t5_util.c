/*
 * t5_util.c -- 见 t5_util.h
 */
#ifdef _WIN32
/* GetTickCount64 需要 Vista+ 的声明；只在主机测试（Windows）路径用到 */
#  ifndef _WIN32_WINNT
#    define _WIN32_WINNT 0x0601
#  endif
#endif

#include "t5_util.h"

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
#  define T5_MKDIR(p)   _mkdir(p)
#  define T5_OPEN_RO(p) _open((p), _O_RDONLY | _O_BINARY)
#  define T5_FSYNC(fd)  _commit(fd)
#else
#  include <unistd.h>
#  define T5_MKDIR(p)   mkdir((p), 0775)
#  define T5_OPEN_RO(p) open((p), O_RDONLY)
#  define T5_FSYNC(fd)  fsync(fd)
#endif

long long t5_now_ms(void)
{
#ifdef _WIN32
    return (long long)GetTickCount64();
#else
    struct timespec ts;
    if (clock_gettime(CLOCK_MONOTONIC, &ts) != 0) return 0;
    return (long long)ts.tv_sec * 1000LL + (long long)(ts.tv_nsec / 1000000L);
#endif
}

void t5_time_str(char *out, size_t outlen)
{
    time_t now;
    struct tm tmv;
    size_t n;

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
    n = strftime(out, outlen, "%Y-%m-%dT%H:%M:%S", &tmv);
    if (n == 0) out[0] = '\0';
}

int t5_is_dir(const char *path)
{
    struct stat st;
    if (path == NULL || path[0] == '\0') return 0;
    if (stat(path, &st) != 0) return 0;
    return (st.st_mode & S_IFMT) == S_IFDIR ? 1 : 0;
}

int t5_mkdir_p(const char *path)
{
    char tmp[T5_MAX_PATH];
    size_t i, n;

    if (path == NULL || path[0] == '\0') return -1;
    n = strlen(path);
    if (n >= sizeof(tmp)) return -1;
    memcpy(tmp, path, n + 1);

    /* 去掉结尾的 '/'，避免 Windows 上 "a/b/" 创建失败 */
    while (n > 1 && (tmp[n - 1] == '/' || tmp[n - 1] == '\\')) tmp[--n] = '\0';

    for (i = 1; i < n; i++) {
        if (tmp[i] != '/' && tmp[i] != '\\') continue;
        tmp[i] = '\0';
        if (!t5_is_dir(tmp)) {
#ifdef _WIN32
            /* Windows 盘符 "D:" 单独 mkdir 会失败，跳过 */
            if (!(strlen(tmp) == 2 && tmp[1] == ':')) {
                if (T5_MKDIR(tmp) != 0 && errno != EEXIST) { return -1; }
            }
#else
            if (T5_MKDIR(tmp) != 0 && errno != EEXIST) { return -1; }
#endif
        }
        tmp[i] = (path[i] == '\\') ? '\\' : '/';
    }
#ifdef _WIN32
    if (!(strlen(tmp) == 2 && tmp[1] == ':')) {
        if (T5_MKDIR(tmp) != 0 && errno != EEXIST) return -1;
    }
#else
    if (T5_MKDIR(tmp) != 0 && errno != EEXIST) return -1;
#endif
    return t5_is_dir(path) ? 0 : -1;
}

const char *t5_base_name(const char *path)
{
    const char *p;
    if (path == NULL) return "";
    p = strrchr(path, '/');
    if (p == NULL) p = strrchr(path, '\\');
    return p ? p + 1 : path;
}

int t5_ends_with_ci(const char *name, const char *suffix)
{
    size_t n, m, i;
    if (name == NULL || suffix == NULL) return 0;
    n = strlen(name);
    m = strlen(suffix);
    if (m == 0 || n < m) return 0;
    for (i = 0; i < m; i++) {
        char a = name[n - m + i];
        char b = suffix[i];
        if (a >= 'A' && a <= 'Z') a = (char)(a - 'A' + 'a');
        if (b >= 'A' && b <= 'Z') b = (char)(b - 'A' + 'a');
        if (a != b) return 0;
    }
    return 1;
}

long long t5_file_size(const char *path)
{
    struct stat st;
    if (path == NULL) return -1;
    if (stat(path, &st) != 0) return -1;
    if ((st.st_mode & S_IFMT) != S_IFREG) return -1;
    return (long long)st.st_size;
}

long long t5_file_mtime_ms(const char *path)
{
    struct stat st;
    if (path == NULL) return -1;
    if (stat(path, &st) != 0) return -1;
    if ((st.st_mode & S_IFMT) != S_IFREG) return -1;
    return (long long)st.st_mtime * 1000LL;
}

long t5_read_at(const char *path, long long offset, void *buf, size_t len)
{
    int fd;
    long got = 0;

    if (path == NULL || buf == NULL) return -1;
    fd = T5_OPEN_RO(path);
    if (fd < 0) return -1;
#ifdef _WIN32
    if (_lseeki64(fd, offset, SEEK_SET) < 0) { _close(fd); return -1; }
    {
        int r = _read(fd, buf, (unsigned)len);
        if (r >= 0) got = (long)r; else got = -1;
    }
    _close(fd);
#else
    if (lseek(fd, (off_t)offset, SEEK_SET) < 0) { close(fd); return -1; }
    {
        ssize_t r = read(fd, buf, len);
        got = (r >= 0) ? (long)r : -1;
    }
    close(fd);
#endif
    return got;
}

int t5_write_all(int fd, const void *buf, size_t len)
{
    const char *p = (const char *)buf;
    size_t off = 0;

    while (off < len) {
#ifdef _WIN32
        int n = _write(fd, p + off, (unsigned)(len - off));
#else
        ssize_t n = write(fd, p + off, len - off);
#endif
        if (n < 0) {
            if (errno == EINTR) continue;
            return -1;
        }
        if (n == 0) return -1;
        off += (size_t)n;
    }
    return 0;
}

int t5_sync(int fd)
{
    return T5_FSYNC(fd) == 0 ? 0 : -1;
}

uint64_t t5_fnv1a64(const void *data, size_t len)
{
    const unsigned char *p = (const unsigned char *)data;
    uint64_t h = 1469598103934665603ULL;
    size_t i;
    for (i = 0; i < len; i++) {
        h ^= (uint64_t)p[i];
        h *= 1099511628211ULL;
    }
    return h;
}

void t5_make_job_id(const char *name, long long size, char out[17])
{
    char key[T5_MAX_PATH + 32];
    int n;
    uint64_t h;

    if (name == NULL) name = "";
    n = snprintf(key, sizeof(key), "%s:%lld", name, size);
    if (n < 0) n = 0;
    if ((size_t)n >= sizeof(key)) n = (int)sizeof(key) - 1;
    h = t5_fnv1a64(key, (size_t)n);
    snprintf(out, 17, "%016llx", (unsigned long long)h);
}

size_t t5_json_escape(char *dst, size_t outlen, const char *src)
{
    size_t w = 0;
    const unsigned char *p = (const unsigned char *)(src ? src : "");

    if (dst == NULL || outlen == 0) return 0;
    while (*p) {
        unsigned char c = *p++;
        const char *rep = NULL;
        char buf[8];
        size_t need;

        switch (c) {
        case '"':  rep = "\\\""; break;
        case '\\': rep = "\\\\"; break;
        case '\n': rep = "\\n";  break;
        case '\r': rep = "\\r";  break;
        case '\t': rep = "\\t";  break;
        default:
            if (c < 0x20) {
                snprintf(buf, sizeof(buf), "\\u%04x", (unsigned)c);
                rep = buf;
            }
            break;
        }
        if (rep != NULL) {
            need = strlen(rep);
            if (w + need >= outlen) break;
            memcpy(dst + w, rep, need);
            w += need;
        } else {
            if (w + 1 >= outlen) break;
            dst[w++] = (char)c;
        }
    }
    dst[w] = '\0';
    return w;
}

void t5_parse_t4_name(const char *name, char run_id[16], long *seg_id, long long *start_seq)
{
    /* 期望：seg_<8 hex>_<4 位以上数字>_<数字>.wav ；不匹配就留空/0 */
    const char *p;
    int i;

    if (run_id != NULL) run_id[0] = '\0';
    if (seg_id != NULL) *seg_id = 0;
    if (start_seq != NULL) *start_seq = 0;
    if (name == NULL) return;

    p = name;
    if (strncmp(p, "seg_", 4) != 0) return;
    p += 4;

    if (run_id != NULL) {
        for (i = 0; i < 8; i++) {
            char c = p[i];
            int ok = (c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || (c >= 'A' && c <= 'F');
            if (!ok) return;
            run_id[i] = c;
        }
        run_id[8] = '\0';
    }
    p += 8;
    if (*p != '_') { if (run_id) run_id[0] = '\0'; return; }
    p++;

    if (seg_id != NULL) {
        long v = 0;
        int digits = 0;
        while (*p >= '0' && *p <= '9') { v = v * 10 + (*p - '0'); p++; digits++; }
        if (digits == 0) return;
        *seg_id = v;
    } else {
        while (*p >= '0' && *p <= '9') p++;
    }
    if (*p != '_') return;
    p++;

    if (start_seq != NULL) {
        long long v = 0;
        int digits = 0;
        while (*p >= '0' && *p <= '9') { v = v * 10 + (*p - '0'); p++; digits++; }
        if (digits == 0) return;
        *start_seq = v;
    }
}
