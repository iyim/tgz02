# T5-06A · D+E：安全、资源约束与 T5-05 遗留风险

本文只做**分析与约束登记**，不含实现。事实基础见
[inventory](t5_06a_native_bridge_inventory.md) 与 [environment](t5_06a_device_environment.md)。

---

## D. 安全与资源约束

| # | 约束 | 结论 | 当前证据 / 缺口 |
|---|---|---|---|
| **D1** | API Key 不能硬编码在 APK、Frida 脚本或 Git 仓库中 | **必须遵守；现状满足** | VERIFIED：全仓 `my-doc` 扫描 `sk-…`/`Authorization: Bearer <token>`/`api_key=…` 无真实凭据；host 环境也没有相关环境变量。当前代码里没有任何 HTTP 客户端，所以"还没到写 key 的地方"。下一阶段 key 只能从**运行期外部来源**进入（文件/环境变量/Keystore） |
| **D2** | 日志不能输出完整 API Key | **需要在适配层强制** | 现状 Bridge 只记录事件文本与计数（`tgb_server.c:293-295` 只打 `seq/session/bytes/chars`）；发送端只打 `event_id/frame_bytes`（`frida/t505b_asr_bridge_sender.js:573-575`）。**但**新 worker 一旦打印请求头就会泄露 → 规则：日志层对 `Authorization` 一律替换为 `Bearer ****<last4>`；异常里禁止 dump 请求头/完整 URL query |
| **D3** | 网络请求不能在 H1 Hook 回调中执行 | **现状满足，必须保持** | VERIFIED：Hook 体内只有 `args` 读取、`readCString`、`enqueueEvent`（`frida/t505b_asr_bridge_sender.js:262-297`），注释明确"禁止 socket/connect/send/recv/sleep/IO/日志轰炸"（`:261`）。任何模型调用都必须发生在**别的线程/进程** |
| **D4** | 网络阻塞不能影响原厂 `smartapp:core` | **必须用独立进程**（强建议） | 现状：发送端脚本运行在 core 内（Frida JS 线程）。若在这个线程里做阻塞 HTTP：会拖慢 tick（20 ms）→ ACK 超时/队列积压；更糟的是 TLS/curl 的崩溃会**直接带走原厂 core**（VERIFIED 语义：同进程崩溃=整进程死）。→ 结论：模型调用放**独立进程**，与 core 只通过文件/UDS 交互 |
| **D5** | 模型请求需要独立工作线程或独立进程 | **独立进程首选** | 理由同上 + 静态/动态链接差异（B8：静态进程不能 dlopen 系统 TLS）。独立进程还能让 worker 以 `shell`/root 身份单独重启，不影响语音链路 |
| **D6** | 必须设置请求超时、响应大小上限和异常恢复 | **必须在 worker 内实现** | 建议初值（待 ChatGPT 定）：连接 3–5 s、首字节 10–15 s、总 20–30 s；响应体上限 64 KB（非流式）/ 单事件 8 KB（流式）；失败策略：`401/400` 不重试，`429/5xx/网络` 指数退避 ≤3 次，连续失败 N 次进入熔断（冷却 60 s）。**当前代码没有任何网络路径**，所以这些全是新增要求 |
| **D7** | 不能让模型输出直接执行 shell 命令或 Android 操作 | **必须硬隔离** | 现状：链路只做 ASR→JSONL，没有任何"执行"入口（VERIFIED：全仓无 `system()/popen/exec`，`android/*.c` 里也没有）。风险在本机环境特别真实：设备上存在 `genie://` 深链与大量系统 intent（例：`AliTVASR: openApp: success url = genie://…musicplayer…`，见 T5-05C logcat 证据）。规则建议：模型输出只能是**文本**；任何动作必须经"白名单意图 + 严格结构化解析（JSON schema）+ 人工可审计日志"，绝不允许把模型字符串拼进 shell 或直接 `am start` |

### D 部分补充：数据面安全

- 事件文本会进 `events.jsonl`（明文，`/data/local/tmp`，uid `shell` 可读）→ 已经是现状；
  AI worker 读同一份文件，不引入新的暴露面。
- 上行给模型的内容 = ASR 文本（用户语音转写），属**个人数据**。建议（STATIC，待定）：
  只发"必要的最小上下文"；日志不落原文以外的推断；给用户侧留"关闭云端"开关（后续产品决策）。
- 传输安全：**只能走 HTTPS**，且必须校验证书（`SSL_VERIFYPEER=1/VERIFYHOST=2`，已在 B6 实测可用）。
  禁止 `CURLOPT_SSL_VERIFYPEER=0` 这类"先跑通再说"的写法。

---

## E. T5-05 遗留风险对 AI 接入的影响

### E1. 发送端内存队列：未 ACK 事件会丢 — **影响：AI 会漏掉个别话术**（VERIFIED，T5-05C C3）

- 事实：`Script.unload()` 后，当时 `pending_count=1` 的事件永久消失
  （`t5b-16112-1967850-g1` 在 JSONL 中 0 次出现，见
  `../06_t5_bridge/evidence/t505c/c3_loss_window.txt`）。
