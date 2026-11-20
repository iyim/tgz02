# T5-06C 第一阶段：TG-Z02 真机接入真实 DeepSeek API

- 基线提交：`15b8f6a0`（T5-06B P2-2 原子性修复）
- 本轮范围：**只接 DeepSeek**，非流式 Chat Completions；保留 Mock Provider 作为默认与回归手段。
- 架构不变：Provider 抽象（`provider.h`）不动，只新增一个实现 `deepseek_provider.c`；
  `events.jsonl` 协议、消费语义（成功才提交 / 失败不推进 / 落盘失败即停 / 前缀指纹）一处未改。
- 本轮**未**改动 T5-05A/B/C、原厂 APK / native 库 / boot / system。

## 1. 结论摘要

| 项 | 结果 |
|---|---|
| libcurl 动态加载（真机） | `dlopen("libcurl.so")` 成功，版本 **`libcurl/7.52.0-DEV BoringSSL zlib/1.2.8`**；8 个符号全部 dlsym 到；选项自检（POST/SSL_VERIFYPEER=1/SSL_VERIFYHOST=2/NOSIGNAL/超时/POSTFIELDS/HTTPHEADER）全部被接受 |
| ARM32 构建 | NDK r21e，`-O2 -Wall -Wextra`，**0 warning / 0 error**；`ai_worker` 133328 B `cd898347…`，`worker_unit_test` 231604 B `4621dd6e…`；两者 `ELF32/ARM/DYN`，`NEEDED libc.so + libdl.so` |
| 主机单元测试 | **613 checks / 0 failed**（T5-06B 结束时 401；本轮新增 212 项 DeepSeek 用例） |
| 主机集成测试 | **32/32 PASS**（新增 i26–i30） |
| 真机 ARM32 单元测试 | **613 / 613 PASS**（设备上执行） |
| 真机真实 HTTPS | 合成事件 → `https://api.deepseek.com/chat/completions` → **HTTP 401**（占位 key），返回体 204 B 被正确解析成 `type=authentication_error`，耗时 199 ms；offset **未**推进 |
| 真机真实 ASR 联调 | 原厂 ASR 新 final（frida hook 命中 7 次 → 1 条 final，bridge `stored=1`）→ 真实 `events.jsonl` 第 113 行 → worker → 真实 HTTPS → **HTTP 401**，耗时 227 ms；`core` PID 28413 不变、bridge 正常 |
| **真实模型回答（HTTP 200）** | **尚未完成：设备上没有 API Key**。占位 key 只能证明"到鉴权为止"的整条链路；脚本已就绪（`-KeyFile`），放好 key 即可一次跑完 |
| API Key 泄漏面 | 日志 / 状态文件 / 状态 JSON / 命令行 / URL / 证据文件里都没有 key；主机集成 i27 用 `grep_tree` 逐字节校验过 |

> **必须区分的四类证据**：
> 1. **Mock 测试** —— `test_provider_mock` / i1–i25（无网络）；
> 2. **主机模拟 HTTP** —— `test_ds_provider_stub` 用注入的桩传输层模拟 200/401/429/500/503/超时/DNS/证书/响应超长（**不是**真实模型调用）；
> 3. **真机真实 HTTPS** —— `t5_06c_device_curl_load.log`、`t5_06c_device_asr_e2e.log`（真实 TLS、真实端点、**HTTP 401**，无有效凭据）；
> 4. **真机真实模型回答** —— **尚无**（缺 key）。本报告不会把前两项写成模型回答。

## 2. 实现

### 2.1 新增文件

| 文件 | 内容 |
|---|---|
| `android/deepseek_provider.h` | 配置（key 文件 / model / base url / 两个超时 / max_tokens）、容量上限、可注入传输层 `t6b_ds_xport`、`t6b_ds` 实例、纯函数声明 |
| `android/deepseek_provider.c` | 受限 JSON 读取器 + 请求体构造 + key 加载 + 响应解析 + 默认 libcurl 传输层 + Provider ops |
| `android/README.md` | 构建/运行/隐私边界/退出码 |
| `tests/run_t5_06c_host_tests.ps1` | T5-06C 主机测试打包（写 `evidence/t5_06c_host_test.log`） |

### 2.2 改动的文件

