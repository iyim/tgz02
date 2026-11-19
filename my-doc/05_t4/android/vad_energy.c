/*
 * vad_energy.c -- T4-01 能量 VAD 实现（见 vad_energy.h 的状态机与阈值说明）
 *
 * 设计约束（来自任务书）：
 *   - 每帧 640 个 int16 = 40 ms @16 kHz；
 *   - "PCM 非零"不等于语音：必须过能量阈值 + 连续帧确认；
 *   - 噪声底只在非语音状态更新；
 *   - 所有时间参数从毫秒换算成帧数，帧长必须整除毫秒（frame_ms 为整数）；
 *   - 不用发送端 ts_us 做定时/切片，只按到达顺序逐帧处理；
 *   - 本文件不碰 socket、文件、线程，纯函数式状态机，便于单元测试。
 */
#include "vad_energy.h"

#include <math.h>
#include <stdio.h>
#include <string.h>

/* ---------------- 小工具 ---------------- */
static int ms_to_frames(int ms, int frame_ms, int min_frames)
{
    int n;
    if (frame_ms <= 0) return min_frames;
    n = (ms + frame_ms - 1) / frame_ms;          /* 向上取整：宁可多一帧 */
    if (n < min_frames) n = min_frames;
    return n;
}

double vad_frame_rms(const int16_t *samples, int n)
{
    double sum = 0.0;
    int i;
    if (samples == NULL || n <= 0) return 0.0;
    for (i = 0; i < n; i++) {
        double x = (double)samples[i];
        sum += x * x;
    }
    return sqrt(sum / (double)n);
}

double vad_start_threshold(const vad_t *v)
{
    double t;
    if (v == NULL) return 0.0;
    t = v->noise_rms * v->cfg.start_ratio;
    return t > v->cfg.min_start_rms ? t : v->cfg.min_start_rms;
}

double vad_end_threshold(const vad_t *v)
{
    return vad_start_threshold(v) * v->cfg.end_ratio;
}

double vad_noise_floor(const vad_t *v)
{
    return v == NULL ? 0.0 : v->noise_rms;
}

const char *vad_end_reason_name(vad_end_reason r)
{
    switch (r) {
    case VAD_END_SILENCE:      return "silence";
    case VAD_END_MAX_DURATION: return "max_duration";
    case VAD_END_SHUTDOWN:     return "shutdown";
    default:                   return "unknown";
    }
}

const char *vad_state_name(vad_state s)
{
    switch (s) {
    case VAD_STATE_CALIBRATING: return "CALIBRATING";
    case VAD_STATE_IDLE:        return "IDLE";
    case VAD_STATE_SPEECH:      return "SPEECH";
    default:                    return "UNKNOWN";
    }
}

/* ---------------- 配置校验 ---------------- */
int vad_config_validate(const vad_config *cfg, char *err, size_t errlen)
{
    int frame_ms;

    if (err && errlen) err[0] = '\0';
#define FAIL(msg) do { if (err && errlen) snprintf(err, errlen, "%s", (msg)); return -1; } while (0)

    if (cfg == NULL) FAIL("config is NULL");
    if (cfg->sample_rate <= 0 || cfg->sample_rate > 192000)
        FAIL("sample_rate out of range (1..192000)");
    if (cfg->frame_samples <= 0 || cfg->frame_samples > VAD_MAX_FRAME_SAMPLES)
        FAIL("frame_samples out of range (1..1024)");
    if ((cfg->frame_samples * 1000) % cfg->sample_rate != 0)
        FAIL("frame_samples/sample_rate is not a whole number of ms");
    frame_ms = (cfg->frame_samples * 1000) / cfg->sample_rate;
    if (frame_ms < 10 || frame_ms > 100)
        FAIL("frame duration must be 10..100 ms");
    if (!(cfg->min_start_rms > 0.0) || cfg->min_start_rms >= 32768.0)
        FAIL("min_start_rms must be in (0, 32768)");
    if (!(cfg->start_ratio > 0.0) || cfg->start_ratio > 100.0)
        FAIL("start_ratio must be in (0, 100]");
    if (!(cfg->end_ratio > 0.0) || cfg->end_ratio >= 1.0)
        FAIL("end_ratio must be in (0, 1)");
    if (cfg->calibration_ms < 0 || cfg->calibration_ms > 60000)
        FAIL("calibration_ms must be in [0, 60000]");
    if (cfg->start_frames < 1 || cfg->start_frames > 100)
        FAIL("start_frames must be in [1, 100]");
    if (cfg->hangover_ms < 0 || cfg->hangover_ms > 60000)
        FAIL("hangover_ms must be in [0, 60000]");
    if (cfg->pre_roll_ms < 0 || cfg->pre_roll_ms > VAD_MAX_PREROLL_FRAMES * frame_ms)
        FAIL("pre_roll_ms exceeds the pre-roll ring capacity");
    if (cfg->max_segment_ms < 2 * frame_ms || cfg->max_segment_ms > 600000)
        FAIL("max_segment_ms must be >= 2 frames and <= 600000");
    if (!(cfg->noise_alpha > 0.0) || cfg->noise_alpha > 1.0)
        FAIL("noise_alpha must be in (0, 1]");
    return 0;
#undef FAIL
}

