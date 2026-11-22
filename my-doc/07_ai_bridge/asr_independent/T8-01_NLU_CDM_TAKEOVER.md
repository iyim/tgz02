# T8-01：原厂 NLU/CDM 接管点确认与替换原型

对象：`/system/app/smartapp/lib/arm/libsmartbox.so`（sha256 `f6e3c354…df80940`，2 047 772 字节，ARM32）
方法：`.dynsym`（5653 条，未 strip）+ `.rel.plt` 顺序映射到 PLT 桩（`PLT0=0x8d39c`，桩起点 `0x8d3b0`，
每桩 12 字节，桩 k ↔ `.rel.plt[k]`）+ `llvm-objdump -d`。逐条 `bl` 解析成真实符号名，
所以下面的每条边都是**反汇编里看得见的调用**，不是猜的。
证据：`evidence/t8_01_callchain_extract.txt`；脚本：`analysis/t8_01/plt_calls.ps1`、`who_calls.ps1`。
（本机没有可用的 ELF/ARM 反编译 provider —— Ghidra 只吃 PE/6502，Hopper 是 macOS，IDA/Kuna 未配置，
所以本轮用符号+反汇编+调用边，而不是伪代码。结论边界写在 §6。）

标记约定：`[已证实]` = 反汇编里解析出的直接调用或实测日志；`[实测]` = 2026-11-22 真机语音日志；
`[推断]` = 结构上成立但没有直接观测；`[未证实]` = 本轮没能确认。

## 1. 调用链图

