/*
 * model_cfg.c -- T9-08C: 多厂商大模型配置的解析与加载（见 model_cfg.h）
 *
 * 只有一个职责：把 App 写出来的 models.json 变成结构体，并在文件变化时重新加载。
 * 不做网络、不认识厂商协议、不加解密敏——厂商之间的差异由 adapter 负责。
 *
 * 解析策略：手写、严格、有界。未知字段一律忽略（App 以后加字段不会把老 worker 弄崩），
 * 已知字段类型不对就报错（宁可明确失败，也不要猜出一个错误的 key/url）。
 */
#include "model_cfg.h"

#include "model_json.h"

#include <ctype.h>
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>

/* ------------------------------------------------------------------ helpers */

void mc_defaults(model_cfg *c)
{
    if (c == NULL) return;
    memset(c, 0, sizeof(*c));
    c->max_tokens = 512;
    c->temperature = 0.7;
    c->timeout_ms = 30000;
    c->enabled = 1;
}

int mc_valid_id(const char *id)
{
    size_t i, n;
    if (id == NULL) return 0;
    n = strlen(id);
    if (n == 0 || n >= MC_ID_MAX) return 0;
    for (i = 0; i < n; i++) {
        char ch = id[i];
        int ok = (ch >= 'a' && ch <= 'z') || (ch >= 'A' && ch <= 'Z') ||
                 (ch >= '0' && ch <= '9') || ch == '-' || ch == '_' || ch == '.';
        if (!ok) return 0;
    }
    return 1;
}

int mc_valid_url(const char *u)
{
    if (u == NULL || u[0] == '\0') return 0;
    if (strncmp(u, "https://", 8) == 0) return strlen(u) > 8 + 1;
    if (strncmp(u, "http://", 7) == 0) return strlen(u) > 7 + 1;
    return 0;
}

/* ------------------------------------------------------------------- parser */

/* 解析器不在这里：JSON 游标由 model_json.c 提供（适配器也用它读响应），
 * 这样整个 T9-08C 只有一份 JSON 实现。model_cfg 只负责"字段 -> 结构体 + 默认值"。 */
/* ------------------------------------------------------------- model object */

static int mc_vendor_ok(const char *v)
{
    return strcmp(v, MC_VENDOR_DOUBAO) == 0 || strcmp(v, MC_VENDOR_QWEN) == 0 ||
           strcmp(v, MC_VENDOR_OPENAI) == 0;
}

/* 按厂商补齐默认值：用户留空的字段用该厂商官方默认地址/模式，界面因此可以只填 key + 模型 */
static void mc_apply_vendor_defaults(model_cfg *c)
{
    if (strcmp(c->vendor, MC_VENDOR_DOUBAO) == 0) {
        if (c->base_url[0] == '\0')
            snprintf(c->base_url, sizeof(c->base_url), "%s", MC_DOUBAO_BASE_DEFAULT);
        if (c->model[0] == '\0' && c->endpoint_id[0] != '\0')
            snprintf(c->model, sizeof(c->model), "%s", c->endpoint_id);
        if (c->endpoint_id[0] == '\0' && c->model[0] != '\0')
            snprintf(c->endpoint_id, sizeof(c->endpoint_id), "%s", c->model);
    } else if (strcmp(c->vendor, MC_VENDOR_QWEN) == 0) {
        if (c->api_mode[0] == '\0')
            snprintf(c->api_mode, sizeof(c->api_mode), "%s", MC_MODE_NATIVE);
        if (c->base_url[0] == '\0')
            snprintf(c->base_url, sizeof(c->base_url), "%s",
                     strcmp(c->api_mode, MC_MODE_COMPAT) == 0
                         ? MC_QWEN_COMPAT_BASE_DEFAULT : MC_QWEN_BASE_DEFAULT);
    }
}

static int mc_get_string(mj *j, char *out, size_t cap, const char *key,
                         char *err, size_t errlen)
{
    int rc = mj_str_value(j, out, cap, NULL);
    if (rc == -2) {
        if (err && errlen) snprintf(err, errlen, "%s is too long (max %u)", key, (unsigned)cap - 1);
        return -1;
    }
    if (rc != 0) {
        if (err && errlen) snprintf(err, errlen, "%s must be a string", key);
        return -1;
    }
    return 0;
}

