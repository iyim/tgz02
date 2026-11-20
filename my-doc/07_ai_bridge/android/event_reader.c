/*
 * event_reader.c -- 见 event_reader.h
 *
 * 两个部分，互不耦合：
 *   1) 严格 JSON 解析/校验（t6b_parse_record）：扁平对象、标量值、拒收重复键与嵌套。
 *   2) 增量文件游标（t6b_reader_*）：偏移、半行、超长行、截断、inode 更换、固定读缓存。
 *
 * 解析层刻意与 06_t5_bridge 的 tgb_event.c 分开实现（Worker 不链接桥接端代码），
 * 但字段名、上限与校验口径保持一致，差异只有一处：
 *   桥接端校验"客户端送上来的 body"，Worker 校验"桥接端落盘后的记录"，
 *   后者多了 recv_at_ms / stored_at_ms / seq 三个服务端事实字段。
 */
#include "event_reader.h"
#include "worker_util.h"

#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* ==================== 1. 严格 JSON 解析 ==================== */

typedef struct {
    const char *p;
    const char *end;
} jcur;

static void jws(jcur *c)
{
    while (c->p < c->end) {
        char ch = *c->p;
        if (ch == ' ' || ch == '\t' || ch == '\r' || ch == '\n') c->p++;
        else break;
    }
}

static int jhex4(const char *p, const char *end, unsigned int *out)
{
    unsigned int v = 0;
    int i;

    if (end - p < 4) return -1;
    for (i = 0; i < 4; i++) {
        char ch = p[i];
        v <<= 4;
        if (ch >= '0' && ch <= '9') v |= (unsigned int)(ch - '0');
        else if (ch >= 'a' && ch <= 'f') v |= (unsigned int)(ch - 'a' + 10);
        else if (ch >= 'A' && ch <= 'F') v |= (unsigned int)(ch - 'A' + 10);
        else return -1;
    }
    *out = v;
    return 0;
}

/* 解析一个 JSON 字符串到 dst（不含两侧引号）。cap 不足时置 *trunc = 1 并继续消费输入。 */
static int jstr(jcur *c, char *dst, size_t cap, int *trunc)
{
    size_t o = 0;

#define JPUT(v) do { if (o + 1 < cap) dst[o++] = (char)(v); else *trunc = 1; } while (0)

    *trunc = 0;
    if (c->p >= c->end || *c->p != '"') return -1;
    c->p++;
    while (c->p < c->end) {
        unsigned char ch = (unsigned char)*c->p;

        if (ch == '"') { c->p++; dst[o] = '\0'; return 0; }
        if (ch < 0x20) return -1;                  /* 未转义控制字符：非法 JSON */

        if (ch != '\\') { JPUT(ch); c->p++; continue; }

        c->p++;
        if (c->p >= c->end) return -1;
        switch (*c->p) {
        case '"':  JPUT('"');  c->p++; break;
        case '\\': JPUT('\\'); c->p++; break;
        case '/':  JPUT('/');  c->p++; break;
        case 'b':  JPUT('\b'); c->p++; break;
        case 'f':  JPUT('\f'); c->p++; break;
        case 'n':  JPUT('\n'); c->p++; break;
        case 'r':  JPUT('\r'); c->p++; break;
        case 't':  JPUT('\t'); c->p++; break;
        case 'u': {
            unsigned int cp;
            c->p++;
            if (jhex4(c->p, c->end, &cp) != 0) return -1;
            c->p += 4;
            if (cp >= 0xD800 && cp <= 0xDBFF) {          /* 高代理，必须跟低代理 */
                unsigned int lo;
                if (c->end - c->p < 6) return -1;
                if (c->p[0] != '\\' || c->p[1] != 'u') return -1;
                c->p += 2;
                if (jhex4(c->p, c->end, &lo) != 0) return -1;
                c->p += 4;
                if (lo < 0xDC00 || lo > 0xDFFF) return -1;
                cp = 0x10000u + ((cp - 0xD800u) << 10) + (lo - 0xDC00u);
            } else if (cp >= 0xDC00 && cp <= 0xDFFF) {
                return -1;                                /* 孤立低代理 */
            }
            if (cp < 0x80) {
                JPUT(cp);
            } else if (cp < 0x800) {
                JPUT(0xC0 | (cp >> 6));
                JPUT(0x80 | (cp & 0x3F));
            } else if (cp < 0x10000) {
                JPUT(0xE0 | (cp >> 12));
                JPUT(0x80 | ((cp >> 6) & 0x3F));
                JPUT(0x80 | (cp & 0x3F));
            } else {
                JPUT(0xF0 | (cp >> 18));
                JPUT(0x80 | ((cp >> 12) & 0x3F));
                JPUT(0x80 | ((cp >> 6) & 0x3F));
                JPUT(0x80 | (cp & 0x3F));
            }
            break;
        }
        default:
            return -1;
        }
    }
    return -1;                                        /* 没有闭合引号 */

#undef JPUT
}

