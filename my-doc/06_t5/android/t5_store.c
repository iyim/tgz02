/*
 * t5_store.c -- 见 t5_store.h
 */
#include "t5_store.h"
#include "t5_util.h"

#include <errno.h>
#include <fcntl.h>
#include <limits.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#ifdef _WIN32
#  include <io.h>
#  define T5_OPEN_APPEND(p) _open((p), _O_WRONLY | _O_CREAT | _O_APPEND | _O_BINARY, 0664)
#  define T5_CLOSE(fd)      _close(fd)
#else
#  include <unistd.h>
#  define T5_OPEN_APPEND(p) open((p), O_WRONLY | O_CREAT | O_APPEND, 0664)
#  define T5_CLOSE(fd)      close(fd)
#endif

#define T5_JSON_LINE_MAX 4096

static void put_kv_str(char **p, char *end, const char *key, const char *val)
{
    int n;
    n = snprintf(*p, (size_t)(end - *p), "\"%s\":\"", key);
    if (n < 0 || *p + n >= end) { *p = end; return; }
    *p += n;
    *p += t5_json_escape(*p, (size_t)(end - *p), val ? val : "");
    n = snprintf(*p, (size_t)(end - *p), "\",");
    if (n < 0 || *p + n >= end) { *p = end; return; }
    *p += n;
}

static void put_kv_ll(char **p, char *end, const char *key, long long val)
{
    int n = snprintf(*p, (size_t)(end - *p), "\"%s\":%lld,", key, val);
    if (n < 0 || *p + n >= end) { *p = end; return; }
    *p += n;
}

int t5_job_to_json(const t5_job *j, char *buf, size_t buflen)
{
    char *p = buf;
    char *end;
    int n;
    size_t used;

    if (j == NULL || buf == NULL || buflen < 128) return -1;
    end = buf + buflen - 2;      /* 预留 "}\n" */

    n = snprintf(p, (size_t)(end - p), "{\"v\":1,\"rec\":\"job\",");
    if (n < 0 || p + n >= end) return -1;
    p += n;

    put_kv_str(&p, end, "job_id", j->job_id);
    put_kv_str(&p, end, "file", j->file);
    put_kv_str(&p, end, "name", j->name);
    put_kv_ll(&p, end, "size", j->size);
    put_kv_str(&p, end, "state", t5_state_name(j->state));
    put_kv_ll(&p, end, "attempt", j->attempt);
    put_kv_str(&p, end, "t_start", j->t_start);
    put_kv_str(&p, end, "t_end", j->t_end);
    put_kv_str(&p, end, "provider", j->provider);
    put_kv_str(&p, end, "provider_type", j->provider_type);
    put_kv_str(&p, end, "text", j->text);
    put_kv_ll(&p, end, "err_code", j->err_code);
    put_kv_str(&p, end, "err_msg", j->err_msg);
    /* §6 关联字段：将来做片段合并/上下文时按 run_id+seg_id+start_seq 排序 */
    put_kv_str(&p, end, "run_id", j->run_id);
    put_kv_ll(&p, end, "seg_id", (long long)j->seg_id);
    put_kv_ll(&p, end, "start_seq", j->start_seq);

    if (p >= end) return -1;
    /* 去掉最后一个逗号 */
    if (p > buf && *(p - 1) == ',') p--;
    n = snprintf(p, (size_t)(end - p + 2), "}\n");
    if (n < 0) return -1;
    p += n;
    used = (size_t)(p - buf);
    return (int)used;
}

int t5_store_open(t5_store *s, const char *work_dir, const char *file_name)
{
    if (s == NULL || work_dir == NULL || file_name == NULL) return -1;
    s->fd = -1;
    snprintf(s->path, sizeof(s->path), "%s/%s", work_dir, file_name);
    s->fd = T5_OPEN_APPEND(s->path);
    return s->fd >= 0 ? 0 : -1;
}

void t5_store_close(t5_store *s)
{
    if (s == NULL) return;
    if (s->fd >= 0) { T5_CLOSE(s->fd); s->fd = -1; }
}

int t5_store_append(t5_store *s, const t5_job *j)
{
    char line[T5_JSON_LINE_MAX];
    int n;

    if (s == NULL || s->fd < 0) return -1;
    n = t5_job_to_json(j, line, sizeof(line));
    if (n <= 0) return -1;
    if (t5_write_all(s->fd, line, (size_t)n) != 0) return -1;
    /* 落盘：让"进程被杀"最多丢最后一条，而不是留下半条 */
    return t5_sync(s->fd);
}

/* ---------------- 极简 JSON 读取（只认本模块自己写的字段） ---------------- */

static const char *json_skip_ws(const char *p)
{
    while (*p == ' ' || *p == '\t' ||
           *p == '\r' || *p == '\n') {
        p++;
    }
    return p;
}

/*
 * 跳过一个 JSON 字符串。
 * 返回结束双引号之后的位置；格式错误返回 NULL。
 */
