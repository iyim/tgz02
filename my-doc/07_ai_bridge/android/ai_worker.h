/*
 * ai_worker.h -- 独立 AI Worker 进程（T5-06B 基础框架）
 *
 * 职责边界（一句话）：只读消费 events.jsonl、维护消费进度、校验/去重/缺口检测、
 * 把文本交给 Provider（本阶段是 Mock），并把状态暴露成可查询的 JSON。
 *
 * 明确不做：不改 events.jsonl、不写桥接端目录以外的文件、不发网络请求、
 * 不执行模型输出里的任何内容、不碰 smartapp:core、不自动重启自己。
 *
 * 运行形态：单进程、单线程、无动态内存增长（所有缓冲区固定大小），
 * 动态链接构建（T5-06C 要 dlopen 系统 libcurl，静态二进制做不到）。
 */
#ifndef T6B_AI_WORKER_H
#define T6B_AI_WORKER_H

#include "conv_context.h"
#include "conv_session.h"
#include "deepseek_provider.h"
#include "event_reader.h"
#include "intent_route.h"
#include "provider.h"
#include "skill_dispatch.h"
#include "utterance_gate.h"
#include "worker_status.h"

#define T6B_WORK_DIR_DEFAULT    "/data/local/tmp/t5_bridge/work"
#define T6B_STATE_DIR_DEFAULT   "/data/local/tmp/t5_bridge/ai_worker"
/* T8-15.3：native 守卫（libtg_ttsguard）轮询的"请求开麦"计数器；worker 写、守卫读。
 * 原厂指令类轮次没有我方 TTS，靠这个文件把续听补回来。 */
#define T8_CONT_REQ_FILE        "/data/local/tmp/t7/continuity.req"
#define T6B_EVENTS_NAME_DEFAULT "events.jsonl"
#define T6B_LOCK_NAME_DEFAULT   "ai_worker.lock"
#define T6B_PROVIDER_MOCK       "mock"
#define T6B_PROVIDER_DEEPSEEK   "deepseek"
/* T5-06D：模型回答 -> 原厂 TTS 的本地持久化队列（默认关闭 = 纯 T5-06C 行为） */
#define T6B_TTS_QUEUE_DEFAULT   ""
#define T6B_TTS_ID_MAX          128
/* T7-01：配置与上下文文件（都放在 state_dir 下） */
#define T6B_CONF_NAME_DEFAULT   "worker.conf"
#define T6B_CONTEXT_NAME_DEFAULT "context.json"
/* T7-01：运行中的 Worker 通过这个请求文件清空上下文（见 run_ai_worker.sh clear-context） */
#define T6B_CONTEXT_CLEAR_NAME  "context.clear"
/* T7-04：暂存槽与"原厂放行"标记 */
#define T6B_GATE_HOLD_NAME      "utterance_hold.json"
#define T6B_ROUTE_PUBLISH_NAME  "native_route.public.json"
/* T7-06-R1 现场：2 s 窗口在这台设备上不够——原厂从收到 ASR 结果到真正开口要 2~4 s，
 * 结果是本地指令的答案被守卫当成"原厂主动回答"丢掉，用户听起来就是"叫得醒但不回答"。
 * 放回 8 s 的窗口；精确性由"有没有发标记"保证（route=ai 不发标记，必被拦）。 */
#define T6B_ROUTE_SLACK_MS      8000
#define T7B_PUBLISH_TRIES       3       /* T7-05：放行标记写盘的重试次数（全失败则回退 AI） */
/* T7-05-R2：原来的"文本相同 + 3 s 窗口"去重已删除，改为按事件身份判定，见 t7_dup.h */

/* T7-04：本地意图路由的位掩码见 intent_route.h（T7B_ROUTE_*） */

