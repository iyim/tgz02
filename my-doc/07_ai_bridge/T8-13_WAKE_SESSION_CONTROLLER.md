# T8-13 — 基于原厂唤醒事件的自有会话控制中心

基线 `0c32c1aa`（T8-12.24）。任务定位（§一）：**完全沿用原厂唤醒机制，不替换 KWS/ASR**；接管的是原厂唤醒成功之后的会话生命周期管理。

## 一、代码审计：真实事件入口清单（实施前逐点核实）

| 事件 | 真实来源 | 接入状态 | 证据位置 |
|---|---|---|---|
| ASR final | events.jsonl `rec=asr_final`（解析层强校验，非 asr_final 一律拒收） | ✅ 已接入 | `event_reader.c:402/409`，消费点 `ai_worker.c` 主循环 |
| AI 请求创建 | `uttq_pop_to_pend()` 建 pend（route=ai 唯一建请求点） | ✅ 已接入 | `ai_worker.c` `uttq_pop_to_pend` 尾部 |
| AI 请求成功 | `provider_attempt` → `rep.status==T6B_P_OK` 且 TTS 已入队 | ✅ 已接入（经 `sc_on_tts_queued`） | `ai_worker.c` provider 成功分支 |
| AI 请求失败 | provider timeout / error / 死信放弃（rc==-3） | ✅ 已接入 | timeout/error 分支 + 死信分支 |
| AI 请求超时（重试中） | `T6B_P_TIMEOUT` 计数点 | ✅ 已接入（`sc_note_timeout`，不迁移状态） | 同上 |
| TTS 开始/结束/失败 | TtsExec 发布的 `<tts_queue>/play.public.json`（`state`/`event_id`/`last_outcome`，tmp+fsync+rename 原子写） | ✅ 已接入（`play_state_poll` 新增字段解析） | `TtsExec.java:writePlayState()`，`ai_worker.c play_state_poll` |
| 用户打断 | `interrupt_if_speaking()`（播报中新 utterance → `tts_request_stop`） | ✅ 已接入 | `ai_worker.c interrupt_if_speaking` |
| 原厂唤醒成功事件 | `SessionManager::onStartTalk`（libtg_wakeinfo 只落 wakeinfo.jsonl 快照，**无 session 关联**，且 Worker 从不读取） | ❌ **未接入** | `libtg_wakeinfo.c:62-65`；快照↔session 关联从未实现（t7_05r2 报告 §5：快照上机真、关联做不到） |
| ASR 开始 / ASR 失败 | hook 只转发 isFinished=1 的 final | ❌ 未接入 | `libtg_hook.c tg_onstream_cb` |
| 原厂会话退出（onStopTalk/exitTalk） | `:core` 内部回调，未桥接到 Worker | ❌ 未接入 | T8-02 报告 §6 明确"本轮不新增 onStopTalk hook" |
| 设备休眠事件 | 未桥接 | ❌ 未接入 | — |

**接入原则（§三）**：未接入的事件一律不伪造 —— `sc_note_wake()` 实现保留但生产代码不调用，`last_wake_ms` 恒 0、`device_listening` 恒 0、`WAKE_PENDING` 状态不可达（单测 [8] 断言锁定）。

## 二、实现

### 2.1 新模块 `session_ctrl.h/.c`（纯逻辑、固定内存、host 可单测）

状态（§二，名称与既有 `conv_session` 区分）：

```
IDLE ──(asr final, 新session)──► LISTENING ──(submit, route=ai)──► PROCESSING
 ^                                   │                              │
 │                                   │(失败/死信/兜底窗口)            │(tts queued)
 │                                   ▼                              ▼
 │  (下一拍 poll)                LISTENING ◄──────────────────  SPEAKING
 │                                   ▲                              │
 │  (下一拍 poll)                     │(interrupt / interrupted)     │(idle, outcome=ok)
 CLOSING ◄──(deadline, 无活动请求)────┴──────────── INTERRUPTED ─────┤
 ^  └─► IDLE(下一拍)                                                 └──► FOLLOWUP
 (WAKE_PENDING：保留状态，原厂唤醒事件接入前不可达)
```

