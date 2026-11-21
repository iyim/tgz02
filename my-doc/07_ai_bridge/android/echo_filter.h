/*
 * echo_filter.h -- T7-02 播报回声 / 无指令过滤（纯本地判定，不碰 ASR、不碰 TTS 执行器）
 *
 * 要解决的问题（真机实测，见 evidence/t7_02_before_after.md）：
 *   设备播报自己的回答时，扬声器声音会被自身麦克风重新识别，产生额外的 asr_final 事件，
 *   Worker 把这条回声当成新指令，于是模型对一个"自己刚说过的话"再回答一次。
 *
 * 判定依据只用两样东西，都不猜：
 *   1) TTS 执行器发布的公开播放状态 play.public.json（T7-02 新增，0644 可被 shell 进程读）：
 *      state=playing/idle、event_id、started_ms、finished_ms；
 *   2) 本进程自己登记过的"我刚刚让它播的文本"（按 event_id 索引）。
 *   窗口内 + 文本相似 -> 回声中继，丢弃；文本不相似 -> 保留（用户在播报期间说话照样应答）。
 *
 * 另外一条独立规则：去掉唤醒词/语气词之后没有任何指令内容的短事件（"天猫精灵"、"嗯"、
 * "嗯拜拜"）不送模型——它们是唤醒 clip 与播报尾音的残留，模型对它们的回答只会让设备
 * 自问自答。可用 --echo-no-command off 关掉。
 *
 * 这个模块是纯函数 + 一个小状态机，因此可以在 host 上单测（tests/t7_02_echo_unit_test.c）。
 */
#ifndef T6B_ECHO_FILTER_H
#define T6B_ECHO_FILTER_H

#include <stddef.h>

#define EF_TEXT_MAX     512
#define EF_ID_MAX       128
#define EF_RING         4         /* 记住最近 4 条我方播报（够覆盖排队播报） */
#define EF_REASON_MAX   96

/* ef_check() 的返回值 */
#define EF_KEEP            0
#define EF_DROP_ECHO       1   /* 播报窗口内且文本与被播报文本相似 */
#define EF_DROP_NO_COMMAND 2   /* 只有唤醒词/语气词，没有指令内容 */

typedef struct {
    int enabled;         /* 0 = 完全旁路（--echo-filter off） */
    int drop_nocmd;      /* 1 = 丢弃"无指令内容"的短事件（--echo-no-command） */
    int before_ms;       /* 播报开始前的保护窗口，默认 1200 */
    int after_ms;        /* 播报结束后的保护窗口，默认 1500 */
    int min_cmd_chars;   /* 去噪后至少保留几个字符才算指令，默认 1 */
    int sim_percent;     /* 文本相似度阈值（0-100），默认 60 */
} ef_config;

typedef struct {
    char event_id[EF_ID_MAX];
    char text[EF_TEXT_MAX];
    long long enq_ms;
} ef_item;

typedef struct {
    ef_config cfg;
    char state_path[512];        /* <tts_queue>/play.public.json */
    ef_item items[EF_RING];
    int head, count;

    /* 观测 */
    unsigned long seen;              /* ef_check 次数 */
    unsigned long dropped_echo;      /* 因回声丢弃 */
    unsigned long dropped_nocmd;     /* 因无指令丢弃 */
    unsigned long kept;              /* 保留 */
    unsigned long kept_in_window;    /* 播报窗口内仍保留（证明确实没误杀真指令） */
    unsigned long window_hits;       /* 命中播报窗口的次数 */
    unsigned long state_reads;       /* 成功读到播放状态的次数 */
    unsigned long state_errors;      /* 读失败次数 */
    int last_reason;                 /* 最近一次判定结果 */
    char last_reason_text[EF_REASON_MAX];
    char last_play_event[EF_ID_MAX]; /* 最近一次读到的播放中 event_id */
    int last_play_playing;           /* 最近一次读到的 state 是否 playing */
    long long last_play_started_ms;
    long long last_play_finished_ms;
} ef_ctx;

int ef_defaults(ef_config *c);

/* tts_queue_dir 为空 = 没有 TTS 队列：此时只剩"无指令"规则可用 */
int ef_init(ef_ctx *e, const ef_config *c, const char *tts_queue_dir, char *err, size_t cap);

/* 登记一条"我方即将播报的文本"（Worker 入队成功之后调用） */
void ef_note_enqueue(ef_ctx *e, const char *event_id, const char *text, long long now_ms);

/* 判定一条 asr_final：返回 EF_KEEP / EF_DROP_ECHO / EF_DROP_NO_COMMAND */
int ef_check(ef_ctx *e, const char *text, long long now_ms);

const char *ef_reason_name(int reason);

/* ---- 纯函数（host 单测直接调用） ---- */
/* 归一化：去空白、标点、控制字符；拉丁字母转小写；保留中文/字母/数字/汉字 */
int ef_normalize(const char *in, char *out, size_t cap);
/* 去掉唤醒词与语气词后的"指令内容"（同样是归一化后的形式）；返回长度 */
int ef_strip_fillers(const char *norm, char *out, size_t cap);
/* 最长公共子串长度占 a 的比例（0-100） */
int ef_similar(const char *a, const char *b);

#endif /* T6B_ECHO_FILTER_H */
