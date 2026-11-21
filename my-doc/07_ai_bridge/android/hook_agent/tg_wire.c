/*
 * tg_wire.c -- 见 tg_wire.h
 */
#include "tg_wire.h"

#include <string.h>

static uint16_t rd_u16(const uint8_t *p)
{
    return (uint16_t)((uint16_t)p[0] | ((uint16_t)p[1] << 8));
}

static uint32_t rd_u32(const uint8_t *p)
{
    return (uint32_t)p[0] | ((uint32_t)p[1] << 8) |
           ((uint32_t)p[2] << 16) | ((uint32_t)p[3] << 24);
}

static void wr_u16(uint8_t *p, uint16_t v)
{
    p[0] = (uint8_t)v;
    p[1] = (uint8_t)(v >> 8);
}

static void wr_u32(uint8_t *p, uint32_t v)
{
    p[0] = (uint8_t)v;
    p[1] = (uint8_t)(v >> 8);
    p[2] = (uint8_t)(v >> 16);
    p[3] = (uint8_t)(v >> 24);
}

uint32_t tg_fnv1a32(const void *data, size_t len)
{
    const uint8_t *p = (const uint8_t *)data;
    uint32_t h = 2166136261u;
    size_t i;

    for (i = 0; i < len; i++) {
        h ^= (uint32_t)p[i];
        h *= 16777619u;
    }
    return h;
}

int tg_frame_pack(uint8_t type, const void *body, uint32_t body_len,
                  uint8_t *out, size_t outcap, size_t *outlen)
{
    if (out == NULL || outcap < TG_HDR_LEN) return -1;
    if (body_len > TG_MAX_BODY) return -1;
    if (body_len > 0 && body == NULL) return -1;
    if (outcap < (size_t)TG_HDR_LEN + (size_t)body_len) return -1;

    wr_u32(out + 0, TG_MAGIC);
    out[4] = (uint8_t)TG_VER_FRAME;
    out[5] = type;
    wr_u16(out + 6, (uint16_t)TG_HDR_LEN);
    wr_u32(out + 8, body_len);
    wr_u32(out + 12, tg_fnv1a32(body, (size_t)body_len));
    if (body_len > 0) memcpy(out + TG_HDR_LEN, body, (size_t)body_len);

    if (outlen != NULL) *outlen = (size_t)TG_HDR_LEN + (size_t)body_len;
    return 0;
}

int tg_hdr_decode(const uint8_t *raw, size_t avail, tg_hdr *out)
{
    if (raw == NULL || out == NULL) return -1;
    if (avail < TG_HDR_LEN) return -2;
    if (rd_u32(raw) != TG_MAGIC) return -3;
    out->ver = raw[4];
    out->type = raw[5];
    if (rd_u16(raw + 6) != TG_HDR_LEN) return -4;
    out->body_len = rd_u32(raw + 8);
    if (out->ver != TG_VER_FRAME) return -5;
    if (out->type != TG_TYPE_ACK) return -6;
    if (out->body_len > TG_MAX_BODY) return -7;
    return 0;
}

int tg_json_escape(char *dst, size_t cap, const char *src, size_t srclen)
{
    static const char hex[] = "0123456789abcdef";
    size_t o = 0;
    size_t i;

    if (dst == NULL || src == NULL) return -1;

    for (i = 0; i < srclen; i++) {
        unsigned char c = (unsigned char)src[i];
        if (c == '"' || c == '\\') {
            if (o + 2 > cap) return -1;
            dst[o++] = '\\';
            dst[o++] = (char)c;
        } else if (c < 0x20) {
            if (o + 6 > cap) return -1;
            dst[o++] = '\\';
            dst[o++] = 'u';
            dst[o++] = '0';
            dst[o++] = '0';
            dst[o++] = hex[(c >> 4) & 0xF];
            dst[o++] = hex[c & 0xF];
        } else {
            if (o + 1 > cap) return -1;
            dst[o++] = (char)c;
        }
    }
    /* 必须在内容后补 NUL：调用方一律按 C 字符串使用返回值 */
    if (o >= cap) return -1;
    dst[o] = '\0';
    return (int)o;
}