typedef struct {
    char        work_dir[T6B_PATH_MAX];      /* events.jsonl 所在目录（只读） */
    char        state_dir[T6B_PATH_MAX];     /* 消费进度、状态、锁、日志所在目录 */
    char        events_name[64];             /* 事件文件名（不允许带路径分隔符） */
    char        provider_name[16];           /* "mock"（默认）| "deepseek" */
    int         poll_ms;                     /* 无数据时的轮询间隔 */
    int         status_interval_ms;          /* 状态文件刷新间隔 */
    int         max_record_bytes;            /* 单行上限 */
    int         state_sync_every;            /* 每处理 N 条落一次消费进度 */
    long long   idle_exit_ms;                /* 空闲 N ms 后退出（0 = 常驻） */
    long long   max_events;                  /* 处理 N 条后退出（0 = 不限） */
    long long   max_runtime_ms;              /* 运行 N ms 后退出（0 = 不限） */
    int         provider_retry_max;          /* 超过 N 次尝试仍失败 → 报 stuck，再试 EXTRA 次后进死信 */
    int         provider_dead_letter;        /* T7-06-R1：1 = 卡死的事件写死信后跳过，0 = 永远堵住（旧行为） */
    int         provider_backoff_ms;         /* 首次重试间隔 */
    int         provider_backoff_max_ms;     /* 重试间隔上限 */
    int         state_retry_ms;              /* 进度落盘失败后的重试间隔 */
    long long   state_fail_exit_ms;          /* 持续失败多久后带错误退出（0 = 立即退出） */
    int         verbose;
    char        reply_log[T6B_PATH_MAX];     /* 可选：成功回答的落盘文件（默认关闭） */
    char        tts_queue[T6B_PATH_MAX];     /* 可选：TTS 队列根目录（默认关闭） */
    /* T7-01 */
    char        conf_path[T6B_PATH_MAX];     /* 可选：配置文件路径（空 = 没有） */
    char        context_file[T6B_PATH_MAX];  /* 上下文文件（空 = state_dir/context.json） */
    int         context_enabled;             /* 1 = 多轮上下文（默认 0，配置文件里打开） */
    int         context_max_messages;        /* 最多保留的消息条数（成对淘汰） */
    int         clear_context;               /* 1 = 启动时清空上下文后退出（维护动作） */
    /* T7-02：播报回声 / 无指令过滤 */
    int         echo_filter;                 /* 1 = 播报窗口内丢弃回声事件（默认 1） */
    int         echo_no_command;             /* 1 = 丢弃"只有唤醒词/语气词"的事件（默认 1） */
    /* T7-04：本地意图优先路由（原厂已有能力优先，不进大模型） */
    int         route_native;                /* 1 = 启用本地意图路由（默认 1） */
    int         route_intents;               /* 位掩码：见 T7B_ROUTE_* */
    /* T8-14.1：自有技能调度（默认 0 = 完全保持原厂/原行为）。
     * 只有显式打开后，已注册的技能（本轮仅 time.query）才由 Worker 自己执行并播报；
     * 其它意图仍走原厂 route=native 或大模型。 */
    int         skill_dispatch;
    /* T8-14.2：device.status 独立开关（默认 0）。总开关与它同时为 1 才接管设备状态查询。 */
    int         skill_device_status;
    /* 可选：覆盖电池 capacity 路径（空 = 按候选列表自动探测，真机为 sysfs） */
    char        skill_battery_path[T8_SK_PATH_MAX];
    /* T8-15：免唤醒连续对话（一次唤醒、多轮、主动停止）。
     * 语义主体在 session_ctrl（对话 = 唤醒后的一串轮次；轮 = 一条 asr_final）。
     * 这里只放"策略参数"，默认值即 T8-15 交付行为：打开续听、12 s 窗口、最多 8 轮。 */
    int         continuous_dialog;          /* 1 = 播报结束后装填免唤醒续听窗口（默认 1） */
    int         continuous_relisten_ms;     /* 续听窗口长度（默认 12000） */
    int         continuous_max_rounds;      /* 单个对话最多轮次（默认 8；0 = 不限） */
    int         session_ctx_clear_on_close; /* 1 = 对话收束时清空模型上下文（默认 0：保持跨唤醒上下文） */
    /* T8-15：原厂会话事件观察（factory talk tap）。
     * 只读 logcat 输出文件里的 SessionManager 日志行，不 hook、不动 :core。
     * 打开后 last_wake_ms / device_listening 才是真实值；关闭时两者保持 0（不冒充）。 */
    int         factory_talk_tap;
    char        factory_talk_log[T6B_PATH_MAX]; /* 空 = state_dir/factory_talk.log */
    /* T7-04：ASR 暂存门（半句话/修订合并） */
    ug_config   gate;
    /* T7-04：连续对话会话状态 */
    cs_config   session;
    t6b_mock_cfg mock;
    t6b_ds_cfg   deepseek;                   /* 只有 provider=deepseek 时才使用 */
} t6b_config;

void t6b_config_defaults(t6b_config *c);

/* 参数合法性检查；0 = 通过，-1 = 不合法（err 里写原因） */
int  t6b_config_check(const t6b_config *c, char *err, size_t errlen);

/* 退出码：0 正常；2 参数错误；3 已有实例在跑；4 初始化失败；5 消费进度无法落盘 */
int  t6b_worker_run(const t6b_config *c, t6b_status *out);

#endif /* T6B_AI_WORKER_H */
