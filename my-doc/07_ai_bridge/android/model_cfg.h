/*
 * model_cfg.h -- T9-08C: 多厂商大模型配置（一份 JSON 文件，App 写，worker 读）
 *
 * 存储位置：/data/data/com.tgz02.voice/files/models.json
 *   - 归 App 私有目录：App 自己读写，不需要任何额外权限协商，重装（同 uid）与重启后都在；
 *   - worker 是 root，可以直接读这个文件（DAC override），路径由 --models 指定；
 *   - 与对话数据（SessionStore 的 sessions/）完全分开。
 *
 * 为什么不加密、不脱敏：产品要求"配置可以完整查看、修改、明文保存"。所以 key 就是明文字段，
 * 本模块不做任何加解密、不做遮挡；只在日志里不打印它（日志里本来就没有 key 字段）。
 *
 * 字段（全部明文）：
 *   id          配置标识（App 生成）
 *   vendor      "doubao" | "qwen" | "openai"
 *   label       显示名（用户可改）
 *   base_url    API 地址（可空 = 用该厂商默认地址）
 *   api_key     明文 key
 *   model       模型名
 *   endpoint_id 豆包 Endpoint ID（豆包专用，可空 = 用 model）
 *   api_mode    千问："native" | "compat"（其他厂商忽略）
 *   extra       原样并入请求体的 JSON 对象文本（厂商原生扩展参数）
 *   max_tokens / temperature / timeout_ms / enabled
 *
 * 纯 POSIX + 无动态分配：同一份代码在设备上和主机测试里跑。
 */
#ifndef MODEL_CFG_H
#define MODEL_CFG_H

#include <stddef.h>

#define MC_MAX_MODELS   8
#define MC_ID_MAX       64
#define MC_KEY_MAX      256
#define MC_URL_MAX      320
#define MC_MODEL_MAX    96
#define MC_LABEL_MAX    64
#define MC_EXTRA_MAX    2048
#define MC_VENDOR_MAX   16
#define MC_MODE_MAX     12
#define MC_FILE_MAX     32768
#define MC_PATH_MAX     256
#define MC_ERR_MAX      128

#define MC_VENDOR_DOUBAO "doubao"
#define MC_VENDOR_QWEN   "qwen"
#define MC_VENDOR_OPENAI "openai"

#define MC_MODE_NATIVE   "native"
#define MC_MODE_COMPAT   "compat"

/* 该厂商的默认地址（用户留空时用）：
 *   豆包   火山方舟 v3 chat/completions
 *   千问   原生 DashScope 文本生成；兼容模式为 compatible-mode/v1
 *   通用   没有默认值，必须由用户填写 */
#define MC_DOUBAO_BASE_DEFAULT "https://ark.cn-beijing.volces.com/api/v3"
#define MC_QWEN_BASE_DEFAULT       "https://dashscope.aliyuncs.com/api/v1"
#define MC_QWEN_COMPAT_BASE_DEFAULT "https://dashscope.aliyuncs.com/compatible-mode/v1"

typedef struct {
    char   id[MC_ID_MAX];
    char   vendor[MC_VENDOR_MAX];
    char   label[MC_LABEL_MAX];
    char   base_url[MC_URL_MAX];
    char   api_key[MC_KEY_MAX];       /* 明文，产品要求 */
    char   model[MC_MODEL_MAX];
    char   endpoint_id[MC_MODEL_MAX];
    char   api_mode[MC_MODE_MAX];
    char   extra[MC_EXTRA_MAX];       /* 原样 JSON 对象文本，"" = 无扩展参数 */
    int    max_tokens;
    double temperature;
    int    timeout_ms;
    int    enabled;
} model_cfg;

typedef struct {
    int        loaded;                /* 1 = 文件已成功解析（可能一条配置都没有） */
    char       source[MC_PATH_MAX];
    char       default_id[MC_ID_MAX];
    int        count;
    model_cfg  items[MC_MAX_MODELS];
    long long  mtime_ms;              /* 热加载判据（mtime + size） */
    long long  size;
    char       error[MC_ERR_MAX];     /* 最近一次加载错误（成功时为空） */
} model_list;

void mc_defaults(model_cfg *c);

/* 解析整个文件；成功 0，失败 -1（err 说明，且 out->error 也写上） */
int  mc_parse_list(const char *buf, size_t len, model_list *out, char *err, size_t errlen);

/* 读文件 + 解析。0 = 成功；-1 = 读不到或解析失败（out->error 说明原因） */
int  mc_load(const char *path, model_list *out);

/* 文件变了就重新加载。1 = 重新加载过（内容可能相同），0 = 没变，-1 = 重新加载失败 */
int  mc_reload_if_changed(const char *path, model_list *lst);

/* 当前生效的配置：default_id 指向的已启用配置；否则第一条已启用的；都没有返回 NULL */
const model_cfg *mc_active(const model_list *lst);
const model_cfg *mc_find(const model_list *lst, const char *id);

/* http(s)://host... 形式；空返回 0（调用方按"用默认地址"处理） */
int  mc_valid_url(const char *u);
int  mc_valid_id(const char *id);

#endif /* MODEL_CFG_H */
