/*
 * talk_tap.c -- 见 talk_tap.h
 *
 * 只读观察原厂 SessionManager 的日志行。没有任何写操作、没有 hook、没有线程。
 */
#include "talk_tap.h"

#include <stdio.h>
#include <string.h>

/* 单次读取上限：防止一次把几十MB日志读进内存（tap 正常一轮只有几行） */
#define TT_READ_MAX  (64 * 1024)

/* 只接受纯十进制（调用前已确认首字符是数字），不引入 stdlib 依赖差异 */
static int atoi_safe(const char *s)
{
    int v = 0;
    if (s == NULL) return 0;
    while (*s >= '0' && *s <= '9') { v = v * 10 + (*s - '0'); s++; }
    return v;
}

static void tt_copy(char *dst, size_t cap, const char *src)
{
    size_t n;
    if (dst == NULL || cap == 0) return;
    if (src == NULL) { dst[0] = '\0'; return; }
    n = strlen(src);
    if (n >= cap) n = cap - 1;
    memcpy(dst, src, n);
    dst[n] = '\0';
}

void tt_init(tt_ctx *t)
{
    if (t == NULL) return;
    memset(t, 0, sizeof(*t));
    t->last_kind = TT_EV_NONE;
    tt_copy(t->last_detail, sizeof(t->last_detail), "init");
}

const char *tt_kind_name(int kind)
{
    switch (kind) {
    case TT_EV_WAKE:         return "wake";
    case TT_EV_LISTEN_START: return "listen_start";
    case TT_EV_TALK_STOP:    return "talk_stop";
    case TT_EV_LISTEN_STOP:  return "listen_stop";
    case TT_EV_EXIT_TALK:    return "exit_talk";
    default:                 return "none";
    }
}

/*
 * 在 key 之后找第一个数字串。
 * 允许 key 与数字之间出现 " = "、"="、":"、空格、"[" 等分隔（原厂日志写法不统一），
 * 但最多跳过 12 个字符，避免把后续无关数字误当成本字段值。
 */
int tt_field_digits(const char *line, const char *key, char *out, size_t cap)
{
    const char *p;
    size_t o = 0;
    int skip = 0;

    if (line == NULL || key == NULL || out == NULL || cap == 0) return 0;
    out[0] = '\0';
    p = strstr(line, key);
    if (p == NULL) return 0;
    p += strlen(key);
    while (*p != '\0' && skip < 12 && (*p < '0' || *p > '9')) { p++; skip++; }
    if (*p < '0' || *p > '9') return 0;
    while (*p >= '0' && *p <= '9' && o + 1 < cap) out[o++] = *p++;
    out[o] = '\0';
    return o > 0 ? 1 : 0;
}

/*
 * 取短文本字段：从 key 之后跳过空白/等号/冒号/方括号/引号，读到
 * 逗号/右括号/引号/行尾为止（允许值里带空格，例如 wakeupWord=tian mao jing ling）。
 * 只用于 wakeupWord 这种调试字段。
 */
int tt_field_text(const char *line, const char *key, char *out, size_t cap)
{
    const char *p;
    size_t o = 0;

    if (line == NULL || key == NULL || out == NULL || cap == 0) return 0;
    out[0] = '\0';
    p = strstr(line, key);
    if (p == NULL) return 0;
    p += strlen(key);
    while (*p == ' ' || *p == '=' || *p == ':' || *p == '[' || *p == '"') p++;
    while (*p != '\0' && *p != ',' && *p != ']' && *p != ')' && *p != '"' &&
           *p != '\n' && *p != '\r' && o + 1 < cap) {
        out[o++] = *p++;
    }
    while (o > 0 && out[o - 1] == ' ') out[--o] = '\0';
    out[o] = '\0';
    return o > 0 ? 1 : 0;
}

int tt_parse_line(const char *line, tt_event *ev)
{
    int kind = TT_EV_NONE;

    if (line == NULL || ev == NULL) return 0;
    memset(ev, 0, sizeof(*ev));
    ev->kind = TT_EV_NONE;
    ev->wake_type = -1;
    ev->stop_reason = -1;

    /* 顺序有意义：onStartTalk / onStopTalk 与 onListenStarted / onStopListen 互不包含 */
    if (strstr(line, "onStartTalk") != NULL)            kind = TT_EV_WAKE;
    else if (strstr(line, "onStopTalk") != NULL)        kind = TT_EV_TALK_STOP;
    else if (strstr(line, "onListenStarted") != NULL)   kind = TT_EV_LISTEN_START;
    else if (strstr(line, "onListenStart") != NULL)     kind = TT_EV_LISTEN_START;
    else if (strstr(line, "exitTalk") != NULL)          kind = TT_EV_EXIT_TALK;
    else if (strstr(line, "onStopListen") != NULL)      kind = TT_EV_LISTEN_STOP;
    else if (strstr(line, "stopListen") != NULL)        kind = TT_EV_LISTEN_STOP;

    if (kind == TT_EV_NONE) return 0;

    ev->kind = kind;
    switch (kind) {
    case TT_EV_WAKE: {
        char tmp[24];
        if (tt_field_digits(line, "sessionId", ev->session, sizeof(ev->session))) {
            /* ok */
        }
        if (tt_field_digits(line, "wakeupType", tmp, sizeof(tmp))) {
            ev->wake_type = atoi_safe(tmp);
        }
        (void)tt_field_text(line, "wakeupWord", ev->word, sizeof(ev->word));
        break;
    }
    case TT_EV_TALK_STOP: {
        char tmp[24];
        if (tt_field_digits(line, "mStopTalkReason", tmp, sizeof(tmp))) {
            ev->stop_reason = atoi_safe(tmp);
        }
        /* 有些版本把 session 打在 onStopTalk 行里 */
        (void)tt_field_digits(line, "session", ev->session, sizeof(ev->session));
        break;
    }
    default:
        break;
    }
    return 1;
}

