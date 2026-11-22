/*
 * skill_dispatch.c -- T8-01：统一技能接口的实现（含音量与时间两个示例）
 *
 * 只做"派发 + 参数校验 + 明确的未实现回码"，不碰任何原厂私有函数：
 * 真正的落地动作由 t8_vol_ctx.apply 这样的回调注入，接入方（Worker / Hook）自己决定
 * 走原厂 AudioManager、走标准 AudioService，还是走测试桩。这样本文件可以完整地在
 * host 上单测，也不会把"未验证的原厂调用"藏进技能实现里。
 */
#include "skill_dispatch.h"
#include "intent_route.h"

#include <stdio.h>
#include <string.h>
#include <time.h>

static void sk_copy(char *dst, size_t cap, const char *src)
{
    size_t n;

    if (dst == NULL || cap == 0) return;
    if (src == NULL) { dst[0] = '\0'; return; }
    n = strlen(src);
    if (n >= cap) n = cap - 1;
    memcpy(dst, src, n);
    dst[n] = '\0';
}

void t8_skill_registry_init(t8_skill_registry *r)
{
    if (r == NULL) return;
    memset(r, 0, sizeof(*r));
}

int t8_skill_register(t8_skill_registry *r, t8_skill_id id, t8_skill_fn fn, void *ctx)
{
    if (r == NULL || fn == NULL) return T8_SK_E_ARG;
    if (id <= T8_SK_NONE || id >= T8_SK_MAX) return T8_SK_E_ARG;
    r->entry[id].exec = fn;
    r->entry[id].ctx = ctx;
    return T8_SK_OK;
}

int t8_skill_execute(t8_skill_registry *r, const t8_skill_req *req, t8_skill_result *res)
{
    t8_skill_result tmp;

    if (res == NULL) res = &tmp;
    res->code = T8_SK_E_ARG;
    sk_copy(res->message, sizeof(res->message), "invalid request");

    if (r == NULL || req == NULL) return res->code;
    if (req->id <= T8_SK_NONE || req->id >= T8_SK_MAX) return res->code;
    if (req->argc < 0 || req->argc > T8_SK_ARGC_MAX) return res->code;

    r->calls++;
    if (r->entry[req->id].exec == NULL) {
        r->noimpl++;
        res->code = T8_SK_E_NOIMPL;
        snprintf(res->message, sizeof(res->message), "skill %s not implemented yet",
                 t8_skill_name(req->id));
        return res->code;
    }
    res->code = r->entry[req->id].exec(req, res, r->entry[req->id].ctx);
    if (res->code == T8_SK_OK) r->ok++;
    else r->fail++;
    return res->code;
}

const char *t8_skill_name(t8_skill_id id)
{
    switch (id) {
    case T8_SK_VOLUME_SET:   return "volume.set";
    case T8_SK_VOLUME_STEP:  return "volume.step";
    case T8_SK_VOLUME_MUTE:  return "volume.mute";
    case T8_SK_TIME_QUERY:   return "time.query";
    case T8_SK_MEDIA_PLAY:   return "media.play";
    case T8_SK_MEDIA_PAUSE:  return "media.pause";
    case T8_SK_MEDIA_STOP:   return "media.stop";
    case T8_SK_SCREEN_ON:    return "screen.on";
    case T8_SK_SCREEN_OFF:   return "screen.off";
    case T8_SK_APP_LAUNCH:   return "app.launch";
    default:                 return "none";
    }
}

void t8_skill_req_init(t8_skill_req *req, t8_skill_id id, const char *session)
{
    if (req == NULL) return;
    memset(req, 0, sizeof(*req));
    req->id = id;
    sk_copy(req->session, sizeof(req->session), session);
}

int t8_skill_req_arg(t8_skill_req *req, const char *arg)
{
    if (req == NULL || arg == NULL) return T8_SK_E_ARG;
    if (req->argc >= T8_SK_ARGC_MAX) return T8_SK_E_ARG;
    sk_copy(req->argv[req->argc], T8_SK_ARG_MAX, arg);
    req->argc++;
    return T8_SK_OK;
}

/*
 * 意图 -> 技能请求。参数格式来自 intent_route 的既有约定：
 *   volume：up / down / set:30 / mute / unmute
 *   time / media / screen / stop：无参数
 */
int t8_skill_from_intent(int intent, const char *arg, const char *session, t8_skill_req *out)
{
    const char *a = (arg != NULL) ? arg : "";

    if (out == NULL) return 0;
    switch ((ir_intent)intent) {
    case IR_VOLUME:
        if (strcmp(a, "up") == 0 || strcmp(a, "down") == 0) {
            t8_skill_req_init(out, T8_SK_VOLUME_STEP, session);
            (void)t8_skill_req_arg(out, a);
            return 1;
        }
        if (strcmp(a, "mute") == 0 || strcmp(a, "unmute") == 0) {
            t8_skill_req_init(out, T8_SK_VOLUME_MUTE, session);
            (void)t8_skill_req_arg(out, strcmp(a, "mute") == 0 ? "on" : "off");
            return 1;
        }
        if (strncmp(a, "set:", 4) == 0) {
            t8_skill_req_init(out, T8_SK_VOLUME_SET, session);
            (void)t8_skill_req_arg(out, a + 4);
            return 1;
        }
        return 0;
    case IR_TIME:
        t8_skill_req_init(out, T8_SK_TIME_QUERY, session);
        return 1;
    case IR_MEDIA:
        t8_skill_req_init(out, T8_SK_MEDIA_PLAY, session);
        return 1;
    case IR_STOP:
        t8_skill_req_init(out, T8_SK_MEDIA_STOP, session);
        return 1;
    case IR_SCREEN_ON:
        t8_skill_req_init(out, T8_SK_SCREEN_ON, session);
        return 1;
    case IR_SCREEN_OFF:
        t8_skill_req_init(out, T8_SK_SCREEN_OFF, session);
        return 1;
    default:
        return 0;   /* weather / 未知：本轮没有本地技能，回落 AI */
    }
}

