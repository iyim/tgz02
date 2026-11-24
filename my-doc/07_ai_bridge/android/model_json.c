/*
 * model_json.c -- T9-08C: 极简 JSON 游标（见 model_json.h）
 */
#include "model_json.h"

#include <ctype.h>
#include <stdlib.h>
#include <string.h>

void mj_open(mj *j, const char *s, size_t n)
{
    if (j == NULL) return;
    j->s = s;
    j->n = (s == NULL) ? 0 : n;
    j->i = 0;
    j->bad = (s == NULL);
}

int mj_bad(const mj *j)
{
    return (j == NULL || j->bad);
}

static void mj_ws(mj *j)
{
    while (!j->bad && j->i < j->n) {
        char c = j->s[j->i];
        if (c == ' ' || c == '\t' || c == '\r' || c == '\n') j->i++;
        else break;
    }
}

static int mj_peek(mj *j)
{
    if (j->bad) return -1;
    mj_ws(j);
    return (j->i < j->n) ? (unsigned char)j->s[j->i] : -1;
}

static int mj_hex4(const char *p, unsigned int *out)
{
    unsigned int v = 0;
    int i;
    for (i = 0; i < 4; i++) {
        char c = p[i];
        v <<= 4;
        if (c >= '0' && c <= '9') v |= (unsigned int)(c - '0');
        else if (c >= 'a' && c <= 'f') v |= (unsigned int)(c - 'a' + 10);
        else if (c >= 'A' && c <= 'F') v |= (unsigned int)(c - 'A' + 10);
        else return -1;
    }
    *out = v;
    return 0;
}

static int mj_put_utf8(char *out, size_t cap, size_t *used, unsigned int cp)
{
    if (cp < 0x80) {
        if (*used + 1 > cap) return -1;
        out[(*used)++] = (char)cp;
    } else if (cp < 0x800) {
        if (*used + 2 > cap) return -1;
        out[(*used)++] = (char)(0xC0 | (cp >> 6));
        out[(*used)++] = (char)(0x80 | (cp & 0x3F));
    } else if (cp < 0x10000) {
        if (*used + 3 > cap) return -1;
        out[(*used)++] = (char)(0xE0 | (cp >> 12));
        out[(*used)++] = (char)(0x80 | ((cp >> 6) & 0x3F));
        out[(*used)++] = (char)(0x80 | (cp & 0x3F));
    } else {
        if (*used + 4 > cap) return -1;
        out[(*used)++] = (char)(0xF0 | (cp >> 18));
        out[(*used)++] = (char)(0x80 | ((cp >> 12) & 0x3F));
        out[(*used)++] = (char)(0x80 | ((cp >> 6) & 0x3F));
        out[(*used)++] = (char)(0x80 | (cp & 0x3F));
    }
    return 0;
}

/* 解析一个字符串（out==NULL 时只量长度） */
static int mj_str(mj *j, char *out, size_t cap, size_t *used_out)
{
    size_t used = 0;

    if (mj_peek(j) != '"') return -1;
    j->i++;
    while (j->i < j->n) {
        unsigned char c = (unsigned char)j->s[j->i];
        if (c == '"') {
            j->i++;
            if (out != NULL && cap > 0) out[used < cap ? used : cap - 1] = '\0';
            if (used_out) *used_out = used;
            return 0;
        }
        if (c < 0x20) { j->bad = 1; return -1; }
        if (c == '\\') {
            j->i++;
            if (j->i >= j->n) { j->bad = 1; return -1; }
            switch (j->s[j->i]) {
            case '"':  if (out) { if (used + 1 > cap) return -2; out[used++] = '"'; } else used++; j->i++; break;
            case '\\': if (out) { if (used + 1 > cap) return -2; out[used++] = '\\'; } else used++; j->i++; break;
            case '/':  if (out) { if (used + 1 > cap) return -2; out[used++] = '/'; } else used++; j->i++; break;
            case 'b':  if (out) { if (used + 1 > cap) return -2; out[used++] = '\b'; } else used++; j->i++; break;
            case 'f':  if (out) { if (used + 1 > cap) return -2; out[used++] = '\f'; } else used++; j->i++; break;
            case 'n':  if (out) { if (used + 1 > cap) return -2; out[used++] = '\n'; } else used++; j->i++; break;
            case 'r':  if (out) { if (used + 1 > cap) return -2; out[used++] = '\r'; } else used++; j->i++; break;
            case 't':  if (out) { if (used + 1 > cap) return -2; out[used++] = '\t'; } else used++; j->i++; break;
            case 'u': {
                unsigned int cp;
                if (j->i + 4 >= j->n) { j->bad = 1; return -1; }
                if (mj_hex4(j->s + j->i + 1, &cp) != 0) { j->bad = 1; return -1; }
                j->i += 5;
                if (cp >= 0xD800 && cp <= 0xDBFF) {
                    unsigned int lo;
                    if (j->i + 1 >= j->n || j->s[j->i] != '\\' || j->s[j->i + 1] != 'u') {
                        j->bad = 1; return -1;
                    }
                    if (j->i + 5 >= j->n || mj_hex4(j->s + j->i + 2, &lo) != 0) {
                        j->bad = 1; return -1;
                    }
                    j->i += 6;
                    cp = 0x10000 + ((cp - 0xD800) << 10) + (lo - 0xDC00);
                }
                if (out) {
                    if (mj_put_utf8(out, cap, &used, cp) != 0) return -2;
                } else {
                    if (cp < 0x80) used += 1;
                    else if (cp < 0x800) used += 2;
                    else if (cp < 0x10000) used += 3;
                    else used += 4;
                }
                break;
            }
            default:
                j->bad = 1;
                return -1;
            }
            continue;
        }
        if (out) {
            if (used + 1 > cap) return -2;
            out[used++] = (char)c;
        } else {
            used++;
        }
        j->i++;
    }
    j->bad = 1;
    return -1;
}

