# T5-04 原厂云端 ASR 文字只读拦截验证报告

- 设备：TG-Z02 / `AILABS_S1L`（MT8167S，armv7，Android 8.1 / AliOS 6.1.8-RS-20221104.1459）
- 目标进程：`com.alibaba.ailabs.genie.smartapp:core`（PID 16112，全程未重启）
- 依据：T5-03 调查提交 `746cae8c`；本阶段只读，不接管、不改原厂任何文件
- 执行时间：2026-11-20 10:34–10:52（CST）
- 结论：**PASS** —— 8 个会话、8 条 final 中文文本全部只读取得；partial/final 由原厂 `isFinished` 字段区分；会话由原厂 `sessionId` 关联；原厂功能（唤醒/识别/NLU/TTS/音量）全程正常，Hook 关闭后同样正常。

---

## 0. 完成标准自检

| 任务书 §11 要求 | 结果 | 证据 |
|---|---|---|
| 1. 至少三条不同中文语句取到识别文字 | **满足**（实际 5 类 8 句） | `t504_session_summary.md`：音量大一点／现在几点了／今天天气怎么样／6.8 s 长句／用户长录音 |
| 2. 能区分中间与最终结果 | **满足**（原厂 `isFinished` 0/1，8/8 会话各 1 次 final） | §4、`t504_session_summary.md` |
| 3. 能建立文字与会话的关联 | **满足**（`sessionId` + 云端 `asrLogId`） | §2.4、`t504_test_*_hits.jsonl` |
| 4. Hook 不修改原厂业务数据 | **满足**（只读两个指针字段；不写内存/寄存器/返回值） | §5、脚本源码 |
| 5. 原厂语音助手功能正常 | **满足**（唤醒/NLU/TTS/音量均验证） | §6.4、`t504_logcat_a_extract.txt` |
| 6. 关闭 Hook 后原厂功能正常 | **满足**（E 组：唤醒 0.72～0.82，识别+TTS 正常，PID 不变） | §6.5 |
| 7. 可复核报告与日志 | **满足**（脚本 + 原始命中行 + logcat 抽取 + 延迟表） | §11 |

---

## 1. 环境与版本核对（含对 T5-03 的一处修正）

| 项 | 值 |
|---|---|
| `libsmartbox.so` SHA256（设备 = 仓库） | `f6e3c3543ff6da5b59bf60b884b6ce4332897c75aa6b89b8dccc0c266df80940` |
| `libagmmi.so` SHA256（设备 = 仓库） | `65062e2d95a6055d0786ef20c3201737b65975b6d16ad0ea8987746a23f05b78` |
| 运行期模块基址 | `libsmartbox.so base = 0x8e384000, size = 2064384` |
| frida | host 16.7.19 ↔ device `/data/local/tmp/fs32` 16.7.19 |

**修正 1（模块归属）**：T5-03 报告把 `GcsManager` / `ProtocolParser` / `SessionDispatch` 归到 `libagmmi.so`。设备实际加载情况是：`:core` 进程**没有**加载 `libagmmi.so`（`Process.enumerateModules()` 293 个模块中无此项），这些实现被**静态链接进 `libsmartbox.so`**（该 .so 内含 `agcore/interaction_manager/gcs/GcsManager.cpp`、`ProtocolParser.cpp` 等源路径字符串与同名导出符号）。因此本阶段所有 Hook 都在 `libsmartbox.so`。

**修正 2（链路方向）**：T5-03 §3.2 假定的方向是 `VadStateMachine::handleAsrResult → … → ProtocolParser`。实测相反：**云端响应先到 MMI 层**（TID 16421，websocket 收包线程）→ `SessionManager::onStream` → 之后才交给语音引擎线程（TID 16275）`CloudASRManager::handleCloudASRResult` → `AGVadStateMachine::handleAsrResult`，由引擎拿去做端点（EOU）判断。证据见 §2.2。

**每次加载都校验偏移**（base+offset 与静态分析值比对，任一不符则拒绝 Hook）：

