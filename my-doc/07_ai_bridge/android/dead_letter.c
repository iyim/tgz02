/*
 * dead_letter.c -- 见 dead_letter.h（T7-08 版本）
 *
 * 这个文件只做两件事：把一条记录变成"一行严格合法的 JSON"，把它持久地追加到文件里。
 * 并发与持久化语义是这份代码的重点，注释按"为什么"写，不写"是什么"。
 */
#ifdef _WIN32
#  ifndef _WIN32_WINNT
#    define _WIN32_WINNT 0x0601
#  endif
#endif

#include "dead_letter.h"

#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <string.h>
#include <sys/stat.h>

#ifdef _WIN32
#  include <io.h>
#  include <windows.h>
#  define DL_OPEN_RW(p)      _open((p), _O_RDWR | _O_CREAT | _O_BINARY, _S_IREAD | _S_IWRITE)
#  define DL_TRUNC(fd, n)    _chsize((fd), (long)(n))
#  define DL_END(fd)         _lseeki64((fd), 0, SEEK_END)
#  define DL_SEEK(fd, o)     _lseeki64((fd), (o), SEEK_SET)
#  define DL_READ(fd, b, n)  _read((fd), (b), (unsigned int)(n))
#  define DL_WRITE(fd, b, n) _write((fd), (b), (unsigned int)(n))
#  define DL_SYNC(fd)        _commit(fd)
#  define DL_CLOSE(fd)       _close(fd)

/* Windows 没有 flock：用 LockFileEx 把整个文件锁住（阻塞式排他锁）。 */
static int dl_lock(int fd)
{
    HANDLE h = (HANDLE)_get_osfhandle(fd);
    OVERLAPPED ov;

    if (h == INVALID_HANDLE_VALUE) return -1;
    memset(&ov, 0, sizeof(ov));
    if (!LockFileEx(h, LOCKFILE_EXCLUSIVE_LOCK, 0, 0xFFFFFFFFu, 0xFFFFFFFFu, &ov))
        return -1;
    return 0;
}

static void dl_unlock(int fd)
{
    HANDLE h = (HANDLE)_get_osfhandle(fd);
    OVERLAPPED ov;

    if (h == INVALID_HANDLE_VALUE) return;
    memset(&ov, 0, sizeof(ov));
    (void)UnlockFileEx(h, 0, 0xFFFFFFFFu, 0xFFFFFFFFu, &ov);
}
#else
#  include <sys/file.h>
#  include <unistd.h>
#  define DL_OPEN_RW(p)      open((p), O_RDWR | O_CREAT | O_CLOEXEC, 0600)
#  define DL_TRUNC(fd, n)    ftruncate((fd), (off_t)(n))
#  define DL_END(fd)         (long long)lseek((fd), 0, SEEK_END)
#  define DL_SEEK(fd, o)     (long long)lseek((fd), (off_t)(o), SEEK_SET)
#  define DL_READ(fd, b, n)  read((fd), (b), (n))
#  define DL_WRITE(fd, b, n) write((fd), (b), (n))
#  define DL_SYNC(fd)        fsync(fd)
#  define DL_CLOSE(fd)       close(fd)

/* POSIX flock 是"整个文件"的排他锁，随 fd 关闭自动释放。 */
static int dl_lock(int fd)   { return (flock(fd, LOCK_EX) == 0) ? 0 : -1; }
static void dl_unlock(int fd) { (void)flock(fd, LOCK_UN); }
#endif

#ifdef T6B_DL_TESTING
int t6b_dl_test_fault;
void t6b_dl_test_fault_set(int fault) { t6b_dl_test_fault = fault; }
int  t6b_dl_test_fault_peek(void) { return t6b_dl_test_fault; }
#define DL_FAULT_TAKE(f) do { if (t6b_dl_test_fault == (f)) { t6b_dl_test_fault = T6B_DL_FAULT_NONE; } } while (0)
#endif

