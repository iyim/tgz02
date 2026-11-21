/*
 * conv_context.c -- T7-01：见 conv_context.h
 *
 * 实现纪律：
 *   - 无 malloc/realloc：全部固定数组（Worker 是单线程，静态缓冲足够）；
 *   - 不打印任何消息正文（日志/状态里只出现条数、字节数和错误类别）；
 *   - 写文件 = tmp + fsync + rename + fsync(dir)，权限 0600；
 *   - 解析失败一律"留档 + 清空 + 继续"，绝不 abort。
 */
#include "conv_context.h"
#include "worker_util.h"

#include <stdio.h>
#include <string.h>

/* ==========================================================================
 * 1. 配置与内部工具
 * ======================================================================== */

void cv_defaults(cv_cfg *c)
{
    if (c == NULL) return;
    memset(c, 0, sizeof(*c));
    c->enabled = 0;                                 /* 默认关闭：行为与 T5-06C 一致 */
    c->max_messages = CV_DEFAULT_MAX_MESSAGES;
    c->file[0] = '\0';
}

static int cv_effective_max(const cv_ctx *ctx)
{
    int max = (ctx->cfg.max_messages > 0) ? ctx->cfg.max_messages : CV_DEFAULT_MAX_MESSAGES;

    if (max > CV_MAX_MESSAGES_CAP) max = CV_MAX_MESSAGES_CAP;
    if (max < 2) max = 2;
    if ((max & 1) != 0) max--;                      /* 只保留成对的消息，避免孤立轮次 */
    return max;
}

static int cv_role_is(const cv_msg *m, const char *role)
{
    return m != NULL && strcmp(m->role, role) == 0;
}

static void cv_drop_front(cv_ctx *ctx, int n)
{
    if (ctx == NULL || n <= 0 || ctx->count <= 0) return;
    if (n > ctx->count) n = ctx->count;
    if (n < ctx->count) {
        memmove(&ctx->msgs[0], &ctx->msgs[n],
                sizeof(cv_msg) * (size_t)(ctx->count - n));
    }
    ctx->count -= n;
    ctx->evicted_messages += (unsigned long long)n;
}

/*
 * 淘汰：超出上限时从最早的**完整轮次**（user+assistant 成对）开始丢。
 * 头部若是孤立 assistant（异常残留），单独丢掉它，不留悬空回复。
 */
static void cv_evict(cv_ctx *ctx)
{
    int max;

    if (ctx == NULL) return;
    max = cv_effective_max(ctx);

    while (ctx->count > max) {
        int drop = 1;                               /* 头部 user 没有配对的 assistant */

        if (ctx->count >= 2 && cv_role_is(&ctx->msgs[0], "user") &&
            cv_role_is(&ctx->msgs[1], "assistant")) {
            drop = 2;                               /* 正常轮次 */
        } else if (cv_role_is(&ctx->msgs[0], "assistant")) {
            drop = 1;                               /* 孤立回复：先清掉 */
        }
        cv_drop_front(ctx, drop);
    }

    while (ctx->count > 0 && cv_role_is(&ctx->msgs[0], "assistant")) {
        cv_drop_front(ctx, 1);
    }
}

static int cv_push(cv_ctx *ctx, const char *role, const char *text)
{
    size_t len;
    cv_msg *m;

    if (ctx == NULL || role == NULL || text == NULL) return -1;
    len = strlen(text);
    if (len == 0) return -1;
    if (len >= CV_TEXT_MAX) return -1;
    if (wu_utf8_validate(text, len) != 0) return -1;

    if (!ctx->cfg.enabled) return -1;                /* 关闭时不记录历史 */

    if (ctx->count >= CV_MAX_MESSAGES_HARD) cv_evict(ctx);
    if (ctx->count >= CV_MAX_MESSAGES_HARD) {
        cv_drop_front(ctx, 2);
        if (ctx->count >= CV_MAX_MESSAGES_HARD) cv_drop_front(ctx, 1);
    }
    if (ctx->count >= CV_MAX_MESSAGES_HARD) return -1;

    m = &ctx->msgs[ctx->count];
    memset(m, 0, sizeof(*m));
    snprintf(m->role, sizeof(m->role), "%s", role);
    memcpy(m->text, text, len);
    m->text[len] = '\0';
    m->bytes = (int)len;
    ctx->count++;
    return 0;
}