| Hook | 函数 | 偏移 | 校验 |
|---|---|---|---|
| H1 | `AliAiLabs::AGUI::SessionManager::onStream(int,char const*,u_char,u_char,u_char)` | `0x11353c` | match |
| H2 | `AliAiLabs::AGUI::PerformanceData::setTextTime(int,char const*,long long,u_char)` | `0x137dbc` | match |
| H3 | `AGVadStateMachine::handleAsrResult(std::string const&)` | `0xde9e4` | match |
| H4 | `CloudASRManager::handleCloudASRResult(char const*, std::string const&)` | `0xd9e30` | match |

---

## 2. 静态分析：识别文字处理链（逐项回答任务书 §4.1）

### 2.1 完整链（模块均为 `libsmartbox.so`）

```
[websocket 收包线程 TID 16421]
  Websocket-gateway::onReceive                     （收到 AliGenie.Text/ListenResult JSON）
    → AliAiLabs::AGUI::ProtocolParser::onParser(int, json_object*)   0x07dea0  ← outputText 在此被解析
    → AliAiLabs::AGUI::SessionManager::onStream(int sid, char const* text,
                                                u_char isFinished, u_char isOffline, u_char needNlp)
                                                                     0x11353c  ← 【H1】完整可读中文 + final 标志
        · 原厂自身日志：SessionManager.cpp:onStream:641
          "sessionId = %d, text = %s, isFinished = %d, isOffline = %d, needNlp = %d, noDisplay = %d"
    → AliAiLabs::AGUI::PerformanceData::setTextTime(int sid, char const* text, long long t, u_char)
                                                                     0x137dbc  ← 【H2】145 行="asr first text"，149 行="asrResult last text"
    → AliAiLabs::AGUI::SessionDispatch::onStream(int sid, char const* text, u_char isFinished)  0x0631e0
        · 日志 SessionDispatch.cpp:onStream:206，text 已是**去掉唤醒词**的 clean 文本
    → NativeUIManager::onStreaming / GenieAssistantUIManager.onStreaming（Java 侧上屏）

[语音引擎线程 TID 16275]
  CloudASRManager::handleCloudASRResult(char const* asrLogId, std::string const& text)   0xd9e30  ← 【H4】
    → EOUDetector::handleCloudASRResult(std::string const&)
    → AGVadStateMachine::handleAsrResult(std::string const&)                              0xde9e4  ← 【H3】
        · 日志 VadStateMachine.cpp:handleAsrResult:346  "dirty=%s,clean=%s"
        · 日志 VadStateMachine.cpp:handleAsrResult:127  "asr result is valid when silence,end when %d"
```

线程归属（实测 281 次命中全部分布如下）：

| Hook | 线程 | 命中数 | 说明 |
|---|---|---|---|
| H1 / H2 | 16421（websocket 收包线程） | 73 / 73 | MMI 层，带 `isFinished`（H1） |
| H3 / H4 | 16275（语音引擎线程） | 62 / 73 | 引擎层，无 final 标志 |

### 2.2 逐项回答

| 问题 | 结论（含证据） |
|---|---|
| 哪个函数收到云端返回的数据？ | `ProtocolParser::onParser`（解析 JSON）后由 `SessionManager::onStream` 拿到 `outputText`；引擎侧同时经 `CloudASRManager::handleCloudASRResult` 拿到同一文本（H4 的 `asrLogId` 与网关响应里的 `asrLogId` 同值） |
| `outputText` 在哪解析？ | `ProtocolParser::onParser`（`libsmartbox` 0x07dea0，内含 `AliGenie.Text`/`ListenResult`/`outputText` 字符串与 `json_object` 读取） |
| 哪个函数第一次拿到完整可读中文？ | **H1 `SessionManager::onStream`**：UTF-8 `char const*`，与上屏文本一字不差（见 §6.1） |
| 哪个函数接收部分结果？ | 同一个 H1，`isFinished=0`（每会话 5～21 条） |
| 哪个函数接收最终结果？ | 同一个 H1，`isFinished=1`（每会话恰好 1 条，8/8） |
| 是否存在清洗/过滤/替换/截断？ | 有，但不在 H1：`SessionDispatch::onStream` 记录的是去掉唤醒词的 clean 文本（同一时刻日志 `text = 现在进行` vs H1 的 `天猫精灵现在进行`）；`AGVadStateMachine` 内部区分 `dirty/clean`。H1 拿到的是**服务器原样文本**。未见长度截断（26 字长句完整） |
| 最终结果是否传递给原厂 NLU？ | 是，但不在本阶段证明范围内：同一会话随后的 `AliGenie.Speaker/Speak`（TTS 文本）+ `AliGenie.Screen/Render` 卡片即 NLU 产物；未 Hook `NlpResult` 做逐字段比对（见 §9 遗留） |
| Session ID / 请求 ID 在哪生成、怎么传？ | `sessionId`（int，如 1967218/1970162）由 `SessionManager` 分配，贯穿 H1/H2/Ws 请求；每次 ASR 请求另有 `asrLogId`（32 hex，如 H4 的 `asr_log_id`，与网关 `ListenResult.asrLogId` 一致） |
| 是否存在多个结果回调造成重复识别？ | **H1 无重复**：8 个会话各 1 次 final（`t504_session_summary.md`）。引擎侧 H4 在本会话 final 之后仍有 1 次投递（9 次 `post_final`），早期验证版 `AGSpeechEngine::handleListenResult` 也曾对同一 final 触发 2 次 —— 这些是**引擎内部再投递**，不是 UI 层重复识别 |