/* ---------- 示例技能 1：音量 ---------- */

static int sk_parse_percent(const char *s)
{
    int v = 0;
    int i;

    if (s == NULL || s[0] == '\0') return -1;
    for (i = 0; s[i] != '\0'; i++) {
        if (s[i] < '0' || s[i] > '9') return -1;
        v = v * 10 + (s[i] - '0');
        if (v > 1000) return -1;
    }
    if (v < 0 || v > 100) return -1;
    return v;
}

int t8_skill_volume_exec(const t8_skill_req *req, t8_skill_result *res, void *ctx)
{
    t8_vol_ctx *vc = (t8_vol_ctx *)ctx;
    int percent = -1;
    int mute = 0;
    int step;
    int rc;

    if (res == NULL) return T8_SK_E_ARG;
    if (req == NULL || vc == NULL || vc->apply == NULL) {
        sk_copy(res->message, sizeof(res->message), "volume skill has no execution context");
        return T8_SK_E_CTX;
    }
    step = (vc->step > 0) ? vc->step : 10;

    switch (req->id) {
    case T8_SK_VOLUME_SET:
        if (req->argc < 1) { sk_copy(res->message, sizeof(res->message), "volume.set needs a percent"); return T8_SK_E_ARG; }
        percent = sk_parse_percent(req->argv[0]);
        if (percent < 0) {
            snprintf(res->message, sizeof(res->message), "bad percent: %s", req->argv[0]);
            return T8_SK_E_ARG;
        }
        break;
    case T8_SK_VOLUME_STEP:
        if (req->argc < 1) { sk_copy(res->message, sizeof(res->message), "volume.step needs up/down"); return T8_SK_E_ARG; }
        if (strcmp(req->argv[0], "up") != 0 && strcmp(req->argv[0], "down") != 0) {
            snprintf(res->message, sizeof(res->message), "bad direction: %s", req->argv[0]);
            return T8_SK_E_ARG;
        }
        percent = -2;      /* 交给回调按相对量处理 */
        break;
    case T8_SK_VOLUME_MUTE:
        if (req->argc < 1) { sk_copy(res->message, sizeof(res->message), "volume.mute needs on/off"); return T8_SK_E_ARG; }
        if (strcmp(req->argv[0], "on") != 0 && strcmp(req->argv[0], "off") != 0) {
            snprintf(res->message, sizeof(res->message), "bad mute arg: %s", req->argv[0]);
            return T8_SK_E_ARG;
        }
        mute = (strcmp(req->argv[0], "on") == 0) ? 1 : 0;
        break;
    default:
        sk_copy(res->message, sizeof(res->message), "volume skill called with a non-volume id");
        return T8_SK_E_ARG;
    }

    if (percent == -2) {
        rc = vc->apply(strcmp(req->argv[0], "up") == 0 ? step : -step, mute, vc->user);
    } else {
        rc = vc->apply(percent, mute, vc->user);
    }
    if (rc != 0) {
        snprintf(res->message, sizeof(res->message), "apply failed rc=%d", rc);
        return T8_SK_E_FAIL;
    }
    if (percent == -2) {
        snprintf(res->message, sizeof(res->message), "volume %s by %d", req->argv[0], step);
    } else if (req->id == T8_SK_VOLUME_MUTE) {
        snprintf(res->message, sizeof(res->message), "volume mute %s", req->argv[0]);
    } else {
        snprintf(res->message, sizeof(res->message), "volume set to %d", percent);
    }
    return T8_SK_OK;
}

/* ---------- 示例技能 2：时间（无副作用的对照实现） ---------- */

int t8_skill_time_exec(const t8_skill_req *req, t8_skill_result *res, void *ctx)
{
    time_t now;
    struct tm tmv;

    (void)req;
    (void)ctx;
    if (res == NULL) return T8_SK_E_ARG;
    now = time(NULL);
#ifdef _WIN32
    if (localtime_s(&tmv, &now) != 0) {
        sk_copy(res->message, sizeof(res->message), "time query failed");
        return T8_SK_E_FAIL;
    }
#else
    {
        struct tm *p = localtime(&now);
        if (p == NULL) {
            sk_copy(res->message, sizeof(res->message), "time query failed");
            return T8_SK_E_FAIL;
        }
        tmv = *p;
    }
#endif
    snprintf(res->message, sizeof(res->message), "now %02d:%02d",
             tmv.tm_hour, tmv.tm_min);
    return T8_SK_OK;
}
