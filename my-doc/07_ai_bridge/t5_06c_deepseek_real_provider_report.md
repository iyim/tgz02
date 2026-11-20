# T5-06C 第一阶段：TG-Z02 真机接入真实模型（DeepSeek 协议 / OpenAI 兼容 Chat Completions）

- 基线提交：`15b8f6a0`（T5-06B P2-2 原子性修复）
- 本轮范围：**只接 DeepSeek 协议**，非流式 Chat Completions；保留 Mock Provider 作为默认与回归手段。
- 架构不变：Provider 抽象（`provider.h`）不动，只新增一个实现 `deepseek_provider.c`；
  `events.jsonl` 协议、消费语义（成功才提交 / 失败不推进 / 落盘失败即停 / 前缀指纹）一处未改。
- 本轮**未**改动 T5-05A/B/C、原厂 APK / native 库 / boot / system。
- 设备与本轮用到的端点：
  - 云端 `https://api.deepseek.com`（**真实 TLS**，用于验证证书校验与 401 路径）；
  - 本地 OpenAI 兼容网关 `http://192.168.1.13:8790/v1`（运营方提供，用于拿到**真实模型回答**）。

## 1. 结论摘要

| 项 | 结果 |
|---|---|
| libcurl 动态加载（真机） | `dlopen("libcurl.so")` 成功，版本 **`libcurl/7.52.0-DEV BoringSSL zlib/1.2.8`**；8 个符号全部 dlsym；选项自检（POST / SSL_VERIFYPEER=1 / SSL_VERIFYHOST=2 / NOSIGNAL / 超时 / POSTFIELDS / HTTPHEADER）全部被接受 |
| 真机 TLS 证书校验 | 对 `https://api.deepseek.com` 真实握手成功、返回 **HTTP 401**（占位 key），响应体 204 B 被解析成 `type=authentication_error`，耗时 128 ms，offset 未推进 → 证书校验是**开着**的（否则不会完成握手） |
| 真机真实模型回答 | 合成事件 → 本地网关 **HTTP 200**，`reply_bytes=87`，`resp_bytes=1068`，耗时 2293 ms；`offset` 提交到 308/308，`processed_total=1`；重启 `processed=0 / provider_ok=0 / calls=0`，`replies.jsonl` 不增长 |
| 真机真实 ASR 联调 | 原厂 ASR 新 final（frida `hooks=6 final=1 stored=1`，`ack status=stored`）→ 真实 `events.jsonl` 第 115 行 → worker → **HTTP 200**，`reply_bytes=78`（53 个汉字）、耗时 1744 ms → `offset` 35025 → **35330 = 文件末尾**，`processed=1 duplicates=0`；`core` PID 28413 不变、bridge 正常运行 |
| 联调中发现并修复的缺陷 | 网关把 JSON 写成 `"content": "…"`（冒号后有空格），旧解析器只认紧凑写法，导致 `content_not_string`；已修（定位后跳过空白）+ 3 组新用例 |
| ARM32 构建 | NDK r21e，`-O2 -Wall -Wextra`，**0 warning / 0 error**；`ai_worker` 133328 B `d87d7a18…`，`worker_unit_test` 232020 B `7dfd172b…`；均 `ELF32/ARM/DYN`，`NEEDED libc.so + libdl.so` |
| 主机单元测试 | **621 checks / 0 failed**（T5-06B 结束时 401；本轮新增 220 项） |
| 主机集成测试 | **32/32 PASS**（新增 i26–i30） |
| 真机 ARM32 单元测试 | **621 / 621 PASS**（设备上执行） |
| API Key 泄漏面 | 日志 / 状态 JSON / 状态文件 / 命令行 / URL / 证据文件里都没有 key；主机 i27 用逐字节 `grep` 校验，真机脚本只打印长度与权限位 |