/* ---------------- 缓冲区（越界即标记溢出，绝不截断输出） ---------------- */

typedef struct {
    char  *p;
    size_t cap;
    size_t o;
    int    overflow;
} dl_buf;

static void dl_raw(dl_buf *b, const char *s, size_t n)
{
    if (b->overflow) return;
    if (b->o + n > b->cap) { b->overflow = 1; return; }
    memcpy(b->p + b->o, s, n);
    b->o += n;
}

static void dl_str(dl_buf *b, const char *s) { dl_raw(b, s, strlen(s)); }

static void dl_num(dl_buf *b, long long v)
{
    char tmp[32];
    int n = snprintf(tmp, sizeof(tmp), "%lld", v);
    if (n <= 0 || (size_t)n >= sizeof(tmp)) { b->overflow = 1; return; }
    dl_raw(b, tmp, (size_t)n);
}

/* ---------------- UTF-8 ---------------- */

/* 返回位置 p 上一个合法 UTF-8 序列的长度；非法返回 0（规则与 wu_utf8_validate 一致）。 */
static size_t dl_utf8_seq(const unsigned char *p, size_t avail)
{
    unsigned char c;
    int extra;
    unsigned int cp;
    int k;

    if (avail == 0) return 0;
    c = p[0];
    if (c < 0x80) return 1;
    if (c >= 0xC2 && c <= 0xDF) { cp = (unsigned int)(c & 0x1F); extra = 1; }
    else if (c >= 0xE0 && c <= 0xEF) { cp = (unsigned int)(c & 0x0F); extra = 2; }
    else if (c >= 0xF0 && c <= 0xF4) { cp = (unsigned int)(c & 0x07); extra = 3; }
    else return 0;

    if (avail < (size_t)extra + 1) return 0;
    for (k = 1; k <= extra; k++) {
        if ((p[k] & 0xC0) != 0x80) return 0;
        cp = (cp << 6) | (unsigned int)(p[k] & 0x3F);
    }
    if (extra == 2 && cp < 0x800u) return 0;              /* overlong */
    if (extra == 3 && cp < 0x10000u) return 0;            /* overlong */
    if (cp > 0x10FFFFu) return 0;
    if (cp >= 0xD800u && cp <= 0xDFFFu) return 0;         /* 代理区 */
    return (size_t)extra + 1;
}

/* 把 src[0..len) 转义后追加到 b；返回 1 = 全是合法 UTF-8，0 = 出现过非法字节（已替换为 '?'）。 */
static int dl_escape(dl_buf *b, const char *src, size_t len)
{
    const unsigned char *p = (const unsigned char *)src;
    size_t i = 0;
    int ok = 1;

    if (p == NULL) return 1;
    while (i < len) {
        unsigned char c = p[i];
        size_t seq;

        if (c < 0x80) {
            switch (c) {
            case '"':  dl_str(b, "\\\""); break;
            case '\\': dl_str(b, "\\\\"); break;
            case '\b': dl_str(b, "\\b");  break;
            case '\f': dl_str(b, "\\f");  break;
            case '\n': dl_str(b, "\\n");  break;
            case '\r': dl_str(b, "\\r");  break;
            case '\t': dl_str(b, "\\t");  break;
            default:
                if (c < 0x20 || c == 0x7f) {
                    char ubuf[8];
                    int n = snprintf(ubuf, sizeof(ubuf), "\\u%04x", (unsigned int)c);
                    if (n <= 0 || (size_t)n >= sizeof(ubuf)) { b->overflow = 1; return ok; }
                    dl_raw(b, ubuf, (size_t)n);
                } else {
                    dl_raw(b, (const char *)&c, 1);
                }
                break;
            }
            i++;
            continue;
        }

        seq = dl_utf8_seq(p + i, len - i);
        if (seq == 0) {
            dl_raw(b, "?", 1);   /* 宁可失真，也不产出坏 JSON */
            ok = 0;
            i++;
            continue;
        }
        dl_raw(b, (const char *)(p + i), seq);
        i += seq;
    }
    return ok;
}

