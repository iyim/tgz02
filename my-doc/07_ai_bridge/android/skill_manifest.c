/*
 * skill_manifest.c -- T9-29 (P0): skills.json 解析与收窄校验
 *
 * 只做"读文本 -> 校验 -> 覆盖文案/关技能"，不做任何执行或 I/O 之外的副作用。
 * 用 model_json.h 的游标（与三家 Provider 适配器共用同一份极简 JSON 实现），
 * 不引入 cJSON，也不做 DOM。
 */
#include "skill_manifest.h"
#include "worker_util.h"
#include "model_json.h"

#include <stdio.h>
#include <string.h>

#define SK_MF_KEY_MAX 32

typedef struct {
    char id[SK_ID_MAX];
    char owner[16];
    char exec[16];
    int  owner_seen;
    int  exec_seen;
    int  enabled;                 /* -1 = 未出现；0 = 关；1 = 开 */
    char title[SK_TITLE_MAX];
    char desc[SK_DESC_MAX];
    char reply[SK_DESC_MAX];
    int  ex_count;
    char ex[SK_EX_MAX][SK_EX_LEN];
    int  neg_count;
    char neg[SK_EX_MAX][SK_EX_LEN];
    int  bad;                     /* 1 = 出现语法/超长问题 */
    int  saw_params;              /* 1 = 该条目里出现了 params 字段（P0 只计数） */
} sk_mf_entry;

static void mf_reject(sk_registry *r, const char *id, const char *reason)
{
    int i;

    if (r == NULL) return;
    r->manifest_rejects++;
    /* 同一 id 的重复拒绝只记一次，避免刷屏 */
    for (i = 0; i < r->reject_count; i++) {
        if (strcmp(r->reject_id[i], id) == 0 &&
            strcmp(r->reject_reason[i], reason) == 0) return;
    }
    if (r->reject_count >= SK_REJECT_MAX) return;
    snprintf(r->reject_id[r->reject_count], SK_ID_MAX, "%s", id);
    snprintf(r->reject_reason[r->reject_count], SK_REJECT_LEN, "%s", reason);
    r->reject_count++;
}

/* 读字符串字段；超长 -> 截断并标 bad（清单不该悄悄改语义，但也不该整份报废） */
static void mf_str(mj *j, char *out, size_t cap, int *bad)
{
    size_t used = 0;

    if (mj_str_value(j, out, cap, &used) != 0) {
        out[0] = '\0';
        if (bad != NULL) *bad = 1;
    }
}

static void mf_str_array(mj *j, char arr[][SK_EX_LEN], int cap, int *count, int *bad)
{
    int n = 0;

    if (mj_arr_open(j) != 0) {
        if (bad != NULL) *bad = 1;
        return;
    }
    while (mj_arr_next(j)) {
        char tmp[SK_EX_LEN * 2];
        size_t used = 0;

        if (mj_str_value(j, tmp, sizeof(tmp), &used) != 0) {
            if (bad != NULL) *bad = 1;
            continue;
        }
        if (n < cap) {
            /* 超长截断到 SK_EX_LEN-1，保证 NUL（UTF-8 由写入方保证不在中间截断：
             * 这里只做保守截断，宁可少一个字也不产生非法 UTF-8） */
            size_t k = strlen(tmp);

            if (k >= SK_EX_LEN) {
                k = SK_EX_LEN - 1;
                while (k > 0 && ((unsigned char)tmp[k] & 0xC0) == 0x80) k--;
                tmp[k] = '\0';
                if (bad != NULL) *bad = 1;
            }
            snprintf(arr[n], SK_EX_LEN, "%s", tmp);
            n++;
        } else if (bad != NULL) {
            *bad = 1;                 /* 超过 4 条：记一条但不影响其它 */
        }
    }
    if (count != NULL) *count = n;
}

