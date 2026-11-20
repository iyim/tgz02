/*
 * tgb_event.c -- 见 tgb_event.h
 *
 * 这里是一个"够用且严格"的扁平 JSON 解析器，不用第三方库的理由：
 *   - 设备上是静态链接的 NDK 二进制，不想为 8 个字段引入 cJSON/jansson；
 *   - 我们需要的是"拒绝"能力而不是"兼容"能力：重复键、尾随垃圾、非法转义、
 *     超长字段、非法 UTF-8 都必须能定位到具体字段并给出可审计的错误码。
 */
#include "tgb_event.h"

#include "t5_util.h"      /* t5_json_escape：与 T5 落库完全同一份转义实现 */

#include <stdio.h>
#include <string.h>

#define TGB_KEY_BUF 32

/* ---------------- 严格 UTF-8 ---------------- */

int tgb_utf8_validate(const char *s, size_t len)
{
    const unsigned char *p = (const unsigned char *)s;
    size_t i = 0;

    if (s == NULL) return -1;
    while (i < len) {
        unsigned char c = p[i];

        if (c < 0x80) { i++; continue; }
        if (c >= 0xC2 && c <= 0xDF) {                       /* 2 字节 */
            if (i + 1 >= len) return -1;
            if ((p[i + 1] & 0xC0) != 0x80) return -1;
            i += 2;
            continue;
        }
        if (c == 0xE0) {                                    /* 3 字节，禁 overlong */
            if (i + 2 >= len) return -1;
            if (p[i + 1] < 0xA0 || p[i + 1] > 0xBF) return -1;
            if ((p[i + 2] & 0xC0) != 0x80) return -1;
            i += 3;
            continue;
        }
        if ((c >= 0xE1 && c <= 0xEC) || c == 0xEE || c == 0xEF) {
            if (i + 2 >= len) return -1;
            if ((p[i + 1] & 0xC0) != 0x80) return -1;
            if ((p[i + 2] & 0xC0) != 0x80) return -1;
            i += 3;
            continue;
        }
        if (c == 0xED) {                                    /* 代理区 D800..DFFF */
            if (i + 2 >= len) return -1;
            if (p[i + 1] < 0x80 || p[i + 1] > 0x9F) return -1;
            if ((p[i + 2] & 0xC0) != 0x80) return -1;
            i += 3;
            continue;
        }
        if (c == 0xF0) {                                    /* 4 字节，禁 overlong */
            if (i + 3 >= len) return -1;
            if (p[i + 1] < 0x90 || p[i + 1] > 0xBF) return -1;
            if ((p[i + 2] & 0xC0) != 0x80) return -1;
            if ((p[i + 3] & 0xC0) != 0x80) return -1;
            i += 4;
            continue;
        }
        if (c >= 0xF1 && c <= 0xF3) {
            if (i + 3 >= len) return -1;
            if ((p[i + 1] & 0xC0) != 0x80) return -1;
            if ((p[i + 2] & 0xC0) != 0x80) return -1;
            if ((p[i + 3] & 0xC0) != 0x80) return -1;
            i += 4;
            continue;
        }
        if (c == 0xF4) {                                    /* <= U+10FFFF */
            if (i + 3 >= len) return -1;
            if (p[i + 1] < 0x80 || p[i + 1] > 0x8F) return -1;
            if ((p[i + 2] & 0xC0) != 0x80) return -1;
            if ((p[i + 3] & 0xC0) != 0x80) return -1;
            i += 4;
            continue;
        }
        return -1;                                          /* C0/C1/F5..FF 及孤立后续字节 */
    }
    return 0;
}

int tgb_utf8_count_chars(const char *s, size_t len)
{
    const unsigned char *p = (const unsigned char *)s;
    size_t i = 0;
    int n = 0;

    if (s == NULL) return 0;
    while (i < len) {
        unsigned char c = p[i];
        if (c < 0x80) i += 1;
        else if (c < 0xE0) i += 2;
        else if (c < 0xF0) i += 3;
        else i += 4;
        n++;
    }
    return n;
}

/* ---------------- 扁平 JSON 解析 ---------------- */

typedef struct {
    const char *p;
    const char *end;
    tgb_eval    err;
} jctx;

