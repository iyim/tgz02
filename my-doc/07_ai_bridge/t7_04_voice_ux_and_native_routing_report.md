# T7-04 语音体验修复与本地指令优先路由（任务书标题：T7-02-R1）

- 设备：TG-Z02 / CCH `AILABS_S1L` / Android 8.1（SDK 27）/ ARM32 `armeabi-v7a` / `192.168.1.9:5555`
- 仓库：`main`，本轮提交见 §10
- 基线：T7-03 只读验收后的干净状态（原厂 `:core` 正常、仅 T6-01 `libtg_hook.so` 在跑、
  `localASRPauseTime=150` / `pauseTime=700`、`dialog.cfg` 两个实验参数为 0）
- 本轮结论先说：**功能一（System Prompt）、功能二（本地指令路由）、功能五（TTS 守卫生命周期）
  已完成并在真机验收；功能四（半句话/暂停）在 Worker 侧可做的部分已实现并验收，
  但"第二半句根本没被原厂识别"这一层是原厂端点行为，未动任何原厂参数；
  功能三（免唤醒连续追问）**未实现**：状态机与配置已就位，原生续听未接上；原因是原厂的续听入口
  要求一份由云端下发的 `_WakeUpInfo_` 和 `CDM[0x70]` 标记（§5.2、§5.4 给出反汇编证据与下一步方案 D）。**

---

## 1. 代码变更清单

| 文件 | 类型 | 说明 |
|---|---|---|
| `android/intent_route.c/.h` | 新增 | 本地意图识别：音量 / 天气 / 关屏 / 开屏 / 时间；纯函数、无 I/O、不调任何原厂接口 |
| `android/utterance_gate.c/.h` | 新增 | ASR 暂存门：`debounce` 暂存、同 session 修订合并、跨 session 悬空句合并、暂存槽落盘恢复 |
| `android/conv_session.c/.h` | 新增 | 会话状态机 IDLE/ACTIVE/PROCESSING/SPEAKING/WAIT_NEXT/CLOSED + 超时可配 |
| `android/ai_worker.c/.h` | 修改 | 接入路由、暂存门、会话状态；新增 `route=native` 放行标记写入；`--route-native/--gate*/--session*` 参数 |
| `android/worker_conf.c/.h` | 修改 | 新增 `route_native= route_intents= gate= gate_debounce_ms= gate_max_hold_ms= gate_cross_session= gate_cross_session_ms= session= session_timeout_ms=` |
| `android/worker_status.c/.h` | 修改 | 状态文件新增 `route{}` / `gate{}` / `session{}` 三段（只放计数与短标签，不含用户正文） |
| `android/hook_tts/libtg_ttsguard.c` | 修改 | 原厂基础指令放行（`native_allow`）：读 Worker 的放行标记，按 sessionId 命中或有效期窗口放行；统计 `native_allowed/native_reads/native_expired` |
| `android/run_t7_04.sh` | 新增 | 单一生命周期所有者：`guard-start/guard-stop/guard-status/route-status/worker-status/rollback` |
| `android/build_t7_04.ps1` | 新增 | 构建守卫 + Worker（`-Wall -Wextra`，任何 warning 即失败） |
| `tests/t7_04_route_unit_test.c` / `t7_04_gate_unit_test.c` / `t7_04_session_unit_test.c` | 新增 | host 单测（93 + 45 + 25 断言） |
| `tests/run_t7_04_host_tests.ps1` | 新增 | 一键跑 host 单测 + 六个源文件的零告警编译检查 |

未改动：T6-01 `libtg_hook.so`、T6-02 `tg_supervisor`、T6-03 `init.rc`、Injector、PCM Hook/VAD、
`boot.img`/`system`/`vendor`/原厂 APK、`runtime.xml`（一个字节都没动）。

产物 sha256（`evidence/t7_04_ndk_build.log`）：

```
libtg_ttsguard.so  fc1d27f2357b5a3390035207f4fb8c70fe3c7403dca3335e56d55f8429ab67b4
ai_worker          89e4d6e0bc6454d753fd555a8e1f08392fbdbf4294ed2a139d2d24b9871604a8
```

---

## 2. 功能一：System Prompt 真人化（已完成）

### 2.1 实际请求结构（不是靠模型回答反推）

T7-03 已经把提示词统一成音箱角色并固定放 `messages[0]`；本轮复核并保留该机制，日志逐条可验：

```
[aiw] 08:12:27 system prompt: 603 bytes, placed at messages[0] (role=system, outside context eviction)
[aiw] 08:14:06 request shape: event=t704-gate-i system=1(role=system,bytes=603) history_msgs=6 user_msgs=1 req_msgs=7
```

- `system` 在 `messages[0]`，不进 `ctx->msgs`，因此**不会**被按轮次淘汰（`context.json` 里只有 user/assistant）；
- 每轮请求都重新带上（上面两行相隔两分钟，仍是 `system=1`）；
- 每轮用户消息里不再重复拼接提示词（`user_msgs=1`）。

