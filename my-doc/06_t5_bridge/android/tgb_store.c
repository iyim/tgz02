/*
 * tgb_store.c -- 见 tgb_store.h
 */
#include "tgb_store.h"

#include "t5_util.h"

#include <errno.h>
#include <stdio.h>
#include <string.h>

#ifdef _WIN32
#  include <fcntl.h>
#  include <io.h>
#  include <sys/stat.h>
#  define TGB_OPEN_APPEND(p) _open((p), _O_WRONLY | _O_CREAT | _O_APPEND | _O_BINARY, 0664)
#  define TGB_OPEN_RDWR(p)   _open((p), _O_RDWR | _O_BINARY)
#  define TGB_CLOSE(fd)      _close(fd)
#  define TGB_TRUNC(fd, n)   (_chsize_s((fd), (long long)(n)) == 0 ? 0 : -1)
#else
#  include <fcntl.h>
#  include <unistd.h>
#  define TGB_OPEN_APPEND(p) open((p), O_WRONLY | O_CREAT | O_APPEND, 0664)
#  define TGB_OPEN_RDWR(p)   open((p), O_RDWR)
#  define TGB_CLOSE(fd)      close(fd)
#  define TGB_TRUNC(fd, n)   (ftruncate((fd), (off_t)(n)) == 0 ? 0 : -1)
#endif

#define TGB_TAIL_CHUNK 4096

/*
 * 同步工作目录项。
 *
 * 为什么需要：`events.jsonl` 第一次被创建时，"文件内容已 fsync" 只保证数据块落盘，
 * 不保证**目录项**（文件名 -> inode）落盘。掉电后可能出现"数据在、名字不在"，
 * 也就是事件看起来丢了。POSIX 的做法是对父目录 fsync 一次。
 *
 * Android/Linux：open(dir, O_RDONLY|O_DIRECTORY) + fsync + close，任何一步失败都返回 -1。
 * Windows      ：没有等价且稳定的目录同步接口，主机测试跳过（不影响设备端语义）。
 */
static int tgb_sync_directory(const char *dir, char *err, size_t errlen)
{
#ifdef _WIN32
    (void)dir;
    (void)err;
    (void)errlen;
    return 0;
#else
    int fd;
    int flags = O_RDONLY;
    int saved;

#ifdef O_DIRECTORY
    flags |= O_DIRECTORY;
#endif

    fd = open(dir, flags);
    if (fd < 0) {
        saved = errno;
        if (err && errlen)
            snprintf(err, errlen, "open directory %s failed errno=%d", dir, saved);
        errno = saved;
        return -1;
    }

    if (fsync(fd) != 0) {
        saved = errno;
        close(fd);
        if (err && errlen)
            snprintf(err, errlen, "fsync directory %s failed errno=%d", dir, saved);
        errno = saved;
        return -1;
    }

    if (close(fd) != 0) {
        saved = errno;
        if (err && errlen)
            snprintf(err, errlen, "close directory %s failed errno=%d", dir, saved);
        errno = saved;
        return -1;
    }

    return 0;
#endif
}

int tgb_store_open(tgb_store *s, const char *dir, const char *file,
                   long long fault_after, char *err, size_t errlen)
{
    int n;

    if (s == NULL || dir == NULL || file == NULL) return -1;
    memset(s, 0, sizeof(*s));
    s->fd = -1;
    s->fault_after = fault_after < 0 ? -1 : fault_after;

    n = snprintf(s->path, sizeof(s->path), "%s/%s", dir, file);
    if (n < 0 || (size_t)n >= sizeof(s->path)) {
        if (err && errlen) snprintf(err, errlen, "store path too long");
        return -1;
    }

    s->fd = TGB_OPEN_APPEND(s->path);
    if (s->fd < 0) {
        if (err && errlen) snprintf(err, errlen, "open %s failed errno=%d", s->path, errno);
        return -1;
    }
    s->offset = t5_file_size(s->path);
    if (s->offset < 0) s->offset = 0;

    /* 目录项持久化：失败必须关掉刚打开的文件并返回错误，
     * 不允许带着"文件名可能还没落盘"的状态继续启动并向发送端 ACK stored */
    if (tgb_sync_directory(dir, err, errlen) != 0) {
        TGB_CLOSE(s->fd);
        s->fd = -1;
        return -1;
    }
    return 0;
}

