/*
 * deepseek_provider.c -- T5-06C：DeepSeek Chat Completions（非流式）真实 Provider
 *
 * 结构（从上到下）：
 *   1) 受限 JSON 读取器（只读、不分配、严格；响应体与错误体共用）
 *   2) 请求体/URL/key 的构造与加载（纯函数，可单测）
 *   3) 响应解析（choices[0].message.content / error.type|code）
 *   4) 默认传输层：dlopen("libcurl.so") + dlsym（POSIX/Android）
 *   5) Provider ops（init / complete / fini）
 *
 * ---- 关于 "不使用 NDK 里不存在的头文件" ----
 * NDK r21e 的 sysroot 没有 curl/curl.h（T5-06A 已核对 evidence/ndk_check.txt），
 * 所以这里按 **libcurl 7.52.0-DEV（Android 8.1 /system/lib/libcurl.so）** 的公开 ABI
 * 手写常量，并在运行时自检：
 *   - 每个 curl_easy_setopt() 的返回值都检查：选项常量若与设备版本不符，
 *     libcurl 会返回 48 (CURLE_UNKNOWN_OPTION)，初始化/调用直接失败而不会静默错配；
 *   - t6b_ds_libcurl_init() 在做完 dlsym 后会用一个临时 handle 跑一遍"选项可用性自检"。
 * 常量取值来自 curl 7.52 的 curl/curl.h：
 *   CURLOPT_*  = CURLOPTTYPE_LONG(0) | STRINGPOINT(10000) | FUNCTIONPOINT(20000) + offset
 *   CURLINFO_RESPONSE_CODE = CURLINFO_LONG(0x200000) + 2
 *
 * ---- 隐私 ----
 * key 只在 t6b_ds.api_key（fini 清零）+ 一次调用期间的 Authorization 头栈缓冲里出现；
 * 不打印、不落盘、不进 URL、不进状态文件；上游错误体只取 error.type / error.code，
 * 绝不把上游 message 正文写进日志（它可能回显请求内容）。
 */
#include "deepseek_provider.h"
#include "worker_util.h"

#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#ifndef _WIN32
#  include <dlfcn.h>
#  include <fcntl.h>
#  include <sys/stat.h>
#  include <unistd.h>
#endif

/* ==========================================================================
 * 1. 受限 JSON 读取器
 * ======================================================================== */

#define DS_JSON_DEPTH_MAX 32

typedef struct {
    const char *p;
    const char *end;
} jcur;

static void jws(jcur *c)
{
    while (c->p < c->end) {
        char ch = *c->p;
        if (ch == ' ' || ch == '\t' || ch == '\r' || ch == '\n') c->p++;
        else break;
    }
}

static int jhex4(const char *p, const char *end, unsigned int *out)
{
    unsigned int v = 0;
    int i;

    if (end - p < 4) return -1;
    for (i = 0; i < 4; i++) {
        char ch = p[i];
        v <<= 4;
        if (ch >= '0' && ch <= '9') v |= (unsigned int)(ch - '0');
        else if (ch >= 'a' && ch <= 'f') v |= (unsigned int)(ch - 'a' + 10);
        else if (ch >= 'A' && ch <= 'F') v |= (unsigned int)(ch - 'A' + 10);
        else return -1;
    }
    *out = v;
    return 0;
}

