#include "t5_wav.h"
#include "t5_util.h"

#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <limits.h>

#define T5_RIFF_HDR 12u
#define T5_CHUNK_HDR 8u
#define T5_FMT_MIN 16u

static uint32_t rd_u32(const unsigned char *p)
{
    return (uint32_t)p[0] |
           ((uint32_t)p[1] << 8) |
           ((uint32_t)p[2] << 16) |
           ((uint32_t)p[3] << 24);
}

static uint16_t rd_u16(const unsigned char *p)
{
    return (uint16_t)((uint16_t)p[0] |
                      ((uint16_t)p[1] << 8));
}

static void set_err(char *err, size_t len, const char *msg)
{
    if (err != NULL && len > 0)
        snprintf(err, len, "%s", msg);
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

t5_wav_check t5_wav_inspect(const char *path,
                            t5_wav_info *info,
                            char *err,
                            size_t errlen)
{
    unsigned char hdr[T5_RIFF_HDR];
    unsigned char chunk[T5_CHUNK_HDR];
    unsigned char fmt[T5_FMT_MIN];

    long long fsize;
    uint64_t riff_end;
    uint64_t off;

    uint32_t riff_size;
    uint32_t data_len = 0;
    uint64_t data_off = 0;

    uint16_t audio_format = 0;
    uint16_t channels = 0;
    uint16_t bits = 0;
    uint16_t block_align = 0;
    uint32_t rate = 0;
    uint32_t byte_rate = 0;

    int have_fmt = 0;
    int have_data = 0;

    if (path == NULL) {
        set_err(err, errlen, "null-path");
        return T5_WAV_MISSING;
    }

    if (info != NULL)
        memset(info, 0, sizeof(*info));

    fsize = t5_file_size(path);

    if (fsize < 0) {
        set_err(err, errlen, "stat-failed");
        return T5_WAV_MISSING;
    }

    if (fsize < (long long)(T5_RIFF_HDR + T5_CHUNK_HDR + T5_FMT_MIN)) {
        set_err(err, errlen, "short-header");
        return T5_WAV_INCOMPLETE;
    }

    if (t5_read_at(path, 0, hdr, sizeof(hdr)) != (long)sizeof(hdr)) {
        set_err(err, errlen, "short-read-riff");
        return T5_WAV_INCOMPLETE;
    }

    if (memcmp(hdr, "RIFF", 4) != 0) {
        set_err(err, errlen, "bad-magic:RIFF");
        return T5_WAV_INVALID;
    }

    if (memcmp(hdr + 8, "WAVE", 4) != 0) {
        set_err(err, errlen, "bad-magic:WAVE");
        return T5_WAV_INVALID;
    }

    riff_size = rd_u32(hdr + 4);

    if (riff_size < 4) {
        set_err(err, errlen, "bad-riff-size");
        return T5_WAV_INVALID;
    }

    riff_end = (uint64_t)riff_size + 8u;

    if (riff_end > (uint64_t)fsize) {
        set_err(err, errlen, "riff-truncated");
        return T5_WAV_INCOMPLETE;
    }

    if (riff_end < (uint64_t)fsize) {
        set_err(err, errlen, "riff-size-mismatch");
        return T5_WAV_INVALID;
    }

    off = T5_RIFF_HDR;

    while (off < riff_end) {
        uint32_t clen;
        uint64_t payload_off;
        uint64_t payload_end;
        uint64_t next_off;

        if (riff_end - off < T5_CHUNK_HDR) {
            set_err(err, errlen, "truncated-chunk-header");
            return T5_WAV_INVALID;
        }

        if (off > (uint64_t)LLONG_MAX) {
            set_err(err, errlen, "chunk-offset-overflow");
            return T5_WAV_INVALID;
        }

        if (t5_read_at(path, (long long)off,
                       chunk, sizeof(chunk)) != (long)sizeof(chunk)) {
            set_err(err, errlen, "short-read-chunk");
            return T5_WAV_INCOMPLETE;
        }

        clen = rd_u32(chunk + 4);
        payload_off = off + T5_CHUNK_HDR;

        /* 64 位计算，且先检查剩余长度，避免偏移加法溢出。 */
        if ((uint64_t)clen > riff_end - payload_off) {
            set_err(err, errlen, "chunk-length-out-of-range");
            return T5_WAV_INVALID;
        }

        payload_end = payload_off + (uint64_t)clen;

        if ((uint64_t)(clen & 1u) > riff_end - payload_end) {
            set_err(err, errlen, "chunk-padding-out-of-range");
            return T5_WAV_INVALID;
        }

        next_off = payload_end + (uint64_t)(clen & 1u);

        if (memcmp(chunk, "fmt ", 4) == 0) {
            if (clen < T5_FMT_MIN) {
                set_err(err, errlen, "fmt-too-short");
                return T5_WAV_INVALID;
            }

            if (t5_read_at(path, (long long)payload_off,
                           fmt, sizeof(fmt)) != (long)sizeof(fmt)) {
                set_err(err, errlen, "short-read-fmt");
                return T5_WAV_INCOMPLETE;
            }

            audio_format = rd_u16(fmt);
            channels = rd_u16(fmt + 2);
            rate = rd_u32(fmt + 4);
            byte_rate = rd_u32(fmt + 8);
            block_align = rd_u16(fmt + 12);
            bits = rd_u16(fmt + 14);

            have_fmt = 1;
        } else if (memcmp(chunk, "data", 4) == 0) {
            data_len = clen;
            data_off = payload_off;
            have_data = 1;
        }

        off = next_off;
    }

    if (!have_fmt) {
        set_err(err, errlen, "no-fmt-chunk");
        return T5_WAV_INVALID;
    }

    if (!have_data) {
        set_err(err, errlen, "no-data-chunk");
        return T5_WAV_INCOMPLETE;
    }

    if (data_len == 0) {
        set_err(err, errlen, "data-len-zero:probably-open");
        return T5_WAV_INCOMPLETE;
    }

    if (data_off > (uint64_t)fsize ||
        (uint64_t)data_len > (uint64_t)fsize - data_off) {
        set_err(err, errlen, "data-truncated");
        return T5_WAV_INCOMPLETE;
    }

    if (audio_format != 1) {
        set_err(err, errlen, "not-pcm");
        return T5_WAV_INVALID;
    }

    if (channels != 1) {
        set_err(err, errlen, "not-mono");
        return T5_WAV_INVALID;
    }

    if (rate != 16000u) {
        set_err(err, errlen, "not-16000hz");
        return T5_WAV_INVALID;
    }

    if (bits != 16) {
        set_err(err, errlen, "not-16bit");
        return T5_WAV_INVALID;
    }

    if (block_align != 2) {
        set_err(err, errlen, "bad-block-align");
        return T5_WAV_INVALID;
    }

    if (byte_rate != 32000u) {
        set_err(err, errlen, "bad-byte-rate");
        return T5_WAV_INVALID;
    }

    if ((data_len & 1u) != 0) {
        set_err(err, errlen, "odd-data-len");
        return T5_WAV_INVALID;
    }

    if (data_len < T5_WAV_MIN_DATA_BYTES) {
        set_err(err, errlen, "data-too-short");
        return T5_WAV_INVALID;
    }

    if (info != NULL) {
        snprintf(info->path, sizeof(info->path), "%s", path);
        snprintf(info->name, sizeof(info->name), "%s",
                 t5_base_name(path));

        info->file_size = fsize;
        info->data_bytes = data_len;
        info->sample_rate = rate;
        info->channels = channels;
        info->bits = bits;
        info->block_align = block_align;
    }

    if (err != NULL && errlen > 0)
        err[0] = '\0';

    return T5_WAV_OK;
}
