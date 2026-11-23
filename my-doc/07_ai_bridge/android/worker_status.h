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
    unsigned long long dead_lettered;      /* T7-06-R1：写死信后跳过的事件数 */
    int                provider_stuck;     /* 1 = 已超过重试上限，等待死信策略（不跳过） */
    char               pending_event_id[T6B_ID_MAX + 1]; /* 正在重试/卡住的事件 */

    /* T7-09：死信回滚失败 -> 持久化故障状态（不追加、不推进 offset、不跳过） */
    int                dead_letter_failed;   /* 1 = 已进入该状态 */
    int                dl_io_stage;          /* 失败发生在哪一步（T6B_DL_STAGE_*） */
    int                dl_io_errno;
    int                dl_rollback_stage;    /* 回滚失败在哪一步 */
    int                dl_rollback_errno;
    long long          dl_pre_len;           /* 写前文件长度 */
    long long          dl_cur_len;           /* 出错时的文件长度（dl_cur_len_valid=0 表示读不到） */
    int                dl_cur_len_valid;
    char               dl_event_id[T6B_ID_MAX + 1];
    /* T7-10：故障标记本身的可靠性（标记没写成功 = 跨重启保护未建立，必须能看见） */
    int                dl_marker_state;      /* T6B_MARKER_STATE_*（0=none 1=written 2=write_failed
                                              * 3=unreadable 4=present_match） */
    int                dl_marker_stage;      /* 标记写入失败在哪一步（T6B_MARKER_STAGE_*） */
    int                dl_marker_errno;      /* 平台未提供时为 0 */

    /* 状态落盘（P1-3） */
    int                state_persist_failed;   /* 1 = 上次落盘失败，已停止推进消费 */

    /* T5-06D：回答 -> 原厂 TTS 队列 */
    unsigned long long tts_queued;             /* 成功入队的回答数 */
    unsigned long long tts_skipped;            /* event_id 已在队列/已播报而跳过 */
    unsigned long long tts_enqueue_failed;     /* 入队失败（回答未丢，已显式记录） */
    char               tts_queue[T6B_PATH_MAX];/* 队列根目录（未启用为空） */

    /* T7-01：多轮上下文（只放条数与计数，绝不含消息正文） */
    int                context_enabled;        /* 1 = 多轮上下文生效 */
    int                context_max_messages;   /* 生效上限（条） */
    int                context_messages;       /* 当前保存的消息条数 */
    int                context_turns;          /* 当前完整轮次数 */
    int                context_load_state;     /* 0 disabled / 1 absent / 2 ok / 3 recovered / 4 failed */
    unsigned long long context_saves;          /* 成功落盘次数 */
    unsigned long long context_save_errors;    /* 落盘失败次数 */
    unsigned long long context_evicted;        /* 因超上限被淘汰的消息数 */
    char               context_file[T6B_PATH_MAX];

    /* T7-02：播报回声 / 无指令过滤（只放计数与短原因，绝不含正文） */
    int                echo_enabled;           /* 1 = 过滤生效 */
    int                echo_no_command;        /* 1 = 同时丢弃"无指令内容"的短事件 */
    unsigned long long echo_seen;              /* 参与判定的 asr_final 条数 */
    unsigned long long echo_dropped_echo;      /* 判定为播报回声而丢弃 */
    unsigned long long echo_dropped_nocmd;     /* 判定为无指令内容而丢弃 */
    unsigned long long echo_kept;              /* 判定为正常指令而保留 */
    unsigned long long echo_kept_in_window;    /* 播报窗口内仍保留（未误杀用户插话） */
    unsigned long long echo_window_hits;       /* 命中播报窗口的次数 */
    unsigned long long echo_state_errors;      /* 播放状态读取失败次数 */
    char               echo_last_reason[40];   /* keep / drop_echo / drop_no_command */
    char               echo_last_detail[96];   /* 判定细节（相似度等） */
    char               echo_state_file[T6B_PATH_MAX];

    /* T7-04：本地意图优先路由（route=native / route=ai） */
    int                route_enabled;          /* 1 = 本地意图路由生效 */
    int                route_intents;          /* 启用的意图位掩码 */
    unsigned long long route_native;           /* 交给原厂处理的条数 */
    unsigned long long route_ai;               /* 进入大模型的条数 */
    unsigned long long route_volume;
    unsigned long long route_weather;
    unsigned long long route_screen_off;
    unsigned long long route_time;
    unsigned long long route_screen_on;
    unsigned long long route_media;
    unsigned long long route_stop;
    unsigned long long interrupts;             /* 播报中被新指令打断的次数 */
    char               route_last[96];         /* "route=native intent=time rule=time.keyword" */
    char               route_publish_file[T6B_PATH_MAX]; /* 给 TTS 守卫的原厂放行标记 */

    /* T7-05：放行标记（native_route.public.json）的可靠性计数 */
    unsigned long long route_publish_ok;       /* 落盘 + 回读校验通过 */
    unsigned long long route_publish_fail;     /* 任一步失败（已回退 AI） */
    unsigned long long route_fallback_ai;      /* 标记写失败后改走模型的条数 */
    unsigned long long route_dup_dropped;      /* 事件身份判定为重复而丢弃的条数（T7-05-R2） */
    unsigned long long route_dup_same_event;   /* 其中：event_id 相同 */
    unsigned long long route_dup_same_report;  /* 其中：session+seq+文本 相同 */
    unsigned long long route_same_text_new;    /* 文本相同但事件身份不同（按新指令执行） */
    unsigned long long route_incomplete_ai;    /* 命中意图但参数不完整 -> 转 AI 澄清的条数 */
    unsigned long long route_publish_retry;    /* 重试次数 */
    long long          route_seq;              /* 标记单调序号（守卫用它区分两条连续指令） */
    char               route_publish_err[128]; /* 最近一次失败原因 */

    /* T7-04：ASR 暂存门（半句话/修订合并） */
    int                gate_enabled;
    int                gate_debounce_ms;
    int                gate_max_hold_ms;
    int                gate_cross_session;
    unsigned long long gate_seen;
    unsigned long long gate_held;
    unsigned long long gate_released;
    unsigned long long gate_merged;
    unsigned long long gate_cross_merged;
    unsigned long long gate_dropped_dup;
    unsigned long long gate_restored;
    unsigned long long gate_fast_released;    /* T7-05：完整本地指令不等窗口直接提交的次数 */
    char               gate_last_detail[160];
    char               gate_hold_file[T6B_PATH_MAX];

    /* T7-04：连续对话会话状态（免唤醒续听的会话生命周期） */
    int                session_enabled;
    int                session_timeout_ms;
    char               session_state[16];      /* IDLE/ACTIVE/PROCESSING/SPEAKING/WAIT_NEXT */
    int                session_turns;
    int                session_followups;
    unsigned long      session_opened;
    unsigned long      session_closed;
    char               session_detail[160];

    /* T8-13：会话控制中心（真实事件驱动的生命周期观测） */
    int                sc_enabled;
    char               sc_state[16];           /* IDLE/WAKE_PENDING/LISTENING/PROCESSING/SPEAKING/
                                                INTERRUPTED/FOLLOWUP/CLOSING */
    char               sc_session[128];        /* 当前 ASR 会话 id */
    char               sc_request[128];        /* 当前/最近 AI 请求 event_id */
    int                sc_request_active;      /* 1 = 有未终结的 AI 请求 */
    long long          sc_last_wake_ms;        /* 唤醒事件未接入前恒 0 */
    long long          sc_last_final_ms;       /* 最近一次 asr_final 墙钟 ms */
    char               sc_last_final_event[128];
    char               sc_last_transition[192];/* 最近一次状态迁移 "A->B (why)" */
    unsigned long      sc_transitions;
    unsigned long      sc_opens;               /* 新 ASR 会话数 */
    unsigned long      sc_stale_callbacks;     /* 旧请求/旧播放迟到回调（已拒绝） */
    unsigned long      sc_duplicate_events;    /* 重复 final / 重复 submit */
    unsigned long      sc_timeouts;            /* Provider 超时 + 窗口超时关闭 */
    unsigned long      sc_interrupts;          /* 用户打断 */
    unsigned long      sc_closes;              /* CLOSING 次数 */

    /* T8-15：连续对话（对话 = 一次唤醒后的多轮；轮 = 一条 asr_final） */
    int                sc_continuous;          /* 1 = 续听窗口内的新 ASR 会话算同一对话下一轮 */
    int                sc_relisten_ms;         /* 播报结束后的免唤醒续听窗口 */
    int                sc_max_rounds;          /* 单对话最多轮次（0 = 不限） */
    int                sc_round;               /* 当前对话第几轮（0 = 无对话） */
    int                sc_max_round_seen;      /* 本次运行观察到的最长对话轮数 */
    int                sc_relisten_armed;      /* 1 = 正在续听窗口内 */
    int                sc_ctx_valid;           /* 1 = 模型上下文承载当前对话 */
    int                sc_device_listening;    /* 1 = 原厂仍在聆听（tap 观察值） */
    unsigned long      sc_followup_rounds;     /* 免唤醒轮次 */
    unsigned long      sc_rounds_total;        /* 累计轮次 */
    unsigned long      sc_session_ends;        /* 收束的对话数 */
    unsigned long      sc_round_cap_hits;      /* 触达 max_rounds 的次数 */
    unsigned long      sc_wake_events;         /* 原厂唤醒事件（tap） */
    unsigned long      sc_talk_stops;          /* 原厂 onStopTalk（EOU）次数 */
    unsigned long      sc_listen_starts;       /* 原厂 onListenStarted 次数 */
    unsigned long      sc_exit_talks;          /* 原厂 exitTalk（平台会话退出）次数 */
    char               sc_end_reason[192];     /* 最近一次对话结束原因 */

    /* T8-15：原厂会话事件观察（factory talk tap，只读 logcat 输出文件） */
    int                tap_enabled;
    char               tap_file[T6B_PATH_MAX];
    unsigned long      tap_lines;
    unsigned long      tap_recognized;
    unsigned long      tap_wakes;
    unsigned long      tap_listen_starts;
    unsigned long      tap_talk_stops;
    unsigned long      tap_listen_stops;
    unsigned long      tap_exit_talks;
    unsigned long      tap_ignored;
    unsigned long      tap_malformed;
    unsigned long      tap_resets;
    char               tap_last_session_str[64];

    /* T8-14.1：自有技能调度（skill_dispatch）。calls/ok/fail/noimpl 来自 t8_skill_registry；
     * claimed = 本进程接管（跳过原厂路由）的 utterance 数；dedup = 同一 event_id 已有
     * 持久化播报条目而被跳过执行的次数；last_skill/last_result 只放短标签。 */
    int                sk_enabled;
    int                sk_device_enabled;   /* T8-14.2：device.status 独立开关 */
    unsigned long      sk_calls;
    unsigned long      sk_ok;
    unsigned long      sk_fail;
    unsigned long      sk_noimpl;
    unsigned long      sk_claimed;
    unsigned long      sk_dedup;
    char               sk_last_skill[40];
    char               sk_last_result[48];

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
