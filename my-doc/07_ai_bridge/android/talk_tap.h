/*
 * talk_tap.h -- T8-15 原厂会话事件观察（factory talk tap）
 *
 * 解决的问题：
 *   会话控制中心一直缺"原厂唤醒成功 / 聆听开始 / 本轮 EOU 结束"这些真实事件，
 *   于是 device_listening 恒 0、last_wake_ms 恒 0，无法判断"现在到底是不是在免唤醒续听"。
 *   我们自己的 libtg_wakeinfo 钩子只落 wakeinfo.jsonl（无 session 关联、当前未安装），
 *   而 :core 的既有稳定链路本轮不动 —— 所以改用**只读**方式：
 *
 *   生产者（脚本侧，不进 :core）：
 *     logcat -v time -s SessionManager:V > $STATE_DIR/factory_talk.log
 *   消费者（本模块）：按 offset 增量读这个文件，解析原厂自己打的日志行：
 *     SessionManager  onStartTalk: sessionId = 1969141, wakeupType = 0, wakeupWord=...
 *     SessionManager  onStopTalk: mStopTalkReason = 0, reason = normal
 *     AGSpeechEngineProxy  onListenStarted,684
 *
 * 边界（必须写清，避免把观察当推理）：
 *   - 这是**原厂日志行的观察**，不是回调注入：只读文件，不 hook、不写 :core。
 *   - 解析对格式宽松：只按关键子串与字段名取值；字段缺失一律记 -1，
 *     绝不猜、不补默认值（缺失时上层按"未知"处理）。
 *   - onStopTalk 是**每轮 EOU** 事件，不是对话结束 —— 上层语义由 session_ctrl 决定。
 *
 * 纯逻辑 + 一个只读文件，host 可单测（tests/t8_15_continuous_dialog_unit_test.c）。
 */
#ifndef T8_15_TALK_TAP_H
#define T8_15_TALK_TAP_H

#include <stddef.h>

#define TT_LINE_MAX     512
#define TT_ID_MAX       64
#define TT_WORD_MAX     48
#define TT_PATH_MAX     256
#define TT_DETAIL_MAX   160
#define TT_BATCH_MAX    16

/* 事件种类 */
#define TT_EV_NONE          0
#define TT_EV_WAKE          1   /* onStartTalk：原厂唤醒成功 */
#define TT_EV_LISTEN_START  2   /* onListenStarted：原厂开始录音 */
#define TT_EV_TALK_STOP     3   /* onStopTalk：本轮 EOU 结束（录音停） */
#define TT_EV_LISTEN_STOP   4   /* onStopListen / stopListen：录音停止 */
#define TT_EV_EXIT_TALK     5   /* exitTalk：原厂平台会话退出（每轮回答后都会发生） */

typedef struct {
    int  kind;
    char session[TT_ID_MAX];   /* onStartTalk 的 sessionId；没有则空串 */
    int  wake_type;            /* onStartTalk 的 wakeupType；-1 = 未解析到 */
    int  stop_reason;          /* onStopTalk 的 mStopTalkReason；-1 = 未解析到 */
    char word[TT_WORD_MAX];    /* wakeupWord；没有则空串 */
} tt_event;

typedef struct {
    long long offset;          /* 已消费到的文件偏移（只消费到最后一个完整行） */
    unsigned long lines;       /* 读到的完整行数 */
    unsigned long recognized;  /* 识别出的事件数 */
    unsigned long wakes;
    unsigned long listen_starts;
    unsigned long talk_stops;
    unsigned long listen_stops;
    unsigned long exit_talks;  /* exitTalk：原厂平台会话退出 */
    unsigned long ignored;     /* 完整行但与我们无关 */
    unsigned long malformed;   /* 行过长 / 需要字段解析但拿不到 */
    unsigned long resets;      /* 文件被截断（offset 回退）次数 */
    int  last_kind;
    char last_detail[TT_DETAIL_MAX];
    char last_session[TT_ID_MAX];
} tt_ctx;

void tt_init(tt_ctx *t);

/* 解析一行原厂日志；1 = 识别出事件（填 ev），0 = 无关行 */
int tt_parse_line(const char *line, tt_event *ev);

/* 从 "<key> = 12345" 这类写法里取数字串；1 = 取到，0 = 没有 */
int tt_field_digits(const char *line, const char *key, char *out, size_t cap);

/* 从 "<key>=abc" 这类写法里取到行尾/分隔符为止的短串（去引号与空白）；1 = 取到 */
int tt_field_text(const char *line, const char *key, char *out, size_t cap);

/* 增量读取 tap 文件，把新识别到的事件写进 out（最多 cap 条）。
 * 返回 >=0 = 本次识别到的事件数；-1 = 读失败（err 里有原因）。
 * 只消费到最后一个换行，半行留给下一拍，避免把被截断的行当事件。 */
int tt_poll(tt_ctx *t, const char *path, tt_event *out, int cap, char *err, size_t errlen);

const char *tt_kind_name(int kind);

#endif /* T8_15_TALK_TAP_H */
