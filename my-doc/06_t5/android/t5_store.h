/*
 * t5_store.h -- 任务状态与结果的追加式持久化（JSONL）
 *
 * 两个文件，都在 T5 自己的 --work-dir 下，绝不写 T4 目录：
 *   jobs.jsonl     每次状态变化写一整条记录（同一 job_id 后写覆盖先写）
 *   results.jsonl  只在终态（SUCCEEDED / FAILED）写一份结果
 *
 * 崩溃一致性：每条记录只调用一次 write()（二进制层可能拆包，所以是 t5_write_all）
 * 紧接着 fsync；回放时"最后一行没有换行符 / JSON 解析失败"一律视为半条记录丢弃，
 * 于是最坏情况只是丢掉最后一次状态跃迁，不会产生无法恢复的库。
 */
#ifndef T5_STORE_H
#define T5_STORE_H

#include "t5_types.h"

typedef struct {
    int  fd;
    char path[T5_MAX_PATH];
} t5_store;

/* 追加打开（不存在则创建），0 = 成功 */
int t5_store_open(t5_store *s, const char *work_dir, const char *file_name);
void t5_store_close(t5_store *s);
/* 追加一条完整记录并落盘，0 = 成功 */
int t5_store_append(t5_store *s, const t5_job *j);

/* 把 job 序列化成一行 JSON（含结尾 '\n'），返回长度，<0 表示缓冲不足 */
int t5_job_to_json(const t5_job *j, char *buf, size_t buflen);

typedef void (*t5_store_cb)(void *ud, const t5_job *j);

/*
 * 回放 work_dir/file_name：
 *   cb  对每条可解析记录回调一次（按文件顺序，调用方负责"后者覆盖前者"）
 *   返回 0；*lines = 有效记录数，*bad = 被丢弃的半条/坏行数
 */
int t5_store_replay(const char *work_dir, const char *file_name,
                    t5_store_cb cb, void *ud,
                    unsigned long *lines, unsigned long *bad);

#endif /* T5_STORE_H */
