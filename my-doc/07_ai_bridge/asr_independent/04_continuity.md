# 04 连续对话现状：到底卡在哪一层

> 本轮只做分析，没有调用任何未知接口（没有 `startTalk` / `startFullDuplexDialog` / `LocalASRManager::start`）。

## 0. 现在的实现边界

`android/conv_session.h` 的注释已经把结论写清楚（当时也是实测得出的）：

> 原厂"免唤醒续听"由服务端开关驱动 —— `StopTalk` 的 `UpdateContext` 里带
> `"duplexDialogRenew": 0`，`ContinuousDialogManager` 收到 notify 后不会再自己开一次
> `onListenStarted`。

**适用范围（T7-08 明确）**：这句结论只针对**原厂平台会话层**（`SessionManager` +
`ContinuousDialogManager` + `EOUDetector`）。它**不覆盖**"自己按住引擎级 ASR 会话"
（`LocalASRManager::start/feed`）这条路 —— 那条路要另外验证，见 `03_feasibility.md` §6。

Worker 侧的 `conv_session` 因此**只是一台状态机**（`IDLE / ACTIVE / PROCESSING / SPEAKING /
WAIT_NEXT / CLOSED`），负责：会话生命周期与 12 s 超时、把"这一句是追问还是新会话"记进日志和状态文件。
它**不持有麦克风、不驱动原厂 Native**。

## 1. WAIT_NEXT 是否仅为 Worker 内部状态？

**是。** 证据：

- 定义与迁移全在 `conv_session.c`（`cs_on_asr` / `cs_on_submit` / `cs_on_queued` / `cs_on_play_idle` / `cs_poll`）；
- 状态只写进 `ai_worker_status.json` 的 `session.state` 字段（`worker_status.c`）；
- 全仓库没有任何地方因为进入 `WAIT_NEXT` 而去调用原厂接口（`grep -n "CS_WAIT_NEXT" android/*.c` 只有状态机与状态输出）。

也就是说：**"等待 12 秒"这件事对设备完全不可见**，麦克风不会因为我们等着就开着。

## 2. 原厂 ASR 是否每轮结束都关闭录音？

**是，每轮都关。** 现场日志（`evidence/t7_04_continuity_probe.logcat`，一轮完整"唤醒 + 说话"）：

```
07:49:46.234  WakeupEngineWrapper  onWakeupCallback
07:49:46.928  AGSpeechEngineProxy  onListenStarted,684
07:49:46.934  SessionManager      onStartTalk: sessionId = 1969141, wakeupType = 0, wakeupWord=tian mao jing ling
07:49:52.463  SessionManager      onStopTalk: mStopTalkReason = 0, reason = normal
07:49:52.463  SessionManager      on stop talk, session=1969141
              ... "voiceDuration": 7268, "duplexDialogRenew": 0 ...
```

两次时间戳相差 6.2 s，`onStopTalk` 的参数里 `reason=normal`（不是打断、不是超时），
随后的会话上报里明写 `duplexDialogRenew: 0`。
另一条独立证据来自原厂符号：`EOUDetector::handleCloudASRResult` → `CloudASRManager::onEouEvent`
→ `stopListen(json*)` —— **端点判定一成立就停录**，这是设计行为，不是故障。

## 3. 12 秒等待期间麦克风是否持续聆听？

**不。** 停录之后：

- ASR 通道已 `stopListen`，`onStream` 不会再有文本（所以追问句永远到不了桥）；
- 只剩 KWS（唤醒）在跑 —— 也就是说**下一句必须先喊唤醒词**；
- Worker 的 12 s 只是"如果 12 s 内来了同一会话的 ASR，就当追问"的**期望值**，它没法把麦克风叫回来。

## 4. 是否存在原厂"保持录音会话"的合法调用入口？

按"确定性"从高到低：

