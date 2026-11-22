/*
 * worker_conf.c -- T7-01：见 worker_conf.h
 *
 * 刻意不引入 JSON 解析器：配置文件是给人改的，key=value 足够，而且坏一行的代价
 * 只是"这一项没生效"，不会像坏 JSON 那样整份作废。
 */
#include "worker_conf.h"
#include "worker_util.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* ---------------- 小工具 ---------------- */

static char *wc_trim(char *s)
{
    char *e;

    if (s == NULL) return NULL;
    while (*s == ' ' || *s == '\t') s++;
    e = s + strlen(s);
    while (e > s && (e[-1] == ' ' || e[-1] == '\t' || e[-1] == '\r' || e[-1] == '\n')) {
        *--e = '\0';
    }
    if (s[0] == '"' && strlen(s) >= 2 && s[strlen(s) - 1] == '"') {
        s[strlen(s) - 1] = '\0';
        s++;
    }
    return s;
}

static int wc_bool(const char *v, int *out)
{
    if (v == NULL) return -1;
    if (strcmp(v, "1") == 0 || strcmp(v, "true") == 0 || strcmp(v, "on") == 0 ||
        strcmp(v, "yes") == 0) {
        *out = 1;
        return 0;
    }
    if (strcmp(v, "0") == 0 || strcmp(v, "false") == 0 || strcmp(v, "off") == 0 ||
        strcmp(v, "no") == 0) {
        *out = 0;
        return 0;
    }
    return -1;
}

/* route_intents=volume,weather,screen_off,time（空 = 0，不认识的名字忽略但不报错） */
static int wc_route_intents(const char *v, int *out)
{
    int mask = 0;
    char buf[128];
    char *p;

    if (v == NULL || out == NULL) return -1;
    if (strlen(v) >= sizeof(buf)) return -1;
    snprintf(buf, sizeof(buf), "%s", v);
    for (p = buf; ; p = NULL) {
        char *tok = strtok(p, ", ");
        if (tok == NULL) break;
        if (strcmp(tok, "volume") == 0) mask |= T7B_ROUTE_VOLUME;
        else if (strcmp(tok, "weather") == 0) mask |= T7B_ROUTE_WEATHER;
        else if (strcmp(tok, "screen_off") == 0) mask |= T7B_ROUTE_SCREEN_OFF;
        else if (strcmp(tok, "screen_on") == 0) mask |= T7B_ROUTE_SCREEN_ON;
        else if (strcmp(tok, "media") == 0) mask |= T7B_ROUTE_MEDIA;
        else if (strcmp(tok, "time") == 0) mask |= T7B_ROUTE_TIME;
        else if (strcmp(tok, "all") == 0) mask |= T7B_ROUTE_ALL;
        else if (strcmp(tok, "none") == 0) mask = 0;
        /* 其它名字：忽略（前向兼容，不让一个拼写错误把整份配置废掉） */
    }
    *out = mask;
    return 0;
}

static int wc_int(const char *v, int lo, int hi, int *out)
{
    char *end = NULL;
    long v2;

    if (v == NULL || v[0] == '\0') return -1;
    v2 = strtol(v, &end, 10);
    if (end == NULL || *end != '\0') return -1;
    if (v2 < lo || v2 > hi) return -1;
    *out = (int)v2;
    return 0;
}

static int wc_double(const char *v, double lo, double hi, double *out)
{
    char *end = NULL;
    double v2;

    if (v == NULL || v[0] == '\0') return -1;
    v2 = strtod(v, &end);
    if (end == NULL || *end != '\0') return -1;
    if (v2 < lo || v2 > hi) return -1;
    *out = v2;
    return 0;
}

static int wc_copy(char *dst, size_t cap, const char *src)
{
    size_t n;

    if (dst == NULL || cap == 0 || src == NULL) return -1;
    n = strlen(src);
    if (n >= cap) return -1;
    memcpy(dst, src, n + 1);
    return 0;
}

/* ---------------- 加载 ---------------- */

/* T7-03：把一行配置里的 "\n" 还原成真正的换行（提示词常用多行写法），
 * 其余字符原样复制；"\\n"（两个反斜杠 + n）按字面量保留一个反斜杠。 */