/* 码点 → UTF-8；返回写入字节数，0 = 非法码点 */
static size_t put_utf8(unsigned int cp, char *dst, size_t room)
{
    if (cp == 0 || cp > 0x10FFFF || (cp >= 0xD800 && cp <= 0xDFFF)) return 0;
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

/* 解析一个 JSON 字符串（游标须指向 '"'）。
 * out 可为 NULL（只做语法校验）；写不下时 *trunc = 1 但继续消费输入。
 * 返回 0 = 合法；-1 = 语法错误（含非法 \u、单独出现的代理项、裸控制字符）。 */
static int jstr(jcur *c, char *out, size_t cap, size_t *olen, int *trunc)
{
    size_t o = 0;

    if (trunc) *trunc = 0;
    if (olen) *olen = 0;
    if (c->p >= c->end || *c->p != '"') return -1;
    c->p++;
    while (c->p < c->end) {
        unsigned char ch = (unsigned char)*c->p;
        char ebuf[4];
        const char *src = NULL;
        size_t n = 1;

        if (ch == '"') {
            c->p++;
            if (out != NULL && cap > 0) out[o < cap ? o : cap - 1] = '\0';
            if (olen) *olen = o;
            return 0;
        }
        if (ch == '\\') {
            c->p++;
            if (c->p >= c->end) return -1;
            switch (*c->p) {
            case '"':  ebuf[0] = '"';  n = 1; c->p++; break;
            case '\\': ebuf[0] = '\\'; n = 1; c->p++; break;
            case '/':  ebuf[0] = '/';  n = 1; c->p++; break;
            case 'b':  ebuf[0] = '\b'; n = 1; c->p++; break;
            case 'f':  ebuf[0] = '\f'; n = 1; c->p++; break;
            case 'n':  ebuf[0] = '\n'; n = 1; c->p++; break;
            case 'r':  ebuf[0] = '\r'; n = 1; c->p++; break;
            case 't':  ebuf[0] = '\t'; n = 1; c->p++; break;
            case 'u': {
                unsigned int hi = 0;
                unsigned int cp = 0;
                c->p++;                       /* 跳过 'u' */
                if (jhex4(c->p, c->end, &hi) != 0) return -1;
                c->p += 4;
                cp = hi;
                if (hi >= 0xD800 && hi <= 0xDBFF) {
                    unsigned int lo = 0;
                    if (c->end - c->p < 2 || c->p[0] != '\\' || c->p[1] != 'u') return -1;
                    c->p += 2;
                    if (jhex4(c->p, c->end, &lo) != 0) return -1;
                    c->p += 4;
                    if (lo < 0xDC00 || lo > 0xDFFF) return -1;
                    cp = 0x10000 + ((hi - 0xD800) << 10) + (lo - 0xDC00);
                } else if (hi >= 0xDC00 && hi <= 0xDFFF) {
                    return -1;               /* 孤立低代理项 */
                }
                n = put_utf8(cp, ebuf, sizeof(ebuf));
                if (n == 0) return -1;       /* U+0000 / 越界 */
                break;                       /* 游标已在 4 个十六进制位之后 */
            }
            default:
                return -1;
            }
            src = ebuf;
        } else if (ch < 0x20) {
            return -1;                       /* JSON 不允许裸控制字符 */
        } else {
            src = (const char *)c->p;
            c->p++;
            n = 1;
        }
        if (out != NULL) {
            if (o + n + 1 > cap) {
                if (trunc) *trunc = 1;
            } else {
                memcpy(out + o, src, n);
            }
        }
        if (o + n + 1 <= cap) o += n;
    }
    return -1;                               /* 没有闭合引号 */
}

static int jskip(jcur *c, int depth);

/* 跳过任意 JSON 值（递归深度受限） */
static int jskip(jcur *c, int depth)
{
    if (depth > DS_JSON_DEPTH_MAX) return -1;
    jws(c);
    if (c->p >= c->end) return -1;

    if (*c->p == '"') return jstr(c, NULL, 0, NULL, NULL);

    if (*c->p == '{' || *c->p == '[') {
        char close = (*c->p == '{') ? '}' : ']';
        c->p++;
        jws(c);
        if (c->p < c->end && *c->p == close) { c->p++; return 0; }
        for (;;) {
            if (close == '}') {
                if (jstr(c, NULL, 0, NULL, NULL) != 0) return -1;
                jws(c);
                if (c->p >= c->end || *c->p != ':') return -1;
                c->p++;
            }
            if (jskip(c, depth + 1) != 0) return -1;
            jws(c);
            if (c->p >= c->end) return -1;
            if (*c->p == ',') { c->p++; continue; }
            if (*c->p == close) { c->p++; return 0; }
            return -1;
        }
    }

    /* 数字 / true / false / null */
    {
        const char *s = c->p;
        while (c->p < c->end) {
            char ch = *c->p;
            if ((ch >= '0' && ch <= '9') || ch == '-' || ch == '+' || ch == '.' ||
                ch == 'e' || ch == 'E' || ch == 't' || ch == 'r' || ch == 'u' ||
                ch == 'f' || ch == 'a' || ch == 'l' || ch == 's' || ch == 'n')
                c->p++;
            else break;
        }
        if (c->p == s) return -1;
        return 0;
    }
}

static int seg_is_index(const char *seg, size_t len, unsigned long *out)
{
    unsigned long v = 0;
    size_t i;

    if (len == 0 || len > 9) return 0;
    for (i = 0; i < len; i++) {
        if (seg[i] < '0' || seg[i] > '9') return 0;
        v = v * 10 + (unsigned long)(seg[i] - '0');
    }
    *out = v;
    return 1;
}

/* 按 "a/0/b" 形式在文档里定位一个值。
 * 成功：游标停在该值的第一个字符，返回 1；路径不存在返回 0；语法错误返回 -1。 */
static int jseek(jcur *c, const char *path, int depth)
{
    const char *slash = strchr(path, '/');
    size_t seglen = (slash != NULL) ? (size_t)(slash - path) : strlen(path);

    if (depth > DS_JSON_DEPTH_MAX) return -1;
    jws(c);
    if (c->p >= c->end) return -1;

    if (*c->p == '{') {
        c->p++;
        for (;;) {
            char key[64];
            size_t klen = 0;
            int trunc = 0;
            int hit;

            jws(c);
            if (c->p < c->end && *c->p == '}') { c->p++; return 0; }
            if (jstr(c, key, sizeof(key), &klen, &trunc) != 0) return -1;
            jws(c);
            if (c->p >= c->end || *c->p != ':') return -1;
            c->p++;
            hit = (trunc == 0 && klen == seglen && memcmp(key, path, seglen) == 0);
            if (hit) {
                if (slash == NULL) {
                    jws(c);              /* 游标必须停在值的第一个字符（网关会写 ": "） */
                    return 1;
                }
                {
                    int sub = jseek(c, slash + 1, depth + 1);
                    if (sub == 1) return 1;
                    return (sub < 0) ? -1 : 0;    /* 语法错误要继续上抛 */
                }
            }
            if (jskip(c, depth + 1) != 0) return -1;
            jws(c);
            if (c->p >= c->end) return -1;
            if (*c->p == ',') { c->p++; continue; }
            if (*c->p == '}') { c->p++; return 0; }
            return -1;
        }
    }

    if (*c->p == '[') {
        unsigned long want = 0;
        unsigned long idx = 0;

        if (!seg_is_index(path, seglen, &want)) return 0;
        c->p++;
        for (;;) {
            jws(c);
            if (c->p < c->end && *c->p == ']') { c->p++; return 0; }
            if (idx == want) {
                if (slash == NULL) {
                    jws(c);              /* 同上：跳过 "[" 之后的空白 */
                    return 1;
                }
                {
                    int sub = jseek(c, slash + 1, depth + 1);
                    if (sub == 1) return 1;
                    return (sub < 0) ? -1 : 0;
                }
            }
            if (jskip(c, depth + 1) != 0) return -1;
            jws(c);
            if (c->p >= c->end) return -1;
            if (*c->p == ',') { c->p++; idx++; continue; }
            if (*c->p == ']') { c->p++; return 0; }
            return -1;
        }
    }

    return 0;                                /* 值类型与段类型不匹配 */
}

/* 在整份文档里定位 path；找到时把游标留在该值处。
 * 1 = 找到 / 0 = 没有这个路径 / -1 = JSON 语法错误 */
static int jfind(const char *json, size_t len, const char *path, jcur *out)
{
    jcur c;
    int r;

    if (json == NULL || len == 0) return 0;
    c.p = json;
    c.end = json + len;
    jws(&c);
    if (c.p >= c.end || *c.p != '{') return -1;
    r = jseek(&c, path, 0);
    if (r != 1) return (r < 0) ? -1 : 0;
    if (out != NULL) *out = c;
    return 1;
}

/* ==========================================================================
 * 2. 配置 / URL / key / 请求体
 * ======================================================================== */

void t6b_ds_defaults(t6b_ds_cfg *c)
{
    if (c == NULL) return;
    memset(c, 0, sizeof(*c));
    snprintf(c->api_key_file, sizeof(c->api_key_file), "%s", T6B_DS_KEY_FILE_DEFAULT);
    snprintf(c->model, sizeof(c->model), "%s", T6B_DS_MODEL_DEFAULT);
    snprintf(c->base_url, sizeof(c->base_url), "%s", T6B_DS_BASE_URL_DEFAULT);
    c->connect_timeout_ms = T6B_DS_CONNECT_MS_DEFAULT;
    c->total_timeout_ms = T6B_DS_TIMEOUT_MS_DEFAULT;
    c->max_tokens = T6B_DS_MAX_TOKENS_DEFAULT;
    c->temperature = T6B_DS_TEMP_DEFAULT;
    c->insecure_http = 0;
    /* T7-03：默认 system prompt 落进配置，之后可被 worker.conf / CLI 覆盖 */
    snprintf(c->system_prompt, sizeof(c->system_prompt), "%s", T6B_DS_SYSTEM_PROMPT_DEFAULT);
}

static int has_space(const char *s)
{
    for (; s != NULL && *s != '\0'; s++) {
        if (*s == ' ' || *s == '\t' || *s == '\r' || *s == '\n') return 1;
    }
    return 0;
}

int t6b_ds_build_url(const char *base, char *out, size_t cap, char *err, size_t errlen)
{
    size_t len;
    int secure;

    if (out == NULL || cap == 0) return -1;
    out[0] = '\0';
    if (base == NULL || base[0] == '\0') {
        if (err) snprintf(err, errlen, "base url empty");
        return -1;
    }
    if (has_space(base)) {
        if (err) snprintf(err, errlen, "base url contains whitespace");
        return -1;
    }
    if (strncmp(base, "https://", 8) == 0) secure = 1;
    else if (strncmp(base, "http://", 7) == 0) secure = 0;
    else {
        if (err) snprintf(err, errlen, "base url must start with http:// or https://");
        return -1;
    }
    len = strlen(base);
    if (len >= cap) {
        if (err) snprintf(err, errlen, "base url too long");
        return -1;
    }
    snprintf(out, cap, "%s", base);

    /* 去掉末尾所有 '/'，避免出现 //chat/completions */
    while (len > 0 && out[len - 1] == '/') out[--len] = '\0';

    /* 已经带了 /chat/completions 就不再追加（不重复拼接） */
    {
        size_t sfx = strlen(T6B_DS_PATH_SUFFIX);
        if (len >= sfx && strcmp(out + len - sfx, T6B_DS_PATH_SUFFIX) == 0) {
            if (len >= cap) {
                if (err) snprintf(err, errlen, "url too long");
                return -1;
            }
            return 0;
        }
    }
    if (len + strlen(T6B_DS_PATH_SUFFIX) + 1 > cap) {
        if (err) snprintf(err, errlen, "url too long after appending %s", T6B_DS_PATH_SUFFIX);
        return -1;
    }
    snprintf(out + len, cap - len, "%s", T6B_DS_PATH_SUFFIX);
    (void)secure;
    return 0;
}

int t6b_ds_load_key(const char *path, char *out, size_t cap, int *mode_out,
                    char *err, size_t errlen)
{
    int fd = -1;
    int mode = -1;
    size_t used = 0;
    char tail = 0;

    if (mode_out != NULL) *mode_out = -1;
    if (out == NULL || cap == 0) return -1;
    out[0] = '\0';
    if (path == NULL || path[0] == '\0') {
        if (err) snprintf(err, errlen, "api key file path empty");
        return -1;
    }

#ifndef _WIN32
    /* O_NOFOLLOW：拒绝符号链接（不给"指向别处的 key"留下读取路径） */
    fd = open(path, O_RDONLY | O_NOFOLLOW | O_CLOEXEC);
    if (fd < 0) {
        if (err) {
            if (errno == ELOOP) snprintf(err, errlen, "api key file is a symlink; refused");
            else if (errno == ENOENT) snprintf(err, errlen, "api key file not found: %s", path);
            else snprintf(err, errlen, "api key file open failed (errno=%d)", errno);
        }
        return -1;
    }
    {
        struct stat sb;
        if (fstat(fd, &sb) == 0) {
            if (!S_ISREG(sb.st_mode)) {
                if (err) snprintf(err, errlen, "api key path is not a regular file");
                (void)wu_close(fd);
                return -1;
            }
            mode = (int)(sb.st_mode & 0777);
        }
    }
#else
    fd = wu_open_ro(path);
    if (fd < 0) {
        if (err) snprintf(err, errlen, "api key file not found or not readable: %s", path);
        return -1;
    }
#endif

    /* 读满 cap-1 字节；还要再探一次以识别"超长" */
    while (used + 1 < cap) {
        int n = wu_read_some(fd, out + used, cap - 1 - used);
        if (n < 0) {
            if (err) snprintf(err, errlen, "api key read failed (errno=%d)", errno);
            (void)wu_close(fd);
            out[0] = '\0';
            return -1;
        }
        if (n == 0) break;
        used += (size_t)n;
    }
    {
        int extra = wu_read_some(fd, &tail, 1);
        if (extra > 0) {
            if (err) snprintf(err, errlen, "api key too long (> %d bytes)", (int)cap - 1);
            (void)wu_close(fd);
            memset(out, 0, cap);
            return -1;
        }
    }
    (void)wu_close(fd);
    out[used] = '\0';

    /* 去掉末尾 CR/LF（编辑器会加），只去尾部，不动中间 */
    while (used > 0 && (out[used - 1] == '\n' || out[used - 1] == '\r')) {
        out[--used] = '\0';
    }
    if (used == 0) {
        if (err) snprintf(err, errlen, "api key file is empty");
        return -1;
    }
    {
        size_t i;
        for (i = 0; i < used; i++) {
            unsigned char ch = (unsigned char)out[i];
            if (ch <= 0x20 || ch >= 0x7f) {
                if (err) snprintf(err, errlen, "api key contains non-printable byte at %d", (int)i);
                memset(out, 0, cap);
                return -1;
            }
        }
    }
    if (mode_out != NULL) *mode_out = mode;
    return 0;
}

int t6b_ds_build_body(const char *model, const char *user_text,
                      char *out, size_t cap, size_t *outlen, char *err, size_t errlen)
{
    char esc_user[T6B_DS_INPUT_MAX * 6 + 1];
    char esc_model[T6B_DS_MODEL_MAX * 6 + 1];
    char esc_sys[sizeof(T6B_DS_SYSTEM_PROMPT) * 6 + 1];
    size_t ulen;
    int n;

    if (out == NULL || cap == 0) return -1;
    out[0] = '\0';
    if (outlen != NULL) *outlen = 0;
    if (model == NULL || model[0] == '\0') {
        if (err) snprintf(err, errlen, "model name empty");
        return -1;
    }
    if (strlen(model) > T6B_DS_MODEL_MAX) {
        if (err) snprintf(err, errlen, "model name too long (> %d)", T6B_DS_MODEL_MAX);
        return -1;
    }
    if (user_text == NULL || user_text[0] == '\0') {
        if (err) snprintf(err, errlen, "user text empty");
        return -1;
    }
    ulen = strlen(user_text);
    if (ulen > T6B_DS_INPUT_MAX) {
        if (err) snprintf(err, errlen, "user text too long (%d > %d bytes)",
                          (int)ulen, T6B_DS_INPUT_MAX);
        return -1;
    }
    if (wu_utf8_validate(user_text, ulen) != 0) {
        if (err) snprintf(err, errlen, "user text is not valid UTF-8");
        return -1;
    }

    /* 这三块缓冲足够大（每个字节最坏 6 字节 \u00XX），wu_json_escape 不会截断 */
    wu_json_escape(esc_user, sizeof(esc_user), user_text);
    wu_json_escape(esc_model, sizeof(esc_model), model);
    wu_json_escape(esc_sys, sizeof(esc_sys), T6B_DS_SYSTEM_PROMPT);

    n = snprintf(out, cap,
                 "{\"model\":\"%s\",\"messages\":["
                 "{\"role\":\"system\",\"content\":\"%s\"},"
                 "{\"role\":\"user\",\"content\":\"%s\"}],"
                 "\"stream\":false,\"max_tokens\":%d}",
                 esc_model, esc_sys, esc_user, T6B_DS_MAX_TOKENS_DEFAULT);
    if (n <= 0 || (size_t)n >= cap) {
        if (err) snprintf(err, errlen, "request body too large (%d > %d bytes)",
                          n, (int)cap - 1);
        out[0] = '\0';
        return -1;
    }
    if (outlen != NULL) *outlen = (size_t)n;
    return 0;
}

/*
 * T7-01：messages 数组版本。
 *   {"model":M,"messages":[{"role":"system",...}, <messages_json 去掉首尾方括号> ],
 *    "stream":false,"max_tokens":N,"temperature":T}
 * messages_json 由 conv_context 生成，这里只做形状校验与拼接，不改写正文（不截断）。
 */
int t6b_ds_build_body_msgs(const char *model, const char *system_prompt,
                           const char *messages_json, double temperature, int max_tokens,
                           char *out, size_t cap, size_t *outlen,
                           char *err, size_t errlen)
{
    char esc_model[T6B_DS_MODEL_MAX * 6 + 1];
    char esc_sys[T6B_DS_SYS_PROMPT_MAX * 6 + 1];
    const char *body;
    size_t alen, syslen = 0, o = 0;
    int n;

    if (out == NULL || cap == 0) return -1;
    out[0] = '\0';
    if (outlen != NULL) *outlen = 0;

    if (model == NULL || model[0] == '\0') {
        if (err) snprintf(err, errlen, "model name empty");
        return -1;
    }
    if (strlen(model) > T6B_DS_MODEL_MAX) {
        if (err) snprintf(err, errlen, "model name too long (> %d)", T6B_DS_MODEL_MAX);
        return -1;
    }
    if (messages_json == NULL || messages_json[0] != '[') {
        if (err) snprintf(err, errlen, "messages is not a json array");
        return -1;
    }
    alen = strlen(messages_json);
    if (alen < 2 || messages_json[alen - 1] != ']') {
        if (err) snprintf(err, errlen, "messages array is not terminated");
        return -1;
    }
    if (alen > (size_t)T6B_DS_BODY_MAX) {
        if (err) snprintf(err, errlen, "messages too large (%d bytes)", (int)alen);
        return -1;
    }
    /* T7-03：messages 数组已经以 system 开头时不再插入第二条（Worker 负责把它放在首位）。
     * 这样"单条 system、永远在最前面"由一处保证，mock/真实 Provider 行为一致。 */
    {
        int has_sys = (strncmp(messages_json, "[{\"role\":\"system\"", 16) == 0);
        if (!has_sys && system_prompt != NULL && system_prompt[0] != '\0') {
            if (strlen(system_prompt) >= sizeof(esc_sys) / 6) {
                if (err) snprintf(err, errlen, "system prompt too long");
                return -1;
            }
            wu_json_escape(esc_sys, sizeof(esc_sys), system_prompt);
            syslen = strlen(esc_sys);
        } else {
            esc_sys[0] = '\0';
            syslen = 0;
        }
    }

    if (temperature < 0.0) temperature = 0.0;
    if (temperature > 2.0) temperature = 2.0;
    if (max_tokens <= 0) max_tokens = T6B_DS_MAX_TOKENS_DEFAULT;
    if (max_tokens > 8192) max_tokens = 8192;

    wu_json_escape(esc_model, sizeof(esc_model), model);

    n = snprintf(out, cap, "{\"model\":\"%s\",\"messages\":[", esc_model);
    if (n < 0 || (size_t)n >= cap) goto too_big;
    o = (size_t)n;

    if (syslen > 0) {
        n = snprintf(out + o, cap - o, "{\"role\":\"system\",\"content\":\"%s\"},", esc_sys);
        if (n < 0 || (size_t)n >= cap - o) goto too_big;
        o += (size_t)n;
    }

    /* 跳过 messages_json 的首 '['，保留到结尾的 ']' */
    body = messages_json + 1;
    n = snprintf(out + o, cap - o, "%s", body);
    if (n < 0 || (size_t)n >= cap - o) goto too_big;
    o += (size_t)n;

    n = snprintf(out + o, cap - o, ",\"stream\":false,\"max_tokens\":%d,\"temperature\":%.2f}",
                 max_tokens, temperature);
    if (n < 0 || (size_t)n >= cap - o) goto too_big;
    o += (size_t)n;

    if (outlen != NULL) *outlen = o;
    return 0;

too_big:
    if (err) snprintf(err, errlen, "request body too large (%d > %d bytes)",
                      (int)o, (int)cap - 1);
    out[0] = '\0';
    return -1;
}

/* ==========================================================================
 * 3. 响应解析
 * ======================================================================== */

int t6b_ds_parse_content(const char *json, size_t len, char *out, size_t cap,
                         size_t *outlen, char *err_class, size_t classlen,
                         char *detail, size_t detaillen)
{
    jcur c;
    int r;

    if (err_class != NULL && classlen > 0) err_class[0] = '\0';
    if (detail != NULL && detaillen > 0) detail[0] = '\0';
    if (out != NULL && cap > 0) out[0] = '\0';
    if (outlen != NULL) *outlen = 0;

#define DS_FAIL(cls, det) do {                                          \
        if (err_class != NULL && classlen > 0)                           \
            snprintf(err_class, classlen, "%s", (cls));                  \
        if (detail != NULL && detaillen > 0)                            \
            snprintf(detail, detaillen, "%s", (det));                    \
        return -1;                                                       \
    } while (0)

    if (json == NULL || len == 0) DS_FAIL("empty_response", "no response body");

    r = jfind(json, len, "choices/0/message/content", &c);
    if (r < 0) DS_FAIL("bad_json", "malformed JSON");
    if (r == 0) {
        /* 分层定位，给出可读的失败类别（都是"没有可用回答"） */
        if (jfind(json, len, "choices", &c) != 1) DS_FAIL("no_choices", "choices missing");
        if (jfind(json, len, "choices/0", &c) != 1)
            DS_FAIL("no_choices", "choices is empty");
        if (jfind(json, len, "choices/0/message", &c) != 1)
            DS_FAIL("no_message", "message missing");
        DS_FAIL("no_content", "content missing");
    }

    if (*c.p == 'n') DS_FAIL("content_null", "content is null");
    if (*c.p != '"') DS_FAIL("content_not_string", "content is not a string");

    {
        size_t got = 0;
        int trunc = 0;
        size_t clen = 0;

        if (jstr(&c, out, cap, &got, &trunc) != 0) DS_FAIL("bad_json", "bad string escape");
        if (trunc) DS_FAIL("reply_too_long", "reply does not fit the reply buffer");
        clen = got;
        if (clen == 0) DS_FAIL("empty_content", "model returned an empty answer");
        if (out != NULL && wu_utf8_validate(out, clen) != 0)
            DS_FAIL("bad_utf8", "reply is not valid UTF-8");
        if (outlen != NULL) *outlen = clen;
    }
    return 0;

#undef DS_FAIL
}

