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

#include "deepseek_provider.h"
#include "event_reader.h"
#include "provider.h"
#include "worker_status.h"

#define T6B_WORK_DIR_DEFAULT    "/data/local/tmp/t5_bridge/work"
#define T6B_STATE_DIR_DEFAULT   "/data/local/tmp/t5_bridge/ai_worker"
#define T6B_EVENTS_NAME_DEFAULT "events.jsonl"
#define T6B_LOCK_NAME_DEFAULT   "ai_worker.lock"
#define T6B_PROVIDER_MOCK       "mock"
#define T6B_PROVIDER_DEEPSEEK   "deepseek"
/* T5-06D：模型回答 -> 原厂 TTS 的本地持久化队列（默认关闭 = 纯 T5-06C 行为） */
#define T6B_TTS_QUEUE_DEFAULT   ""
#define T6B_TTS_ID_MAX          128

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
    int         provider_retry_max;          /* 超过 N 次尝试仍失败 → 报 stuck（继续重试，不跳过） */
    int         provider_backoff_ms;         /* 首次重试间隔 */
    int         provider_backoff_max_ms;     /* 重试间隔上限 */
    int         state_retry_ms;              /* 进度落盘失败后的重试间隔 */
    long long   state_fail_exit_ms;          /* 持续失败多久后带错误退出（0 = 立即退出） */
    int         verbose;
    char        reply_log[T6B_PATH_MAX];     /* 可选：成功回答的落盘文件（默认关闭） */
    char        tts_queue[T6B_PATH_MAX];     /* 可选：TTS 队列根目录（默认关闭） */
    t6b_mock_cfg mock;
    t6b_ds_cfg   deepseek;                   /* 只有 provider=deepseek 时才使用 */
} t6b_config;

void t6b_config_defaults(t6b_config *c);

/* 参数合法性检查；0 = 通过，-1 = 不合法（err 里写原因） */
int  t6b_config_check(const t6b_config *c, char *err, size_t errlen);

/* 退出码：0 正常；2 参数错误；3 已有实例在跑；4 初始化失败；5 消费进度无法落盘 */
int  t6b_worker_run(const t6b_config *c, t6b_status *out);

#endif /* T6B_AI_WORKER_H */