static void mf_parse_entry(mj *j, sk_mf_entry *e)
{
    char key[SK_MF_KEY_MAX];

    memset(e, 0, sizeof(*e));
    e->enabled = -1;
    if (mj_obj_open(j) != 0) { e->bad = 1; return; }

    while (mj_obj_next(j, key, sizeof(key))) {
        if (strcmp(key, "id") == 0) {
            mf_str(j, e->id, sizeof(e->id), &e->bad);
        } else if (strcmp(key, "owner") == 0) {
            mf_str(j, e->owner, sizeof(e->owner), &e->bad);
            e->owner_seen = 1;
        } else if (strcmp(key, "exec") == 0) {
            mf_str(j, e->exec, sizeof(e->exec), &e->bad);
            e->exec_seen = 1;
        } else if (strcmp(key, "enabled") == 0) {
            int c = mj_peek_c(j);

            if (c == 't' || c == 'f') {
                e->enabled = (c == 't') ? 1 : 0;
                (void)mj_skip(j);            /* 字面量 true/false 必须整块吃掉 */
            } else {
                double d = 0.0;

                /* mj_num_value 会消费数字本身；失败时才需要 mj_skip 兜底 */
                if (mj_num_value(j, &d) == 0) {
                    e->enabled = (d != 0.0) ? 1 : 0;
                } else {
                    e->bad = 1;
                    (void)mj_skip(j);
                }
            }
        } else if (strcmp(key, "title") == 0) {
            mf_str(j, e->title, sizeof(e->title), &e->bad);
        } else if (strcmp(key, "desc") == 0) {
            mf_str(j, e->desc, sizeof(e->desc), &e->bad);
        } else if (strcmp(key, "reply_ok") == 0) {
            mf_str(j, e->reply, sizeof(e->reply), &e->bad);
        } else if (strcmp(key, "examples") == 0) {
            mf_str_array(j, e->ex, SK_EX_MAX, &e->ex_count, &e->bad);
        } else if (strcmp(key, "negatives") == 0) {
            mf_str_array(j, e->neg, SK_EX_MAX, &e->neg_count, &e->bad);
        } else if (strcmp(key, "params") == 0) {
            /* P0：解析但不应用（参数收紧随 P3 落地）。跳过整个值即可。 */
            e->saw_params = 1;
            (void)mj_skip(j);
        } else {
            (void)mj_skip(j);
        }
    }
}

static void mf_apply(sk_registry *r, const sk_mf_entry *e, int idx)
{
    sk_ovr *o;
    int i;

    if (r == NULL || idx < 0) return;

    /* 先找已有的覆盖，没有就占一个槽 */
    o = NULL;
    for (i = 0; i < r->ovr_count; i++) {
        if (r->ovr[i].used && r->ovr[i].idx == idx) { o = &r->ovr[i]; break; }
    }
    if (o == NULL) {
        if (r->ovr_count >= SK_OVR_MAX) return;   /* 覆盖槽用尽：安静忽略（计数由 reject 体现） */
        o = &r->ovr[r->ovr_count++];
        memset(o, 0, sizeof(*o));
        o->used = 1;
        o->idx = idx;
    }

    if (e->title[0] != '\0') snprintf(o->title, sizeof(o->title), "%s", e->title);
    if (e->desc[0] != '\0')  snprintf(o->desc, sizeof(o->desc), "%s", e->desc);
    if (e->reply[0] != '\0') snprintf(o->reply_ok, sizeof(o->reply_ok), "%s", e->reply);
    if (e->ex_count > 0) {
        o->ex_count = e->ex_count;
        for (i = 0; i < e->ex_count; i++) snprintf(o->ex[i], SK_EX_LEN, "%s", e->ex[i]);
    }
    if (e->neg_count > 0) {
        o->neg_count = e->neg_count;
        for (i = 0; i < e->neg_count; i++) snprintf(o->neg[i], SK_EX_LEN, "%s", e->neg[i]);
    }

    /* enabled:false 才是收窄；enabled:true 对运行期开关没有"扩权"能力 */
    if (e->enabled == 0) (void)sk_registry_set_enabled(r, idx, 0);
}