### 2.2 提示词内容（默认值 `T6B_DS_SYSTEM_PROMPT_DEFAULT`，603 B）

> 你是运行在 TG-Z02 智能音箱上的 AI 语音助手。你使用自然、亲切、简洁的中文与用户交流，具备连续对话和上下文理解能力。
> 你是用户当前使用的音箱 AI 助手。不要主动介绍自己是不是天猫精灵，不要反复声明自己不是天猫精灵，也不要主动解释设备品牌、模型供应商或技术实现。
> 除非用户主动询问身份，否则直接回答用户的问题。回答应适合语音播报，避免不必要的长篇解释、Markdown 格式和复杂排版。不得谎称自己具有尚未实现的设备控制能力。

### 2.3 真实回答（`evidence/t7_04_context_and_replies.json`）

| 用户（原厂 ASR 输出） | AI 回答（本地代理 `deepseek-flash`，HTTP 200） |
|---|---|
| 天猫精灵东京有什么好玩的 | 东京好玩的地方挺多的……你要是告诉我大概玩几天、和谁一起，我可以帮你排个更具体的路线。 |
| 天猫精灵你是谁 | 我是你正在用的这个音箱里的语音助手，可以陪你聊天、回答问题、给点建议。 |
| 天猫精灵你能做什么 | 我能陪你聊天，回答各种问题……不过要说明一下，我控制不了家里的电器，也读不到实时天气和钟点这类信息。 |
| 天猫精灵讲个笑话 | 来一个：有个人去理发…… |

5 次真实请求（含上面 4 次 + 一次"东京"追问）里**没有一次**主动声明"我不是天猫精灵"，也没有自我介绍品牌/模型；
被直接问身份时（"你是谁"）才说明自己是音箱里的语音助手。设备控制能力没有被虚报（明确说控制不了家电、读不到实时天气/钟点，这与实际路由行为一致）。

---

## 3. 功能二：本地原厂指令优先路由（本轮重点，已完成并真机验收）

### 3.1 实现方式：只判定、不执行、不调原厂私有函数

`intent_route.c` 在 **AI Bridge 收到原厂 ASR 最终文本之后**做一次纯本地判定。命中后 Worker：

1. **不请求模型**（`route=native`），因此不存在"原厂与 AI 双重回答"；
2. 写一个 0644 的放行标记 `work/native_route.public.json`（只有 session/意图，没有正文），
   TTS 守卫据此**保留这条原厂回答**（见 §6）；
3. 偏移照常提交（`commit_skipped`），这条 ASR 文本绝不会被第二次处理。

原厂自己的 NLU 与执行链路本来就会处理这些指令（T6-01 hook 是只读旁路，不拦原厂），
所以"交给原厂"指的是**我们不介入**，不是"调一个没确认过的 Native 函数"。

### 3.2 规则表（可维护，不用改逻辑就能加词）

归一化 = `ef_normalize`（去空白/标点/控制字符、拉丁小写、保留汉字与 ASCII 数字）+ `ef_strip_fillers`（去唤醒词/语气词），
全角数字先折成半角。判定顺序：**关屏 > 开屏 > 天气 > 时间 > 音量**，每类都有 `hit`（至少命中一个）与 `veto`（命中即否决）。

| 意图 | 命中词（节选） | 否决词（节选） | 参数 |
|---|---|---|---|
| `volume` | 音量、声音、喇叭、响度、大声点、小声点、太吵、太响 | 歌曲音量、音量知识 | `up` / `down` / `set:30` / `mute` / `unmute` |
| `weather` | 天气、下雨、下雪、带伞、气温、刮风、空气质量、紫外线、穿什么衣服 | 天气之子、天气预爆 | — |
| `screen_off` | 关闭屏幕、关掉屏幕、熄屏、息屏、黑屏、关屏 +（屏幕 且 关/熄/灭） | 亮度、调亮、点亮、打开屏幕、开屏、暗一点 | — |
| `screen_on` | 打开屏幕、点亮屏幕、屏幕点亮、亮屏、开屏 | 含 关/熄/灭/暗 一律否决 | — |
| `time` | 几点、几时、什么时间、现在时间、几号、多少号、星期几、礼拜几、周几、日期 | 号码、电话、生日、航班、订单、快递、编号、倒计时、定个闹钟、几分钟 | — |

"判不准就不拦"：只有明确命中才 `route=native`，其余全部 `route=ai`。
host 单测里有 14 条反例（`给我讲个笑话`/`你是谁`/`帮我定个闹钟`/`屏幕亮度调高一点`/`我的生日是几号`/`把空调调到26度`…）确认仍进大模型。

### 3.3 真机证据（原厂真的执行了，且 AI 没有参与）

