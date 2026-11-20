/*
 * tgb_server.h -- UDS 接收端：单线程 select 循环、边收边落盘、落盘成功才 ACK
 *
 * 架构（一句话）：每条事件都"解析 → 去重 → 追加写并 fsync → 才回 ACK"，
 * 因此不存在"事件队列"这种可能丢数据的中间层，背压由 socket 缓冲 + 客户端重试承担。
 *
 * 有界内存（全部固定大小，无动态增长）：
 *   每连接输入缓冲 TGB_MAX_FRAME(1040 B) + 输出缓冲 TGB_OUT_BUF(4096 B)
 *   连接数上限 cfg.max_clients（默认 8，硬上限 32）
 *   去重表 cfg.dedup_cap（默认 8192，FIFO 淘汰）
 *   一次一行记录缓冲 TGB_REC_LINE_MAX(4096 B)
 */
#ifndef TGB_SERVER_H
#define TGB_SERVER_H

#include <stddef.h>

#include "tgb_dedup.h"
#include "tgb_event.h"
#include "tgb_proto.h"
#include "tgb_store.h"

#define TGB_MAX_CLIENTS_DEFAULT 8
#define TGB_MAX_CLIENTS_LIMIT   32
#define TGB_OUT_BUF             4096
#define TGB_SOCK_SNDBUF         8192    /* 每连接 SO_SNDBUF：ACK 面刻意压小 */
#define TGB_STATUS_FILE         "bridge_status.json"

typedef struct {
    char      sock_name[96];     /* 抽象命名空间名字（Android/Linux）；为空则用 sock_path */
    char      sock_path[TGB_PATH_MAX];  /* 文件系统路径（Windows 主机测试 / 也可在 Linux 用） */
    char      work_dir[TGB_PATH_MAX];
    int       max_clients;
    int       dedup_cap;
    long long fault_after_writes;   /* >=0 注入落盘失败（仅测试），-1 关闭 */
    int       status_interval_ms;
    int       verbose;
} tgb_config;

void tgb_config_defaults(tgb_config *c);
/* 参数合法性检查；不合法返回 -1 并在 err 里说明 */
int  tgb_config_check(const tgb_config *c, char *err, size_t errlen);

typedef struct {
    unsigned long frames;          /* 收到的完整帧 */
    unsigned long stored;
    unsigned long duplicate;
    unsigned long rejected;
    unsigned long reject_by_code[TGB_E_COUNT];
    unsigned long frame_errors;    /* 帧级错误（magic/ver/crc/oversize/type） */
    unsigned long clients_accepted;
    unsigned long clients_closed;
    unsigned long client_aborts;   /* 客户端半帧断开 / 读错误 */
    unsigned long client_overflow; /* 客户端不读 ACK / 输入不合帧，被断开 */
    unsigned long store_errors;
    unsigned long replay_lines;
    unsigned long replay_bad;
    unsigned long dedup_evicted;
    long long     truncated_bytes;
} tgb_stats;

/* 跑主循环，直到 tgb_server_request_stop() 或 SIGINT/SIGTERM。
 * 返回 0 = 正常退出；<0 = 启动失败（未进入循环） */
int  tgb_server_run(const tgb_config *cfg, tgb_stats *out);

/* 可在信号处理函数里调用（只置一个 volatile 标志） */
void tgb_server_request_stop(void);

#endif /* TGB_SERVER_H */