/* ==========================================================================
 * 2. 极简 JSON 解析（只认本模块自己写出的结构，坏数据一律报错）
 * ======================================================================== */

typedef struct {
    const char *p;
    const char *end;
    int         err;
} jp;

static void jp_ws(jp *s)
{
    while (s->p < s->end &&
           (*s->p == ' ' || *s->p == '\t' || *s->p == '\r' || *s->p == '\n')) {
        s->p++;
    }
}

static int jp_expect(jp *s, char c)
{
    if (s->p >= s->end || *s->p != c) {
        s->err = 1;
        return -1;
    }
    s->p++;
    return 0;
}

static size_t cv_put_utf8(unsigned int cp, char *dst, size_t room)
{
    if (cp < 0x80) {
        if (room < 1) return 0;
        dst[0] = (char)cp;
        return 1;
    }
    if (cp < 0x800) {
        if (room < 2) return 0;
        dst[0] = (char)(0xC0 | (cp >> 6));
        dst[1] = (char)(0x80 | (cp & 0x3F));
        return 2;
    }
    if (cp < 0x10000) {
        if (room < 3) return 0;
        dst[0] = (char)(0xE0 | (cp >> 12));
        dst[1] = (char)(0x80 | ((cp >> 6) & 0x3F));
        dst[2] = (char)(0x80 | (cp & 0x3F));
        return 3;
    }
    if (room < 4) return 0;
    dst[0] = (char)(0xF0 | (cp >> 18));
    dst[1] = (char)(0x80 | ((cp >> 12) & 0x3F));
    dst[2] = (char)(0x80 | ((cp >> 6) & 0x3F));
    dst[3] = (char)(0x80 | (cp & 0x3F));
    return 4;
}

static int jp_hex4(jp *s, unsigned int *out)
{
    unsigned int v = 0;
    int i;

    if (s->end - s->p < 4) {
        s->err = 1;
        return -1;
    }
    for (i = 0; i < 4; i++) {
        char c = s->p[i];
        v <<= 4;
        if (c >= '0' && c <= '9') v |= (unsigned int)(c - '0');
        else if (c >= 'a' && c <= 'f') v |= (unsigned int)(c - 'a' + 10);
        else if (c >= 'A' && c <= 'F') v |= (unsigned int)(c - 'A' + 10);
        else {
            s->err = 1;
            return -1;
        }
    }
    s->p += 4;
    *out = v;
    return 0;
}

/* 解析一个 JSON 字符串到 out（含转义解码）；超长/坏转义 -> err */
static int jp_string(jp *s, char *out, size_t cap)
{
    size_t o = 0;

    if (out == NULL || cap == 0) {
        s->err = 1;
        return -1;
    }
    if (jp_expect(s, '"') != 0) return -1;

    while (s->p < s->end) {
        unsigned char c = (unsigned char)*s->p++;

        if (c == '"') {
            out[o] = '\0';
            return 0;
        }
        if (c == '\\') {
            char esc;
            if (s->p >= s->end) {
                s->err = 1;
                return -1;
            }
            esc = *s->p++;
            if (esc == '"' || esc == '\\' || esc == '/') {
                if (o + 1 >= cap) { s->err = 1; return -1; }
                out[o++] = esc;
            } else if (esc == 'b' || esc == 'f' || esc == 'n' || esc == 'r' || esc == 't') {
                if (o + 1 >= cap) { s->err = 1; return -1; }
                out[o++] = (esc == 'b') ? '\b' : (esc == 'f') ? '\f'
                         : (esc == 'n') ? '\n' : (esc == 'r') ? '\r' : '\t';
            } else if (esc == 'u') {
                unsigned int cp = 0;
                size_t n;
                if (jp_hex4(s, &cp) != 0) return -1;
                if (cp >= 0xD800 && cp <= 0xDBFF) {
                    unsigned int lo = 0;
                    if (s->end - s->p < 2 || s->p[0] != '\\' || s->p[1] != 'u') {
                        s->err = 1;
                        return -1;
                    }
                    s->p += 2;
                    if (jp_hex4(s, &lo) != 0) return -1;
                    if (lo < 0xDC00 || lo > 0xDFFF) {
                        s->err = 1;
                        return -1;
                    }
                    cp = 0x10000u + ((cp - 0xD800u) << 10) + (lo - 0xDC00u);
                } else if (cp >= 0xDC00 && cp <= 0xDFFF) {
                    s->err = 1;
                    return -1;
                }
                n = cv_put_utf8(cp, out + o, cap - o);
                if (n == 0) { s->err = 1; return -1; }
                o += n;
            } else {
                s->err = 1;
                return -1;
            }
            continue;
        }
        if (c < 0x20) {                              /* 原始控制字符：非法 JSON */
            s->err = 1;
            return -1;
        }
        if (o + 1 >= cap) { s->err = 1; return -1; }
        out[o++] = (char)c;
    }
    s->err = 1;
    return -1;
}

