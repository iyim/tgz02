/*
 * vad_energy.h -- T4-01 轻量 RMS 能量 VAD（纯 C，无 Android / Java 依赖）
 *
 * 定位：第一轮基线 VAD，用来把连续 PCM 切成"可能是语音"的片段。
 *       它是可解释的阈值 + 迟滞 + hangover 状态机，**不是**产品级语音检测器，
 *       也不判断内容是否为语音；准确率必须由真机数据再调。
 *
 * 状态机：
 *
 *   CALIBRATING --(攒够 calibration_ms)--> IDLE
 *   IDLE        --(连续 start_frames 帧 rms >= start_thr)--> SPEECH
 *   SPEECH      --(连续 hangover_ms 帧 rms <  end_thr)--> IDLE
 *   SPEECH      --(片段达到 max_segment_ms)--> 关闭并（若仍在说话）立刻开新片段
 *
 * 阈值：
 *   start_thr = max(min_start_rms, noise_rms * start_ratio)
 *   end_thr   = start_thr * end_ratio
 *
 * 噪声底：只在 CALIBRATING（求均值）与 IDLE 的非语音帧上更新（指数平滑），
 *         SPEECH 期间冻结，避免把语音学成噪声。
 *
 * 片段数据由 vad_sink 回调送出（打开 / 写帧 / 关闭），VAD 本身不碰文件。
 * pre-roll 环形缓存由 VAD 持有：进入 SPEECH 时把缓存里的历史帧按时间顺序补写，
 * 避免切掉句首。
 */
#ifndef TGZ2_VAD_ENERGY_H
#define TGZ2_VAD_ENERGY_H

#include <stddef.h>
#include <stdint.h>

/* 上限：pre-roll 最多 1600 ms（40 帧），帧最多 1024 样本 */
#define VAD_MAX_PREROLL_FRAMES 40
#define VAD_MAX_FRAME_SAMPLES  1024

typedef struct {
    int    sample_rate;      /* 16000 */
    int    frame_samples;    /* 640（40 ms @16 kHz） */
    double min_start_rms;    /* 180：起始 RMS 下限 */
    double start_ratio;      /* 3.0：起始阈值 = max(min_start_rms, noise*ratio) */
    double end_ratio;        /* 0.6：结束阈值 = 起始阈值 * ratio */
    int    calibration_ms;   /* 1000：初始噪声校准窗口 */
    int    start_frames;     /* 2：连续多少帧超过起始阈值才算开始 */
    int    hangover_ms;      /* 600：连续多久低于结束阈值才算结束 */
    int    pre_roll_ms;      /* 200：进入语音时补写的历史时长 */
    int    max_segment_ms;   /* 15000：单片段最长时长 */
    double noise_alpha;      /* 0.05：噪声底平滑系数（仅非语音帧） */
} vad_config;

typedef enum {
    VAD_END_SILENCE = 0,        /* 连续静音达到 hangover */
    VAD_END_MAX_DURATION = 1,   /* 达到最大片段时长，翻滚分段 */
    VAD_END_SHUTDOWN = 2        /* 进程退出时强制收尾 */
} vad_end_reason;

typedef enum {
    VAD_STATE_CALIBRATING = 0,
    VAD_STATE_IDLE = 1,
    VAD_STATE_SPEECH = 2
} vad_state;

typedef struct {
    void *ud;
    /* 打开一个新片段（segment_id 从 1 递增；start_seq/ts 取片段第一帧） */
    void (*on_open)(void *ud, long segment_id, uint32_t start_seq, uint64_t start_ts_us);
    /* 写一帧（pre-roll 补写与实时帧都走这里，按时间顺序） */
    void (*on_frame)(void *ud, const int16_t *samples, int n,
                     uint32_t seq, uint64_t ts_us, double rms);
    /* 关闭片段 */
    void (*on_close)(void *ud, long segment_id, vad_end_reason reason, long frame_count,
                     double rms_avg, double rms_max,
                     uint32_t start_seq, uint32_t end_seq,
                     uint64_t start_ts_us, uint64_t end_ts_us);
} vad_sink;

typedef struct {
    vad_config cfg;
    vad_state  state;
    int        cfg_ok;                /* 0 = 配置非法 / 未初始化，此时 vad_feed 直接返回 -1 */
    int        frame_ms;              /* 由 frame_samples / sample_rate 推出 */
    int        calib_frames_needed;
    int        calib_frames_done;
    int        start_frames_needed;
    int        hangover_frames_needed;
    int        pre_roll_frames;       /* 实际生效的 pre-roll 帧数（<= VAD_MAX_PREROLL_FRAMES） */
    int        max_segment_frames;
    double     noise_rms;
    double     calib_sum;             /* 校准窗口内 RMS 累加 */

    int        above_count;           /* IDLE：连续超过起始阈值的帧数 */
    int        below_count;           /* SPEECH：连续低于结束阈值的帧数 */

    /* pre-roll 环形缓存 */
    int16_t  pre_roll_buf[VAD_MAX_PREROLL_FRAMES][VAD_MAX_FRAME_SAMPLES];
    float    pre_roll_rms[VAD_MAX_PREROLL_FRAMES];
    uint32_t pre_roll_seq[VAD_MAX_PREROLL_FRAMES];
    uint64_t pre_roll_ts[VAD_MAX_PREROLL_FRAMES];
    int      pr_head;                 /* 下一个写入位置 */
    int      pr_count;                /* 已存帧数（<= pre_roll_frames） */

    /* 当前片段 */
    int      seg_active;
    long     seg_id;
    long     seg_frames;
    double   seg_rms_sum;
    double   seg_rms_max;
    uint32_t seg_start_seq;
    uint32_t seg_last_seq;
    uint64_t seg_start_ts;
    uint64_t seg_last_ts;

    /* 统计 */
    long     frames_seen;
    long     speech_frames;           /* 处于 SPEECH 的帧（含 hangover 帧） */
    long     segments_opened;
    long     segments_closed;
    long     frames_dropped_invalid;
} vad_t;

/* 校验配置；出错时把原因写进 err（可为 NULL），返回 0 = 合法，-1 = 非法 */
int vad_config_validate(const vad_config *cfg, char *err, size_t errlen);

/* 用配置初始化；返回 0 = 成功，-1 = 配置非法（对象仍处于可安全调用的空状态） */
int vad_init(vad_t *v, const vad_config *cfg);

/* 送入一帧。返回 0 = 正常；-1 = 参数非法（帧长不匹配 / 空指针 / 未初始化） */
int vad_feed(vad_t *v, const int16_t *samples, int n,
             uint32_t seq, uint64_t ts_us, const vad_sink *sink);

/* 退出时收尾：若正在说话，以 VAD_END_SHUTDOWN 关闭当前片段。返回 0 */
int vad_flush(vad_t *v, const vad_sink *sink);

/* 诊断访问器（单元测试与日志用） */
double vad_start_threshold(const vad_t *v);
double vad_end_threshold(const vad_t *v);
double vad_noise_floor(const vad_t *v);

/* 帧 RMS（平方和均值开方），供调用方复用同一口径 */
double vad_frame_rms(const int16_t *samples, int n);

const char *vad_end_reason_name(vad_end_reason r);
const char *vad_state_name(vad_state s);

#endif /* TGZ2_VAD_ENERGY_H */
