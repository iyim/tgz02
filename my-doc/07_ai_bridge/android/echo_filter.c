/*
 * echo_filter.c -- T7-02 播报回声 / 无指令过滤
 *
 * 设计要点（与 header 的说明一致）：
 *   - 只读 TTS 执行器发布的 play.public.json，不读 root-only 的 journal/state；
 *   - 只和"我们确实让它播过的文本"比较，不和任意文本比较；
 *   - 窗口内但文本不相似 -> 放行（用户插话不会被误杀），并单独计数；
 *   - 任何读状态失败都退化成"按无指令规则处理"，绝不影响正常问答。
 */
#include "echo_filter.h"

#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* ---------------------------------------------------------------- 基础 */

int ef_defaults(ef_config *c)
{
    if (c == NULL) return -1;
    memset(c, 0, sizeof(*c));
    c->enabled = 1;
    c->drop_nocmd = 1;
    c->before_ms = 1200;
    c->after_ms = 1500;
    c->min_cmd_chars = 1;
    c->sim_percent = 60;
    return 0;
}

int ef_init(ef_ctx *e, const ef_config *c, const char *tts_queue_dir, char *err, size_t cap)
{
    if (err && cap) err[0] = '\0';
    if (e == NULL || c == NULL) {
        if (err && cap) snprintf(err, cap, "echo_filter: null argument");
        return -1;
    }
    memset(e, 0, sizeof(*e));
    e->cfg = *c;
    if (c->before_ms < 0 || c->after_ms < 0 || c->sim_percent < 1 || c->sim_percent > 100) {
        if (err && cap) snprintf(err, cap, "echo_filter: bad window/threshold");
        return -1;
    }
    if (tts_queue_dir != NULL && tts_queue_dir[0] != '\0') {
        snprintf(e->state_path, sizeof(e->state_path), "%s/play.public.json", tts_queue_dir);
    }
    e->last_reason = EF_KEEP;
    return 0;
}

const char *ef_reason_name(int reason)
{
    switch (reason) {
    case EF_KEEP:            return "keep";
    case EF_DROP_ECHO:       return "drop_echo";
    case EF_DROP_NO_COMMAND: return "drop_no_command";
    default:                 return "unknown";
    }
}

/* ------------------------------------------------------------ 归一化 */

/* 保留：CJK 汉字/假名/谚文、ASCII 字母数字；丢掉：空白、标点、控制字符、
 * 全角标点（U+3000-303F、U+FF00-FF65）、通用标点（U+2000-206F）。
 * 拉丁字母统一小写。返回归一化后的字节长度（不含 NUL）。 */
int ef_normalize(const char *in, char *out, size_t cap)
{
    size_t o = 0;
    const unsigned char *p = (const unsigned char *)in;

    if (out == NULL || cap == 0) return 0;
    out[0] = '\0';
    if (in == NULL) return 0;

    while (*p != '\0') {
        unsigned int cp;
        int len = 1, i, keep = 0;

        if (*p < 0x80) {
            unsigned char c = *p;
            if (c >= 'A' && c <= 'Z') c = (unsigned char)(c - 'A' + 'a');
            if ((c >= 'a' && c <= 'z') || (c >= '0' && c <= '9')) {
                if (o + 1 >= cap) break;
                out[o++] = (char)c;
            }
            p++;
            continue;
        }

        /* 解 UTF-8 码点 */
        cp = *p;
        if (cp >= 0xF0) len = 4;
        else if (cp >= 0xE0) len = 3;
        else if (cp >= 0xC0) len = 2;
        cp = (unsigned int)(p[0] & (0x7F >> len));
        for (i = 1; i < len; i++) {
            if (p[i] == '\0') break;
            cp = (cp << 6) | (unsigned int)(p[i] & 0x3F);
        }
        if (i != len) break;    /* 截断的多字节序列：到此为止 */

        if ((cp >= 0x4E00 && cp <= 0x9FFF) ||     /* CJK 统一表意文字 */
            (cp >= 0x3400 && cp <= 0x4DBF) ||     /* 扩展 A */
            (cp >= 0x3040 && cp <= 0x30FF) ||     /* 平假名/片假名 */
            (cp >= 0xAC00 && cp <= 0xD7AF) ||     /* 谚文 */
            (cp >= 0xF900 && cp <= 0xFAFF)) {     /* 兼容表意文字 */
            keep = 1;
        }
        if (keep) {
            if (o + (size_t)len >= cap) break;
            memcpy(out + o, p, (size_t)len);
            o += (size_t)len;
        }
        p += len;
    }
    out[o] = '\0';
    return (int)o;
}

