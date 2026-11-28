/*
 * skill_registry.h -- T9-29 (P0): 统一技能注册表（编译期白名单 + 运行期窄化）
 *
 * 与既有文件的分工，先说清楚，避免又长出一套并行语义：
 *   intent_route.[ch] : 把一句话判成"哪个意图"（L0，纯规则，保持不变）
 *   skill_dispatch.[ch] : 意图 -> t8_skill_req -> 执行回调（保持不变）
 *   本文件 : 把"能力"登记成一张表（id / owner / 参数 / 例句 / 回话模板 / 执行白名单），
 *            并回答三个新问题：
 *              1) 这个意图归谁执行（factory / local / ai）—— P1 的 ownership 从这里派生
 *              2) 某个技能现在是否启用（Conf 默认 + App 快照 + 清单窄化）
 *              3) 规则表指纹（rules_hash），用于 Worker 与 Hook 的漂移检测（F3）
 *
 * 三条硬约束（T9-28 SECURITY §2）：
 *   - 执行回调只可能是编译期枚举 sk_exec_id；清单文件不能引入新回调（V1）。
 *   - owner 的**默认值**在编译期常量里；运行期只能由 ai_worker 按配置改（给 time/alarm
 *     这类"可在两种执行者之间切换"的能力用），清单文件不能改（V2/V5）。
 *   - 清单只能把参数约束收紧（V4），不能放宽。
 *
 * 无动态分配；表在 .rodata；运行期状态是固定数组。
 */
#ifndef T9_29_SKILL_REGISTRY_H
#define T9_29_SKILL_REGISTRY_H

#include <stddef.h>

#include "intent_route.h"
#include "skill_dispatch.h"

#define SK_ID_MAX        32
#define SK_TITLE_MAX     24
#define SK_DESC_MAX      96
#define SK_PARAM_MAX     4
#define SK_PARAM_NAME_MAX 16
#define SK_ENUM_MAX      5
#define SK_EX_MAX        4
#define SK_EX_LEN        48
#define SK_TABLE_MAX     20
#define SK_OVR_MAX       8
#define SK_REJECT_MAX    6
#define SK_REJECT_LEN    40

typedef enum {
    SK_OWN_FACTORY = 0,   /* 原厂执行：hook PASS，worker 不放行标记以外的动作 */
    SK_OWN_LOCAL   = 1,   /* 我们自己执行：hook TAKE，worker 调用回调 */
    SK_OWN_AI      = 2    /* 交给模型：hook TAKE，worker 走 L2/L3 */
} sk_owner;

typedef enum {
    SKP_STR = 0,
    SKP_ENUM,
    SKP_INT
} sk_param_type;

/* 编译期执行回调白名单。清单/配置只能引用这里的值，不能引入新函数。 */
typedef enum {
    SK_EXEC_NONE = 0,
    SK_EXEC_MUSIC,
    SK_EXEC_DEVICE_STATUS,
    SK_EXEC_TIME,
    SK_EXEC_MAX
} sk_exec_id;

typedef struct {
    char          name[SK_PARAM_NAME_MAX];
    sk_param_type type;
    int           required;      /* 1 = 缺了必须追问 */
    int           min;           /* SKP_INT */
    int           max;
    int           max_len;       /* SKP_STR：字节上限（UTF-8 安全截断） */
    char          enums[SK_ENUM_MAX][SK_PARAM_NAME_MAX];
    int           enum_count;    /* SKP_ENUM：允许值个数（0 = 任意） */
} sk_param;

typedef struct {
    char        id[SK_ID_MAX];         /* "music.play"：稳定标识（日志/事件/工具名） */
    char        title[SK_TITLE_MAX];   /* 中文名 */
    char        desc[SK_DESC_MAX];     /* 一句话能力描述（L2 工具描述用） */
    sk_owner    owner;                 /* 编译期默认归属 */
    ir_intent   intent;                /* 对应意图 */
    t8_skill_id t8_id;                 /* 复用既有派发：意图 -> 技能 id */
    sk_exec_id  exec;                  /* 执行回调白名单（local 必填） */
    int         fixed_argv0;           /* 1 = 执行时 argv[0] 固定为该技能的 action */
    char        argv0[SK_PARAM_NAME_MAX]; /* 固定动作名（如 music.play -> "play"） */
    const char *enable_key;            /* 对应的配置键名（NULL = 恒开/不受开关控制） */
    int         param_count;
    sk_param    params[SK_PARAM_MAX];
    int         ex_count;
    char        ex[SK_EX_MAX][SK_EX_LEN];
    int         neg_count;
    char        neg[SK_EX_MAX][SK_EX_LEN];
    char        reply_ok[SK_DESC_MAX]; /* 成功回话模板（可含一个 %s） */
} sk_desc;