static int wc_copy_multiline(char *dst, size_t cap, const char *src)
{
    size_t o = 0;

    if (dst == NULL || cap == 0 || src == NULL) return -1;
    while (*src != '\0') {
        if (src[0] == '\\' && src[1] == '\\') {
            if (o + 1 >= cap) return -1;
            dst[o++] = '\\';
            src += 2;
        } else if (src[0] == '\\' && src[1] == 'n') {
            if (o + 1 >= cap) return -1;
            dst[o++] = '\n';
            src += 2;
        } else {
            if (o + 1 >= cap) return -1;
            dst[o++] = *src++;
        }
    }
    dst[o] = '\0';
    return 0;
}

/* T7-03：从文件读取 system prompt（最多 cap-1 字节；不允许把 key 之类凭据串进来，
 * 这里只做"读文本 + 去尾部空白"，不做任何解释）。 */
static int wc_sys_prompt_from_file(char *dst, size_t cap, const char *path,
                                   char *err, size_t errlen)
{
    FILE *f;
    size_t n;

    if (dst == NULL || cap == 0 || path == NULL) return -1;
    f = fopen(path, "rb");
    if (f == NULL) {
        if (err) snprintf(err, errlen, "system_prompt_file: cannot open %s", path);
        return -1;
    }
    n = fread(dst, 1, cap - 1, f);
    fclose(f);
    if (n == 0) {
        if (err) snprintf(err, errlen, "system_prompt_file: %s is empty", path);
        return -1;
    }
    dst[n] = '\0';
    while (n > 0 && (dst[n - 1] == '\n' || dst[n - 1] == '\r' || dst[n - 1] == ' ')) {
        dst[--n] = '\0';
    }
    return 0;
}

static int wc_apply(t6b_config *cfg, const char *key, const char *val, char *err, size_t errlen)
{
    int iv;
    double dv;

    if (strcmp(key, "provider") == 0) {
        if (wc_copy(cfg->provider_name, sizeof(cfg->provider_name), val) != 0) goto bad;
        return 0;
    }
    if (strcmp(key, "base_url") == 0) {
        if (wc_copy(cfg->deepseek.base_url, sizeof(cfg->deepseek.base_url), val) != 0) goto bad;
        return 0;
    }
    if (strcmp(key, "model") == 0) {
        if (wc_copy(cfg->deepseek.model, sizeof(cfg->deepseek.model), val) != 0) goto bad;
        return 0;
    }
    if (strcmp(key, "api_key_file") == 0) {
        if (wc_copy(cfg->deepseek.api_key_file, sizeof(cfg->deepseek.api_key_file), val) != 0) {
            goto bad;
        }
        return 0;
    }
    if (strcmp(key, "temperature") == 0) {
        if (wc_double(val, 0.0, 2.0, &dv) != 0) goto bad;
        cfg->deepseek.temperature = dv;
        return 0;
    }
    if (strcmp(key, "max_tokens") == 0) {
        if (wc_int(val, 1, 8192, &iv) != 0) goto bad;
        cfg->deepseek.max_tokens = iv;
        return 0;
    }
    if (strcmp(key, "context_enabled") == 0) {
        if (wc_bool(val, &iv) != 0) goto bad;
        cfg->context_enabled = iv;
        return 0;
    }
    if (strcmp(key, "context_max_messages") == 0) {
        if (wc_int(val, 2, CV_MAX_MESSAGES_CAP, &iv) != 0) goto bad;
        cfg->context_max_messages = iv;
        return 0;
    }
    if (strcmp(key, "context_file") == 0) {
        if (wc_copy(cfg->context_file, sizeof(cfg->context_file), val) != 0) goto bad;
        return 0;
    }
    /* T7-02：播报回声过滤（默认开；写 off 只关这一层过滤，不影响任何音频链路） */
    if (strcmp(key, "echo_filter") == 0) {
        if (wc_bool(val, &iv) != 0) goto bad;
        cfg->echo_filter = iv;
        return 0;
    }
    if (strcmp(key, "echo_no_command") == 0) {
        if (wc_bool(val, &iv) != 0) goto bad;
        cfg->echo_no_command = iv;
        return 0;
    }
    /* T7-03：统一 system prompt。
     *   system_prompt=<一行文本>             （\n 写成字面量 "\\n"，这里还原成换行）
     *   system_prompt_file=<文件路径>        （多行提示词放文件，key 文件之外唯一允许的外部输入）
     * 两者都写时以 system_prompt 为准（文件只是方便写多行）。 */
    if (strcmp(key, "system_prompt") == 0) {
        if (wc_copy_multiline(cfg->deepseek.system_prompt,
                              sizeof(cfg->deepseek.system_prompt), val) != 0) goto bad;
        return 0;
    }
    if (strcmp(key, "system_prompt_file") == 0) {
        if (wc_sys_prompt_from_file(cfg->deepseek.system_prompt,
                                    sizeof(cfg->deepseek.system_prompt), val,
                                    err, errlen) != 0) return -2;
        return 0;
    }
    /* T7-04：本地意图优先路由（route=native）与 ASR 暂存门 / 会话窗口。
     * route_intents 用名字列表，写成 "volume,weather,screen_off,time"；空值 = 一个都不路由。 */
    if (strcmp(key, "route_native") == 0) {
        if (wc_bool(val, &iv) != 0) goto bad;
        cfg->route_native = iv;
        return 0;
    }
    if (strcmp(key, "route_intents") == 0) {
        if (wc_route_intents(val, &iv) != 0) goto bad;
        cfg->route_intents = iv;
        return 0;
    }
    if (strcmp(key, "gate") == 0) {
        if (wc_bool(val, &iv) != 0) goto bad;
        cfg->gate.enabled = iv;
        return 0;
    }
    if (strcmp(key, "gate_debounce_ms") == 0) {
        if (wc_int(val, 0, 10000, &iv) != 0) goto bad;
        cfg->gate.debounce_ms = iv;
        return 0;
    }
    if (strcmp(key, "gate_max_hold_ms") == 0) {
        if (wc_int(val, 0, 30000, &iv) != 0) goto bad;
        cfg->gate.max_hold_ms = iv;
        return 0;
    }
    if (strcmp(key, "gate_cross_session") == 0) {
        if (wc_bool(val, &iv) != 0) goto bad;
        cfg->gate.cross_session = iv;
        return 0;
    }
    if (strcmp(key, "gate_cross_session_ms") == 0) {
        if (wc_int(val, 0, 10000, &iv) != 0) goto bad;
        cfg->gate.cross_session_ms = iv;
        return 0;
    }
    if (strcmp(key, "session") == 0) {
        if (wc_bool(val, &iv) != 0) goto bad;
        cfg->session.enabled = iv;
        return 0;
    }
    if (strcmp(key, "session_timeout_ms") == 0) {
        if (wc_int(val, 1000, 600000, &iv) != 0) goto bad;
        cfg->session.timeout_ms = iv;
        return 0;
    }
    /* 明确拒绝把凭据写进普通配置：只认 api_key_file */
    if (strcmp(key, "api_key") == 0) {
        if (err) snprintf(err, errlen, "api_key is not accepted in the config file; "
                                       "use api_key_file");
        return -2;
    }
    return 1;   /* 未知 key：忽略 */

bad:
    if (err) snprintf(err, errlen, "bad value for %s", key);
    return -2;
}

