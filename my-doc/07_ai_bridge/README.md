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
| [t5_06b_p1p2_fix_report.md](t5_06b_p1p2_fix_report.md) | **T5-06B P1/P2 修复报告**：内核锁、Provider 失败不消费、落盘失败即停、半行超长、删除重建身份检测 |
| [t5_06b_numeric_validation_fix_report.md](t5_06b_numeric_validation_fix_report.md) | **T5-06B P2 补充修复**：`event_reader` 数字字段窄化与范围校验（version/pid/text_bytes/text_chars/时间/seq）、文本诊断字段一致性、ARM32 与 LLP64 的 `ULONG_MAX` 差异、真机 284 项全过 |
| [t5_06b_p22_prefix_fingerprint_report.md](t5_06b_p22_prefix_fingerprint_report.md) | **T5-06B P2-2 补充修复**：events.jsonl 前缀指纹（`[0,offset)` 增量 FNV-1a）、状态版本 2、inode 复用下的换文件识别、指纹故障即停（退出码 6）、**指纹提交原子性**（中途失败不留半截指纹）、真机 inode 复用实证 |
| [t5_06c_deepseek_real_provider_report.md](t5_06c_deepseek_real_provider_report.md) | **T5-06C 第一阶段**：真机接入真实 DeepSeek（dlopen 系统 libcurl、TLS 强制校验、受限 JSON、key 只走文件）；真机已完成真实模型回答（HTTP 200）+ 真实 ASR 联调 |
| [t6_01_native_injector_report.md](t6_01_native_injector_report.md) … [t6_03_init_rc_report.md](t6_03_init_rc_report.md) | T6 系列：Native Injector / 线程安全补丁 / 常驻 Supervisor / init.rc 托管 |
| [t7_01_multi_turn_context_report.md](t7_01_multi_turn_context_report.md) | **T7-01：多轮对话与上下文管理**（独立 `conv_context` 模块、按轮次淘汰、原子落盘、损坏恢复、`worker.conf` 配置化、真机真实语音三连 + 重启恢复，主机 139 项 / 真机 103 项断言全过） |
| [t7_02_answer_gating_and_echo_report.md](t7_02_answer_gating_and_echo_report.md) | **T7-02：原厂回答屏蔽与 AI 播报隔离**（`libtg_ttsguard.so` 在 `TtsManager::playTts` / `onTtsStart` 两个补丁点按"来源"区分：Binder 线程发起 + sessionId 允许集放行我方回答，直接丢弃云端 Speak 驱动的原厂回答；唤醒提示音走 prompt 链不受影响；TTS 执行器新增 0644 `play.public.json`，Worker `echo_filter` 据此丢弃播报回声、保留播报期间用户插话；主机 41 项 / 真机 56 项断言全过） |
| [t7_03_voice_ux_report.md](t7_03_voice_ux_report.md) | **T7-02-R1 / T7-03：语音交互体验修复**（① 统一 system prompt 固定 `messages[0]`、不占上下文淘汰、可配置，真机 5 次真实请求 `system=1(603B)`、回答不再主动声明身份，主机 159/0；② ASR 提前结束根因 = `setVADPauseTime 700 ms` / `localASRPauseTime 150 ms`，`libtg_dialog.so` 按 `min_vad_pause_ms` 抬下限，实测 `700 -> 900 (config floor)`；③ 连续对话：原厂 `GenieApi::startTalk` 不建立会话，入口与下一步方案已定位；④ TTS 守卫改由 T6-02 Supervisor 的 `--so` 注入，5 s 空窗消失） |
| [t7_04_voice_ux_and_native_routing_report.md](t7_04_voice_ux_and_native_routing_report.md) | **T7-04：真人语音体验修复 + 本地指令优先路由**（① `intent_route` 规则表在 AI Bridge 侧识别音量/天气/关屏/开屏/时间/播放控制/打断播报（含"音量调到百分之十"这类中文数字，见报告 §11 修复），命中即 `route=native`：不请求模型 + 写 0644 放行标记让 TTS 守卫保留原厂回答，真机四条指令全部由原厂执行且 0 次模型请求；② `utterance_gate` 暂存门：450 ms 暂存、同 session 修订合并、悬空句跨 session 合并（真机 `merges=1 text_bytes=27`）、暂存槽落盘恢复；③ `conv_session` 会话状态机 IDLE/ACTIVE/PROCESSING/SPEAKING/WAIT_NEXT/CLOSED + 超时可配，免唤醒续听仍受原厂 `duplexDialogRenew=0` 服务端开关限制（证据与三条下一步路线已写明）；④ `libtg_ttsguard` 新增 `native_allow`，不再无条件屏蔽原厂回答，生命周期收敛到单一 Supervisor（`run_t7_04.sh`，`rollback` 一条命令回滚）；主机 211/0） |
| [tests/](tests) | T5-06B 主机单元测试 / 集成测试 / 一键运行脚本（含 `run_t5_06c_host_tests.ps1`） |
| [android/](android) | Worker 源码（`ai_worker.c` / `event_reader.c` / `provider.c` / `mock_provider.c` / `deepseek_provider.c` / …）+ `build.ps1`（NDK 动态链接）+ `run_ai_worker.sh` |
| [evidence/](evidence) | 真机探针原始输出、设备事实快照、NDK 检查、主机与真机测试日志 |