### 2.3 中间/最终结果的权威判据

`SessionManager::onStream` 的第 3 个参数 `isFinished`（ARM r3）在 73 次命中中只有 0/1 两种取值：

```
is_finished = 0 → 65 次（partial）
is_finished = 1 →  8 次（每个会话恰好 1 次，final）
```

对照原厂自身日志可交叉验证：`isFinished = 1` 的那一条与 `PerformanceData.cpp:setTextTime:149 "asr-asrResult last text = …"` 严格同刻；`isFinished = 0` 的首条与 `setTextTime:145 "asr first text = …"` 同刻。**结论：不需要自造启发式，直接用 `isFinished`。**

特别注意：**final 不一定等于最后一个 partial**（8 个会话中有 3 个不同）：

| sessionId | 最后一个 partial | final |
|---|---|---|
| 1967222 | 天猫精灵今天天气怎么样 | 天猫精今天天气怎么样 |
| 1967232 | 天猫精灵今天天气怎么样 | 天猫精今天天气怎么样 |
| 1967236 | 天猫精灵音量大一点 | 天猫精音量大一点 |

因此任何"取最后一条文本"的实现都会引入错误，必须以 `isFinished=1` 为准。

### 2.4 数据结构的实测确认

- H1/H2 的文本是 **NUL 结尾的 UTF-8 `char const*`**（中文 3 字节/字；JS 字符串长度按字符计，如"天猫精灵"=4）。
- H3/H4 的文本是 **`std::__ndk1::basic_string` 引用**，本机布局（用原始字节 dump 判定，并与 `AGSpeechEngine::onListenResult` 反汇编一致）：

```
(byte0 & 1) == 0 : short，len = byte0>>1，data = p+1
(byte0 & 1) == 1 : long ，cap = u32[p]，len = u32[p+4]，data = u32[p+8]
```

实测样本（同一文本两种表示）：

```
short: 12 e5 a4 a9 e7 8c ab e7 b2 be 00 …        → len 9 字节，"天猫精灵"
long : 21 00 00 00 12 00 00 00 e0 6c f7 89       → cap=0x21, len=18, data=0x89f76ce0，"天猫精灵…"
```

- H4 的第一个参数是 `char const* asrLogId`（如 `f8a763e6…`，32 hex）。

---

## 3. 只读探针设计

脚本：[`evidence_t504/t504_asr_text_probe.js`](<system/my-doc/06_t5/evidence_t504/t504_asr_text_probe.js>)（宿主运行器 `t504_host_runner.py`）

| 约束（任务书 §5.1） | 实现 |
|---|---|
| 只 Hook 已确认的函数 | 4 个点全部先做 `findExportByName` + base+offset 比对，`offset_match=false` 直接不 attach |
| 只读 | 只 `readU8/readU32/readPointer/readUtf8String`；无 `write*`、无 `Interceptor.replace`、无 `retval` 赋值 |
| 不调用原厂函数 | 无 `NativeFunction` / `new NativeCallback` 调用 |
| 不阻断回调 | `Interceptor.attach` 的 `onEnter` 内不做任何控制流改动 |
| 不发起网络请求 | 无 `Socket` / `send` 网络 API（`send()` 仅向宿主回传日志） |
| 不改文件/配置 | 只读内存；不写任何路径 |
| 记录 Hook 成功/失败/模块 | 每次加载先发 `module`、`hook`（含 addr/offset/match）、`hook_error` |
| UTF-8 中文 | `readUtf8String`，长度上限 512 字符 |
| 区分 partial/final | H1 用 `isFinished`；其余 Hook 只打顺序标签（脚本头部已注明） |