/* ---------------- 初始化 ---------------- */
int vad_init(vad_t *v, const vad_config *cfg)
{
    char err[128];
    int frame_ms;

    if (v == NULL) return -1;
    memset(v, 0, sizeof(*v));
    if (vad_config_validate(cfg, err, sizeof(err)) != 0) {
        v->cfg_ok = 0;
        v->state = VAD_STATE_IDLE;
        return -1;
    }

    v->cfg = *cfg;
    frame_ms = (cfg->frame_samples * 1000) / cfg->sample_rate;
    v->frame_ms = frame_ms;
    v->calib_frames_needed = (cfg->calibration_ms > 0)
        ? ms_to_frames(cfg->calibration_ms, frame_ms, 1) : 0;
    v->start_frames_needed = cfg->start_frames;
    v->hangover_frames_needed = ms_to_frames(cfg->hangover_ms, frame_ms, 1);
    v->pre_roll_frames = (cfg->pre_roll_ms > 0)
        ? ms_to_frames(cfg->pre_roll_ms, frame_ms, 1) : 0;
    if (v->pre_roll_frames > VAD_MAX_PREROLL_FRAMES)
        v->pre_roll_frames = VAD_MAX_PREROLL_FRAMES;
    v->max_segment_frames = ms_to_frames(cfg->max_segment_ms, frame_ms, 2);

    v->pr_head = 0;
    v->pr_count = 0;
    v->state = (v->calib_frames_needed > 0) ? VAD_STATE_CALIBRATING : VAD_STATE_IDLE;
    v->cfg_ok = 1;
    return 0;
}

/* ---------------- pre-roll 环 ---------------- */
static void pr_push(vad_t *v, const int16_t *s, double rms, uint32_t seq, uint64_t ts)
{
    int idx;
    if (v->pre_roll_frames <= 0) { v->pr_count = 0; return; }
    idx = v->pr_head;
    memcpy(v->pre_roll_buf[idx], s, (size_t)v->cfg.frame_samples * sizeof(int16_t));
    v->pre_roll_rms[idx] = (float)rms;
    v->pre_roll_seq[idx] = seq;
    v->pre_roll_ts[idx] = ts;
    v->pr_head = (idx + 1) % v->pre_roll_frames;
    if (v->pr_count < v->pre_roll_frames) v->pr_count++;
}

/* ---------------- 片段开关 ---------------- */
static void vad_close_segment(vad_t *v, const vad_sink *sink, vad_end_reason reason)
{
    double avg = v->seg_frames > 0 ? v->seg_rms_sum / (double)v->seg_frames : 0.0;
    if (!v->seg_active) return;
    if (sink != NULL && sink->on_close != NULL) {
        sink->on_close(sink->ud, v->seg_id, reason, v->seg_frames, avg, v->seg_rms_max,
                       v->seg_start_seq, v->seg_last_seq, v->seg_start_ts, v->seg_last_ts);
    }
    v->seg_active = 0;
    v->segments_closed++;
}

static void vad_open_segment(vad_t *v, const vad_sink *sink,
                             uint32_t seq, uint64_t ts, int replay_pre_roll)
{
    int k, first;

    v->seg_id = ++v->segments_opened;
    v->seg_frames = 0;
    v->seg_rms_sum = 0.0;
    v->seg_rms_max = 0.0;
    v->seg_active = 1;

    if (replay_pre_roll && v->pr_count > 0) {
        first = (v->pr_head - v->pr_count + v->pre_roll_frames) % v->pre_roll_frames;
        v->seg_start_seq = v->pre_roll_seq[first];
        v->seg_start_ts = v->pre_roll_ts[first];
    } else {
        v->seg_start_seq = seq;
        v->seg_start_ts = ts;
    }
    if (sink != NULL && sink->on_open != NULL) {
        sink->on_open(sink->ud, v->seg_id, v->seg_start_seq, v->seg_start_ts);
    }

    if (replay_pre_roll && v->pr_count > 0) {
        for (k = 0; k < v->pr_count; k++) {
            int idx = (v->pr_head - v->pr_count + k + v->pre_roll_frames) % v->pre_roll_frames;
            double r = (double)v->pre_roll_rms[idx];
            if (sink != NULL && sink->on_frame != NULL) {
                sink->on_frame(sink->ud, v->pre_roll_buf[idx], v->cfg.frame_samples,
                               v->pre_roll_seq[idx], v->pre_roll_ts[idx], r);
            }
            v->seg_frames++;
            v->seg_rms_sum += r;
            if (r > v->seg_rms_max) v->seg_rms_max = r;
            v->seg_last_seq = v->pre_roll_seq[idx];
            v->seg_last_ts = v->pre_roll_ts[idx];
        }
        v->pr_count = 0;
    }

    v->state = VAD_STATE_SPEECH;
    v->above_count = 0;
    v->below_count = 0;
}