static void jws(jctx *c)
{
    while (c->p < c->end) {
        char ch = *c->p;
        if (ch == ' ' || ch == '\t' || ch == '\n' || ch == '\r') c->p++;
        else break;
    }
}

static int jfail(jctx *c, tgb_eval e)
{
    if (c->err == TGB_E_OK) c->err = e;
    return -1;
}

/* 把码点编码成 UTF-8，返回写入字节数；缓冲不足返回 -1 */
static int utf8_put(char *dst, size_t cap, unsigned long cp)
{
    if (cp < 0x80u) {
        if (cap < 1) return -1;
        dst[0] = (char)cp;
        return 1;
    }
    if (cp < 0x800u) {
        if (cap < 2) return -1;
        dst[0] = (char)(0xC0u | (cp >> 6));
        dst[1] = (char)(0x80u | (cp & 0x3Fu));
        return 2;
    }
    if (cp < 0x10000u) {
        if (cap < 3) return -1;
        dst[0] = (char)(0xE0u | (cp >> 12));
        dst[1] = (char)(0x80u | ((cp >> 6) & 0x3Fu));
        dst[2] = (char)(0x80u | (cp & 0x3Fu));
        return 3;
    }
    if (cp <= 0x10FFFFu) {
        if (cap < 4) return -1;
        dst[0] = (char)(0xF0u | (cp >> 18));
        dst[1] = (char)(0x80u | ((cp >> 12) & 0x3Fu));
        dst[2] = (char)(0x80u | ((cp >> 6) & 0x3Fu));
        dst[3] = (char)(0x80u | (cp & 0x3Fu));
        return 4;
    }
    return -1;
}

static int hex4(const char *p, unsigned long *out)
{
    unsigned long v = 0;
    int i;

    for (i = 0; i < 4; i++) {
        char ch = p[i];
        v <<= 4;
        if (ch >= '0' && ch <= '9') v |= (unsigned long)(ch - '0');
        else if (ch >= 'a' && ch <= 'f') v |= (unsigned long)(ch - 'a' + 10);
        else if (ch >= 'A' && ch <= 'F') v |= (unsigned long)(ch - 'A' + 10);
        else return -1;
    }
    *out = v;
    return 0;
}

/*
 * 读取一个 JSON 字符串（调用时 *c->p 必须是 '"'）。
 *   truncate_ok=1：超长时静默截断（用于"未知字段"的值，只需跳过）
 *   否则超长 -> TGB_E_TOO_LONG
 * 返回 0 = 成功（*outlen = 有效字节数），-1 = 失败（c->err 已设置）
 */
static int jstring(jctx *c, char *out, size_t cap, size_t *outlen, int truncate_ok)
{
    size_t w = 0;

    if (c->p >= c->end || *c->p != '"') return jfail(c, TGB_E_BAD_TYPE);
    c->p++;

    for (;;) {
        unsigned char ch;

        if (c->p >= c->end) return jfail(c, TGB_E_BAD_JSON);
        ch = (unsigned char)*c->p++;

        if (ch == '"') break;
        if (ch == '\\') {
            char esc;
            if (c->p >= c->end) return jfail(c, TGB_E_BAD_JSON);
            esc = *c->p++;
            if (esc == 'u') {
                unsigned long cp, lo;
                char tmp[4];
                int n;

                if (c->end - c->p < 4) return jfail(c, TGB_E_BAD_JSON);
                if (hex4(c->p, &cp) != 0) return jfail(c, TGB_E_BAD_JSON);
                c->p += 4;
                if (cp >= 0xD800u && cp <= 0xDBFFu) {
                    /* 高代理：必须紧跟 \uXXXX 低代理，否则是孤代理 = 非法文本 */
                    if (c->end - c->p < 6) return jfail(c, TGB_E_BAD_UTF8);
                    if (c->p[0] != '\\' || c->p[1] != 'u') return jfail(c, TGB_E_BAD_UTF8);
                    if (hex4(c->p + 2, &lo) != 0) return jfail(c, TGB_E_BAD_JSON);
                    if (lo < 0xDC00u || lo > 0xDFFFu) return jfail(c, TGB_E_BAD_UTF8);
                    c->p += 6;
                    cp = 0x10000u + ((cp - 0xD800u) << 10) + (lo - 0xDC00u);
                } else if (cp >= 0xDC00u && cp <= 0xDFFFu) {
                    return jfail(c, TGB_E_BAD_UTF8);        /* 孤低代理 */
                }
                n = utf8_put(tmp, sizeof(tmp), cp);
                if (n < 0) return jfail(c, TGB_E_BAD_UTF8);
                if (w + (size_t)n > cap) {
                    if (!truncate_ok) return jfail(c, TGB_E_TOO_LONG);
                } else {
                    memcpy(out + w, tmp, (size_t)n);
                    w += (size_t)n;
                }
                continue;
            }
            switch (esc) {
            case '"':  ch = '"';  break;
            case '\\': ch = '\\'; break;
            case '/':  ch = '/';  break;
            case 'b':  ch = '\b'; break;
            case 'f':  ch = '\f'; break;
            case 'n':  ch = '\n'; break;
            case 'r':  ch = '\r'; break;
            case 't':  ch = '\t'; break;
            default:   return jfail(c, TGB_E_BAD_JSON);
            }
        } else if (ch < 0x20) {
            return jfail(c, TGB_E_BAD_JSON);                /* 裸控制字符 */
        }

        if (w + 1 > cap) {
            if (!truncate_ok) return jfail(c, TGB_E_TOO_LONG);
        } else {
            out[w++] = (char)ch;
        }
    }

    if (w < cap) out[w] = '\0';
    else if (cap > 0) out[cap - 1] = '\0';
    if (outlen != NULL) *outlen = w;
    return 0;
}

