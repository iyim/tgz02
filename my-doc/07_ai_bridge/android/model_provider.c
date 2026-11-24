/*
 * model_provider.c -- T9-08C: 统一模型调用入口实现（见 model_provider.h）
 */
#include "model_provider.h"

#include "doubao_provider.h"
#include "openai_provider.h"
#include "qwen_provider.h"

#include <stdio.h>
#include <string.h>

/* ------------------------------------------------------------------ 基础 */

static void mp_clear_info(model_provider *mp)
{
    memset(&mp->info, 0, sizeof(mp->info));
    mp->active = 0;
}

static void mp_fill_info(model_provider *mp, const model_cfg *c)
{
    memset(&mp->info, 0, sizeof(mp->info));
    if (c == NULL) {
        mp->active = 0;
        return;
    }
    snprintf(mp->info.id, sizeof(mp->info.id), "%s", c->id);
    snprintf(mp->info.vendor, sizeof(mp->info.vendor), "%s", c->vendor);
    snprintf(mp->info.label, sizeof(mp->info.label), "%s", c->label);
    snprintf(mp->info.model, sizeof(mp->info.model), "%s", c->model);
    snprintf(mp->info.endpoint_id, sizeof(mp->info.endpoint_id), "%s", c->endpoint_id);
    snprintf(mp->info.api_mode, sizeof(mp->info.api_mode), "%s", c->api_mode);
    snprintf(mp->info.base_url, sizeof(mp->info.base_url), "%s", c->base_url);
    mp->info.max_tokens = c->max_tokens;
    mp->info.timeout_ms = c->timeout_ms;
    mp->info.active = 1;
    mp->active = 1;
}

void mp_init(model_provider *mp, const char *path, const tg_http_xport *xport, void *xctx)
{
    if (mp == NULL) return;
    memset(mp, 0, sizeof(*mp));
    if (path != NULL) snprintf(mp->path, sizeof(mp->path), "%s", path);
    mp->xport = xport;
    mp->xctx = xctx;
}

/* 由配置填充一次调用的输入。system_prompt 故意留空：
 * 会话的 messages（含 system 第一条）由 conv_context 生成，这里不再插一遍。 */
static void mp_build_in(const model_cfg *c, const char *messages_json, mcall_in *in)
{
    memset(in, 0, sizeof(*in));
    in->base_url = c->base_url;
    in->api_key = c->api_key;
    in->model = c->model;
    in->endpoint_id = c->endpoint_id;
    in->api_mode = c->api_mode;
    in->extra = c->extra;
    in->system_prompt = NULL;
    in->messages_json = messages_json;
    in->max_tokens = c->max_tokens;
    in->temperature = c->temperature;
    in->connect_timeout_ms = (c->timeout_ms < 5000) ? c->timeout_ms : 5000;
    in->total_timeout_ms = c->timeout_ms;
}

/* 按厂商分发（唯一的"选谁"的地方） */
static int mp_dispatch(const model_cfg *c, const char *messages_json,
                       const tg_http_xport *xp, void *xctx,
                       char *out, size_t outcap, size_t *outlen, mcall_meta *meta)
{
    mcall_in in;

    mp_build_in(c, messages_json, &in);
    if (strcmp(c->vendor, MC_VENDOR_DOUBAO) == 0) {
        return db_call(&in, xp, xctx, out, outcap, outlen, meta);
    }
    if (strcmp(c->vendor, MC_VENDOR_QWEN) == 0) {
        return qw_call(&in, xp, xctx, out, outcap, outlen, meta);
    }
    if (strcmp(c->vendor, MC_VENDOR_OPENAI) == 0) {
        return oa_call(&in, xp, xctx, out, outcap, outlen, meta);
    }
    if (meta != NULL) {
        mcall_meta_init(meta);
        snprintf(meta->err_class, sizeof(meta->err_class), "unknown_vendor");
        snprintf(meta->err_detail, sizeof(meta->err_detail), "vendor '%s'", c->vendor);
    }
    return -1;
}

