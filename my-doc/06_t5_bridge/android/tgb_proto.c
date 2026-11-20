/*
 * tgb_proto.c -- 见 tgb_proto.h
 */
#include "tgb_proto.h"

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

uint32_t tgb_crc32(const void *data, size_t len)
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

int tgb_hdr_decode(const uint8_t *raw, size_t avail, tgb_hdr *out)
{
    uint32_t magic;
    uint16_t hdr_len;

    if (raw == NULL || out == NULL) return TGB_ERR_SHORT;
    if (avail < 4) return TGB_ERR_SHORT;

    magic = rd_u32(raw);
    if (magic != TGB_MAGIC) return TGB_ERR_MAGIC;
    if (avail < TGB_HDR_LEN) return TGB_ERR_SHORT;

    out->ver = raw[4];
    out->type = raw[5];
    hdr_len = rd_u16(raw + 6);
    out->body_len = rd_u32(raw + 8);

    if (out->ver != TGB_VER_FRAME) return TGB_ERR_FRAME_VER;
    if (hdr_len != TGB_HDR_LEN) return TGB_ERR_HDRLEN;
    if (out->type != TGB_TYPE_REQ) return TGB_ERR_TYPE;
    if (out->body_len > TGB_MAX_BODY) return TGB_ERR_OVERSIZE;
    return TGB_FRAME_OK;
}

int tgb_body_check(const uint8_t *raw, const tgb_hdr *h, size_t avail)
{
    uint32_t crc;

    if (raw == NULL || h == NULL) return TGB_ERR_SHORT;
    if (h->body_len > TGB_MAX_BODY) return TGB_ERR_OVERSIZE;
    if (avail < (size_t)TGB_HDR_LEN + (size_t)h->body_len) return TGB_ERR_SHORT;

    crc = rd_u32(raw + 12);
    if (crc != tgb_crc32(raw + TGB_HDR_LEN, (size_t)h->body_len)) return TGB_ERR_CRC;
    return TGB_FRAME_OK;
}

int tgb_frame_pack(uint8_t type, const void *body, uint32_t body_len,
                   uint8_t *out, size_t outcap, size_t *outlen)
{
    if (out == NULL || outcap < TGB_HDR_LEN) return -1;
    if (body_len > TGB_MAX_BODY) return -1;
    if (body_len > 0 && body == NULL) return -1;
    if (outcap < (size_t)TGB_HDR_LEN + (size_t)body_len) return -1;

    wr_u32(out + 0, TGB_MAGIC);
    out[4] = (uint8_t)TGB_VER_FRAME;
    out[5] = type;
    wr_u16(out + 6, (uint16_t)TGB_HDR_LEN);
    wr_u32(out + 8, body_len);
    wr_u32(out + 12, tgb_crc32(body, (size_t)body_len));
    if (body_len > 0) memcpy(out + TGB_HDR_LEN, body, (size_t)body_len);

    if (outlen != NULL) *outlen = (size_t)TGB_HDR_LEN + (size_t)body_len;
    return 0;
}

const char *tgb_frame_err_name(int code)
{
    switch (code) {
    case TGB_FRAME_OK:     return "ok";
    case TGB_ERR_SHORT:    return "short_frame";
    case TGB_ERR_MAGIC:    return "bad_magic";
    case TGB_ERR_FRAME_VER:return "bad_frame_version";
    case TGB_ERR_HDRLEN:   return "bad_hdr_len";
    case TGB_ERR_OVERSIZE: return "oversize_frame";
    case TGB_ERR_CRC:      return "bad_crc";
    case TGB_ERR_TYPE:     return "bad_frame_type";
    default:               return "unknown_frame_error";
    }
}
