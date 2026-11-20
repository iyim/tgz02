/*
 * consumer_state.c -- 见 consumer_state.h
 *
 * 状态文件是扁平 JSON（值只有整数/字符串），这里带一个极小的读取器，
 * 不用通用 JSON 库：字段固定、格式由我们自己写，解析器 80 行足够，
 * 且能明确区分"文件不存在"与"文件被写坏"（两者处理策略完全不同）。
 */
#include "consumer_state.h"
#include "worker_util.h"

#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* ==================== 极小 JSON 读取器 ==================== */

typedef struct {
    const char *p;
    const char *end;
} s_cur;

static void s_ws(s_cur *c)
{
    while (c->p < c->end) {
        char ch = *c->p;
        if (ch == ' ' || ch == '\t' || ch == '\r' || ch == '\n') c->p++;
        else break;
    }
}

/* 只支持 \\ \" \/ \n \r \t \b \f（本文件写的键值里不会出现别的） */
static int s_str(s_cur *c, char *dst, size_t cap)
{
    size_t o = 0;

    if (c->p >= c->end || *c->p != '"') return -1;
    c->p++;
    while (c->p < c->end) {
        unsigned char ch = (unsigned char)*c->p;
        if (ch == '"') { c->p++; dst[o] = '\0'; return 0; }
        if (ch == '\\') {
            c->p++;
            if (c->p >= c->end) return -1;
            switch (*c->p) {
            case '"':  ch = '"';  break;
            case '\\': ch = '\\'; break;
            case '/':  ch = '/';  break;
            case 'b':  ch = '\b'; break;
            case 'f':  ch = '\f'; break;
            case 'n':  ch = '\n'; break;
            case 'r':  ch = '\r'; break;
            case 't':  ch = '\t'; break;
            case 'u': {
                /* event_id 只含 ASCII，遇到 \u 一律按非法处理即可 */
                return -1;
            }
            default: return -1;
            }
            c->p++;
        } else {
            c->p++;
        }
        if (o + 1 < cap) dst[o++] = (char)ch;
        else return -1;
    }
    return -1;
}

static int s_int(s_cur *c, long long *out)
{
    int neg = 0;
    int digits = 0;
    long long v = 0;

    if (c->p < c->end && *c->p == '-') { neg = 1; c->p++; }
    while (c->p < c->end && *c->p >= '0' && *c->p <= '9') {
        int d = *c->p - '0';
        /* 64 位上界检查：文件索引（Windows inode）实测可达 1.6e15 */
        if (v > (9223372036854775807LL - d) / 10) return -1;
        v = v * 10 + d;
        c->p++;
        digits++;
    }
    if (digits == 0) return -1;
    *out = neg ? -v : v;
    return 0;
}

/* true / false / null / 其它标量（这里只用于跳过未知字段） */
static int s_lit(s_cur *c)
{
    const char *start = c->p;
    while (c->p < c->end) {
        char ch = *c->p;
        if (ch == ',' || ch == '}' || ch == ' ' || ch == '\t' || ch == '\r' || ch == '\n') break;
        c->p++;
    }
    return (c->p > start) ? 0 : -1;
}

/* 取字符串字段；1 = 找到，0 = 没有，-1 = 结构错误 */
typedef struct {
    const char *key;
    char       *dst;
    size_t      cap;
    long long  *num;
    int         found;
} s_want;

