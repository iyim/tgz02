/*
 * rx_core.c -- 见 rx_core.h（无 socket / 无线程，可在 Windows/GCC 下单测）
 */
#include "rx_core.h"

#include <stdlib.h>
#include <string.h>

/* ---------------- 统计 / 校验 ---------------- */
void rx_stats_init(rx_stats *st)
{
    if (st == NULL) return;
    memset(st, 0, sizeof(*st));
}

const char *rx_result_name(rx_result r)
{
    switch (r) {
    case RX_OK:        return "ok";
    case RX_BAD_LEN:   return "bad_len";
    case RX_BAD_MAGIC: return "bad_magic";
    case RX_BAD_VER:   return "bad_ver";
    case RX_BAD_HDR:   return "bad_hdr";
    case RX_BAD_PARAM: return "bad_param";
    case RX_BAD_CRC:   return "bad_crc";
    default:           return "unknown";
    }
}

rx_result rx_classify(const uint8_t *buf, int n, rx_stats *st, tgz2_hdr *hdr)
{
    tgz2_hdr h;
    int rc;

    if (st == NULL) return RX_BAD_LEN;
    st->received++;

    /* DGRAM：一次 recv 必须正好是一整帧 */
    if (buf == NULL || n != TGZ2_MSG) {
        st->bad_len++;
        return RX_BAD_LEN;
    }

    rc = tgz2_unpack(buf, &h);
    if (rc != 0) {
        switch (rc) {
        case -1: st->bad_magic++; return RX_BAD_MAGIC;
        case -2: st->bad_ver++;   return RX_BAD_VER;
        case -3: st->bad_hdr++;   return RX_BAD_HDR;
        case -4: st->bad_len++;   return RX_BAD_LEN;
        case -8: st->bad_crc++;   return RX_BAD_CRC;
        default: st->bad_param++; return RX_BAD_PARAM;   /* -5 rate / -6 ch / -7 bits */
        }
    }

    /* epoch：发送端重启 => 新会话，必须重置序号连续性判断，不能算成大量丢帧 */
    if (!st->have_epoch) {
        st->epoch = h.epoch;
        st->have_epoch = 1;
    } else if (h.epoch != st->epoch) {
        st->epoch = h.epoch;
        st->epoch_switches++;
        st->have_seq = 0;
    }

    if (!st->have_seq) {
        st->seq_first = h.seq;
        st->seq_last = h.seq;
        st->have_seq = 1;
    } else {
        /* 无符号差：天然处理 uint32 回绕（0xFFFFFFFF -> 0 的差是 1）。
         * 只有"向前"的帧才推进高水位：
         *   d == 0        重复帧 -> duplicate，不改基准
         *   1 <= d < 2^31 前进    -> missing += d-1，seq_last 前移
         *   d >= 2^31     回退    -> reorder，**不**把基准倒退（否则后续正常帧会被重复计缺口） */
        uint32_t d = h.seq - st->seq_last;
        if (d == 0) {
            st->duplicate++;
        } else if (d < 0x80000000u) {
            if (d > 1) st->missing += (uint64_t)(d - 1);
            st->seq_last = h.seq;
        } else {
            st->reorder++;
        }
    }
    st->accepted++;

    if (hdr != NULL) *hdr = h;
    return RX_OK;
}

void rx_payload_to_samples(const uint8_t *payload, int16_t *out, int spf)
{
    if (payload == NULL || out == NULL || spf <= 0) return;
    memcpy(out, payload, (size_t)spf * sizeof(int16_t));
}

/* ---------------- 有界队列 ---------------- */
int rx_queue_init(rx_queue *q, int cap)
{
    if (q == NULL) return -1;
    memset(q, 0, sizeof(*q));
    if (cap <= 0 || cap > T4_QUEUE_CAP_MAX) cap = T4_QUEUE_CAP_DEFAULT;
    q->slots = (rx_frame *)malloc((size_t)cap * sizeof(rx_frame));
    if (q->slots == NULL) return -1;
    q->cap = cap;
    return 0;
}

void rx_queue_free(rx_queue *q)
{
    if (q == NULL) return;
    free(q->slots);
    q->slots = NULL;
    q->cap = 0;
    q->head = 0;
    q->tail = 0;
    q->count = 0;
}

int rx_queue_push(rx_queue *q, const rx_frame *f)
{
    if (q == NULL || f == NULL || q->slots == NULL) return 0;
    if (q->count >= q->cap) {
        q->drops++;                 /* 明确丢弃新帧，绝不静默覆盖未处理帧 */
        return 0;
    }
    q->slots[q->tail] = *f;
    q->tail = (q->tail + 1) % q->cap;
    q->count++;
    if ((uint64_t)q->count > q->high_watermark) q->high_watermark = (uint64_t)q->count;
    return 1;
}