#define TGB_LL_MAX_SAFE 9007199254740992LL      /* 2^53 */

static int jint(jctx *c, long long *out)
{
    int neg = 0;
    long long v = 0;
    int digits = 0;

    if (c->p >= c->end) return jfail(c, TGB_E_BAD_JSON);
    if (*c->p == '-') { neg = 1; c->p++; }
    if (c->p >= c->end || *c->p < '0' || *c->p > '9') return jfail(c, TGB_E_BAD_TYPE);
    if (*c->p == '0' && (c->p + 1 < c->end) && c->p[1] >= '0' && c->p[1] <= '9')
        return jfail(c, TGB_E_BAD_JSON);                    /* 前导零 */

    while (c->p < c->end && *c->p >= '0' && *c->p <= '9') {
        v = v * 10 + (long long)(*c->p - '0');
        if (v > TGB_LL_MAX_SAFE) return jfail(c, TGB_E_BAD_JSON);   /* 超出安全整数范围 */
        digits++;
        c->p++;
    }
    if (digits == 0) return jfail(c, TGB_E_BAD_JSON);
    *out = neg ? -v : v;
    return 0;
}

static int jbool(jctx *c, int *out)
{
    if (c->end - c->p >= 4 && memcmp(c->p, "true", 4) == 0) {
        c->p += 4;
        *out = 1;
        return 0;
    }
    if (c->end - c->p >= 5 && memcmp(c->p, "false", 5) == 0) {
        c->p += 5;
        *out = 0;
        return 0;
    }
    return jfail(c, TGB_E_BAD_TYPE);
}

/* 跳过未知字段的值：只允许五种标量（前向兼容但不允许嵌套） */
static int jskip_value(jctx *c)
{
    char scratch[8];

    if (c->p >= c->end) return jfail(c, TGB_E_BAD_JSON);
    if (*c->p == '"') return jstring(c, scratch, sizeof(scratch), NULL, 1);
    if (*c->p == 't' || *c->p == 'f') {
        int b;
        return jbool(c, &b);
    }
    if (*c->p == 'n') {
        if (c->end - c->p >= 4 && memcmp(c->p, "null", 4) == 0) { c->p += 4; return 0; }
        return jfail(c, TGB_E_BAD_JSON);
    }
    if (*c->p == '-' || (*c->p >= '0' && *c->p <= '9')) {
        long long v;
        return jint(c, &v);
    }
    return jfail(c, TGB_E_BAD_TYPE);
}

#define F_VER     0x01u
#define F_EVID    0x02u
#define F_ETYPE   0x04u
#define F_PID     0x08u
#define F_SID     0x10u
#define F_TEXT    0x20u
#define F_FINAL   0x40u
#define F_TIME    0x80u