static int jp_skip_value(jp *s, int depth);

static int jp_skip_array(jp *s, int depth)
{
    if (jp_expect(s, '[') != 0) return -1;
    jp_ws(s);
    if (s->p < s->end && *s->p == ']') {
        s->p++;
        return 0;
    }
    for (;;) {
        if (jp_skip_value(s, depth + 1) != 0) return -1;
        jp_ws(s);
        if (s->p < s->end && *s->p == ',') { s->p++; continue; }
        if (s->p < s->end && *s->p == ']') { s->p++; return 0; }
        s->err = 1;
        return -1;
    }
}

static int jp_skip_object(jp *s, int depth)
{
    char key[64];

    if (jp_expect(s, '{') != 0) return -1;
    jp_ws(s);
    if (s->p < s->end && *s->p == '}') {
        s->p++;
        return 0;
    }
    for (;;) {
        jp_ws(s);
        if (jp_string(s, key, sizeof(key)) != 0) return -1;
        jp_ws(s);
        if (jp_expect(s, ':') != 0) return -1;
        jp_ws(s);
        if (jp_skip_value(s, depth + 1) != 0) return -1;
        jp_ws(s);
        if (s->p < s->end && *s->p == ',') { s->p++; continue; }
        if (s->p < s->end && *s->p == '}') { s->p++; return 0; }
        s->err = 1;
        return -1;
    }
}

static int jp_skip_value(jp *s, int depth)
{
    char scratch[64];

    if (depth > 8) {
        s->err = 1;
        return -1;
    }
    jp_ws(s);
    if (s->p >= s->end) {
        s->err = 1;
        return -1;
    }
    if (*s->p == '"') return jp_string(s, scratch, sizeof(scratch));
    if (*s->p == '{') return jp_skip_object(s, depth);
    if (*s->p == '[') return jp_skip_array(s, depth);

    /* 数字 / true / false / null */
    {
        const char *start = s->p;
        while (s->p < s->end && *s->p != ',' && *s->p != '}' && *s->p != ']' &&
               *s->p != ' ' && *s->p != '\t' && *s->p != '\r' && *s->p != '\n') {
            s->p++;
        }
        if (s->p == start) {
            s->err = 1;
            return -1;
        }
    }
    return 0;
}

/* 解析一条 {"role":..,"content":..}；文本/角色非法一律报错（由调用方按损坏处理） */
static int cv_parse_msg(jp *s, cv_msg *m)
{
    char role[CV_ROLE_MAX];
    char text[CV_TEXT_MAX];
    int have_role = 0;
    int have_text = 0;

    memset(m, 0, sizeof(*m));
    role[0] = '\0';
    text[0] = '\0';

    if (jp_expect(s, '{') != 0) return -1;
    jp_ws(s);
    if (s->p < s->end && *s->p == '}') {
        s->err = 1;
        return -1;
    }
    for (;;) {
        char key[32];

        jp_ws(s);
        if (jp_string(s, key, sizeof(key)) != 0) return -1;
        jp_ws(s);
        if (jp_expect(s, ':') != 0) return -1;
        jp_ws(s);
        if (strcmp(key, "role") == 0) {
            if (jp_string(s, role, sizeof(role)) != 0) return -1;
            have_role = 1;
        } else if (strcmp(key, "content") == 0) {
            if (jp_string(s, text, sizeof(text)) != 0) return -1;
            have_text = 1;
        } else if (jp_skip_value(s, 1) != 0) {
            return -1;
        }
        jp_ws(s);
        if (s->p < s->end && *s->p == ',') { s->p++; continue; }
        if (s->p < s->end && *s->p == '}') { s->p++; break; }
        s->err = 1;
        return -1;
    }

    if (!have_role || !have_text) {
        s->err = 1;
        return -1;
    }
    if (!(strcmp(role, "user") == 0 || strcmp(role, "assistant") == 0)) {
        s->err = 1;
        return -1;
    }
    if (text[0] == '\0') {
        s->err = 1;
        return -1;
    }
    if (wu_utf8_validate(text, strlen(text)) != 0) {
        s->err = 1;
        return -1;
    }
    snprintf(m->role, sizeof(m->role), "%s", role);
    snprintf(m->text, sizeof(m->text), "%s", text);
    m->bytes = (int)strlen(m->text);
    return 0;
}

