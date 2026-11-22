/*
 * dead_letter.c -- 见 dead_letter.h
 *
 * 设计要点（按验收要求逐条对应）：
 *   1) 转义：'"' '\\' '\b' '\f' '\n' '\r' '\t' 用短转义，其余 <0x20 与 0x7f 用 \u00XX；
 *      合法 UTF-8 多字节序列原样输出；非法字节替换成 '?'，并在记录里留 invalid_utf8:1。
 *   2) 严格 JSON Lines：一行一个对象，行尾必带 '\n'，结构里不出现单引号伪装。
 *   3) 可被标准解析器独立解析：每行自包含（无前后依赖）。
 *   4) 写失败不推进 offset：本文件只负责"写 + fsync"，失败返回 -1；offset 只由
 *      ai_worker 在返回 0 之后提交（顺序：写 → fsync → commit）。
 *   5) 崩溃/半行：下次追加前先修尾部；修不了就用 '\n' 分隔，让新记录独占一行，
 *      损坏的半行永远不会被当成一条成功记录（它本来就缺行尾、不会被计为已处理）。
 *
 * 本文件不含任何业务逻辑，也不读配置；不引入动态内存。
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
#  define DL_OPEN_APPEND(p)  _open((p), _O_RDWR | _O_CREAT | _O_APPEND | _O_BINARY, \
                                   _S_IREAD | _S_IWRITE)
#  define DL_TRUNC(fd, n)    _chsize((fd), (long)(n))
#  define DL_END(fd)         _lseeki64((fd), 0, SEEK_END)
#  define DL_SEEK(fd, o)     _lseeki64((fd), (o), SEEK_SET)
#  define DL_READ(fd, b, n)  _read((fd), (b), (unsigned int)(n))
#  define DL_WRITE(fd, b, n) _write((fd), (b), (unsigned int)(n))
#  define DL_SYNC(fd)        _commit(fd)
#  define DL_CLOSE(fd)       _close(fd)
#else
#  include <unistd.h>       /* read/write/lseek/close/fsync/ftruncate */
#  define DL_OPEN_APPEND(p)  open((p), O_RDWR | O_CREAT | O_APPEND | O_CLOEXEC, 0600)
#  define DL_TRUNC(fd, n)    ftruncate((fd), (off_t)(n))
#  define DL_END(fd)         (long long)lseek((fd), 0, SEEK_END)
#  define DL_SEEK(fd, o)     (long long)lseek((fd), (off_t)(o), SEEK_SET)
#  define DL_READ(fd, b, n)  read((fd), (b), (n))
#  define DL_WRITE(fd, b, n) write((fd), (b), (n))
#  define DL_SYNC(fd)        fsync(fd)
#  define DL_CLOSE(fd)       close(fd)
#endif

/* 尾部扫描窗口：本模块写出的单行 ≤ T6B_DL_LINE_MAX，两倍窗口足够覆盖任何半行。 */
#define DL_TAIL_WINDOW (2 * T6B_DL_LINE_MAX)

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

static void dl_str(dl_buf *b, const char *s)
{
    dl_raw(b, s, strlen(s));
}

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

/*
 * 把 src[0..len) 转义后追加到 b。
 * 返回 1 = 全部是合法 UTF-8；0 = 出现过非法字节（已被替换成 '?'）。
 */
static int dl_escape(dl_buf *b, const char *src, size_t len)
{
    const unsigned char *p = (const unsigned char *)src;
    size_t i = 0;
    int ok = 1;

    if (p == NULL) { return 1; }
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
            /* 非法字节：宁可失真也不产出坏 JSON */
            dl_raw(b, "?", 1);
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
    dst[b.o] = '\0';                              /* 顺手 NUL 结尾，方便 %s/%s 日志 */
    return b.o;
}

/* ---------------- 落盘 ---------------- */