int rx_queue_pop(rx_queue *q, rx_frame *out)
{
    if (q == NULL || out == NULL || q->slots == NULL || q->count <= 0) return 0;
    *out = q->slots[q->head];
    q->head = (q->head + 1) % q->cap;
    q->count--;
    return 1;
}

int rx_queue_count(const rx_queue *q)
{
    return q == NULL ? 0 : q->count;
}

/* ---------------- JSON ---------------- */
void json_write_string(FILE *f, const char *s)
{
    const unsigned char *p = (const unsigned char *)s;
    if (f == NULL) return;
    fputc('"', f);
    if (s != NULL) {
        for (; *p; p++) {
            switch (*p) {
            case '"':  fputs("\\\"", f); break;
            case '\\': fputs("\\\\", f); break;
            case '\b': fputs("\\b", f); break;
            case '\f': fputs("\\f", f); break;
            case '\n': fputs("\\n", f); break;
            case '\r': fputs("\\r", f); break;
            case '\t': fputs("\\t", f); break;
            default:
                if (*p < 0x20) fprintf(f, "\\u%04x", (unsigned)*p);
                else fputc((int)*p, f);
                break;
            }
        }
    }
    fputc('"', f);
}

void json_write_string_or_null(FILE *f, const char *s)
{
    if (f == NULL) return;
    if (s != NULL) json_write_string(f, s);
    else fputs("null", f);
}

void rx_write_summary(FILE *f, const rx_stats *st, const rx_queue *q,
                      uint64_t processed,
                      uint64_t vad_speech_frames, uint64_t segments,
                      uint64_t segment_write_errors, double dur_s,
                      double noise_rms, int rcvbuf_req, int rcvbuf_eff)
{
    if (f == NULL || st == NULL) return;
    fputs("{\"type\":\"SUMMARY\",\"received\":", f);
    fprintf(f, "%llu", (unsigned long long)st->received);
    fprintf(f, ",\"accepted\":%llu", (unsigned long long)st->accepted);
    fprintf(f, ",\"processed\":%llu", (unsigned long long)processed);
    fprintf(f, ",\"bad_len\":%llu", (unsigned long long)st->bad_len);
    fprintf(f, ",\"bad_crc\":%llu", (unsigned long long)st->bad_crc);
    fprintf(f, ",\"missing\":%llu", (unsigned long long)st->missing);
    fprintf(f, ",\"duplicate\":%llu", (unsigned long long)st->duplicate);
    fprintf(f, ",\"reorder\":%llu", (unsigned long long)st->reorder);
    fprintf(f, ",\"bad_magic\":%llu", (unsigned long long)st->bad_magic);
    fprintf(f, ",\"bad_ver\":%llu", (unsigned long long)st->bad_ver);
    fprintf(f, ",\"bad_hdr\":%llu", (unsigned long long)st->bad_hdr);
    fprintf(f, ",\"bad_param\":%llu", (unsigned long long)st->bad_param);
    fprintf(f, ",\"epoch_switches\":%llu", (unsigned long long)st->epoch_switches);
    fprintf(f, ",\"epoch\":%u", st->epoch);
    fprintf(f, ",\"seq_first\":%u", st->seq_first);
    fprintf(f, ",\"seq_last\":%u", st->seq_last);
    fprintf(f, ",\"queue_drop\":%llu", (unsigned long long)(q ? q->drops : 0));
    fprintf(f, ",\"queue_high_watermark\":%llu", (unsigned long long)(q ? q->high_watermark : 0));
    fprintf(f, ",\"queue_cap\":%d", q ? q->cap : 0);
    fprintf(f, ",\"queue_depth\":%d", q ? q->count : 0);
    fprintf(f, ",\"vad_speech_frames\":%llu", (unsigned long long)vad_speech_frames);
    fprintf(f, ",\"segments\":%llu", (unsigned long long)segments);
    fprintf(f, ",\"segment_write_errors\":%llu", (unsigned long long)segment_write_errors);
    fprintf(f, ",\"noise_rms\":%.2f", noise_rms);
    fprintf(f, ",\"dur_s\":%.3f", dur_s);
    fprintf(f, ",\"rcvbuf_req\":%d,\"rcvbuf_eff\":%d", rcvbuf_req, rcvbuf_eff);
    fputs("}\n", f);
}

