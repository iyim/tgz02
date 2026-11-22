/*
 * utterance_gate.c -- 见 utterance_gate.h
 *
 * 判定全部走归一化文本（ef_normalize：去标点、去空白、拉丁小写；保留汉字/数字），
 * 因此"帮我播放周杰伦的歌"与"帮我 播放 周杰伦,的歌"在判定上等价。
 */
#include "utterance_gate.h"
#include "echo_filter.h"
#include "worker_util.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define UG_PATH_MAX 512

/* ---------------- 基础 ---------------- */

static void ug_norm(const char *in, char *out, size_t cap)
{
    if (out == NULL || cap == 0) return;
    out[0] = '\0';
    if (in == NULL) return;
    if (ef_normalize(in, out, cap) <= 0) out[0] = '\0';
}

static void ug_copy(char *dst, size_t cap, const char *src)
{
    size_t n;

    if (dst == NULL || cap == 0) return;
    if (src == NULL) { dst[0] = '\0'; return; }
    n = strlen(src);
    if (n > cap - 1) n = cap - 1;
    memcpy(dst, src, n);
    dst[n] = '\0';
}

int ug_defaults(ug_config *c)
{
    if (c == NULL) return -1;
    memset(c, 0, sizeof(*c));
    c->enabled = 1;
    c->debounce_ms = 450;
    c->max_hold_ms = 2500;
    c->cross_session_ms = 1200;
    c->cross_session = 1;
    c->revision_sim = 80;
    return 0;
}

void ug_init(ug_ctx *g, const ug_config *c)
{
    if (g == NULL) return;
    memset(g, 0, sizeof(*g));
    if (c != NULL) {
        g->cfg = *c;
    } else {
        (void)ug_defaults(&g->cfg);
    }
    if (g->cfg.debounce_ms < 0) g->cfg.debounce_ms = 0;
    if (g->cfg.max_hold_ms < g->cfg.debounce_ms) g->cfg.max_hold_ms = g->cfg.debounce_ms;
    if (g->cfg.cross_session_ms < 0) g->cfg.cross_session_ms = 0;
    if (g->cfg.revision_sim < 1) g->cfg.revision_sim = 1;
    if (g->cfg.revision_sim > 100) g->cfg.revision_sim = 100;
}

const char *ug_kind_name(int kind)
{
    switch (kind) {
    case UG_HELD:    return "held";
    case UG_RELEASE: return "release";
    case UG_DROP:    return "drop";
    default:         return "unknown";
    }
}

/* ---------------- 悬空谓词 ---------------- */

/* 以这些词结尾 = 句子还没说完（只在跨 session 合并时用作依据） */
static const char *const UG_DANGLING[] = {
    "播放", "放", "打开", "关掉", "关闭", "调到", "调", "设置", "设成",
    "查询", "查", "查一下", "搜索", "搜", "提醒", "定个", "改成", "换成",
    "来一首", "来点", "给我", "给我放", "帮我", "麻烦你", "那个", "然后",
    "还有", "另外", "接着", "以及", "和", "跟", "我想", "我要", "想听",
    "介绍一下", "说说", "讲讲", "告诉", "关于", "对比", "还有呢",
    NULL
};

int ug_looks_incomplete(const char *text)
{
    char n[UG_TEXT_MAX];
    size_t len, klen;
    int i;

    ug_norm(text, n, sizeof(n));
    len = strlen(n);
    if (len == 0) return 0;
    for (i = 0; UG_DANGLING[i] != NULL; i++) {
        klen = strlen(UG_DANGLING[i]);
        if (len >= klen && strcmp(n + (len - klen), UG_DANGLING[i]) == 0) return 1;
    }
    return 0;
}

/* ---------------- 暂存槽 ---------------- */