static const char *json_skip_string(const char *p)
{
    if (p == NULL || *p != '"')
        return NULL;

    p++;

    while (*p != '\0') {
        unsigned char c = (unsigned char)*p;

        if (c == '"')
            return p + 1;

        if (c < 0x20)
            return NULL;

        if (c == '\\') {
            int i;

            p++;

            if (*p == '\0')
                return NULL;

            if (*p == 'u') {
                p++;

                for (i = 0; i < 4; i++) {
                    unsigned char h = (unsigned char)p[i];

                    if (h == '\0')
                        return NULL;

                    if (!((h >= '0' && h <= '9') ||
                          (h >= 'a' && h <= 'f') ||
                          (h >= 'A' && h <= 'F'))) {
                        return NULL;
                    }
                }

                p += 4;
                continue;
            }

            if (strchr("\"\\/bfnrt", *p) == NULL)
                return NULL;
        }

        p++;
    }

    return NULL;
}

/*
 * 只查找 JSON 顶层对象字段。
 *
 * 不会匹配字符串内容中的伪字段，例如：
 *   "text":"some text containing \"err_msg\":\"fake\""
 *
 * 返回值直接指向字段值，不再指向字段名前面的引号。
 */
static const char *find_key(const char *line, const char *key)
{
    const char *p;
    size_t key_len;

    if (line == NULL || key == NULL)
        return NULL;

    key_len = strlen(key);
    p = json_skip_ws(line);

    if (*p != '{')
        return NULL;

    p++;

    for (;;) {
        const char *key_start;
        const char *key_end;
        const char *value;
        size_t current_len;

        p = json_skip_ws(p);

        if (*p == '}')
            return NULL;

        if (*p != '"')
            return NULL;

        key_start = p + 1;
        key_end = json_skip_string(p);

        if (key_end == NULL)
            return NULL;

        current_len = (size_t)(key_end - key_start - 1);

        p = json_skip_ws(key_end);

        if (*p != ':')
            return NULL;

        value = json_skip_ws(p + 1);

        if (current_len == key_len &&
            memcmp(key_start, key, key_len) == 0) {
            return value;
        }

        /* 跳过当前字段的值。当前 JSONL 格式是扁平对象。 */
        if (*value == '"') {
            p = json_skip_string(value);

            if (p == NULL)
                return NULL;
        } else {
            p = value;

            while (*p != '\0' && *p != ',' && *p != '}')
                p++;
        }

        p = json_skip_ws(p);

        if (*p == ',') {
            p++;
            continue;
        }

        if (*p == '}')
            return NULL;

        return NULL;
    }
}

static int json_get_str(const char *line,
                        const char *key,
                        char *out,
                        size_t outlen)
{
    const char *p = find_key(line, key);
    size_t w = 0;

    if (line == NULL || key == NULL || out == NULL || outlen == 0)
        return -1;

    out[0] = '\0';

    if (p == NULL)
        return -1;

    if (*p != '"')
        return -1;

    p++;

    while (*p != '\0' && *p != '"') {
        unsigned char c = (unsigned char)*p++;

        if (c < 0x20)
            return -1;

        if (c == '\\') {
            char e = *p++;

            if (e == '\0')
                return -1;

            switch (e) {
            case '"':  c = '"';  break;
            case '\\': c = '\\'; break;
            case '/':  c = '/';  break;
            case 'b':  c = '\b'; break;
            case 'f':  c = '\f'; break;
            case 'n':  c = '\n'; break;
            case 'r':  c = '\r'; break;
            case 't':  c = '\t'; break;

            case 'u': {
                int i;
                unsigned value = 0;

                for (i = 0; i < 4; i++) {
                    unsigned char h = (unsigned char)*p++;
                    unsigned v;

                    if (h >= '0' && h <= '9')
                        v = (unsigned)(h - '0');
                    else if (h >= 'a' && h <= 'f')
                        v = (unsigned)(h - 'a' + 10);
                    else if (h >= 'A' && h <= 'F')
                        v = (unsigned)(h - 'A' + 10);
                    else
                        return -1;

                    value = (value << 4) | v;
                }

                /* 当前序列化器只对控制字符输出 \u00XX。
                 * 非 ASCII Unicode 暂以 '?' 保守映射。
                 */
                c = (value <= 0x7f) ? (unsigned char)value : '?';
                break;
            }

            default:
                return -1;
            }
        }

        if (w + 1 >= outlen)
            return -1;

        out[w++] = (char)c;
    }

    if (*p != '"')
        return -1;

    p++;
    p = json_skip_ws(p);

    if (*p != ',' && *p != '}' &&
        *p != '\n' && *p != '\0') {
        return -1;
    }

    out[w] = '\0';
    return 0;
}