int tt_poll(tt_ctx *t, const char *path, tt_event *out, int cap, char *err, size_t errlen)
{
    FILE *f;
    long size;
    char buf[TT_READ_MAX];
    size_t got;
    long long consumed;
    size_t pos;
    int n = 0;

    if (t == NULL || path == NULL || path[0] == '\0') {
        if (err) snprintf(err, errlen, "tap path empty");
        return -1;
    }
    if (out == NULL || cap <= 0) {
        if (err) snprintf(err, errlen, "tap batch invalid");
        return -1;
    }

    f = fopen(path, "rb");
    if (f == NULL) {
        if (err) snprintf(err, errlen, "tap file not readable: %s", path);
        return -1;
    }
    if (fseek(f, 0L, SEEK_END) != 0) {
        fclose(f);
        if (err) snprintf(err, errlen, "tap seek end failed");
        return -1;
    }
    size = ftell(f);
    if (size < 0) {
        fclose(f);
        if (err) snprintf(err, errlen, "tap tell failed");
        return -1;
    }
    if ((long long)size < t->offset) {
        /* 文件被截断/重建（logcat 重启、日志轮转）：从头重新读 */
        t->offset = 0;
        t->resets++;
    }
    if ((long long)size == t->offset) {
        fclose(f);
        return 0;
    }
    if (fseek(f, (long)t->offset, SEEK_SET) != 0) {
        fclose(f);
        if (err) snprintf(err, errlen, "tap seek offset failed");
        return -1;
    }
    got = fread(buf, 1, sizeof(buf), f);
    fclose(f);

    if (got == 0) {
        if (err) snprintf(err, errlen, "tap read returned 0");
        return -1;
    }

    consumed = 0;
    pos = 0;
    while (pos < got && n < cap) {
        char line[TT_LINE_MAX];
        size_t len = 0;
        size_t start = pos;
        tt_event ev;

        while (pos < got && buf[pos] != '\n') pos++;
        if (pos >= got) break;                 /* 半行：不消费，等下一拍凑齐 */
        len = pos - start;
        pos++;                                  /* 吃掉换行 */
        consumed = (long long)pos;

        if (len >= sizeof(line)) {
            t->lines++;
            t->malformed++;
            tt_copy(t->last_detail, sizeof(t->last_detail), "line too long (dropped)");
            continue;
        }
        memcpy(line, buf + start, len);
        line[len] = '\0';
        if (len > 0 && line[len - 1] == '\r') line[len - 1] = '\0';

        t->lines++;
        if (tt_parse_line(line, &ev)) {
            t->recognized++;
            switch (ev.kind) {
            case TT_EV_WAKE:         t->wakes++;         break;
            case TT_EV_LISTEN_START: t->listen_starts++; break;
            case TT_EV_TALK_STOP:    t->talk_stops++;    break;
            case TT_EV_LISTEN_STOP:  t->listen_stops++;  break;
            case TT_EV_EXIT_TALK:    t->exit_talks++;    break;
            default: break;
            }
            t->last_kind = ev.kind;
            tt_copy(t->last_detail, sizeof(t->last_detail),
                    line);                      /* 只留原始行，便于对账（不含密钥） */
            if (ev.session[0] != '\0') {
                tt_copy(t->last_session, sizeof(t->last_session), ev.session);
            } else if (ev.kind == TT_EV_WAKE) {
                t->malformed++;                /* 唤醒行没有 sessionId：记异常，不猜 */
            }
            if (ev.session[0] == '\0' && ev.kind != TT_EV_WAKE) {
                tt_copy(ev.session, sizeof(ev.session), t->last_session);
            }
            out[n++] = ev;
        } else {
            t->ignored++;
        }
    }
    /* 只消费到最后一个完整行；剩余半行下拍继续 */
    t->offset += consumed;
    return n;
}
