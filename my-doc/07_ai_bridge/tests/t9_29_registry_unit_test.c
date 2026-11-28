/*
 * t9_29_registry_unit_test.c -- T9-29 (P0) 注册表与清单契约（纯 host，零设备）
 *
 * 覆盖任务书 P0 的 9 条里可 host 验证的部分：
 *   - 编译期表自检：local 必有执行回调、factory 必无（不重复开发原厂能力）
 *   - 默认全部不启用（"默认关闭时行为不变"的第一道保证）
 *   - owner 只能对 time/alarm/music 改（其余归死，防止误配把已验证链路切走）
 *   - 意图 -> 归属 / factory 位掩码
 *   - Shadow 判定（music play/ctrl、device.status、volume 三种参数形态）
 *   - rules_hash 稳定性（同表两次 init 必须一致）
 *   - 清单：合法覆盖、未知 id、owner 冲突、exec 冲突、factory 开关、v!=1、缺 skills、
 *     截断/超长文件（不得崩溃）
 */
#include "skill_registry.h"
#include "skill_manifest.h"

#include <stdio.h>
#include <string.h>

static int g_pass = 0;
static int g_fail = 0;

static void check(int cond, const char *what)
{
    if (cond) { g_pass++; }
    else { g_fail++; printf("  FAIL %s\n", what); }
}

static void write_file(const char *path, const char *text)
{
    FILE *f = fopen(path, "wb");

    if (f == NULL) { printf("  FAIL cannot create %s\n", path); g_fail++; return; }
    fwrite(text, 1, strlen(text), f);
    fclose(f);
}

static int json_has(const char *json, const char *needle)
{
    return strstr(json, needle) != NULL;
}