void tgb_store_close(tgb_store *s)
{
    if (s == NULL) return;
    if (s->fd >= 0) {
        TGB_CLOSE(s->fd);
        s->fd = -1;
    }
}

int tgb_store_append(tgb_store *s, const char *line, size_t len,
                     char *err, size_t errlen)
{
    long long before;

    if (s == NULL || s->fd < 0 || line == NULL || len == 0) return -1;
    if (s->failed) return -2;

    if (s->fault_after >= 0 && (long long)s->appends >= s->fault_after) {
        /* 主机测试注入的落盘失败：语义与真实写失败完全一致（不写入、进入 fail-stop） */
        s->faults++;
        s->failed = 1;
        if (err && errlen) snprintf(err, errlen, "injected_write_failure after %lld appends",
                                    (long long)s->appends);
        return -1;
    }

    before = s->offset;
    if (t5_write_all(s->fd, line, len) != 0) {
        s->faults++;
        /* 回滚：把半行切掉，避免和下一次写入粘成一条坏记录 */
        if (TGB_TRUNC(s->fd, before) != 0) {
            s->failed = 1;
            if (err && errlen) snprintf(err, errlen,
                                        "write failed errno=%d and rollback failed", errno);
        } else if (err && errlen) {
            snprintf(err, errlen, "write failed errno=%d (rolled back to %lld)", errno, before);
        }
        return -1;
    }

    if (t5_sync(s->fd) != 0) {
        /* fsync 失败：数据是否真正落盘不可知，因此不 ACK 成功，且进入 fail-stop。
         * 这里**不回滚**：留下完整一行比留下"不确定"更好 —— 重启后它会作为已存事件被发现，
         * 客户端重发时会得到 duplicate，语义仍然是幂等的。 */
        s->faults++;
        s->failed = 1;
        if (err && errlen) snprintf(err, errlen, "fsync failed errno=%d", errno);
        return -1;
    }

    s->offset = before + (long long)len;
    s->appends++;
    return 0;
}