| 文件 | 改动 |
|---|---|
| `android/provider.h` | 注释更新（不再"只有 Mock"）；`T6B_P_TIMEOUT` 语义覆盖真实超时。接口字段**未**改 |
| `android/ai_worker.h` | `t6b_config` 增加 `provider_name` / `deepseek` / `reply_log`；定义 `T6B_PROVIDER_MOCK/DEEPSEEK` |
| `android/ai_worker.c` | Provider 选择（mock/deepseek）、6 个新命令行选项、配置校验、真实调用的观测日志与状态、`status_init_failure` 记录真实 provider、可选 `--reply-log`、退出摘要 |
| `android/worker_status.h/.c` | 新增 `provider_mock` / `model` / `last_http_status` / `last_curl_code` / `last_provider_latency_ms` / `last_resp_bytes` / `last_error_class` |
| `android/worker_util.h/.c` | 新增 `wu_open_append()`（0600，O_APPEND，不截断） |
| `android/build.ps1` | 增加 `deepseek_provider.c`；同时构建 `worker_unit_test`；`-LogName` 参数 |
| `android/run_ai_worker.sh` | 新增 `start-deepseek` / `key` 两个子命令；key 路径与模型可用环境变量覆盖 |
| `tests/worker_unit_test.c` | 新增 DeepSeek 组（212 项） |
| `tests/worker_integration_test.py` | 新增 i26–i30 |
| `tests/run_host_tests.ps1` | 构建列表加入 `deepseek_provider.c`；新增 3 个子集日志 |

### 2.3 请求

```json
POST {base_url}/chat/completions
Authorization: Bearer <key>      Content-Type: application/json     Expect:
{"model":"deepseek-chat",
 "messages":[{"role":"system","content":"<固定简短中文助手指令>"},
             {"role":"user","content":"<ASR final 文本>"}],
 "stream":false,"max_tokens":512}
```

- 非流式（`stream:false`），第一版**不拼历史上下文**。
- `model` 由 `--deepseek-model` 决定（默认 `deepseek-chat`，可换成 `deepseek-reasoner` 等）。
- URL 拼接：去尾部 `/`，**已经带 `/chat/completions` 就不再追加**（单测覆盖 6 种写法）。
- `max_tokens` 固定 512（`T6B_DS_MAX_TOKENS_DEFAULT`），没有暴露成命令行参数（避免扩大接口面）。

### 2.4 TLS / 传输

- **只 dlopen，不静态链接**：`dlopen("libcurl.so")`（失败再试 `/system/lib/libcurl.so`），
  8 个符号：`curl_easy_init/setopt/perform/getinfo/cleanup`、`curl_slist_append/free_all`、
  `curl_version`。缺任何一个 → 初始化失败（**不会崩溃**，由 `t6b_ds_libcurl_init` 返回 -1）。
- **证书校验强制开启**：`CURLOPT_SSL_VERIFYPEER=1`、`CURLOPT_SSL_VERIFYHOST=2`，
  代码里没有关闭分支；`CURLOPT_FOLLOWLOCATION=0`（不跟随重定向）。
- `CURLOPT_NOSIGNAL=1` + `CONNECTTIMEOUT_MS` / `TIMEOUT_MS`（默认 5000 / 30000，均可配）。
- 响应体上限 **65536 B 固定缓冲**：写回调发现放不下立刻返回 0（curl 得 23），上报 `resp_too_long`，
  **绝不无限读、绝不静默截断**。
- 不使用 NDK 里不存在的 curl/OpenSSL 头：常量按 curl 7.52 `curl/curl.h` 手写并在注释里标出偏移
  （`CURLOPTTYPE_LONG/OBJECTPOINT/FUNCTIONPOINT + n`）；**运行时自检**——每个 `setopt` 的返回值都检查，
  选项常量与设备版本不符会得到 `48 CURLE_UNKNOWN_OPTION`，初始化直接失败。

### 2.5 JSON

- **不用 strstr 猜**：`deepseek_provider.c` 里是一个受限的递归下降读取器（深度上限 32、不分配内存），
  支持对象/数组/字符串/数字/字面量，字符串解码完整支持 `\" \\ \/ \b \f \n \r \t`、
  `\uXXXX` 与代理对（`\uD83D\uDE00` → 4 字节 UTF-8）；裸控制字符、孤立代理项、非法转义一律拒收。
- 按路径定位 `choices/0/message/content`，并分层给出失败类别：
  `no_choices` / `no_message` / `no_content` / `content_null` / `content_not_string` /
  `empty_content` / `bad_json` / `reply_too_long` / `bad_utf8`。