/* 需要从"指令内容"里剔除的词：唤醒词 + 纯语气词/应答词。
 * 全部是归一化后的形式（无空格无标点），按最长优先匹配，避免 "嗯嗯" 只吃掉一个 "嗯"。 */
static const char *EF_FILLERS[] = {
    "天猫精灵", "小精灵", "天猫", "精灵",
    "嗯嗯嗯嗯", "嗯嗯嗯", "嗯嗯", "嗯",
    "哦哦", "哦", "噢", "啊", "呃", "额", "唉", "诶", "呀", "吧", "呢",
    "你在吗", "在吗", "嗨", "喂",
    "好的", "好", "行", "拜拜", "再见", "谢谢", "谢啦"
};


int ef_strip_fillers(const char *norm, char *out, size_t cap)
{
    char buf[EF_TEXT_MAX];
    size_t n, i, k;
    int changed = 1;

    if (out == NULL || cap == 0) return 0;
    out[0] = '\0';
    if (norm == NULL) return 0;
    n = strlen(norm);
    if (n >= sizeof(buf)) n = sizeof(buf) - 1;
    memcpy(buf, norm, n);
    buf[n] = '\0';

    /* 反复删到不动点（"天猫精灵嗯拜拜" 需要删三轮） */
    while (changed && n > 0) {
        changed = 0;
        for (k = 0; k < sizeof(EF_FILLERS) / sizeof(EF_FILLERS[0]); k++) {
            const char *f = EF_FILLERS[k];
            size_t fl = strlen(f);
            char *pos = strstr(buf, f);
            if (pos == NULL) continue;
            i = (size_t)(pos - buf);
            memmove(buf + i, buf + i + fl, n - i - fl + 1);
            n -= fl;
            changed = 1;
        }
    }

    if (n >= cap) n = cap - 1;
    memcpy(out, buf, n);
    out[n] = '\0';
    return (int)n;
}

/* ------------------------------------------------- 最长公共子串相似度 */

int ef_similar(const char *a, const char *b)
{
    /* 按 UTF-8 码点比较：先各自解出码点序列（上限 192 个），再 DP 求最长公共子串 */
    unsigned int ca[192], cb[192];
    int na = 0, nb = 0, i, j, best = 0, prev[193], cur[193];
    const unsigned char *p;

    if (a == NULL || b == NULL || a[0] == '\0' || b[0] == '\0') return 0;

    for (p = (const unsigned char *)a; *p != '\0' && na < 192;) {
        unsigned int cp = *p;
        int len = 1;
        if (cp >= 0xF0) len = 4;
        else if (cp >= 0xE0) len = 3;
        else if (cp >= 0xC0) len = 2;
        if (len == 1) { ca[na++] = cp; p++; continue; }
        cp = (unsigned int)(*p & (0x7F >> len));
        for (i = 1; i < len; i++) {
            if (p[i] == '\0') { break; }
            cp = (cp << 6) | (unsigned int)(p[i] & 0x3F);
        }
        ca[na++] = cp;
        p += (i == len) ? len : i;
    }
    for (p = (const unsigned char *)b; *p != '\0' && nb < 192;) {
        unsigned int cp = *p;
        int len = 1;
        if (cp >= 0xF0) len = 4;
        else if (cp >= 0xE0) len = 3;
        else if (cp >= 0xC0) len = 2;
        if (len == 1) { cb[nb++] = cp; p++; continue; }
        cp = (unsigned int)(*p & (0x7F >> len));
        for (i = 1; i < len; i++) {
            if (p[i] == '\0') { break; }
            cp = (cp << 6) | (unsigned int)(p[i] & 0x3F);
        }
        cb[nb++] = cp;
        p += (i == len) ? len : i;
    }
    if (na == 0 || nb == 0) return 0;

    for (j = 0; j <= nb; j++) prev[j] = 0;
    for (i = 1; i <= na; i++) {
        cur[0] = 0;
        for (j = 1; j <= nb; j++) {
            if (ca[i - 1] == cb[j - 1]) {
                cur[j] = prev[j - 1] + 1;
                if (cur[j] > best) best = cur[j];
            } else {
                cur[j] = 0;
            }
        }
        for (j = 0; j <= nb; j++) prev[j] = cur[j];
    }
    return (best * 100) / na;
}

