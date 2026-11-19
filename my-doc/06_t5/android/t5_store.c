/*
 * t5_store.c -- 见 t5_store.h
 */
#include "t5_store.h"
#include "t5_util.h"

#include <errno.h>
#include <fcntl.h>
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

static const char *find_key(const char *line, const char *key)
{
    char pat[64];
    size_t n = strlen(key);
    if (n + 4 >= sizeof(pat)) return NULL;
    snprintf(pat, sizeof(pat), "\"%s\":", key);
    return strstr(line, pat);
}

static int json_get_str(const char *line, const char *key, char *out, size_t outlen)
{
    const char *p = find_key(line, key);
    size_t w = 0;

    if (out == NULL || outlen == 0) return -1;
    out[0] = '\0';
    if (p == NULL) return -1;
    p += strlen(key) + 3;
    if (*p != '"') return -1;
    p++;
    while (*p && *p != '"') {
        char c = *p++;
        if (c == '\\' && *p) {
            char e = *p++;
            switch (e) {
            case 'n': c = '\n'; break;
            case 'r': c = '\r'; break;
            case 't': c = '\t'; break;
            case '"': c = '"'; break;
            case '\\': c = '\\'; break;
            case '/': c = '/'; break;
            case 'u':
                /* 本模块只会写出 <0x20 的 \u00XX；跳过 4 位，填 '?' 保守处理 */
                if (p[0] && p[1] && p[2] && p[3]) p += 4;
                c = '?';
                break;
            default: break;
            }
        }
        if (w + 1 < outlen) out[w++] = c;
    }
    out[w] = '\0';
    return 0;
}

static long long json_get_ll(const char *line, const char *key, long long dflt)
{
    const char *p = find_key(line, key);
    char *endp = NULL;
    long long v;

    if (p == NULL) return dflt;
    p += strlen(key) + 3;
    v = strtoll(p, &endp, 10);
    if (endp == p) return dflt;
    return v;
}

static int line_to_job(const char *line, t5_job *j)
{
    char st[32];
    int i;

    if (line == NULL || j == NULL) return -1;
    if (find_key(line, "job_id") == NULL) return -1;

    memset(j, 0, sizeof(*j));
    j->slot = -1;
    j->used = 0;
    j->next_try_ms = 0;

    if (json_get_str(line, "job_id", j->job_id, sizeof(j->job_id)) != 0) return -1;
    for (i = 0; j->job_id[i]; i++) {
        char c = j->job_id[i];
        int ok = (c >= '0' && c <= '9') || (c >= 'a' && c <= 'f');
        if (!ok) return -1;
    }
    if (i != 16) return -1;

    json_get_str(line, "file", j->file, sizeof(j->file));
    json_get_str(line, "name", j->name, sizeof(j->name));
    j->size = json_get_ll(line, "size", 0);
    json_get_str(line, "state", st, sizeof(st));
    if (t5_state_from_name(st, &j->state) != 0) return -1;
    j->attempt = (int)json_get_ll(line, "attempt", 0);
    json_get_str(line, "t_start", j->t_start, sizeof(j->t_start));
    json_get_str(line, "t_end", j->t_end, sizeof(j->t_end));
    json_get_str(line, "provider", j->provider, sizeof(j->provider));
    json_get_str(line, "provider_type", j->provider_type, sizeof(j->provider_type));
    json_get_str(line, "text", j->text, sizeof(j->text));
    j->err_code = (int)json_get_ll(line, "err_code", 0);
    json_get_str(line, "err_msg", j->err_msg, sizeof(j->err_msg));
    json_get_str(line, "run_id", j->run_id, sizeof(j->run_id));
    j->seg_id = (long)json_get_ll(line, "seg_id", 0);
    j->start_seq = json_get_ll(line, "start_seq", 0);
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
    fclose(f);
    if (lines) *lines = nlines;
    if (bad) *bad = nbad;
    return 0;
}
