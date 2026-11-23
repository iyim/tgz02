# T8-15 连续对话主链路（一次唤醒、多轮、可停止）

- 仓库 `iyim/tgz02`，分支 `main`，基线 `185a64b69f8dbc1faeac9b9d05afe9927c0eb755`
- 设备 TG-Z02（`AILABS_S1L`，Android 8.1 / SDK 27，`armeabi-v7a`，`192.168.1.9:5555`）
- 本轮范围：**会话层 + Worker + 观察通道**。不接管原厂唤醒/KWS/ASR，不碰 `:core`，
  不重启 `smartapp:core`，不部署到设备（真机验收排到 T8-15D）
- 结论摘要：**Worker 侧连续对话主链路已完成并验证（一次唤醒 5 轮，host 端到端 38 项断言）**；
  设备侧最后一环（原厂是否续期聆听）今日用只读探针重新测到 `duplexDialogRenew=0` +
  每轮 `exitTalk`，这是 T8-15D 必须先解决/明确的问题，本轮不掩盖、不冒充。

---

## 一、任务书三项要求 → 落地情况

| 任务书 | 本轮落地 | 证据 |
|---|---|---|
| 第一步：打通事件与状态生命周期（唤醒成功、退出、休眠；`ctx_valid` 联动；旧 TTS idle 不误杀新一轮） | ✅ 新增 `factory talk tap`（只读 logcat 观察原厂 `onStartTalk/onListenStarted/onStopTalk/exitTalk`）→ `sc_on_factory_*`；`ctx_valid` 与 `conv_context` 真实内容每拍对齐；跨轮迟到 idle 仍按 `prev_request` 过滤 | 单测 `[9][10][11]`；端到端 A/B |
| 第二步：免唤醒的下一轮聆听（TTS 结束后重新进入聆听，接收原厂后续 ASR 结果作为同一会话下一轮） | ✅ 续听窗口（`relisten_ms`，默认 12 s）+ 轮次语义（`round` / `followup_rounds` / `asr_session` 分离）；播报 idle → `FOLLOWUP` 立即装填窗口；窗口内的新 final（即使原厂给了**新 ASR 会话 id**）算同一对话下一轮 | 单测 `[1][2]`；端到端 A（5 轮、`opens=1`、`followup_rounds=4`） |
| 第三步：完整退出机制（停止、超时、异常、重复事件） | ✅ 语音"停止/退出"→ `sc_on_session_end`（原厂照常执行它自己的动作）；续听窗口过期 → `CLOSING`；`max_rounds` 上限；死信闩锁 → `force_close`；重复 final/重复 submit 只计数 | 单测 `[5][6][7][8]`；端到端 D/E |

**本轮没有做**：没有尝试原厂 CDM 结构体、没有调 `startTalk`、没有替换/绕过原厂 KWS 与 ASR。

---

## 二、改动清单

### 2.1 新增

| 文件 | 作用 |
|---|---|
| `android/talk_tap.h` / `talk_tap.c` | **原厂会话事件观察**：增量读 `logcat -s SessionManager:V` 的输出文件，解析 `onStartTalk`（sessionId / wakeupType / wakeupWord）、`onStopTalk`（mStopTalkReason）、`onListenStarted`、`onStopListen`、`exitTalk`。纯逻辑 + 只读文件，无 hook、无线程、无写操作；半行不消费、文件截断自动重置 |
| `tests/t8_15_continuous_dialog_unit_test.c` | 12 组、141 断言：5 轮连续对话（同/异 ASR 会话）、迟到 idle、重复 final、轮次上限、停止、窗口过期、窗口边界、原厂事件语义、tap 行解析（含**真机实测行**）、tap 增量读取、`continuous=0` 旧语义 |
| `tests/run_t8_15_host_tests.ps1` | 单测构建/运行脚本（日志落 `evidence/t8_15_unit_test.log`） |
| `tests/run_t8_15_continuous_dialog_tests.ps1` | **端到端**：跑真 `ai_worker.exe`，逐轮追加 `asr_final`、按真实时序发布 `play.public.json`（playing→idle），验证 5 轮单对话/上限/停止/tap 开关 |

### 2.2 修改