/* 严格解析整数，拒绝空值、溢出和尾随非法字符。 */
static int json_get_ll(const char *line,
                       const char *key,
                       long long *out)
{
    const char *p = find_key(line, key);
    char *endp = NULL;
    long long value;

    if (line == NULL || key == NULL || out == NULL || p == NULL)
        return -1;

    errno = 0;
    value = strtoll(p, &endp, 10);

    if (endp == p || errno == ERANGE)
        return -1;

    endp = (char *)json_skip_ws(endp);

    if (*endp != ',' && *endp != '}' &&
        *endp != '\n' && *endp != '\0') {
        return -1;
    }

    *out = value;
    return 0;
}

static int line_to_job(const char *line, t5_job *j)
{
    char st[32];
    long long value;
    int i;

    if (line == NULL || j == NULL)
        return -1;

    memset(j, 0, sizeof(*j));

    j->slot = -1;
    j->used = 0;
    j->next_try_ms = 0;

    if (json_get_str(line, "job_id",
                     j->job_id, sizeof(j->job_id)) != 0)
        return -1;

    for (i = 0; j->job_id[i]; i++) {
        char c = j->job_id[i];
        int ok = (c >= '0' && c <= '9') ||
                 (c >= 'a' && c <= 'f');
        if (!ok)
            return -1;
    }

    if (i != 16)
        return -1;

    if (json_get_str(line, "file",
                     j->file, sizeof(j->file)) != 0 ||
        j->file[0] == '\0')
        return -1;

    if (json_get_str(line, "name",
                     j->name, sizeof(j->name)) != 0 ||
        j->name[0] == '\0')
        return -1;

    if (json_get_ll(line, "size", &j->size) != 0 ||
        j->size < 0)
        return -1;

    if (json_get_str(line, "state", st, sizeof(st)) != 0 ||
        t5_state_from_name(st, &j->state) != 0)
        return -1;

    if (json_get_ll(line, "attempt", &value) != 0 ||
        value < 0 || value > INT_MAX)
        return -1;

    j->attempt = (int)value;

    if (json_get_str(line, "t_start",
                     j->t_start, sizeof(j->t_start)) != 0 ||
        json_get_str(line, "t_end",
                     j->t_end, sizeof(j->t_end)) != 0 ||
        json_get_str(line, "provider",
                     j->provider, sizeof(j->provider)) != 0 ||
        json_get_str(line, "provider_type",
                     j->provider_type, sizeof(j->provider_type)) != 0 ||
        json_get_str(line, "text",
                     j->text, sizeof(j->text)) != 0)
        return -1;

    if (json_get_ll(line, "err_code", &value) != 0 ||
        value < INT_MIN || value > INT_MAX)
        return -1;

    j->err_code = (int)value;

    if (json_get_str(line, "err_msg",
                     j->err_msg, sizeof(j->err_msg)) != 0)
        return -1;

    /* 关联字段是当前版本新增字段。
     * 对旧版记录保留默认值，保持历史兼容。
     */
    if (json_get_str(line, "run_id",
                     j->run_id, sizeof(j->run_id)) != 0)
        j->run_id[0] = '\0';

    if (json_get_ll(line, "seg_id", &value) == 0 &&
        value >= LONG_MIN && value <= LONG_MAX)
        j->seg_id = (long)value;

    if (json_get_ll(line, "start_seq", &j->start_seq) != 0)
        j->start_seq = 0;

    return 0;
}

int t5_store_replay(const char *work_dir, const char *file_name,
                    t5_store_cb cb, void *ud,
                    unsigned long *lines, unsigned long *bad)
{
    char path[T5_MAX_PATH];
    char buf[T5_JSON_LINE_MAX];
    FILE *f;
    unsigned long nlines = 0, nbad = 0;
    int pending_partial = 0;

    if (lines) *lines = 0;
    if (bad) *bad = 0;
    if (work_dir == NULL || file_name == NULL) return -1;

    snprintf(path, sizeof(path), "%s/%s", work_dir, file_name);
    f = fopen(path, "rb");
    if (f == NULL) {
        if (errno == ENOENT) return 0;      /* 第一次运行：没有历史 */
        return -1;
    }

    while (fgets(buf, (int)sizeof(buf), f) != NULL) {
        size_t n = strlen(buf);
        t5_job j;

        if (n > 0 && buf[n - 1] == '\n') {
            pending_partial = 0;
        } else {
            /* 最后一行没有换行符：可能是崩溃时的半条记录 */
            pending_partial = 1;
            nbad++;
            continue;
        }
        if (n < 2) { nbad++; continue; }
        if (line_to_job(buf, &j) != 0) { nbad++; continue; }
        nlines++;
        if (cb) cb(ud, &j);
    }
    /* 半条记录也计入 bad（上面已计数，这里仅消除"未使用"告警语义） */
    (void)pending_partial;

    /* 真正的 I/O 错误不是"坏行"：必须让调用方知道历史状态不可信 */
    if (ferror(f)) {
        fclose(f);
        return -1;
    }

    fclose(f);
    if (lines) *lines = nlines;
    if (bad) *bad = nbad;
    return 0;
}