/* 整数（拒绝小数/指数，本协议所有数字都是十进制整数） */
static int jint(jcur *c, long long *out)
{
    int neg = 0;
    int digits = 0;
    long long v = 0;

    if (c->p < c->end && *c->p == '-') { neg = 1; c->p++; }
    while (c->p < c->end && *c->p >= '0' && *c->p <= '9') {
        int d = *c->p - '0';
        if (v > (9223372036854775807LL - d) / 10) return -1;   /* 64 位上界 */
        v = v * 10 + d;
        c->p++;
        digits++;
    }
    if (digits == 0) return -1;
    if (c->p < c->end && (*c->p == '.' || *c->p == 'e' || *c->p == 'E')) return -1;
    *out = neg ? -v : v;
    return 0;
}

static int jbool(jcur *c, int *out)
{
    if (c->end - c->p >= 4 && memcmp(c->p, "true", 4) == 0)  { c->p += 4; *out = 1; return 0; }
    if (c->end - c->p >= 5 && memcmp(c->p, "false", 5) == 0) { c->p += 5; *out = 0; return 0; }
    return -1;
}

/* 跳过未知字段的值：只允许标量；嵌套对象/数组一律拒收 */
static int jskip(jcur *c)
{
    char tmp[2];
    int trunc = 0;
    long long v;
    int b;

    if (c->p >= c->end) return -1;
    switch (*c->p) {
    case '"':  return jstr(c, tmp, sizeof(tmp), &trunc);
    case 't':
    case 'f':  return jbool(c, &b);
    case 'n':
        if (c->end - c->p >= 4 && memcmp(c->p, "null", 4) == 0) { c->p += 4; return 0; }
        return -1;
    case '{':
    case '[':  return -1;
    default:   return jint(c, &v);
    }
}

/* 字段表 */
enum {
    K_VERSION, K_REC, K_EVENT_ID, K_EVENT_TYPE, K_PID, K_SESSION_ID, K_TEXT,
    K_TEXT_BYTES, K_TEXT_CHARS, K_IS_FINAL, K_RECEIVED_AT, K_RECV_AT,
    K_STORED_AT, K_SEQ, K_COUNT
};

static const char *const K_NAME[K_COUNT] = {
    "version", "rec", "event_id", "event_type", "pid", "session_id", "text",
    "text_bytes", "text_chars", "is_final", "received_at_ms", "recv_at_ms",
    "stored_at_ms", "seq"
};

/* 0 = 整数，1 = 字符串，2 = 布尔 */
static const int K_KIND[K_COUNT] = {
    0, 1, 1, 1, 0, 1, 1, 0, 0, 2, 0, 0, 0, 0
};

static size_t kcap(int idx, const t6b_event *out)
{
    switch (idx) {
    case K_REC:        return sizeof(out->rec);
    case K_EVENT_ID:   return sizeof(out->event_id);
    case K_EVENT_TYPE: return sizeof(out->event_type);
    case K_SESSION_ID: return sizeof(out->session_id);
    case K_TEXT:       return sizeof(out->text);
    default:           return 0;
    }
}

