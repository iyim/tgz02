/*
 * model_provider.h -- T9-08C: 统一模型调用入口（ModelProvider）
 *
 * 职责边界（本轮的架构原则）：
 *   统一配置管理  -> model_cfg.c（一份 models.json，多套配置，热加载）
 *   统一调用入口  -> 本文件：按当前配置挑厂商、暴露 sendText / testConnection / getModelInfo
 *   厂商协议独立  -> doubao_provider.c / qwen_provider.c / openai_provider.c
 *
 * 对 worker 的接口形状与 T6B provider 完全一致（mp_provider_open 把它绑成一个 t6b_provider），
 * 所以 ai_worker 的 /turn 代码一行都不用改：换模型只需要改配置，不需要改程序。
 *
 * 关于实时语音：**不在这里**。实时语音是双向音频会话，不是 sendText()，见 realtime_voice.h。
 */
#ifndef MODEL_PROVIDER_H
#define MODEL_PROVIDER_H

#include <stddef.h>

#include "model_cfg.h"
#include "model_call.h"
#include "provider.h"
#include "tg_http.h"

typedef struct {
    int  active;                     /* 1 = 有一条可用配置在生效                     */
    char id[MC_ID_MAX];
    char vendor[MC_VENDOR_MAX];
    char label[MC_LABEL_MAX];
    char model[MC_MODEL_MAX];
    char endpoint_id[MC_MODEL_MAX];
    char api_mode[MC_MODE_MAX];
    char base_url[MC_URL_MAX];
    int  max_tokens;
    int  timeout_ms;
} mp_info;

typedef struct {
    char        path[MC_PATH_MAX];
    model_list  list;
    int         active;              /* 1 = 已绑定一条可用配置                       */
    mp_info     info;
    char        cfg_error[MC_ERR_MAX];   /* 配置层错误（没有文件/解析失败/没有可用配置） */
    long long   reloads;

    /* 观测（只放数字与短枚举，绝不含 key / 正文） */
    unsigned long calls;
    unsigned long ok;
    unsigned long err;
    unsigned long timeouts;
    int           last_http;
    int           last_timed_out;
    long long     last_latency_ms;
    size_t        last_resp_bytes;
    char          last_class[MCALL_CLASS_MAX];
    char          last_error[MCALL_DETAIL_MAX];

    /* 最近一次"测试连接"的结果（App 的配置页直接显示） */
    char        test_id[MC_ID_MAX];
    int         test_ran;            /* 1 = 测过                                         */
    int         test_ok;             /* 1 = 成功                                         */
    long long   test_ms;
    char        test_reason[MCALL_DETAIL_MAX + 64];

    /* 传输层（设备上 libcurl；主机测试注入桩） */
    const tg_http_xport *xport;
    void               *xctx;
} model_provider;

void mp_init(model_provider *mp, const char *path, const tg_http_xport *xport, void *xctx);

/* 重新读配置。1 = 生效配置有变化（或首次加载成功）；0 = 没变化；-1 = 失败（保留旧配置） */
int  mp_reload(model_provider *mp);

/* 热加载：只在文件（mtime/size）变化时重新读一次。语义同 mp_reload。
 * worker 主循环每拍调一次，所以"App 保存后立即生效"不需要重启进程。 */
int  mp_poll(model_provider *mp);

/* ModelProvider.sendText：用当前生效配置发一次文本请求。
 * 0 = 成功（out/outlen 为回答）；-1 = 失败（meta 说明原因；meta 可为 NULL） */
int  mp_send_text(model_provider *mp, const char *messages_json,
                  char *out, size_t outcap, size_t *outlen, mcall_meta *meta);

/* ModelProvider.testConnection：对指定配置（id 为空 = 当前生效配置）发一次最小请求。
 * 0 = 连接可用；-1 = 失败。reason 里是给人看的一句话（不含 key）。 */
int  mp_test_connection(model_provider *mp, const char *id, char *reason, size_t caplen);

/* ModelProvider.getModelInfo：把当前生效配置拷出来；0 = 有，-1 = 没有生效配置 */
int  mp_model_info(const model_provider *mp, mp_info *out);

/* 绑成 worker 用的 t6b_provider（/turn 代码无需改动） */
int  mp_provider_open(t6b_provider *p, model_provider *mp);
void mp_provider_close(t6b_provider *p);

#endif /* MODEL_PROVIDER_H */