static int s_scan(const char *buf, size_t len, s_want *w, int nw)
{
    s_cur c;
    int i;

    c.p = buf;
    c.end = buf + len;
    s_ws(&c);
    if (c.p >= c.end || *c.p != '{') return -1;
    c.p++;
    s_ws(&c);
    if (c.p < c.end && *c.p == '}') { c.p++; }
    else {
        for (;;) {
            char key[64];
            int hit = -1;

            s_ws(&c);
            if (s_str(&c, key, sizeof(key)) != 0) return -1;
            s_ws(&c);
            if (c.p >= c.end || *c.p != ':') return -1;
            c.p++;
            s_ws(&c);

            for (i = 0; i < nw; i++) {
                if (strcmp(key, w[i].key) == 0) { hit = i; break; }
            }
            if (c.p < c.end && *c.p == '"') {
                char tmp[64];
                if (hit >= 0 && w[hit].dst != NULL) {
                    if (s_str(&c, w[hit].dst, w[hit].cap) != 0) return -1;
                    w[hit].found = 1;
                } else if (hit >= 0 && w[hit].num != NULL) {
                    if (s_str(&c, tmp, sizeof(tmp)) != 0) return -1;
                    return -1;                       /* 该字段应为整数 */
                } else {
                    if (s_str(&c, tmp, sizeof(tmp)) != 0) return -1;
                }
            } else {
                long long v = 0;
                if (s_int(&c, &v) != 0) {
                    if (s_lit(&c) != 0) return -1;
                } else if (hit >= 0) {
                    if (w[hit].num != NULL) { *w[hit].num = v; w[hit].found = 1; }
                    else return -1;                  /* 该字段应为字符串 */
                }
            }

            s_ws(&c);
            if (c.p >= c.end) return -1;
            if (*c.p == ',') { c.p++; continue; }
            if (*c.p == '}') { c.p++; break; }
            return -1;
        }
    }
    s_ws(&c);
    if (c.p != c.end) return -1;
    return 0;
}

/* ==================== 对外接口 ==================== */

void t6b_state_init(t6b_state *s)
{
    if (s == NULL) return;
    memset(s, 0, sizeof(*s));
    s->version = 1;
    s->recent_cap = T6B_STATE_RECENT;
}

int t6b_state_has_recent(const t6b_state *s, const char *id)
{
    int i;

    if (s == NULL || id == NULL || id[0] == '\0') return 0;
    for (i = 0; i < s->recent_n; i++) {
        if (strcmp(s->recent[i], id) == 0) return 1;
    }
    return 0;
}

void t6b_state_remember(t6b_state *s, const char *id)
{
    int i;

    if (s == NULL || id == NULL || id[0] == '\0') return;
    if (strlen(id) > T6B_ID_MAX) return;

    for (i = 0; i < s->recent_n; i++) {
        if (strcmp(s->recent[i], id) == 0) {
            if (i == s->recent_n - 1) return;                /* 已经在最新位置 */
            memmove(s->recent[i], s->recent[i + 1],
                    (size_t)(s->recent_n - i - 1) * sizeof(s->recent[0]));
            snprintf(s->recent[s->recent_n - 1], sizeof(s->recent[0]), "%s", id);
            return;
        }
    }
    if (s->recent_n < s->recent_cap) {
        snprintf(s->recent[s->recent_n], sizeof(s->recent[0]), "%s", id);
        s->recent_n++;
    } else {
        memmove(s->recent[0], s->recent[1],
                (size_t)(s->recent_cap - 1) * sizeof(s->recent[0]));
        snprintf(s->recent[s->recent_cap - 1], sizeof(s->recent[0]), "%s", id);
    }
}