static int id_charset_ok(const char *s)
{
    const char *p = s;

    if (s == NULL || *s == '\0') return 0;
    for (; *p; p++) {
        char ch = *p;
        int ok = (ch >= '0' && ch <= '9') || (ch >= 'a' && ch <= 'z') ||
                 (ch >= 'A' && ch <= 'Z') || ch == '.' || ch == '_' ||
                 ch == ':' || ch == '-';
        if (!ok) return 0;
    }
    return 1;
}

int tgb_event_id_ok(const char *event_id)
{
    if (event_id == NULL || event_id[0] == '\0') return 0;
    if (strlen(event_id) > TGB_MAX_ID_LEN) return 0;
    return id_charset_ok(event_id);
}

static tgb_eval validate(tgb_event *e, unsigned seen, const char **field)
{
    *field = NULL;

    if (!(seen & F_VER))   { *field = "version";        return TGB_E_MISSING; }
    if (e->version != 1)   { *field = "version";        return TGB_E_BAD_VERSION; }

    if (!(seen & F_EVID))  { *field = "event_id";       return TGB_E_MISSING; }
    if (e->event_id[0] == '\0') { *field = "event_id";  return TGB_E_EMPTY_EVENT_ID; }
    if (!id_charset_ok(e->event_id) || strlen(e->event_id) > TGB_MAX_ID_LEN) {
        *field = "event_id"; return TGB_E_BAD_EVENT_ID;
    }

    if (!(seen & F_ETYPE)) { *field = "event_type";     return TGB_E_MISSING; }
    if (strcmp(e->event_type, "asr_final") != 0) {
        *field = "event_type"; return TGB_E_BAD_EVENT_TYPE;
    }

    if (!(seen & F_PID))   { *field = "pid";            return TGB_E_MISSING; }
    if (e->pid <= 0 || e->pid > 2147483647LL) {
        *field = "pid"; return TGB_E_BAD_PID;
    }

    if (!(seen & F_SID))   { *field = "session_id";     return TGB_E_MISSING; }
    if (e->session_id[0] == '\0') { *field = "session_id"; return TGB_E_EMPTY_SESSION_ID; }
    if (!id_charset_ok(e->session_id) || strlen(e->session_id) > TGB_MAX_ID_LEN) {
        *field = "session_id"; return TGB_E_BAD_SESSION_ID;
    }

    if (!(seen & F_TEXT))  { *field = "text";           return TGB_E_MISSING; }
    if (e->text_bytes <= 0) { *field = "text";          return TGB_E_EMPTY_TEXT; }
    if (e->text_bytes > TGB_MAX_TEXT_BYTES) {
        *field = "text"; return TGB_E_TEXT_TOO_LONG;
    }
    if (tgb_utf8_validate(e->text, (size_t)e->text_bytes) != 0) {
        *field = "text"; return TGB_E_BAD_UTF8;
    }
    if (memchr(e->text, 0, (size_t)e->text_bytes) != NULL) {
        *field = "text"; return TGB_E_TEXT_CONTROL;
    }
    {
        int i;
        for (i = 0; i < e->text_bytes; i++) {
            unsigned char ch = (unsigned char)e->text[i];
            if (ch < 0x20) { *field = "text"; return TGB_E_TEXT_CONTROL; }
        }
    }
    e->text_chars = tgb_utf8_count_chars(e->text, (size_t)e->text_bytes);

    if (!(seen & F_FINAL)) { *field = "is_final";       return TGB_E_MISSING; }
    if (e->is_final != 1)  { *field = "is_final";       return TGB_E_BAD_IS_FINAL; }

    if (!(seen & F_TIME))  { *field = "received_at_ms";  return TGB_E_MISSING; }
    if (e->received_at_ms <= 0 || e->received_at_ms > TGB_LL_MAX_SAFE) {
        *field = "received_at_ms"; return TGB_E_BAD_TIME;
    }
    return TGB_E_OK;
}

