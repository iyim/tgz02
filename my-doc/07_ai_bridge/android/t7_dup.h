/*
 * t7_dup.h -- T7-05-R2 ASR 重复识别判定（依据"事件身份"，不依据文本相似度）
 *
 * 为什么重写：
 *   T7-05-R1 的规则是"完全相同文本 + 3 秒窗口"。问题有两个：
 *     1) 3 秒窗口是拍脑袋的：真机上"同一句话二次识别"实测可以晚到 13 s 才到，
 *        窗口挡不住它，却会把用户 1 s 内主动重复的指令吞掉；
 *     2) 只看文本，等于用"两句话长得一样"证明"这是同一次识别"，这在
 *        "播放周杰伦" -> "播放周杰伦"（用户真的说了两遍）时是错的。
 *
 * 可用的真实字段（来自设备 /data/local/tmp/t5_bridge/work/events.jsonl 的实测样本，
 * 537 条 asr_final 全量统计见 T7-05-R2 报告 §3）：
 *   event_id   形如 t6-<pid>-<session_id>-g<gen>，537 条里 0 条重复 ——
 *              它是"这一条 final 通知"的身份，同一个 final 被重复投递时不变；
 *   session_id 每次识别会话一个（唤醒/一次聆听）
 *   seq        记录写入顺序号（同一条记录被重放时不变）
 *   received_at_ms 上游时间戳（同一条记录被重放时不变）
 *
 * 因此判定只用三条：
 *   A. event_id 相同                -> 同一条 final 重复上报，只执行一次
 *   B. session + seq + 文本 相同     -> 同一条记录换路径又到了一次，同上
 *   C. 其它一切（包括"文本完全相同但 event_id 不同"）-> 新指令，必须执行
 *
 * 明确的限制（不掩盖）：
 *   如果原厂把"同一句话"重新识别成了一条新的 final（新 event_id、可能新 session），
 *   现有字段**无法**与"用户主动重复"区分。这种情况本模块一律按新指令执行，并用
 *   `n_same_text_new_event` 计数。也就是说：宁可多答一次，也不吞用户的话。
 */
#ifndef T7_DUP_H
#define T7_DUP_H

#include <stddef.h>

#define T7DUP_ID_MAX      64
#define T7DUP_SESSION_MAX 32
#define T7DUP_TEXT_MAX    256

typedef struct {
    char      event_id[T7DUP_ID_MAX];
    char      session[T7DUP_SESSION_MAX];
    char      text[T7DUP_TEXT_MAX];
    long long seq;          /* 记录顺序号；<0 或未知用 -1 */
} t7dup_key;

typedef enum {
    T7DUP_NEW = 0,          /* 新指令：必须执行 */
    T7DUP_SAME_EVENT = 1,   /* 同一条 final 被重复投递：跳过 */
    T7DUP_SAME_REPORT = 2   /* 同一条记录（session+seq+文本）再次到达：跳过 */
} t7dup_verdict;

typedef struct {
    t7dup_key     last;
    int           have;
    unsigned long n_new;                 /* 判定为新指令的次数 */
    unsigned long n_same_event;          /* A 规则命中 */
    unsigned long n_same_report;         /* B 规则命中 */
    unsigned long n_same_text_new_event; /* 文本相同但身份不同（= 按新指令执行）*/
} t7_dup;

void t7dup_init(t7_dup *d);
t7dup_verdict t7dup_check(t7_dup *d, const t7dup_key *k);
void t7dup_note(t7_dup *d, const t7dup_key *k);
const char *t7dup_verdict_name(t7dup_verdict v);

/* 便捷：填 key（text 会截断到 T7DUP_TEXT_MAX-1，保持 UTF-8 边界不处理，调用方
 * 传进来的本来就是已截断的文本）*/
void t7dup_key_set(t7dup_key *k, const char *event_id, const char *session,
                   const char *text, long long seq);

#endif /* T7_DUP_H */