- 回答上限与 `T6B_REPLY_TEXT_MAX`（1024）一致：**放不下就报 `reply_too_long`，不截断成看似完整的答案**。
- 错误响应只取 `error.type` / `error.code`（短字段），**不取也不记录上游 `message` 正文**（它可能回显请求内容）。

### 2.6 API Key

- 只从文件读：默认 `/data/local/tmp/t5_bridge/secret/deepseek_api_key`，可用 `--api-key-file` 覆盖。
- `open(O_RDONLY|O_NOFOLLOW)`：**拒绝符号链接**；`fstat` 要求是常规文件；只去尾部 CR/LF；
  空文件 / 超长（>255 B）/ 含不可打印字节一律报错；**报告实际权限位**（`key_mode=0600` 或明确告警 `NOT-0600`）。
- key 只存在 `t6b_ds.api_key`（`fini` 时 `memset` 清零）+ 一次调用期间的 Authorization 头栈缓冲
  （`perform` 返回后立即清零，`curl_slist` 由 curl 复制的副本随 `curl_slist_free_all` 释放）。
- 不进 URL / 命令行 / 日志 / 状态 JSON / 证据文件；主机集成 i27 对 work、state、stdout 逐字节 `grep` 校验。

### 2.7 Worker 接入（消费语义未变）

- `--provider mock|deepseek`；默认 `mock`（旧行为完全兼容，i29 验证）。
- 真实 Provider 初始化失败 → **退出码 4**，写 `state=error` / `exit_reason=provider_init_failed`，
  **绝不悄悄退回 mock**（i26）。
- 401/429/5xx/超时/连接失败都走既有 `provider_attempt` 路径：`offset` 不动、`recent_ids` 不动、
  成功计数不动、退避重试、超过 `--provider-retry-max` 只标 `provider_stuck` 继续重试。
- 日志与状态记录：`provider`、`model`、`http`、`curl`、`latency_ms`、`resp_bytes`、`reply_bytes`、
  错误类别、`event_id`、`offset`。
- 可选 `--reply-log PATH`：**默认关闭**。开启后每条成功回答追加一行
  `{"event_id","seq","provider","model","http","latency_ms","reply_bytes","mock","text_valid","text"}`，
  顺序是"先提交偏移（durable）→ 再写这一行"，崩溃最多丢一行回答、不会重复回答；
  空文件不存在于默认路径，`consumer_state.json` / 状态 JSON / 日志里都不含回答正文（i30 验证）。

## 3. 主机测试（Mock / 桩 HTTP，无网络）

原始输出：`evidence/t5_06c_host_test.log`、`evidence/host_unit_test.log`、
`evidence/host_integration_test.log`、`evidence/host_deepseek_provider.log`、
`evidence/host_provider_config.log`、`evidence/host_provider_default.log`。

单元（613 项，含 DeepSeek 组 212 项）：

- URL：无尾斜杠 / 有尾斜杠 / 多尾斜杠 / 已带后缀 / http+端口 / 空 / 无 scheme / ftp / 空格 / 换行 → 各 1 项断言。
- 请求体：引号、反斜杠、换行、Tab、中文 UTF-8（原样，不转 `\u`）、`\x01\x1f` → `\u0001\u001f`、
  模型覆盖、空模型 / 空文本 / 非法 UTF-8 / 超长（>511 B）/ 缓冲不足 → 全部报错，**不截断**。
- 响应解析：普通、转义、`\uXXXX`、代理对、未知键与嵌套跳过、空 choices、缺 choices、缺 message、
  `content:null`、`content: 123`、空字符串、截断 JSON、非法转义、孤立代理项、1500 B 超长回答。
- 错误体：`error.type` + 字符串 code、数字 code、缺失 → -1。
- key 文件：尾随 CRLF、空文件、仅换行、含空格、超长、不存在、**符号链接（POSIX）**。
- 桩传输层：200 正常；401/429/500/503（类别 `http_<code>`，消息含 `authentication_error`）；
  超时（`T6B_P_TIMEOUT` + `curl_timeout`）；`curl=6`→`curl_resolve`、`curl=60`→`curl_tls`、
  `curl=7`→`curl_connect`；响应超长；空体/坏 JSON/空 choices/`content:null`/类型错；
  请求构造失败时**根本不发请求**（`stub.calls==0`）；`fini` 后 key 全零。
  每个失败用例都断言：`message` / `last_error` **不含 key**。