static int mc_parse_model(mj *j, model_cfg *c, char *err, size_t errlen)
{
    char key[48];

    mc_defaults(c);
    while (mj_obj_next(j, key, sizeof(key))) {
        if (strcmp(key, "id") == 0) {
            if (mc_get_string(j, c->id, sizeof(c->id), "id", err, errlen) != 0) return -1;
        } else if (strcmp(key, "vendor") == 0) {
            if (mc_get_string(j, c->vendor, sizeof(c->vendor), "vendor", err, errlen) != 0) return -1;
        } else if (strcmp(key, "label") == 0) {
            if (mc_get_string(j, c->label, sizeof(c->label), "label", err, errlen) != 0) return -1;
        } else if (strcmp(key, "base_url") == 0) {
            if (mc_get_string(j, c->base_url, sizeof(c->base_url), "base_url", err, errlen) != 0) return -1;
        } else if (strcmp(key, "api_key") == 0) {
            if (mc_get_string(j, c->api_key, sizeof(c->api_key), "api_key", err, errlen) != 0) return -1;
        } else if (strcmp(key, "model") == 0) {
            if (mc_get_string(j, c->model, sizeof(c->model), "model", err, errlen) != 0) return -1;
        } else if (strcmp(key, "endpoint_id") == 0) {
            if (mc_get_string(j, c->endpoint_id, sizeof(c->endpoint_id), "endpoint_id", err, errlen) != 0)
                return -1;
        } else if (strcmp(key, "api_mode") == 0) {
            if (mc_get_string(j, c->api_mode, sizeof(c->api_mode), "api_mode", err, errlen) != 0) return -1;
        } else if (strcmp(key, "extra") == 0) {
            int ch = mj_peek_c(j);
            if (ch == '"') {
                if (mc_get_string(j, c->extra, sizeof(c->extra), "extra", err, errlen) != 0) return -1;
            } else if (ch == '{' || ch == '[') {
                const char *raw = NULL;
                size_t rawlen = 0;
                if (mj_skip_raw(j, &raw, &rawlen) != 0) {
                    if (err && errlen) snprintf(err, errlen, "extra is not valid JSON");
                    return -1;
                }
                if (rawlen >= sizeof(c->extra)) {
                    if (err && errlen) snprintf(err, errlen, "extra is too long (max %u)",
                                                (unsigned)sizeof(c->extra) - 1);
                    return -1;
                }
                memcpy(c->extra, raw, rawlen);
                c->extra[rawlen] = '\0';
            } else {
                if (mj_skip(j) != 0) {
                    if (err && errlen) snprintf(err, errlen, "bad value for extra");
                    return -1;
                }
            }
        } else if (strcmp(key, "max_tokens") == 0 || strcmp(key, "timeout_ms") == 0 ||
                   strcmp(key, "temperature") == 0) {
            double d = 0;
            if (mj_num_value(j, &d) != 0) {
                if (err && errlen) snprintf(err, errlen, "%s must be a number", key);
                return -1;
            }
            if (strcmp(key, "max_tokens") == 0) c->max_tokens = (int)d;
            else if (strcmp(key, "timeout_ms") == 0) c->timeout_ms = (int)d;
            else c->temperature = d;
        } else if (strcmp(key, "enabled") == 0) {
            int ch = mj_peek_c(j);
            if (ch == 't' || ch == 'f') {
                const char *raw = NULL;
                size_t rawlen = 0;
                if (mj_skip_raw(j, &raw, &rawlen) != 0) {
                    if (err && errlen) snprintf(err, errlen, "bad value for enabled");
                    return -1;
                }
                c->enabled = (rawlen == 4 && memcmp(raw, "true", 4) == 0) ? 1 : 0;
            } else {
                double d = 0;
                if (mj_num_value(j, &d) != 0) {
                    if (err && errlen) snprintf(err, errlen, "bad value for enabled");
                    return -1;
                }
                c->enabled = (d != 0.0);
            }
        } else {
            /* 未知字段：忽略（App 以后加字段不会把老 worker 弄坏） */
            if (mj_skip(j) != 0) {
                if (err && errlen) snprintf(err, errlen, "bad value for '%s'", key);
                return -1;
            }
        }
    }
    if (mj_bad(j)) {
        if (err && errlen) snprintf(err, errlen, "malformed model entry");
        return -1;
    }

    if (!mc_valid_id(c->id)) {
        if (err && errlen) snprintf(err, errlen, "model entry has no usable id");
        return -1;
    }
    if (!mc_vendor_ok(c->vendor)) {
        if (err && errlen) snprintf(err, errlen, "unknown vendor '%s' (id=%s)", c->vendor, c->id);
        return -1;
    }
    if (strcmp(c->vendor, MC_VENDOR_QWEN) == 0 && c->api_mode[0] != '\0' &&
        strcmp(c->api_mode, MC_MODE_NATIVE) != 0 && strcmp(c->api_mode, MC_MODE_COMPAT) != 0) {
        if (err && errlen) snprintf(err, errlen, "api_mode must be native or compat (id=%s)", c->id);
        return -1;
    }
    if (c->base_url[0] != '\0' && !mc_valid_url(c->base_url)) {
        if (err && errlen) snprintf(err, errlen, "base_url must start with http(s):// (id=%s)", c->id);
        return -1;
    }
    if (c->max_tokens < 1) c->max_tokens = 1;
    if (c->max_tokens > 8192) c->max_tokens = 8192;
    if (c->temperature < 0.0) c->temperature = 0.0;
    if (c->temperature > 2.0) c->temperature = 2.0;
    if (c->timeout_ms < 1000) c->timeout_ms = 1000;
    if (c->timeout_ms > 600000) c->timeout_ms = 600000;
    mc_apply_vendor_defaults(c);
    if (c->label[0] == '\0') snprintf(c->label, sizeof(c->label), "%s-%s", c->vendor, c->id);
    return 0;
}