> **四类证据必须分开看**（本报告不会把它们混为一谈）：
> 1. **Mock 测试** —— `test_provider_mock` / i1–i25（无网络）；
> 2. **主机模拟 HTTP** —— `test_ds_provider_stub`：注入桩传输层模拟 200/401/429/500/503/超时/DNS/证书/响应超长；
> 3. **真机真实 HTTPS（云端，TLS 校验）** —— `t5_06c_device_curl_load.log`：真实握手 + **HTTP 401**（无有效云端凭据）；
> 4. **真机真实模型回答** —— `t5_06c_device_real_api.log`、`t5_06c_device_asr_e2e.log`：**HTTP 200**，回答来自
>    本地 OpenAI 兼容网关（**明文 HTTP**，同一 Wi-Fi 内网），不是 DeepSeek 云端。

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
| `tests/worker_unit_test.c` | 新增 DeepSeek 组（220 项） |
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
- `model` 由 `--deepseek-model` 决定（默认 `deepseek-chat`；本轮真机用 `deepseek-flash`）。
- URL 拼接：去尾部 `/`，**已经带 `/chat/completions` 就不再追加**（单测覆盖 6 种写法）；
  真机上 `--deepseek-base-url http://192.168.1.13:8790/v1` → `…/v1/chat/completions`。
- `max_tokens` 固定 512（`T6B_DS_MAX_TOKENS_DEFAULT`），不暴露成命令行参数（避免扩大接口面）。

### 2.4 TLS / 传输

- **只 dlopen，不静态链接**：`dlopen("libcurl.so")`（失败再试 `/system/lib/libcurl.so`），
  8 个符号：`curl_easy_init/setopt/perform/getinfo/cleanup`、`curl_slist_append/free_all`、`curl_version`。
  缺任何一个 → 初始化失败（**不崩溃**，`t6b_ds_libcurl_init` 返回 -1）。
- **证书校验强制开启**：`CURLOPT_SSL_VERIFYPEER=1`、`CURLOPT_SSL_VERIFYHOST=2`，
  代码里没有关闭分支；`CURLOPT_FOLLOWLOCATION=0`（不跟随重定向）。
  真机对 `https://api.deepseek.com` 能完成握手并拿到 401，说明校验路径是真实生效的。
- `CURLOPT_NOSIGNAL=1` + `CONNECTTIMEOUT_MS` / `TIMEOUT_MS`（默认 5000 / 30000，均可配）。
- 响应体上限 **65536 B 固定缓冲**：写回调发现放不下立刻返回 0（curl 得 23），上报 `resp_too_long`，
  **绝不无限读、绝不静默截断**。
- 不使用 NDK 里不存在的 curl/OpenSSL 头：常量按 curl 7.52 `curl/curl.h` 手写并在注释里标出偏移
  （`CURLOPTTYPE_LONG/OBJECTPOINT/FUNCTIONPOINT + n`）；**运行时自检**——每个 `setopt` 的返回值都检查，
  选项常量与设备版本不符会得到 `48 CURLE_UNKNOWN_OPTION`，初始化直接失败。
- 明文 `http://` 允许但会打一条显式告警（本轮本地网关就是这种，见 §7 第 1 条）。

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
  空文件 / 超长（>255 B）/ 含不可打印字节一律报错；**报告实际权限位**（真机 `key_mode=0600`）。
- key 只存在 `t6b_ds.api_key`（`fini` 时 `memset` 清零）+ 一次调用期间的 Authorization 头栈缓冲
  （`perform` 返回后立即清零，`curl_slist` 由 curl 复制的副本随 `curl_slist_free_all` 释放）。
- 不进 URL / 命令行 / 日志 / 状态 JSON / 证据文件；主机 i27 对 work、state、stdout 逐字节 `grep` 校验。

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
  默认不生成该文件，状态 JSON / 日志里都不含回答正文（i30 验证）。

## 3. 真机联调发现并修复的缺陷（P1，本轮内修复）

**现象**：合成事件打本地网关时，HTTP 200 却连续 19 次报
`class=content_not_string  detail="content is not a string"`。

**根因**：网关的 JSON 带空格（`"content": "我是…"`、`"message": { … }`）。
`jseek()` 命中末段键后直接 `return 1`，**没有跳过 ':' 之后的空白**，于是
`t6b_ds_parse_content()` 看到的"值首字符"是空格而不是 `"` → 误判成"不是字符串"。

