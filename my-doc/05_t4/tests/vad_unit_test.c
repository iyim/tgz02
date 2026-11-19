/*
 * vad_unit_test.c -- T4-01 能量 VAD 单元测试（纯 C，Windows/GCC 直接可跑）
 *
 *   gcc -O2 -Wall -Wextra -o vad_unit_test vad_unit_test.c ../android/vad_energy.c -lm
 *
 * 覆盖任务书 §5.A 的 10 项：
 *   T1 全零静音不触发        T2 低幅度噪声不触发      T3 连续高能量触发开始
 *   T4 单帧脉冲不触发         T5 短暂停顿不切段        T6 持续静音后结束
 *   T7 pre-roll 帧数正确      T8 最大片段时长保护      T9 噪声底不在 SPEECH 更新
 *   T10 参数边界/异常输入不崩溃
 */
#include "../android/vad_energy.h"

#include <math.h>
#include <stdio.h>
#include <string.h>

static int g_pass = 0, g_fail = 0;
static int16_t g_frame[VAD_MAX_FRAME_SAMPLES];
static vad_t g_vad;                      /* 80 KB+ 的 pre-roll 环放静态区，不进栈 */

static void expect(int cond, const char *name)
{
    if (cond) { g_pass++; printf("  ok   %s\n", name); }
    else { g_fail++; printf("  FAIL %s\n", name); }
}

/* 方波：RMS 精确等于 amp（比正弦更好断言），amp<=32767 */
static void make_frame(int amp)
{
    int i;
    for (i = 0; i < VAD_MAX_FRAME_SAMPLES; i++) {
        g_frame[i] = (i & 1) ? (int16_t)(-amp) : (int16_t)(amp);
    }
}

/* ---- 记录型 sink ---- */
typedef struct {
    int      opens;
    int      closes;
    long     frames_in_seg;      /* 当前片段已收到的帧数 */
    long     total_frames;
    long     last_close_frames;
    int      last_reason;
    uint32_t first_seq_in_seg;
    uint32_t last_seq_in_seg;
    int      open_unknown_segment_guard;
} fake_sink;

static void fs_open(void *ud, long id, uint32_t start_seq, uint64_t start_ts)
{
    fake_sink *fs = (fake_sink *)ud;
    (void)start_ts;
    fs->opens++;
    fs->frames_in_seg = 0;
    fs->first_seq_in_seg = start_seq;
    fs->last_seq_in_seg = start_seq;
    fs->open_unknown_segment_guard = (id > 0);
}

static void fs_frame(void *ud, const int16_t *s, int n, uint32_t seq, uint64_t ts, double rms)
{
    fake_sink *fs = (fake_sink *)ud;
    (void)s; (void)n; (void)ts; (void)rms;
    fs->frames_in_seg++;
    fs->total_frames++;
    fs->last_seq_in_seg = seq;
}

static void fs_close(void *ud, long id, vad_end_reason reason, long frames,
                     double rms_avg, double rms_max, uint32_t start_seq, uint32_t end_seq,
                     uint64_t start_ts, uint64_t end_ts)
{
    fake_sink *fs = (fake_sink *)ud;
    (void)id; (void)rms_avg; (void)rms_max;
    (void)start_seq; (void)end_seq; (void)start_ts; (void)end_ts;
    fs->closes++;
    fs->last_close_frames = frames;
    fs->last_reason = (int)reason;
}

static vad_config base_cfg(void)
{
    vad_config c;
    c.sample_rate    = 16000;
    c.frame_samples  = 640;
    c.min_start_rms  = 180.0;
    c.start_ratio    = 3.0;
    c.end_ratio      = 0.6;
    c.calibration_ms = 1000;
    c.start_frames   = 2;
    c.hangover_ms    = 600;
    c.pre_roll_ms    = 200;
    c.max_segment_ms = 15000;
    c.noise_alpha    = 0.05;
    return c;
}

