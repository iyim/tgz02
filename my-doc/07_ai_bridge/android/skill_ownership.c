/*
 * skill_ownership.c -- T9-29 (P1)：归属表 / 租约 / 回执（worker 侧实现）
 *
 * 与 route_publish()（ai_worker.c）同一套落盘纪律：
 *   tmp -> write -> fsync -> chmod 0644 -> rename -> chmod(按路径) -> 回读校验
 * 任一步失败即视为"这一代没切成"，绝不只改内存不改盘。
 */
#include "skill_ownership.h"
#include "worker_util.h"
#include "model_json.h"

#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>

#define OWN_TABLE_ACL 0644
#define OWN_ACK_ACL   0664

static void own_err(own_ctx *c, const char *fmt, const char *arg)
{
    if (c == NULL) return;
    if (arg != NULL) snprintf(c->last_err, sizeof(c->last_err), fmt, arg);
    else snprintf(c->last_err, sizeof(c->last_err), "%s", fmt);
}

const char *own_why_name(int why)
{
    switch (why) {
    case 1:  return "ok";
    case 0:  return "no";
    case 2:  return "lease";
    default: return "?";
    }
}

/* 从已有表里取 gen（取不到返回 0 = 从 1 开始） */
static long long own_read_gen(const char *path)
{
    char buf[OWN_TABLE_MAX];
    size_t len = 0;
    const char *p;

    if (wu_read_file(path, buf, sizeof(buf), &len) != 0) return 0;
    p = strstr(buf, "\"gen\":");
    if (p == NULL) return 0;
    return (long long)atoll(p + 6);
}

static void own_set_paths(own_ctx *c, const char *dir)
{
    snprintf(c->dir, sizeof(c->dir), "%s", dir);
    snprintf(c->table_path, sizeof(c->table_path), "%s/ownership.json", dir);
    snprintf(c->ack_path, sizeof(c->ack_path), "%s/ownership.ack.json", dir);
}

/* 写表。owner_json 是 {"volume":"factory",...} 这一段（含大括号）。 */
static int own_write_table(own_ctx *c, const char *owner_json,
                           long long not_before, long long exp, char *err, size_t errlen)
{
    static char body[OWN_TABLE_MAX];
    char tmp[OWN_PATH_MAX];
    char back[512];
    size_t backlen = 0;
    int n, fd;

    n = snprintf(body, sizeof(body),
                 "{\"v\":1,\"proto\":%d,\"gen\":%lld,\"seq\":%lu,\"writer_pid\":%lld,"
                 "\"boot_ms\":%lld,\"not_before_ms\":%lld,\"exp_ms\":%lld,"
                 "\"heartbeat_ms\":%d,\"requires_hook_build\":\"%s\","
                 "\"rules_hash\":\"%08lx\",\"mask\":%d,\"owner\":%s}\n",
                 OWN_PROTO, c->gen, (unsigned long)c->writes + 1, wu_self_pid(),
                 c->boot_ms, not_before, exp, OWN_HEARTBEAT_MS, c->requires_build,
                 c->rules_hash & 0xFFFFFFFFUL, c->mask,
                 (owner_json != NULL) ? owner_json
                                      : (c->owner_json[0] != '\0' ? c->owner_json : "{}"));
    if (n <= 0 || (size_t)n >= sizeof(body)) {
        if (err && errlen) snprintf(err, errlen, "table too long");
        return -1;
    }

    snprintf(tmp, sizeof(tmp), "%s.tmp", c->table_path);
    (void)wu_unlink(tmp);
    fd = wu_open_wo(tmp);
    if (fd < 0) {
        if (err && errlen) snprintf(err, errlen, "open tmp failed (errno=%d)", errno);
        return -1;
    }
    if (wu_write_all(fd, body, (size_t)n) != 0 || wu_fsync(fd) != 0) {
        int e = errno;

        (void)wu_close(fd);
        (void)wu_unlink(tmp);
        if (err && errlen) snprintf(err, errlen, "write/fsync tmp failed (errno=%d)", e);
        return -1;
    }
#ifndef _WIN32
    if (fchmod(fd, OWN_TABLE_ACL) != 0) {
        int e = errno;

        (void)wu_close(fd);
        (void)wu_unlink(tmp);
        if (err && errlen) snprintf(err, errlen, "fchmod failed (errno=%d)", e);
        return -1;
    }
#endif
    if (wu_close(fd) != 0) {
        (void)wu_unlink(tmp);
        if (err && errlen) snprintf(err, errlen, "close failed");
        return -1;
    }
    if (wu_rename_replace(tmp, c->table_path) != 0) {
        int e = errno;

        (void)wu_unlink(tmp);
        if (err && errlen) snprintf(err, errlen, "rename failed (errno=%d)", e);
        return -1;
    }
#ifndef _WIN32
    (void)chmod(c->table_path, OWN_TABLE_ACL);
#endif
    /* 回读校验：必须是这一代、这一份规则 */
    if (wu_read_file(c->table_path, back, sizeof(back), &backlen) != 0 ||
        strstr(back, "\"proto\":2") == NULL) {
        if (err && errlen) snprintf(err, errlen, "readback failed (len=%d)", (int)backlen);
        return -1;
    }
    {
        char want[40];

        snprintf(want, sizeof(want), "\"gen\":%lld", c->gen);
        if (strstr(back, want) == NULL) {
            if (err && errlen) snprintf(err, errlen, "readback gen mismatch");
            return -1;
        }
    }
    return 0;
}