**修复**（`deepseek_provider.c`）：对象/数组两条分支在"路径走完"时先 `jws()` 再返回 1；
被找到的值游标**始终停在值的第一个字符**。`error.type` / `error.code` 读取同样受益。

**新用例**（3 组，避免回归）：

- `"content": "  你好  "` → 返回原文（含首尾空格）；
- 逐字节复刻真机响应形状（冒号后带空格 + `reasoning_content` + 浮点 `first_chunk_at`）→ 正确取出答案；
- 错误体带空格（`{ "error" : { "type" : … } }`）→ `type`/`code` 仍能取出。

修复后单元 **621/621**、集成 **32/32**，真机 200 一次通过。

## 4. 主机测试（Mock / 桩 HTTP，无网络）

原始输出：`evidence/t5_06c_host_test.log`、`evidence/host_unit_test.log`、
`evidence/host_integration_test.log`、`evidence/host_deepseek_provider.log`、
`evidence/host_provider_config.log`、`evidence/host_provider_default.log`。

单元（621 项，含 DeepSeek 组 220 项）：URL 拼接 8 种、请求体转义（引号/反斜杠/换行/Tab/中文原样/控制字节
`\u00XX`/非法 UTF-8/超长/缓冲不足）、响应解析（普通/转义/`\uXXXX`/代理对/未知键跳过/空 choices/缺
choices/缺 message/`content:null`/`content` 非字符串/空串/截断 JSON/非法转义/孤立代理项/超长回答/
**冒号后带空白**）、错误体 `type`+`code`、key 文件（CRLF/空/仅换行/含空格/超长/不存在/符号链接）、
桩传输层 200/401/429/500/503/超时/`curl=6,7,60`/响应超长/空体/坏 JSON/`content:null`/类型错/
请求构造失败时**根本不发请求**/`fini` 清 key，且每个失败用例都断言消息里**不含 key**；
状态隐私（写入观测字段、文件里不出现 `sk-`/`Bearer`/`Authorization`）。

集成（32 项）：

| 用例 | 结果 |
|---|---|
| i26 缺 key | `rc=4`、`provider init failed (deepseek)`、`offset=0`、状态 `provider=deepseek / provider_mock=0` |
| i27 有 key 但主机无 libcurl | `rc=4`、`curl unavailable`；**key 不出现在 stdout / work / state 任何文件** |
| i28 配置错误 | 非法 provider / `ftp://` / 空模型 / 超时倒挂 / 空 key 路径 → 全部 `rc=2` |
| i29 默认 provider | 仍是 mock（`provider_mock=1`、`model=""`、`last_http_status=0`） |
| i30 `--reply-log` | 2 条成功各一行、失败事件 0 行、状态文件不含回答正文 |

回归：i1–i25 全 PASS；100 轮 × 20 进程锁压测 `failed: 0`。

## 5. 真机 stage A：libcurl 加载 + TLS + 401（`evidence/t5_06c_device_curl_load.log`）

```
device: TG-Z02  armv7l  sdk=27  Android 8.1
/system/lib/libcurl.so 226080 B | libssl.so 193860 B | libcrypto.so 718488 B
host/device ai_worker sha256 = d87d7a18af0f3845db59b2cbc59ca45227848fa6fcc0649c5ce9fbaa0237da60
ARM32 unit test: checks passed: 621, failed: 0   abi: 32-bit long, ULONG_MAX=4294967295

provider ready: deepseek model=deepseek-chat url=https://api.deepseek.com/chat/completions key_mode=0600
libcurl: dlopen ok, version=libcurl/7.52.0-DEV BoringSSL zlib/1.2.8
```

1. 本地端口（`http://127.0.0.1:1/x`）：`class=curl_connect`、`curl=7`、`http=0`、`offset=0`
   → setopt 路径与错误映射正确，失败不推进偏移。