int wc_load(t6b_config *cfg, const char *path, int *applied, char *err, size_t errlen)
{
    static char buf[WC_FILE_MAX + 1];
    size_t len = 0;
    char *p;
    int n = 0;

    if (cfg == NULL || path == NULL) return -1;
    if (applied != NULL) *applied = 0;
    if (wu_file_size(path) < 0) {
        if (err) snprintf(err, errlen, "config file not found");
        return -1;
    }
    if (wu_read_file(path, buf, sizeof(buf), &len) != 0) {
        if (err) snprintf(err, errlen, "config file read failed");
        return -1;
    }

    p = buf;
    while (p != NULL && *p != '\0') {
        char *line = p;
        char *nl = strchr(p, '\n');
        char *eq;
        char *key;
        char *val;
        int rc;

        if (nl != NULL) {
            *nl = '\0';
            p = nl + 1;
        } else {
            p = NULL;
        }

        line = wc_trim(line);
        if (line[0] == '\0' || line[0] == '#' || line[0] == ';') continue;

        eq = strchr(line, '=');
        if (eq == NULL) continue;              /* 坏行忽略，不影响其它项 */
        *eq = '\0';
        key = wc_trim(line);
        val = wc_trim(eq + 1);
        if (key[0] == '\0') continue;

        rc = wc_apply(cfg, key, val, err, errlen);
        if (rc == -2) return -2;
        if (rc == 0) n++;
    }

    if (applied != NULL) *applied = n;
    return 0;
}

/* ---------------- 写出当前配置（原子） ---------------- */