- 状态隐私：`provider_mock=0`、`model`、`last_http_status`、`last_curl_code`、
  `last_provider_latency_ms`、`last_resp_bytes`、`last_error_class` 都写入；文件里不出现 `sk-` /
  `Bearer` / `Authorization`。
- 主机无 libcurl：`t6b_ds_libcurl_init()` 返回 -1 且给出 "not available"（Windows 构建没有 POSIX dlopen）。

集成（32 项，新增 5 项）：

| 用例 | 结果 |
|---|---|
| i26 缺 key | `rc=4`、`provider init failed (deepseek)`、`offset=0`、状态 `provider=deepseek / provider_mock=0 / exit_reason=provider_init_failed` |
| i27 有 key 但主机无 libcurl | `rc=4`、`curl unavailable`；**key 不出现在 stdout / work / state 任何文件** |
| i28 配置错误 | 非法 provider / `ftp://` / 空模型 / 超时倒挂 / 空 key 路径 → 全部 `rc=2` |
| i29 默认 provider | 仍是 mock（`provider_mock=1`、`model=""`、`last_http_status=0`），2 条事件正常消费 |
| i30 `--reply-log` | 2 条成功各一行、失败事件 0 行、状态文件不含回答正文 |

回归：i1–i25 全 PASS；100 轮 × 20 进程锁压测 `failed: 0`。

## 4. 真机：libcurl 加载与 ARM32 单元测试（`evidence/t5_06c_device_curl_load.log`）

```
device: TG-Z02  armv7l  sdk=27  Android 8.1
/system/lib/libcurl.so    226080 B
/system/lib/libssl.so     193860 B
/system/lib/libcrypto.so  718488 B
host ai_worker sha256  : cd8983473301823215b2725512af1618604a71766d076fd2ad97dff3f4954277
device ai_worker sha256: cd8983473301823215b2725512af1618604a71766d076fd2ad97dff3f4954277
ARM32 unit test: checks passed: 613, failed: 0   abi: 32-bit long, ULONG_MAX=4294967295

provider ready: deepseek model=deepseek-chat url=https://api.deepseek.com/chat/completions
                key_file=/data/local/tmp/t5d_deepseek/key/dummy key_mode=0600
libcurl: dlopen ok, version=libcurl/7.52.0-DEV BoringSSL zlib/1.2.8
```

两条用例（同一个 worker 二进制）：

1. **本地端口**（`--deepseek-base-url http://127.0.0.1:1/x`）：`class=curl_connect`、`curl=7`、
   `http=0`、`events_processed=0`、`offset=0` → 证明 setopt 路径与错误映射正确，且失败不推进偏移。
2. **真实端点**（`https://api.deepseek.com`，占位 key）：
   `last_http_status=401`、`last_curl_code=0`、`last_provider_latency_ms=199`、`last_resp_bytes=204`、
   `last_error_class=http_401`、`last_error="provider error: deepseek http 401 type=authentication_error"`、
   `offset=0`、`events_processed=0` → **真实 TLS 握手 + 证书校验 + 请求发出 + 错误体解析**全部成立。

## 5. 真机：真实 ASR final → 真实 HTTPS（`evidence/t5_06c_device_asr_e2e.log`）

链路：host 播放 `s01.wav` → 设备麦克风 → 原厂 ASR → frida H1 hook → `tgb_bridge` → 真实 `events.jsonl`
→ T5-06C worker（`provider=deepseek`）→ `https://api.deepseek.com`。

```
core pid before : 28413（原厂 com.alibaba.ailabs.genie.smartapp:core）
events.jsonl    : 111 行 / 34119 B / sha256 072ea606…（起点）
seed（mock）    : offset=34415，历史 111 条用 mock 消费完（零网络），只留新事件给真模型
frida sender    : hooks=7 final=1 partial=6 stored=1 ack_stored=1 conn=true
events.jsonl    : 111 → 113 行（bridge 追加，worker 只读）
worker          : provider=deepseek offset=34415 (network enabled)
                  deepseek failed: http=401 curl=0 class=http_401 latency=227ms
                                   event=t5b-28413-1968845-g1 (offset NOT advanced)
                  event id=… stuck after 2 attempts (deepseek http 401 type=authentication_error):
                        keeping it, waiting for a dead-letter policy; no event will be skipped
状态            : provider=deepseek provider_mock=0 model=deepseek-chat last_http_status=401
                  provider_ok=0 provider_err=6 provider_retries=6 stuck_attempts=6 provider_stuck=1
consumer_state  : offset=34415（仍是 seed 值）→ 失败事件没有被越过
core pid after  : 28413（未变）；bridge running；原厂 ASR/唤醒链路正常
```