static int dl_write_all(int fd, const char *buf, size_t len)
{
    size_t done = 0;

    while (done < len) {
        int n = DL_WRITE(fd, buf + done, len - done);
        if (n <= 0) return -1;
        done += (size_t)n;
    }
    return 0;
}

/*
 * 修尾部：保证下一次追加从"干净的行首"开始。
 * 返回修复后的文件长度（>=0）；-1 = 出错。
 * *need_sep=1 表示尾部有超长半行、窗口内找不到 '\n'，只能先补一个 '\n' 分隔。
 */
static long long dl_repair_tail(int fd, long long size, int *need_sep, long long *repaired)
{
    char win[DL_TAIL_WINDOW];
    long long start;
    long long good;
    int n;
    int i;

    *need_sep = 0;
    *repaired = 0;
    if (size <= 0) return size;

    if (DL_SEEK(fd, size - 1) != size - 1) return -1;
    n = DL_READ(fd, win, 1);
    if (n != 1) return -1;
    if (win[0] == '\n') return size;

    start = (size > (long long)sizeof(win)) ? size - (long long)sizeof(win) : 0;
    if (DL_SEEK(fd, start) != start) return -1;
    n = DL_READ(fd, win, (size_t)(size - start));
    if (n <= 0) return -1;

    good = -1;
    for (i = n - 1; i >= 0; i--) {
        if (win[i] == '\n') { good = start + i + 1; break; }
    }

    if (good < 0) {
        if (start == 0) {
            /* 整个文件就是一条半行：没有可保留的内容，清空 */
            if (DL_TRUNC(fd, 0) != 0) return -1;
            if (DL_SEEK(fd, 0) != 0) return -1;
            *repaired = size;
            return 0;
        }
        *need_sep = 1;
        return size;
    }

    if (DL_TRUNC(fd, good) != 0) return -1;
    /* 截断后必须自己把偏移放回新末尾：Windows 的 _chsize 不动 CRT 的 fd 位置，
     * 不补这一步，下一次 write 会写回旧偏移，把文件写花（现场复现过）。 */
    if (DL_SEEK(fd, good) != good) return -1;
    *repaired = size - good;
    return good;
}

int t6b_dl_append(const char *path, const char *line, size_t len,
                  long long *out_repaired_bytes)
{
    int fd;
    long long size;
    long long good;
    long long repaired = 0;
    int need_sep = 0;

    if (path == NULL || path[0] == '\0' || line == NULL || len == 0) return -1;

    fd = DL_OPEN_APPEND(path);
    if (fd < 0) return -1;

    size = DL_END(fd);
    if (size < 0) { (void)DL_CLOSE(fd); return -1; }

    good = dl_repair_tail(fd, size, &need_sep, &repaired);
    if (good < 0) { (void)DL_CLOSE(fd); return -1; }

    /* 写之前把偏移显式放到"这段文件的末尾"（POSIX 下 O_APPEND 会再覆盖一次，
     * Windows 下这一步是必需的，见 dl_repair_tail 的注释）。 */
    if (DL_SEEK(fd, good) != good) { (void)DL_CLOSE(fd); return -1; }

    if (need_sep) {
        if (dl_write_all(fd, "\n", 1) != 0) {
            (void)DL_TRUNC(fd, good);
            (void)DL_SYNC(fd);
            (void)DL_CLOSE(fd);
            return -1;
        }
    }
    if (dl_write_all(fd, line, len) != 0) {
        (void)DL_TRUNC(fd, good);              /* 回滚：半行不留在文件里 */
        (void)DL_SYNC(fd);
        (void)DL_CLOSE(fd);
        return -1;
    }
    if (DL_SYNC(fd) != 0) {
        (void)DL_TRUNC(fd, good);
        (void)DL_SYNC(fd);
        (void)DL_CLOSE(fd);
        return -1;
    }
    if (DL_CLOSE(fd) != 0) return -1;

    if (out_repaired_bytes != NULL) *out_repaired_bytes = repaired;
    return 0;
}
