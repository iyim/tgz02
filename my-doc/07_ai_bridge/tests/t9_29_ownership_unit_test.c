/*
 * t9_29_ownership_unit_test.c -- T9-29 (P1) 归属表 / 租约 / 回执 / 决策令牌（纯 host）
 *
 * 覆盖 T9_28_OWNERSHIP_STATE_MACHINE.md §6 里 host 可验证的部分：
 *   - 表落盘与回读校验（proto/gen/not_before/exp）
 *   - gen 单调（重启不回退）
 *   - 心跳续租：gen 与 owner 映射**不得被清空**（这条是修复过的真 bug）
 *   - C2 租约窗口：not_before 之前 / 过期之后都不许执行
 *   - C3/C4 回执：缺失 / 代次不符 / 过期 / build 不符 / rules_hash 不符 → 一律不执行
 *   - C1 决策令牌：同一条(会话+文本+代次)在回执里必须是 take 才执行；pass/缺失都拒绝
 *
 * 回执由测试自己按 Hook 的格式写出（就绪后由 hook_agent/ownership_rx.c 生成，
 * 两侧共用 own_token() 的同一份实现）。
 */
#include "skill_ownership.h"
#include "own_token.h"
#include "worker_util.h"

#include <stdio.h>
#include <string.h>

static int g_pass = 0;
static int g_fail = 0;

static void check(int cond, const char *what)
{
    if (cond) { g_pass++; }
    else { g_fail++; printf("  FAIL %s\n", what); }
}

static const char *DIR = "out/t9_29own";

static void write_ack(long long gen, const char *state, const char *build,
                      unsigned long hash, long long boot_ms,
                      const char *tok, const char *dec)
{
    char path[256];
    char body[1024];
    FILE *f;
    int n;

    snprintf(path, sizeof(path), "%s/ownership.ack.json", DIR);
    if (tok == NULL) {
        n = snprintf(body, sizeof(body),
                     "{\"v\":1,\"proto\":2,\"gen\":%lld,\"state\":\"%s\",\"build\":\"%s\","
                     "\"rules_hash\":\"%08lx\",\"boot_ms\":%lld,\"decisions\":[]}\n",
                     gen, state, build, hash & 0xFFFFFFFFUL, boot_ms);
    } else {
        n = snprintf(body, sizeof(body),
                     "{\"v\":1,\"proto\":2,\"gen\":%lld,\"state\":\"%s\",\"build\":\"%s\","
                     "\"rules_hash\":\"%08lx\",\"boot_ms\":%lld,"
                     "\"decisions\":[{\"tok\":\"%s\",\"d\":\"%s\",\"t\":%lld}]}\n",
                     gen, state, build, hash & 0xFFFFFFFFUL, boot_ms, tok, dec, boot_ms);
    }
    f = fopen(path, "wb");
    if (f == NULL) { printf("  FAIL cannot write ack\n"); g_fail++; return; }
    fwrite(body, 1, (size_t)n, f);
    fclose(f);
}

static int table_has(const char *needle)
{
    char path[256];
    char buf[4096];
    size_t len = 0;

    snprintf(path, sizeof(path), "%s/ownership.json", DIR);
    if (wu_read_file(path, buf, sizeof(buf), &len) != 0) return 0;
    return strstr(buf, needle) != NULL;
}