/* ---------------- 格式化 ---------------- */

size_t t6b_dl_format(char *dst, size_t cap, const t6b_dl_rec *r)
{
    dl_buf b;
    int id_ok, cls_ok;

    if (dst == NULL || cap == 0 || r == NULL) return 0;

    b.p = dst;
    b.cap = cap;
    b.o = 0;
    b.overflow = 0;

    dl_str(&b, "{\"ts\":");
    dl_num(&b, r->ts_ms);
    dl_str(&b, ",\"event_id\":\"");
    id_ok = dl_escape(&b, r->event_id, r->event_id_len);
    dl_str(&b, "\",\"seq\":");
    dl_num(&b, (long long)r->seq);
    dl_str(&b, ",\"attempts\":");
    dl_num(&b, (long long)r->attempts);
    dl_str(&b, ",\"error_class\":\"");
    cls_ok = dl_escape(&b, r->error_class, r->error_class_len);
    dl_str(&b, "\",\"error_bytes\":");
    dl_num(&b, (long long)r->error_bytes);
    dl_str(&b, ",\"invalid_utf8\":");
    dl_num(&b, (id_ok && cls_ok) ? 0 : 1);
    dl_str(&b, "}\n");

    if (b.overflow || b.o + 1 > b.cap) return 0;   /* 放不下：调用方必须当作失败 */
    dst[b.o] = '\0';
    return b.o;
}

/* ---------------- IO 小工具（带测试用故障注入） ---------------- */

static int dl_write_once(int fd, const char *buf, size_t len)
{
#ifdef T6B_DL_TESTING
    if (t6b_dl_test_fault == T6B_DL_FAULT_WRITE_FAIL) {
        DL_FAULT_TAKE(T6B_DL_FAULT_WRITE_FAIL);
        errno = EIO;
        return -1;
    }
    if (t6b_dl_test_fault == T6B_DL_FAULT_WRITE_SHORT && len > 1) {
        size_t half = len / 2;
        DL_FAULT_TAKE(T6B_DL_FAULT_WRITE_SHORT);
        /* 真的只写一半（返回短计数），逼调用方走"短写续写"分支 */
        return DL_WRITE(fd, buf, half);
    }
#endif
    return DL_WRITE(fd, buf, len);
}

static int dl_write_all(int fd, const char *buf, size_t len)
{
    size_t done = 0;

    while (done < len) {
        int n = dl_write_once(fd, buf + done, len - done);
        if (n <= 0) return -1;
        done += (size_t)n;
    }
    return 0;
}

static int dl_read_all(int fd, char *buf, size_t len)
{
    size_t done = 0;

    while (done < len) {
        int n = DL_READ(fd, buf + done, len - done);
        if (n <= 0) return -1;
        done += (size_t)n;
    }
    return 0;
}

static int dl_sync(int fd)
{
#ifdef T6B_DL_TESTING
    if (t6b_dl_test_fault == T6B_DL_FAULT_FSYNC_FAIL) {
        DL_FAULT_TAKE(T6B_DL_FAULT_FSYNC_FAIL);
        errno = EIO;
        return -1;
    }
#endif
    return (DL_SYNC(fd) == 0) ? 0 : -1;
}

/* close 失败只作为告警：数据是否落盘由 fsync 决定，不由 close 决定。 */
static int dl_close(int fd)
{
#ifdef T6B_DL_TESTING
    if (t6b_dl_test_fault == T6B_DL_FAULT_CLOSE_FAIL) {
        DL_FAULT_TAKE(T6B_DL_FAULT_CLOSE_FAIL);
        (void)DL_CLOSE(fd);
        errno = EIO;
        return -1;
    }
#endif
    return (DL_CLOSE(fd) == 0) ? 0 : -1;
}