/* 送 count 帧方波/静音；seq 从 *seq 递增 */
static void feed(vad_t *v, int amp, int count, uint32_t *seq, vad_sink *sink)
{
    int i;
    make_frame(amp);
    for (i = 0; i < count; i++) {
        vad_feed(v, g_frame, v->cfg.frame_samples, (*seq)++, 1000000ull, sink);
    }
}

static void init_case(vad_t *v, fake_sink *fs, vad_sink *sink, const vad_config *cfg, uint32_t *seqp)
{
    memset(fs, 0, sizeof(*fs));
    sink->ud = fs;
    sink->on_open = fs_open;
    sink->on_frame = fs_frame;
    sink->on_close = fs_close;
    vad_init(v, cfg);
    *seqp = 1;
}

/* ================= T1 ================= */
static void t1_all_zero_silence(void)
{
    vad_config c = base_cfg();
    fake_sink fs; vad_sink sk; uint32_t seq;
    printf("\n[T1] 全零静音不触发\n");
    init_case(&g_vad, &fs, &sk, &c, &seq);
    feed(&g_vad, 0, 25, &seq, &sk);      /* 校准 1 s */
    feed(&g_vad, 0, 100, &seq, &sk);
    expect(fs.opens == 0, "T1 全零 125 帧：没有打开片段");
    expect(fs.closes == 0, "T1 没有关闭事件");
    expect(g_vad.speech_frames == 0, "T1 speech_frames == 0");
    expect(g_vad.noise_rms == 0.0, "T1 噪声底 == 0");
    expect(g_vad.state == VAD_STATE_IDLE, "T1 校准后进入 IDLE");
}

/* ================= T2 ================= */
static void t2_low_noise(void)
{
    vad_config c = base_cfg();
    fake_sink fs; vad_sink sk; uint32_t seq;
    printf("\n[T2] 低幅度噪声不触发（RMS 40 < min_start_rms 180）\n");
    init_case(&g_vad, &fs, &sk, &c, &seq);
    feed(&g_vad, 40, 25, &seq, &sk);
    feed(&g_vad, 40, 200, &seq, &sk);
    expect(fs.opens == 0, "T2 低噪声 225 帧：没有打开片段");
    expect(fabs(vad_start_threshold(&g_vad) - 180.0) < 1e-6,
           "T2 起始阈值 = max(180, noise*3) = 180");
    expect(fabs(vad_end_threshold(&g_vad) - 108.0) < 1e-6, "T2 结束阈值 = 180*0.6 = 108");
}

/* ================= T3 ================= */
static void t3_consecutive_high(void)
{
    vad_config c = base_cfg();
    fake_sink fs; vad_sink sk; uint32_t seq;
    uint32_t trigger_seq;
    printf("\n[T3] 连续高能量帧触发开始（start_frames=2）\n");
    init_case(&g_vad, &fs, &sk, &c, &seq);
    feed(&g_vad, 0, 25, &seq, &sk);      /* seq 1..25 */
    trigger_seq = 27;                                     /* 第 2 个高能帧 */
    feed(&g_vad, 400, 2, &seq, &sk);
    expect(fs.opens == 1, "T3 连续 2 帧 400 触发一次开启");
    expect(g_vad.state == VAD_STATE_SPEECH, "T3 进入 SPEECH");
    expect(fs.last_seq_in_seg == trigger_seq, "T3 片段末尾 seq = 触发帧 seq");
    expect(g_vad.seg_frames == 5, "T3 片段已含 pre-roll 5 帧");
}

/* ================= T4 ================= */
static void t4_single_pulse(void)
{
    vad_config c = base_cfg();
    fake_sink fs; vad_sink sk; uint32_t seq;
    printf("\n[T4] 单帧脉冲不触发\n");
    init_case(&g_vad, &fs, &sk, &c, &seq);
    feed(&g_vad, 0, 25, &seq, &sk);
    feed(&g_vad, 400, 1, &seq, &sk);     /* 只有 1 帧超过阈值 */
    feed(&g_vad, 0, 20, &seq, &sk);
    expect(fs.opens == 0, "T4 单帧脉冲不打开片段");
    expect(g_vad.above_count == 0, "T4 计数被随后的静音清零");
}