static char *kdst(int idx, t6b_event *out)
{
    switch (idx) {
    case K_REC:        return out->rec;
    case K_EVENT_ID:   return out->event_id;
    case K_EVENT_TYPE: return out->event_type;
    case K_SESSION_ID: return out->session_id;
    case K_TEXT:       return out->text;
    default:           return NULL;
    }
}

static t6b_eval one_field(jcur *c, int idx, t6b_event *out, const char **field)
{
    long long v;

    if (field) *field = K_NAME[idx];

    if (K_KIND[idx] == 1) {
        int trunc = 0;
        char *dst = kdst(idx, out);
        if (jstr(c, dst, kcap(idx, out), &trunc) != 0) return T6B_EV_BAD_JSON;
        if (trunc) return T6B_EV_TOO_LONG;
        return T6B_EV_OK;
    }
    if (K_KIND[idx] == 2) {
        int b;
        if (jbool(c, &b) != 0) return T6B_EV_BAD_TYPE;
        if (idx == K_IS_FINAL) out->is_final = b;
        return T6B_EV_OK;
    }
    if (jint(c, &v) != 0) return T6B_EV_BAD_TYPE;
    switch (idx) {
    case K_VERSION:     out->version = (int)v; break;
    case K_PID:         out->pid = v; break;
    case K_TEXT_BYTES:  out->text_bytes = (int)v; break;
    case K_TEXT_CHARS:  out->text_chars = (int)v; break;
    case K_RECEIVED_AT: out->received_at_ms = v; break;
    case K_RECV_AT:     out->recv_at_ms = v; break;
    case K_STORED_AT:   out->stored_at_ms = v; break;
    case K_SEQ:         out->seq = (unsigned long)v; break;
    default: break;
    }
    return T6B_EV_OK;
}

static int id_charset_ok(const char *s)
{
    size_t i;
    size_t n = strlen(s);

    if (n == 0 || n > T6B_ID_MAX) return 0;
    for (i = 0; i < n; i++) {
        char ch = s[i];
        if ((ch >= 'A' && ch <= 'Z') || (ch >= 'a' && ch <= 'z') ||
            (ch >= '0' && ch <= '9') || ch == '.' || ch == '_' || ch == ':' || ch == '-')
            continue;
        return 0;
    }
    return 1;
}

static int text_has_control(const char *s, size_t len)
{
    size_t i;
    for (i = 0; i < len; i++) {
        unsigned char ch = (unsigned char)s[i];
        if (ch < 0x20 || ch == 0x7f) return 1;
    }
    return 0;
}