int tgb_store_repair(const char *dir, const char *file, long long *truncated,
                     char *err, size_t errlen)
{
    char path[TGB_PATH_MAX];
    char buf[TGB_TAIL_CHUNK];
    long long size, pos;
    int fd;
    int n;

    if (truncated != NULL) *truncated = 0;
    if (dir == NULL || file == NULL) return -1;

    n = snprintf(path, sizeof(path), "%s/%s", dir, file);
    if (n < 0 || (size_t)n >= sizeof(path)) {
        if (err && errlen) snprintf(err, errlen, "repair path too long");
        return -1;
    }

    size = t5_file_size(path);
    if (size < 0) return 0;                    /* 不存在：首次运行 */
    if (size == 0) return 0;

    /* 已经是完整行结尾：不需要修复 */
    if (t5_read_at(path, size - 1, buf, 1) == 1 && buf[0] == '\n') return 0;

    fd = TGB_OPEN_RDWR(path);
    if (fd < 0) {
        if (err && errlen) snprintf(err, errlen, "repair open %s failed errno=%d", path, errno);
        return -1;
    }

    /* 从尾部往前找最后一个 '\n' */
    pos = size;
    for (;;) {
        long long chunk = pos > (long long)sizeof(buf) ? (long long)sizeof(buf) : pos;
        long long base = pos - chunk;
        long i;
        long got;

        got = t5_read_at(path, base, buf, (size_t)chunk);
        if (got != (long)chunk) {
            int saved = errno;
            TGB_CLOSE(fd);
            if (err && errlen)
                snprintf(err, errlen, "repair read failed at %lld errno=%d", base, saved);
            errno = saved;
            return -1;
        }
        for (i = chunk - 1; i >= 0; i--) {
            if (buf[i] == '\n') {
                long long keep = base + i + 1;

                if (TGB_TRUNC(fd, keep) != 0) {
                    int saved = errno;
                    TGB_CLOSE(fd);
                    if (err && errlen)
                        snprintf(err, errlen, "repair truncate failed errno=%d", saved);
                    errno = saved;
                    return -1;
                }

                /*
                 * truncate 只是改了内存里的元数据：必须 fsync 之后才算"修复完成"。
                 * 忽略这里的失败就等于在"文件可能仍是半条"的情况下报告修复成功，
                 * 下一次 append 会接在半行后面把一条好记录粘坏。
                 */
                if (t5_sync(fd) != 0) {
                    int saved = errno;
                    TGB_CLOSE(fd);
                    if (err && errlen)
                        snprintf(err, errlen, "repair fsync failed errno=%d", saved);
                    errno = saved;
                    return -1;
                }

                TGB_CLOSE(fd);
                if (truncated != NULL) *truncated = size - keep;
                return 0;
            }
        }
        if (base == 0) break;
        pos = base;
    }

    /* 整个文件都没有换行符：全是半条，清空 */
    if (TGB_TRUNC(fd, 0) != 0) {
        int saved = errno;
        TGB_CLOSE(fd);
        if (err && errlen) snprintf(err, errlen, "repair truncate(0) failed errno=%d", saved);
        errno = saved;
        return -1;
    }

    if (t5_sync(fd) != 0) {
        int saved = errno;
        TGB_CLOSE(fd);
        if (err && errlen)
            snprintf(err, errlen, "repair fsync after truncate(0) failed errno=%d", saved);
        errno = saved;
        return -1;
    }

    TGB_CLOSE(fd);
    if (truncated != NULL) *truncated = size;
    return 0;
}

int tgb_store_replay(const char *dir, const char *file,
                     tgb_store_cb cb, void *ud,
                     unsigned long *lines, unsigned long *bad,
                     char *err, size_t errlen)
{
    char path[TGB_PATH_MAX];
    char buf[TGB_REC_LINE_MAX];
    FILE *f;
    unsigned long nlines = 0, nbad = 0;
    int n;

    if (lines != NULL) *lines = 0;
    if (bad != NULL) *bad = 0;
    if (dir == NULL || file == NULL) return -1;

    n = snprintf(path, sizeof(path), "%s/%s", dir, file);
    if (n < 0 || (size_t)n >= sizeof(path)) return -1;

    f = fopen(path, "rb");
    if (f == NULL) {
        if (errno == ENOENT) return 0;         /* 第一次运行 */
        if (err && errlen) snprintf(err, errlen, "replay open %s failed errno=%d", path, errno);
        return -1;
    }

    while (fgets(buf, (int)sizeof(buf), f) != NULL) {
        size_t len = strlen(buf);

        if (len > 0 && buf[len - 1] == '\n') {
            int rc = cb != NULL ? cb(ud, buf, len) : 0;
            if (rc == 0) nlines++;
            else nbad++;
            continue;
        }
        if (feof(f)) {
            nbad++;                             /* 尾部半条：丢弃 */
            continue;
        }
        /* 超长行（超过一行上限）：丢弃并吞到下一个换行符，避免行错位 */
        nbad++;
        for (;;) {
            int ch = fgetc(f);
            if (ch == '\n' || ch == EOF) break;
        }
    }

    if (ferror(f)) {
        fclose(f);
        if (err && errlen) snprintf(err, errlen, "replay read error %s", path);
        return -1;
    }
    fclose(f);
    if (lines != NULL) *lines = nlines;
    if (bad != NULL) *bad = nbad;
    return 0;
}
