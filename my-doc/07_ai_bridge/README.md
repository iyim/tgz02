# 07 · AI Bridge 接入（T5-06A 调查 + T5-06B 独立 Worker 框架）

本目录 T5-06A 只做**调查与记录**；T5-06B 只做**独立 Worker 框架**（Mock Provider，不联网）。
基线：`e6aa8110`（T5-05C 验收通过）。
调查对象：设备 TG-Z02（`AILABS_S1L`，MT8167S，armv7l，Android 8.1 / SDK 27，
vendor release 串 `6.1.8-RS-20221104.1459`，kernel `4.4.95+`）。

## 文档索引

| 文件 | 内容 |
|---|---|
| [t5_06a_native_bridge_inventory.md](t5_06a_native_bridge_inventory.md) | A：现有 T5-05A/B/C 代码盘点（进程/生命周期/存储/去重/ACK/接口/线程/构建），逐条给文件+行号 |
| [t5_06a_device_environment.md](t5_06a_device_environment.md) | B：设备运行环境（网络接口、TLS/HTTP/JSON 库、CA、NDK、ARM32 静态限制），含真机探针输出 |
| [t5_06a_model_api_compatibility.md](t5_06a_model_api_compatibility.md) | C：OpenAI / DeepSeek / 通义（百炼）/ 豆包（方舟）接口兼容性事实 |
| [t5_06a_risk_assessment.md](t5_06a_risk_assessment.md) | D+E：安全与资源约束、T5-05 遗留风险对 AI 接入的影响 |
| [t5_06b_worker_report.md](t5_06b_worker_report.md) | **T5-06B：独立 AI Worker 的实现与测试报告**（消费语义、Provider 抽象、主机 215+14 项测试、真机实测） |
| [android/](android) | T5-06B Worker 源码 + `build.ps1`（NDK 动态链接）+ `run_ai_worker.sh` |
| [tests/](tests) | T5-06B 主机单元测试 / 集成测试 / 一键运行脚本 |
| [evidence/](evidence) | 真机探针原始输出、设备事实快照、NDK 检查、主机与真机测试日志 |

## T5-06B 一句话结论

`ai_worker` 已作为**独立动态链接进程**在 TG-Z02 上跑通：只读消费 `events.jsonl`、
原子持久化消费进度、严格校验 + event_id 去重 + seq 缺口三态判定（回退=桥接重启，不误判丢失）、
单实例锁 + 崩溃后续跑、Provider 抽象只落地 Mock（**零网络、零 key**）。
真机实测：历史 102 条一次消费完成（`gaps=0`、`seq_resets=11`、offset=文件大小）；
真实语音 2 条自动消费；`kill -9` 后接管陈旧锁并断点续跑；双实例被拒绝；
`tgb_bridge` 与 `smartapp:core` 全程无异常。详见 [t5_06b_worker_report.md](t5_06b_worker_report.md)。

## 结论标记约定

- **VERIFIED**：有真机实测输出或可执行代码证据（给出文件/行号或证据文件）。
- **STATIC**：静态分析/公开文档支持，未在设备上动态验证。
- **UNKNOWN**：没有足够证据，不做假设。

## 一页结论（对应任务书「最终交付」的 8 个问题）