static int ug_stash(ug_ctx *g, const char *session, const char *event_id,
                    const char *text, long long now_ms)
{
    g->have = 1;
    ug_copy(g->session, sizeof(g->session), session);
    ug_copy(g->event_id, sizeof(g->event_id), event_id);
    ug_copy(g->last_event_id, sizeof(g->last_event_id), event_id);
    ug_copy(g->text, sizeof(g->text), text);
    g->first_ms = now_ms;
    g->last_ms = now_ms;
    g->due_ms = now_ms + (long long)g->cfg.debounce_ms;
    /* "悬空谓词"（"帮我播放"/"音量调到"）单独给更长的窗口：
     * 这类句子本来就没说完，多等一点是用户期望的；完整句子仍然只等 debounce_ms。 */
    if (g->cfg.cross_session && ug_looks_incomplete(text)) {
        long long wide = now_ms + (long long)g->cfg.cross_session_ms;
        long long cap = now_ms + (long long)g->cfg.max_hold_ms;
        if (wide > g->due_ms) g->due_ms = (wide < cap) ? wide : cap;
    }
    g->merges = 0;
    g->held++;
    return UG_HELD;
}

static int ug_emit(ug_ctx *g, long long now_ms, ug_out *out, const char *why)
{
    if (out != NULL) {
        memset(out, 0, sizeof(*out));
        out->kind = UG_RELEASE;
        ug_copy(out->text, sizeof(out->text), g->text);
        ug_copy(out->session, sizeof(out->session), g->session);
        ug_copy(out->first_event_id, sizeof(out->first_event_id), g->event_id);
        ug_copy(out->last_event_id, sizeof(out->last_event_id), g->last_event_id);
        out->merges = g->merges;
        out->held_ms = (now_ms > g->first_ms) ? (now_ms - g->first_ms) : 0;
        ug_copy(out->why, sizeof(out->why), why != NULL ? why : "timeout");
    }
    g->released++;
    g->have = 0;
    g->session[0] = '\0';
    g->event_id[0] = '\0';
    g->last_event_id[0] = '\0';
    g->text[0] = '\0';
    g->merges = 0;
    return UG_RELEASE;
}

static void ug_extend(ug_ctx *g, long long now_ms)
{
    long long cap = g->first_ms + (long long)g->cfg.max_hold_ms;
    long long want = now_ms + (long long)g->cfg.debounce_ms;

    g->due_ms = (want < cap) ? want : cap;
    g->last_ms = now_ms;
}

/* ---------------- 输入 ---------------- */