/* ================= T5 ================= */
static void t5_short_pause(void)
{
    vad_config c = base_cfg();
    fake_sink fs; vad_sink sk; uint32_t seq;
    printf("\n[T5] 语音中的短暂停顿不切段（hangover=600ms=15 帧）\n");
    init_case(&g_vad, &fs, &sk, &c, &seq);
    feed(&g_vad, 0, 25, &seq, &sk);
    feed(&g_vad, 400, 10, &seq, &sk);
    expect(fs.opens == 1, "T5 已开始");
    feed(&g_vad, 0, 10, &seq, &sk);      /* 400 ms 停顿 < 600 ms */
    expect(fs.closes == 0, "T5 停顿 10 帧（400ms）不结束片段");
    expect(g_vad.state == VAD_STATE_SPEECH, "T5 仍在 SPEECH");
    feed(&g_vad, 400, 10, &seq, &sk);
    expect(fs.closes == 0, "T5 恢复说话后仍是一个片段");
}

/* ================= T6 ================= */
static void t6_sustained_silence(void)
{
    vad_config c = base_cfg();
    fake_sink fs; vad_sink sk; uint32_t seq;
    printf("\n[T6] 持续静音达到 hangover 后结束\n");
    init_case(&g_vad, &fs, &sk, &c, &seq);
    feed(&g_vad, 0, 25, &seq, &sk);
    feed(&g_vad, 400, 10, &seq, &sk);
    feed(&g_vad, 0, 15, &seq, &sk);      /* 正好 600 ms */
    expect(fs.closes == 1, "T6 静音 15 帧触发一次结束");
    expect(fs.last_reason == VAD_END_SILENCE, "T6 end_reason = silence");
    expect(g_vad.state == VAD_STATE_IDLE, "T6 回到 IDLE");
    expect(g_vad.segments_closed == 1, "T6 segments_closed == 1");
}

/* ================= T7 ================= */
static void t7_pre_roll(void)
{
    vad_config c = base_cfg();
    fake_sink fs; vad_sink sk; uint32_t seq;
    printf("\n[T7] pre-roll 帧数正确（200ms=5 帧 / 400ms=10 帧）\n");
    init_case(&g_vad, &fs, &sk, &c, &seq);
    feed(&g_vad, 0, 25, &seq, &sk);      /* 1..25 */
    feed(&g_vad, 400, 2, &seq, &sk);     /* 26,27 -> 触发 */
    expect(fs.frames_in_seg == 5, "T7 200ms pre-roll 补写 5 帧");
    expect(fs.first_seq_in_seg == 23, "T7 片段第一帧 seq = 触发帧 - 4");

    c.pre_roll_ms = 400;
    init_case(&g_vad, &fs, &sk, &c, &seq);
    feed(&g_vad, 0, 25, &seq, &sk);
    feed(&g_vad, 400, 2, &seq, &sk);
    expect(fs.frames_in_seg == 10, "T7 400ms pre-roll 补写 10 帧");
    expect(fs.first_seq_in_seg == 18, "T7 片段第一帧 seq = 触发帧 - 9");

    /* pre_roll_ms = 0：不补写，但触发帧自己必须写入 */
    c.pre_roll_ms = 0;
    init_case(&g_vad, &fs, &sk, &c, &seq);
    feed(&g_vad, 0, 25, &seq, &sk);
    feed(&g_vad, 400, 2, &seq, &sk);
    expect(g_vad.seg_frames == 1, "T7 pre_roll=0 时片段含触发帧 1 帧");
    expect(fs.frames_in_seg == 1, "T7 pre_roll=0 时 sink 收到 1 帧");
}

