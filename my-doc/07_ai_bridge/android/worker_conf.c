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
                 "context_max_messages=%d\n",
                 cfg->provider_name, cfg->deepseek.base_url, cfg->deepseek.model,
                 cfg->deepseek.api_key_file, cfg->deepseek.temperature,
                 cfg->deepseek.max_tokens, cfg->context_enabled, cfg->context_max_messages);
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