/* 位掩码 -> 名字串（写成配置文件用；固定缓冲区，调用方立即使用） */
static const char *wc_route_intents_str(int mask)
{
    static char out[96];
    size_t o = 0;

    out[0] = '\0';
    if (mask & T7B_ROUTE_VOLUME)
        o += (size_t)snprintf(out + o, sizeof(out) - o, "%svolume", o ? "," : "");
    if ((mask & T7B_ROUTE_WEATHER) && o + 9 < sizeof(out))
        o += (size_t)snprintf(out + o, sizeof(out) - o, "%sweather", o ? "," : "");
    if ((mask & T7B_ROUTE_SCREEN_OFF) && o + 12 < sizeof(out))
        o += (size_t)snprintf(out + o, sizeof(out) - o, "%sscreen_off", o ? "," : "");
    if ((mask & T7B_ROUTE_SCREEN_ON) && o + 11 < sizeof(out))
        o += (size_t)snprintf(out + o, sizeof(out) - o, "%sscreen_on", o ? "," : "");
    if ((mask & T7B_ROUTE_TIME) && o + 6 < sizeof(out))
        o += (size_t)snprintf(out + o, sizeof(out) - o, "%stime", o ? "," : "");
    if ((mask & T7B_ROUTE_MEDIA) && o + 6 < sizeof(out))
        o += (size_t)snprintf(out + o, sizeof(out) - o, "%smedia", o ? "," : "");
    if (o == 0) snprintf(out, sizeof(out), "none");
    return out;
}

int wc_write(const t6b_config *cfg, const char *path, char *err, size_t errlen)
{
    static char buf[2048];
    char tmp[WC_LINE_MAX + 16];
    char dir[WC_LINE_MAX];
    int n, fd;

    if (cfg == NULL || path == NULL) return -1;
    if (snprintf(tmp, sizeof(tmp), "%s.tmp", path) >= (int)sizeof(tmp)) {
        if (err) snprintf(err, errlen, "config temp path too long");
        return -1;
    }

    n = snprintf(buf, sizeof(buf),
                 "# ai_worker config (T7-01)\n"
                 "# NOTE: no credential here; only the path of the key file.\n"
                 "provider=%s\n"
                 "base_url=%s\n"
                 "model=%s\n"
                 "api_key_file=%s\n"
                 "temperature=%.2f\n"
                 "max_tokens=%d\n"
                 "context_enabled=%d\n"
                 "context_max_messages=%d\n"
                 "echo_filter=%d\n"
                 "echo_no_command=%d\n"
                 "route_native=%d\n"
                 "route_intents=%s\n"
                 "gate=%d\n"
                 "gate_debounce_ms=%d\n"
                 "gate_max_hold_ms=%d\n"
                 "gate_cross_session=%d\n"
                 "gate_cross_session_ms=%d\n"
                 "session=%d\n"
                 "session_timeout_ms=%d\n",
                 cfg->provider_name, cfg->deepseek.base_url, cfg->deepseek.model,
                 cfg->deepseek.api_key_file, cfg->deepseek.temperature,
                 cfg->deepseek.max_tokens, cfg->context_enabled, cfg->context_max_messages,
                 cfg->echo_filter, cfg->echo_no_command,
                 cfg->route_native, wc_route_intents_str(cfg->route_intents),
                 cfg->gate.enabled ? 1 : 0, cfg->gate.debounce_ms, cfg->gate.max_hold_ms,
                 cfg->gate.cross_session ? 1 : 0, cfg->gate.cross_session_ms,
                 cfg->session.enabled ? 1 : 0, cfg->session.timeout_ms);
    if (n < 0 || (size_t)n >= sizeof(buf)) {
        if (err) snprintf(err, errlen, "config buffer too small");
        return -1;
    }

    wu_dir_name(path, dir, sizeof(dir));
    if (dir[0] != '\0' && strcmp(dir, ".") != 0) (void)wu_mkdir_p(dir);

    fd = wu_open_wo(tmp);                     /* 0600 */
    if (fd < 0) {
        if (err) snprintf(err, errlen, "config temp open failed");
        return -1;
    }
    if (wu_write_all(fd, buf, (size_t)n) != 0 || wu_fsync(fd) != 0) {
        wu_close(fd);
        wu_unlink(tmp);
        if (err) snprintf(err, errlen, "config write/fsync failed");
        return -1;
    }
    wu_close(fd);
    if (wu_rename_replace(tmp, path) != 0) {
        wu_unlink(tmp);
        if (err) snprintf(err, errlen, "config rename failed");
        return -1;
    }
    (void)wu_fsync_dir(dir);
    return 0;
}