int main(void)
{
    own_ctx c;
    char err[128];
    char tok[OWN_TOK_MAX];
    const char *why = NULL;
    const char *owner_json = "{\"music\":\"local\",\"weather\":\"factory\",\"time\":\"factory\"}";
    long long t0 = 1000000;
    char js[512];
    unsigned long hash = 0xdeadbeefUL;

    (void)wu_mkdir_p(DIR);
    (void)wu_unlink("out/t9_29own/ownership.json");
    (void)wu_unlink("out/t9_29own/ownership.ack.json");

    printf("== init / table ==\n");
    err[0] = '\0';
    check(own_init(&c, DIR, "hookbuild-A", hash, 0x1FF, owner_json, t0, err, sizeof(err)) == 0,
          "own_init writes the table");
    check(c.active == 1 && c.gen == 1, "gen starts at 1 and table is active");
    check(c.not_before_ms > c.boot_ms, "not_before is in the future (delayed activation)");
    check(c.exp_ms > c.not_before_ms, "lease ends after activation");
    check(table_has("\"proto\":2"), "table has proto 2");
    check(table_has("\"music\":\"local\""), "table carries the owner map");
    check(table_has("\"requires_hook_build\":\"hookbuild-A\""), "table carries required hook build");

    printf("== gen monotonic ==\n");
    {
        own_ctx c2;

        check(own_init(&c2, DIR, "hookbuild-A", hash, 0x1FF, owner_json, t0 + 100, err, sizeof(err)) == 0,
              "re-init ok");
        check(c2.gen == c.gen + 1, "gen increments across restart");
        c = c2;
    }

    printf("== heartbeat keeps gen and owner map ==\n");
    {
        long long exp_before = c.exp_ms;

        check(own_heartbeat(&c, t0 + 200) == 0, "heartbeat skipped before interval");
        check(own_heartbeat(&c, c.last_write_ms + OWN_HEARTBEAT_MS + 1) == 1, "heartbeat writes");
        check(c.gen == 2, "heartbeat keeps gen");
        check(c.exp_ms > exp_before, "heartbeat extends the lease");
        check(table_has("\"music\":\"local\""), "heartbeat does NOT wipe the owner map");
    }

    printf("== C2 lease window ==\n");
    check(own_can_exec(&c, "s1", "播放晴天", c.not_before_ms - 1, &why) == 0 &&
          strcmp(why, "lease") == 0, "before not_before: lease");
    check(own_can_exec(&c, "s1", "播放晴天", c.exp_ms, &why) == 0 &&
          strcmp(why, "lease") == 0, "at expiry: lease");

    printf("== C3/C4 ack validation ==\n");
    {
        long long t = c.not_before_ms + 100;

        (void)wu_unlink("out/t9_29own/ownership.ack.json");
        check(own_can_exec(&c, "s1", "播放晴天", t, &why) == 0 && strcmp(why, "no-ack") == 0,
              "missing ack: no-ack");

        write_ack(c.gen - 1, "active", "hookbuild-A", hash, t, NULL, NULL);
        check(own_can_exec(&c, "s1", "播放晴天", t, &why) == 0 && strcmp(why, "no-ack") == 0,
              "ack with wrong gen: no-ack");

        write_ack(c.gen, "active", "hookbuild-A", hash, t - 3 * OWN_HEARTBEAT_MS - 1, NULL, NULL);
        check(own_can_exec(&c, "s1", "播放晴天", t, &why) == 0 && strcmp(why, "no-ack") == 0,
              "stale ack: no-ack");

        write_ack(c.gen, "active", "hookbuild-B", hash, t, NULL, NULL);
        check(own_can_exec(&c, "s1", "播放晴天", t, &why) == 0 && strcmp(why, "no-ack") == 0,
              "hook build mismatch: no-ack");

        write_ack(c.gen, "active", "hookbuild-A", hash ^ 0xFFUL, t, NULL, NULL);
        check(own_can_exec(&c, "s1", "播放晴天", t, &why) == 0 && strcmp(why, "no-ack") == 0,
              "rules_hash mismatch: no-ack");

        write_ack(c.gen, "refused", "hookbuild-A", hash, t, NULL, NULL);
        check(own_can_exec(&c, "s1", "播放晴天", t, &why) == 0 && strcmp(why, "no-ack") == 0,
              "refused ack: no-ack");
    }

    printf("== C1 decision token ==\n");
    {
        long long t = c.not_before_ms + 200;

        check(own_token("s1", "播放晴天", c.gen, tok, sizeof(tok)) == 0 && tok[0] != '\0',
              "token computed");

        write_ack(c.gen, "active", "hookbuild-A", hash, t, tok, "pass");
        check(own_can_exec(&c, "s1", "播放晴天", t, &why) == 0 && strcmp(why, "tok") == 0,
              "hook said PASS for this very utterance: we must not execute");

        write_ack(c.gen, "active", "hookbuild-A", hash, t, "00000000", "take");
        check(own_can_exec(&c, "s1", "播放晴天", t, &why) == 0 && strcmp(why, "tok") == 0,
              "token from another utterance: no-ack");

        write_ack(c.gen, "active", "hookbuild-A", hash, t, tok, "take");
        check(own_can_exec(&c, "s1", "播放晴天", t, &why) == 1 && strcmp(why, "ok") == 0,
              "hook said TAKE for this utterance: execute");
        check(c.execs == 1, "exec counter advanced");

        /* 会话不同 → 令牌不同：杜绝"事件错配" */
        check(own_can_exec(&c, "s2", "播放晴天", t, &why) == 0 && strcmp(why, "tok") == 0,
              "same text, different session: rejected (no cross-event match)");
    }

    printf("== token is stable and text-capped ==\n");
    {
        char a[OWN_TOK_MAX], b[OWN_TOK_MAX], c2[OWN_TOK_MAX];

        check(own_token("s", "abc", 5, a, sizeof(a)) == 0, "tok a");
        check(own_token("s", "abc", 5, b, sizeof(b)) == 0, "tok b");
        check(strcmp(a, b) == 0, "token deterministic");
        check(own_token("s", "abc", 6, c2, sizeof(c2)) == 0 && strcmp(a, c2) != 0,
              "gen participates in the token");
    }

    printf("== status json ==\n");
    check(own_status_json(&c, js, sizeof(js)) > 0, "status json produced");
    check(strstr(js, "\"gen\":") != NULL && strstr(js, "\"ack_ok\":1") != NULL,
          "status carries gen and ack state");
    check(own_status_json(&c, js, 10) < 0, "status respects cap");

    printf("== disable ==\n");
    own_disable(&c, "test");
    check(c.active == 0 && own_can_exec(&c, "s1", "x", 0, &why) == 0, "disabled context refuses");

    printf("\nPASS %d  FAIL %d\n", g_pass, g_fail);
    return (g_fail == 0) ? 0 : 1;
}
