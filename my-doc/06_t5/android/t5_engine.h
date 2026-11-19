/*
 * t5_engine.h -- T5 引擎：扫描 T4 输出目录、建 Job、跑 Provider、落库
 *
 * 单线程、有界内存：
 *   - jobs 固定槽位 max_jobs；再多的文件不会创建任务（记 queue_full，保留候选等下一轮）
 *   - 候选表（尚未稳定的文件）固定 256 条，满了淘汰最久没变化的
 *   - job_id = hash(文件名:大小)，不依赖文件名里的片段序号
 *
 * 不写 T4 目录，只读；所有产物都落在 work_dir。
 */
#ifndef T5_ENGINE_H
#define T5_ENGINE_H

#include <stddef.h>

#include "t5_types.h"

typedef struct {
    char        watch_dir[T5_MAX_PATH];
    char        work_dir[T5_MAX_PATH];
    const char *provider_name;      /* "mock" */
    long        scan_interval_ms;
    long        stable_ms;          /* 文件大小需稳定这么久才判定"写完" */
    long        incomplete_timeout_ms;  /* 一直写不完也一直没有关闭 -> 超时判失败 */
    long        retry_delay_ms;
    int         max_jobs;
    int         max_retries;
    int         verbose;
} t5_config;

void t5_config_defaults(t5_config *c);

typedef struct {
    unsigned long scans;
    unsigned long files_seen;
    unsigned long new_jobs;
    unsigned long dup_skips;        /* 同一文件重复扫描 */
    unsigned long incomplete_skips; /* 还没写完 */
    unsigned long invalid;          /* 格式非法 */
    unsigned long succeeded;
    unsigned long failed;
    unsigned long retried;
    unsigned long queue_full;
    unsigned long evicted;          /* 有界内存淘汰的历史记录 */
    unsigned long recovered;        /* 重启后从 PROCESSING 等中间态恢复 */
    unsigned long bad_lines;        /* 回放时丢弃的半条/坏行 */
    unsigned long provider_errors;
    unsigned long store_errors;
    unsigned long jobs_tracked;
    unsigned long replay_lines;
} t5_stats;

typedef struct t5_engine t5_engine;

t5_engine *t5_engine_open(const t5_config *cfg, char *err, size_t errlen);
void       t5_engine_close(t5_engine *e);

/* 扫一轮：返回本轮新增任务数，<0 表示目录打不开等硬错误 */
int t5_engine_scan(t5_engine *e);

/* 处理最多 max_jobs 个就绪任务（PENDING/RETRY 且到点）；返回处理个数 */
int t5_engine_process_ready(t5_engine *e, int max_jobs);

const t5_stats *t5_engine_stats(const t5_engine *e);

/* 按 job_id 取任务（测试与诊断用），找不到返回 NULL */
const t5_job *t5_engine_find_job(const t5_engine *e, const char *job_id);
/* 告警：失败的原因是目录不可读等 */
const char *t5_engine_last_error(const t5_engine *e);

#endif /* T5_ENGINE_H */