/* ================= T8 ================= */
static void t8_max_duration(void)
{
    vad_config c = base_cfg();
    fake_sink fs; vad_sink sk; uint32_t seq;
    printf("\n[T8] 最大片段时长保护（max_segment_ms=200 -> 5 帧翻滚）\n");
    c.start_frames = 1;
    c.pre_roll_ms = 0;
    c.max_segment_ms = 200;
    c.hangover_ms = 5000;
    init_case(&g_vad, &fs, &sk, &c, &seq);
    feed(&g_vad, 0, 25, &seq, &sk);
    feed(&g_vad, 400, 12, &seq, &sk);
    expect(fs.closes == 2, "T8 12 帧 / 5 帧上限 -> 关闭 2 次");
    expect(fs.last_reason == VAD_END_MAX_DURATION, "T8 end_reason = max_duration");
    expect(fs.last_close_frames == 5, "T8 每个片段 5 帧");
    expect(g_vad.state == VAD_STATE_SPEECH, "T8 翻滚后仍在 SPEECH");
    expect(g_vad.seg_frames == 2, "T8 新片段已写 2 帧（12-5-5）");
    expect(g_vad.segments_opened == 3, "T8 共打开 3 个片段（1 + 2 次翻滚）");
}

/* ================= T9 ================= */
static void t9_noise_frozen_in_speech(void)
{
    vad_config c = base_cfg();
    fake_sink fs; vad_sink sk; uint32_t seq;
    double noise_after_calib, noise_now;
    printf("\n[T9] 噪声底不会在 SPEECH 状态被更新\n");
    init_case(&g_vad, &fs, &sk, &c, &seq);
    feed(&g_vad, 10, 25, &seq, &sk);
    noise_after_calib = vad_noise_floor(&g_vad);
    expect(fabs(noise_after_calib - 10.0) < 0.5, "T9 校准后噪声底 ≈ 10");

    feed(&g_vad, 400, 50, &seq, &sk);    /* 大声说话 2 s */
    noise_now = vad_noise_floor(&g_vad);
    expect(g_vad.state == VAD_STATE_SPEECH, "T9 处于 SPEECH");
    expect(fabs(noise_now - noise_after_calib) < 1e-9,
           "T9 SPEECH 期间 50 帧 400 幅度没有改变噪声底");

    /* 结束并回到 IDLE 后，噪声底才允许再更新 */
    feed(&g_vad, 0, 20, &seq, &sk);
    expect(g_vad.state == VAD_STATE_IDLE, "T9 回到 IDLE");
    expect(vad_noise_floor(&g_vad) < 10.0, "T9 IDLE 后噪声底被静音拉低");
}