int t6b_state_load(t6b_state *s, const char *path, char *err, size_t errlen)
{
    static char buf[32768];
    static char ids[T6B_STATE_RECENT * (T6B_ID_MAX + 1) + 64];
    size_t len = 0;
    long long version = 0, dev = 0, ino = 0, offset = 0, seq_last = 0;
    long long processed = 0, updated = 0;
    s_want want[9];
    int i;
    char *piece;

    if (s == NULL || path == NULL) return -1;
    t6b_state_init(s);

    if (wu_file_size(path) < 0) return 1;      /* 首次运行：没有状态文件 */

    if (wu_read_file(path, buf, sizeof(buf), &len) != 0) {
        if (err) snprintf(err, errlen, "state read failed: %s", path);
        return -1;    }
    if (len == 0) {
        if (err) snprintf(err, errlen, "state file empty");
        return -2;
    }

    memset(ids, 0, sizeof(ids));
    memset(s->last_event_id, 0, sizeof(s->last_event_id));

    memset(want, 0, sizeof(want));
    want[0].key = "version";       want[0].num = &version;
    want[1].key = "dev";           want[1].num = &dev;
    want[2].key = "ino";           want[2].num = &ino;
    want[3].key = "offset";        want[3].num = &offset;
    want[4].key = "seq_last";      want[4].num = &seq_last;
    want[5].key = "last_event_id"; want[5].dst = s->last_event_id; want[5].cap = sizeof(s->last_event_id);
    want[6].key = "processed_total"; want[6].num = &processed;
    want[7].key = "updated_at_ms"; want[7].num = &updated;
    want[8].key = "recent_ids";    want[8].dst = ids;  want[8].cap = sizeof(ids);

    if (s_scan(buf, len, want, 9) != 0) {
        if (err) snprintf(err, errlen, "state json malformed");
        return -2;
    }
    if (!want[0].found || version != 1) {
        if (err) snprintf(err, errlen, "state version unsupported: %lld", version);
        return -2;
    }
    if (!want[3].found || offset < 0) {
        if (err) snprintf(err, errlen, "state offset missing/invalid");
        return -2;
    }

    s->dev = (unsigned long long)(dev < 0 ? 0 : dev);
    s->ino = (unsigned long long)(ino < 0 ? 0 : ino);
    s->offset = offset;
    s->seq_last = (unsigned long)(seq_last < 0 ? 0 : seq_last);
    s->processed_total = (unsigned long long)(processed < 0 ? 0 : processed);
    s->updated_at_ms = updated;

    /* recent_ids 是逗号分隔（event_id 字符集里没有逗号，无需转义） */
    if (want[8].found && ids[0] != '\0') {
        piece = ids;
        for (;;) {
            char *comma = strchr(piece, ',');
            if (comma != NULL) *comma = '\0';
            if (piece[0] != '\0' && s->recent_n < s->recent_cap) {
                snprintf(s->recent[s->recent_n], sizeof(s->recent[0]), "%s", piece);
                s->recent_n++;
            }
            if (comma == NULL) break;
            piece = comma + 1;
        }
    }
    /* 校验 event_id 里没有残留控制字符（写坏的极端情况） */
    for (i = 0; i < s->recent_n; i++) {
        size_t k;
        size_t n = strlen(s->recent[i]);
        for (k = 0; k < n; k++) {
            if ((unsigned char)s->recent[i][k] < 0x21) {
                if (err) snprintf(err, errlen, "state recent id corrupted");
                return -2;
            }
        }
    }
    return 0;
}

/* ---------------- 测试用故障注入 ----------------
 *
 * P1-3 要求逐个证明"落盘失败就不许推进偏移"。真实故障（磁盘满、EIO、目录只读）在测试里
 * 不可控地复现，所以这里留一个**只在环境变量存在时生效**的注入点：
 *
 *   T6B_FAULT_STATE = create | write | fsync | rename | dirfsync | append
 *
 * 生产运行不会设置这个变量，因此默认路径与之前完全一致（分支判断只在 getenv 命中时进入）。
 * 设备上也用真实手段（chmod 000 目录）复验了一次，见 evidence/t5_06b_p1p2_state_fault.log。
 */
#define T6B_FAULT_NONE  0
#define T6B_FAULT_CREATE 1
#define T6B_FAULT_WRITE  2
#define T6B_FAULT_FSYNC  3
#define T6B_FAULT_RENAME 4
#define T6B_FAULT_DIRFSYNC 5

static int t6b_fault_state(void)
{
    static int cached = -1;
    const char *v;

    if (cached >= 0) return cached;
    v = getenv("T6B_FAULT_STATE");
    cached = T6B_FAULT_NONE;
    if (v == NULL || v[0] == '\0') return cached;
    if (strcmp(v, "create") == 0) cached = T6B_FAULT_CREATE;
    else if (strcmp(v, "write") == 0) cached = T6B_FAULT_WRITE;
    else if (strcmp(v, "fsync") == 0) cached = T6B_FAULT_FSYNC;
    else if (strcmp(v, "rename") == 0) cached = T6B_FAULT_RENAME;
    else if (strcmp(v, "dirfsync") == 0) cached = T6B_FAULT_DIRFSYNC;
    return cached;
}