int own_init(own_ctx *c, const char *dir, const char *requires_build,
             unsigned long rules_hash, int mask, const char *owner_json,
             long long now_ms, char *err, size_t errlen)
{
    long long nb;

    if (err && errlen) err[0] = '\0';
    if (c == NULL || dir == NULL || dir[0] == '\0') {
        if (err && errlen) snprintf(err, errlen, "no ownership dir");
        return -1;
    }
    memset(c, 0, sizeof(*c));
    own_set_paths(c, dir);
    if (requires_build != NULL) snprintf(c->requires_build, sizeof(c->requires_build), "%s", requires_build);
    if (owner_json != NULL) snprintf(c->owner_json, sizeof(c->owner_json), "%s", owner_json);
    c->rules_hash = rules_hash;
    c->mask = mask;
    c->enabled = 1;

    if (!wu_is_dir(dir)) {
        if (wu_mkdir_p(dir) != 0) {
            own_err(c, "cannot create ownership dir: %s", dir);
            if (err && errlen) snprintf(err, errlen, "cannot create dir %s", dir);
            return -1;
        }
    }

    c->gen = own_read_gen(c->table_path) + 1;
    c->boot_ms = now_ms;
    nb = now_ms + OWN_ACTIVATE_MS;              /* 两侧同一时刻生效 */
    c->not_before_ms = nb;
    c->exp_ms = now_ms + OWN_LEASE_MS;
    c->last_write_ms = now_ms;

    if (own_write_table(c, owner_json, nb, c->exp_ms, err, errlen) != 0) {
        c->write_fail++;
        return -1;
    }
    c->writes++;
    c->active = 1;
    return 0;
}

int own_heartbeat(own_ctx *c, long long now_ms)
{
    char err[OWN_ERR_MAX];

    if (c == NULL || !c->enabled || !c->active) return 0;
    if (now_ms - c->last_write_ms < OWN_HEARTBEAT_MS) return 0;

    err[0] = '\0';
    c->boot_ms = now_ms;
    c->exp_ms = now_ms + OWN_LEASE_MS;
    c->last_write_ms = now_ms;
    /* 心跳不改 gen / not_before：只是续租 */
    if (own_write_table(c, NULL, c->not_before_ms, c->exp_ms, err, sizeof(err)) != 0) {
        c->write_fail++;
        own_err(c, "heartbeat failed: %s", err);
        /* 一次心跳失败不立刻自毁：租约还剩几秒，下一次再失败就停用 */
        if (c->write_fail >= 3) own_disable(c, "heartbeat keeps failing");
        return -1;
    }
    c->writes++;
    c->beats++;
    return 1;
}