## T5-06B 一句话结论

`ai_worker` 已作为**独立动态链接进程**在 TG-Z02 上跑通：只读消费 `events.jsonl`、
原子持久化消费进度、严格校验 + event_id 去重 + seq 缺口三态判定（回退=桥接重启，不误判丢失）、
单实例锁 + 崩溃后续跑、Provider 抽象只落地 Mock（**零网络、零 key**）。
真机实测：历史 102 条一次消费完成（`gaps=0`、`seq_resets=11`、offset=文件大小）；
真实语音 2 条自动消费；`kill -9` 后接管陈旧锁并断点续跑；双实例被拒绝；
`tgb_bridge` 与 `smartapp:core` 全程无异常。详见 [t5_06b_worker_report.md](t5_06b_worker_report.md)。

P1/P2 修复后（`t5_06b_p1p2_fix_report.md`）：单实例改用内核 `flock`/`LockFileEx`（100 轮 × 20 进程
并发全过、`kill -9` 后立即可拿锁）；Provider 失败**不再消费事件**（退避重试、超限 stuck 但不跳过）；
消费进度落盘失败**立即停止消费**并以退出码 5 退出；半行超长只在见到换行符后才跳过；
文件删除重建按 `(dev,ino)` + `[0,offset)` 前缀指纹双重识别（inode 被复用时靠指纹；见 P2-2 报告）。
语义为 **at-least-once**，不承诺 exactly-once。

P2 补充修复（`t5_06b_numeric_validation_fix_report.md`）：解析层所有整数字段**先校验范围再窄化**
（`version` 只认精确 1；`pid` 限 32 位正数；`text_bytes`/`text_chars` 限 `0..511` 且必须与文本实测一致；
时间戳非负；`seq` 必须 `>0` 且不超过 `ULONG_MAX`）。ARM32 真机执行同一份单元测试 **284/284 通过**，
历史 111 条真实记录**零拒收**、`events.jsonl` 前后 sha256 不变。

P2-2 补充修复（`t5_06b_p22_prefix_fingerprint_report.md`）：文件身份不再只看 `(dev,ino)`，
而是给 `events.jsonl` 的 `[0,offset)` 维护**增量前缀指纹**（FNV-1a 64，随每条提交推进，
启动/换文件时重算核对）。真机已实证 Android ext4/f2fs **删除后立刻重建会复用同一个 inode**
（`45846:86205` → `45846:86205`）；指纹不符 → 偏移归零、清缓存、从新文件第一条重读（`recent_ids` 去重）；
截至旧偏移字节完全相同时**保留偏移继续读**（语义安全）；文件消失时保留旧 fd 让 inode 不被复用；
状态文件升到 version=2，**v1 旧状态没有指纹时安全回退重扫**并明确记录有界重复；
指纹核对/推进失败一律**停止消费**（退出码 6），不许退化成只比 inode。真机全部通过，
正常追加 4 次 `resets=0 / replacements=0 / truncations=0`。

P2-2 复审 P1（同一报告 §3.6 / §5.9）：指纹推进改成**原子提交**——`fold_range()` 只用局部
`next_hash` 累加，`[off,pending)` 的全部字节成功读完才写回正式 `r->prefix_hash`；
中途 seek/read 失败时指纹、偏移、pending **三者都不动**，退出时落盘的
`offset` 与 `prefix_hash` 永远是一对自洽值。主机单元 **401 项**、集成 **27 项**（新增 i25）、
真机 ARM32 单元 **401 项**全过；真机注入 `T6B_FAULT_PREFIX=fold_partial`（读完第一块 4096 B
之后失败）→ 退出码 6，落盘指纹与故障前**逐字节相同**，重启核对 `resets=0`、未提交的超长行重试成功。

T5-06C 第一阶段（`t5_06c_deepseek_real_provider_report.md`）：`provider=mock|deepseek` 可选，
**deepseek 是真实调用**——运行时 `dlopen("libcurl.so")`（设备 7.52.0-DEV）+ 选项自检，
`SSL_VERIFYPEER=1 / SSL_VERIFYHOST=2` 强制开启，`NOSIGNAL` + 连接/总超时，响应体 64 KB 固定上限，
自写受限 JSON 解析器（`\uXXXX`/代理对全支持，不用 strstr 猜），key 只从 0600 文件读（拒符号链接、
`fini` 清零、不进日志/状态/URL/命令行）。消费语义不变：成功才提交、失败不推进、落盘失败即停。
真机已完成：真实 ASR final → 真实模型 **HTTP 200**（回答 78 B / 53 个汉字）→ offset 提交到文件末尾，重启不重复调用；
云端 `api.deepseek.com` 路径已验证 **TLS 校验 + 401**（占位 key）。

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
