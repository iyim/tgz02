/*
 * native_marker.c -- 见 native_marker.h
 *
 * 只做"解析一行 JSON + 三条判定"，不碰文件、不碰 Android API，
 * 因此可以在 Windows/Linux host 上直接单测（tests/t7_05_native_marker_unit_test.c）。
 */
#include "native_marker.h"

#include <errno.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

/* 取 "key":"value" 里的字符串；不存在返回 -1 */
static int nm_str(const char *buf, const char *key, char *out, size_t cap)
{
    char pat[64];
    const char *p;
    const char *e;
    size_t n;

    if (out == NULL || cap == 0) return -1;
    out[0] = '\0';
    snprintf(pat, sizeof(pat), "\"%s\":\"", key);
    p = strstr(buf, pat);
    if (p == NULL) return -1;
    p += strlen(pat);
    e = strchr(p, '"');
    if (e == NULL) return -1;
    n = (size_t)(e - p);
    if (n >= cap) n = cap - 1;
    memcpy(out, p, n);
    out[n] = '\0';
    return 0;
}

/* 取 "key":123 里的整数；不存在返回 dflt */
static long long nm_int(const char *buf, const char *key, long long dflt)
{
    char pat[64];
    const char *p;
    char *end = NULL;
    long long v;

    snprintf(pat, sizeof(pat), "\"%s\":", key);
    p = strstr(buf, pat);
    if (p == NULL) return dflt;
    p += strlen(pat);
    while (*p == ' ' || *p == '\t') p++;
    v = strtoll(p, &end, 10);
    if (end == p) return dflt;
    return v;
}

int nm_parse(const char *buf, size_t len, nm_marker *out)
{
    char sess[NM_SESSION_MAX];
    char ev[NM_EVENT_MAX];
    long long v;

    if (out == NULL) return -1;
    memset(out, 0, sizeof(*out));
    if (buf == NULL || len == 0) return -1;
    if (strchr(buf, '{') == NULL) return -1;

    out->version = (int)nm_int(buf, "version", 1);
    out->seq = nm_int(buf, "seq", 0);
    out->wall_ms = nm_int(buf, "wall_ms", 0);
    out->exp_ms = nm_int(buf, "exp_ms", 0);
    out->have_session = 0;

    /* T7-05-R1：三种情况必须分开，否则窗口兜底会被一个坏字段打开。
     *   1) 没有 "session" 字段      -> 兼容旧格式，走窗口兜底；
     *   2) 有字段且是合法十进制正整数 -> 必须按 session 精确匹配；
     *   3) 有字段但是空/非数字/带尾巴/溢出/<=0 -> 整个标记无效，拒绝放行。
     * T9-19e：Worker 实际写出的是 "asr_session"，此前这里只找 "session"，
     * 于是每条标记都被当成"无 session"，精确匹配从未生效。两个键名都认。 */
    {
        const char *sess_key = NULL;

        if (strstr(buf, "\"session\":") != NULL) sess_key = "session";
        else if (strstr(buf, "\"asr_session\":") != NULL) sess_key = "asr_session";

        if (sess_key != NULL) {
            char *end = NULL;

            if (nm_str(buf, sess_key, sess, sizeof(sess)) != 0 || sess[0] == '\0') {
                out->valid = 0;                 /* 字段存在但取不到值 */
                return -1;
            }
            errno = 0;
            v = strtoll(sess, &end, 10);
            if (errno == ERANGE || end == sess || *end != '\0' || v <= 0) {
                out->valid = 0;                 /* 非数字 / 溢出 / 负数 / 有残留字符 */
                return -1;
            }
            out->session = v;
            out->have_session = 1;
        }
    }
    (void)nm_str(buf, "intent", out->intent, sizeof(out->intent));
    (void)nm_str(buf, "event_id", ev, sizeof(ev));
    snprintf(out->event_id, sizeof(out->event_id), "%s", ev);

    /* 没有 exp_ms 的标记一律无效：宁可让原厂回答被拦（用户会再问一次），
     * 也不要因为一个坏标记把所有原厂回答都放出来。 */
    out->valid = (out->exp_ms > 0);
    return out->valid ? 0 : -1;
}

int nm_decide(const nm_marker *m, int ontts_id, long long now_wall,
              nm_stats *st, int *by_session)
{
    if (by_session != NULL) *by_session = 0;

    if (m == NULL || !m->valid) {
        if (st != NULL) st->bad_marker++;
        return 0;
    }
    if (now_wall > m->exp_ms) {
        if (st != NULL) st->expired++;
        return 0;
    }
    if (m->have_session && ontts_id > 0 && (long long)ontts_id == m->session) {
        if (st != NULL) st->hit_session++;
        if (by_session != NULL) *by_session = 1;
        return 1;
    }
    /* 窗口兜底：只给"标记里确实没有 session"的情况。
     * T7-04 的写法是 session 对不上也放行，等价于把 8 s 内所有原厂回答都放出去。 */
    if (!m->have_session) {
        if (st != NULL) st->hit_window++;
        return 1;
    }
    /* T9-19e：alarm / time 的原厂答案几乎是即时生成的（本地 NLG 模板），
     * worker 的 utterance gate 有 450 ms debounce，等它写完标记，工厂的答案早就
     * 送去 TTS 了 —— 真机实测 11:19:28.086 的"已为你设置好…闹钟"就是这样被拦掉的。
     * 这两类意图一次指令只对应一条答案，窗口内放行不会误伤，所以放宽。
     * 其它意图（音量/天气/媒体/开关屏）继续要求 session 精确匹配。 */
    if (m->intent[0] != '\0' &&
        (strcmp(m->intent, "alarm") == 0 || strcmp(m->intent, "time") == 0)) {
        if (st != NULL) st->hit_window++;
        return 1;
    }
    if (st != NULL) st->miss_session++;
    return 0;
}