t6b_eval t6b_parse_record(const char *line, size_t len, t6b_event *out,
                          const char **field)
{
    jcur c;
    unsigned seen = 0;
    t6b_eval rc;
    size_t tlen;

    if (out == NULL) return T6B_EV_BAD_JSON;
    memset(out, 0, sizeof(*out));
    if (field) *field = NULL;
    if (line == NULL) return T6B_EV_BAD_JSON;

    while (len > 0 && (line[len - 1] == '\n' || line[len - 1] == '\r')) len--;
    c.p = line;
    c.end = line + len;

    jws(&c);
    if (c.p >= c.end || *c.p != '{') return T6B_EV_BAD_JSON;
    c.p++;
    jws(&c);

    if (c.p < c.end && *c.p == '}') {
        c.p++;
    } else {
        for (;;) {
            char key[48];
            int trunc = 0;
            int idx = -1;
            int k;

            jws(&c);
            if (c.p >= c.end || *c.p != '"') return T6B_EV_BAD_JSON;
            if (jstr(&c, key, sizeof(key), &trunc) != 0) return T6B_EV_BAD_JSON;
            if (trunc) return T6B_EV_BAD_JSON;        /* 键名过长：不是本协议的字段 */

            jws(&c);
            if (c.p >= c.end || *c.p != ':') return T6B_EV_BAD_JSON;
            c.p++;
            jws(&c);

            for (k = 0; k < K_COUNT; k++) {
                if (strcmp(key, K_NAME[k]) == 0) { idx = k; break; }
            }
            if (idx < 0) {
                /* 未知字段：允许，但值必须是标量（前向兼容） */
                if (jskip(&c) != 0) return T6B_EV_BAD_JSON;
            } else {
                if (seen & (1u << idx)) return T6B_EV_DUP_FIELD;
                rc = one_field(&c, idx, out, field);
                if (rc != T6B_EV_OK) return rc;
                seen |= (1u << idx);
            }

            jws(&c);
            if (c.p >= c.end) return T6B_EV_BAD_JSON;
            if (*c.p == ',') { c.p++; continue; }
            if (*c.p == '}') { c.p++; break; }
            return T6B_EV_BAD_JSON;
        }
    }

    jws(&c);
    if (c.p != c.end) return T6B_EV_TRAILING;

#define NEED(idx) \
    do { \
        if (!(seen & (1u << (idx)))) { \
            if (field) *field = K_NAME[idx]; \
            return T6B_EV_MISSING; \
        } \
    } while (0)
#define BAD(idx, code) \
    do { if (field) *field = K_NAME[idx]; return code; } while (0)

    NEED(K_VERSION);
    if (out->version != 1) BAD(K_VERSION, T6B_EV_BAD_VERSION);

    NEED(K_REC);
    if (strcmp(out->rec, "asr_final") != 0) BAD(K_REC, T6B_EV_BAD_REC);

    NEED(K_EVENT_ID);
    if (out->event_id[0] == '\0') BAD(K_EVENT_ID, T6B_EV_EMPTY_EVENT_ID);
    if (!id_charset_ok(out->event_id)) BAD(K_EVENT_ID, T6B_EV_BAD_EVENT_ID);

    NEED(K_EVENT_TYPE);
    if (strcmp(out->event_type, "asr_final") != 0) BAD(K_EVENT_TYPE, T6B_EV_BAD_EVENT_TYPE);

    NEED(K_PID);
    if (out->pid <= 0 || out->pid > 2147483647LL) BAD(K_PID, T6B_EV_BAD_PID);

    NEED(K_SESSION_ID);
    if (out->session_id[0] == '\0') BAD(K_SESSION_ID, T6B_EV_EMPTY_SESSION_ID);
    if (!id_charset_ok(out->session_id)) BAD(K_SESSION_ID, T6B_EV_BAD_SESSION_ID);

    NEED(K_TEXT);
    tlen = strlen(out->text);
    if (tlen == 0) BAD(K_TEXT, T6B_EV_EMPTY_TEXT);
    if (wu_utf8_validate(out->text, tlen) != 0) BAD(K_TEXT, T6B_EV_BAD_UTF8);
    if (text_has_control(out->text, tlen)) BAD(K_TEXT, T6B_EV_TEXT_CONTROL);

    NEED(K_IS_FINAL);
    if (out->is_final != 1) BAD(K_IS_FINAL, T6B_EV_BAD_IS_FINAL);

    NEED(K_SEQ);
    if (out->seq == 0) BAD(K_SEQ, T6B_EV_BAD_SEQ);

    /* 诊断字段缺失时按实测补齐（不因此拒收） */
    if (!(seen & (1u << K_TEXT_BYTES))) out->text_bytes = (int)tlen;
    if (!(seen & (1u << K_TEXT_CHARS))) out->text_chars = wu_utf8_count(out->text, tlen);
    if ((seen & (1u << K_RECEIVED_AT)) && out->received_at_ms < 0)
        BAD(K_RECEIVED_AT, T6B_EV_BAD_TIME);
    if ((seen & (1u << K_RECV_AT)) && out->recv_at_ms < 0)
        BAD(K_RECV_AT, T6B_EV_BAD_TIME);
    if ((seen & (1u << K_STORED_AT)) && out->stored_at_ms < 0)
        BAD(K_STORED_AT, T6B_EV_BAD_TIME);

    return T6B_EV_OK;

#undef NEED
#undef BAD
}