/* --------------------------------------------------------- 播放状态读取 */

typedef struct {
    int active;              /* 是否处于（含保护窗口的）播报窗口 */
    int playing;             /* 是否正在播 */
    char event_id[EF_ID_MAX];
    long long started_ms;
    long long finished_ms;
} play_state;

static int json_str_field(const char *buf, const char *key, char *out, size_t cap)
{
    char pat[64];
    const char *p, *q;

    snprintf(pat, sizeof(pat), "\"%s\"", key);
    p = strstr(buf, pat);
    if (p == NULL) return -1;
    p += strlen(pat);
    while (*p == ' ' || *p == '\t' || *p == ':') p++;
    if (*p != '"') return -1;
    p++;
    q = strchr(p, '"');
    if (q == NULL || q - p >= (long)cap) return -1;
    memcpy(out, p, (size_t)(q - p));
    out[q - p] = '\0';
    return 0;
}

static long long json_num_field(const char *buf, const char *key)
{
    char pat[64];
    const char *p;

    snprintf(pat, sizeof(pat), "\"%s\"", key);
    p = strstr(buf, pat);
    if (p == NULL) return -1;
    p += strlen(pat);
    while (*p == ' ' || *p == '\t' || *p == ':') p++;
    if ((*p < '0' || *p > '9') && *p != '-') return -1;
    return strtoll(p, NULL, 10);
}

static void read_play_state(ef_ctx *e, long long now_ms, play_state *ps)
{
    char buf[1024];
    char state[32] = {0};
    FILE *f;
    size_t n;

    memset(ps, 0, sizeof(*ps));
    if (e->state_path[0] == '\0') return;

    f = fopen(e->state_path, "rb");
    if (f == NULL) { e->state_errors++; return; }
    n = fread(buf, 1, sizeof(buf) - 1, f);
    fclose(f);
    buf[n] = '\0';
    e->state_reads++;

    if (json_str_field(buf, "state", state, sizeof(state)) != 0) { e->state_errors++; return; }
    if (json_str_field(buf, "event_id", ps->event_id, sizeof(ps->event_id)) != 0) ps->event_id[0] = '\0';
    ps->started_ms = json_num_field(buf, "started_ms");
    ps->finished_ms = json_num_field(buf, "finished_ms");

    e->last_play_event[0] = '\0';
    snprintf(e->last_play_event, sizeof(e->last_play_event), "%s", ps->event_id);
    e->last_play_started_ms = ps->started_ms;
    e->last_play_finished_ms = ps->finished_ms;

    if (strcmp(state, "playing") == 0) {
        ps->playing = 1;
        e->last_play_playing = 1;
        /* 没写 started_ms 时按"现在就开始了"处理 */
        if (ps->started_ms <= 0) ps->started_ms = now_ms;
        if (now_ms + e->cfg.before_ms >= ps->started_ms) ps->active = 1;
        return;
    }

    e->last_play_playing = 0;
    if (ps->finished_ms > 0 && now_ms - ps->finished_ms <= e->cfg.after_ms) {
        ps->active = 1;
        ps->started_ms = (ps->finished_ms > 0) ? ps->finished_ms - 1 : ps->started_ms;
    }
}

/* --------------------------------------------------------------- 主判定 */

