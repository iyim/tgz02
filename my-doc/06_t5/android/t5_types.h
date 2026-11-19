/*
 * t5_types.h -- T5 ASR 管线的公共类型（状态机 / WAV 信息 / Provider 接口 / Job 记录）
 *
 * 设计约束：
 *   - 本文件只依赖 stdint/stddef，不含 POSIX/Android 头，方便 Windows 主机跑自动化测试；
 *   - Provider 接口与"文件发现 / 任务队列 / 结果存储"完全解耦：
 *     将来接云 ASR 只需新增一个 t5_provider 实现并在 t5_provider.c 里注册，
 *     不需要改 t5_engine.c。
 */
#ifndef T5_TYPES_H
#define T5_TYPES_H

#include <stddef.h>
#include <stdint.h>

#define T5_MAX_PATH 512
#define T5_MAX_TEXT 768
#define T5_MAX_ERR  192
#define T5_MAX_ID   17          /* 16 hex + NUL */

/* 任务状态（任务书 §4） */
typedef enum {
    T5_DISCOVERED = 0,          /* 发现文件（已通过稳定性窗口） */
    T5_VALIDATING,              /* 正在校验 WAV */
    T5_PENDING,                 /* 等待识别 */
    T5_PROCESSING,              /* 识别中 */
    T5_SUCCEEDED,               /* 识别成功 */
    T5_FAILED,                  /* 失败且不再重试 */
    T5_RETRY                    /* 临时失败，等待重试 */
} t5_state;

const char *t5_state_name(t5_state s);
int t5_state_from_name(const char *s, t5_state *out);
int t5_state_is_terminal(t5_state s);

/* WAV 校验结果 */
typedef enum {
    T5_WAV_OK = 0,
    T5_WAV_INCOMPLETE = 1,      /* 还没写完 / data_len 尚未回填 -> 稍后重试 */
    T5_WAV_INVALID = 2,         /* 结构或格式非法 -> 永久失败 */
    T5_WAV_MISSING = 3          /* 打不开 / 找不到 */
} t5_wav_check;

typedef struct {
    char      name[T5_MAX_PATH];    /* 文件名 */
    char      path[T5_MAX_PATH];    /* 完整路径 */
    long long file_size;
    uint32_t  data_bytes;           /* data 块长度 */
    uint32_t  sample_rate;
    uint16_t  channels;
    uint16_t  bits;
    uint16_t  block_align;
} t5_wav_info;

/* Provider 返回：code 用下面的分类值，err 里放可读描述 */
#define T5_ASR_OK         0
#define T5_ASR_TRANSIENT  1     /* 可重试（网络/超时/忙） */
#define T5_ASR_PERMANENT  2     /* 不可重试（格式不支持/拒绝） */

typedef struct {
    int  code;                      /* T5_ASR_OK / T5_ASR_TRANSIENT / T5_ASR_PERMANENT */
    char err[T5_MAX_ERR];
    char text[T5_MAX_TEXT];
    char model[64];
} t5_asr_result;

typedef struct t5_provider {
    const char *name;               /* "mock" */
    const char *type;               /* "mock" | "real" */
    void *(*init)(const char *opt, char *err, size_t errlen);
    int   (*submit)(void *ctx, const t5_wav_info *w, t5_asr_result *out);
    void  (*release)(void *ctx);
} t5_provider;

/* 一条任务记录（也是 jobs.jsonl / results.jsonl 的字段集合，任务书 §5） */
typedef struct {
    char      job_id[T5_MAX_ID];
    char      file[T5_MAX_PATH];
    char      name[T5_MAX_PATH];
    long long size;
    t5_state  state;
    int       attempt;              /* 已重试次数 */
    char      t_start[24];          /* 识别开始时间（本地时间，秒精度） */
    char      t_end[24];            /* 识别完成时间 */
    char      provider[32];
    char      provider_type[16];
    char      text[T5_MAX_TEXT];
    int       err_code;
    char      err_msg[T5_MAX_ERR];

    /* §6 长句切片：保留与 T4 源片段的关联，为将来合并/上下文预留 */
    char      run_id[16];           /* 从文件名解析；解析不到则为空 */
    long      seg_id;               /* 同上 */
    long long start_seq;            /* 同上 */

    /* 只在内存里用的运行期字段，不写进 JSON */
    int       slot;
    int       used;
    long long next_try_ms;
} t5_job;

#endif /* T5_TYPES_H */