/* ---------------- WAV ---------------- */
static void put_u32le(uint8_t *p, uint32_t v)
{
    p[0] = (uint8_t)(v & 0xFF);
    p[1] = (uint8_t)((v >> 8) & 0xFF);
    p[2] = (uint8_t)((v >> 16) & 0xFF);
    p[3] = (uint8_t)((v >> 24) & 0xFF);
}

static void put_u16le(uint8_t *p, uint16_t v)
{
    p[0] = (uint8_t)(v & 0xFF);
    p[1] = (uint8_t)((v >> 8) & 0xFF);
}

int t4_wav_open(t4_wav *w, const char *dir, uint32_t run_id, long seg_id,
                uint32_t start_seq, int sample_rate)
{
    uint8_t hdr[44];
    uint32_t byte_rate;
    int n, attempt;

    if (w == NULL || dir == NULL || sample_rate <= 0) return -1;
    memset(w, 0, sizeof(*w));

    /* 文件名里带 run_id（每次进程运行不同），并且**绝不覆盖已有文件**：
     * 万一 run_id/片段号/起始序号撞车，就换一个带 _aN 后缀的名字重试。 */
    w->f = NULL;
    for (attempt = 0; attempt < 1000; attempt++) {
        FILE *probe;
        if (attempt == 0) {
            n = snprintf(w->path, sizeof(w->path), "%s/seg_%08x_%04ld_%u.wav",
                         dir, (unsigned)run_id, seg_id, (unsigned)start_seq);
        } else {
            n = snprintf(w->path, sizeof(w->path), "%s/seg_%08x_%04ld_%u_a%d.wav",
                         dir, (unsigned)run_id, seg_id, (unsigned)start_seq, attempt);
        }
        if (n < 0 || (size_t)n >= sizeof(w->path)) { w->path[0] = '\0'; return -1; }

        probe = fopen(w->path, "rb");          /* 已存在 -> 换名，不覆盖旧录音 */
        if (probe != NULL) {
            fclose(probe);
            continue;
        }
        w->f = fopen(w->path, "wb");
        if (w->f != NULL) break;
        w->path[0] = '\0';                      /* 目录不可写等：按原错误处理 */
        return -1;
    }
    if (w->f == NULL) { w->path[0] = '\0'; return -1; }   /* 1000 次都撞名（不该发生） */

    byte_rate = (uint32_t)sample_rate * 2u;         /* 单声道 16-bit */
    memcpy(hdr + 0, "RIFF", 4);
    put_u32le(hdr + 4, 36u);                        /* 关闭时回填 = 36 + data */
    memcpy(hdr + 8, "WAVE", 4);
    memcpy(hdr + 12, "fmt ", 4);
    put_u32le(hdr + 16, 16u);
    put_u16le(hdr + 20, 1u);                        /* PCM */
    put_u16le(hdr + 22, 1u);                        /* 单声道 */
    put_u32le(hdr + 24, (uint32_t)sample_rate);
    put_u32le(hdr + 28, byte_rate);
    put_u16le(hdr + 32, 2u);                        /* block align */
    put_u16le(hdr + 34, 16u);                       /* bits */
    memcpy(hdr + 36, "data", 4);
    put_u32le(hdr + 40, 0u);                        /* 关闭时回填 */

    if (fwrite(hdr, 1, sizeof(hdr), w->f) != sizeof(hdr)) {
        fclose(w->f);
        w->f = NULL;
        return -1;
    }
    w->data_bytes = 0;
    w->ok = 1;
    return 0;
}

int t4_wav_write(t4_wav *w, const int16_t *samples, int n)
{
    size_t want;

    if (w == NULL || w->f == NULL || !w->ok) return -1;
    if (samples == NULL || n <= 0) return -1;
    want = (size_t)n * sizeof(int16_t);
    if (fwrite(samples, 1, want, w->f) != want) { w->ok = 0; return -1; }
    w->data_bytes += (uint32_t)want;
    return 0;
}

int t4_wav_close(t4_wav *w)
{
    uint8_t b[4];
    int ok = 1;

    if (w == NULL) return -1;
    if (w->f == NULL) return w->ok ? -1 : -1;

    put_u32le(b, 36u + w->data_bytes);
    if (fseek(w->f, 4L, SEEK_SET) != 0 || fwrite(b, 1, 4, w->f) != 4) ok = 0;
    put_u32le(b, w->data_bytes);
    if (fseek(w->f, 40L, SEEK_SET) != 0 || fwrite(b, 1, 4, w->f) != 4) ok = 0;
    if (fflush(w->f) != 0) ok = 0;
    if (fclose(w->f) != 0) ok = 0;
    w->f = NULL;
    if (!ok) w->ok = 0;
    return ok && w->ok ? 0 : -1;
}