static int hex4(const char *p, unsigned *out)
{
    unsigned v = 0;
    int i;

    for (i = 0; i < 4; i++) {
        char c = p[i];
        v <<= 4;
        if (c >= '0' && c <= '9') v |= (unsigned)(c - '0');
        else if (c >= 'a' && c <= 'f') v |= (unsigned)(c - 'a' + 10);
        else if (c >= 'A' && c <= 'F') v |= (unsigned)(c - 'A' + 10);
        else return -1;
    }
    *out = v;
    return 0;
}

int tg_json_str_field(const char *body, size_t len, const char *key,
                      char *out, size_t outcap)
{
    size_t klen = strlen(key);
    size_t i = 0;

    if (body == NULL || key == NULL || out == NULL || outcap == 0) return -1;

    while (i + klen + 2 <= len) {
        size_t j;
        size_t o = 0;

        if (body[i] != '"') { i++; continue; }
        if (i + 1 + klen + 1 > len) break;
        if (memcmp(body + i + 1, key, klen) != 0 ||
            body[i + 1 + klen] != '"') { i++; continue; }

        j = i + 2 + klen;
        while (j < len && (body[j] == ' ' || body[j] == '\t')) j++;
        if (j >= len || body[j] != ':') { i++; continue; }
        j++;
        while (j < len && (body[j] == ' ' || body[j] == '\t')) j++;
        if (j >= len || body[j] != '"') return -2;   /* 不是字符串字段 */

        j++;
        while (j < len) {
            unsigned char c = (unsigned char)body[j];
            if (c == '"') {
                out[o] = '\0';
                return 0;
            }
            if (c == '\\') {
                if (j + 1 >= len) return -3;
                if (body[j + 1] == 'u') {
                    unsigned cp;
                    if (j + 5 >= len || hex4(body + j + 2, &cp) != 0) return -3;
                    /* ACK 里的字段都是 ASCII；非 ASCII 一律视为异常，不猜 */
                    if (cp > 0x7F) return -4;
                    if (o + 1 >= outcap) return -5;
                    out[o++] = (char)cp;
                    j += 6;
                    continue;
                }
                if (o + 1 >= outcap) return -5;
                switch (body[j + 1]) {
                case '"':  out[o++] = '"';  break;
                case '\\': out[o++] = '\\'; break;
                case '/':  out[o++] = '/';  break;
                case 'n':  out[o++] = '\n'; break;
                case 'r':  out[o++] = '\r'; break;
                case 't':  out[o++] = '\t'; break;
                default:   return -3;
                }
                j += 2;
                continue;
            }
            if (o + 1 >= outcap) return -5;
            out[o++] = (char)c;
            j++;
        }
        return -3;
    }
    return -6;   /* 字段不存在 */
}

int tg_utf8_ok(const char *s, size_t len)
{
    const unsigned char *p = (const unsigned char *)s;
    size_t i = 0;

    while (i < len) {
        unsigned char c = p[i];
        uint32_t cp;
        size_t need;
        size_t k;

        if (c < 0x80) { i++; continue; }
        if ((c & 0xE0) == 0xC0) { need = 1; cp = (uint32_t)(c & 0x1F); }
        else if ((c & 0xF0) == 0xE0) { need = 2; cp = (uint32_t)(c & 0x0F); }
        else if ((c & 0xF8) == 0xF0) { need = 3; cp = (uint32_t)(c & 0x07); }
        else return -1;

        if (i + need >= len) return -1;   /* 截断序列：续字节不够 */

        for (k = 1; k <= need; k++) {
            unsigned char cc = p[i + k];
            if ((cc & 0xC0) != 0x80) return -1;
            cp = (cp << 6) | (uint32_t)(cc & 0x3F);
        }

        /* 超长编码 */
        if (need == 1 && cp < 0x80) return -1;
        if (need == 2 && cp < 0x800) return -1;
        if (need == 3 && cp < 0x10000) return -1;
        /* 代理区 */
        if (cp >= 0xD800 && cp <= 0xDFFF) return -1;
        /* 超出 Unicode 范围 */
        if (cp > 0x10FFFF) return -1;

        i += need + 1;
    }
    return 0;
}