日志字段（每条 `t:"asr"`）：`ts, pid, tid, fn, module, offset, hook, seq, session_id, text, text_length, result_type, is_finished, is_offline, need_nlp`（H4 另有 `asr_log_id`）。**不记录** Token / Cookie / 账号 / 鉴权凭证 / 网关 URL 参数；`asrLogId`、`logId`、`uuid`、`digest` 在入库证据中统一替换为 `<redacted>` / `<id>`。

---

## 4. 只读关系与"不修改业务数据"的自证

1. 探针不含任何写操作（脚本可逐行核对，全部是 `read*`）。
2. 原厂同一函数在同一时刻自身也会打印同样的文本与标志（`SessionManager.cpp:onStream:641`），探针数值与原厂日志逐条一致 → 只读没有改变参数。
3. Hook 前后原厂业务结果不变：同一会话的 final 文本、TTS 文本、音量变化均与原厂行为一致（§6.4）。
4. 三个实验共 281 次命中，`read_errors=0`、`hook_errors=0`。

---

## 5. 真机测试结果

测试音源：电脑播放用户既有录音（`audio/`），另用本机 SAPI（Microsoft Huihui，zh-CN）合成两句测试语句作为**测试激励**（仅 PC 侧播放，不进入任何产品链路）。
播放编排与打点：[`t504_test_*_play_log.txt`](<system/my-doc/06_t5/evidence_t504>)。

### 5.1 测试 A：单句中文（Hook ON）

| # | 说/播放内容 | sessionId | partial 数 | final 文本 | 唤醒→首个 partial | 唤醒→final | 唤醒→TTS |
|---|---|---|---|---|---|---|---|
| A1 | 音量大一点 | 1970162 | 7 | 天猫精灵音量大一点 | 435 ms | 5154 ms | 5395 ms |
| A2 | 现在几点了 | 1967218 | 5 | 天猫精灵现在几点了 | 343 ms | 5664 ms | 5930 ms |
| A3 | 今天天气怎么样 | 1967222 | 8 | 天猫精今天天气怎么样 | 293 ms | 5783 ms | 6191 ms |

三段 partial 序列示例（A2）：`天 → 天猫 → 天猫精灵 → 天猫精灵现在 → 天猫精灵现在几点 → 天猫精灵现在几点了(isFinished=1)`。

### 5.2 测试 B：连续语音（Hook ON，三句连发）

| sessionId | partial | final | 结论 |
|---|---|---|---|
| 1967228 | 6 | 天猫精灵现在几点了 | 独立会话 |
| 1967232 | 7 | 天猫精今天天气怎么样 | 独立会话 |
| 1967236 | 6 | 天猫精音量大一点 | 独立会话 |

- 每句独立 `sessionId`，无跨会话串扰；文本顺序与播放顺序一致；
- 每会话 1 个 final，无重复 final；
- 三个会话 TTS 各 1 次（`onTtsStart:141` 计数 3），无重复播报。

> 说明：原厂默认单轮会话，一句说完即端点关闭（见 5.3），因此"连续说三句"在本机表现为"三次独立会话"，而不是一个长会话；这是原厂行为，不是 Hook 造成。

### 5.3 测试 C：较长中文语句

| 用例 | 音频 | 结果 |
|---|---|---|
| C1 用户既有长录音 | `现在进行第一轮语音测试，请保持环境安静.wav`（5.52 s） | **被端点切分**：final = `天猫精灵现在进行`（session 1967250）。日志显示本地 `VadStateMachine: asr result is valid when silence,end when 4140` → `AGSpeechEngine::stopListenInternal` 在说完"现在进行"后 1.3 s 处关闭会话；该录音短时 RMS 最低约 20% 峰值（无 ≥0.3 s 真静音），触发原因未能唯一确定（§9） |
| C2 连续长句（6.8 s，无内部标点） | SAPI 合成"请把客厅的灯打开然后把卧室的空调调到二十六度" | **完整**：21 条 partial + 1 final = `天猫精灵请把客厅的灯打开然后把卧室的空调调到二十六度`（26 字，无乱码、无截断）|