| 文件 | 改动 |
|---|---|
| `android/session_ctrl.h/.c` | 新增 `relisten_ms` / `max_rounds` / `continuous`；`round`、`max_round_seen`、`relisten_armed`、`asr_session`（原厂每轮会话 id 与"对话身份"分离）、`followup_rounds`、`rounds_total`、`session_ends`、`round_cap_hits`、`wake_events`、`talk_stops`、`listen_starts`、`exit_talks`、`end_reason`；新增 `sc_on_factory_wake/listen_start/talk_stop/exit_talk`、`sc_on_session_end`、`sc_set_ctx_valid`、`sc_is_relisten_armed`、`sc_round`；`sc_poll` 统一走 `sc_end_dialog()` 收束 |
| `android/ai_worker.c` | `factory_tap_poll()`（tap → 状态机）、`session_lifecycle_poll()`（`sc_poll` + 对话收束后处理：`ctx_valid` 归零、可选清上下文）、native `stop/exit` → 结束对话；新配置项接入；状态上报新增字段 |
| `android/ai_worker.h` | 新配置：`continuous_dialog`(1)、`continuous_relisten_ms`(12000)、`continuous_max_rounds`(8)、`session_ctx_clear_on_close`(0)、`factory_talk_tap`(0)、`factory_talk_log` |
| `android/worker_conf.c` | 新键：`continuous_dialog_enabled` / `continuous_relisten_ms` / `continuous_max_rounds` / `session_ctx_clear_on_close` / `factory_talk_tap_enabled` / `factory_talk_log` |
| `android/worker_status.h/.c` | `session_ctrl` 增加连续对话字段；新增 `talk_tap` 对象（lines/recognized/wakes/listen_starts/talk_stops/listen_stops/exit_talks/ignored/malformed/resets/last_session）；输出缓冲 8 KB → 12 KB |
| `android/run_ai_worker.sh` | 新动作 `start-tap` / `stop-tap` / `tap [N]`（只是 `logcat -v time -s SessionManager:V`，不 hook、不碰 `:core`）；默认启动流程**不**自动开 tap（行为不变） |
| `android/build_t7_05.ps1` | `WorkerSources` 增加 `talk_tap.c` |
| `tests/run_t8_14_1_skill_tests.ps1`、`run_t8_14_2_device_status_tests.ps1` | 链接源增加 `talk_tap.c` |
| `tests/t8_13_session_ctrl_unit_test.c` | 第 `[10]` 组显式用 `continuous=0` 固定 T8-13 旧语义（新默认是续听窗口），**断言未被削弱** |

### 2.3 默认值 = 行为

| 配置 | 默认 | 关闭/开启的含义 |
|---|---|---|
| `continuous_dialog` | **1** | 1 = 播报结束后装填续听窗口、窗口内新 final 算同一对话下一轮；0 = 回到 T8-13（新 ASR 会话 = 新对话） |
| `continuous_relisten_ms` | 12000 | 续听窗口长度（播报结束起算） |
| `continuous_max_rounds` | 8 | 单对话上限；触达后**先收束再用这一句开新对话**，不丢用户话 |
| `session_ctx_clear_on_close` | **0** | 0 = 保持 T7-01 的跨唤醒上下文（既有行为不变）；1 = 对话结束即清空上下文 |
| `factory_talk_tap` | **0** | 关闭时 `last_wake_ms`/`device_listening` 保持 0（"未接入"语义），不猜 |

---

## 三、关键设计（口径先行，避免"看起来像"）

### 3.1 三个层次的会话，不许混为一谈

| 层 | 谁拥有 | 本轮处理 |
|---|---|---|
| 原厂 KWS/唤醒 | 原厂（不改） | 只**观察** `onStartTalk`（唤醒成功 + sessionId） |
| 原厂 ASR 会话（每轮一个 sessionId） | 原厂（不改） | `asr_session` 字段跟踪；不是我们的"对话" |
| 我们的**对话**（一次唤醒后的多轮） | `session_ctrl` | `session` = 首轮 ASR 会话 id 作身份；`round` = 第几轮 |

### 3.2 轮次规则（`sc_on_session_text`）

| 当前状态 | 事件 | 结果 |
|---|---|---|
| `IDLE` / `CLOSING` / `WAKE_PENDING` | final | 新对话：`opens++`、`round=1`、`session/asr_session` = 本句会话 |
| `FOLLOWUP`（续听窗口，`continuous=1`） | final（会话 id 新旧都算） | **同一对话下一轮**：`round++`、`followup_rounds++`；`session` 不变、`asr_session` 更新；上下文不动 |
| 其它状态 + 同 ASR 会话 | final（修订） | 同一轮修订：`round` 不变、`rounds_total` 不变 |
| 其它状态 + 不同 ASR 会话 | final | 沿用 T8-13：新 ASR 会话 = 新对话（`continuous=0` 时唯一路径） |
| 任意 | 同 `event_id` 重复 | `duplicate_events++`，`round` 不变 |
| `FOLLOWUP` 且 `round+1 > max_rounds` | final | `round_cap_hits++`、`session_ends++`、`end_reason="max rounds reached"`，再用本句开新对话（`round=1`，用户的话不丢） |