static int cv_parse_msgs(cv_ctx *ctx, jp *s)
{
    if (jp_expect(s, '[') != 0) return -1;
    jp_ws(s);
    ctx->count = 0;
    if (s->p < s->end && *s->p == ']') {
        s->p++;
        return 0;
    }
    for (;;) {
        cv_msg m;
        if (ctx->count >= CV_MAX_MESSAGES_HARD) {
            s->err = 1;
            return -1;
        }
        jp_ws(s);
        if (cv_parse_msg(s, &m) != 0) return -1;
        ctx->msgs[ctx->count++] = m;
        jp_ws(s);
        if (s->p < s->end && *s->p == ',') { s->p++; continue; }
        if (s->p < s->end && *s->p == ']') { s->p++; return 0; }
        s->err = 1;
        return -1;
    }
}

static int cv_parse(cv_ctx *ctx, const char *buf, size_t len)
{
    jp s;

    s.p = buf;
    s.end = buf + len;
    s.err = 0;
    ctx->count = 0;

    jp_ws(&s);
    if (jp_expect(&s, '{') != 0) return -1;
    jp_ws(&s);
    if (s.p < s.end && *s.p == '}') {
        s.p++;
        return 0;
    }
    for (;;) {
        char key[32];

        jp_ws(&s);
        if (jp_string(&s, key, sizeof(key)) != 0) return -1;
        jp_ws(&s);
        if (jp_expect(&s, ':') != 0) return -1;
        jp_ws(&s);
        if (strcmp(key, "messages") == 0) {
            if (cv_parse_msgs(ctx, &s) != 0) return -1;
        } else if (jp_skip_value(&s, 0) != 0) {
            return -1;
        }
        jp_ws(&s);
        if (s.p < s.end && *s.p == ',') { s.p++; continue; }
        if (s.p < s.end && *s.p == '}') { s.p++; break; }
        return -1;
    }
    jp_ws(&s);
    if (s.p != s.end) return -1;                     /* 尾部垃圾也算损坏 */
    return 0;
}

/* ==========================================================================
 * 3. 装载 / 落盘
 * ======================================================================== */

static void cv_mark_corrupt(cv_ctx *ctx, const char *why)
{
    char backup[CV_PATH_MAX + 16];

    ctx->count = 0;
    ctx->corrupt_recoveries++;
    snprintf(ctx->last_error, sizeof(ctx->last_error), "%s", why);
    ctx->last_load_state = CV_LOAD_RECOVERED;

    /* 留档（best-effort）：改名成 *.corrupt，下一次写入从干净文件开始 */
    if (ctx->cfg.file[0] != '\0' &&
        snprintf(backup, sizeof(backup), "%s.corrupt", ctx->cfg.file) < (int)sizeof(backup)) {
        (void)wu_unlink(backup);
        (void)wu_rename_replace(ctx->cfg.file, backup);
    }
}

int cv_init(cv_ctx *ctx, const cv_cfg *cfg)
{
    static char buf[CV_FILE_MAX + 1];       /* 单线程进程；避免把 512KB 放栈上 */
    size_t len = 0;
    long long size;

    if (ctx == NULL) return -1;
    memset(ctx, 0, sizeof(*ctx));
    if (cfg != NULL) ctx->cfg = *cfg;
    else cv_defaults(&ctx->cfg);
    if (ctx->cfg.max_messages > CV_MAX_MESSAGES_CAP) ctx->cfg.max_messages = CV_MAX_MESSAGES_CAP;
    ctx->inited = 1;
    ctx->last_load_state = CV_LOAD_DISABLED;

    if (!ctx->cfg.enabled) return 0;                 /* 关闭：不读不写 */
    if (ctx->cfg.file[0] == '\0') {
        ctx->last_load_state = CV_LOAD_ABSENT;
        return 0;
    }

    size = wu_file_size(ctx->cfg.file);
    if (size < 0) {
        ctx->last_load_state = CV_LOAD_ABSENT;        /* 首次运行 */
        return 0;
    }
    if (size == 0 || size > CV_FILE_MAX) {
        cv_mark_corrupt(ctx, size == 0 ? "context file empty" : "context file too large");
        return 0;
    }
    if (wu_read_file(ctx->cfg.file, buf, sizeof(buf), &len) != 0) {
        ctx->last_load_state = CV_LOAD_FAILED;
        snprintf(ctx->last_error, sizeof(ctx->last_error), "context file read failed");
        return 0;
    }
    if (cv_parse(ctx, buf, len) != 0) {
        cv_mark_corrupt(ctx, "context file corrupt (json)");
        return 0;
    }

    cv_evict(ctx);                                   /* 配置可能变小了 */
    ctx->loads++;
    ctx->last_load_state = CV_LOAD_OK;
    return 0;
}