/* ------------------------------------------------------------------ reload */

int mp_reload(model_provider *mp)
{
    model_list fresh;
    const model_cfg *act;
    int rc;

    if (mp == NULL) return -1;
    memset(&fresh, 0, sizeof(fresh));
    if (mp->path[0] == '\0') {
        snprintf(mp->cfg_error, sizeof(mp->cfg_error), "no model config path");
        mp_clear_info(mp);
        return -1;
    }
    if (mc_load(mp->path, &fresh) != 0) {
        /* 配置坏了：把原因记下来，但保留上一次可用的配置（服务不因此中断） */
        snprintf(mp->cfg_error, sizeof(mp->cfg_error), "%s",
                 fresh.error[0] != '\0' ? fresh.error : "cannot load model config");
        if (!mp->active) mp_clear_info(mp);
        return -1;
    }
    act = mc_active(&fresh);
    rc = 0;
    {
        const char *oldId = mp->active ? mp->info.id : "";
        const char *newId = (act != NULL) ? act->id : "";
        if (!mp->list.loaded || strcmp(oldId, newId) != 0) rc = 1;
    }
    mp->list = fresh;
    mp->reloads++;
    mp->cfg_error[0] = '\0';
    if (act == NULL) {
        snprintf(mp->cfg_error, sizeof(mp->cfg_error),
                 fresh.count > 0 ? "no enabled model (check default_id / enabled)"
                                 : "no model configured yet");
        mp_clear_info(mp);
        if (rc == 0) rc = 1;   /* 从有到无也算变化 */
        return rc;
    }
    mp_fill_info(mp, act);
    return rc;
}

int mp_poll(model_provider *mp)
{
    char old_id[MC_ID_MAX];
    int had, rc, changed;
    const model_cfg *act;

    if (mp == NULL) return -1;
    if (mp->path[0] == '\0') return 0;
    snprintf(old_id, sizeof(old_id), "%s", mp->active ? mp->info.id : "");
    had = mp->active;

    rc = mc_reload_if_changed(mp->path, &mp->list);
    if (rc == 0) return 0;
    if (rc < 0) {
        /* 文件写坏/暂时读不到：记原因、保留上一份可用配置，服务不中断 */
        snprintf(mp->cfg_error, sizeof(mp->cfg_error), "%s",
                 mp->list.error[0] != '\0' ? mp->list.error : "cannot reload model config");
        return -1;
    }
    mp->reloads++;
    act = mc_active(&mp->list);
    if (act == NULL) {
        snprintf(mp->cfg_error, sizeof(mp->cfg_error),
                 mp->list.count > 0 ? "no enabled model (check default_id / enabled)"
                                    : "no model configured yet");
        mp_clear_info(mp);
        return had ? 1 : 0;
    }
    mp_fill_info(mp, act);
    mp->cfg_error[0] = '\0';
    changed = (strcmp(old_id, mp->info.id) != 0) || !had;
    return changed ? 1 : 0;
}

