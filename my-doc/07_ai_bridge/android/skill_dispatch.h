/*
 * skill_dispatch.h -- T8-01：统一本地技能接口（技能调度器的最小骨架）
 *
 * 为什么需要它：
 *   现在 Worker 把"音量/时间/播放/暂停/屏幕"这些活交给**原厂**去做（写放行标记 + route=native）。
 *   NLU/CDM 一旦被接管，原厂不再执行这些技能，就得有人真的去执行——但绝不能让大模型
 *   直接拼 Android 操作（模型会编参数、会误伤设备状态）。所以中间加一层**技能接口**：
 *     意图判定（intent_route，已有） -> 技能请求（本头文件） -> 技能实现（谁执行谁负责）
 *   本轮只定义接口 + 实现一个示例（音量），其余先返回 T8_SK_E_NOIMPL，明确"还没接"。
 *
 * 约定：
 *   - 输入只有"结构化参数"，不接受自由文本；参数不合法立刻 T8_SK_E_ARG，不做猜测；
 *   - 每个实现必须幂等/可重入（同一个请求重复执行结果一致），便于失败重试；
 *   - 执行结果只回码 + 一句人类可读的话，TTS 用 message，日志用 code。
 */
#ifndef T8_SKILL_DISPATCH_H
#define T8_SKILL_DISPATCH_H

#include <stddef.h>

#define T8_SK_ARGC_MAX  4
#define T8_SK_ARG_MAX   48
#define T8_SK_MSG_MAX   96

typedef enum {
    T8_SK_NONE = 0,
    T8_SK_VOLUME_SET = 1,     /* argv[0] = 百分比 0..100 */
    T8_SK_VOLUME_STEP = 2,    /* argv[0] = up|down（原厂自己的调整幅度） */
    T8_SK_VOLUME_MUTE = 3,    /* argv[0] = on|off */
    T8_SK_TIME_QUERY = 4,
    T8_SK_MEDIA_PLAY = 5,
    T8_SK_MEDIA_PAUSE = 6,
    T8_SK_MEDIA_STOP = 7,
    T8_SK_SCREEN_ON = 8,
    T8_SK_SCREEN_OFF = 9,
    T8_SK_APP_LAUNCH = 10,    /* argv[0] = 包名/别名 */
    T8_SK_DEVICE_STATUS = 11, /* T8-14.2：设备自身状态（电池电量 / 运行时长），无参数 */
    T8_SK_MAX = 12
} t8_skill_id;

#define T8_SK_OK          0
#define T8_SK_E_ARG      (-1)   /* 参数不合法：不执行 */
#define T8_SK_E_NOIMPL   (-2)   /* 该技能本轮尚未接入：明确报告，不假装成功 */
#define T8_SK_E_CTX      (-3)   /* 执行环境不可用（没有回调/设备不可达） */
#define T8_SK_E_FAIL     (-4)   /* 执行了但失败（由实现决定语义） */

typedef struct {
    t8_skill_id id;
    int         argc;
    char        argv[T8_SK_ARGC_MAX][T8_SK_ARG_MAX];
    char        session[40];      /* 触发它的会话（日志/回执关联用） */
} t8_skill_req;

typedef struct {
    int  code;
    char message[T8_SK_MSG_MAX];
} t8_skill_result;

typedef int (*t8_skill_fn)(const t8_skill_req *req, t8_skill_result *res, void *ctx);

typedef struct {
    t8_skill_fn exec;
    void       *ctx;
} t8_skill_entry;

typedef struct {
    t8_skill_entry entry[T8_SK_MAX];
    unsigned long  calls;
    unsigned long  ok;
    unsigned long  fail;
    unsigned long  noimpl;
} t8_skill_registry;

/* 音量执行回调：由接入方决定怎么落到设备（原厂 AudioManager / 标准 AudioService / 测试桩） */
typedef int (*t8_vol_apply_fn)(int percent, int mute, void *ctx);

/* 音量技能的执行环境：register 时把这个结构体的地址当 ctx 传进来 */
typedef struct {
    t8_vol_apply_fn apply;   /* 必填：真正落地的动作 */
    void           *user;    /* 回调私有数据 */
    int             step;    /* up/down 每次的步长（原厂幅度），<=0 用默认 10 */
} t8_vol_ctx;

void t8_skill_registry_init(t8_skill_registry *r);
int  t8_skill_register(t8_skill_registry *r, t8_skill_id id, t8_skill_fn fn, void *ctx);
int  t8_skill_execute(t8_skill_registry *r, const t8_skill_req *req, t8_skill_result *res);

const char *t8_skill_name(t8_skill_id id);
void t8_skill_req_init(t8_skill_req *req, t8_skill_id id, const char *session);
int  t8_skill_req_arg(t8_skill_req *req, const char *arg);

/*
 * 把 intent_route 的判定结果翻译成技能请求（复用已有分类，不重新识别文本）：
 *   intent / arg（如 "up" / "set:30" / "mute"）-> t8_skill_req。
 * 返回 1 = 有对应技能；0 = 这条意图在本轮没有对应技能（调用方应回落）。
 */
int t8_skill_from_intent(int intent, const char *arg, const char *session, t8_skill_req *out);

/* 示例技能实现：音量。ctx 指向 t8_vol_ctx（apply 必填） */
int t8_skill_volume_exec(const t8_skill_req *req, t8_skill_result *res, void *ctx);

/* 时间查询示例：不执行任何设备操作，只给出可播报文本（证明"无副作用技能"的形态） */
int t8_skill_time_exec(const t8_skill_req *req, t8_skill_result *res, void *ctx);

/* ---------------- T8-14.2：设备自身状态（device.status） ----------------
 *
 * 只看**真机上确认可读**的两个数据源，不做任何推测：
 *   - 电池：sysfs 的 capacity（0..100 整数）。设备实测：/sys/class/power_supply/battery/capacity
 *   - 运行时长：/proc/uptime 的第一个字段（秒，浮点）
 * 任一数据源不可用（文件缺失 / 读失败 / 值非法）就在播报文本里明确降级，
 * **绝不用默认值/上次值顶替**；两个都不可用时返回 T8_SK_E_CTX（失败），而不是编一个数字。
 */
#define T8_SK_PATH_MAX 192

typedef struct {
    char battery_path[T8_SK_PATH_MAX]; /* 空 = 按候选列表自动探测（真机 sysfs） */
    char uptime_path[T8_SK_PATH_MAX];  /* 空 = /proc/uptime */
} t8_dev_ctx;

/* 填默认路径：uptime=/proc/uptime，battery=空（自动探测） */
void t8_dev_defaults(t8_dev_ctx *c);

/* 在候选列表里找到第一个可读出合法 0..100 的 capacity 文件，写进 ctx->battery_path。
 * 返回 1 = 找到，0 = 没有可用电源节点（不是错误，只表示这台设备没有电池/权限）。 */
int t8_dev_detect_battery(t8_dev_ctx *c);

/* 设备状态技能：ctx 指向 t8_dev_ctx（可为 NULL = 用默认路径） */
int t8_skill_device_status_exec(const t8_skill_req *req, t8_skill_result *res, void *ctx);

#endif /* T8_SKILL_DISPATCH_H */