| # | 问题 | 结论 | 依据 |
|---|---|---|---|
| 1 | 当前 Native Bridge 如何向后续 AI 层提供 ASR 事件？ | **只通过文件与状态行**：`<work>/events.jsonl`（追加+fsync，一行一条，`seq` 单调）、`bridge_status.json`（默认 1 s 刷新）、stdout 的 `CONFIG/READY/STATS` 行。**没有任何 IPC/订阅/推送接口**；抽象 UDS 是"生产者进、ACK 出"的单向协议，不是事件总线 | VERIFIED：`android/tgb_server.c:231-297`（handle_event 只写文件+ACK）、`:483`（write_status）、`:701/707`（stdout）；`:550` 主循环里没有第二路输出 |
| 2 | 是否适合使用独立 AI Worker？ | **适合，且建议独立进程**。Bridge 是单线程 `select` + 循环内阻塞 `fsync`，把 HTTP/模型调用塞进同一进程会直接拖慢接收面；另外 T5-05A 产物是**全静态**二进制，静态进程**无法 dlopen** 系统 TLS/HTTP 库（真机实测），而独立 worker 可以编译成动态链接进程 | VERIFIED/STATIC：`tgb_server.c:550-608`（单线程阻塞模型）、`tgb_store.c:161`（fsync 在事件路径上）、`evidence/device_probe_static.txt`（静态 dlopen 失败） |
| 3 | 当前设备有哪些可用 TLS/HTTP 实现？ | ①**BoringSSL**：`/system/lib/libssl.so` + `libcrypto.so`，`SSL_CTX_new/SSL_new/SSL_connect/TLS_client_method` 可 dlopen 取到；②**libcurl 7.52.0-DEV (BoringSSL, zlib)**：`/system/lib/libcurl.so`，`curl_easy_*` 可 dlopen；③**OpenSSL 1.1.0i** 仅以 CLI 形式存在（`/system/bin/openssl`）；④`libjson-c` 可 dlopen；⑤SDK 自带 Java 侧 TLS（未在本轮验证） | VERIFIED：`evidence/device_probe.txt`、`evidence/device_facts.txt`、`evidence/device_curl_probe.txt` |
| 4 | 哪种方式最适合 Android 8.1 ARM32？ | **动态链接的 native worker + dlopen 系统 libcurl（BoringSSL/zlib）** 是最短路径：真机已验证静态编译的探针 **HTTP 200 / 17143 B**；CA 校验走 `/system/etc/security/cacerts`（135 张）。备选：自带 mbedTLS/静态 + 自写 HTTP（无外部依赖但工作量大、需自管 CA）。最终选型请 ChatGPT 定 | VERIFIED：`evidence/device_curl_probe.txt` |
| 5 | GPT、DeepSeek、通义能否共用一个请求适配层？ | **能**：三家都是 `POST {base}/chat/completions` + `Authorization: Bearer` + 同样的 `messages[{role,content}]`，返回 `choices[0].message.content`，流式都是 SSE `data: {...}` + `data: [DONE]`。差异只有 4 处：base_url、model 名、错误 JSON 形状、少量可选字段。**但 `api.openai.com` 在本机网络不可达**（TCP 超时），国内三家可达 | VERIFIED（网络/401 与错误体）+ STATIC（报文字段） |
| 6 | API Key 应如何安全保存？ | 三条都不进仓库/APK/Frida 脚本：①设备端 `0600` 文件（`/data/local/tmp/...`，root/shell 读）+ worker 启动时读取；②启动时用环境变量注入（进程环境，不落盘）；③若将来由 APK 侧发起，用 Android Keystore（**UNKNOWN**：本机未验证 app 侧方案）。日志一律脱敏（只留长度/后 4 位） | STATIC（方案）；VERIFIED（当前无任何凭据落盘/代码中） |
| 7 | 怎样保证模型调用不会阻塞原厂语音链路？ | 三条硬边界：①H1 Hook 只入队（现状，`frida/t505b_asr_bridge_sender.js:262-297`）；②网络请求只在**独立进程**里做，且与 Bridge 无共享锁/共享线程；③worker 自身带连接/总超时、响应体上限、失败退避与熔断，失败不重试到无限 | STATIC（设计约束）+ VERIFIED（Hook 现状） |
| 8 | 下一阶段需要新增哪些模块？ | ①`ai_worker`（独立动态链接进程：事件输入 + 调度）；②事件源适配（tail `events.jsonl` 或后续订阅口）；③Provider 适配层（HTTP+SSE+错误归一化）；④Key/配置管理；⑤上下文与提示词组装（含截断策略）；⑥输出安全闸门（禁止直接执行动作）；⑦观测（计数/日志/限速）。详见各文档末节 | STATIC（建议清单，待 ChatGPT 定架构） |

## 本轮明确**不做**的事

- 不改 T5-05A/B/C 任何生产代码（`git diff` 仅新增本目录）。
- 不引入真实 API Key；不调用任何付费接口；只做**无凭据**的连通性/401 探测（见 `evidence/device_http_probe.txt`）。
- 不引入外部硬件、不替换原厂 APK、不建分支、不 reset/force push。
- 不替 ChatGPT 决定最终架构；本文只给事实、候选与代价。