/* ------------------------------------------------------------------ 调用 */
int mp_send_text(model_provider *mp, const char *messages_json,
                 char *out, size_t outcap, size_t *outlen, mcall_meta *meta)
{
    const model_cfg *c;
    mcall_meta local;
    int rc;

    if (meta == NULL) meta = &local;
    mcall_meta_init(meta);
    if (mp == NULL || messages_json == NULL || out == NULL || outcap == 0) {
        snprintf(meta->err_class, sizeof(meta->err_class), "bad_args");
        return -1;
    }
    c = mc_active(&mp->list);
    if (c == NULL || !mp->active) {
        snprintf(meta->err_class, sizeof(meta->err_class), "no_model");
        snprintf(meta->err_detail, sizeof(meta->err_detail), "%s",
                 mp->cfg_error[0] != '\0' ? mp->cfg_error : "no enabled model");
        return -1;
    }
    mp->calls++;
    out[0] = '\0';
    if (outlen) *outlen = 0;
    rc = mp_dispatch(c, messages_json, mp->xport, mp->xctx, out, outcap, outlen, meta);

    mp->last_http = meta->http_status;
    mp->last_timed_out = meta->timed_out;
    mp->last_latency_ms = meta->latency_ms;
    mp->last_resp_bytes = meta->resp_bytes;
    if (rc == 0) {
        mp->ok++;
        mp->last_class[0] = '\0';
        mp->last_error[0] = '\0';
    } else {
        if (meta->timed_out) mp->timeouts++;
        mp->err++;
        snprintf(mp->last_class, sizeof(mp->last_class), "%s", meta->err_class);
        snprintf(mp->last_error, sizeof(mp->last_error), "%s", meta->err_detail);
        /* 失败时把"到底打了哪个地址"记一行（不含 key）：curl=6/7 这类错误只有看到 URL 才判得清 */
        fprintf(stdout, "[aiw] model call failed: id=%s vendor=%s model=%s base=%s "
                        "class=%s detail=%s\n",
                c->id, c->vendor, c->model, c->base_url, meta->err_class, meta->err_detail);
        fflush(stdout);
    }
    return rc;}

int mp_test_connection(model_provider *mp, const char *id, char *reason, size_t caplen)
{
    const model_cfg *c;
    mcall_meta meta;
    char out[256];
    size_t olen = 0;
    char why[MCALL_DETAIL_MAX + 64];
    int rc;

    if (reason != NULL && caplen > 0) reason[0] = '\0';
    if (mp == NULL) return -1;
    c = (id != NULL && id[0] != '\0') ? mc_find(&mp->list, id) : mc_active(&mp->list);
    if (c == NULL) {
        snprintf(mp->test_reason, sizeof(mp->test_reason),
                 "no such model configuration (id='%s')", id != NULL ? id : "");
        snprintf(mp->test_id, sizeof(mp->test_id), "%s", id != NULL ? id : "");
        mp->test_ran = 1;
        mp->test_ok = 0;
        if (reason && caplen) snprintf(reason, caplen, "%s", mp->test_reason);
        return -1;
    }
    {
        /* 最小请求：一句话；system 留空，避免把设备的人设塞进连接测试 */
        static const char ping[] = "[{\"role\":\"user\",\"content\":\"ping\"}]";
        mcall_meta_init(&meta);
        out[0] = '\0';
        rc = mp_dispatch(c, ping, mp->xport, mp->xctx, out, sizeof(out), &olen, &meta);
    }

    snprintf(mp->test_id, sizeof(mp->test_id), "%s", c->id);
    mp->test_ran = 1;
    mp->test_ms = meta.latency_ms;
    if (rc == 0) {
        mp->test_ok = 1;
        snprintf(mp->test_reason, sizeof(mp->test_reason), "ok: %s", out);
        if (reason && caplen) snprintf(reason, caplen, "%s", mp->test_reason);
        return 0;
    }
    mp->test_ok = 0;
    snprintf(why, sizeof(why), "%s%s%s",
             meta.err_class[0] != '\0' ? meta.err_class : "error",
             meta.err_detail[0] != '\0' ? ": " : "",
             meta.err_detail);
    snprintf(mp->test_reason, sizeof(mp->test_reason), "%s", why);
    if (reason && caplen) snprintf(reason, caplen, "%s", why);
    return -1;
}

int mp_model_info(const model_provider *mp, mp_info *out)
{
    if (mp == NULL || out == NULL || !mp->active) return -1;
    *out = mp->info;
    return 0;
}

/* ------------------------------------------------------- t6b_provider 绑定 */