| 入口 | 性质 | 证据 | 可用性 |
|---|---|---|---|
| `UpdateContext.duplexDialogRenew = 1` | 服务端下发的续期开关 | `t7_04_continuity_probe.logcat` 里当前是 0 | **最正规**，但本地无法自己发；只能等服务端下发 |
| `ContinuousDialogManager`（收到续期 notify 后自己再开 `onListenStarted`） | 原厂内部组件 | 只在上面的开关为 1 时会动 | 依赖上一行 |
| `SessionManager::onStartTalk(int)` / `onStopTalk(int)` | 会话层入口 | `sym`：`onStartTalk`/`onStartTalk(…4 args)`/`onStopTalk`/`onStopTalk(…, _WakeEndInfo_*)` | 可调，但**会重新走一遍原厂 NLU/CDM**，且是否被 CDM 状态机接受未验证 |
| `startFullDuplexDialog` | 上一轮实测 | 见 `03_feasibility.md` §5 方案 C：调用后返回值被忽略，虚拟表槽 `+0x08` 的返回值没有被任何调用方使用 | **不可靠** |
| `LocalASRManager::start(...)` + `feed(const char*, int, bool, int, int)` | **引擎级**入口 | `sym` | 可绕过 NLU/CDM，但要自己喂 PCM（见第 5 条） |

## 5. 能否在不改原厂 NLU/CDM 的情况下保持 ASR 会话？

分两层回答，这个区分很重要：

| 层 | 能否 | 原因 |
|---|---|---|
| **引擎级**（`LocalASRManager` / `CloudASRManager`） | **能** | 识别本身不需要 NLU：`start` → `feed` → `onLocalASRResult`/`handleCloudASRResult` 就能出文本；NLU 是下游 |
| **会话级**（"说完一句继续听下一句"） | **不能** | 开/关麦的裁决权在会话层（`SessionManager` + `EOUDetector` + `ContinuousDialogManager`），续期开关来自服务端 |

所以在**不改原厂 NLU/CDM** 的前提下，想做连续对话只有一条路：
**自己按住引擎级会话**（方案 A/4.2 的变体），把每轮文本仍然经 `onStream` 或直接喂给 Worker。
这条路的前提是能稳定 `dlopen` + 构造 `AGSpeechConfig`（见 `03_feasibility.md` §4），
属于**下一轮的实验**，本轮不做。

**口径提醒（T7-08 修正）**：`duplexDialogRenew = 0` 证明的是
**当前原厂"平台会话"没有续期**；它**不能**推出
"引擎级会话（`LocalASRManager::start/feed`）永远无法独立维持录音" —— 两者不是同一层，
而且引擎级这条路本轮根本没有验证过。别把一条服务端开关当成对全部实现方式的判决。

## 6. 现有 TTS Guard 是否支持播报期间打断？

**不支持，而且它不需要支持。** 事实：

- `libtg_ttsguard.c` 只挂了两处：`TtsManager::playTts`（后置读返回值）与
  `TtsManager::onTtsStart`（前置放行/丢弃）。**没有任何 stop / cancel / interrupt 钩子**；
- 原厂自己的"唤醒即打断播报"路径没被我们拦（我们只拦"原厂主动回答的 TTS 起点"），
  所以用户喊唤醒词仍然能停掉原厂播报；
- 打断逻辑在 Worker 侧：新一句话到达时如果在播报，`ai_worker.c` 会
  `st.interrupts++` 并 `tts_request_stop(w, "new utterance")`（`play.public.json` 里 `"playing"` 为真时）；
- 实测证据：`evidence/t7_04_interrupt_fix.log`（修复前 interrupted 会重播 3 次；
  修复后 `interrupted` 视为终态，`stop_request` 走 `route=native intent=stop`）。

所以结论是：**Guard 只管"谁能开口"，打断由 TTS 队列 + 原厂唤醒路径负责**。
如果将来要做"AI 播报中间被用户话音直接打断（不需要唤醒词）"，那需要的是
`TtsManager` 的 stop 入口 + 常开 ASR，属于方案 A 的范畴。

## 7. 一句话总结

> 连续对话卡在**原厂平台会话续期**这一层（服务端 `duplexDialogRenew` + EOU 停录），
> 不在 Worker，也不在 TTS Guard。
> 绕过它有两条路：等服务端下发续期，或者自己按住**引擎级** ASR 会话
> （后者需要先完成本地引擎的独立化，而且与"平台会话能否续期"是两个独立的问题）。
