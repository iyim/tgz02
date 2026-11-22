/*
 * nlu_takeover.h -- T8-02：会话级 NLU/CDM 接管状态（并发安全 + 容量耗尽安全）
 *
 * 背景见 asr_independent/T8-01_NLU_CDM_TAKEOVER.md：接管点是
 *   AliAiLabs::AGUI::SessionDispatch::onNlpResult(int, int, NlpResult*) @ libsmartbox 0x118ebc
 * 登记点在已经在工作的 T6 Hook（SessionManager::onStream）。
 *
 * T8-01 留下的两个问题，本版修掉：
 *   1) 槽位满时 t8_to_alloc() 会静默覆盖仍在 TTL 内的登记 —— 那条 AI 会话说漏就漏，
 *      原厂 CDM 会把它的技能执行掉，而日志上什么也看不出来。现在：**绝不覆盖有效登记**；
 *      容量耗尽是一个显式的错误状态（overflow 计数 + 降级窗口），降级窗口内对未登记会话
 *      采取 fail-closed（宁可不执行原厂技能，也不让 AI 会话漏进 CDM）。
 *   2) onStream 与 onNlpResult 在**不同线程**上（真机实测 pid 8342 的 tid 8410 / 8374 / 8433），
 *      共享状态必须有同步。现在所有导出函数内部用一把 pthread mutex，临界区只做内存操作：
 *      没有 I/O、没有日志、没有网络、没有原厂调用。
 *
 * 线程与锁的约定：
 *   - 所有 API 可在任意线程调用，内部加锁；调用方不需要（也不应该）持锁；
 *   - 临界区内不回调任何外部代码，因此不会出现回调重入死锁；
 *   - 锁是普通 mutex（非递归）：内部的 *_locked 版本不许在已持锁时再调用公开 API；
 *   - 同一把锁保护整个结构体，写者极少（每次 ASR final 一次）、读者更少（每次 NLU 结果一次），
 *     不是性能热点，简单一致优先。
 */
#ifndef T8_NLU_TAKEOVER_H
#define T8_NLU_TAKEOVER_H

#include <stddef.h>

#if defined(_WIN32)
#include <windows.h>
typedef CRITICAL_SECTION t8_to_mutex;
#else
#include <pthread.h>
typedef pthread_mutex_t t8_to_mutex;
#endif

/* 容量：真机实测并发 = 1（一次只有一条识别会话，session 每次识别递增）。
 * 64 个槽位相当于 64 条"尚未收到 NLU 结果"的会话堆在一起才会耗尽，
 * 在 30 s TTL 内这已经不是正常现象，所以耗尽必须当成故障上报，而不是当容量问题慢慢调。 */
#define T8_TO_SLOTS          64
#define T8_TO_SESSION_MAX    40
#define T8_TO_RULE_MAX       24
#define T8_TO_INTENT_MAX     16
#define T8_TO_TTL_MS         30000
/* 容量耗尽后的 fail-closed 窗口：这段里未登记会话也不放进原厂 CDM */
#define T8_TO_DEGRADED_MS    5000

typedef enum {
    T8_TO_PASS = 0,             /* 交给原厂：NLU 结果照常进 CDM，本地技能照常执行 */
    T8_TO_TAKE = 1,             /* 我方接管：该会话的 NLU 结果必须被丢弃（已登记） */
    T8_TO_TAKE_UNREGISTERED = 2,/* 应当接管但**没能登记**（容量耗尽）：调用方必须按接管处理 */
    T8_TO_TAKE_FAILCLOSED = 3   /* 接管已开启但状态不可用/会话缺失：调用方必须按接管处理 */
} t8_to_decision;

typedef enum {
    T8_TO_WHY_NONE = 0,
    T8_TO_WHY_AI = 1,             /* 不是本地指令（IR_NONE） */
    T8_TO_WHY_AI_INCOMPLETE = 2,  /* 命中意图但参数不完整，交给 AI 澄清 */
    T8_TO_WHY_AI_INTENT_OFF = 3,  /* 命中了意图，但该意图当前未启用本地路由 */
    T8_TO_WHY_OVERFLOW = 4,       /* 应当接管，但槽位已满（容量耗尽） */
    T8_TO_WHY_FAILCLOSED = 5,     /* 接管已开启，但锁/状态不可用（异常降级） */
    T8_TO_WHY_NO_SESSION = 6      /* 接管已开启，但会话 id 缺失，无法定界 */
} t8_to_why;

typedef struct {
    int       used;
    char      session[T8_TO_SESSION_MAX];
    long long deadline_ms;
    int       drops;                  /* 该会话被丢弃的 NLU 结果次数（诊断） */
    char      intent[T8_TO_INTENT_MAX];
    char      rule[T8_TO_RULE_MAX];
    t8_to_why why;
} t8_to_slot;