关键设计点：

1. **请求身份与迟到回调隔离**：`request`（当前）+ `prev_request`（被顶替/清场的上一个）。新会话建立或新请求顶替时旧 id 移入 `prev_request`；其迟到的播放收尾/结果回调按 `prev_request` 过滤为 `stale_callbacks++`，绝不污染新会话（§四.6/7）。
2. **收尾即终结**：`sc_on_play_state(idle)` 一次调用同时完成"迁移 FOLLOWUP/INTERRUPTED + 终结请求"，旧回调此后天然按 stale 过滤。
3. **无 TTS 队列的兜底**：`tts_queue` 未配置时没有 playing/idle 事件，`sc_on_request_result(ok)` 直接回 LISTENING 并挂超时窗口，防止永久卡 PROCESSING（真实场景，非猜测）。
4. **CLOSING 是可观测的瞬时态**：`sc_poll` 每拍只走一步（deadline→CLOSING，下一拍→IDLE），外部可以观察到"正在关闭"。
5. **FOLLOWUP 语义分离（§五）**：`ctx_valid`（模型上下文有效）与 `device_listening`（原厂聆听）是两个独立字段；FOLLOWUP 期间 `device_listening` 恒 0 —— 原厂每轮 final 后即停录（`duplexDialogRenew=0`，真机证据 `t7_04_continuity_probe.logcat`），不冒充免唤醒聆听。
6. **重复事件**：同会话同 `event_id` 的 final、同请求 id 的重复 submit → `duplicate_events++` 且不改变状态。

### 2.2 `ai_worker.c` 接入点（全部是真实事件，无定时器模拟）

| 接入点 | 调用 |
|---|---|
| `uttq_pop_to_pend` 建 pend | `sc_on_session_text` + `sc_on_submit` |
| provider timeout/error 分支 | `sc_note_timeout` |
| 死信放弃分支（rc==-3） | `sc_on_request_result(ok=0)` |
| `tts_enqueue` 成功 | `sc_on_tts_queued` |
| `play_state_poll` 读 play.public.json | 解析 `event_id`/`last_outcome` → `sc_on_play_state` |
| `interrupt_if_speaking` | `sc_on_interrupt` |
| 主循环 0.8 段 | `sc_poll`（每拍） |
| `t6b_worker_run` 初始化 | `sc_init`（超时沿用 `session.timeout_ms`） |

### 2.3 观测（§七）

`ai_worker_status.json` 新增 `session_ctrl` 对象（只增键，不改既有键）：

```json
"session_ctrl": {
  "enabled": 1, "state": "FOLLOWUP", "session": "1969400",
  "request": "t6-30807-1969400-g1", "request_active": 0,
  "last_wake_ms": 0, "last_final_ms": 1795412345678,
  "last_final_event": "t6-30807-1969400-g1",
  "last_transition": "SPEAKING->FOLLOWUP (playback idle)",
  "transitions": 3, "opens": 1,
  "stale_callbacks": 0, "duplicate_events": 0,
  "timeouts": 0, "interrupts": 0, "closes": 0
}
```

`last_wake_ms` 恒 0 即"唤醒事件未接入"的可观测证明。`last_transition` 保留完整迁移原因字符串。状态迁移只在真实业务事件时发生，无逐行调试输出。

## 三、测试结果（§八）

### 3.1 新增主机单测 `tests/t8_13_session_ctrl_unit_test.c`（81 断言全 PASS）

覆盖任务书 §八.测试 1-10 逐项：