int main(void)
{
    sk_registry r;
    sk_registry r2;
    const char *id = NULL;
    char json[2048];
    char err[128];
    int idx;

    printf("== registry ==\n");

    check(sk_registry_init(&r) == 0, "init ok");
    check(r.count >= 12 && r.count <= SK_TABLE_MAX, "count in range");
    check(r.rules_hash != 0, "rules_hash non-zero");

    /* 默认全关：P0 的第一条纪律 */
    {
        int any_on = 0, i;

        for (i = 0; i < r.count; i++) if (sk_registry_enabled(&r, i)) any_on = 1;
        check(any_on == 0, "all skills disabled by default");
    }

    /* 编译期自检（与 sk_registry_init 内部一致，这里再验一遍语义） */
    {
        int i, bad_local = 0, bad_factory = 0;

        for (i = 0; i < r.count; i++) {
            const sk_desc *d = sk_registry_at(&r, i);

            if (d == NULL) { bad_local++; continue; }
            if (d->owner == SK_OWN_LOCAL && d->exec == SK_EXEC_NONE) bad_local++;
            if (d->owner == SK_OWN_FACTORY && d->exec != SK_EXEC_NONE) bad_factory++;
        }
        check(bad_local == 0, "every local skill has an exec callback");
        check(bad_factory == 0, "no factory skill carries an exec callback");
    }

    idx = sk_registry_find(&r, "music.play");
    check(idx >= 0, "find music.play");
    check(sk_registry_find(&r, "music.nope") < 0, "unknown id rejected");
    check(sk_registry_at(&r, -1) == NULL && sk_registry_at(&r, 999) == NULL, "bounds safe");

    check(sk_registry_enabled(&r, idx) == 0, "music.play disabled before enable");
    check(sk_registry_set_enabled(&r, idx, 1) == 0 && sk_registry_enabled(&r, idx) == 1,
          "enable music.play");

    /* factory 位掩码：必须在改 owner **之前**测（改完 time/alarm 归 local，位自然消失） */
    {
        int mask = sk_registry_factory_mask(&r);

        check((mask & T7B_ROUTE_VOLUME) != 0, "mask has volume");
        check((mask & T7B_ROUTE_WEATHER) != 0, "mask has weather");
        check((mask & T7B_ROUTE_TIME) != 0, "mask has time");
        check((mask & T7B_ROUTE_ALARM) != 0, "mask has alarm");
        check((mask & ~T7B_ROUTE_ALL) == 0, "mask within T7B_ROUTE_ALL");
    }

    /* owner 只允许 time/alarm/music 改 */
    check(sk_registry_set_owner(&r, sk_registry_find(&r, "time.query"), SK_OWN_LOCAL) == 0,
          "time owner switchable");
    check(sk_registry_set_owner(&r, sk_registry_find(&r, "alarm.set"), SK_OWN_LOCAL) == 0,
          "alarm owner switchable");
    check(sk_registry_set_owner(&r, idx, SK_OWN_FACTORY) == 0,
          "music owner switchable");
    check(sk_registry_set_owner(&r, sk_registry_find(&r, "weather.query"), SK_OWN_LOCAL) < 0,
          "weather owner locked");
    check(sk_registry_set_owner(&r, sk_registry_find(&r, "device.status"), SK_OWN_FACTORY) < 0,
          "device.status cannot become factory (no factory capability)");
    check(sk_registry_set_owner(&r, sk_registry_find(&r, "device.status"), SK_OWN_AI) == 0,
          "device.status can fall back to ai when disabled");
    (void)sk_registry_set_owner(&r, sk_registry_find(&r, "device.status"), SK_OWN_LOCAL);
    check(sk_registry_set_owner(&r, sk_registry_find(&r, "volume.step"), SK_OWN_LOCAL) < 0,
          "volume owner locked");
    (void)sk_registry_set_owner(&r, idx, SK_OWN_LOCAL);

    /* 意图 -> 归属 */
    check(sk_registry_owner_of_intent(&r, IR_WEATHER, &id) == SK_OWN_FACTORY &&
          id != NULL && strcmp(id, "weather.query") == 0, "IR_WEATHER -> factory");
    check(sk_registry_owner_of_intent(&r, IR_VOLUME, &id) == SK_OWN_FACTORY, "IR_VOLUME -> factory");
    check(sk_registry_owner_of_intent(&r, IR_MUSIC, &id) == SK_OWN_LOCAL, "IR_MUSIC -> local");
    check(sk_registry_owner_of_intent(&r, IR_DEVICE_STATUS, &id) == SK_OWN_LOCAL,
          "IR_DEVICE_STATUS -> local");
    check(sk_registry_owner_of_intent(&r, IR_NONE, &id) == SK_OWN_AI, "IR_NONE -> ai (safe)");

    /* factory 位掩码在切换 owner 之后必须跟着变（time/alarm 归 local 后不再置位） */
    {
        int mask2 = sk_registry_factory_mask(&r);

        check((mask2 & T7B_ROUTE_TIME) == 0, "mask drops time after owner switch");
        check((mask2 & T7B_ROUTE_ALARM) == 0, "mask drops alarm after owner switch");
        check((mask2 & T7B_ROUTE_WEATHER) != 0, "mask keeps weather");
    }
    (void)sk_registry_set_owner(&r, sk_registry_find(&r, "time.query"), SK_OWN_FACTORY);
    (void)sk_registry_set_owner(&r, sk_registry_find(&r, "alarm.set"), SK_OWN_FACTORY);

    /* Shadow 判定 */
    check(sk_registry_claim(&r, IR_MUSIC, "play") == sk_registry_find(&r, "music.play"),
          "claim music.play");
    check(sk_registry_claim(&r, IR_MUSIC, "next") == sk_registry_find(&r, "music.ctrl"),
          "claim music.ctrl(next)");
    check(sk_registry_claim(&r, IR_MUSIC, "pause") == sk_registry_find(&r, "music.ctrl"),
          "claim music.ctrl(pause)");
    check(sk_registry_claim(&r, IR_DEVICE_STATUS, "") == sk_registry_find(&r, "device.status"),
          "claim device.status");
    check(sk_registry_claim(&r, IR_VOLUME, "set:30") == sk_registry_find(&r, "volume.set"),
          "claim volume.set");
    check(sk_registry_claim(&r, IR_VOLUME, "mute") == sk_registry_find(&r, "volume.mute"),
          "claim volume.mute");
    check(sk_registry_claim(&r, IR_VOLUME, "up") == sk_registry_find(&r, "volume.step"),
          "claim volume.step");
    check(sk_registry_claim(&r, IR_NONE, "") < 0, "claim IR_NONE -> none");

    /* rules_hash 稳定 */
    check(sk_registry_init(&r2) == 0 && r2.rules_hash == r.rules_hash,
          "rules_hash stable across init");

    /* 快照 */
    check(sk_registry_dump_json(&r, json, sizeof(json)) > 0, "dump json ok");
    check(json_has(json, "\"music.play\"") && json_has(json, "\"weather.query\""),
          "dump contains ids");
    check(json_has(json, "\"owner\":\"local\"") && json_has(json, "\"owner\":\"factory\""),
          "dump contains owners");
    check(sk_registry_dump_json(&r, json, 16) < 0, "dump respects cap");

    /* ---------------- manifest ---------------- */
    printf("== manifest ==\n");

    check(sk_manifest_load(&r, "t9_29_no_such_file.json", err, sizeof(err)) == 0,
          "missing manifest -> 0 (builtin defaults)");

    write_file("t9_29_mf_bad_v.json", "{\"v\":2,\"skills\":[]}");
    check(sk_manifest_load(&r, "t9_29_mf_bad_v.json", err, sizeof(err)) < 0, "v!=1 rejected");

    write_file("t9_29_mf_no_skills.json", "{\"v\":1}");
    check(sk_manifest_load(&r, "t9_29_mf_no_skills.json", err, sizeof(err)) < 0,
          "missing skills array rejected");

    write_file("t9_29_mf_trunc.json", "{\"v\":1,\"skills\":[{\"id\":\"music.pla");
    {
        /* 截断的清单：允许"加载成功但条目被拒"（这是设计：坏条目不影响好条目），
         * 也可能是 -1；无论哪种都不得崩溃、不得把半截 id 当成真技能。 */
        sk_registry t;
        int rc2;

        check(sk_registry_init(&t) == 0, "trunc registry init");
        rc2 = sk_manifest_load(&t, "t9_29_mf_trunc.json", err, sizeof(err));
        check(rc2 <= 1, "truncated manifest returns 0/1/-1");
        check(sk_registry_find(&t, "music.pla") < 0, "truncated id not registered");
        if (rc2 == 1) check(t.manifest_rejects > 0, "truncated entry counted as reject");
    }

    {
        static char big[6000];
        size_t i;

        for (i = 0; i + 1 < sizeof(big); i++) big[i] = 'a';
        big[0] = '{'; big[1] = '"'; big[sizeof(big) - 2] = 0;
        write_file("t9_29_mf_big.json", big);
        check(sk_manifest_load(&r, "t9_29_mf_big.json", err, sizeof(err)) <= 0,
              "oversize manifest does not crash");
    }

    /* 合法清单：覆盖文案 + 关掉一个 local 技能 */
    {
        sk_registry m;
        int mi;

        check(sk_registry_init(&m) == 0, "manifest registry init");
        mi = sk_registry_find(&m, "music.play");
        check(sk_registry_set_enabled(&m, mi, 1) == 0, "pre-enable music.play");

        write_file("t9_29_mf_ok.json",
                   "{\"v\":1,\"skills\":["
                   "{\"id\":\"music.play\",\"title\":\"点歌\",\"desc\":\"说歌名就播\","
                   "\"reply_ok\":\"这就放%s\",\"examples\":[\"来点动静\"],\"negatives\":[\"音量\"],"
                   "\"enabled\":0}]}");
        check(sk_manifest_load(&m, "t9_29_mf_ok.json", err, sizeof(err)) == 1, "valid manifest loads");
        check(m.manifest_loaded == 1, "manifest_loaded flag");
        check(strcmp(sk_registry_title(&m, mi), "点歌") == 0, "title overridden");
        check(strcmp(sk_registry_reply(&m, mi), "这就放%s") == 0, "reply overridden");
        {
            const char *ex[4];
            int n = sk_registry_examples(&m, mi, ex, 4);

            check(n == 1 && strcmp(ex[0], "来点动静") == 0, "examples overridden");
        }
        check(sk_registry_enabled(&m, mi) == 0, "enabled:0 narrows");
        check(m.manifest_rejects == 0, "no rejects for valid manifest");
    }

    /* 收窄校验：未知 id / owner / exec / factory 开关 */
    {
        sk_registry m;

        check(sk_registry_init(&m) == 0, "reject registry init");
        write_file("t9_29_mf_reject.json",
                   "{\"v\":1,\"skills\":["
                   "{\"id\":\"nope.skill\"},"
                   "{\"id\":\"weather.query\",\"owner\":\"local\"},"
                   "{\"id\":\"music.play\",\"exec\":\"evil\"},"
                   "{\"id\":\"weather.query\",\"enabled\":1},"
                   "{\"id\":\"device.status\",\"title\":\"设备\"}]}");
        check(sk_manifest_load(&m, "t9_29_mf_reject.json", err, sizeof(err)) == 1,
              "manifest with rejects still loads");
        check(m.manifest_rejects == 4, "four entries rejected");
        {
            int found_unknown = 0, found_owner = 0, found_exec = 0, found_toggle = 0;
            int i;

            for (i = 0; i < m.reject_count; i++) {
                if (strcmp(m.reject_reason[i], "unknown-id") == 0) found_unknown = 1;
                if (strcmp(m.reject_reason[i], "owner-conflict") == 0) found_owner = 1;
                if (strcmp(m.reject_reason[i], "exec-unknown") == 0) found_exec = 1;
                if (strcmp(m.reject_reason[i], "factory-toggle") == 0) found_toggle = 1;
            }
            check(found_unknown && found_owner && found_exec && found_toggle,
                  "reject reasons are specific (unknown-id/owner/exec/factory-toggle)");
        }
        check(strcmp(sk_registry_title(&m, sk_registry_find(&m, "device.status")), "设备") == 0,
              "valid entry in a rejecting manifest still applies");
    }

    /* 清单里出现 params：P0 只计数不应用 */
    {
        sk_registry m;

        check(sk_registry_init(&m) == 0, "params registry init");
        write_file("t9_29_mf_params.json",
                   "{\"v\":1,\"skills\":[{\"id\":\"music.ctrl\","
                   "\"params\":[{\"name\":\"action\",\"enum\":[\"pause\"]}]}]}");
        check(sk_manifest_load(&m, "t9_29_mf_params.json", err, sizeof(err)) == 1,
              "params manifest loads");
        check(sk_manifest_params_ignored(&m) == 1, "params counted as ignored (P0)");
    }

    printf("\nPASS %d  FAIL %d\n", g_pass, g_fail);
    return (g_fail == 0) ? 0 : 1;
}