int mc_parse_list(const char *buf, size_t len, model_list *out, char *err, size_t errlen)
{
    mj j;
    char key[48];
    char e2[MC_ERR_MAX];

    if (out == NULL) return -1;
    memset(out, 0, sizeof(*out));
    if (err && errlen) err[0] = '\0';
    if (buf == NULL || len == 0) {
        if (err && errlen) snprintf(err, errlen, "empty config");
        snprintf(out->error, sizeof(out->error), "empty config");
        return -1;
    }
    mj_open(&j, buf, len);
    if (mj_obj_open(&j) != 0) {
        if (err && errlen) snprintf(err, errlen, "config is not a JSON object");
        goto fail;
    }
    while (mj_obj_next(&j, key, sizeof(key))) {
        if (strcmp(key, "v") == 0) {
            double d = 0;
            if (mj_num_value(&j, &d) != 0 || (int)d != 1) {
                if (err && errlen) snprintf(err, errlen, "unsupported config version");
                goto fail;
            }
            continue;
        }
        if (strcmp(key, "default_id") == 0) {
            if (mc_get_string(&j, out->default_id, sizeof(out->default_id), "default_id",
                              err, errlen) != 0) goto fail;
            continue;
        }
        if (strcmp(key, "models") == 0) {
            if (mj_arr_open(&j) != 0) {
                if (err && errlen) snprintf(err, errlen, "models is not an array");
                goto fail;
            }
            while (mj_arr_next(&j)) {
                model_cfg one;
                int k;
                if (out->count >= MC_MAX_MODELS) {
                    if (err && errlen) snprintf(err, errlen, "too many models (max %d)", MC_MAX_MODELS);
                    goto fail;
                }
                e2[0] = '\0';
                if (mc_parse_model(&j, &one, e2, sizeof(e2)) != 0) {
                    if (err && errlen) snprintf(err, errlen, "%s", e2[0] ? e2 : "bad model entry");
                    goto fail;
                }
                for (k = 0; k < out->count; k++) {
                    if (strcmp(out->items[k].id, one.id) == 0) {
                        if (err && errlen) snprintf(err, errlen, "duplicate model id '%s'", one.id);
                        goto fail;
                    }
                }
                out->items[out->count++] = one;
            }
            continue;
        }
        if (mj_skip(&j) != 0) {
            if (err && errlen) snprintf(err, errlen, "bad value for '%s'", key);
            goto fail;
        }
    }
    if (mj_bad(&j)) {
        if (err && errlen) snprintf(err, errlen, "malformed config");
        goto fail;
    }
    if (mj_peek_c(&j) >= 0) {
        if (err && errlen) snprintf(err, errlen, "trailing data after the config object");
        goto fail;
    }
    out->loaded = 1;
    out->error[0] = '\0';
    return 0;

fail:
    if (err != NULL && errlen > 0) snprintf(out->error, sizeof(out->error), "%s", err);
    out->loaded = 0;
    out->count = 0;
    return -1;
}
/* --------------------------------------------------------------------- file */