1. 正常完整生命周期（final→submit→queued→idle→FOLLOWUP→超时关闭）
2. 连续两次独立唤醒（新会话清场；含"超时关闭后同 session id 重新说话 = 新会话"语义）
3. PROCESSING 中新 submit 顶替旧请求 + 旧回调 stale 过滤
4. SPEAKING 中被打断 → INTERRUPTED（interrupted 终态化）
5. 旧请求晚到：被顶替播放的 idle 回调被 `prev_request` 过滤（返回 0，状态不迁移）
6. 重复 ASR final（同会话同 event_id 丢弃；同会话修订接受）
7. Provider 超时计数（不迁移状态）+ 死信放弃 → LISTENING + LISTENING 超时关闭
8. 未接入事件不冒充（WAKE_PENDING 不可达、`last_wake_ms==0`、`device_listening==0`）
9. Worker 状态清理（force_close → CLOSING → IDLE，请求清空）
10. FOLLOWUP 边界（`device_listening==0`；下一轮必须新 session）
11. `sc_json_str` 对 TtsExec `JSONObject.toString(2)` 真实格式的字段提取（含转义、数字值拒绝）
12. 观测计数与迁移原因可见性

### 3.2 全量回归（`tests/run_t8_13_host_tests.ps1`）

| 套件 | 结果 |
|---|---|
| t8_13_session_ctrl_unit_test | pass=81 fail=0 |
| t7_04_session_unit_test（conv_session 未动） | pass=25 fail=0 |
| t8_02_nlu_takeover_unit_test（R13/R13-01 未动） | pass=211 fail=0 |
| t8_12_20_exit_route_unit_test（退出意图未动） | pass=82 fail=0 |
| **合计** | **pass=399 fail=0，0 warning 0 error** |

### 3.3 ARM32 NDK 构建（r21e，-O2 -Wall -Wextra）

| 产物 | 大小 | sha256（前 16） | 结果 |
|---|---|---|---|
| `ai_worker` | 241224 B | `0a2f0fcaeea0cdd5` | 0 warning 0 error，ELF32/ARM |
| `libtg_ttsguard.so` | 23008 B | `6d989d8d3ea4e894`（源未改） | 0 warning 0 error |
| `libtg_hook.so` | 125124 B | `227c92aadf601c10`（源未改，R13 未动） | 0 warning 0 error |
| `tg_injector` | 81044 B | `8c55d7e7c7c6b9cd`（源未改） | 0 warning 0 error |

证据：`evidence/t8_13_host_test.log`、`evidence/t8_13_ndk_build_worker.log`、`evidence/t8_13_ndk_build.log`。

## 四、修改文件清单

```
android/session_ctrl.h          新增    状态机头文件（状态/事件/观测字段定义）
android/session_ctrl.c          新增    状态机实现（纯逻辑，293 行）
android/ai_worker.c             +37 -2  接入 8 个真实事件点 + 状态同步
android/worker_status.h         +22     session_ctrl 观测字段
android/worker_status.c         +24 -1  session_ctrl JSON 序列化
android/build_t7_05.ps1         +1      ai_worker 源列表加 session_ctrl.c
tests/t8_13_session_ctrl_unit_test.c  新增  81 断言
tests/run_t8_13_host_tests.ps1  新增    套件 runner（含 3 组回归）
evidence/t8_13_host_test.log    新增
evidence/t8_13_ndk_build.log    新增
evidence/t8_13_ndk_build_worker.log  新增
my-doc/07_ai_bridge/T8-13_WAKE_SESSION_CONTROLLER.md  本报告
```

未改动（边界核实）：`conv_session.c/h`（既有状态机保持原样并行运行）、`nlu_takeover.c/h`（R13/R13-01）、`intent_route.c/h`（路由）、`utterance_gate.c/h`、`hook_agent/*`、`skill_dispatch.c/h`、`TtsExec.java`。

## 五、尚未解决 / 需真机验证

### 5.1 未接入的事件（本轮明确不做，标记保留）

1. **原厂唤醒成功事件**：需要把 `libtg_wakeinfo` 的快照采集升级为"带 sessionId 的事件桥"（`onStartTalk` 的 sessionId 在 logcat `SessionManager.cpp:onStartTalk:255` 可见，快照里无）或新增一个只读转发点。接入后 `sc_note_wake()` 一行调用即点亮 `WAKE_PENDING` 与 `device_listening`。
2. **原厂会话退出（onStopTalk/exitTalk）与设备休眠**：接入后映射到 `sc_force_close`。
3. **ASR 开始/失败事件**：hook 目前只转发 final。

### 5.2 真机验证步骤（审查通过后执行）