int cv_save(cv_ctx *ctx, char *err, size_t errlen)
{
    static char buf[CV_FILE_MAX];
    static char esc[CV_TEXT_MAX * 6 + 8];
    char tmp[CV_PATH_MAX + 8];
    char dir[CV_PATH_MAX];
    size_t o = 0;
    int i, n, fd;

    if (ctx == NULL) return -1;
    if (!ctx->cfg.enabled || ctx->cfg.file[0] == '\0') return 0;   /* 只留内存 */

    if (snprintf(tmp, sizeof(tmp), "%s.tmp", ctx->cfg.file) >= (int)sizeof(tmp)) {
        if (err) snprintf(err, errlen, "context temp path too long");
        ctx->save_errors++;
        return -1;
    }

    n = snprintf(buf + o, sizeof(buf) - o, "{\"version\":1,\"messages\":[");
    if (n < 0 || (size_t)n >= sizeof(buf) - o) goto too_big;
    o += (size_t)n;

    for (i = 0; i < ctx->count; i++) {
        wu_json_escape(esc, sizeof(esc), ctx->msgs[i].text);
        n = snprintf(buf + o, sizeof(buf) - o, "%s{\"role\":\"%s\",\"content\":\"%s\"}",
                     (i == 0) ? "" : ",", ctx->msgs[i].role, esc);
        if (n < 0 || (size_t)n >= sizeof(buf) - o) goto too_big;
        o += (size_t)n;
    }
    n = snprintf(buf + o, sizeof(buf) - o, "]}\n");
    if (n < 0 || (size_t)n >= sizeof(buf) - o) goto too_big;
    o += (size_t)n;

    wu_dir_name(ctx->cfg.file, dir, sizeof(dir));
    if (dir[0] != '\0' && strcmp(dir, ".") != 0) (void)wu_mkdir_p(dir);

    fd = wu_open_wo(tmp);
    if (fd < 0) {
        if (err) snprintf(err, errlen, "context temp open failed");
        ctx->save_errors++;
        snprintf(ctx->last_error, sizeof(ctx->last_error), "context temp open failed");
        return -1;
    }
    if (wu_write_all(fd, buf, o) != 0 || wu_fsync(fd) != 0) {
        wu_close(fd);
        wu_unlink(tmp);
        if (err) snprintf(err, errlen, "context write/fsync failed");
        ctx->save_errors++;
        snprintf(ctx->last_error, sizeof(ctx->last_error), "context write/fsync failed");
        return -1;
    }
    wu_close(fd);

    if (wu_rename_replace(tmp, ctx->cfg.file) != 0) {
        wu_unlink(tmp);
        if (err) snprintf(err, errlen, "context rename failed");
        ctx->save_errors++;
        snprintf(ctx->last_error, sizeof(ctx->last_error), "context rename failed");
        return -1;
    }
    (void)wu_fsync_dir(dir);
    ctx->saves++;
    return 0;

too_big:
    if (err) snprintf(err, errlen, "context file buffer too small");
    ctx->save_errors++;
    snprintf(ctx->last_error, sizeof(ctx->last_error), "context file buffer too small");
    return -1;
}

/* ==========================================================================
 * 4. 对外接口
 * ======================================================================== */

int cv_add_user(cv_ctx *ctx, const char *text)
{
    return cv_push(ctx, "user", text);
}

int cv_add_assistant(cv_ctx *ctx, const char *text)
{
    return cv_push(ctx, "assistant", text);
}