int mj_skip(mj *j)
{
    int c;

    if (mj_bad(j)) return -1;
    c = mj_peek(j);
    if (c < 0) { j->bad = 1; return -1; }
    if (c == '"') return (mj_str(j, NULL, 0, NULL) == 0) ? 0 : -1;
    if (c == '{' || c == '[') {
        int depth = 0;
        while (j->i < j->n) {
            char ch = j->s[j->i];
            if (ch == '"') {
                if (mj_str(j, NULL, 0, NULL) != 0) { j->bad = 1; return -1; }
                continue;
            }
            if (ch == '{' || ch == '[') depth++;
            else if (ch == '}' || ch == ']') {
                depth--;
                j->i++;
                if (depth == 0) return 0;
                continue;
            }
            j->i++;
        }
        j->bad = 1;
        return -1;
    }
    if (c == 't') { if (j->n - j->i < 4 || memcmp(j->s + j->i, "true", 4) != 0) { j->bad = 1; return -1; } j->i += 4; return 0; }
    if (c == 'f') { if (j->n - j->i < 5 || memcmp(j->s + j->i, "false", 5) != 0) { j->bad = 1; return -1; } j->i += 5; return 0; }
    if (c == 'n') { if (j->n - j->i < 4 || memcmp(j->s + j->i, "null", 4) != 0) { j->bad = 1; return -1; } j->i += 4; return 0; }
    {
        size_t start = j->i;
        if (j->s[j->i] == '-') j->i++;
        if (j->i >= j->n || !isdigit((unsigned char)j->s[j->i])) { j->i = start; j->bad = 1; return -1; }
        while (j->i < j->n && isdigit((unsigned char)j->s[j->i])) j->i++;
        if (j->i < j->n && j->s[j->i] == '.') {
            j->i++;
            while (j->i < j->n && isdigit((unsigned char)j->s[j->i])) j->i++;
        }
        if (j->i < j->n && (j->s[j->i] == 'e' || j->s[j->i] == 'E')) {
            j->i++;
            if (j->i < j->n && (j->s[j->i] == '+' || j->s[j->i] == '-')) j->i++;
            while (j->i < j->n && isdigit((unsigned char)j->s[j->i])) j->i++;
        }
        return 0;
    }
}

int mj_skip_raw(mj *j, const char **raw, size_t *rawlen)
{
    size_t start;

    if (mj_bad(j)) return -1;
    (void)mj_peek(j);              /* 先把空白跳过，区间才从值的第一个字节开始 */
    start = j->i;
    if (mj_skip(j) != 0) return -1;
    if (raw) *raw = j->s + start;
    if (rawlen) *rawlen = j->i - start;
    return 0;
}

int mj_obj_open(mj *j)
{
    if (mj_bad(j)) return -1;
    if (mj_peek(j) != '{') { j->bad = 1; return -1; }
    j->i++;
    return 0;
}