/* 取 error.type（字符串）/ error.code（字符串或数字），仅用于日志分类 */
int t6b_ds_parse_error(const char *json, size_t len, char *type, size_t typecap,
                       char *code, size_t codecap)
{
    jcur c;
    int got = 0;

    if (type != NULL && typecap > 0) type[0] = '\0';
    if (code != NULL && codecap > 0) code[0] = '\0';

    if (jfind(json, len, "error/type", &c) == 1 && *c.p == '"') {
        size_t n = 0;
        int t = 0;
        if (jstr(&c, type, typecap, &n, &t) == 0 && !t) got = 1;
    }
    if (jfind(json, len, "error/code", &c) == 1) {
        if (*c.p == '"') {
            size_t n = 0;
            int t = 0;
            if (jstr(&c, code, codecap, &n, &t) == 0 && !t) got = 1;
        } else {
            size_t n = 0;
            while (c.p < c.end && n + 1 < codecap &&
                   ((*c.p >= '0' && *c.p <= '9') || *c.p == '-' || *c.p == '.' ||
                    *c.p == 'e' || *c.p == 'E' || *c.p == '+')) {
                code[n++] = *c.p++;
            }
            if (code != NULL && codecap > 0) code[n] = '\0';
            if (n > 0) got = 1;
        }
    }
    return got ? 0 : -1;
}