tgb_eval tgb_event_parse(const char *body, size_t len, tgb_event *out,
                         const char **field)
{
    jctx c;
    unsigned seen = 0;
    size_t text_len = 0;

    if (field != NULL) *field = NULL;
    if (body == NULL || out == NULL) return TGB_E_BAD_JSON;
    if (len == 0) return TGB_E_BAD_JSON;

    memset(out, 0, sizeof(*out));
    c.p = body;
    c.end = body + len;
    c.err = TGB_E_OK;

    jws(&c);
    if (c.p >= c.end || *c.p != '{') return TGB_E_BAD_JSON;
    c.p++;
    jws(&c);
    if (c.p < c.end && *c.p == '}') {
        c.p++;
    } else {
        for (;;) {
            char key[TGB_KEY_BUF];
            size_t klen = 0;

            jws(&c);
            if (jstring(&c, key, sizeof(key), &klen, 0) != 0) break;
            jws(&c);
            if (c.p >= c.end || *c.p != ':') { jfail(&c, TGB_E_BAD_JSON); break; }
            c.p++;
            jws(&c);

            if (strcmp(key, "version") == 0) {
                long long v;
                if (seen & F_VER) { jfail(&c, TGB_E_DUP_FIELD); break; }
                if (jint(&c, &v) != 0) break;
                out->version = (int)v;
                seen |= F_VER;
            } else if (strcmp(key, "event_id") == 0) {
                if (seen & F_EVID) { jfail(&c, TGB_E_DUP_FIELD); break; }
                if (jstring(&c, out->event_id, sizeof(out->event_id), NULL, 0) != 0) break;
                seen |= F_EVID;
            } else if (strcmp(key, "event_type") == 0) {
                if (seen & F_ETYPE) { jfail(&c, TGB_E_DUP_FIELD); break; }
                /* event_type 只认 "asr_final"：超长时截断后必然不等于它，等价于拒收，
                 * 因此这里允许截断，不需要为"类型名太长"单独开一个错误码 */
                if (jstring(&c, out->event_type, sizeof(out->event_type), NULL, 1) != 0) break;
                seen |= F_ETYPE;
            } else if (strcmp(key, "pid") == 0) {
                if (seen & F_PID) { jfail(&c, TGB_E_DUP_FIELD); break; }
                if (jint(&c, &out->pid) != 0) break;
                seen |= F_PID;
            } else if (strcmp(key, "session_id") == 0) {
                if (seen & F_SID) { jfail(&c, TGB_E_DUP_FIELD); break; }
                if (jstring(&c, out->session_id, sizeof(out->session_id), NULL, 0) != 0) break;
                seen |= F_SID;
            } else if (strcmp(key, "text") == 0) {
                if (seen & F_TEXT) { jfail(&c, TGB_E_DUP_FIELD); break; }
                if (jstring(&c, out->text, sizeof(out->text), &text_len, 0) != 0) {
                    if (c.err == TGB_E_TOO_LONG) {
                        c.err = TGB_E_TEXT_TOO_LONG;
                        if (field != NULL) *field = "text";
                    }
                    break;
                }
                out->text_bytes = (int)text_len;
                seen |= F_TEXT;
            } else if (strcmp(key, "is_final") == 0) {
                if (seen & F_FINAL) { jfail(&c, TGB_E_DUP_FIELD); break; }
                if (jbool(&c, &out->is_final) != 0) break;
                seen |= F_FINAL;
            } else if (strcmp(key, "received_at_ms") == 0) {
                if (seen & F_TIME) { jfail(&c, TGB_E_DUP_FIELD); break; }
                if (jint(&c, &out->received_at_ms) != 0) break;
                seen |= F_TIME;
            } else {
                if (jskip_value(&c) != 0) break;            /* 未知字段：跳过 */
            }

            jws(&c);
            if (c.p < c.end && *c.p == ',') { c.p++; continue; }
            if (c.p < c.end && *c.p == '}') { c.p++; break; }
            jfail(&c, TGB_E_BAD_JSON);
            break;
        }
    }

    if (c.err == TGB_E_OK) {
        jws(&c);
        if (c.p != c.end) c.err = TGB_E_TRAILING;
    }
    if (c.err != TGB_E_OK) return c.err;

    {
        tgb_eval r = validate(out, seen, field);
        return r;
    }
}