int sk_manifest_load(sk_registry *r, const char *path, char *err, size_t errlen)
{
    static char buf[SK_MANIFEST_MAX_BYTES];
    size_t len = 0;
    mj j;
    char key[SK_MF_KEY_MAX];
    int rc, have_v = 0, have_skills = 0;

    if (err && errlen) err[0] = '\0';
    if (r == NULL || path == NULL || path[0] == '\0') {
        if (err && errlen) snprintf(err, errlen, "no manifest path");
        return -1;
    }
    rc = wu_read_file(path, buf, sizeof(buf), &len);
    if (rc != 0) {
        if (err && errlen) snprintf(err, errlen, "cannot read manifest");
        return 0;                                  /* 不存在 = 用编译默认，不算错 */
    }
    if (len == 0) {
        if (err && errlen) snprintf(err, errlen, "manifest is empty");
        return 0;
    }

    mj_open(&j, buf, len);
    if (mj_obj_open(&j) != 0) {
        if (err && errlen) snprintf(err, errlen, "manifest is not a json object");
        return -1;
    }
    while (mj_obj_next(&j, key, sizeof(key))) {
        if (strcmp(key, "v") == 0) {
            double d = 0.0;

            /* mj_num_value 成功时已消费；失败才 skip（否则会跳过下一个 key） */
            if (mj_num_value(&j, &d) == 0) {
                if ((int)d == 1) have_v = 1;
            } else {
                (void)mj_skip(&j);
            }
        } else if (strcmp(key, "skills") == 0) {
            if (mj_arr_open(&j) != 0) {
                if (err && errlen) snprintf(err, errlen, "skills is not an array");
                return -1;
            }
            have_skills = 1;
            while (mj_arr_next(&j)) {
                sk_mf_entry e;
                int idx;

                mf_parse_entry(&j, &e);
                if (e.id[0] == '\0') { mf_reject(r, "(no-id)", "schema"); continue; }
                idx = sk_registry_find(r, e.id);
                if (idx < 0) { mf_reject(r, e.id, "unknown-id"); continue; }
                if (e.bad)   { mf_reject(r, e.id, "schema"); continue; }

                /* V2：owner 不许由清单改 */
                if (e.owner_seen && e.owner[0] != '\0') {
                    const sk_desc *d = sk_registry_at(r, idx);

                    if (d == NULL || strcmp(e.owner, sk_owner_name(d->owner)) != 0) {
                        mf_reject(r, e.id, "owner-conflict");
                        continue;
                    }
                }
                /* V1：exec 不许由清单引入或替换 */
                if (e.exec_seen && e.exec[0] != '\0') {
                    const sk_desc *d = sk_registry_at(r, idx);

                    if (d == NULL || strcmp(e.exec, sk_exec_name(d->exec)) != 0) {
                        mf_reject(r, e.id, "exec-unknown");
                        continue;
                    }
                }
                /* V5：factory 能力不许被清单打开（关也不行 —— 原厂链路不该由清单插手） */
                if (e.enabled == 1) {
                    const sk_desc *d = sk_registry_at(r, idx);

                    if (d != NULL && d->owner == SK_OWN_FACTORY) {
                        mf_reject(r, e.id, "factory-toggle");
                        continue;
                    }
                }

                if (e.saw_params) r->params_ignored++;
                mf_apply(r, &e, idx);
            }
        } else {
            (void)mj_skip(&j);
        }
    }

    if (!have_v) {
        if (err && errlen) snprintf(err, errlen, "manifest v != 1");
        return -1;
    }
    if (!have_skills) {
        if (err && errlen) snprintf(err, errlen, "manifest has no skills array");
        return -1;
    }
    r->manifest_loaded = 1;
    return 1;
}

unsigned long sk_manifest_params_ignored(const sk_registry *r)
{
    return (r != NULL) ? r->params_ignored : 0;
}