2. 真实端点（`https://api.deepseek.com`，占位 key）：`last_http_status=401`、`curl=0`、
   `latency=128 ms`、`resp_bytes=204`、`class=http_401`、
   `last_error="provider error: deepseek http 401 type=authentication_error"`、`offset=0`
   → **真实 TLS 握手 + 证书校验 + 请求发出 + 错误体解析**全部成立。

## 6. 真机 stage B：合成事件 → 真实模型 200（`evidence/t5_06c_device_real_api.log`）

端点：`http://192.168.1.13:8790/v1`（本地 OpenAI 兼容网关），模型 `deepseek-flash`，key 来自设备文件（0600）。

```
WARNING: deepseek base url uses plain http (no TLS): http://192.168.1.13:8790/v1/chat/completions
libcurl: dlopen ok, version=libcurl/7.52.0-DEV BoringSSL zlib/1.2.8
start … provider=deepseek offset=0 (network enabled)
deepseek ok: model=deepseek-flash http=200 curl=0 latency=2293ms resp_bytes=1068 reply_bytes=87 event=t5c-real-1
exit reason=max_events processed=1 duplicates=0 offset=308 state_saves=2
status : … "offset":308,"file_size":308,"prefix_hash":"76cedd9e34f2d00a","provider":"deepseek",
         "provider_mock":0,"model":"deepseek-flash","last_http_status":200,"last_curl_code":0,
         "last_provider_latency_ms":2293,"last_resp_bytes":1068,"last_error_class":"ok",
         "provider_ok":1,"provider_err":0,"events_processed":1
state  : {"version":2,…,"offset":308,"prefix_hash":"76cedd9e34f2d00a","processed_total":1,…
replies.jsonl: 1 行；答案 chars=188 cjk=25（正文只在设备上，不进证据）
重启：processed=0 provider_ok=0 calls=0 offset=308，replies 仍 1 行
RESULT: PASS
```

## 7. 真机 stage C：真实 ASR final → 真实模型回答（`evidence/t5_06c_device_asr_e2e.log`）

链路：host 播放 `s01.wav` → 设备麦克风 → 原厂 ASR → frida H1 hook → `tgb_bridge` → 真实 `events.jsonl`
→ T5-06C worker（`provider=deepseek`）→ 本地网关 → 真实回答 → 提交 offset。

```
core pid before : 28413（com.alibaba.ailabs.genie.smartapp:core）
seed（mock）    : 历史 114 条用 mock 消费完（零网络），offset=35025，只留新事件给真模型
focus           : com.alibaba.ailabs.genie.smartapp/…TransitionPageActivity
frida sender    : hooks=6 final=1 partial=5 stored=1 conn=true
                  ack {"event_id":"t5b-28413-1968921-g1","status":"stored","code":"ok","dup_count":0}
events.jsonl    : 114 → 115 行（bridge 追加；worker 只读，sha256 90372516…）
worker          : provider=deepseek offset=35025 (network enabled)
                  deepseek ok: model=deepseek-flash http=200 curl=0 latency=1744ms
                               resp_bytes=1274 reply_bytes=78 event=t5b-28413-1968921-g1
                  exit reason=max_events processed=1 duplicates=0 offset=35330
                  答案：chars=397 cjk=53（正文留在设备端，不进证据）
state           : offset=35330 = 文件末尾，prefix_hash=b23e54afcf296052
core pid after  : 28413（未变）；bridge running（pid 13926）；原厂 ASR/唤醒正常
RESULT: PASS (real ASR -> DeepSeek 200 -> offset committed, factory untouched)
```

即：**原厂识别出的中文被真实发送给了模型，并在设备上收到了真实回答**（78 字节、53 个汉字），
随后 offset 正常提交、重启不会重复调用。

## 8. 隐私 / 安全核对（本轮）

