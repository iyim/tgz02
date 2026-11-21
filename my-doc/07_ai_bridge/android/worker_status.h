/*
 * worker_status.h -- Worker 的运行状态与计数（可查询，供 run_ai_worker.sh stats 读取）
 *
 * 输出：<state_dir>/ai_worker_status.json
 *   - 位置在 ai_worker 自己的目录里，不写进桥接端的 work 目录（不干扰 T5-05A 的产物）。
 *   - 写入同样是 tmp + fsync + rename + fsync(dir)，所以任意时刻读到的是完整 JSON。
 *   - 字段命名与 bridge_status.json 保持一致的风格（state / pid / *_at / 计数），
 *     便于以后把两个进程的状态并排看。
 */
#ifndef T6B_WORKER_STATUS_H
#define T6B_WORKER_STATUS_H

#include <stddef.h>

#include "event_reader.h"
#include "provider.h"

#define T6B_STATUS_FILE "ai_worker_status.json"

typedef struct {
    int                version;
    char               state[24];          /* starting/running/idle/stopping/stopped/exited/error */
    long long          pid;
    char               started_at[24];
    char               updated_at[24];
    long long          started_at_ms;
    long long          updated_at_ms;

    char               events_file[T6B_PATH_MAX];
    char               state_file[T6B_PATH_MAX];
    long long          offset;             /* 已提交消费偏移 */
    long long          file_size;          /* events.jsonl 当前大小（探测失败为 -1） */
    unsigned long long dev;
    unsigned long long ino;
    /* 文件内容身份（P2-2）：offset 只和它的前缀指纹一起才有意义 */
    unsigned long long prefix_hash;        /* [0,offset) 的 FNV-1a 64 */
    int                prefix_hash_valid;  /* 1 = 指纹可信 */

    char               provider[T6B_PROVIDER_NAME_MAX];
    unsigned long long mock_calls;

    /* Provider 观测（T5-06C：真实 Provider 才有的字段；mock 时保持 0/空） */
    int                provider_mock;          /* 1 = 当前 Provider 不联网（mock） */
    char               model[64];              /* 真实模型名（mock 为空） */
    int                last_http_status;       /* 最近一次 HTTP 状态码（0 = 没拿到） */
    int                last_curl_code;         /* 最近一次 CURLcode（mock 时 0） */
    long long          last_provider_latency_ms;  /* 最近一次调用耗时 */
    unsigned long long last_resp_bytes;        /* 最近一次响应体字节数 */
    char               last_error_class[40];   /* 最近错误类别（短枚举，脱敏） */

    /* 消费侧计数 */
    unsigned long long lines_read;         /* 从文件里读出的完整行（含非法） */
    unsigned long long events_accepted;    /* 解析校验通过 */
    unsigned long long events_processed;   /* 交给 Provider 处理并完成 */
    unsigned long long duplicates;         /* event_id 已在最近窗口里 */
    unsigned long long invalid_lines;      /* 解析失败被跳过 */
    unsigned long long oversize_lines;     /* 超长被跳过 */
    unsigned long long io_errors;          /* 读文件失败次数 */
    unsigned long long truncations;        /* 检测到文件变短 */
    unsigned long long replacements;       /* 检测到 inode 更换（文件被重建） */
    unsigned long long identity_resets;    /* 前缀指纹不符 → 偏移归零重扫（内容身份变化） */
    unsigned long long legacy_rescans;     /* 旧状态无指纹 → 归零重扫（有界重复） */

    /* seq 缺口 */
    unsigned long long gaps;
    unsigned long long gap_missing_total;
    unsigned long long seq_resets;         /* seq 回退（桥接端重启）：不算丢事件 */
    unsigned long long seq_unknown_start;  /* 新 pid 段从 seq>1 开始：无法判定，仅记录 */

    /* 状态文件写入 */
    unsigned long long state_saves;
    unsigned long long state_errors;

    /* Provider */
    unsigned long long provider_ok;
    unsigned long long provider_err;
    unsigned long long provider_timeout;
    unsigned long long provider_retries;   /* 因超时/错误而重试的总次数（P1-2） */
    unsigned long long stuck_attempts;     /* 当前卡住事件的累计尝试次数 */
    int                provider_stuck;     /* 1 = 已超过重试上限，等待死信策略（不跳过） */
    char               pending_event_id[T6B_ID_MAX + 1]; /* 正在重试/卡住的事件 */

    /* 状态落盘（P1-3） */
    int                state_persist_failed;   /* 1 = 上次落盘失败，已停止推进消费 */

    /* T5-06D：回答 -> 原厂 TTS 队列 */
    unsigned long long tts_queued;             /* 成功入队的回答数 */
    unsigned long long tts_skipped;            /* event_id 已在队列/已播报而跳过 */
    unsigned long long tts_enqueue_failed;     /* 入队失败（回答未丢，已显式记录） */
    char               tts_queue[T6B_PATH_MAX];/* 队列根目录（未启用为空） */

    unsigned long      last_seq;
    char               last_event_id[T6B_ID_MAX + 1];
    char               last_event_at[24];
    unsigned long      last_gap_from;
    unsigned long      last_gap_to;
    char               last_invalid[64];   /* 最近一次非法原因 */
    char               last_error[192];
    char               exit_reason[32];
} t6b_status;

void t6b_status_init(t6b_status *st);

/* 原子写状态文件；0 = 成功 */
int  t6b_status_write(const t6b_status *st, const char *path, char *err, size_t errlen);

/* 记录一条错误（同时写入 last_error 与时间戳；不会退出进程） */
void t6b_status_note_error(t6b_status *st, const char *fmt, ...);

#endif /* T6B_WORKER_STATUS_H */