| 时间 | ASR 文本 | Worker 日志 | 原厂行为 |
|---|---|---|---|
| 08:02:44 | 天猫精灵音量调大一点 | `route=native intent=volume rule=volume.up arg=up` | `onTtsStart sessionId=1969184 tts="马上为您设置音量，现在是47"`，`volume_level_ 37→47` |
| 08:03:05 | 天猫精灵今天天气怎么样 | `route=native intent=weather rule=weather.keyword` | 原厂天气回答（同一 session） |
| 08:03:18 | 天猫精灵关闭屏幕 | `route=native intent=screen_off rule=screen.keyword` | 原厂执行关屏 |
| 08:16:13 | 天猫精灵打开屏幕 | `route=native intent=screen_on rule=screen.on` | `onTtsStart sessionId=1969295 tts="暂不支持该操作"`（该固件不支持语音开屏，属原厂能力边界） |
| 08:04:xx | 天猫精灵现在几点了（×3） | `route=native intent=time` | 原厂报时 |

同一时段 `provider_ok` 没有因为这几条 +1（`route.native=3`、`route.ai=0` 的时段里 `provider_ok=0`），
即**没有一次模型请求**是由这些指令触发的。sessionId 与 Worker 写进放行标记的一致（1969184 / 1969295），
这也是守卫能精确放行的依据。

判停样本（这一轮里 `route=native` 与 `route=ai` 混跑）：`route.native=1, route.ai=7`，互不干扰。

---

## 4. 功能四：ASR 短暂停顿与半句话（已定位 + 已实现可做部分）

### 4.1 先说定位结论

真人音频（"天猫精灵" + 2 s + "帮我播放" + 0.7 s + "周杰伦的歌"）在设备上只产生了**一条** final：

```
{"event_id":"t6-10414-1969278-g27","session_id":"1969278","text":"天猫精灵帮我播放", ...}
[aiw] 08:11:08 route=ai event=…-g27 session=1969278 … held_ms=611 why=timeout text_bytes=24
```

第二半句**从来没有进入事件流**：原厂在第一个停顿就结束会话并只给前半句的 final，后面的音频不再被识别。
所以这一层不是 Worker 延迟的问题，而是原厂端点行为：

- `runtime.xml` 里 `devicesettingInfo::localASRPauseTime=150`（本地 ASR 判停 150 ms）、`pauseTime=700`；
- `logcat` 里 `onStopTalk:697 … reason = normal` 在 0.x 秒内就到达，`listenDuration` 只有几百毫秒。

**本轮没有改这两个参数**（T7-03 事故后的约定），也没有再动任何原厂配置。

### 4.2 Worker 侧实现（能做的部分都做了）

`utterance_gate.c`：

1. **暂存**：final 到达后先握 `debounce_ms`（默认 450 ms）再提交；
2. **同 session 修订合并**：前缀扩展 → 用更长的那次；更短的中间结果 → 忽略；相似度 ≥80% → 视为同一句的再次识别；
3. **跨 session 续说合并**：旧文本以"悬空谓词"（播放/调到/打开/查一下/介绍一下…）结尾，且间隔 ≤ `cross_session_ms`（默认 1200 ms）
   → 直接拼接成一句；并且**只有悬空句**才延长等待（完整句子仍然 450 ms 提交，不拖慢正常对话）；
4. **上限**：`max_hold_ms=2500`，绝不无限等；
5. **去重**：`event_id` + 文本双去重；暂存槽落盘 `utterance_hold.json`，Worker 重启后恢复并立即提交一次（过期则丢弃）。

### 4.3 真机证据

- 悬空句窗口生效：`route=ai … held_ms=1241 why=timeout text_bytes=12`（12 B = "帮我播放"），说明悬空句被延长到 1.2 s；
- 跨 session 合并成功：

```
[aiw] 08:15:26 route=ai event=t704-gate-k seq=0 session=97502 merges=1 held_ms=1241 why=timeout text_bytes=27
[aiw] 08:15:29 deepseek ok: … event=t704-gate-k … reply_bytes=471
status: "gate":{… "cross_merged":1,"last_detail":"cross session merge gap=616ms merges=1" …}
```

`text_bytes=27` 正好等于"帮我播放周杰伦的歌"（12 + 15），`event_id` 用的是**首条** final（保证幂等），
而且这一整句只请求了一次模型。

### 4.4 仍然存在的限制（下一轮才可能解决）

"第二半句根本没被识别"只能在原厂端点层面解决（`localASRPauseTime` / `pauseTime` / 停止策略）。
在拿到"这两条参数在干净基线上到底影响什么"的对照实验之前，本轮不动它们；
Worker 侧已经把"两条 final 都到达"的所有形态处理干净（修订/重复/跨会话悬空合并）。

---

## 5. 功能三：连续对话（状态机已实现；原生续听受限，明确报告阻塞点）

### 5.1 已实现

`conv_session.c` 状态机 + 配置（`session=1`、`session_timeout_ms=12000`）+ 状态文件可视化：

```
status.session: {"state":"IDLE","turns":0,"followups":0,"opened":0,"closed":1,
                 "detail":"CLOSED->IDLE (back to standby)"}
[aiw] 08:16:01 session: state=WAIT_NEXT turns=0 followups=0 wait=12000ms
[aiw] 08:16:13 session: state=CLOSED (WAIT_NEXT->CLOSED (timeout)) … (back to wake-word standby)
```