const char *t6b_eval_name(t6b_eval c)
{
    switch (c) {
    case T6B_EV_OK:               return "ok";
    case T6B_EV_BAD_JSON:         return "bad_json";
    case T6B_EV_DUP_FIELD:        return "dup_field";
    case T6B_EV_TRAILING:         return "trailing_bytes";
    case T6B_EV_BAD_TYPE:         return "bad_type";
    case T6B_EV_MISSING:          return "missing_field";
    case T6B_EV_TOO_LONG:         return "field_too_long";
    case T6B_EV_BAD_VERSION:      return "bad_version";
    case T6B_EV_BAD_REC:          return "bad_rec";
    case T6B_EV_BAD_EVENT_TYPE:   return "bad_event_type";
    case T6B_EV_BAD_IS_FINAL:     return "not_final";
    case T6B_EV_EMPTY_EVENT_ID:   return "empty_event_id";
    case T6B_EV_BAD_EVENT_ID:     return "bad_event_id";
    case T6B_EV_EMPTY_SESSION_ID: return "empty_session_id";
    case T6B_EV_BAD_SESSION_ID:   return "bad_session_id";
    case T6B_EV_EMPTY_TEXT:       return "empty_text";
    case T6B_EV_BAD_UTF8:         return "bad_utf8";
    case T6B_EV_TEXT_CONTROL:     return "text_has_control";
    case T6B_EV_BAD_PID:          return "bad_pid";
    case T6B_EV_BAD_TIME:         return "bad_time";
    case T6B_EV_BAD_SEQ:          return "bad_seq";
    default:                      return "unknown_eval";
    }
}

const char *t6b_open_reason_name(t6b_open_reason r)
{
    switch (r) {
    case T6B_OPEN_FIRST:     return "first_open";
    case T6B_OPEN_ABSENT:    return "file_absent";
    case T6B_OPEN_TRUNCATED: return "truncated";
    case T6B_OPEN_REPLACED:  return "file_replaced";
    case T6B_OPEN_IO_ERROR:  return "io_error";
    default:                 return "none";
    }
}

/* ==================== 2. 增量文件游标 ==================== */

int t6b_reader_init(t6b_reader *r, const char *path, long long start_off,
                    unsigned long long start_dev, unsigned long long start_ino,
                    int max_record, char *err, size_t errlen)
{
    unsigned long long dev = 0;
    unsigned long long ino = 0;
    long long size = 0;

    if (r == NULL || path == NULL) return -1;
    memset(r, 0, sizeof(*r));
    r->fd = -1;
    r->max_record = (max_record > 0) ? max_record : T6B_REC_DEFAULT;
    r->buf_cap = T6B_READ_CHUNK;
    r->buf = (char *)malloc(r->buf_cap);
    if (r->buf == NULL) {
        if (err) snprintf(err, errlen, "reader buffer alloc failed");
        return -1;
    }
    if (strlen(path) >= sizeof(r->path)) {
        if (err) snprintf(err, errlen, "events path too long");
        free(r->buf);
        r->buf = NULL;
        r->buf_cap = 0;
        return -1;
    }
    snprintf(r->path, sizeof(r->path), "%s", path);

    r->off = (start_off > 0) ? start_off : 0;
    r->pending = r->off;

    /* 保存历史身份：即使文件此刻不存在也要留着，等它出现时用它判断"是不是同一个文件"。
     * 0/0 表示第一次运行（没有历史），此时绝不能把"第一次看到文件"误判成重建。 */
    if (start_dev != 0 || start_ino != 0) {
        r->saved_dev = start_dev;
        r->saved_ino = start_ino;
        r->have_saved = 1;
    }

    if (wu_file_identity(r->path, &dev, &ino, &size) == 0) {
        if (!r->have_saved) {
            r->saved_dev = dev;
            r->saved_ino = ino;
            r->have_saved = 1;
            if (r->off > 0 && size < r->off) {
                r->truncations++;
                r->last_reason = T6B_OPEN_TRUNCATED;
                r->off = 0;
                r->pending = 0;
            }
        } else if (r->saved_dev != dev || r->saved_ino != ino) {
            r->replacements++;
            r->last_reason = T6B_OPEN_REPLACED;
            r->off = 0;
            r->pending = 0;
            r->saved_dev = dev;
            r->saved_ino = ino;
        } else if (r->off > 0 && size < r->off) {
            r->truncations++;
            r->last_reason = T6B_OPEN_TRUNCATED;
            r->off = 0;
            r->pending = 0;
        }
    } else {
        r->last_reason = T6B_OPEN_ABSENT;
    }
    r->buf_off = r->off;
    return 0;
}

