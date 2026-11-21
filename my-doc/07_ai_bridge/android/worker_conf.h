/*
 * worker_conf.h -- T7-01：Worker 的配置文件（Provider + 上下文参数）
 *
 * 为什么要有它：T5-06C 把 base_url / model / key 路径 / max_tokens 写死在默认值里，
 * 每加一个参数就要多一个命令行开关，设备端脚本越来越长。T7-01 把**模型请求参数**和
 * **上下文参数**收敛到一个文本配置文件里，命令行开关仍然可用（优先级：CLI > 文件 > 默认值）。
 *
 * 文件格式：一行一个 key=value，# 开头为注释；未知 key 忽略（不报错，只计数）。
 *   provider=deepseek
 *   base_url=http://192.168.1.13:8790/v1
 *   model=deepseek-flash
 *   api_key_file=/data/local/tmp/t5_bridge/secret/deepseek_api_key
 *   temperature=0.7
 *   max_tokens=512
 *   context_enabled=1
 *   context_max_messages=12
 *   context_file=/data/local/tmp/t5_bridge/ai_worker/context.json
 *
 * ⚠ API Key **本身不写进这个文件**：这里只有 key 的**文件路径**。
 *   文件里出现 api_key= 也会被忽略（只认 api_key_file），避免把凭据写进普通配置。
 *
 * 安全性：wc_write_default() 用 tmp + fsync + 原子 rename 落盘，权限 0600。
 */
#ifndef T6B_WORKER_CONF_H
#define T6B_WORKER_CONF_H

#include "ai_worker.h"

#define WC_LINE_MAX  512
#define WC_FILE_MAX  8192

/* 读配置文件并覆盖 cfg 里对应的字段。
 *   0  = 已应用（*applied 为应用的 key 数，可为 NULL）
 *  -1  = 文件不可读（err 说明）——由调用方决定是致命还是忽略（默认路径缺失不致命）
 *  -2  = 参数非法（err 说明）
 */
int wc_load(t6b_config *cfg, const char *path, int *applied, char *err, size_t errlen);

/* 把当前生效配置写成文件（不含任何凭据：只写 key 的路径）。
 * 0 = 成功；-1 = 失败（err 说明）。 */
int wc_write(const t6b_config *cfg, const char *path, char *err, size_t errlen);

#endif /* T6B_WORKER_CONF_H */