int ug_feed(ug_ctx *g, const char *session, const char *event_id,
            const char *text, long long now_ms, ug_out *out)
{
    char nn[UG_TEXT_MAX];
    char nh[UG_TEXT_MAX];
    char merged[UG_TEXT_MAX];
    long long gap;

    if (out != NULL) memset(out, 0, sizeof(*out));
    if (g == NULL) return UG_DROP;
    if (text == NULL || text[0] == '\0') return UG_DROP;

    g->seen++;

    if (!g->cfg.enabled || g->cfg.debounce_ms <= 0) {
        if (out != NULL) {
            memset(out, 0, sizeof(*out));
            out->kind = UG_RELEASE;
            ug_copy(out->text, sizeof(out->text), text);
            ug_copy(out->session, sizeof(out->session), session);
            ug_copy(out->first_event_id, sizeof(out->first_event_id), event_id);
            ug_copy(out->last_event_id, sizeof(out->last_event_id), event_id);
            ug_copy(out->why, sizeof(out->why), "bypass");
        }
        g->released++;
        return UG_RELEASE;
    }

    if (!g->have) {
        snprintf(g->last_detail, sizeof(g->last_detail), "hold session=%s", session ? session : "-");
        return ug_stash(g, session, event_id, text, now_ms);
    }

    ug_norm(text, nn, sizeof(nn));
    ug_norm(g->text, nh, sizeof(nh));

    if (strcmp(g->session, session ? session : "") == 0) {
        /* ---- 同一 session：修订判定 ---- */
        if (strcmp(nn, nh) == 0) {
            g->dropped_dup++;
            snprintf(g->last_detail, sizeof(g->last_detail), "dup same session event=%s",
                     event_id ? event_id : "-");
            if (out != NULL) {
                memset(out, 0, sizeof(*out));
                out->kind = UG_DROP;
                ug_copy(out->why, sizeof(out->why), "dup");
                ug_copy(out->text, sizeof(out->text), text);
            }
            return UG_DROP;
        }
        if (nh[0] != '\0' && strncmp(nn, nh, strlen(nh)) == 0) {
            /* 旧文本是新文本的前缀：新文本是更完整的修订 */
            ug_copy(g->text, sizeof(g->text), text);
            ug_copy(g->last_event_id, sizeof(g->last_event_id), event_id);
            g->merges++;
            g->merged++;
            ug_extend(g, now_ms);
            snprintf(g->last_detail, sizeof(g->last_detail),
                     "revision prefix old=%dB new=%dB merges=%d", (int)strlen(nh),
                     (int)strlen(nn), g->merges);
            return UG_HELD;
        }
        if (nn[0] != '\0' && strncmp(nh, nn, strlen(nn)) == 0) {
            /* 新文本更短，是被截断的中间结果：保留已经更完整的旧文本 */
            g->dropped_dup++;
            ug_extend(g, now_ms);
            snprintf(g->last_detail, sizeof(g->last_detail),
                     "shorter revision ignored old=%dB new=%dB", (int)strlen(nh), (int)strlen(nn));
            if (out != NULL) {
                memset(out, 0, sizeof(*out));
                out->kind = UG_DROP;
                ug_copy(out->why, sizeof(out->why), "dup");
            }
            return UG_DROP;
        }
        if (ef_similar(nh, nn) >= g->cfg.revision_sim) {
            /* 高度相似 = 同一句的再次识别：用最新文本 */
            ug_copy(g->text, sizeof(g->text), text);
            ug_copy(g->last_event_id, sizeof(g->last_event_id), event_id);
            g->merges++;
            g->merged++;
            ug_extend(g, now_ms);
            snprintf(g->last_detail, sizeof(g->last_detail),
                     "revision similar=%d%% merges=%d", ef_similar(nh, nn), g->merges);
            return UG_HELD;
        }
        /* 同一 session 里两句不同的话：先交旧的，再握新的 */
        snprintf(g->last_detail, sizeof(g->last_detail),
                 "separate same session (sim=%d%%)", ef_similar(nh, nn));
        {
            char keep_text[UG_TEXT_MAX];
            char keep_session[UG_ID_MAX];
            char keep_ev[UG_ID_MAX];
            int rc;

            ug_copy(keep_text, sizeof(keep_text), text);
            ug_copy(keep_session, sizeof(keep_session), session);
            ug_copy(keep_ev, sizeof(keep_ev), event_id);
            rc = ug_emit(g, now_ms, out, "separate");
            (void)ug_stash(g, keep_session, keep_ev, keep_text, now_ms);
            return rc;
        }
    }

    /* ---- 不同 session：只有在"悬空谓词 + 短间隔"时才合并 ---- */
    gap = now_ms - g->last_ms;
    if (g->cfg.cross_session && gap >= 0 && gap <= (long long)g->cfg.cross_session_ms &&
        ug_looks_incomplete(g->text)) {
        if (nh[0] != '\0' && nn[0] != '\0' && strncmp(nn, nh, strlen(nh)) == 0) {
            ug_copy(merged, sizeof(merged), text);
        } else {
            /* 直接拼接：ASR 文本本身没有分隔符，拼起来就是原句 */
            if (strlen(g->text) + strlen(text) + 1 < sizeof(merged)) {
                snprintf(merged, sizeof(merged), "%s%s", g->text, text);
            } else {
                ug_copy(merged, sizeof(merged), text);
                g->truncated++;
            }
        }
        ug_copy(g->text, sizeof(g->text), merged);
        ug_copy(g->session, sizeof(g->session), session);
        ug_copy(g->last_event_id, sizeof(g->last_event_id), event_id);
        g->merges++;
        g->cross_merged++;
        ug_extend(g, now_ms);
        snprintf(g->last_detail, sizeof(g->last_detail),
                 "cross session merge gap=%lldms merges=%d", gap, g->merges);
        return UG_HELD;
    }

    /* 不同 session、不合并：先交旧的，再握新的 */
    snprintf(g->last_detail, sizeof(g->last_detail),
             "separate session gap=%lldms dangling=%d", gap, ug_looks_incomplete(g->text));
    {
        char keep_text[UG_TEXT_MAX];
        char keep_session[UG_ID_MAX];
        char keep_ev[UG_ID_MAX];
        int rc;

        ug_copy(keep_text, sizeof(keep_text), text);
        ug_copy(keep_session, sizeof(keep_session), session);
        ug_copy(keep_ev, sizeof(keep_ev), event_id);
        rc = ug_emit(g, now_ms, out, "separate");
        (void)ug_stash(g, keep_session, keep_ev, keep_text, now_ms);
        return rc;
    }
}