int t6b_state_save(const t6b_state *s, const char *path, char *err, size_t errlen)
{
    static char buf[32768];
    char tmp[T6B_PATH_MAX + 8];
    char dir[T6B_PATH_MAX];
    size_t used = 0;
    int fault = t6b_fault_state();
    int fd;
    int i;

    if (s == NULL || path == NULL) return -1;

    /* 序列化（手写，字段顺序固定，便于人眼看 diff） */
    {
        int n = snprintf(buf, sizeof(buf),
                         "{\"version\":1,\"dev\":%llu,\"ino\":%llu,\"offset\":%lld,"
                         "\"seq_last\":%lu,\"last_event_id\":\"",
                         s->dev, s->ino, s->offset, s->seq_last);
        if (n < 0 || (size_t)n >= sizeof(buf)) return -1;
        used = (size_t)n;
        used += wu_json_escape(buf + used, sizeof(buf) - used, s->last_event_id);
        n = snprintf(buf + used, sizeof(buf) - used,
                     "\",\"processed_total\":%llu,\"updated_at_ms\":%lld,\"recent_cap\":%d,"
                     "\"recent_n\":%d,\"recent_ids\":\"",
                     s->processed_total, s->updated_at_ms, s->recent_cap, s->recent_n);
        if (n < 0 || (size_t)n >= sizeof(buf) - used) return -1;
        used += (size_t)n;
        for (i = 0; i < s->recent_n; i++) {
            if (i > 0) {
                if (used + 1 >= sizeof(buf)) return -1;
                buf[used++] = ',';
            }
            used += wu_json_escape(buf + used, sizeof(buf) - used, s->recent[i]);
        }
        n = snprintf(buf + used, sizeof(buf) - used, "\"}\n");
        if (n < 0 || (size_t)n >= sizeof(buf) - used) return -1;
        used += (size_t)n;
    }

    if (snprintf(tmp, sizeof(tmp), "%s.tmp", path) >= (int)sizeof(tmp)) {
        if (err) snprintf(err, errlen, "state temp path too long");
        return -1;
    }
    wu_dir_name(path, dir, sizeof(dir));

    if (fault == T6B_FAULT_CREATE) {
        if (err) snprintf(err, errlen, "injected fault: temp create failed");
        return -1;
    }
    fd = wu_open_wo(tmp);
    if (fd < 0) {
        if (err) snprintf(err, errlen, "state temp open failed: %s", tmp);
        return -1;
    }
    if (fault == T6B_FAULT_WRITE) {
        if (err) snprintf(err, errlen, "injected fault: write failed");
        wu_close(fd);
        wu_unlink(tmp);
        return -1;
    }
    if (wu_write_all(fd, buf, used) != 0) {
        if (err) snprintf(err, errlen, "state write failed");
        wu_close(fd);
        wu_unlink(tmp);
        return -1;
    }
    if (fault == T6B_FAULT_FSYNC || wu_fsync(fd) != 0) {
        if (err) {
            if (fault == T6B_FAULT_FSYNC) snprintf(err, errlen, "injected fault: fsync failed");
            else snprintf(err, errlen, "state fsync failed");
        }
        wu_close(fd);
        wu_unlink(tmp);
        return -1;
    }
    wu_close(fd);

    if (fault == T6B_FAULT_RENAME || wu_rename_replace(tmp, path) != 0) {
        if (err) {
            if (fault == T6B_FAULT_RENAME) snprintf(err, errlen, "injected fault: rename failed");
            else snprintf(err, errlen, "state rename failed");
        }
        wu_unlink(tmp);
        return -1;
    }
    if (fault == T6B_FAULT_DIRFSYNC) {
        if (err) snprintf(err, errlen, "injected fault: dir fsync failed");
        return -1;
    }
    if (wu_fsync_dir(dir) != 0) {
        /* 目录项未落盘：数据还在，但"最后一次进度"可能回退一条。
         * 这比丢事件安全，所以只报错不回滚。 */
        if (err) snprintf(err, errlen, "state dir fsync failed: %s", dir);
        return -1;
    }
    return 0;
}