/* ==========================================================================
 * 4. 默认传输层：dlopen libcurl（POSIX）
 * ======================================================================== */

/* curl 7.52 CURLOPT 常量（公开 ABI，取值固定）
 *
 * CURLOPTTYPE_LONG = 0, CURLOPTTYPE_OBJECTPOINT = 10000,
 * CURLOPTTYPE_FUNCTIONPOINT = 20000; 下面注释给出 curl.h 里的偏移。 */
#define DS_CURLOPT_WRITEDATA         10001   /* OBJECTPOINT + 1  */
#define DS_CURLOPT_URL               10002   /* OBJECTPOINT + 2  */
#define DS_CURLOPT_POSTFIELDS        10015   /* OBJECTPOINT + 15 */
#define DS_CURLOPT_USERAGENT         10018   /* OBJECTPOINT + 18 */
#define DS_CURLOPT_HTTPHEADER        10023   /* OBJECTPOINT + 23 */
#define DS_CURLOPT_POSTFIELDSIZE      60     /* LONG + 60        */
#define DS_CURLOPT_POST               47     /* LONG + 47        */
#define DS_CURLOPT_SSL_VERIFYPEER     64     /* LONG + 64        */
#define DS_CURLOPT_SSL_VERIFYHOST     81     /* LONG + 81        */
#define DS_CURLOPT_FOLLOWLOCATION     52     /* LONG + 52        */
#define DS_CURLOPT_NOSIGNAL           99     /* LONG + 99        */
#define DS_CURLOPT_TIMEOUT_MS        155     /* LONG + 155       */
#define DS_CURLOPT_CONNECTTIMEOUT_MS 156     /* LONG + 156       */
#define DS_CURLOPT_WRITEFUNCTION   20011     /* FUNCTIONPOINT+11 */
#define DS_CURLINFO_RESPONSE_CODE 0x200002L  /* CURLINFO_LONG+2  */