### 3.3 原厂事件映射（tap → 状态机）

| 原厂日志行 | 判定 | 对状态机的影响 | 明确**不**做的事 |
|---|---|---|---|
| `onStartTalk: sessionId = N, wakeupType = W` | 唤醒成功 | `wake_events++`、`last_wake_ms`、`device_listening=1`；无对话时 → `WAKE_PENDING`；对话中 → 只更新事实，**不重置轮次** | 不建立/不续期原厂会话 |
| `onListenStarted` | 录音开始 | `listen_starts++`、`device_listening=1` | 不当成 ASR 结果 |
| `onStopTalk: mStopTalkReason = R` | 本轮 EOU（**每轮都有**） | `talk_stops++`、`device_listening=0` | **不结束对话**（对话在续听窗口里继续等） |
| `exitTalk ... exit=0` | 原厂平台会话退出（**每轮都有**） | `exit_talks++`、`device_listening=0` | **不结束对话** |

> 注：`onStopTalk` / `exitTalk` 之所以不能当"对话结束"，是按真机日志的时序确定的
> （见 §六，每轮：`onStartTalk` → `onStopTalk` → 原厂回答 → `exitTalk`），
> 拿它们关对话会让连续对话在第一轮就断。

### 3.4 `ctx_valid` 与上下文生命周期

- `ctx_valid` 不再是一个永不赋值的字段：每个主循环拍由 Worker 按
  `(会话未结束) && (conv_context 有历史)` 同步；对话收束（`sc_end_dialog`）时强制归零。
- 上下文本身默认**不清**（`session_ctx_clear_on_close=0`），保持 T7-01 已验证的跨唤醒多轮；
  需要"会话结束即清"时把该开关置 1，由 `session_lifecycle_poll()` 调 `cv_clear()`。
- 端到端 A 证明：5 轮之后 `context.messages=10`（5 问 5 答都在），`ctx_valid=1`。

---

## 四、测试结果（全部 host，无网络、无设备）

| 套件 | 结果 |
|---|---|
| `t8_15_continuous_dialog_unit_test`（会话层 + tap 解析，12 组） | **141 pass / 0 fail** |
| `run_t8_15_continuous_dialog_tests.ps1`（真 `ai_worker.exe` 端到端，5 用例） | **38 pass / 0 fail** |
| `run_t8_13_host_tests.ps1`（会话控制 229 + 旧会话 25 + R13 211 + 退出意图 82） | **547 pass / 0 fail** |
| `run_t8_14_1_skill_tests.ps1`（技能调度 + 幂等 + 原厂路段回归） | **47 pass / 0 fail** |
| `run_t8_14_2_device_status_tests.ps1`（device.status + 双闸 + 降级） | **45 pass / 0 fail** |

### 4.1 端到端 A（核心验收，host 版）

场景：1 次原厂唤醒（tap 里 1 条 `onStartTalk`）+ 5 条 `asr_final`，**每轮原厂都给新 ASR 会话 id**
（`2070101..2070105`），每轮之间按真实时序发布 `play.public.json`（playing → idle）。

结果（摘自状态文件）：

```
session_ctrl: state=FOLLOWUP  round=5  opens=1  followup_rounds=4  rounds_total=5
              max_round_seen=5  ctx_valid=1  relisten_armed=1
              wake_events=1  talk_stops=5  interrupts=0  stale_callbacks=0
              end_reason=""   device_listening=0
counters:     events_processed=5   route.ai=5   tts_queued=5
context:      messages=10  turns=5
talk_tap:     recognized=7  last_session=2070101
```

- **一次唤醒、5 轮、`opens=1`**：没有第二次唤醒参与，5 轮都在同一个对话里。
- `interrupts=0`：每轮都等到自己的播报结束，没有把"回答未播完就来的下一句"误判成打断。
- `device_listening=0`：这是**观察值**（tap 看到 EOU/exitTalk），不是我们猜出来的"仍在聆听"。

### 4.2 其它用例

| 用例 | 断言要点 |
|---|---|
| B（tap 关闭） | 3 轮照常；`wake_events=0`、`last_wake_ms=0`、`device_listening=0`、`talk_tap.enabled=0` —— 关闭时不编造任何观察值 |
| C（`continuous=0`） | `opens=3`、`followup_rounds=0` —— 旧语义完整保留，3 条事件全部被回答 |
| D（`max_rounds=3`） | 5 条 utterance 全部回答；`round_cap_hits>=1`、`opens>=2`、任何对话 `round<=3` |
| E（语音停止） | 第 2 句"停止播放"走原厂（`route.stop>=1`）且 `end_reason="user stop ..."`、`round=0`、`state=IDLE`；第 3 句开新对话（`opens>=2`、`round=1`） |