void t6b_reader_free(t6b_reader *r)
{
    if (r == NULL) return;
    if (r->have_fd) { wu_close(r->fd); r->have_fd = 0; r->fd = -1; }
    free(r->buf);
    r->buf = NULL;
    r->buf_cap = 0;
    r->buf_len = 0;
}

long long t6b_reader_pending(const t6b_reader *r)
{
    return (r == NULL) ? 0 : r->pending;
}

void t6b_reader_commit(t6b_reader *r)
{
    if (r == NULL) return;
    if (r->pending > r->off) r->off = r->pending;
    r->pending = r->off;
}

int t6b_reader_stat(const t6b_reader *r, long long *size)
{
    long long s = 0;

    if (r == NULL || r->path[0] == '\0') return -1;
    if (wu_file_identity(r->path, NULL, NULL, &s) != 0) return -1;
    if (size) *size = s;
    return 0;
}

/* 打开/保持 fd，并处理"文件不存在 / 被重建 / 变短"三种情况 */
/* 打开/保持 fd，并处理"文件不存在 / 被重建 / 变短"三种情况。
 *
 * 身份判断放在**每次（重新）打开**时做，而不是只在 fd 还活着的时候做：
 * 文件被删除后重建（尤其 worker 正在跑、先看到 ENOENT 再看到新文件）时，
 * have_fd 已经是 0，只有跟 saved_dev/saved_ino 比才能发现"换人了"。
 */
static int ensure_open(t6b_reader *r)
{
    unsigned long long dev = 0;
    unsigned long long ino = 0;
    long long size = 0;

    if (wu_file_identity(r->path, &dev, &ino, &size) != 0) {
        if (r->have_fd) { wu_close(r->fd); r->have_fd = 0; r->fd = -1; }
        r->last_reason = T6B_OPEN_ABSENT;
        r->buf_off = r->off;
        r->buf_len = 0;
        return 0;                       /* 等文件出现（不当作错误），身份与偏移都保留 */
    }

    if (r->have_fd && (r->dev != dev || r->ino != ino)) {
        wu_close(r->fd);
        r->have_fd = 0;
        r->fd = -1;
    }

    if (!r->have_fd) {
        if (r->have_saved && (r->saved_dev != dev || r->saved_ino != ino)) {
            /* 出现/再次打开时身份不同：文件被重建，从头读（靠 event_id 去重） */
            r->replacements++;
            r->last_reason = T6B_OPEN_REPLACED;
            r->off = 0;
            r->pending = 0;
            r->buf_off = 0;
            r->buf_len = 0;
        }
        r->fd = wu_open_ro(r->path);
        if (r->fd < 0) {
            r->last_reason = T6B_OPEN_IO_ERROR;
            return 0;
        }
        r->have_fd = 1;
        r->dev = dev;
        r->ino = ino;
        r->saved_dev = dev;
        r->saved_ino = ino;
        r->have_saved = 1;
        r->opens++;
        if (r->opens == 1 && r->last_reason == T6B_OPEN_NONE)
            r->last_reason = T6B_OPEN_FIRST;
    }

    if (size < r->off) {                 /* 桥接端修复 / 文件被截断 */
        r->truncations++;
        r->last_reason = T6B_OPEN_TRUNCATED;
        r->off = 0;
        r->pending = 0;
        r->buf_off = 0;
        r->buf_len = 0;
    } else if (r->buf_len > 0 && size < r->buf_off + (long long)r->buf_len) {
        /* 文件在缓存有效区间内被截短：缓存作废，已提交偏移保持不变 */
        r->buf_off = r->off;
        r->buf_len = 0;
    }
    return 1;
}