播报结束（`play.public.json` 由 playing 变 idle）→ `WAIT_NEXT`（等待追问）→ 超时 → `CLOSED` → `IDLE`。
`WAIT_NEXT` 期间再来一条 ASR 会被记为 `followup`，上下文继续沿用（T7-01 的多轮上下文不受影响）。

### 5.2 阻塞点：原厂不会在没有唤醒词时开新一轮识别

三条独立证据：

1. `evidence/t7_04_continuity_probe.logcat`：一次完整"唤醒 → 回答"里
   `onStartTalk:255 sessionId=1969141 wakeupType=0` → `onStopTalk:697 reason=normal` → `UpdateContext … "duplexDialogRenew": 0`，
   **之后没有第二个 `onListenStarted`**；
2. 实测：AI 播报结束后直接说"那里有什么好吃的"（无唤醒词），`events.jsonl` 一行都没有新增；
3. 原厂确实有这套能力，但由**服务端开关**驱动：`ContinuousDialogManager::onSpeakCommand(int,json_object*,uchar)`、
   `startFullDuplexDialog()`、`GenieApi::setFullDuplexDialogRenewDuration(unsigned int)`；
   `StopTalk` 上传的 `duplexDialogRenew=0` 就是这个开关的当前值。我们的 AI 回答走
   `GenieTable.query(method=4) → TtsManager::playTts`，拿不到服务端下发的那段续听指令。

### 5.3 下一轮的具体路线（不必再重新调研）

| 方案 | 做法 | 风险 |
|---|---|---|
| A（推荐先做） | 只读 hook `ContinuousDialogManager::onSpeakCommand`，抓一次**云端回答**时的 json，确认续听字段名与取值 | 只读、不调用，风险低 |
| B | 若字段可自行构造：在我们的 TTS 前调用 `GenieApi::setFullDuplexDialogRenewDuration(N)`（导出符号、单参数）观察 `UpdateContext` 是否变成 `duplexDialogRenew:N` | 中（改原厂参数语义，需先做唤醒回归） |
| C | 重放唤醒事件（`WakeupEngineWrapper::onWakeupEvent`） | 高：T7-03 事故路径，必须"唤醒成功回调之后再装 hook"并每次验唤醒 |
| D（本轮新增，见 §5.4） | 快照 `_WakeUpInfo_` 后直接调 `IInputDeviceManager->vtable[8](type, wakeInfo)`（原厂 `startFullDuplexDialog` 里的那一行），绕开 `CDM` | 中高：不碰 `[0x70]`、不触发原厂 `free`，但字段布局错就是 T7-03 那种 SIGSEGV |

本轮**没有**用"每轮重新播唤醒词"冒充连续对话；上面每一条真人记录都标注了是否说了唤醒词。

### 5.4 续听的真实前置条件（本轮补做的反汇编取证）

证据：`_analysis/t702/dec_dialog3.txt`（`libsmartbox.so` 反汇编，Ghidra），导出符号表 `_analysis/t702/dynsym.txt`。

`ContinuousDialogManager::startFullDuplexDialog()` @`0x1665e8`（244 字节）完整行为：

```
if (this[0x70] != 0) {                                  ← 唯一的本地闸门：没有"待续听"标记就直接 return
  mgr  = *(IMmiCore::getInstance()->vtable + 0x10)();   ← IInputDeviceManager 实现
  type = IInputDeviceManager::getInputType(*(this + 4)); /* this+4 = sessionId */
  (*mgr->vtable[8])(mgr, type, this + 8);               ← 就是原厂 startTalk(type, _WakeUpInfo_*)
  TimerManager::timerManagerEvent(..., 3); TimerManager::timerManagerEvent(..., 2);
  resetWakupInfo(this); this[0x60] = 1; *(this + 4) = -1; this[0x70] = 0;
}
```

三条新结论（§5.2 当时没有）：

1. **`_WakeUpInfo_` 内嵌在 `CDM + 8`**，不是全局对象；续听时传的是 `this + 8` 这个地址。
2. **`resetWakupInfo()` @`0x166500` 会把这份 wakeInfo 拆掉**：`free(this+0xc)`、`free(this+0x10)`、
   `free(this+0x38/0x3c/0x40/0x44)`，然后 `*(this+8) = 0xffffffff`。说明里面的字符串指针是**堆上 owned** 的。
   我们在外部手搓一份塞进 `CDM+8`，随后会被原厂 `free` → 崩溃风险落在"所有权"上，不在"能不能调用"上。
3. **没有导出的 setter**：`ContinuousDialogManager` 的全部导出符号只有
   `onSpeakCommand / onNotify / startFullDuplexDialog / resetWakupInfo / visionOpenCallback / packageCheckCallback / ctor|dtor`。
   `[0x70]` 在两个函数里只被**读和清零**（`dec_dialog3.txt:17/34/98`），唯一写入方是云端下发的那条链
   （`onSpeakCommand` 写 `this+4 = sessionId`、`this+8 = wakeupType`）。

