/*
 * native_marker.h -- T7-05 "原厂放行"标记的解析与判定（纯逻辑，可 host 单测）
 *
 * 背景：
 *   Worker 判定一条 ASR 文本属于原厂基础指令时，会写一份标记文件
 *   /data/local/tmp/t5_bridge/work/native_route.public.json，
 *   TTS 守卫在 :core 里读它，决定这条原厂回答是放行还是屏蔽。
 *
 * T7-04 的两个问题（本轮修复）：
 *   1) 只要"没超过有效期"就放行 —— 窗口原来 8 s，session 对不上也放行，
 *      等于把这段时间里所有原厂回答一起放出去了；
 *   2) 连续两条 native 指令快速到达时，标记会被覆盖，守卫的 250 ms 缓存
 *      可能还在用上一条，导致第二条回答被拦。
 *
 * 本模块的规则（可测、可读）：
 *   - 标记过期（now > exp_ms）         -> 不放行（expired）
 *   - onTtsStart 的 id == 标记 session -> 放行（命中 session，最强证据）
 *   - 标记里没有 session（老格式/异常）-> 仅在窗口内放行（window）
 *   - session 不匹配                   -> 不放行（miss_session）
 *
 * 注意：同一个 seq 的标记允许在同一会话里被多次读取（原厂流式回答可能多次触发
 * onTtsStart），所以这里不做"一次性消费"，只靠 session + 窗口收敛。
 */
#ifndef TG_NATIVE_MARKER_H
#define TG_NATIVE_MARKER_H

#include <stddef.h>

#define NM_SESSION_MAX 32
#define NM_INTENT_MAX  16
#define NM_EVENT_MAX   64

typedef struct {
    int       version;
    long long seq;          /* 单调序号：Worker 每写一次 +1，用来识别"新标记" */
    long long wall_ms;      /* 写入时刻（墙钟 ms） */
    long long exp_ms;       /* 失效时刻（墙钟 ms） */
    long long session;      /* 对应的 ASR 会话 id；have_session = 0 时无意义 */
    int       have_session;
    char      intent[NM_INTENT_MAX];
    char      event_id[NM_EVENT_MAX];
    int       valid;        /* 1 = 解析成功且 exp_ms > 0 */
} nm_marker;

typedef struct {
    unsigned long hit_session;    /* 按 session 命中 */
    unsigned long hit_window;     /* 无 session 时的窗口兜底命中 */
    unsigned long miss_session;   /* session 不匹配（不放行） */
    unsigned long expired;        /* 标记已过期 */
    unsigned long bad_marker;     /* 解析失败 / 缺 exp_ms */
} nm_stats;

/* 解析一行标记 JSON。返回 0 = 有效，-1 = 无效（out->valid 同时反映结果）。 */
int nm_parse(const char *buf, size_t len, nm_marker *out);

/* 判定一次 onTtsStart 是否放行。返回 1 = 放行，0 = 不放行。
 *   ontts_id   : onTtsStart 的 sessionId（<=0 表示未知）
 *   now_wall   : 当前墙钟 ms
 *   st         : 计数（可为 NULL）
 *   by_session : 回填 1 = 按 session 命中，0 = 窗口兜底（可为 NULL）
 */
int nm_decide(const nm_marker *m, int ontts_id, long long now_wall,
              nm_stats *st, int *by_session);

#endif /* TG_NATIVE_MARKER_H */