---

## 五、ARM32 构建（NDK r21e，`-O2 -Wall -Wextra`，任一 warning 即失败）

| 产物 | 大小 | SHA256 |
|---|---|---|
| `android/out/ai_worker` | 273932 B | `562bc7198f9bcf1ff3d75a4e43419409468f7baf77e8c70364c874d5dd0bd91c` |
| `android/out/libtg_ttsguard.so` | 23008 B | `6d989d8d3ea4e89491dd5348c1b1e70a965b62626fc01acf062e2d8dd983b842`（与 T8-14.1D 一致 = 未受影响） |

- 编译输出：**0 warning / 0 error**，ELF32 / ARM / 动态链接（`build_t7_05.ps1` 自带 readelf 校验）。
- 构建日志：`evidence/t8_15_ndk_build.log`。

---

## 六、真机只读探针（本轮唯一一次设备动作：读日志 + 放音，无部署）

目的：先证明"原厂事件观察通道"是真的能用，再谈连续对话能不能成立。

做法：`adb logcat -v time -s SessionManager:V AG-speech_engine:V AGSpeechEngineProxy:V` 抓 45 s，
期间用 PC 扬声器播放唤醒音频（`wake_time_only.wav`），**不部署、不重启任何进程**。

### 6.1 抓到的真实行（节选，原样）

```
20:38:35.886 D/AGSpeechEngineProxy(30807): onListenStarted,696: 0, tian mao jing ling, 天猫精灵, 0.910482, ...
20:38:35.900 D/SessionManager(30807): JNI_AILABS SessionManager.cpp:onStartTalk:255 [30906] sessionId = 1969684, wakeupType = 0, wakeupWord=tian mao jing ling, needLight=0, needVoice=0
20:38:38.707 D/SessionManager(30807): JNI_AILABS SessionManager.cpp:onStopTalk:697 [30906] onStopTalk, mStopTalkReason = 0, reason = normal
20:38:42.668 D/SessionManager(30807): ... onStopTalk:842 ... send end frame with payload:{ "action": "UpdateContext", "payload": { ... "listenDuration": 5700, "voiceDuration": 5700, "duplexDialogRenew": 0, ...
20:39:07.213 D/SessionManager(30807): ... onStream:641 ... text = 天猫精灵现在几点了, isFinished = 1 ...
20:39:12.307 D/SessionManager(30807): JNI_AILABS SessionManager.cpp:exitTalk:1176 [30870] exit talk, input session=1969699, real session=1969699 exit=0
```

- 解析器对这几行**都**能命中（`tt_parse_line` 的断言直接用真机行文本，见单测 `[10]`）。
- 结论 1：**唤醒成功事件是可观察的**，且带 sessionId —— T8-13 遗留的"唤醒事件没接入"从此有真实来源。
- 结论 2：**平台会话每轮都以 `exitTalk` 收尾，且 StopTalk 的 `duplexDialogRenew` 恒为 0**
  （本轮三次会话：`listenDuration/voiceDuration` = 5700 / 3780 / 3140，`duplexDialogRenew` 全 0）。

### 6.2 由此得到的硬结论（必须写清，不许含糊）

> 原厂"本轮说完 → 回答 → 退出会话"是**每轮都发生**的；`duplexDialogRenew=0` 意味着这一层**不续期**。
> 因此**"TTS 播报结束后原厂是否还在听"不是我们能从 Worker 侧决定的**：
> 若原厂不续期，就不会有下一轮的 `asr_final` 送达，续听窗口只能到期收束
> （这就是 `end_reason="relisten window expired"` 的诚实结局）。

本轮**没有**做也不打算做：改 `:core`、注入 `GenieApi::setFullDuplexDialogRenewDuration`、
构造 `CDM` 结构体、调 `startTalk`、自己开引擎级 ASR。这些属于 T8-15D 的选项，需要审阅决定。

### 6.3 设备状态（本轮前后一致，未部署）

```
processes:  tgb_bridge 2586 / ai_worker 6356 / smartapp:core 30807
worker bin: 389b8b310f06bf2ac33c792cbc1fc4646424ce705fa3ba9e0504c9d7ef40fadf  (仍是 T8-14.2 构建)
worker.conf: factory_talk = 0 行, continuous = 0 行  (默认值生效、tap 关闭)
```