| 检查 | 结果 |
|---|---|
| key 是否出现在仓库/证据/日志/状态/命令行/URL | 否（脚本只打印文件大小与权限位；`grep` 过 `evidence/` 无 `sk-`/`Bearer`/`Authorization`） |
| 回答正文是否被提交 | 否（`--reply-log` 只在设备本地；证据里只有字节数与中文字数） |
| 用户 ASR 文本是否被提交 | 否（日志只含 `text_bytes` 与 `event_id`） |
| 原厂文件是否被改 | 否（`events.jsonl` 仅由 bridge 追加；未改 APK/native/boot/system） |
| 是否执行了模型输出 | 否（第一版不解析指令、不 shell、不调技能） |

## 9. 已知限制 / 权衡（如实记录）

1. **本轮 200 的端点是明文 HTTP 的本地网关**：`http://192.168.1.13:8790/v1` 在同一 Wi-Fi 内网，
   没有 TLS。代码允许 `http://` 但会打显式告警；生产环境应换成 `https://` 端点（云端 DeepSeek 路径
   已在 stage A 用真实 TLS 验证过）。两件事不要混为一谈：**TLS 校验是真的**（对 api.deepseek.com 生效），
   **本轮 200 没有走 TLS**（因为端点本身是 http）。
2. **模型名由网关决定**：请求里写 `deepseek-flash`，网关响应的 `model` 字段回 `auto`（它自己路由）。
   worker 侧只按配置名发请求、按响应取 `choices[0].message.content`，不解释网关的路由结果。
3. **网关响应带 `reasoning_content`**：我们只取 `content`（真实答案），不记录思考字段。
4. **`CURLOPT_NOSIGNAL=1` 与 DNS**：关信号后 libcurl 用自己的解析器；同步解析卡住时可能拖到总超时。
5. **总超时是"单次调用"上限**（默认 30 s），不是消费总时长；失败仍按既有退避重试。
6. **401/429 等永久错误不会自动跳过**：保持 at-least-once 语义，用户修 key → 重启 worker 继续；
   死信策略仍未定（T5-06B 遗留）。
7. **响应体 64 KB / 回答 1 KB 上限**：超限明确报错，不做截断。
8. **不做流式、不做历史上下文**：第一版非流式、system + 单句 user，先把真机跑通。
9. **`--reply-log` 会写明文回答**（设备本地 0600），默认关闭；TTS 阶段再显式打开。
10. **主机无法覆盖真实传输**：Windows 构建没有 POSIX dlopen，主机只测纯函数 + 桩传输层；
    真实 libcurl/TLS/模型回答的证据只在真机日志里。

## 10. 复现

```powershell
# 主机：T5-06C 打包（构建 + 单元 621 + 集成 i25–i30）
cd D:\tgz02\OS\system\my-doc\07_ai_bridge\tests
powershell -ExecutionPolicy Bypass -File .\run_t5_06c_host_tests.ps1

# 主机：完整回归（单元 621 + 集成 32 + 子集 + 100 轮锁压测）
powershell -ExecutionPolicy Bypass -File .\run_host_tests.ps1

# ARM32 构建
cd ..\android
powershell -ExecutionPolicy Bypass -File .\build.ps1 -LogName t5_06c_ndk_build.log

# 真机（key 放在 /data/local/tmp/t5_bridge/secret/deepseek_api_key，0600）
cd D:\tgz02\OS\_analysis\t506b
powershell -ExecutionPolicy Bypass -File .\n5_device_curl_load.ps1                      # libcurl + 621 项 + 真实 TLS 401
powershell -ExecutionPolicy Bypass -File .\n6_device_real_api.ps1 `
    -BaseUrl "http://192.168.1.13:8790/v1" -Model "deepseek-flash"                     # 合成事件 → 200
powershell -ExecutionPolicy Bypass -File .\n7_device_asr_e2e.ps1 `
    -BaseUrl "http://192.168.1.13:8790/v1" -Model "deepseek-flash"                     # 真实 ASR → 200
```

云端 DeepSeek 真实回答（需要 DeepSeek 官方 key）：把 `-BaseUrl` 换回 `https://api.deepseek.com`、
`-Model` 换回 `deepseek-chat`，key 换成官方 key，重跑 n6/n7 即可，脚本断言不用改。