/* 单行超过读块（>64KB）时，不把内容读进内存，直接向前找到下一个换行 */
static int scan_past_long_line(t6b_reader *r, const char **reason)
{
    char tmp[4096];
    long long pos = r->off;

    for (;;) {
        int n;
        char *nl;

        if (wu_seek(r->fd, pos) != 0) {
            snprintf(r->last_error, sizeof(r->last_error), "seek failed");
            r->io_errors++;
            return -1;
        }
        n = wu_read_some(r->fd, tmp, sizeof(tmp));
        if (n < 0) {
            snprintf(r->last_error, sizeof(r->last_error), "read failed: %s", strerror(errno));
            r->io_errors++;
            return -1;
        }
        if (n == 0) return 0;                    /* EOF：等更多数据，不消费 */
        nl = (char *)memchr(tmp, '\n', (size_t)n);
        if (nl != NULL) {
            r->oversize_skips++;
            r->pending = pos + (long long)(nl - tmp) + 1;
            r->buf_off = r->pending;
            r->buf_len = 0;
            if (reason) *reason = "record_too_long";
            return -3;
        }
        pos += n;
    }
}

int t6b_reader_next(t6b_reader *r, t6b_event *ev, const char **reason,
                    const char **field, char *err, size_t errlen)
{
    if (reason) *reason = NULL;
    if (field) *field = NULL;
    if (ev != NULL) memset(ev, 0, sizeof(*ev));

    for (;;) {
        size_t skip;
        size_t avail;
        const char *p;
        const char *nl;

        if (r == NULL || r->buf == NULL) return -1;
        r->pending = r->off;

        if (!ensure_open(r)) return 0;

        skip = (size_t)(r->off - r->buf_off);
        if (r->off < r->buf_off || skip > r->buf_len) skip = r->buf_len;
        p = r->buf + skip;
        avail = r->buf_len - skip;

        nl = (const char *)memchr(p, '\n', avail);
        if (nl != NULL) {
            size_t i = (size_t)(nl - p);
            long long line_len = (long long)i + 1;

            if ((long long)i > r->max_record) {
                r->oversize_skips++;
                r->pending = r->off + line_len;
                if (reason) *reason = "record_too_long";
                return -3;
            }
            if (ev != NULL) {
                t6b_eval rc = t6b_parse_record(p, i, ev, field);
                if (rc != T6B_EV_OK) {
                    r->invalid_skips++;
                    r->pending = r->off + line_len;
                    if (reason) *reason = t6b_eval_name(rc);
                    return -2;
                }
                ev->line_bytes = line_len;
            }
            r->pending = r->off + line_len;
            return 1;
        }

        /* 没有换行符：先把已消费的前缀压掉，再看是否需要补数据 */
        if (skip > 0) {
            memmove(r->buf, p, avail);
            r->buf_off = r->off;
            r->buf_len = avail;
            continue;
        }

        if (r->buf_len >= r->buf_cap) {
            int rc = scan_past_long_line(r, reason);
            if (rc == -1 && err) snprintf(err, errlen, "%s", r->last_error);
            return rc;
        }

        {
            int n;

            if (wu_seek(r->fd, r->buf_off + (long long)r->buf_len) != 0) {
                snprintf(r->last_error, sizeof(r->last_error), "seek failed");
                r->io_errors++;
                if (err) snprintf(err, errlen, "%s", r->last_error);
                return -1;
            }
            n = wu_read_some(r->fd, r->buf + r->buf_len, r->buf_cap - r->buf_len);
            if (n < 0) {
                snprintf(r->last_error, sizeof(r->last_error), "read failed: %s", strerror(errno));
                r->io_errors++;
                if (err) snprintf(err, errlen, "%s", r->last_error);
                return -1;
            }
            if (n == 0) {
                /* EOF 且没有换行符：缓冲区里剩的只是"半行"，无论它多长都不许跳过。
                 * 之前这里在 buf_len > max_record 时直接返回 -3 并推进偏移，
                 * 会把一条还没写完的超长记录当成坏行丢掉（T5-06B P2-1）。
                 * 现在一律等待；等 '\n' 到了再由上面的"找到换行符"分支判定是否超长。 */
                return 0;
            }
            r->buf_len += (size_t)n;
        }
    }
}
