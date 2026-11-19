/*
 * t5_wav.c -- 见 t5_wav.h
 */
#include "t5_wav.h"
#include "t5_util.h"

#include <stdio.h>
#include <string.h>

/* RIFF 头固定 12 字节： "RIFF" <size> "WAVE" */
#define T5_RIFF_HDR 12u
#define T5_CHUNK_HDR 8u

static uint32_t rd_u32(const unsigned char *p)
{
    return (uint32_t)p[0] | ((uint32_t)p[1] << 8) |
           ((uint32_t)p[2] << 16) | ((uint32_t)p[3] << 24);
}

static uint16_t rd_u16(const unsigned char *p)
{
    return (uint16_t)((uint16_t)p[0] | ((uint16_t)p[1] << 8));
}

static void set_err(char *err, size_t errlen, const char *msg)
{
    if (err == NULL || errlen == 0) return;
    snprintf(err, errlen, "%s", msg);
}

const char *t5_wav_check_name(t5_wav_check c)
{
    switch (c) {
    case T5_WAV_OK: return "ok";
    case T5_WAV_INCOMPLETE: return "incomplete";
    case T5_WAV_INVALID: return "invalid";
    case T5_WAV_MISSING: return "missing";
    default: return "?";
    }
}

t5_wav_check t5_wav_inspect(const char *path, t5_wav_info *info,
                            char *err, size_t errlen)
{
    unsigned char buf[T5_RIFF_HDR + T5_CHUNK_HDR + 64];
    long long fsize;
    long got;
    size_t off;
    int have_fmt = 0, have_data = 0;
    uint32_t riff_size = 0, data_len = 0, data_off = 0;
    uint16_t audio_format = 0, channels = 0, bits = 0, block_align = 0;
    uint32_t rate = 0, byte_rate = 0;

    if (path == NULL) { set_err(err, errlen, "null-path"); return T5_WAV_MISSING; }
    if (info != NULL) memset(info, 0, sizeof(*info));

    fsize = t5_file_size(path);
    if (fsize < 0) { set_err(err, errlen, "stat-failed"); return T5_WAV_MISSING; }
    if (fsize == 0) { set_err(err, errlen, "empty-file"); return T5_WAV_INCOMPLETE; }
    if (fsize < (long long)(T5_RIFF_HDR + T5_CHUNK_HDR + 16)) {
        set_err(err, errlen, "short-header");
        return T5_WAV_INCOMPLETE;
    }

    got = t5_read_at(path, 0, buf, sizeof(buf));
    if (got < (long)(T5_RIFF_HDR + T5_CHUNK_HDR + 16)) {
        set_err(err, errlen, "short-read");
        return T5_WAV_INCOMPLETE;
    }

    if (memcmp(buf, "RIFF", 4) != 0) { set_err(err, errlen, "bad-magic:RIFF"); return T5_WAV_INVALID; }
    if (memcmp(buf + 8, "WAVE", 4) != 0) { set_err(err, errlen, "bad-magic:WAVE"); return T5_WAV_INVALID; }
    riff_size = rd_u32(buf + 4);

    /* 按 chunk 顺序找 fmt 与 data（T4 写的是标准 44 字节布局，这里仍按规范遍历） */
    off = T5_RIFF_HDR;
    while (off + T5_CHUNK_HDR <= (size_t)got) {
        const unsigned char *c = buf + off;
        uint32_t clen = rd_u32(c + 4);

        if (memcmp(c, "fmt ", 4) == 0) {
            if (clen < 16 || off + T5_CHUNK_HDR + 16 > (size_t)got) {
                set_err(err, errlen, "fmt-too-short");
                return T5_WAV_INVALID;
            }
            audio_format = rd_u16(c + 8);
            channels     = rd_u16(c + 10);
            rate         = rd_u32(c + 12);
            byte_rate    = rd_u32(c + 16);
            block_align  = rd_u16(c + 20);
            bits         = rd_u16(c + 22);
            have_fmt = 1;
        } else if (memcmp(c, "data", 4) == 0) {
            data_len = clen;
            data_off = (uint32_t)(off + T5_CHUNK_HDR);
            have_data = 1;
            break;
        }
        off += T5_CHUNK_HDR + clen + (clen & 1u);
    }

    if (!have_fmt) { set_err(err, errlen, "no-fmt-chunk"); return T5_WAV_INVALID; }
    if (!have_data) { set_err(err, errlen, "no-data-chunk"); return T5_WAV_INCOMPLETE; }

    /* ---- 先判"写完没有"（T4 关闭前 data_len 是 0） ---- */
    if (data_len == 0) {
        set_err(err, errlen, "data-len-zero:probably-open");
        return T5_WAV_INCOMPLETE;
    }
    if (fsize < (long long)data_off + (long long)data_len) {
        set_err(err, errlen, "data-truncated");
        return T5_WAV_INCOMPLETE;
    }
    if (riff_size + 8u != (uint32_t)fsize) {
        char msg[96];
        snprintf(msg, sizeof(msg), "riff-size-mismatch:riff=%u,file=%lld",
                 (unsigned)riff_size, fsize);
        set_err(err, errlen, msg);
        return T5_WAV_INVALID;
    }

    /* ---- 再判格式（任务书要求 16000/单声道/16-bit PCM） ---- */
    if (audio_format != 1) { set_err(err, errlen, "not-pcm"); return T5_WAV_INVALID; }
    if (channels != 1) { set_err(err, errlen, "not-mono"); return T5_WAV_INVALID; }
    if (rate != 16000u) { set_err(err, errlen, "not-16000hz"); return T5_WAV_INVALID; }
    if (bits != 16) { set_err(err, errlen, "not-16bit"); return T5_WAV_INVALID; }
    if (block_align != 2) { set_err(err, errlen, "bad-block-align"); return T5_WAV_INVALID; }
    if (byte_rate != 32000u) { set_err(err, errlen, "bad-byte-rate"); return T5_WAV_INVALID; }
    if ((data_len & 1u) != 0) { set_err(err, errlen, "odd-data-len"); return T5_WAV_INVALID; }
    if (data_len < T5_WAV_MIN_DATA_BYTES) { set_err(err, errlen, "data-too-short"); return T5_WAV_INVALID; }

    if (info != NULL) {
        snprintf(info->path, sizeof(info->path), "%s", path);
        snprintf(info->name, sizeof(info->name), "%s", t5_base_name(path));
        info->file_size  = fsize;
        info->data_bytes = data_len;
        info->sample_rate = rate;
        info->channels = channels;
        info->bits = bits;
        info->block_align = block_align;
    }
    if (err != NULL && errlen > 0) err[0] = '\0';
    return T5_WAV_OK;
}