```
[唤醒] XEGNLocalEngine / xengine                      [实测 17:50:40 score 0.80]
   ↓
[录音 + VAD] libvad_api                                [实测: maps 515/515 常驻]
   ↓
[云端 ASR] CloudASRManager → wss（eventName=ListenStarted）   [实测: GcsManager.cpp:send + WebSocket.cpp:onSend]
   ↓  ASR 文本（isOffline = 0，29/29）                  [实测]
┌───────────────────────────────────────────────────────────────────────────┐
│ ★ T6 Hook 挂在这里（已工作）                                              │
│ SessionManager::onStream(int sessionId, const char* text,                 │
│                          u_char isFinished, u_char isOffline,             │
│                          u_char needNlp, u_char noDisplay)  @0x11353c     │
└───────────────────────────────────────────────────────────────────────────┘
   ↓ bl 0x1135a4                                          [已证实]
SessionProxy::onStream(int, const char*, u_char, u_char) @0x11d708
   ↓ Message::obtain + Handler::postMessage               [已证实]
SessionProxy::onHandler(Message*)  — 会话消息泵
   ↓ bl 0x11c328 / 0x11cb50                               [已证实]
SessionDispatch::onStream(int, const char*, u_char) @0x117a78     ← 文本下发到 Java 客户端回调
   （这条支路只把文本送出去，**不调用任何 NLU 函数**：[已证实] 见 §2）

────────────── 以下是原厂 NLU 结果的回来路径 ──────────────

[云端 NLU] 同一条 WSS 会话的结果（不是本地计算）          [推断，见 §5]
   ↓
GcsManager::onResult(int, u_char, u_char, const char*, int) @0x12febc   [实测: GcsManager 日志]
   ↓ bl 0x12ff9c                                          [已证实]
RouterManager::onResponse(int, json_object*) @0x10fe3c
   ├─ bl 0x10fe70  GcsManager::onResponse                   [已证实]
   ├─ bl 0x10fedc  ProtocolParser::onParser                 [已证实]
   ├─ bl 0x10ffa4  SessionManager::onNlpResultInner         [已证实]
   ├─ bl 0x1101c8  ContinuousDialogManager::onSpeakCommand  [已证实]
   └─ bl 0x1102b8  SessionManager::onSpecialNlpResult       [已证实]
   ↓
SessionManager::onNlpResultInner(int, NlpResult*) @0x114b98   ← 8 字节 thunk
   （反汇编：`ldr r0,[r0,#20]` + `b PLT` → 取 this->proxy 后尾调 SessionProxy::onNlpResultInner）
SessionProxy::onNlpResultInner(int, NlpResult*) @0x11d5d0
   ↓ Handler::removeMessage / setSessionStatus             [已证实]
SessionProxy::onHandler(Message*) → SessionDispatch::onNlpResult  [已证实]

   ┌── 另一条入口（Java/JNI 侧）───────────────────────────────┐
   │ SessionManager::onNlpResult(int, int, NlpResult*) @0x11489c │
   │   → SessionProxy::onNlpResult / onNlpResultInner  [已证实]  │
   └────────────────────────────────────────────────────────────┘
   ┌── 还有一条入口（会话退出时补发）──────────────────────────┐
   │ SessionManager::exitTalk(int, u_char) @0x1110e4            │
   │   → SessionDispatch::onNlpResult                        [已证实]│
   └────────────────────────────────────────────────────────────┘

┌═══════════════════════════════════════════════════════════════════════════┐
║ ★★ CDM 入口（三条入口在这里汇合）                                        ║
║ SessionDispatch::onNlpResult(int sessionId, int type, NlpResult*)         ║
║                                            @0x118ebc  (1952 字节)        ║
╚═══════════════════════════════════════════════════════════════════════════╝
   ├─ bl 0x1191d8  onRouterDetailInfo(int,int,NlpResult*)      [已证实]  ← 路由/技能细节
   ├─ bl 0x119200  playAudios(int,int,NlpResult*,ReturnCode*,u_char*)  [已证实]
   │      └─ bl 0x117db8  AudioManager::processMediaCommand   [已证实]  ← 技能真的执行
   │      └─ bl 0x117f0c  AudioManager::preProcessCommand     [已证实]
   ├─ bl 0x1194c4 / 0x1194f4 / 0x119550  processCommand(...)  [已证实]  ← 下发 App 客户端
   ├─ bl 0x119358  ContinuousDialogManager::onSpeakCommand     [已证实]
   └─ bl 0x11947c  SessionManager::setSessionTtsStatus         [已证实]
   ↓
[TTS] TtsManager::playTts @0x11fafc / TtsManager::onTtsStart @0x11f110     [已证实: .dynsym]
      ← 我方 TTS Guard 的两个挂钩点（源码 hook_tts/libtg_ttsguard.c）[已证实: 我方源码 + 实测日志]
```

## 2. 五个问题逐条回答

**Q1 收到 isFinished=1 之后进入哪些函数**
`SessionManager::onStream` → `SessionProxy::onStream`（+ `onSendTextRequest` 另一分支）→ `Message` →
`SessionProxy::onHandler` → `SessionDispatch::onStream`。**这条支路上没有任何 NLU 调用**
（`SessionManager::onStream` 的 19 个 PLT 被调用里只有 SessionProxy/Ut/AutoTest/Trace/日志）。
所以"文本交给 NLU"不发生在 ASR 回调里，而是发生在**云端 NLU 结果回来时**。

**Q2 哪个函数把文本交给原厂 NLU**
本地没有这个函数。原厂 NLU 是**云端**算的：ASR 会话本身带 `needNlp` 参数，云端在同一条 WSS 上
返回 NLU 结果，本地由 `GcsManager::onResult` 收下再 `RouterManager::onResponse` 分发。
（`RouterManager::getRouter` / `registerRule` 是**本地关键词路由**，服务的是"本地技能命中"，
不是 NLU。`RouterManager::onTextStream` 存在但**没有任何 PLT 调用者** `[未证实用途]`。）

**Q3 NLU 输出如何进入 CDM**
`RouterManager::onResponse` → `SessionManager::onNlpResultInner` → `SessionProxy::onNlpResultInner`
→ 消息泵 → `SessionDispatch::onNlpResult`；另一条 JNI 入口 `SessionManager::onNlpResult` 与
退出补发 `SessionManager::exitTalk` 也汇到同一个 `SessionDispatch::onNlpResult`。

**Q4 CDM 如何触发技能、回复、TTS**
`SessionDispatch::onNlpResult` 里 `onRouterDetailInfo`（路由细节）+ `playAudios`
（→ `AudioManager::processMediaCommand/preProcessCommand`，技能的真正执行点）+ `processCommand`
（下发 App）+ `ContinuousDialogManager::onSpeakCommand`（连续对话）+ `setSessionTtsStatus`，
再往下才是 `TtsManager::playTts/onTtsStart`（我方 Guard 在那一层）。

**Q5 能否在进入 NLU/CDM 之前可靠拦截**
- "进入 NLU 之前"：**不能**。NLU 在云端，文本离开设备就已经在 NLU 里了。
- "进入 CDM（技能执行）之前"：**能，而且只有一个点** —— `SessionDispatch::onNlpResult`
  （三条入口在此汇合，往下就是技能与 TTS）。
- 会话级判据来自已经在工作的 `SessionManager::onStream`（session id + 文本 + isFinished），
  判据本身复用 `intent_route`，不写第二套分流。

**Q6 当前 TTS Guard 在什么阶段，是否存在"技能已执行但回复被拦截"**
存在。Guard 的两个挂钩点是 `TtsManager::playTts` 与 `TtsManager::onTtsStart`，而技能执行
（`playAudios → AudioManager::processMediaCommand/preProcessCommand`）在这两个之前。
也就是说：**Guard 只挡"说"，不挡"做"**。所以"只拦 TTS 就算接管"是错的 —— 音量、播放、屏幕
这类有副作用的指令，原厂会真的执行完，只是不出声。

## 3. 接管点与最小原型

### 3.1 接管点

**`SessionDispatch::onNlpResult(int, int, NlpResult*)` @ `0x118ebc`**（libsmartbox.so，ARM32）

| 选它的理由 | 说明 |
|---|---|
| 唯一汇合点 | JNI `onNlpResult`、云端 `onResponse`、`exitTalk` 补发三条入口都到这里 |
| 在技能之前 | 往下才是 `onRouterDetailInfo` / `playAudios` / `processCommand` / TTS |
| 会话可分 | 第一个参数就是 sessionId，与 `onStream` 拿到的 session 一一对应 |
| 可回滚 | 一个点、一个开关；不碰原厂配置、不全局禁用组件 |

明确不采用的方案：
- ❌ 全局禁用 NLU/CDM 组件 → 本地指令一起废掉（违反 §4.4）。
- ❌ 只拦 TTS → 技能副作用照旧执行（§2 Q6 已证）。
- ❌ 拦 `SessionManager::onStream` 不转调原函数 → 会把"文本下发到客户端"一起掐掉，
  影响的不止 NLU；而且 `exitTalk` 补发的 NLU 结果照样能进 CDM。

### 3.2 原型代码（本轮交付，host 已验证）

| 文件 | 作用 |
|---|---|
| `android/nlu_takeover.h/.c` | 会话级接管判据：`t8_to_on_final()` 判定并登记，`t8_to_should_drop()` 供 CDM 入口决策；带 TTL、会话回收、槽位上限 |
| `android/skill_dispatch.h/.c` | 统一技能接口 + 注册表 + 两个示例（音量、时间）；未接入的技能必须返回 `T8_SK_E_NOIMPL` |
| `tests/t8_01_nlu_takeover_unit_test.c` | 70 条断言：判定 / 丢弃语义 / 技能接口 / 端到端分流 |
| `tests/run_t8_01_host_tests.ps1` | 主机一键跑，日志落 `evidence/t8_01_host_test.log` |

判定规则与现有 worker **逐条对齐**（不新增规则）：
`ir_classify()` 命中 + 该意图在 `route_mask` 内 + `ir.complete==1` → **放行原厂**；其余 → **我方接管**。
唯一刻意的差别：`完整=0` 的半句话（例如"音量调到百分之"）worker 走 AI 但不拦原厂，而
T8-01 把它登记为接管，让原厂侧也彻底不执行。

### 3.3 端到端分流验证（host，`pass=70 fail=0`）

```
天猫精灵现在几点      -> PASS (time)    factory CDM 执行 1 次，我方不重复执行
天猫精灵音量调到五    -> PASS (volume)  同上
天猫精灵暂停          -> PASS (stop)    同上
天猫精灵给我讲一个笑话 -> TAKE (ai)      factory CDM 执行 0 次，我方接管 1 次
音量调到百分之        -> TAKE (incomplete) 半句话不交给原厂执行
route_mask 不含 time  -> TAKE (ai-intent-off)
未登记会话            -> 放行（宁可原厂答，不误伤）
TTL 过期 / 会话结束   -> 不再拦截
槽位上限 8            -> 回收最早过期者，表不会无限增长
```

## 4. Hook 需要的改动（本轮不部署，等批准）

现有 T6 Hook **信息已足够**：`onStream` 里已经有 session id、文本、isFinished。
**不需要新增事件字段**；只有在想顺带解决 ASR 归因时才需要 `isOffline`（与 NLU 无关）。

最小改动（2 处，都在 `android/hook_agent/libtg_hook.c`）：

| # | 位置 | 改动 |
|---|---|---|
| A | 现有 `SessionManager::onStream` 钩子尾部（`isFinished==1` 分支） | 调 `t8_to_on_final(&g_to, session_id, text, now_ms, route_mask, &why)`，把结果写一行日志 `nlu-takeover: session=… decision=take/pass why=…`；不改变转发行为 |
| B | **新增** `SessionDispatch::onNlpResult` 钩子（`0x118ebc`） | 前置：`if (g_tg_takeover_enabled && t8_to_should_drop(&g_to, session_id, now_ms)) { log; return 0; }` 否则调原函数 |
| C | 状态字段（可选） | `worker_status.json` 增加 `nlu_takeover:{enabled,marked,dropped,passed,expired}`，只读展示，不改现有 JSON 键 |

开关：环境/配置文件 `TG_NLU_TAKEOVER=0|1`（**默认 0 = 关闭**，行为与今天完全一致）。

## 5. 回滚方案

1. **首选**：`TG_NLU_TAKEOVER=0`（或在 `worker.conf` 加 `nlu_takeover=off`）→ 钩子只记录不拦截，
   一条命令回到当前状态，不用重装任何库。
2. **换回旧库**：`/data/local/tmp/t6/libtg_hook.so` 保留原文件；`tg_supervisor` 用同一份
   `run_supervisor.sh` 重新注入即可（Guard 不参与，不动）。
3. **不用做的事**：不改 `runtime.xml` / `dialog.cfg`，不禁用任何原厂组件，不卸载任何 App。
4. **回滚判据**：`events.jsonl` 继续增长、`route=native` 的指令仍由原厂回答、
   `/data/local/tmp/t7/ttsguard.sup.log` 里 Guard 仍在计数。

## 6. 边界与未证实项（不许当成结论用）

| 项 | 状态 |
|---|---|
| `onStream` 的所有调用边、`SessionDispatch::onNlpResult` 的三条入口与内部调用边 | **已证实**（反汇编解析） |
| NLU 由云端计算 | **推断**（云端 WSS + `needNlp` 参数 + 本地调用链里没有任何 NLU 调用 + `isOffline=0`）。没有抓到"请求 NLU"那一帧的报文 |
| `RouterManager::onResponse` 里 `ContinuousDialogManager::onSpeakCommand` 是否绕过 CDM 直接产出语音 | **未证实** —— 如果设备验证发现接管后仍有原厂声音，第二个点就补在 `RouterManager::onResponse` |
| `SessionDispatch::onNlpResult` 的第一个参数就是 sessionId | **推断**（与同族函数签名、日志里的 sessionId 一致），设备验证时用日志确认 |
| 函数级伪代码 | 本轮**没有**（无可用 ELF/ARM 反编译器），只有符号 + 反汇编调用边 |
| 设备端是否真的绕过了原厂技能 | **未验证**，需要下一次设备窗口（见 §7） |

## 7. 下一步（需要批准才能上设备）

设备验证步骤（一次会话，约 1 分钟）：

1. 部署带 B 点的新 Hook（开关**先关**），确认行为与今天一致（对照组）。
2. 打开开关，说：
   - 「天猫精灵，给我讲个笑话」→ 期望：`onStream` 有事件；**没有**原厂 `playAudios/AudioManager`
     技能日志、没有原厂声音；worker `deepseek ok` + `tts queued`。
   - 「天猫精灵，现在几点」→ 期望：原厂照常回答（`route=native`），Guard 放行。
   - 「天猫精灵，音量调到 5」→ 期望：音量真的变化，且只变一次（不重复执行）。
3. 关掉开关重复第 2 步第一条 → 原厂开始答复（可能被 Guard 静音，但 logcat 里能看到
   `TtsManager::playTts/onTtsStart`）→ 这组对照就是"确实接管了"的直接证据。
4. 失败即回滚（§5 第 1 条）。

**结论一句话**：找到了可靠的接管点 —— `SessionDispatch::onNlpResult`（`0x118ebc`），
它在三条 NLU 入口的汇合处、在原厂技能与 TTS 之前；主机原型 70 条断言已跑通分流；
能否上设备进入验证，等批准。