int cv_commit_turn(cv_ctx *ctx, const char *user_text, const char *assistant_text)
{
    char err[CV_ERR_MAX];
    int before;

    if (ctx == NULL) return -1;
    if (!ctx->cfg.enabled) return 0;                 /* 关闭：不记录 */

    before = ctx->count;
    if (cv_add_user(ctx, user_text) != 0 || cv_add_assistant(ctx, assistant_text) != 0) {
        /* 任一条非法：整轮回滚，绝不留下半轮 */
        while (ctx->count > before) ctx->count--;
        return -1;
    }
    cv_evict(ctx);
    ctx->turns_committed++;

    err[0] = '\0';
    if (cv_save(ctx, err, sizeof(err)) != 0) return 1;
    return 0;
}

int cv_clear(cv_ctx *ctx)
{
    if (ctx == NULL) return -1;
    ctx->count = 0;
    if (ctx->cfg.file[0] != '\0') (void)wu_unlink(ctx->cfg.file);
    ctx->last_load_state = CV_LOAD_ABSENT;
    return 0;
}

static int cv_append_item(char *out, size_t cap, size_t *o, int *first,
                          const char *role, const char *text)
{
    static char esc[CV_TEXT_MAX * 6 + 8];
    size_t need;

    wu_json_escape(esc, sizeof(esc), text);
    need = strlen(esc) + strlen(role) + strlen("{\"role\":\"\",\"content\":\"\"}") +
           (size_t)(*first ? 0 : 1) + 2 /* ']' + NUL */;
    if (*o + need > cap) return -1;

    snprintf(out + *o, cap - *o, "%s{\"role\":\"%s\",\"content\":\"%s\"}",
             (*first != 0) ? "" : ",", role, esc);
    *o = strlen(out);
    *first = 0;
    return 0;
}

int cv_build_messages(cv_ctx *ctx, const char *current_user,
                      char *out, size_t cap, char *err, size_t errlen)
{
    int start = 0;
    int count_hist = 0;
    int use_ctx = 0;

    if (out == NULL || cap < 4) {
        if (err) snprintf(err, errlen, "messages buffer unavailable");
        return -1;
    }
    out[0] = '\0';
    if (current_user != NULL && current_user[0] == '\0') current_user = NULL;

    use_ctx = (ctx != NULL && ctx->inited && ctx->cfg.enabled);
    if (ctx == NULL || !ctx->inited) {
        if (current_user == NULL) {
            if (err) snprintf(err, errlen, "no messages");
            return 0;
        }
    }
    if (!use_ctx && current_user == NULL) {
        if (err) snprintf(err, errlen, "no messages");
        return 0;
    }

    if (use_ctx) {
        cv_evict(ctx);
        count_hist = ctx->count;
    }

    for (;;) {
        size_t o = 0;
        int first = 1;
        int i;
        int produced = 0;

        if (o + 2 > cap) break;
        out[o++] = '[';
        out[o] = '\0';

        for (i = start; i < count_hist; i++) {
            if (cv_append_item(out, cap, &o, &first,
                               ctx->msgs[i].role, ctx->msgs[i].text) != 0) {
                produced = -1;
                break;
            }
            produced++;
        }
        if (produced >= 0 && current_user != NULL) {
            if (cv_append_item(out, cap, &o, &first, "user", current_user) != 0) {
                produced = -1;
            } else {
                produced++;
            }
        }
        if (produced < 0) {
            /* 放不下：从最早的轮次开始少发，绝不截断单条正文 */
            if (count_hist - start >= 2) {
                start += 2;
                if (ctx != NULL) ctx->size_dropped += 2;
                continue;
            }
            if (err) snprintf(err, errlen, "messages do not fit in %d bytes", (int)cap);
            out[0] = '\0';
            return -1;
        }
        if (o + 2 > cap) {
            if (err) snprintf(err, errlen, "messages do not fit in %d bytes", (int)cap);
            out[0] = '\0';
            return -1;
        }
        out[o++] = ']';
        out[o] = '\0';
        return produced;
    }

    if (err) snprintf(err, errlen, "messages do not fit in %d bytes", (int)cap);
    return -1;
}

int cv_turn_count(const cv_ctx *ctx)
{
    int i;
    int turns = 0;

    if (ctx == NULL) return 0;
    for (i = 0; i + 1 < ctx->count; i++) {
        if (cv_role_is(&ctx->msgs[i], "user") && cv_role_is(&ctx->msgs[i + 1], "assistant")) {
            turns++;
            i++;
        }
    }
    return turns;
}