/* CURLcode（curl 7.52） */
#define DS_CURLE_OK                        0
#define DS_CURLE_COULDNT_RESOLVE_HOST      6
#define DS_CURLE_COULDNT_CONNECT           7
#define DS_CURLE_WRITE_ERROR              23
#define DS_CURLE_OPERATION_TIMEDOUT       28
#define DS_CURLE_GOT_NOTHING              52
#define DS_CURLE_SSL_CONNECT_ERROR        35
#define DS_CURLE_PEER_FAILED_VERIFICATION 51
#define DS_CURLE_SSL_CERTPROBLEM          58
#define DS_CURLE_SSL_CACERT               60
#define DS_CURLE_SSL_CACERT_BADFILE       77

#ifndef _WIN32

typedef struct {
    void *lib;
    void *(*easy_init)(void);
    int   (*easy_setopt)(void *, int, ...);
    int   (*easy_perform)(void *);
    int   (*easy_getinfo)(void *, int, ...);
    void  (*easy_cleanup)(void *);
    void *(*slist_append)(void *, const char *);
    void  (*slist_free_all)(void *);
    const char *(*version)(void);
    int    loaded;
} ds_curl;

static ds_curl g_curl;

typedef struct {
    char  *buf;
    size_t cap;
    size_t len;
    int    overflow;
} ds_sink;

static size_t ds_write_cb(char *ptr, size_t size, size_t nmemb, void *ud)
{
    ds_sink *s = (ds_sink *)ud;
    size_t n = size * nmemb;

    if (s == NULL) return 0;
    if (n > s->cap - s->len) {          /* 超过上限：立刻中止，绝不无限读 */
        s->overflow = 1;
        return 0;
    }
    memcpy(s->buf + s->len, ptr, n);
    s->len += n;
    return n;
}

#define DS_SYM(fn, type, name)                                          \
    do {                                                                \
        g_curl.fn = (type)dlsym(g_curl.lib, name);                       \
        if (g_curl.fn == NULL) {                                         \
            if (err) snprintf(err, errlen, "libcurl symbol missing: %s", name); \
            dlclose(g_curl.lib);                                         \
            memset(&g_curl, 0, sizeof(g_curl));                          \
            return -1;                                                   \
        }                                                               \
    } while (0)

/* 选项可用性自检：用临时 handle 设一遍，任何 CURLE_UNKNOWN_OPTION(48) 都说明常量与
 * 设备 libcurl 版本不匹配，必须立刻失败（而不是发出一个"缺 header"的请求）。 */
static int ds_option_selftest(char *err, size_t errlen)
{
    void *h = g_curl.easy_init();
    void *hdrs = NULL;
    struct { const char *name; int opt; long val; } longs[] = {
        { "CURLOPT_POST", DS_CURLOPT_POST, 1L },
        { "CURLOPT_NOSIGNAL", DS_CURLOPT_NOSIGNAL, 1L },
        { "CURLOPT_SSL_VERIFYPEER", DS_CURLOPT_SSL_VERIFYPEER, 1L },
        { "CURLOPT_SSL_VERIFYHOST", DS_CURLOPT_SSL_VERIFYHOST, 2L },
        { "CURLOPT_FOLLOWLOCATION", DS_CURLOPT_FOLLOWLOCATION, 0L },
        { "CURLOPT_TIMEOUT_MS", DS_CURLOPT_TIMEOUT_MS, 1000L },
        { "CURLOPT_CONNECTTIMEOUT_MS", DS_CURLOPT_CONNECTTIMEOUT_MS, 500L },
        { "CURLOPT_POSTFIELDSIZE", DS_CURLOPT_POSTFIELDSIZE, 2L }
    };
    size_t i;
    int rc = 0;

    if (h == NULL) {
        if (err) snprintf(err, errlen, "libcurl easy_init failed");
        return -1;
    }
    for (i = 0; i < sizeof(longs) / sizeof(longs[0]); i++) {
        int c = g_curl.easy_setopt(h, longs[i].opt, longs[i].val);
        if (c != DS_CURLE_OK) {
            if (err) snprintf(err, errlen, "libcurl rejected option %s (code=%d)",
                              longs[i].name, c);
            rc = -1;
            break;
        }
    }
    if (rc == 0) {
        int c = g_curl.easy_setopt(h, DS_CURLOPT_URL, "http://127.0.0.1/");
        if (c != DS_CURLE_OK) {
            if (err) snprintf(err, errlen, "libcurl rejected CURLOPT_URL (code=%d)", c);
            rc = -1;
        }
    }
    if (rc == 0) {
        hdrs = g_curl.slist_append(hdrs, "Content-Type: application/json");
        if (hdrs == NULL) {
            if (err) snprintf(err, errlen, "libcurl curl_slist_append failed");
            rc = -1;
        } else {
            int c = g_curl.easy_setopt(h, DS_CURLOPT_HTTPHEADER, hdrs);
            if (c != DS_CURLE_OK) {
                if (err) snprintf(err, errlen, "libcurl rejected CURLOPT_HTTPHEADER (code=%d)", c);
                rc = -1;
            }
        }
    }
    if (hdrs != NULL) g_curl.slist_free_all(hdrs);
    g_curl.easy_cleanup(h);
    return rc;
}

