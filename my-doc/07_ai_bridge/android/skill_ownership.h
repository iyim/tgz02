/*
 * skill_ownership.h -- T9-29 (P1)：归属表 + 租约 + 回执（worker 侧）
 *
 * 设计（T9_28_OWNERSHIP_STATE_MACHINE.md）：
 *   - worker 是**唯一写者**；hook 只读，读完写回执；
 *   - 表里有 gen / not_before_ms / exp_ms / requires_hook_build / rules_hash / owner map；
 *   - not_before 让两侧在同一时刻切换，消除"一半新一半旧"；
 *   - 租约到期 = hook 放行全部（I2 不静默）；worker 侧对应"不再执行本地技能"（I1 不双执行）；
 *   - 回执（ack）让 worker 确认 hook 真的采用了这张表，并带上最近几条决策令牌，
 *     用来做"这一条到底是谁判的"的关联验证（审查意见 §二）。
 *
 * 本文件只做文件与状态；不做判定策略（策略在 ai_worker 的 own_gate 调用点）。
 */
#ifndef T9_29_SKILL_OWNERSHIP_H
#define T9_29_SKILL_OWNERSHIP_H

#include <stddef.h>

#include "own_token.h"

#define OWN_PATH_MAX     256
#define OWN_PROTO        2
#define OWN_BUILD_MAX    24
#define OWN_DEC_MAX      8
#define OWN_ERR_MAX      96
#define OWN_HEARTBEAT_MS 2000
#define OWN_ACTIVATE_MS  1500      /* 必须 > hook 的读缓存(500ms) + 时钟粒度 */
#define OWN_LEASE_MS     7500      /* 3 * heartbeat + 余量 */
#define OWN_TABLE_MAX    4096

typedef struct {
    /* 路径与开关 */
    char dir[OWN_PATH_MAX];
    char table_path[OWN_PATH_MAX];
    char ack_path[OWN_PATH_MAX];
    int  enabled;                  /* 配置打开（skill_ownership_enabled） */
    int  active;                   /* 1 = 表已落盘且回执新鲜可用 */
    char requires_build[OWN_BUILD_MAX];   /* 空 = 不校验 hook build（灰度期） */
    char owner_json[1024];         /* owner 映射片段（心跳重写时原样带上，绝不清空） */

    /* 表内容 */
    long long gen;
    long long not_before_ms;
    long long exp_ms;
    long long boot_ms;             /* 最近一次写的单调时刻 */
    long long last_write_ms;
    unsigned long rules_hash;
    int  mask;

    /* 回执（hook -> worker） */
    int  ack_ok;
    char ack_state[12];            /* active / refused / expired / pending */
    char ack_build[OWN_BUILD_MAX];
    long long ack_boot_ms;
    long long ack_gen;
    unsigned long ack_hash;
    int  ack_decision_count;
    char ack_tok[OWN_DEC_MAX][OWN_TOK_MAX];
    char ack_dec[OWN_DEC_MAX][8];

    /* 观测 */
    unsigned long writes, write_fail, readback_fail, beats;
    unsigned long skipped_expired, skipped_no_ack, skipped_token, execs;
    char last_err[OWN_ERR_MAX];
} own_ctx;

/* 初始化并写第一张表。dir 不存在时尝试创建。
 * 返回 0 = 已生效（表在盘上、回读校验通过）；-1 = 失败（*err 说明原因，ctx 保持 inactive）。
 * gen 从磁盘上已有表的 gen+1 开始（单调）。 */
int  own_init(own_ctx *c, const char *dir, const char *requires_build,
              unsigned long rules_hash, int mask, const char *owner_json,
              long long now_ms, char *err, size_t errlen);

/* 心跳：到点则重写 exp（gen / not_before 不变）。返回 1 = 写了，0 = 没到点，-1 = 失败 */
int  own_heartbeat(own_ctx *c, long long now_ms);

/* 读回执并校验新鲜度/gen/build/hash。返回 1 = 可用，0 = 不可用（原因写 last_err） */
int  own_read_ack(own_ctx *c, long long now_ms);

/* 执行本地技能前的闸门（对应 T9_28 的 C2/C3/C4 与决策令牌校验）。
 * 返回 1 = 允许执行；0 = 不允许，*why 给出短原因（"lease" / "no-ack" / "ack-stale" /
 *   "ack-gen" / "ack-build" / "ack-hash" / "tok"）。 */
int  own_can_exec(own_ctx *c, const char *session, const char *text,
                  long long now_ms, const char **why);

/* 停用（配置关闭 / 初始化失败 / 运行期放弃）：不删表，只把自己标成不可用 */
void own_disable(own_ctx *c, const char *why);

/* 状态片段（一行 JSON，供 status.public.json 嵌套使用） */
int  own_status_json(const own_ctx *c, char *out, size_t cap);


#endif /* T9_29_SKILL_OWNERSHIP_H */