static int mpp_init(t6b_provider *p, char *err, size_t errlen)
{
    model_provider *mp = (model_provider *)(p != NULL ? p->ctx : NULL);
    if (mp == NULL) {
        if (err) snprintf(err, errlen, "model provider ctx null");
        return -1;
    }
    if (!mp->active) {
        if (err) snprintf(err, errlen, "%s",
                          mp->cfg_error[0] != '\0' ? mp->cfg_error : "no enabled model");
        return -1;
    }
    return 0;
}

static void mpp_reply_from_meta(t6b_reply *out, const mcall_meta *meta, const char *text,
                                size_t textlen)
{
    if (out == NULL) return;
    memset(out, 0, sizeof(*out));
    out->mock = 0;
    out->latency_ms = meta->latency_ms;
    if (text != NULL) {
        size_t n = textlen;
        if (n >= sizeof(out->text)) n = sizeof(out->text) - 1;
        memcpy(out->text, text, n);
        out->text[n] = '\0';
        out->text_bytes = (int)n;
    }
    if (meta->timed_out) {
        out->status = T6B_P_TIMEOUT;
        out->code = 2;
    } else if (meta->err_class[0] != '\0') {
        out->status = T6B_P_ERROR;
        out->code = 1;
    } else {
        out->status = T6B_P_OK;
        out->code = 0;
        return;
    }
    {
        char msg[T6B_PROVIDER_MSG_MAX];
        size_t n = (size_t)snprintf(msg, sizeof(msg), "%s%s%s",
                                    meta->err_class[0] != '\0' ? meta->err_class : "error",
                                    meta->err_detail[0] != '\0' ? ": " : "",
                                    meta->err_detail);
        (void)n;
        snprintf(out->message, sizeof(out->message), "%s", msg);
    }
}

static int mpp_complete_msgs(t6b_provider *p, const char *messages_json, t6b_reply *out)
{
    model_provider *mp = (model_provider *)(p != NULL ? p->ctx : NULL);
    mcall_meta meta;
    char text[T6B_REPLY_TEXT_MAX];
    size_t tlen = 0;

    if (mp == NULL || out == NULL) return -1;
    memset(out, 0, sizeof(*out));
    memset(text, 0, sizeof(text));
    if (mp_send_text(mp, messages_json, text, sizeof(text), &tlen, &meta) != 0) {
        mpp_reply_from_meta(out, &meta, NULL, 0);
        return 0;   /* 已收敛成 reply.status，不抛给调用者 */
    }
    mpp_reply_from_meta(out, &meta, text, tlen);
    return 0;
}

static int mpp_complete(t6b_provider *p, const char *user_text, t6b_reply *out)
{
    char msgs[MCALL_BODY_MAX];
    char esc[T6B_REPLY_TEXT_MAX * 2];
    size_t o = 0, i;

    if (user_text == NULL) user_text = "";
    esc[0] = '\0';
    for (i = 0; user_text[i] != '\0' && o + 2 < sizeof(esc); i++) {
        unsigned char c = (unsigned char)user_text[i];
        if (c == '"' || c == '\\') { esc[o++] = '\\'; esc[o++] = (char)c; }
        else if (c == '\n' || c == '\r' || c == '\t') { esc[o++] = ' '; }
        else if (c < 0x20) { continue; }
        else esc[o++] = (char)c;
    }
    esc[o] = '\0';
    snprintf(msgs, sizeof(msgs), "[{\"role\":\"user\",\"content\":\"%s\"}]", esc);
    return mpp_complete_msgs(p, msgs, out);
}

static void mpp_fini(t6b_provider *p)
{
    (void)p;
}

static const t6b_provider_ops g_mpp_ops = {
    "models",
    mpp_init,
    mpp_complete,
    mpp_fini,
    mpp_complete_msgs
};

int mp_provider_open(t6b_provider *p, model_provider *mp)
{
    if (p == NULL || mp == NULL) return -1;
    p->ops = &g_mpp_ops;
    p->ctx = mp;
    return 0;
}

void mp_provider_close(t6b_provider *p)
{
    if (p == NULL) return;
    p->ops = NULL;
    p->ctx = NULL;
}