int t6b_ds_libcurl_init(char *err, size_t errlen)
{
    if (err != NULL && errlen > 0) err[0] = '\0';
    if (g_curl.loaded) return 0;

    memset(&g_curl, 0, sizeof(g_curl));
    g_curl.lib = dlopen("libcurl.so", RTLD_NOW);
    if (g_curl.lib == NULL) {
        g_curl.lib = dlopen("/system/lib/libcurl.so", RTLD_NOW);
    }
    if (g_curl.lib == NULL) {
        if (err) snprintf(err, errlen, "dlopen(libcurl.so) failed: %s",
                          dlerror() != NULL ? dlerror() : "(no detail)");
        return -1;
    }
    DS_SYM(easy_init, void *(*)(void), "curl_easy_init");
    DS_SYM(easy_setopt, int (*)(void *, int, ...), "curl_easy_setopt");
    DS_SYM(easy_perform, int (*)(void *), "curl_easy_perform");
    DS_SYM(easy_getinfo, int (*)(void *, int, ...), "curl_easy_getinfo");
    DS_SYM(easy_cleanup, void (*)(void *), "curl_easy_cleanup");
    DS_SYM(slist_append, void *(*)(void *, const char *), "curl_slist_append");
    DS_SYM(slist_free_all, void (*)(void *), "curl_slist_free_all");
    g_curl.version = (const char *(*)(void))dlsym(g_curl.lib, "curl_version");
    g_curl.loaded = 1;
    if (ds_option_selftest(err, errlen) != 0) {
        dlclose(g_curl.lib);
        memset(&g_curl, 0, sizeof(g_curl));
        return -1;
    }
    return 0;
}

void t6b_ds_libcurl_fini(void)
{
    if (!g_curl.loaded) return;
    dlclose(g_curl.lib);
    memset(&g_curl, 0, sizeof(g_curl));
}

const char *t6b_ds_libcurl_version(void)
{
    if (!g_curl.loaded || g_curl.version == NULL) return "(not loaded)";
    return g_curl.version();
}

static int ds_post_libcurl(void *ctx, const t6b_ds_xreq *req, char *resp, size_t resp_cap,
                           t6b_ds_xresult *xr)
{
    void *h;
    void *hdrs = NULL;
    char auth[40 + T6B_DS_KEY_MAX];
    ds_sink sink;
    long http_status = 0;
    long long t0;
    int rc;
    int failed = 0;

    (void)ctx;
    if (xr == NULL || req == NULL) return -1;
    memset(xr, 0, sizeof(*xr));
    if (!g_curl.loaded) {
        snprintf(xr->error, sizeof(xr->error), "libcurl not loaded");
        return -1;
    }

    h = g_curl.easy_init();
    if (h == NULL) {
        snprintf(xr->error, sizeof(xr->error), "curl_easy_init failed");
        return -1;
    }

    /* Authorization 头只在栈上存活到 perform 返回；结束后立刻清零 */
    snprintf(auth, sizeof(auth), "Authorization: Bearer %s", req->api_key);
    hdrs = g_curl.slist_append(hdrs, "Content-Type: application/json");
    hdrs = g_curl.slist_append(hdrs, "Expect:");
    hdrs = g_curl.slist_append(hdrs, auth);
    if (hdrs == NULL) {
        g_curl.easy_cleanup(h);
        memset(auth, 0, sizeof(auth));
        snprintf(xr->error, sizeof(xr->error), "header list alloc failed");
        return -1;
    }

    sink.buf = resp;
    sink.cap = resp_cap;
    sink.len = 0;
    sink.overflow = 0;

#define DS_SET(name, opt, val)                                            \
    do {                                                                  \
        int c_ = g_curl.easy_setopt(h, (opt), (val));                      \
        if (c_ != DS_CURLE_OK) {                                          \
            snprintf(xr->error, sizeof(xr->error),                        \
                     "setopt %s failed (code=%d)", (name), c_);            \
            failed = 1;                                                   \
        }                                                                 \
    } while (0)

    DS_SET("URL", DS_CURLOPT_URL, req->url);
    DS_SET("NOSIGNAL", DS_CURLOPT_NOSIGNAL, 1L);
    DS_SET("SSL_VERIFYPEER", DS_CURLOPT_SSL_VERIFYPEER, 1L);   /* 证书校验必须开启 */
    DS_SET("SSL_VERIFYHOST", DS_CURLOPT_SSL_VERIFYHOST, 2L);   /* 主机名必须匹配 */
    DS_SET("FOLLOWLOCATION", DS_CURLOPT_FOLLOWLOCATION, 0L);   /* 不跟随重定向（防降级） */
    DS_SET("TIMEOUT_MS", DS_CURLOPT_TIMEOUT_MS, (long)req->total_timeout_ms);
    DS_SET("CONNECTTIMEOUT_MS", DS_CURLOPT_CONNECTTIMEOUT_MS, (long)req->connect_timeout_ms);
    DS_SET("USERAGENT", DS_CURLOPT_USERAGENT, "tgz02-ai-worker/1.0");
    DS_SET("WRITEFUNCTION", DS_CURLOPT_WRITEFUNCTION, (void *)ds_write_cb);
    DS_SET("WRITEDATA", DS_CURLOPT_WRITEDATA, (void *)&sink);
    DS_SET("POST", DS_CURLOPT_POST, 1L);
    DS_SET("POSTFIELDS", DS_CURLOPT_POSTFIELDS, (void *)req->body);
    DS_SET("POSTFIELDSIZE", DS_CURLOPT_POSTFIELDSIZE, (long)req->body_len);
    DS_SET("HTTPHEADER", DS_CURLOPT_HTTPHEADER, hdrs);

#undef DS_SET

    if (failed) {
        g_curl.slist_free_all(hdrs);
        g_curl.easy_cleanup(h);
        memset(auth, 0, sizeof(auth));
        return -1;
    }

    t0 = wu_now_ms();
    rc = g_curl.easy_perform(h);
    xr->latency_ms = wu_now_ms() - t0;
    xr->curl_code = rc;
    g_curl.easy_getinfo(h, DS_CURLINFO_RESPONSE_CODE, &http_status);
    xr->http_status = (int)http_status;
    xr->resp_len = sink.len;
    xr->resp_overflow = sink.overflow;

    if (rc == DS_CURLE_OPERATION_TIMEDOUT) xr->timed_out = 1;

    g_curl.slist_free_all(hdrs);        /* 释放 curl 自己复制的那份 header（含 key） */
    g_curl.easy_cleanup(h);
    memset(auth, 0, sizeof(auth));
    return 0;
}

static const t6b_ds_xport LIB_CURL_XPORT = {
    "libcurl", ds_post_libcurl, NULL
};

const t6b_ds_xport *t6b_ds_libcurl_xport(void)
{
    return &LIB_CURL_XPORT;
}

#else /* _WIN32 */