static void own_parse_ack(own_ctx *c, const char *buf, size_t len)
{
    mj j;
    char key[24];
    int i;

    c->ack_ok = 0;
    c->ack_state[0] = '\0';
    c->ack_build[0] = '\0';
    c->ack_decision_count = 0;
    c->ack_gen = 0;
    c->ack_boot_ms = 0;
    c->ack_hash = 0;

    mj_open(&j, buf, len);
    if (mj_obj_open(&j) != 0) return;
    while (mj_obj_next(&j, key, sizeof(key))) {
        if (strcmp(key, "state") == 0) {
            size_t used = 0;

            if (mj_str_value(&j, c->ack_state, sizeof(c->ack_state), &used) != 0)
                c->ack_state[0] = '\0';
        } else if (strcmp(key, "build") == 0) {
            size_t used = 0;

            if (mj_str_value(&j, c->ack_build, sizeof(c->ack_build), &used) != 0)
                c->ack_build[0] = '\0';
        } else if (strcmp(key, "rules_hash") == 0) {
            char h[16];
            size_t used = 0;

            if (mj_str_value(&j, h, sizeof(h), &used) == 0) c->ack_hash = strtoul(h, NULL, 16);
        } else if (strcmp(key, "gen") == 0) {
            double d = 0.0;

            if (mj_num_value(&j, &d) == 0) c->ack_gen = (long long)d;
            else (void)mj_skip(&j);
        } else if (strcmp(key, "boot_ms") == 0) {
            double d = 0.0;

            if (mj_num_value(&j, &d) == 0) c->ack_boot_ms = (long long)d;
            else (void)mj_skip(&j);
        } else if (strcmp(key, "decisions") == 0) {
            if (mj_arr_open(&j) == 0) {
                while (mj_arr_next(&j) && c->ack_decision_count < OWN_DEC_MAX) {
                    char tok[OWN_TOK_MAX] = "";
                    char dec[8] = "";

                    if (mj_obj_open(&j) != 0) break;
                    while (mj_obj_next(&j, key, sizeof(key))) {
                        if (strcmp(key, "tok") == 0) {
                            size_t used = 0;

                            if (mj_str_value(&j, tok, sizeof(tok), &used) != 0) tok[0] = '\0';
                        } else if (strcmp(key, "d") == 0) {
                            size_t used = 0;

                            if (mj_str_value(&j, dec, sizeof(dec), &used) != 0) dec[0] = '\0';
                        } else {
                            (void)mj_skip(&j);
                        }
                    }
                    i = c->ack_decision_count;
                    snprintf(c->ack_tok[i], sizeof(c->ack_tok[i]), "%s", tok);
                    snprintf(c->ack_dec[i], sizeof(c->ack_dec[i]), "%s", dec);
                    c->ack_decision_count++;
                }
            } else {
                (void)mj_skip(&j);
            }
        } else {
            (void)mj_skip(&j);
        }
    }
}