证据：`evidence/t8-15/device_state_readonly.txt`、`device_talk_tap_probe.log`（345 行原始捕获）、
`device_talk_tap_extract.txt`、`device_duplex_dialog_renew.txt`。

---

## 七、NOT OBSERVED（不冒充）

1. **真机上"5 轮免唤醒"未发生也未声称发生**：本轮不部署，且 §6.2 表明原厂不续期时不会有第二轮 final。
2. **"不含唤醒词的语音是否被原厂忽略"本轮未单独证明**：三次播放里第二次、第三次音频本身含唤醒词
   （ASR 识别为"天猫精灵现在几点了"），所以不能拿它当反证。该项留给 T8-15D 用 `s_time.wav`
   （纯问句、无唤醒词）单独测。
3. **`duplexDialogRenew` 非 0 时的行为**：未测（需要改原厂参数，本轮禁止）。
4. **设备休眠事件**：未桥接（休眠时应当收束对话，目前只有超时兜底）。

---

## 八、T8-15D 真机验收计划（待审阅）

前置：部署本轮 `ai_worker`（`562bc719…`）+ `start-tap` + `worker.conf` 打开
`factory_talk_tap_enabled=1`、`continuous_dialog_enabled=1`。

| 步骤 | 动作 | 判定 |
|---|---|---|
| P0 | `start-tap`，看 `tap` 文件里是否出现 `onStartTalk` | 观察通道通（否则标签/权限问题，先修） |
| P1 | 唤醒 + 问一句（触发自有技能或模型） | `wake_events=1`、`round=1`、TTS 播报、`exitTalk=1` |
| P2 | **不喊唤醒词**，直接说第二句（`s_time.wav`） | 关键分叉：<br>• 若出现新 `asr_final` → `round=2`、`followup_rounds=1`（免唤醒成立）<br>• 若无 final → `relisten_armed=1` 到点后 `end_reason="relisten window expired"`（原厂没续期，事实成立、不冒充） |
| P3 | 若 P2 成功：连做 5 轮 | `round=5`、`opens=1`、`followup_rounds=4`、`ctx_valid=1`、上下文字数随轮次增长 |
| P4 | 说"停止" | `end_reason` 含 `user stop`、`round=0`、`state=IDLE`；原厂音量/媒体动作照常 |
| P5 | 等 12 s 不说话 | `timeouts+1`、`end_reason="relisten window expired"`、回 IDLE |
| P6 | 再唤醒一次 | `opens+1`、`round=1`（全新对话）；`device_listening` 由 tap 驱动为 1 |
| P7 | 回归 | 音量 / 暂停 / 停止 / 时间 / 技能 均与原厂或 T8-14 行为一致；`:core` pid 不变 |

**P2 是整轮验收的分水岭。** 若 P2 无 final，需要在下面三条里选一条（都需要你点头，本轮不擅自做）：

1. **服务端侧**：等 `duplexDialogRenew` 下发为 N（最正规，我们只等）。
2. **原厂参数侧**：在已有 TTS 守卫（`:core` 内既有 hook）里调导出的
   `GenieApi::setFullDuplexDialogRenewDuration(N)`，把"我支持续期多久"告诉服务端，
   观察 StopTalk payload 是否变成 `duplexDialogRenew: N`。**风险**：语义是原厂参数，需先做唤醒回归。
3. **引擎级 ASR 自持**：自带 `LocalASRManager::start/feed` 会话（等于部分替换 ASR）
   —— 与"保留原厂 ASR"约束冲突，只作为最后手段。

---

## 九、遗留与已知噪声（不影响本轮判定，如实记录）

1. `duplicate_events` 会随 `play_state_poll` 的轮询不断累加：TtsExec 的 `play.public.json` 在空闲态
   保持不变，Worker 每 10–50 ms 读到同一条 idle 并计一次 duplicate（host 5 s 内 545 次）。
   这是**观测量被放大**，不影响状态迁移；建议下一轮做"同一快照只处理一次"的边缘去重
   （和之前真机上 `stale_callbacks=2397` 是同一类噪声）。
2. `PROCESSING` 仍无通用超时（T8-13.5 有意不杀长耗时模型请求）；连续对话下靠 `SPEAKING`
   与续听窗口两级兜底。
3. 设备休眠事件未桥接：休眠时对话靠超时收束（P5 覆盖）。
4. `sc.cfg.followup_timeout_ms` 仍沿用 `session_timeout_ms`（旧口径），续听窗口现在独立为
   `continuous_relisten_ms`；两者关系在报告与本文件 §2.3 已写清。