/* 主机 Windows 构建：没有 POSIX dlopen，也没有系统 libcurl。
 * 这里不假装可用：初始化明确失败，由单元测试注入桩传输层。 */
static int ds_post_unavailable(void *ctx, const t6b_ds_xreq *req, char *resp,
                               size_t resp_cap, t6b_ds_xresult *xr)
{
    (void)ctx;
    (void)req;
    (void)resp;
    (void)resp_cap;
    if (xr != NULL) {
        memset(xr, 0, sizeof(*xr));
        snprintf(xr->error, sizeof(xr->error),
                 "libcurl transport not available in this build (POSIX dlopen only)");
    }
    return -1;
}

static const t6b_ds_xport STUB_UNAVAILABLE_XPORT = {
    "libcurl-unavailable", ds_post_unavailable, NULL
};

int t6b_ds_libcurl_init(char *err, size_t errlen)
{
    if (err) snprintf(err, errlen,
                      "libcurl transport not available in this build (POSIX dlopen only)");
    return -1;
}

void t6b_ds_libcurl_fini(void)
{
}

const char *t6b_ds_libcurl_version(void)
{
    return "(not loaded)";
}

const t6b_ds_xport *t6b_ds_libcurl_xport(void)
{
    return &STUB_UNAVAILABLE_XPORT;
}

#endif /* _WIN32 */

/* ==========================================================================
 * 5. Provider ops
 * ======================================================================== */

static void ds_set_class(t6b_ds *d, const char *cls)
{
    if (d == NULL) return;
    snprintf(d->last_class, sizeof(d->last_class), "%s", cls != NULL ? cls : "");
}

static const char *ds_curl_class(int code)
{
    switch (code) {
    case DS_CURLE_COULDNT_RESOLVE_HOST:      return "curl_resolve";
    case DS_CURLE_COULDNT_CONNECT:           return "curl_connect";
    case DS_CURLE_OPERATION_TIMEDOUT:        return "curl_timeout";
    case DS_CURLE_SSL_CONNECT_ERROR:
    case DS_CURLE_PEER_FAILED_VERIFICATION:
    case DS_CURLE_SSL_CERTPROBLEM:
    case DS_CURLE_SSL_CACERT:
    case DS_CURLE_SSL_CACERT_BADFILE:        return "curl_tls";
    case DS_CURLE_WRITE_ERROR:               return "curl_write";
    case DS_CURLE_GOT_NOTHING:               return "curl_nothing";
    default:                                 return "curl_error";
    }
}

static int ds_init(t6b_provider *p, char *err, size_t errlen)
{
    t6b_ds *d = (t6b_ds *)p->ctx;
    char urlerr[96];
    int mode = -1;

    if (d == NULL) {
        if (err) snprintf(err, errlen, "deepseek ctx null");
        return -1;
    }
    urlerr[0] = '\0';
    if (t6b_ds_build_url(d->cfg.base_url, d->url, sizeof(d->url), urlerr, sizeof(urlerr)) != 0) {
        if (err) snprintf(err, errlen, "bad base url: %s", urlerr);
        return -1;
    }
    if (d->cfg.model[0] == '\0') {
        if (err) snprintf(err, errlen, "model name empty");
        return -1;
    }
    if (d->cfg.connect_timeout_ms <= 0 || d->cfg.total_timeout_ms <= 0) {
        if (err) snprintf(err, errlen, "timeouts must be positive");
        return -1;
    }
    if (t6b_ds_load_key(d->cfg.api_key_file, d->api_key, sizeof(d->api_key), &mode,
                        err, errlen) != 0) {
        return -1;
    }
    d->key_mode = mode;

    if (d->xport == NULL) {
        char cerr[128];
        cerr[0] = '\0';
        if (t6b_ds_libcurl_init(cerr, sizeof(cerr)) != 0) {
            memset(d->api_key, 0, sizeof(d->api_key));
            if (err) snprintf(err, errlen, "curl unavailable: %s", cerr);
            return -1;
        }
        d->xport = t6b_ds_libcurl_xport();
        d->xctx = NULL;
        d->owns_xport = 1;
    }
    d->api_key_set = 1;
    d->inited = 1;
    return 0;
}

/*
 * 一次真实的 POST + 响应解析（不含请求体构造）。
 * T7-01 把"请求体怎么来"与"怎么发"拆开：ds_complete（单句）和 ds_complete_msgs（多轮）
 * 共用同一段发送/解析代码，多轮能力没有复制第二份 HTTP 逻辑。
 */