int mj_obj_find(mj *j, const char *key)
{
    if (mj_bad(j) || key == NULL) return 0;
    for (;;) {
        char cur[64];
        int c = mj_peek(j);

        if (c < 0) { j->bad = 1; return 0; }
        if (c == '}') { j->i++; return 0; }
        if (c == ',') { j->i++; continue; }
        if (mj_str(j, cur, sizeof(cur), NULL) != 0) { j->bad = 1; return 0; }
        if (mj_peek(j) != ':') { j->bad = 1; return 0; }
        j->i++;
        if (strcmp(cur, key) == 0) return 1;
        if (mj_skip(j) != 0) return 0;
    }
}

int mj_arr_first(mj *j)
{
    if (mj_bad(j)) return 0;
    if (mj_peek(j) != '[') return 0;
    j->i++;
    if (mj_peek(j) == ']') { j->i++; return 0; }
    return 1;
}

/* 顺序遍历对象：返回 1 时返回 key 且光标停在值首字节；返回 0 表示对象结束（已吃掉 '}'）。
 * 允许在本对象还没被打开时自动吃掉开头那个 '{'。 */
int mj_obj_next(mj *j, char *key, size_t keycap)
{
    int c;

    if (mj_bad(j)) return 0;
    c = mj_peek(j);
    if (c == '{') {
        j->i++;
        c = mj_peek(j);
    }
    if (c < 0) { j->bad = 1; return 0; }
    if (c == '}') { j->i++; return 0; }
    if (c == ',') {
        j->i++;
        c = mj_peek(j);
        if (c < 0) { j->bad = 1; return 0; }
        if (c == '}') { j->i++; return 0; }
    }
    if (mj_str(j, key, keycap, NULL) != 0) { j->bad = 1; return 0; }
    if (mj_peek(j) != ':') { j->bad = 1; return 0; }
    j->i++;
    return 1;
}

int mj_peek_c(mj *j)
{
    return mj_peek(j);
}

int mj_arr_open(mj *j)
{
    if (mj_bad(j)) return -1;
    if (mj_peek(j) != '[') { j->bad = 1; return -1; }
    j->i++;
    return 0;
}

int mj_arr_next(mj *j)
{
    int c;

    if (mj_bad(j)) return 0;
    c = mj_peek(j);
    if (c < 0) { j->bad = 1; return 0; }
    if (c == ']') { j->i++; return 0; }
    if (c == ',') { j->i++; c = mj_peek(j); if (c < 0) { j->bad = 1; return 0; } }
    return 1;
}

int mj_str_value(mj *j, char *out, size_t cap, size_t *used)
{
    if (mj_bad(j)) return -1;
    if (mj_peek(j) != '"') return -1;
    return mj_str(j, out, cap, used);
}

int mj_num_value(mj *j, double *d)
{
    size_t start;
    char tmp[40];
    size_t n;
    int c;

    if (mj_bad(j)) return -1;
    c = mj_peek(j);
    if (c != '-' && !isdigit(c)) return -1;
    start = j->i;
    while (j->i < j->n) {
        char ch = j->s[j->i];
        if (isdigit((unsigned char)ch) || ch == '-' || ch == '+' || ch == '.' || ch == 'e' || ch == 'E') j->i++;
        else break;
    }
    n = j->i - start;
    if (n == 0 || n >= sizeof(tmp)) { j->i = start; return -1; }
    memcpy(tmp, j->s + start, n);
    tmp[n] = '\0';
    if (d) *d = atof(tmp);
    return 0;
}

int mj_path_string(const char *json, size_t len, const char *k1, const char *k2,
                   const char *k3, char *out, size_t cap, size_t *used)
{
    mj j;
    const char *keys[3];
    int nk = 0, k;

    keys[nk++] = k1;
    if (k2 != NULL && k2[0] != '\0') keys[nk++] = k2;
    if (k3 != NULL && k3[0] != '\0') keys[nk++] = k3;

    mj_open(&j, json, len);
    if (mj_obj_open(&j) != 0) return -1;
    for (k = 0; k < nk; k++) {
        if (!mj_obj_find(&j, keys[k])) return -1;
        /* 每一层都可能包着数组（OpenAI/方舟的 choices、千问的 output.choices）。
         * 但最后一层的值必须**原样**留给下面的取字符串，不能往里钻，
         * 否则会把 message 对象的第一个 key 当成回答文本。 */
        if (k + 1 >= nk) break;
        if (mj_peek(&j) == '[') {
            if (!mj_arr_first(&j)) return -1;
            if (mj_peek(&j) == '{') {
                if (mj_obj_open(&j) != 0) return -1;
            }
        } else if (mj_peek(&j) == '{') {
            if (mj_obj_open(&j) != 0) return -1;
        }
    }
    if (mj_peek(&j) != '"') return -1;
    return mj_str_value(&j, out, cap, used);
}