另外，原厂还有一条**不经过 `[0x70]`** 的续听调用，在 `onNotify` 的 `param_1 == 0x11 && param_3 == 0xc` 分支（`dec_dialog3.txt:69`）：

```
if (*(this + 4) == param_4) { this[0x60] = 0; return; }          ← 同一个 sessionId 直接忽略
else  type = getInputType(*(this+4)); (*mgr->vtable[8])(mgr, type, this + 8);   ← 不同 session 就续听
```

`param_1 == 0x44e` 那条分支才走 `startFullDuplexDialog`，且带 5000 ms 去重窗口（`CDM+0x78/0x7c`）
和 `SessionManager::fullDuplexDialogCurPageInBlackList()` 前置判断。

**方案 D 的做法**（绕开 `CDM`，只复刻原厂自己做的那一次调用）：

1. 在 `SessionManager::onStartTalk(sessionId, …, _WakeUpInfo_*, …)` 之前**只读**快照 `_WakeUpInfo_`，
   字符串自己 `strdup` 一份（所有权留在我们这边）；
2. 回答播完：`mgr = *(*(IMmiCore::getInstance())->vtable+0x10)()`、`type = IInputDeviceManager::getInputType(sessionId)`；
3. `mgr->vtable[8](mgr, type, &our_copy)` —— 与 `startFullDuplexDialog` 里那一行逐字相同，
   但不碰 `CDM`、不写 `[0x70]`、不触发任何 `free`。

上机前必须先把 `_WakeUpInfo_` 的字段布局钉死（目前已知 `+0x00` int、`+0x04/+0x08` 指针、
`+0x30/+0x34` 布尔、整体跨度 ≤ `0x58`，由 `resetWakupInfo` 的清零顺序反推），
并且第一次只做"快照 + 打印布局"，不做调用——布局错就是 T7-03 那种 SIGSEGV。

---

## 6. 功能五：TTS Guard 生命周期（已整理）

### 6.1 原厂基础指令必须能播（本轮新增）

`libtg_ttsguard.c` 新增 `native_allow`：读 `native_route.public.json`（250 ms 缓存、只在 `onTtsStart` 时读一次）
→ 若 `exp_ms` 未过期，则 `sessionId == 标记里的 session` 或仍在有效期内就**放行**，日志：

```
tgt: onTtsStart ALLOW id=1969184 by=native_session intent=volume exp_ms=… 
```

守卫统计（`evidence/t7_04_device_state.log`）：

```
play_seen=20 ours=20 not_ours=0 start_seen=28 allowed=20 dropped=6 hit_id=20 hit_text=0
native_allowed=2 native_reads=8 native_expired=6
```

`allowed=20` 全是我们的播报（`hit_id` 命中），`dropped=6` 是普通对话里原厂的抢答，
`native_allowed=2` 正好对应"几点"和"打开屏幕"这两条 route=native 的原厂回答 —— 说明守卫不再"无条件屏蔽所有原厂回答"。

### 6.2 生命周期：只有一个所有者

- `run_ttsguard.sh watch`（T7-02 的 5 s 补装）在本轮**停用**（`guard-status` 显示 `watch=stopped`）；
- 只用 T6-02 的 `tg_supervisor` 加 `--so libtg_ttsguard.so` 一个实例（`run_t7_04.sh guard-start`，
  启动前会先杀掉重复的 supervisor/watch，`supervisor=running pid=27260` 只有一个）；
- `guard-stop` = 停 supervisor + 对每个 `:core` 走 `tg_injector --uninstall`（`(deleted)` 情况下退化为重启进程），
  `hooked=0` 可核对；
- 没有遗留进程：`ps` 里只有 1 个 supervisor、1 个 `ai_worker`、1 个 `:core`（另有原厂 `:business`）。

### 6.3 回声隔离仍然有效

`echo: {"enabled":1,"seen":11,"dropped_echo":2,"kept_in_window":5,"window_hits":7}`：
播报期间同文事件被丢弃，播报期间**真指令**被保留（`kept_in_window=5`），
合成测试里 `drop_echo (sim=100%)` 也会在日志里留下原因。

---

## 7. 自动化测试

host（`tests/run_t7_04_host_tests.ps1`，0 网络 0 真机，`evidence/t7_04_host_unit_test.log`）：

```
t7_04_route_unit_test    SUMMARY: pass=126 fail=0
t7_04_gate_unit_test     SUMMARY: pass=45 fail=0
t7_04_session_unit_test  SUMMARY: pass=25 fail=0
worker compile check     intent_route/utterance_gate/conv_session/worker_conf/worker_status/ai_worker : 0 warning
SUMMARY pass=196 fail=0
RESULT: PASS
```

构建（`evidence/t7_04_ndk_build.log`）：`-O2 -Wall -Wextra`，**0 warning / 0 error**，ELF32/ARM、动态链接。

真机（`evidence/t7_04_device_state.log`、`evidence/t7_04_context_and_replies.json`、`evidence/t7_04_continuity_probe.logcat`）：