int own_read_ack(own_ctx *c, long long now_ms)
{
    static char buf[2048];
    size_t len = 0;

    if (c == NULL) return 0;
    if (wu_read_file(c->ack_path, buf, sizeof(buf), &len) != 0 || len == 0) {
        c->ack_ok = 0;
        own_err(c, "ack missing", NULL);
        return 0;
    }
    own_parse_ack(c, buf, len);

    if (c->ack_gen != c->gen) { c->ack_ok = 0; own_err(c, "ack gen mismatch", NULL); return 0; }
    if (c->ack_state[0] == '\0' || strcmp(c->ack_state, "active") != 0) {
        c->ack_ok = 0;
        own_err(c, "ack state not active", NULL);
        return 0;
    }
    if (c->ack_boot_ms <= 0 || now_ms - c->ack_boot_ms > 3 * OWN_HEARTBEAT_MS) {
        c->ack_ok = 0;
        own_err(c, "ack stale", NULL);
        return 0;
    }
    if (c->requires_build[0] != '\0' && strcmp(c->requires_build, c->ack_build) != 0) {
        c->ack_ok = 0;
        own_err(c, "ack build mismatch", NULL);
        return 0;
    }
    if (c->ack_hash != 0 && c->ack_hash != (c->rules_hash & 0xFFFFFFFFUL)) {
        c->ack_ok = 0;
        own_err(c, "rules_hash mismatch", NULL);
        return 0;
    }
    c->ack_ok = 1;
    c->last_err[0] = '\0';
    return 1;
}

int own_can_exec(own_ctx *c, const char *session, const char *text,
                 long long now_ms, const char **why)
{
    char tok[OWN_TOK_MAX] = "";
    int i, found = 0;

    if (why != NULL) *why = "no";
    if (c == NULL || !c->enabled || !c->active) {
        if (why != NULL) *why = "inactive";
        return 0;
    }
    /* C2：租约窗口（留 2 个 heartbeat 的安全余量，保证 hook 那一侧还没过期） */
    if (now_ms < c->not_before_ms || now_ms + 2 * OWN_HEARTBEAT_MS >= c->exp_ms) {
        c->skipped_expired++;
        if (why != NULL) *why = "lease";
        return 0;
    }
    /* C3/C4：回执必须新鲜、同代、同构建、同规则 */
    if (!own_read_ack(c, now_ms)) {
        c->skipped_no_ack++;
        if (why != NULL) *why = "no-ack";
        return 0;
    }
    /* C1：这一条必须能在回执的决策环里找到 take（event 级关联验证） */
    if (own_token(session, text, c->gen, tok, sizeof(tok)) != 0) {
        if (why != NULL) *why = "tok";
        return 0;
    }
    for (i = 0; i < c->ack_decision_count; i++) {
        if (strcmp(c->ack_tok[i], tok) == 0 && strcmp(c->ack_dec[i], "take") == 0) { found = 1; break; }
    }
    if (!found) {
        c->skipped_token++;
        if (why != NULL) *why = "tok";
        return 0;
    }
    c->execs++;
    if (why != NULL) *why = "ok";
    return 1;
}

void own_disable(own_ctx *c, const char *why)
{
    if (c == NULL) return;
    c->active = 0;
    c->ack_ok = 0;
    own_err(c, "disabled: %s", why);
}

int own_status_json(const own_ctx *c, char *out, size_t cap)
{
    int n;

    if (out == NULL || cap == 0) return -1;
    if (c == NULL) { snprintf(out, cap, "{}"); return 2; }
    n = snprintf(out, cap,
                 "{\"on\":%d,\"active\":%d,\"gen\":%lld,\"not_before_ms\":%lld,"
                 "\"exp_ms\":%lld,\"requires\":\"%s\",\"ack_ok\":%d,\"ack_state\":\"%s\","
                 "\"ack_build\":\"%s\",\"ack_gen\":%lld,\"ack_hash\":\"%08lx\","
                 "\"writes\":%lu,\"beats\":%lu,\"write_fail\":%lu,\"skip_lease\":%lu,"
                 "\"skip_no_ack\":%lu,\"skip_tok\":%lu,\"execs\":%lu,\"err\":\"%s\"}",
                 c->enabled, c->active, c->gen, c->not_before_ms, c->exp_ms,
                 c->requires_build, c->ack_ok, c->ack_state, c->ack_build, c->ack_gen,
                 c->ack_hash & 0xFFFFFFFFUL, c->writes, c->beats, c->write_fail,
                 c->skipped_expired, c->skipped_no_ack, c->skipped_token, c->execs,
                 c->last_err);
    if (n < 0 || (size_t)n >= cap) return -1;
    return n;
}