const char *tgb_eval_name(tgb_eval c)
{
    switch (c) {
    case TGB_E_OK:              return "ok";
    case TGB_E_BAD_JSON:        return "bad_json";
    case TGB_E_DUP_FIELD:       return "dup_field";
    case TGB_E_TRAILING:        return "trailing_garbage";
    case TGB_E_BAD_TYPE:        return "bad_field_type";
    case TGB_E_MISSING:         return "missing_field";
    case TGB_E_TOO_LONG:        return "field_too_long";
    case TGB_E_BAD_VERSION:     return "bad_protocol_version";
    case TGB_E_BAD_EVENT_TYPE:  return "bad_event_type";
    case TGB_E_BAD_IS_FINAL:    return "bad_is_final";
    case TGB_E_EMPTY_EVENT_ID:  return "empty_event_id";
    case TGB_E_BAD_EVENT_ID:    return "bad_event_id";
    case TGB_E_EMPTY_SESSION_ID:return "empty_session_id";
    case TGB_E_BAD_SESSION_ID:  return "bad_session_id";
    case TGB_E_EMPTY_TEXT:      return "empty_text";
    case TGB_E_BAD_UTF8:        return "bad_utf8";
    case TGB_E_TEXT_CONTROL:    return "text_has_control";
    case TGB_E_TEXT_TOO_LONG:   return "text_too_long";
    case TGB_E_BAD_PID:         return "bad_pid";
    case TGB_E_BAD_TIME:        return "bad_received_at";
    default:                    return "unknown_event_error";
    }
}

/* ---------------- 落库记录 ---------------- */

static int put_str(char **p, char *end, const char *k, const char *v)
{
    int n = snprintf(*p, (size_t)(end - *p), "\"%s\":\"", k);
    if (n < 0 || *p + n >= end) { *p = end; return -1; }
    *p += n;
    *p += t5_json_escape(*p, (size_t)(end - *p), v ? v : "");
    n = snprintf(*p, (size_t)(end - *p), "\",");
    if (n < 0 || *p + n >= end) { *p = end; return -1; }
    *p += n;
    return 0;
}

static int put_ll(char **p, char *end, const char *k, long long v)
{
    int n = snprintf(*p, (size_t)(end - *p), "\"%s\":%lld,", k, v);
    if (n < 0 || *p + n >= end) { *p = end; return -1; }
    *p += n;
    return 0;
}

static int put_raw(char **p, char *end, const char *k, const char *raw)
{
    int n = snprintf(*p, (size_t)(end - *p), "\"%s\":%s,", k, raw);
    if (n < 0 || *p + n >= end) { *p = end; return -1; }
    *p += n;
    return 0;
}

int tgb_event_to_record(const tgb_event *e, long long recv_at_ms,
                        long long stored_at_ms, unsigned long seq,
                        char *buf, size_t cap)
{
    char *p = buf;
    char *end;
    char seqbuf[32];
    int n;

    if (e == NULL || buf == NULL || cap < 256) return -1;
    end = buf + cap - 2;                 /* 预留 "}\n" */

    n = snprintf(p, (size_t)(end - p), "{\"version\":1,\"rec\":\"asr_final\",");
    if (n < 0 || p + n >= end) return -1;
    p += n;

    if (put_str(&p, end, "event_id", e->event_id) != 0) return -1;
    if (put_str(&p, end, "event_type", e->event_type) != 0) return -1;
    if (put_ll(&p, end, "pid", e->pid) != 0) return -1;
    if (put_str(&p, end, "session_id", e->session_id) != 0) return -1;
    if (put_str(&p, end, "text", e->text) != 0) return -1;
    if (put_ll(&p, end, "text_bytes", (long long)e->text_bytes) != 0) return -1;
    if (put_ll(&p, end, "text_chars", (long long)e->text_chars) != 0) return -1;
    if (put_raw(&p, end, "is_final", "true") != 0) return -1;
    if (put_ll(&p, end, "received_at_ms", e->received_at_ms) != 0) return -1;
    if (put_ll(&p, end, "recv_at_ms", recv_at_ms) != 0) return -1;
    if (put_ll(&p, end, "stored_at_ms", stored_at_ms) != 0) return -1;

    snprintf(seqbuf, sizeof(seqbuf), "%lu", seq);
    if (put_raw(&p, end, "seq", seqbuf) != 0) return -1;

    /* 去掉最后一个逗号，换成 "}\n" */
    if (p > buf && p[-1] == ',') p--;
    if (p + 2 > buf + cap) return -1;
    *p++ = '}';
    *p++ = '\n';
    *p = '\0';
    return (int)(p - buf);
}