| # | 项目 | 结果 |
|---|---|---|
| P0 | 部署对账（worker sha256 `89e4d6e0…`、guard `fc1d27f2…`、备份三件套） | OK |
| P1 | 唤醒（wake.wav + 2 s + 指令） | 正常，`onStartTalk`/`asr_final` 均有 |
| P2 | 音量调大 | `route=native intent=volume`，原厂播报"现在是47"，音量 37→47，AI 0 次请求 |
| P2 | 天气 | `route=native intent=weather`，原厂回答 |
| P2 | 关闭屏幕 | `route=native intent=screen_off`，原厂执行 |
| P2 | 现在几点（×3） | `route=native intent=time` |
| P2 | 打开屏幕 | `route=native intent=screen_on`，原厂答"暂不支持该操作" |
| P3 | 普通聊天（东京/你是谁/你能做什么/讲笑话/介绍东京） | `route=ai`，提示词每轮都在 `messages[0]`，回答自然 |
| P4 | 守卫放行原厂基础指令 | `native_allowed=2`；普通对话原厂回答 `dropped` 6 次 |
| P5 | 半句（悬空句窗口） | `held_ms=1241`，无提前提交 |
| P6 | 跨 session 合并 | `merges=1`、`text_bytes=27`，一条指令只请求一次 |
| P7 | 免唤醒追问 | **未成立**：无事件（原厂不开会话，见 §5.2；续听真实入口见 §5.4） |
| P8 | 播报回声 | `dropped_echo=2`、`kept_in_window=5` |
| P9 | 会话状态机 | `WAIT_NEXT → CLOSED(timeout) → IDLE` |

### 未测试 / 只做了部分的项目（不隐瞒）

1. **真人现场语音**：本轮所有语音都是"录好的真人/合成片段经 PC 扬声器播放"（与 T5/T7 前几轮同一套方法），
   没有现场真人对着设备说话；
2. **免唤醒连续三轮**：未实现（原厂限制），只有状态机与配置；反汇编得到的真实入口与可行方案见 §5.4；
3. **"停顿 0.5 s / 1 s 再说完整指令"的整句完整率**：本轮只验证了"停顿后第二半句不在事件流里"，
   没有做参数对照实验（按约定不动 `localASRPauseTime`/`pauseTime`）；
4. **守卫在 `:core` 重启后自动重装**：本轮只验证了 supervisor 在跑时 `hooked=1`，
   没有特意 kill `:core` 去测重装时延；
5. **关屏后无法用语音恢复**（该固件 `打开屏幕` 返回"暂不支持该操作"），关屏类测试后靠唤醒/重启自然恢复。

---

## 8. 过程中修掉的问题（都留了痕迹）

1. **seq 缺口误报**：被回声/路由/暂存门消费掉的记录没有更新缺口追踪，导致 `gap_missing_total` 虚高 →
   把 `gap_report()` 移到"接受事件"之后、所有分支之前；
2. **悬空句窗口不够**：一开始 `debounce_ms` 只有 450 ms，第二半句 600 ms 后才到就被当成两条独立指令 →
   `ug_stash()` 对"悬空谓词"单独放宽到 `cross_session_ms`（host 单测 `[1b]` 锁住），
   真机上 `held_ms` 从 611 ms 变成 1241 ms；
3. **放行标记权限**：Worker 以 root 跑、`:core` 以 system 跑，`wu_open_wo` 建的是 0600 →
   写完 `chmod 0644`，否则守卫读不到（读不到就等于不放行，原厂基础指令会静默无声）；
4. **编码事故（自伤，已修复）**：用 `Get-Content`/`Set-Content` 批改带中文的源文件，把 UTF-8 读成 GBK 写回，
   造成 7 个文件乱码 → `git checkout --` 还原 5 个已跟踪文件、重写 2 个新文件，
   并用 `mojibake=0 / bom=False` 全量核对后重新构建（现在构建产物与 host 测试都基于干净源码）。

---

## 9. T7-03 复盘里的一条结论需要订正

`abortListen,395,wakeup type is active` **不是**污染证据：本轮干净设备上每次正常"唤醒→回答"都出现它
（`UpdateContext` 里 `"wakeupType": "active"` 就是这个字符串的来源）。
事故复盘里把它当作"引擎状态被污染"的标志是不准确的，真正的证据是"唤醒后没有 `asr_final`"。

---

## 10. 提交与回滚

### 10.1 提交

本文件与代码在 `main` 上直接提交（无 PR、不重写历史），SHA 见提交日志。

### 10.2 回滚（一条命令）

```
su -c 'sh /data/local/tmp/t7/run_t7_04.sh rollback'
```

`rollback` = 停守卫 supervisor + 卸载注入（恢复原厂序言）+ 还原 T7-03 的 `ai_worker` 与 `worker.conf` + 重启 Worker。

备份（`/data/local/tmp/t5_bridge/backup_t7_04/`，提交前核对过）：