- 对 AI 层含义：**AI 只能看到"已落盘"的事件**——这反而是好事（不会读到半截事件），
  代价是"用户说了一句话但模型没回"。
- 建议：第一版**接受**该损失，但在 worker 侧记录"事件 seq 是否连续"（`events.jsonl` 的 `seq`
  是落盘序号，天然可检测空洞），把"漏事件"变成可观测指标，而不是静默。
  真正的零丢失要改 Sender 侧持久化（架构改动，本轮不做）。

### E2. 队列容量 32、满丢最老 — **影响：长断连 + 连续说话时会丢最早的话术**（VERIFIED，T5-05C C5）

- 事实：47 条 final → 队列封顶 32、`queue_overflow=15`（丢最老）。
- 对 AI 层含义：Bridge 恢复后，worker 会看到"缺了开头几句"的一段连续事件。
- 缓解（不改代码即可做）：worker 按 `seq` 连续性 + `received_at_ms` 间隔判断"中间缺了"，
  在日志/指标里记 `gap`；不要把这种缺口当作"用户没说话"。

### E3. generation map 容量 256 — **影响：极长会话下 event_id 可能回绕**（STATIC）

- 事实：`frida/t505b_asr_bridge_sender.js:46` `genMapCap: 256`，`sessionGeneration()`
  用 FIFO 淘汰（`:189-196`）。同一 `sessionId` 在 256 个不同会话之后再次出现 final 时，
  generation 会重新从 `g1` 开始 → `event_id` 与当年那条**完全相同**。
- 后果分析：
  - 若旧 `event_id` 仍在 Bridge 去重表（默认 8192 条）里 → 新事件被判 `duplicate` **丢弃**；
  - 若旧 id 已被去重表淘汰（>8192 条之后）→ 会被当作新事件**再次落盘**（JSONL 出现同 id 两行）。
- 概率：要求"同一 sessionId 在 256 个会话后重现"——工厂 sessionId 单调递增（T5-05B 实测
  14 次观测严格递增），实际概率极低（STATIC）。**AI 层要做的防御**：消费时按 `event_id`
  去重 + 按 `(pid, session_id, received_at_ms)` 三元组判重，别只信 event_id。

### E4. Hook 回调耗时尚未直接测量 — **影响：AI 层不能往 Hook 里加任何东西**（UNKNOWN 时长）

- 事实：T5-05C 只做了推断性证据（`hooks = partial + final` 恒等、队列满时工厂仍连续产出），
  没有给回调插桩测耗时。
- 对 AI 的含义：**Hook 是整条链路最脆的地方**。任何"顺手在 hook 里做点事"（比如先调模型
  再入队、先读配置、先 json 序列化大对象）都会放大这个未知量。
- 建议：下一阶段若要动 Hook，先补一个"只计数不落盘"的耗时直方图（µs 桶），
  用 `Partial`/`Final` 两个计数器分开统计；本阶段不改。

---

## 风险登记表（新增子系统）

| # | 风险 | 影响 | 等级 | 建议 |
|---|---|---|---|---|
| R1 | key 泄露（日志/仓库/崩溃转储） | 直接经济损失 + 账号风险 | **高** | D1/D2 规则；worker 启动时校验 key 来源，禁止命令行参数传递（会进 `ps` 命令行！） |
| R2 | 把 HTTP 放进 Bridge 循环或 core 进程 | 语音链路卡顿/一起崩 | **高** | 独立进程（D4/D5） |
| R3 | 依赖 ROM 私有 `libcurl.so`/`libssl.so` | 换 ROM/OTA 后失效；ABI 不承诺 | **中高** | 要么接受"只服务本机"，要么自带 mbedTLS；建议在 README 里写死设备指纹并做启动自检（dlopen 失败即降级为"不联网"） |
| R4 | 模型输出被当作指令执行 | 设备被远程操纵 | **高** | D7：只出文本 + 白名单 + schema 校验 |
| R5 | Bridge 去重表 FIFO 淘汰（8192） | 极老 id 可被重复落盘 | 低 | 消费端按 E3 的三元组去重 |
| R6 | 无流式时延预算（非流式等全文） | 语音回复慢 | 中 | 第一版非流式 + 短 `max_tokens`；后续再上 SSE |
| R7 | 令牌/上下文增长无上限 | 单次请求费用失控 | 中 | 上下文窗口裁剪（最近 N 轮 + 字符上限）+ 每日调用上限计数 |
| R8 | 设备时间/时区错误影响签名与缓存键 | 偶发失败 | 低 | worker 只依赖 `CLOCK_MONOTONIC` 做超时；缓存键不用墙钟 |

---

## E 部分结论

T5-05 的四个遗留项**不阻塞** AI 接入，但都必须在设计里显式承认：

1. **AI 层只消费"已 fsync 落盘"的事件**——这是当前架构最大的语义优势，不要为了"实时"去绕过它。
2. 丢事件（E1/E2）是**有界且有计数**的，worker 应把"缺口语"变成指标（`seq` 空洞、`queue_overflow`）。
3. `event_id` 不是全局唯一真理（E3），消费端要按三元组判重。
4. Hook 耗时未知（E4）→ 下一阶段任何"在 hook 里多做一点"的提议，先补测量再谈。