结论：链路本身**没有长度上限导致的截断**；C1 的截断来自本地端点判定（原厂既有行为，Hook 与之无关——同一时刻原厂自身日志也把该 final 记为最后文本）。

### 5.4 测试 D：原厂功能共存（Hook 启用期间）

| 检查项 | 结果 | 证据 |
|---|---|---|
| 语音助手正常响应 | 8/8 会话完成识别；7/8 触发 NLU+TTS（1967250 的文本"天猫精灵现在进行"不是指令，原厂未播报，属正常） | `t504_logcat_*_extract.txt` |
| 原厂音量控制 | `音量大一点` → TTS"这就为您调整音量，现在是47"，系统音量 37 → 47 | `SetVolumeIndex=47`、`volume_level_ is 47` |
| 原厂联网问答 | 时间/天气均返回云端结果并播报 | `onTtsStart:141 sessionId=…` |
| 原厂 TTS 正常 | 每会话 1 次 `onTtsStart`，无重复播报 | A/B 各 3 次、C2 1 次 |
| core 进程未重启 | PID 16112 全程不变（A/BC/C2/E 四轮） | `t504_device_env.txt` |
| 崩溃/ANR | 0 次 FATAL / 0 次 ANR | logcat 全量过滤 |

### 5.5 测试 E：关闭 Hook 对照

- 探针 detach 后播放 `唤醒词 + 现在几点了`：唤醒 0.72～0.82、会话 1967259、final `天猫精灵现在几点了`、TTS 正常；
- 未产生任何探针输出；PID 前后均为 16112；
- Hook 未写入任何自启动配置（frida-server 仅本次手动启动，探针随会话 detach 消失）。

---

## 6. 性能影响

| 指标 | Hook ON（8 会话） | Hook OFF（E） | T5-03 无 Hook 基线 |
|---|---|---|---|
| 唤醒→首个 partial | min 293 / max 511 / 均值 374 ms | 389 ms | 309 ms（C1）/ 355 ms（A3） |
| 唤醒→final | 4.5–5.8 s（短句）、9.8 s（6.8 s 长句） | 5.6 s | 5.7 s |
| 每会话回调数 | 6–9（短句）/ 22（长句） | 8 | — |
| 读失败次数 | 0 / 281 次命中 | — | — |
| Hook 失败次数 | 0 | — | — |
| 进程重启 | 0 | 0 | 0 |

判定：**无可见性能影响**。理由：H1 只在 MMI 收包线程上读两个字段（`char*` + 一个字节），H3/H4 读一个 `std::string`，单次开销在微秒级；观测到的 293–511 ms 波动与 Hook OFF 的 389 ms、以及上一轮无 Hook 的 309–355 ms 落在同一区间，差异主要由音频内容与唤醒锚点抖动（同一次唤醒爆发本身约 90 ms）决定，不能归因于 Hook。

---

## 7. 尚未确认 / 遗留问题

1. **H2 `setTextTime` 第 4 参（isLast）在 ARM32 下的落位未定**：`long long` 占 r2/r3，第 4 参应在栈上，但实测 `sp[0]` 是单调递增的时间值而非 0/1。因此 H2 只作旁证；final 判定一律用 H1。
2. **引擎侧再投递规则未确认**：H3 命中 62 次 < H1 的 73 次（引擎侧应合并/丢弃了部分中间结果），H4 在 final 之后另有 9 次投递。规则需要看 `EOUDetector`/`AGVadStateMachine` 内部才能定论；本阶段不改原厂逻辑，不做推断。
3. **C1 长录音被提前端点**的真实触发条件未唯一确定：本地 VAD 在 1.3 s 处判"说完"（`end when 4140`），但录音中无 ≥0.3 s 真静音。可能是麦克风/回放声学的短时能量跌落，需专用激励实验才能定论。
4. **cancel / error 两类结果未观测到**：本批测试全部正常结束，没有打断/识别失败样本，故 `result_type` 中 `cancel`/`error` 没有真机数据（脚本预留了 `empty`/`error` 分支）。
5. **`isOffline` / `needNlp` 恒为 0**：与 T5-03 一致（本地 ASR 未启用、无离线语义），因此无法用本机验证 offline 分支。
6. **文字→NLU 的逐字段传递未 Hook**：只通过 TTS/卡片间接证明 NLU 已被执行，未 Hook `NlpResult` 做 text→domain/intent 的字段级比对。
7. **会话号不单调**（1967218 … 1970162 之间跳变）：生成规则未确认（可能与内部计数器/进程内重置有关），但同一会话内一致、可作关联键。
8. **多轮/连续对话**：原厂默认一句一会话，未测试"连续对话"开关打开时的会话复用行为（本轮不允许改原厂配置）。