**这不是模型回答**：401 表示鉴权失败，说明"真实 ASR 文本 + 真实 TLS + 真实端点"全部打通，
但**没有拿到任何模型输出**。缺的只有 API Key。

## 6. 待完成：真实模型回答（HTTP 200）

设备上没有 key（`/data/local/tmp/t5_bridge/secret/deepseek_api_key` 不存在，工作区内也没有），
所以 stage B（`t5_06c_device_real_api.log`）记录为 **SKIPPED**，stage C 记录为 **PARTIAL**。
脚本已就绪，放好 key 后两条命令即可补齐：

```powershell
# 放 key（设备上，0600）
adb shell "mkdir -p /data/local/tmp/t5_bridge/secret"
adb push <本机key文件> /data/local/tmp/t5_bridge/secret/deepseek_api_key
adb shell "chmod 600 /data/local/tmp/t5_bridge/secret/deepseek_api_key"

# 真实模型调用（合成事件：HTTP 200 + offset 提交 + 重启不重复调用）
cd D:\tgz02\OS\_analysis\t506b
powershell -ExecutionPolicy Bypass -File .\n6_device_real_api.ps1
# 真实 ASR 联调（原厂 ASR → 真模型回答 → offset 提交）
powershell -ExecutionPolicy Bypass -File .\n7_device_asr_e2e.ps1
```

两条脚本对 200 路径的断言已写好：`http=200`、`reply_bytes>0`、`offset==文件末尾`、
`processed_total` 增加、重启后 `events_processed=0 / provider_ok=0`（不重复调用）、
`replies.jsonl` 行数不增长。

## 7. 已知限制 / 权衡（如实记录）

1. **`CURLOPT_NOSIGNAL=1` 与 DNS**：关信号后 libcurl 用自带解析器；若系统解析器是同步实现，
   卡住的 DNS 查询可能拖到总超时之后才返回（`CONNECTTIMEOUT_MS` 通常已覆盖）。单线程 worker
   在这一点上没有额外保护，属已知限制。
2. **总超时是"单次调用"上限**（默认 30 s），不是消费总时长；事件失败仍按既有退避重试。
3. **401 是永久错误但不会自动跳过**：按任务书要求保持 at-least-once 语义，用户修 key → 重启 worker 继续。
   死信策略仍未定（T5-06B 遗留）。
4. **响应体 64 KB / 回答 1 KB 上限**：超限明确报错，不做截断；`deepseek-reasoner` 的长思考文本
   若超过 1 KB 会报 `reply_too_long`（可通过换模型或后续放宽 `T6B_REPLY_TEXT_MAX` 解决）。
5. **不做流式**：第一版非流式，语音播报需要完整句子，先跑通再评估 SSE。
6. **不做历史上下文**：只发 system + 单句 user，避免把记忆/多轮逻辑混进接入层。
7. **`--reply-log` 会写明文回答**（设备本地 0600 文件）。默认关闭；日志/状态/证据文件永远不含回答正文。
   TTS 阶段要读回答时再显式打开。
8. **主机无法覆盖真实传输**：Windows 构建没有 POSIX dlopen，主机只能测纯函数 + 桩传输层；
   真实 libcurl/TLS 的证据只在真机日志里，二者不可互相替代。

## 8. 复现

```powershell
# 主机：T5-06C 打包（构建 + 单元 613 + 集成 i25–i30）
cd D:\tgz02\OS\system\my-doc\07_ai_bridge\tests
powershell -ExecutionPolicy Bypass -File .\run_t5_06c_host_tests.ps1

# 主机：完整回归（单元 + 集成 32 + 子集 + 100 轮锁压测）
powershell -ExecutionPolicy Bypass -File .\run_host_tests.ps1

# ARM32 构建
cd ..\android
powershell -ExecutionPolicy Bypass -File .\build.ps1 -LogName t5_06c_ndk_build.log

# 真机
cd D:\tgz02\OS\_analysis\t506b
powershell -ExecutionPolicy Bypass -File .\n5_device_curl_load.ps1   # libcurl + ARM32 单元 + 真实 401
powershell -ExecutionPolicy Bypass -File .\n6_device_real_api.ps1     # 有 key 才有 200
powershell -ExecutionPolicy Bypass -File .\n7_device_asr_e2e.ps1      # 真实 ASR 联调
```