static int mc_stat_file(const char *path, long long *mtime_ms, long long *size)
{
    struct stat st;
    if (path == NULL || path[0] == '\0') return -1;
    if (stat(path, &st) != 0) return -1;
    if (!S_ISREG(st.st_mode)) return -1;
    if (mtime_ms) *mtime_ms = (long long)st.st_mtime * 1000LL;
    if (size) *size = (long long)st.st_size;
    return 0;
}

static int mc_read_all(const char *path, char *buf, size_t cap, size_t *outlen)
{
    FILE *f;
    size_t n;

    if (path == NULL || buf == NULL) return -1;
    f = fopen(path, "rb");
    if (f == NULL) return -1;
    n = fread(buf, 1, cap - 1, f);
    fclose(f);
    buf[n] = '\0';
    if (outlen) *outlen = n;
    return 0;
}

int mc_load(const char *path, model_list *out)
{
    char *buf;
    char err[MC_ERR_MAX];
    size_t len = 0;
    long long mt = 0, sz = 0;

    if (out == NULL) return -1;
    memset(out, 0, sizeof(*out));
    if (path != NULL) snprintf(out->source, sizeof(out->source), "%s", path);
    err[0] = '\0';
    if (mc_stat_file(path, &mt, &sz) != 0) {
        snprintf(out->error, sizeof(out->error), "cannot stat %s", path != NULL ? path : "(null)");
        return -1;
    }
    if (sz <= 0 || sz > (long long)MC_FILE_MAX) {
        snprintf(out->error, sizeof(out->error), "config size out of range (%lld)", sz);
        return -1;
    }
    buf = (char *)malloc((size_t)MC_FILE_MAX);
    if (buf == NULL) {
        snprintf(out->error, sizeof(out->error), "out of memory");
        return -1;
    }
    if (mc_read_all(path, buf, (size_t)MC_FILE_MAX, &len) != 0) {
        free(buf);
        snprintf(out->error, sizeof(out->error), "cannot read %s", path != NULL ? path : "(null)");
        return -1;
    }
    if (mc_parse_list(buf, len, out, err, sizeof(err)) != 0) {
        free(buf);
        if (out->error[0] == '\0')
            snprintf(out->error, sizeof(out->error), "%s", err[0] ? err : "parse failed");
        return -1;
    }
    free(buf);
    out->mtime_ms = mt;
    out->size = sz;
    return 0;
}

static int mc_load_quiet(const char *path, model_list *out, char *err, size_t errlen)
{
    model_list tmp;
    int rc;

    memset(&tmp, 0, sizeof(tmp));
    rc = mc_load(path, &tmp);
    if (rc != 0) {
        if (err && errlen) snprintf(err, errlen, "%s", tmp.error[0] ? tmp.error : "load failed");
        return -1;
    }
    *out = tmp;
    return 0;
}

int mc_reload_if_changed(const char *path, model_list *lst)
{
    long long mt = 0, sz = 0;
    char err[MC_ERR_MAX];

    if (lst == NULL) return -1;
    if (mc_stat_file(path, &mt, &sz) != 0) {
        /* 文件暂时不在（App 正在原子替换）：保留内存里的上一份，不算失败 */
        return 0;
    }
    if (lst->loaded && mt == lst->mtime_ms && sz == lst->size) return 0;
    err[0] = '\0';
    if (mc_load_quiet(path, lst, err, sizeof(err)) != 0) {
        /* 解析失败：把错误记进 error，但**保留**上一份可用配置（不因为一次写坏就停止工作） */
        snprintf(lst->error, sizeof(lst->error), "%s", err);
        return -1;
    }
    return 1;
}

const model_cfg *mc_active(const model_list *lst)
{
    const model_cfg *c;
    int i;

    if (lst == NULL || lst->count <= 0) return NULL;
    if (lst->default_id[0] != '\0') {
        c = mc_find(lst, lst->default_id);
        if (c != NULL && c->enabled) return c;
    }
    for (i = 0; i < lst->count; i++) {
        if (lst->items[i].enabled) return &lst->items[i];
    }
    return NULL;
}

const model_cfg *mc_find(const model_list *lst, const char *id)
{
    int i;
    if (lst == NULL || id == NULL || id[0] == '\0') return NULL;
    for (i = 0; i < lst->count; i++) {
        if (strcmp(lst->items[i].id, id) == 0) return &lst->items[i];
    }
    return NULL;
}