---

## 8. 后续接入自有 AI 的可行性（只陈述事实与约束，不做选型）

- **可用的只读接入点**：`SessionManager::onStream`（H1）在**云端文本到达的第一时间**给出 `(sessionId, UTF-8 文本, isFinished)`，位置在 NLU 结果之前（同会话 TTS 文本在其后约 240–410 ms 到达，实测 241 / 266 / 408 ms）。因此"拿到识别文字"这件事在时延上不是瓶颈：唤醒后 293–511 ms 即可得首个 partial，final 与云端判定同步。
- **语义完整性**：H1 的文本是服务器原样输出（含唤醒词）；去唤醒词的 clean 文本在 `SessionDispatch::onStream`。若下游需要"纯指令文本"，可直接用 same-session 的 clean 版本，无需自己剥离。
- **不影响原厂的可行性**：本阶段证明"只读旁路"可行（0 崩溃、0 重复播报、时延无退化）。但"接管"（拦截/替换 TTS 或 NLU）属于**未验证**范围：需要在 `TtsManager`/`SessionDispatch` 层做可写干预，风险与本阶段完全不同，任务书亦明令禁止。
- **数据合规边界**：探针只应记录测试语句；本次所有证据仅含测试者提供的语句与合成语句，未采集他人语音；`asrLogId`/`logId`/`uuid` 已脱敏。
- **不可依赖的旁路**：原厂 logcat 本身也会打印识别文本（`SessionManager.cpp:onStream:641`），但那是调试日志，随版本可能消失/改格式，且需要常驻 logcat 抓取；只适合作旁证，不建议作为产品接口。

---

## 9. 证据索引（`my-doc/06_t5/evidence_t504/`）

| 文件 | 内容 |
|---|---|
| `t504_asr_text_probe.js` | 交付脚本（4 个只读 Hook + 偏移校验 + 分类 + 统计 RPC） |
| `t504_host_runner.py` | 宿主运行器（attach / 落盘 jsonl / 定时 detach） |
| `t504_latency.py`、`t504_latency_table.md` | 从 logcat 计算的逐会话延迟表 |
| `t504_session_summary.md` | 逐会话 partial/final 汇总 + 各 Hook 命中统计 |
| `t504_test_a_hits.jsonl` | 测试 A 原始命中（95 行，已脱敏） |
| `t504_test_bc_hits.jsonl` | 测试 B/C 原始命中（113 行） |
| `t504_test_c2_hits.jsonl` | 测试 C2（6.8 s 长句）原始命中（94 行） |
| `t504_test_{a,bc,c2,e}_play_log.txt` | 电脑端播放编排与毫秒打点 |
| `t504_logcat_{a,bc,c2,e}_extract.txt` | 设备 logcat 的 ASR 相关行（含原厂自身 `onStream:641`/`setTextTime` 交叉验证） |
| `t504_device_env.txt` | 设备/模块 SHA256、模块基址、偏移校验、frida 版本 |
| `build_evidence.py`、`make_table.py`、`make_summary.py` | 证据生成与脱敏脚本 |

复现步骤见 `README.md` 的“复现”一节。

---

## 10. 与原厂状态的隔离

- 未修改原厂 APK / native so / system / boot / 原厂配置；未替换 ASR；未接入任何第三方 ASR 或 LLM。
- 设备侧新增文件仅 `/data/local/tmp/t503/cap_T504*`（logcat + pcap）；探针进程随 frida 会话 detach 结束，未设开机自启。
- 测试结束状态：`com.alibaba.ailabs.genie.smartapp:core` PID 16112 存活，唤醒/识别/TTS/音量均正常。