/* 运行期窄化覆盖（来自 skills.json）：只允许改文案/例句/关闭，不允许改 owner/exec。 */
typedef struct {
    int  used;
    int  idx;                          /* 指向 sk_desc 表下标 */
    char title[SK_TITLE_MAX];
    char desc[SK_DESC_MAX];
    char reply_ok[SK_DESC_MAX];
    int  ex_count;
    char ex[SK_EX_MAX][SK_EX_LEN];
    int  neg_count;
    char neg[SK_EX_MAX][SK_EX_LEN];
} sk_ovr;

typedef struct {
    int  used;
    int  enabled;                      /* 运行期解析后的启用状态 */
    int  owner;                        /* 运行期归属（默认 = 编译期） */
    unsigned long claims;              /* Shadow/正式判定命中次数 */
    unsigned long blocked;             /* 被开关/归属拦下的次数 */
} sk_rt;

typedef struct {
    int      count;                    /* 编译期表条目数 */
    long long boot_ms;
    sk_rt    rt[SK_TABLE_MAX];
    sk_ovr   ovr[SK_OVR_MAX];
    int      ovr_count;
    /* 清单加载结果（供状态页与日志） */
    int      manifest_loaded;
    unsigned long manifest_rejects;
    char     reject_id[SK_REJECT_MAX][SK_ID_MAX];
    char     reject_reason[SK_REJECT_MAX][SK_REJECT_LEN];
    int      reject_count;
    unsigned long params_ignored;        /* 清单里出现的 params 字段数（P0 只解析不应用） */
    unsigned long rules_hash;           /* 编译期规则表指纹（FNV-1a 64 -> 低 32 位） */
} sk_registry;

/* 初始化：填编译期表，所有技能 enabled=0（由调用方按配置打开），计算 rules_hash。
 * 返回 0 = 成功；-1 = 表配置非法（例如 local 技能没有 exec）。 */
int  sk_registry_init(sk_registry *r);

int  sk_registry_count(const sk_registry *r);
const sk_desc *sk_registry_at(const sk_registry *r, int idx);

/* 按 id 查找；返回表下标，-1 = 未知 */
int  sk_registry_find(const sk_registry *r, const char *id);

/* 运行期开关/归属（只有 ai_worker 调用；清单文件走 sk_manifest_apply） */
int  sk_registry_set_enabled(sk_registry *r, int idx, int on);
int  sk_registry_set_owner(sk_registry *r, int idx, sk_owner owner);
int  sk_registry_enabled(const sk_registry *r, int idx);
sk_owner sk_registry_owner(const sk_registry *r, int idx);

/* 文案/例句/回话的读取：清单覆盖优先，否则用编译期值 */
const char *sk_registry_title(const sk_registry *r, int idx);
const char *sk_registry_desc(const sk_registry *r, int idx);
const char *sk_registry_reply(const sk_registry *r, int idx);
int  sk_registry_examples(const sk_registry *r, int idx, const char **out, int cap);

/* 意图 -> 归属（取该意图第一条登记的 owner）。未登记返回 SK_OWN_AI（最保守：不抢原厂）。 */
sk_owner sk_registry_owner_of_intent(const sk_registry *r, ir_intent it,
                                     const char **id_out);

/*
 * 归属表里的 factory 意图位掩码：把所有 owner=factory 且有 route 位的意图位或起来。
 * P1 的 ownership.json 用它填 mask（只用于回滚路径，不参与生效判定）。
 */
int  sk_registry_factory_mask(const sk_registry *r);

/* Shadow 判定：这句话"如果由注册表接管"，会走哪个技能。
 * 返回表下标，-1 = 不接管。仅用于日志/统计，不改变生产路径（P0）。 */
int  sk_registry_claim(const sk_registry *r, ir_intent it, const char *arg);

const char *sk_owner_name(sk_owner o);
const char *sk_exec_name(sk_exec_id e);

/* 状态快照（一行 JSON，不含正文）：{"count":..,"rules_hash":"..","loaded":..,"skills":[...]} */
int  sk_registry_dump_json(const sk_registry *r, char *out, size_t cap);

#endif /* T9_29_SKILL_REGISTRY_H */