int ug_poll(ug_ctx *g, long long now_ms, ug_out *out)
{
    if (out != NULL) memset(out, 0, sizeof(*out));
    if (g == NULL || !g->have) return UG_HELD;
    if (now_ms < g->due_ms) return UG_HELD;
    return ug_emit(g, now_ms, out, "timeout");
}

long long ug_next_deadline(const ug_ctx *g)
{
    if (g == NULL || !g->have) return -1;
    return g->due_ms;
}

/* ---------------- 暂存槽落盘 ---------------- */

static int ug_json_get(const char *buf, const char *key, char *out, size_t cap, int unescape);
static long long ug_json_get_ll(const char *buf, const char *key, long long dflt);

static void ug_json_unescape(const char *src, char *dst, size_t cap)
{
    size_t o = 0;

    while (*src != '\0' && o + 1 < cap) {
        if (*src != '\\') { dst[o++] = *src++; continue; }
        src++;
        switch (*src) {
        case 'n': dst[o++] = '\n'; src++; break;
        case 'r': dst[o++] = '\r'; src++; break;
        case 't': dst[o++] = '\t'; src++; break;
        case 'b': dst[o++] = '\b'; src++; break;
        case 'f': dst[o++] = '\f'; src++; break;
        case '"': dst[o++] = '"'; src++; break;
        case '\\': dst[o++] = '\\'; src++; break;
        case '/': dst[o++] = '/'; src++; break;
        case 'u': {
            unsigned int cp = 0;
            int i;
            src++;
            for (i = 0; i < 4 && src[i] != '\0'; i++) {
                char c = src[i];
                cp <<= 4;
                if (c >= '0' && c <= '9') cp |= (unsigned int)(c - '0');
                else if (c >= 'a' && c <= 'f') cp |= (unsigned int)(c - 'a' + 10);
                else if (c >= 'A' && c <= 'F') cp |= (unsigned int)(c - 'A' + 10);
            }
            src += i;
            if (cp < 0x80 && o + 1 < cap) {
                dst[o++] = (char)cp;
            } else if (cp < 0x800 && o + 2 < cap) {
                dst[o++] = (char)(0xC0 | (cp >> 6));
                dst[o++] = (char)(0x80 | (cp & 0x3F));
            } else if (o + 3 < cap) {
                dst[o++] = (char)(0xE0 | (cp >> 12));
                dst[o++] = (char)(0x80 | ((cp >> 6) & 0x3F));
                dst[o++] = (char)(0x80 | (cp & 0x3F));
            }
            break;
        }
        default:
            src++;
            break;
        }
    }
    dst[o] = '\0';
}

static int ug_json_get(const char *buf, const char *key, char *out, size_t cap, int unescape)
{
    char pat[64];
    const char *p;

    if (out == NULL || cap == 0) return -1;
    out[0] = '\0';
    if (buf == NULL || key == NULL) return -1;
    snprintf(pat, sizeof(pat), "\"%s\":\"", key);
    p = strstr(buf, pat);
    if (p == NULL) return -1;
    p += strlen(pat);
    {
        const char *e = p;
        size_t n;
        char raw[UG_TEXT_MAX * 2];

        while (*e != '\0') {
            if (*e == '\\' && e[1] != '\0') { e += 2; continue; }
            if (*e == '"') break;
            e++;
        }
        if (*e != '"') return -1;
        n = (size_t)(e - p);
        if (n >= sizeof(raw)) n = sizeof(raw) - 1;
        memcpy(raw, p, n);
        raw[n] = '\0';
        if (unescape) ug_json_unescape(raw, out, cap);
        else ug_copy(out, cap, raw);
    }
    return 0;
}

static long long ug_json_get_ll(const char *buf, const char *key, long long dflt)
{
    char pat[64];
    const char *p;

    if (buf == NULL) return dflt;
    snprintf(pat, sizeof(pat), "\"%s\":", key);
    p = strstr(buf, pat);
    if (p == NULL) return dflt;
    p += strlen(pat);
    return (long long)strtoll(p, NULL, 10);
}