/* ---------------- 尾部修复 ---------------- */

/*
 * 从文件尾向前分块找最近一个 '\n'，返回"最后一条完整记录之后"的偏移：
 *   size      文件本来就是干净的（以 '\n' 结尾）
 *   0         整个文件没有任何 '\n'：没有任何完整记录
 *   其它      需要截断到这个位置
 * 返回 -1 表示 IO 出错（调用方必须放弃写入，不能瞎猜偏移）。
 *
 * 注意：这里**没有 4 KB 上限**。4 KB 只是每次读的块大小；一段超长半行会被逐块走完。
 */
static long long dl_last_record_end(int fd, long long size)
{
    char buf[T6B_DL_SCAN_CHUNK];
    long long pos = size;

    while (pos > 0) {
        long long start = (pos > (long long)sizeof(buf)) ? pos - (long long)sizeof(buf) : 0;
        long long n = pos - start;
        long long i;

        if (DL_SEEK(fd, start) != start) return -1;
        if (dl_read_all(fd, buf, (size_t)n) != 0) return -1;

        for (i = n - 1; i >= 0; i--) {
            if (buf[i] == '\n') return start + i + 1;
        }
        pos = start;
    }
    return 0;
}

/* 把文件截到 len 并落盘；用于回滚与尾部修复。 */
static int dl_truncate_sync(int fd, long long len)
{
    if (DL_TRUNC(fd, len) != 0) return -1;
    if (DL_SEEK(fd, len) != len) return -1;
    return dl_sync(fd);
}

/* ---------------- 追加 ---------------- */

int t6b_dl_append(const char *path, const char *line, size_t len, t6b_dl_out *out)
{
    int fd;
    int rc = -1;
    int close_failed = 0;
    int close_errno = 0;
    long long size;
    long long end;
    long long repaired = 0;

    if (out != NULL) { out->repaired_bytes = 0; out->close_failed = 0; out->close_errno = 0; }
    if (path == NULL || path[0] == '\0' || line == NULL) return -1;
    if (len == 0 || len >= T6B_DL_LINE_MAX) return -1;
    if (line[len - 1] != '\n') return -1;          /* 只接受"完整的一行" */

    fd = DL_OPEN_RW(path);
    if (fd < 0) return -1;

#ifdef T6B_DL_TESTING
    if (t6b_dl_test_fault == T6B_DL_FAULT_LOCK_FAIL) {
        DL_FAULT_TAKE(T6B_DL_FAULT_LOCK_FAIL);
        (void)dl_close(fd);
        errno = EWOULDBLOCK;
        return -1;
    }
#endif

    /* 互斥覆盖"修复 + 追加 + fsync"全程：期间不会有第二个写者看到半行。 */
    if (dl_lock(fd) != 0) { (void)dl_close(fd); return -1; }

    size = DL_END(fd);
    if (size < 0) goto done;

    end = dl_last_record_end(fd, size);
    if (end < 0) goto done;

    if (end != size) {
        repaired = size - end;
        if (dl_truncate_sync(fd, end) != 0) goto done;   /* 修复本身也要落盘 */
    }
    if (DL_SEEK(fd, end) != end) goto done;

    if (dl_write_all(fd, line, len) != 0) {
        (void)dl_truncate_sync(fd, end);   /* 回滚：不留半条记录 */
        goto done;
    }
    if (dl_sync(fd) != 0) {
        (void)dl_truncate_sync(fd, end);
        goto done;
    }

    rc = 0;   /* 到这里记录已经持久化；close 的任何错误都不改变这个事实 */

done:
    dl_unlock(fd);
    if (dl_close(fd) != 0) { close_failed = 1; close_errno = errno; }

    if (out != NULL) {
        out->repaired_bytes = repaired;
        out->close_failed = (rc == 0) ? close_failed : 0;
        out->close_errno = (rc == 0) ? close_errno : 0;
    }
    return rc;
}