1. 部署新 `ai_worker`（`0a2f0fca…`，无需重注 hook —— `libtg_hook.so` 未变）；确认 `tgb_bridge` 与 TtsExec 在跑。
2. 完整生命周期：唤醒 → "天猫精灵给我讲一个笑话" → 检查 `session_ctrl.state` 走 LISTENING→PROCESSING→SPEAKING→FOLLOWUP，`last_transition` 逐步可见。
3. 连续两次独立唤醒：`opens` 递增、旧请求清场。
4. 打断：播报中说新指令 → `interrupts` 递增、state=INTERRUPTED。
5. 超时：FOLLOWUP 等 12s → CLOSING → IDLE，`closes` 递增。
6. 原厂路由回归：音量/time 指令照常 route=native，`session_ctrl` 不影响路由。
7. `last_wake_ms` 全程为 0（确认未冒充唤醒）。

### 5.3 已知限制

- `ctx_valid` 字段已定义但本轮未与 `conv_context` 的实际状态联动（固定 0）；FOLLOWUP 判定当前只看状态，接 conv_context 是一行赋值，留给 T8-14 技能调度轮。
- `sc_on_play_state` 的 `event_id` 参数暂未参与过滤（单请求并发下 outcome 语义已够）；多请求并发跟踪时启用。
- 单元测试为纯逻辑验证，"真实事件驱动"在真机上以 `last_transition` 链路核对为准。


## 七、T8-13.1 修正：TTS 播放事件归属（审查发现的必须修复项）

审查发现 `sc_on_play_state()` 丢弃 `event_id`（`(void)event_id`），旧播放残留的 idle 可能误收尾当前请求。已修复，归属规则（`playing=0` 收尾按 `event_id` 四类分流）：

| event_id | 有活动请求 | 无活动请求 |
|---|---|---|
| == request（当前） | 接受：终结请求 + 迁移 FOLLOWUP/INTERRUPTED | duplicate（刚处理过的收尾重复到达），不重置窗口 |
| == prev_request（被顶替/清场） | stale，状态不动 | stale（迟到回调），返回 0 |
| 空 | **拒绝**（不允许空 id 结束活动请求） | 接受为执行器快照（启动 idle），无迁移 |
| 其它未知 | stale，状态不动 | stale，返回 0 |

`playing=1` 只有 event_id 归属到当前活动请求时才提升 PROCESSING→SPEAKING；空/旧/未知 id 一律不迁移。

新增测试 [13]a-h（审查点名的 6 场景 + 归属不变量）：

- 13a 请求 A 播放中收到旧请求 B 的 idle → 拒绝，B 状态不动
- 13b 空 event_id 的 idle → 拒绝
- 13c 当前请求自己的 idle 收尾；同一条收尾重复到达 → duplicate，不重置 FOLLOWUP 窗口
- 13d 已结束后陌生旧播放再次到达 → stale
- 13e 新请求播放中，旧请求 A 的迟到 interrupted → 拒绝
- 13f TTS 快照残留上一轮 idle + 当前请求尚未播放 → 不误迁移；当前请求自己的 playing → 正常提升 SPEAKING；旧 id / 空 id 的 playing 不迁移
- 13g 无活动请求时启动 idle 快照 → 接受无迁移（closes/transitions=0）
- 13h 归属不变量：只有当前请求自己的收尾能终结请求；收尾后同 id idle = 快照

测试结果：主机 **435 pass / 0 fail**（t8_13 新套件 117 + 三组回归 25/211/82 全绿）；ARM32 `ai_worker` sha256 `17231eb0…`（241224 B）0 warning 0 error。证据：`evidence/t8_13_1_ndk_build_worker.log`。

事件归属修复不改变接入点与观测字段；`ai_worker.c` 调用点（`play_state_poll` 传 event_id/outcome）不变。

## 八、提交

- 提交 SHA：见推送记录（本轮）
- 关键实现：`session_ctrl.c`（状态机 + prev_request 迟到隔离 + CLOSING 瞬时态 + 无 TTS 兜底）
- 测试：主机 399 pass / 0 fail（含 3 组回归）；ARM32 全产物 0 warning 0 error