/* ================= T10 ================= */
static void t10_bounds(void)
{
    vad_config c;
    char err[128];
    fake_sink fs; vad_sink sk;
    printf("\n[T10] 参数边界与异常输入不崩溃\n");

    c = base_cfg();
    expect(vad_config_validate(&c, err, sizeof(err)) == 0, "T10 默认配置合法");

    c = base_cfg(); c.min_start_rms = 0.0;
    expect(vad_config_validate(&c, err, sizeof(err)) != 0 && err[0] != '\0',
           "T10 min_start_rms=0 被拒并给出原因");
    c = base_cfg(); c.end_ratio = 1.0;
    expect(vad_config_validate(&c, err, sizeof(err)) != 0, "T10 end_ratio=1.0 被拒");
    c = base_cfg(); c.start_frames = 0;
    expect(vad_config_validate(&c, err, sizeof(err)) != 0, "T10 start_frames=0 被拒");
    c = base_cfg(); c.pre_roll_ms = 2000;
    expect(vad_config_validate(&c, err, sizeof(err)) != 0, "T10 pre_roll_ms=2000 超出环容量被拒");
    c = base_cfg(); c.max_segment_ms = 40;
    expect(vad_config_validate(&c, err, sizeof(err)) != 0, "T10 max_segment_ms=40（<2 帧）被拒");
    c = base_cfg(); c.noise_alpha = 0.0;
    expect(vad_config_validate(&c, err, sizeof(err)) != 0, "T10 noise_alpha=0 被拒");
    c = base_cfg(); c.frame_samples = 100;      /* 100*1000 % 16000 != 0 */
    expect(vad_config_validate(&c, err, sizeof(err)) != 0, "T10 帧长不是整毫秒被拒");
    c = base_cfg(); c.sample_rate = 48000; c.frame_samples = 1920 - 100;  /* 1820*1000%48000!=0 */
    expect(vad_config_validate(&c, err, sizeof(err)) != 0, "T10 48k 非整毫秒帧长被拒");
    c = base_cfg(); c.sample_rate = 48000; c.frame_samples = 960;
    expect(vad_config_validate(&c, err, sizeof(err)) == 0, "T10 48k/960（20ms，<=1024 样本）合法");
    c = base_cfg(); c.sample_rate = 48000; c.frame_samples = 1920;
    expect(vad_config_validate(&c, err, sizeof(err)) != 0, "T10 48k/1920 超 1024 样本上限被拒");

    /* 非法配置初始化后仍可安全调用 */
    c = base_cfg(); c.min_start_rms = -1.0;
    expect(vad_init(&g_vad, &c) != 0, "T10 非法配置 vad_init 返回 -1");
    expect(g_vad.cfg_ok == 0, "T10 cfg_ok=0");
    make_frame(400);
    expect(vad_feed(&g_vad, g_frame, 640, 1, 0, NULL) == -1, "T10 非法配置下 vad_feed 返回 -1");

    /* 合法初始化后的异常输入 */
    c = base_cfg();
    expect(vad_init(&g_vad, &c) == 0, "T10 合法配置 vad_init 成功");
    expect(vad_feed(NULL, g_frame, 640, 1, 0, NULL) == -1, "T10 vad_feed(NULL) 返回 -1");
    expect(vad_feed(&g_vad, NULL, 640, 1, 0, NULL) == -1, "T10 samples=NULL 返回 -1");
    expect(vad_feed(&g_vad, g_frame, 639, 1, 0, NULL) == -1, "T10 帧长 639 返回 -1");
    expect(vad_feed(&g_vad, g_frame, 0, 1, 0, NULL) == -1, "T10 帧长 0 返回 -1");
    expect(g_vad.frames_dropped_invalid == 3, "T10 非法帧计入 frames_dropped_invalid");
    expect(vad_flush(NULL, NULL) == -1, "T10 vad_flush(NULL) 返回 -1");
    expect(vad_flush(&g_vad, NULL) == 0, "T10 空片段 vad_flush 返回 0");
    expect(vad_frame_rms(NULL, 0) == 0.0, "T10 vad_frame_rms(NULL) = 0");
    expect(vad_frame_rms(g_frame, 640) > 399.0, "T10 方波 400 的 RMS ≈ 400");

    /* 极端但合法：不应崩溃 */
    c = base_cfg();
    c.start_ratio = 100.0;
    c.hangover_ms = 60000;
    c.calibration_ms = 0;
    c.pre_roll_ms = 1600;
    expect(vad_config_validate(&c, err, sizeof(err)) == 0, "T10 极端合法参数通过校验");
    {
        uint32_t sq = 1;
        init_case(&g_vad, &fs, &sk, &c, &sq);
        feed(&g_vad, 100, 30, &sq, &sk);
        expect(g_vad.frames_seen == 30, "T10 极端参数运行 30 帧不崩溃");
    }
}

int main(void)
{
    printf("vad_unit_test  (vad_energy.c: frame=%d samples, %d Hz)\n",
           VAD_MAX_FRAME_SAMPLES, 16000);

    t1_all_zero_silence();
    t2_low_noise();
    t3_consecutive_high();
    t4_single_pulse();
    t5_short_pause();
    t6_sustained_silence();
    t7_pre_roll();
    t8_max_duration();
    t9_noise_frozen_in_speech();
    t10_bounds();

    printf("\n=== %d passed, %d failed ===\n", g_pass, g_fail);
    return g_fail ? 1 : 0;
}