/* ---------------- 主入口 ---------------- */
int vad_feed(vad_t *v, const int16_t *samples, int n,
             uint32_t seq, uint64_t ts_us, const vad_sink *sink)
{
    double rms, start_thr, end_thr;

    if (v == NULL) return -1;
    if (!v->cfg_ok) { v->frames_dropped_invalid++; return -1; }
    if (samples == NULL || n != v->cfg.frame_samples || n <= 0 || n > VAD_MAX_FRAME_SAMPLES) {
        v->frames_dropped_invalid++;
        return -1;
    }

    rms = vad_frame_rms(samples, n);
    v->frames_seen++;

    /* 每帧都进 pre-roll（含 CALIBRATING / SPEECH），保证下一段有句首历史 */
    pr_push(v, samples, rms, seq, ts_us);

    if (v->state == VAD_STATE_CALIBRATING) {
        v->calib_sum += rms;
        v->calib_frames_done++;
        if (v->calib_frames_done >= v->calib_frames_needed) {
            v->noise_rms = v->calib_sum / (double)v->calib_frames_done;
            v->state = VAD_STATE_IDLE;
            v->above_count = 0;
        }
        return 0;
    }

    start_thr = vad_start_threshold(v);
    end_thr = vad_end_threshold(v);

    if (v->state == VAD_STATE_IDLE) {
        if (rms >= start_thr) {
            v->above_count++;
        } else {
            v->above_count = 0;
            /* 噪声底只在非语音帧上更新：语音期间冻结，避免把语音学成噪声 */
            v->noise_rms = (1.0 - v->cfg.noise_alpha) * v->noise_rms
                         + v->cfg.noise_alpha * rms;
        }
        if (v->above_count >= v->start_frames_needed) {
            int replayed = (v->pr_count > 0);
            vad_open_segment(v, sink, seq, ts_us, 1);   /* 补写 pre-roll */
            if (!replayed) {
                /* pre_roll_ms = 0：没有历史帧可补写，当前帧必须自己写进片段 */
                if (sink != NULL && sink->on_frame != NULL) {
                    sink->on_frame(sink->ud, samples, n, seq, ts_us, rms);
                }
                v->seg_frames++;
                v->seg_rms_sum += rms;
                if (rms > v->seg_rms_max) v->seg_rms_max = rms;
                v->seg_last_seq = seq;
                v->seg_last_ts = ts_us;
            }
            v->speech_frames++;                          /* 当前帧已写入片段 */
        }
        return 0;
    }

    /* SPEECH */
    v->speech_frames++;

    /* 最大片段时长：先关旧片段再开新片段，当前帧只写进新片段（不重复） */
    if (v->seg_frames >= v->max_segment_frames) {
        vad_close_segment(v, sink, VAD_END_MAX_DURATION);
        vad_open_segment(v, sink, seq, ts_us, 0);
    }

    if (sink != NULL && sink->on_frame != NULL) {
        sink->on_frame(sink->ud, samples, n, seq, ts_us, rms);
    }
    v->seg_frames++;
    v->seg_rms_sum += rms;
    if (rms > v->seg_rms_max) v->seg_rms_max = rms;
    v->seg_last_seq = seq;
    v->seg_last_ts = ts_us;

    if (rms >= end_thr) {
        v->below_count = 0;                  /* 迟滞：只要回到结束阈值之上就不算静音 */
    } else {
        v->below_count++;
    }
    if (v->below_count >= v->hangover_frames_needed) {
        vad_close_segment(v, sink, VAD_END_SILENCE);
        v->state = VAD_STATE_IDLE;
        v->below_count = 0;
        v->above_count = 0;
    }
    return 0;
}

int vad_flush(vad_t *v, const vad_sink *sink)
{
    if (v == NULL) return -1;
    if (!v->cfg_ok) return -1;
    if (v->seg_active) {
        vad_close_segment(v, sink, VAD_END_SHUTDOWN);
        v->state = VAD_STATE_IDLE;
        v->below_count = 0;
        v->above_count = 0;
    }
    v->pr_count = 0;
    return 0;
}