typedef struct {
    t8_to_mutex mutex;
    int         mutex_ready;
    int         enabled;               /* 0 = 接管关闭（原厂行为完全不变），1 = 开启 */
    int         init_error;            /* 1 = 曾经初始化失败（开启时锁不可用） */
    long long   failclosed_until_ms;   /* > now 时处于 fail-closed 窗口（状态不可用/会话缺失） */
    t8_to_slot  slot[T8_TO_SLOTS];
    long long   degraded_until_ms;     /* > now 时处于 fail-closed 降级窗口 */
    unsigned long marked;              /* 判定为接管并**成功**登记的次数 */
    unsigned long passed;              /* 判定为放行（本地指令）的次数 */
    unsigned long dropped;             /* 实际丢弃的 NLU 结果次数 */
    unsigned long expired;             /* 因 TTL 过期而不再拦截的次数 */
    unsigned long unknown;             /* 未登记会话的 NLU 结果（正常放行）次数 */
    unsigned long overflow;            /* 应当接管但槽位耗尽的次数（必须 > 0 时告警） */
    unsigned long degraded_passes;     /* 降级窗口内被 fail-closed 丢掉的未登记结果次数 */
    unsigned long reentrant_marks;     /* 同一会话被重复登记的次数（去重生效的证据） */
    unsigned long failclosed_events;   /* 触发 fail-closed 的次数（状态不可用 / 会话缺失） */
    unsigned long failclosed_passes;   /* fail-closed 窗口内被拦下的未登记结果次数 */
} t8_to_state;

/* 返回 0 = 初始化成功；-1 = 锁初始化失败（接管开启时调用方必须按 fail-closed 处理） */
int  t8_to_init(t8_to_state *st);
void t8_to_destroy(t8_to_state *st);

/*
 * 开关（默认关闭）。关闭时所有入口保持原厂行为：
 *   t8_to_on_final() 恒返回 T8_TO_PASS（不写任何状态），t8_to_should_drop() 恒返回 0。
 * 开启后：
 *   - 锁不可用（init 失败）-> on_final 返回 T8_TO_TAKE_FAILCLOSED、should_drop 恒返回 1，
 *     并且**完全不触碰**共享状态（"无锁不访问"是硬规则）；
 *   - 会话 id 缺失 -> 开 fail-closed 窗口并返回 T8_TO_TAKE_FAILCLOSED（不许静默放行）。
 */
int  t8_to_enabled_set(t8_to_state *st, int on);
int  t8_to_enabled(const t8_to_state *st);

/*
 * onStream(isFinished=1) 时调用：判定并登记。
 *   route_mask：worker.conf 里启用的本地意图位掩码（T7B_ROUTE_*），0 = 全都算未启用。
 *   返回 T8_TO_PASS / T8_TO_TAKE / T8_TO_TAKE_UNREGISTERED（后者 = 该拦但没登记上）。
 */
t8_to_decision t8_to_on_final(t8_to_state *st, const char *session, const char *text,
                              long long now_ms, int route_mask, t8_to_why *out_why);

/*
 * SessionDispatch::onNlpResult 时调用：1 = 丢弃（我方会话），0 = 放行原厂。
 * 降级窗口内对未登记会话也返回 1（fail-closed），并记 degraded_passes。
 */
int t8_to_should_drop(t8_to_state *st, const char *session, long long now_ms);

/* 会话结束（onStopTalk / exitTalk / 我方回复完成）：清掉登记 */
void t8_to_on_session_end(t8_to_state *st, const char *session);

/* 清理过期槽位，返回清理条数 */
int t8_to_purge(t8_to_state *st, long long now_ms);

/* 诊断：当前仍有效的接管会话数 */
int t8_to_active(t8_to_state *st, long long now_ms);

/* 诊断快照（一次性取走所有计数，供状态文件使用） */
typedef struct {
    int           active;
    int           enabled;
    int           init_error;
    int           overflow;
    int           degraded;
    int           failclosed;
    unsigned long marked;
    unsigned long passed;
    unsigned long dropped;
    unsigned long expired;
    unsigned long unknown;
    unsigned long overflow_events;
    unsigned long degraded_passes;
    unsigned long reentrant_marks;
    unsigned long failclosed_events;
    unsigned long failclosed_passes;
} t8_to_snapshot;

void t8_to_snapshot_take(t8_to_state *st, long long now_ms, t8_to_snapshot *out);

const char *t8_to_why_name(t8_to_why why);

#endif /* T8_NLU_TAKEOVER_H */