```
4bed85171643e4ab039d36f815ab0584104c2759aa613b70b7d0f4475f1f3c37  ai_worker.t7_03
e75f4defef4a1ee57a8e62488ec117a09ba728acdd674f5852c00ddef59e3c40  worker.conf.t7_03
a36acc7af2320989f8df0241ab197d3cc30d45ff48e28ea9027ece7482eb6dd3  libtg_ttsguard.t7_02.so
```

### 10.3 当前设备状态（本轮结束时）

```
:core pid 10414   libtg_ttsguard hooked=1 (play_seen=25 ours=25 allowed=25 dropped=8 native_allowed=10)
                  libtg_hook (T6-01) 在位；libtg_dialog 未加载
supervisor pid 27260 (唯一)   watch=stopped
ai_worker pid 3160   route enabled intents=0x3f (含 media)  gate enabled(450/2500/1200)  session 12000ms
TTS executor 正常运行，play.public.json playing/idle 正常
唤醒：本轮 8 次唤醒全部成功（onStartTalk → asr_final），无 SIGSEGV/SIGABRT/am_proc_died
```

---

## 11. 首轮路由覆盖不足（用户实测反馈）与修复

首轮交付后用户实测反馈"本地指令路由不管用"。查 `events.jsonl` 直接看到两个漏判（同一份真机 ASR 原文）：

```
# 08:17  （修复前）
{"text":"天猫精灵音量调到百分之十"}  ->  route=ai      # 送去模型；原厂回答被守卫 drop，用户听到的是模型的话
{"text":"天猫精灵暂停播放"}          ->  route=ai      # 播放控制也是原厂技能，同样被模型抢答

# 08:26  （修复后）
{"text":"天猫精灵音量调到百分之十"}  ->  route=native intent=volume rule=volume.set arg=set:10
                                        factory: onTtsStart sessionId=1969432 tts="马上为您设置音量，现在是10"
{"text":"天猫精灵暂停播放"}          ->  route=native intent=media  rule=media.pause arg=pause
```

三处根因，都已修：

1. **中文数字没解析**：`音量调到百分之十` 里没有 ASCII 数字，而规则只认 `set:<ascii>` 和"调大/调小"，
   于是"音量"命中但没有动作词 → 落回大模型。现在支持 `百分之N` / `调到N` / `调到十五` / `设成最大` / `一半`，
   并且**只有数量语境**（`百分之/调到/调成/设成/设为/到` 之后）才解析中文数字 ——
   否则"调大一点"里的"一"会被误当成 1（host 单测就抓到了这个回归）。
2. **音量动作词表太窄**：只有"调大/调小/开到"。现在"音量/声音 + 任一动作词（调/设/改/到/百分/最大/一半/加/减/高/低/开/关/响/轻/静）"
   都算音量指令，方向交给原厂解析；`volume.adjust` 作为兜底规则出现在日志里。
3. **播放控制整类漏了**：暂停/继续/下一首/切歌/播放音乐等属于原厂技能，模型既播不了也会抢答。
   新增 `media` 意图（`media.pause` / `media.play`），并加了否决词（推荐/有什么/哪首/好听/怎么/为什么/播放器），
   避免"推荐几首歌"这种要建议的请求被当成播放控制。

host 单测相应扩到 **196 断言 0 失败**（新增 `[1b]` 中文数字与"音量调到百分之十"等真实 ASR 原句、`[3b]` 播放控制正例、
`推荐几首歌/播放器怎么用` 反例）。

**这一轮暴露的流程问题也记下来**：首轮真机验收里我只用了自己生成的"音量调大一点 / 关闭屏幕 / 现在几点"等短句，
没覆盖"用户实际会怎么说"（`百分之十`、`暂停播放`），也没有把"同一句话在修复前后分别 route=ai / route=native"作为验收断言。
新版本的验收做法是：**把真机日志里出现过的每条 ASR 原文都回填进 host 单测**（现在表里已有 6 条来自设备的原句）。

产物 sha256 随之更新：`ai_worker 89e4d6e0bc6454d753fd555a8e1f08392fbdbf4294ed2a139d2d24b9871604a8`（守卫未变）。
证据：`evidence/t7_04_hotfix_route_coverage.log`。

---

## 12. 第二处真人测试缺陷：打断无效、以及"暂停"被交给模型

用户实测：问"郑州有什么好吃的"→ 回答很长 → 中途唤醒说"暂停"→ 播报没停、继续说完 → 说完又补一句"我暂停不了，请你自己操作音箱"。

### 12.1 真机日志还原（`events.jsonl` + `ai_worker.log` + `tts/journal.jsonl`）

```
08:29:07 route=ai  … "天猫精灵郑州有什么好吃的"        reply_bytes=499   （≈15 秒语音）
08:30:01 route=ai  … "天猫精灵停止"                    reply_bytes=147   ← 模型回答"我暂停不了"（就是用户听到的那句）
08:30:08 route=native intent=media rule=media.pause     （"天猫精灵暂停"）

tts/journal.jsonl:
  08:30:04 … outcome=ok        （长回答播完）
  08:30:04 … outcome=ok        （"我暂停不了" 那句随后开播）
```