static const ef_item *ring_find(const ef_ctx *e, const char *event_id)
{
    int i, idx;

    if (event_id == NULL || event_id[0] == '\0') return NULL;
    for (i = 0; i < e->count; i++) {
        idx = (e->head - 1 - i + EF_RING * 4) % EF_RING;
        if (strcmp(e->items[idx].event_id, event_id) == 0) return &e->items[idx];
    }
    return NULL;
}

static const ef_item *ring_latest(const ef_ctx *e)
{
    if (e->count == 0) return NULL;
    return &e->items[(e->head - 1 + EF_RING) % EF_RING];
}

void ef_note_enqueue(ef_ctx *e, const char *event_id, const char *text, long long now_ms)
{
    ef_item *it;

    if (e == NULL) return;
    it = &e->items[e->head];
    memset(it, 0, sizeof(*it));
    snprintf(it->event_id, sizeof(it->event_id), "%s", event_id != NULL ? event_id : "");
    snprintf(it->text, sizeof(it->text), "%s", text != NULL ? text : "");
    it->enq_ms = now_ms;
    e->head = (e->head + 1) % EF_RING;
    if (e->count < EF_RING) e->count++;
}

int ef_check(ef_ctx *e, const char *text, long long now_ms)
{
    char norm[EF_TEXT_MAX], tts_norm[EF_TEXT_MAX], rest[EF_TEXT_MAX];
    play_state ps;
    const ef_item *cand;
    int nl, rl, sim;

    if (e == NULL) return EF_KEEP;
    e->seen++;

    if (!e->cfg.enabled) {
        e->kept++;
        e->last_reason = EF_KEEP;
        snprintf(e->last_reason_text, sizeof(e->last_reason_text), "filter off");
        return EF_KEEP;
    }

    nl = ef_normalize(text, norm, sizeof(norm));

    read_play_state(e, now_ms, &ps);

    if (ps.active) {
        e->window_hits++;
        cand = ring_find(e, ps.event_id);
        if (cand == NULL) cand = ring_latest(e);
        /* 只有 >=2 个字符才做文本相似判定：单字指令（"停""换"）不参与，避免误杀 */
        if (cand != NULL && nl >= 2) {
            (void)ef_normalize(cand->text, tts_norm, sizeof(tts_norm));
            if (tts_norm[0] != '\0') {
                sim = ef_similar(norm, tts_norm);
                if (sim >= e->cfg.sim_percent) {
                    e->dropped_echo++;
                    e->last_reason = EF_DROP_ECHO;
                    snprintf(e->last_reason_text, sizeof(e->last_reason_text),
                             "echo: sim=%d%% playing=%s playing_now=%d", sim,
                             ps.event_id[0] ? ps.event_id : "-", ps.playing);
                    return EF_DROP_ECHO;
                }
            }
        }
    }

    if (e->cfg.drop_nocmd) {
        rl = ef_strip_fillers(norm, rest, sizeof(rest));
        if (rl < e->cfg.min_cmd_chars) {
            e->dropped_nocmd++;
            e->last_reason = EF_DROP_NO_COMMAND;
            snprintf(e->last_reason_text, sizeof(e->last_reason_text),
                     "no command content after wake/filler strip (norm=%d rest=%d)", nl, rl);
            return EF_DROP_NO_COMMAND;
        }
    }

    if (ps.active) e->kept_in_window++;
    e->kept++;
    e->last_reason = EF_KEEP;
    if (ps.active) {
        cand = ring_find(e, ps.event_id);
        if (cand == NULL) cand = ring_latest(e);
        if (cand != NULL) {
            (void)ef_normalize(cand->text, tts_norm, sizeof(tts_norm));
            sim = ef_similar(norm, tts_norm);
            snprintf(e->last_reason_text, sizeof(e->last_reason_text),
                     "kept during playback: sim=%d%% (below %d%%)", sim, e->cfg.sim_percent);
        } else {
            snprintf(e->last_reason_text, sizeof(e->last_reason_text),
                     "kept during playback: no tts text to compare");
        }
    } else {
        snprintf(e->last_reason_text, sizeof(e->last_reason_text), "kept outside playback window");
    }
    return EF_KEEP;
}