static int ds_exchange(t6b_ds *d, const char *body, size_t blen, t6b_reply *out)
{
    t6b_ds_xreq req;
    t6b_ds_xresult xr;
    char resp[T6B_DS_RESP_MAX + 1];
    char why[96];
    char cls[T6B_DS_CLASS_MAX];
    char etype[40];
    char ecode[24];
    size_t clen = 0;
    long long t0;
    int rc;

    if (d == NULL || out == NULL) return -1;
    if (!d->inited) {
        out->status = T6B_P_ERROR;
        out->code = 1;
        snprintf(out->message, sizeof(out->message), "deepseek provider not initialized");
        return -1;
    }

    cls[0] = '\0';
    why[0] = '\0';

    memset(&req, 0, sizeof(req));
    req.url = d->url;
    req.api_key = d->api_key;
    req.body = body;
    req.body_len = blen;
    req.connect_timeout_ms = d->cfg.connect_timeout_ms;
    req.total_timeout_ms = d->cfg.total_timeout_ms;

    memset(&xr, 0, sizeof(xr));
    memset(resp, 0, sizeof(resp));
    t0 = wu_now_ms();
    rc = d->xport->post(d->xctx, &req, resp, sizeof(resp) - 1, &xr);
    if (xr.latency_ms == 0) xr.latency_ms = wu_now_ms() - t0;

    d->last_http_status = xr.http_status;
    d->last_curl_code = xr.curl_code;
    d->last_latency_ms = xr.latency_ms;
    d->last_resp_bytes = (unsigned long long)xr.resp_len;
    out->latency_ms = xr.latency_ms;
    out->mock = 0;

    if (rc != 0) {
        d->err++;
        ds_set_class(d, "transport");
        snprintf(d->last_error, sizeof(d->last_error), "%s",
                 xr.error[0] != '\0' ? xr.error : "transport unavailable");
        out->status = T6B_P_ERROR;
        out->code = 3;
        snprintf(out->message, sizeof(out->message), "deepseek transport: %s",
                 xr.error[0] != '\0' ? xr.error : "unavailable");
        return 0;
    }

    if (xr.resp_len <= sizeof(resp) - 1) resp[xr.resp_len] = '\0';
    else resp[sizeof(resp) - 1] = '\0';

    /* --- 传输层/HTTP 层失败 --- */
    if (xr.resp_overflow) {
        d->err++;
        ds_set_class(d, "resp_too_long");
        snprintf(d->last_error, sizeof(d->last_error),
                 "response exceeded %d bytes", (int)T6B_DS_RESP_MAX);
        out->status = T6B_P_ERROR;
        out->code = 4;
        snprintf(out->message, sizeof(out->message), "deepseek response too long (> %d bytes)",
                 (int)T6B_DS_RESP_MAX);
        return 0;
    }
    if (xr.timed_out || xr.curl_code == DS_CURLE_OPERATION_TIMEDOUT) {
        d->timeouts++;
        d->err++;
        ds_set_class(d, "curl_timeout");
        snprintf(d->last_error, sizeof(d->last_error), "timeout after %lldms", xr.latency_ms);
        out->status = T6B_P_TIMEOUT;
        out->code = 5;
        snprintf(out->message, sizeof(out->message), "deepseek timeout after %lldms",
                 xr.latency_ms);
        return 0;
    }
    if (xr.curl_code != DS_CURLE_OK) {
        const char *cc = ds_curl_class(xr.curl_code);
        d->err++;
        ds_set_class(d, cc);
        snprintf(d->last_error, sizeof(d->last_error), "%s (curl=%d)", cc, xr.curl_code);
        out->status = T6B_P_ERROR;
        out->code = 6;
        snprintf(out->message, sizeof(out->message), "deepseek %s (curl=%d)",
                 cc, xr.curl_code);
        return 0;
    }

    /* --- HTTP 状态 --- */
    if (xr.http_status < 200 || xr.http_status > 299) {
        etype[0] = '\0';
        ecode[0] = '\0';
        (void)t6b_ds_parse_error(resp, xr.resp_len, etype, sizeof(etype), ecode, sizeof(ecode));
        d->err++;
        snprintf(cls, sizeof(cls), "http_%d", xr.http_status);
        ds_set_class(d, cls);
        snprintf(d->last_error, sizeof(d->last_error), "http %d%s%s%s%s",
                 xr.http_status,
                 etype[0] ? " type=" : "", etype,
                 ecode[0] ? " code=" : "", ecode);
        out->status = T6B_P_ERROR;
        out->code = 100 + xr.http_status;
        snprintf(out->message, sizeof(out->message), "deepseek http %d%s%s",
                 xr.http_status, etype[0] ? " type=" : "", etype);
        return 0;
    }

    /* --- 2xx：解析 choices[0].message.content --- */
    if (t6b_ds_parse_content(resp, xr.resp_len, out->text, sizeof(out->text), &clen,
                             cls, sizeof(cls), why, sizeof(why)) != 0) {
        d->err++;
        ds_set_class(d, cls[0] != '\0' ? cls : "bad_response");
        snprintf(d->last_error, sizeof(d->last_error), "%s%s%s",
                 cls, why[0] ? ": " : "", why);
        out->status = T6B_P_ERROR;
        out->code = 7;
        snprintf(out->message, sizeof(out->message), "deepseek response unusable (%s)%s%s",
                 cls[0] != '\0' ? cls : "bad_response", why[0] ? ": " : "", why);
        out->text[0] = '\0';
        out->text_bytes = 0;
        return 0;
    }

    out->status = T6B_P_OK;
    out->code = 0;
    out->text_bytes = (int)clen;
    ds_set_class(d, "ok");
    d->last_error[0] = '\0';
    d->ok++;
    return 0;
}

/* 单句路径（T5-06C 行为）：只有 system + 一条 user */
static int ds_complete(t6b_provider *p, const char *user_text, t6b_reply *out)
{
    t6b_ds *d = (t6b_ds *)p->ctx;
    char body[T6B_DS_BODY_MAX];
    char why[96];
    size_t blen = 0;

    if (d == NULL || out == NULL) return -1;
    if (!d->inited) {
        out->status = T6B_P_ERROR;
        out->code = 1;
        snprintf(out->message, sizeof(out->message), "deepseek provider not initialized");
        return -1;
    }

    d->calls++;
    why[0] = '\0';
    if (t6b_ds_build_body(d->cfg.model, user_text, body, sizeof(body), &blen,
                          why, sizeof(why)) != 0) {
        d->err++;
        ds_set_class(d, "request_invalid");
        snprintf(d->last_error, sizeof(d->last_error), "%s", why);
        out->status = T6B_P_ERROR;
        out->code = 2;
        snprintf(out->message, sizeof(out->message), "request build failed: %s", why);
        out->latency_ms = 0;
        out->mock = 0;
        return 0;
    }
    return ds_exchange(d, body, blen, out);
}

/* T7-01：多轮路径。messages 数组由 conv_context 生成，这里只负责并入请求体。 */
static int ds_complete_msgs(t6b_provider *p, const char *messages_json, t6b_reply *out)
{
    t6b_ds *d = (t6b_ds *)p->ctx;
    char body[T6B_DS_BODY_MAX];
    char why[96];
    size_t blen = 0;

    if (d == NULL || out == NULL) return -1;
    if (!d->inited) {
        out->status = T6B_P_ERROR;
        out->code = 1;
        snprintf(out->message, sizeof(out->message), "deepseek provider not initialized");
        return -1;
    }

    d->calls++;
    why[0] = '\0';
    if (t6b_ds_build_body_msgs(d->cfg.model,
                               (d->cfg.system_prompt[0] != '\0') ? d->cfg.system_prompt
                                                                 : T6B_DS_SYSTEM_PROMPT_DEFAULT,
                               messages_json,
                               d->cfg.temperature, d->cfg.max_tokens,
                               body, sizeof(body), &blen, why, sizeof(why)) != 0) {
        d->err++;
        ds_set_class(d, "request_invalid");
        snprintf(d->last_error, sizeof(d->last_error), "%s", why);
        out->status = T6B_P_ERROR;
        out->code = 3;
        snprintf(out->message, sizeof(out->message), "request build failed: %s", why);
        out->latency_ms = 0;
        out->mock = 0;
        return 0;
    }
    return ds_exchange(d, body, blen, out);
}

static void ds_fini(t6b_provider *p)
{
    t6b_ds *d = (t6b_ds *)p->ctx;

    if (d == NULL) return;
    /* key 只在内存里：fini 立刻清零 */
    memset(d->api_key, 0, sizeof(d->api_key));
    d->api_key_set = 0;
    d->inited = 0;
    if (d->owns_xport) {
        t6b_ds_libcurl_fini();
        d->owns_xport = 0;
    }
    d->xport = NULL;
    d->xctx = NULL;
}

static const t6b_provider_ops DEEPSEEK_OPS = {
    "deepseek",
    ds_init,
    ds_complete,
    ds_fini,
    ds_complete_msgs
};

int t6b_ds_open_with(t6b_provider *p, t6b_ds *d, const t6b_ds_cfg *cfg,
                     const t6b_ds_xport *xp, void *xctx)
{
    if (p == NULL || d == NULL) return -1;
    memset(d, 0, sizeof(*d));
    if (cfg != NULL) d->cfg = *cfg;
    else t6b_ds_defaults(&d->cfg);
    d->xport = xp;
    d->xctx = xctx;
    p->ops = &DEEPSEEK_OPS;
    p->ctx = d;
    return 0;
}

int t6b_ds_open(t6b_provider *p, t6b_ds *d, const t6b_ds_cfg *cfg)
{
    return t6b_ds_open_with(p, d, cfg, NULL, NULL);
}

void t6b_ds_close(t6b_provider *p)
{
    if (p == NULL) return;
    p->ops = NULL;
    p->ctx = NULL;
}