三个独立缺陷叠加，才出现用户看到的现象：

1. **"停止"落到了模型**：上一轮为防误判把裸"停止"从播放控制表里删掉了，于是"停止/别说了/安静"这类话没有意图可命中 → 送模型 → 模型只能回答"我停不了，你自己操作"。这就是用户听到的第二段话。
2. **打断没有真正生效**：原厂唤醒确实打断了我们的播报（TTS 状态回 `interrupted`），但 TtsExec 把 `interrupted` 当成"可重试失败"→ 重新入队、2 秒后再播一遍（journal 里 `attempts=1 → 2 → 3`）。这就是"没停、还在继续说"。
3. **回答太长**：499–653 字节（约 15–20 秒），给打断留下的时间窗太大。

### 12.2 修复

| # | 位置 | 改动 |
|---|---|---|
| 1 | `intent_route.c` | 新增 `stop` 意图（停止/停下/停一下/暂停/别说了/不用说了/安静/闭嘴/打住），否决词覆盖"停止线/停车/为什么"；`暂停` 从 media 移到 stop |
| 2 | `ai_worker.c` | ① 命中 `stop` 时写 `tts/control/stop`（`tts_request_stop()`，幂等）；② **播报中来了任何新指令**先写 stop 打断（`interrupt_if_speaking()`，计数器 `interrupts`），再走正常路由 |
| 3 | `tts_exec/TtsExec.java` | `interrupted` 改为**终态**（不重播）；`stopRequest` 生效后队列里剩下的项直接 `cancel`（journal 记 `kind=cancel`），不再"先播半秒再停" |
| 4 | `deepseek_provider.h` | 提示词加"默认两三句话、尽量不超过 60 字，用户要求详细才展开"（`system prompt` 603→689 B） |
| 5 | 设备 `worker.conf` | `max_tokens=300 → 200` |

### 12.3 修复后的真机证据

```
[aiw] 08:38:41 tts queued: event=…-g51 reply_bytes=177        ← 回答变短（之前的同类问题是 499）
tts/journal.jsonl:
  08:38:49 … event_id=…-g51 tts_id=5246340 outcome=interrupted dur_ms=7729 attempts=1
  08:38:53 … kind=stop_request
[aiw] 08:38:53 tts stop requested (route=native intent=stop)
[aiw] 08:38:53 route=native intent=stop rule=stop.keyword arg=stop event=…-g52 seq=53 session=1969541
```

关键点：`interrupted` 之后**没有 retry 行、没有 attempts=2**——被唤醒打断的回答不会再自己续上；
"暂停"不再进入模型（没有对应的 `route=ai` / provider 调用）。

产物：`ai_worker 369b07ffc46bc8957ad79aa775d9a968ccf20a12793b126bd4ad2606bce35fa2`、
`tts_exec.dex 426abbcdba6880bfe76a913a485e494a2f8dbda0c3161992f98cdc2a361508cb`（守卫未变 `fc1d27f2…`）。

### 12.4 仍然存在的边界

- 原厂收到"暂停"后可能回一句（例如"暂不支持该操作"）。目前守卫按 `native_allow` 放行，所以用户会听到这句短回应；
  若要求"打断时完全静默不出声"，下一步是在守卫里对 `intent=stop` 的会话直接 DROP（改动很小，等需求确认）。
- 唤醒本身会打断播报（原厂行为），这是好的；但打断后如果用户什么都不说，就只剩静音，不会有"我还在听"的提示。

### 12.5 过程教训

两次真人反馈都指向同一件事：**我只用自己生成的短句验收，没有覆盖"用户会怎么打断、怎么说停"**。
现在 host 单测里已经有 `[3c] stop / interrupt` 一组（含 `停止线是什么意思` 这种否决样本），
并且 `interrupt_if_speaking` 的判定依赖 `play.public.json` 的真实状态，不再靠猜。

### 12.6 修复过程中又踩到并修掉的一个自伤

给"队列剩余项直接 cancel"加了之后，stop 标记在**队列为空**时（用户说"停"但当时已经没在播）
不会被清掉，导致**下一条正常回答一进队列就被 cancel**（真机 `08:40:22 kind=cancel`，用户会听到"没声音"）。
修法：`drainOnce()` 在队列为空时、以及每轮 drain 结束时都清 `stopRequest/stopId`。
验证：`08:42:56 ok dur_ms=13849`、`08:43:45 ok dur_ms=10354` 连续两条回答正常播完，stop 标记不再残留。

另外把回答再压了一档：提示词"通常不超过 40 字"、`max_tokens 200 → 120`，
实测回答从 499 B（≈15-20 s）降到 153–207 B（≈10-14 s）。设备 TTS 语速偏慢，10 s 左右是目前的下限。

最终产物：`ai_worker b3c8dde4cd6d6c0b035689ae6f50fbf92630c35e2de7cd519abd1d2cac1e4ed3`、
`tts_exec.dex c947fa09d975bfc454493e00b118f21162c370718ffe9c98df4cad109dd2b2a8`。