int ug_hold_save(const ug_ctx *g, const char *path, char *err, size_t errlen)
{
    char body[UG_TEXT_MAX * 2];
    char esc_text[UG_TEXT_MAX * 2];
    char esc_sess[UG_ID_MAX * 2];
    char esc_ev[UG_ID_MAX * 2];
    char esc_ev2[UG_ID_MAX * 2];
    char tmp[UG_PATH_MAX];
    int fd;
    int n;

    if (g == NULL || path == NULL || path[0] == '\0') return 0;

    if (!g->have) {                         /* 没有暂存 = 删掉旧文件 */
        (void)wu_unlink(path);
        return 0;
    }

    wu_json_escape(esc_text, sizeof(esc_text), g->text);
    wu_json_escape(esc_sess, sizeof(esc_sess), g->session);
    wu_json_escape(esc_ev, sizeof(esc_ev), g->event_id);
    wu_json_escape(esc_ev2, sizeof(esc_ev2), g->last_event_id);

    n = snprintf(body, sizeof(body),
                 "{\"version\":1,\"session\":\"%s\",\"event_id\":\"%s\",\"last_event_id\":\"%s\","
                 "\"text\":\"%s\",\"merges\":%d,\"saved_wall_ms\":%lld,\"held_ms\":%lld}\n",
                 esc_sess, esc_ev, esc_ev2, esc_text, g->merges,
                 (long long)wu_wall_ms(), (long long)(wu_now_ms() - g->first_ms));
    if (n < 0 || (size_t)n >= sizeof(body)) {
        if (err) snprintf(err, errlen, "hold record too large");
        return -1;
    }

    snprintf(tmp, sizeof(tmp), "%s.tmp", path);
    fd = wu_open_wo(tmp);
    if (fd < 0) {
        if (err) snprintf(err, errlen, "hold open failed");
        return -1;
    }
    if (wu_write_all(fd, body, (size_t)n) != 0 || wu_fsync(fd) != 0) {
        wu_close(fd);
        wu_unlink(tmp);
        if (err) snprintf(err, errlen, "hold write/fsync failed");
        return -1;
    }
    wu_close(fd);
    if (wu_rename_replace(tmp, path) != 0) {
        wu_unlink(tmp);
        if (err) snprintf(err, errlen, "hold rename failed");
        return -1;
    }
    return 0;
}

int ug_hold_restore(ug_ctx *g, const char *path, long long now_ms, ug_out *out)
{
    char buf[UG_TEXT_MAX * 3];
    size_t len = 0;
    long long saved_wall, age;
    int kind = UG_HELD;

    if (out != NULL) memset(out, 0, sizeof(*out));
    if (g == NULL || path == NULL || path[0] == '\0') return UG_HELD;
    if (wu_read_file(path, buf, sizeof(buf), &len) != 0) return UG_HELD;

    saved_wall = ug_json_get_ll(buf, "saved_wall_ms", 0);
    age = (saved_wall > 0) ? (wu_wall_ms() - saved_wall) : 0;
    if (age < 0) age = 0;

    if (age > (long long)g->cfg.max_hold_ms * 2) {
        /* 太久以前的事：允许丢弃（宁可丢一句，也不要重启后突然冒出一句旧指令） */
        g->expired_on_restore++;
        snprintf(g->last_detail, sizeof(g->last_detail), "restore expired age=%lldms", age);
        (void)wu_unlink(path);
        return UG_HELD;
    }

    if (ug_json_get(buf, "text", g->text, sizeof(g->text), 1) != 0 || g->text[0] == '\0') {
        (void)wu_unlink(path);
        return UG_HELD;
    }
    (void)ug_json_get(buf, "session", g->session, sizeof(g->session), 1);
    (void)ug_json_get(buf, "event_id", g->event_id, sizeof(g->event_id), 1);
    (void)ug_json_get(buf, "last_event_id", g->last_event_id, sizeof(g->last_event_id), 1);
    g->merges = (int)ug_json_get_ll(buf, "merges", 0);
    g->have = 1;
    g->first_ms = now_ms - (long long)ug_json_get_ll(buf, "held_ms", 0);
    g->last_ms = now_ms;
    g->due_ms = now_ms;              /* 重启已经花掉时间了，立刻提交 */
    g->restored++;
    snprintf(g->last_detail, sizeof(g->last_detail), "restore from disk age=%lldms", age);

    (void)wu_unlink(path);
    if (out != NULL) {
        out->kind = UG_HELD;         /* 由调用方下一次 ug_poll 立即取走 */
        ug_copy(out->why, sizeof(out->why), "restore");
    }
    return kind;
}
