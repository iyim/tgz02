# T9-08B-R2：停止播报根因修复与真机验收

基线：`c7d03ac018e4e6855bc82f33868248230b97102a`（T9-08B-R1-FIX-PREP 文档）
本轮：**改代码 + 主机测试 + ARM32 构建 + 真机验收**，不做只改文档的"确认"。

## 1 结论

| 项目 | 结论 |
|---|---|
| 停止后偶发重新播报 | **已修复**，真机 10 秒观察窗口内无重播 |
| 停止的"唯一入口" | UI 只写 Inbox（`kind:"stop"` + `tts_id`），不再直连原厂 method=5 |
| 普通播报 | 未受影响（长句自然时长 19559 ms，`outcome=ok`，attempts=1） |
| 一次按下停止 | 19559 ms 的句子在 5605 ms 被切断；执行器对停止文件的反应 **9 ms** |
| 连按 3 次 | 第 1 条 stopped，第 2 条照常 `ok`，无 `cancel` 记录 |
| 两条排队 | 停第 1 条，第 2 条照常播完；两条各只执行一次 |
| 真实超时重试 | 未被吞掉：3 次 attempts + 2 条 `retry` + `give_up` |
| 原厂唤醒 → ASR → AI → TTS | 通过（`kind:"turn"` 已发布，route=skill） |
| 语音插话 | 打断后不重播（1 条记录，`interrupted`） |
| 旧的"全局停止" | 行为不变（队列尾仍被 `cancel`） |

真机验收脚本：`tests/t9_08b_r2_device_acceptance.ps1`，日志 `evidence/t9-08b-r2/60_device_acceptance.txt`，**RESULT: PASS (0 failed checks)**。

## 2 根因

三个问题叠加，缺一不可：

**A. 停止信号到不了执行器。** UI 只调原厂 provider `method=5`，执行器（`TtsExec`）根本不知道"这是用户按的停止"，它只看到原厂反馈。

**B. 停止反馈有竞态。** 工厂对"被停止"的反馈是 `status = interupt`（拼写如此），映射成 `interrupted`（终态）；但同一条播报也可能先落到 `onNotify status=3` → 映射成 `error` → 走重试分支（2 s 后重新入队并重播）。`noteEnd()` 先到先得，所以同一动作两种结局：

```
evidence/t9-07/60_acceptance.txt:42-44   error(5245910) → retry → interrupted(5245914, attempts=2)   ← 重播
evidence/t9-08b/60_acceptance.txt        saystop-214431 interrupted, attempts=1                      ← 停住
```

**C. `control/stop` 在播放期间读不到。** `handleControl()` 只在主循环调用，而 `playItem()` 是阻塞的：播报中写 `control/stop`，当前这一条读不到。所以"照搬现有 control/stop"停不住正在播的那条。

**因此"把 status=3 一律当终态"是错的**：T9-04 证据里 `status=3` 与 `playTts` 同毫秒出现（提交即失败），一律终态会把真实故障吞掉。本轮明确不动这条映射。

## 3 修复设计：唯一受控停止链路

```
UI 停止按钮
  └─ VoiceBridgeClient.requestStop(tts_id)
       └─ <ui>/inbox/stop-<ts>-<rand>.json    {"v":1,"kind":"stop","event_id":...,"tts_id":N}
          └─ Worker ti_poll 校验（uid/文件安全/限流/字段）→ aiw_inbox_enqueue(kind=stop)
             └─ tts_request_stop_id()  写 <tts_queue>/control/stop
                                       "stop_tts_id=N\nwhy=ui stop\n"
                 └─ 写盘成功 → 才回执 {"ok":true,"stage":"stop"}
                    └─ TtsExec.playItem 的播放轮询读该文件
                       ├─ 目标 id == 正在播的 id → 调原厂 stopTts(N) → outcome=stopped（终态，不重试）
                       ├─ 目标 id != 正在播的 id → 丢掉这条请求（绝不误停下一条）
                       └─ 文件里没有 stop_tts_id（旧式）→ 不在这里消费，仍旧交给 handleControl
```

关键点：

1. **只有一个停止来源**。UI 不再并行调 `method=5`；原厂停止改由执行器在"目标 id 匹配"后发起。这样"谁让它停"没有第二份证据可以抢在决定之前写入 `status=3`。
2. **决定权在执行器**。只有执行器知道此刻在播哪一个 `tts_id`；UI 无从判断（`play.public.json` 有 250 ms 轮询延迟）。
3. **过期请求必须丢**。用户连按时，后面的请求可能在第 2 条已经开始播之后才到达：目标 id 对不上 → 丢弃并记 `stop_stale_target`；若到达时队列空闲 → 主循环记 `stop_stale_idle` 并丢弃。两种情况都**不**退化成"全局停止"，否则就是"按一下停止，下一条也没了"。
4. **旧语义保留**。`control/stop` 里没有 `stop_tts_id=` 时仍是全局停止（`run_tts_exec.sh stop-now`、以及语音插话/新语句的 `tts_request_stop` 全部照旧）。

## 4 逐文件改动

### 4.1 `android/tg_inbox.h`

- 新增 `TI_KIND_STOP "stop"`、`TI_MAX_TTS_ID 2147483647L`。
- `ti_msg` 增加 `has_tts_id` / `tts_id`。
- `ti_enqueue_fn` 增加 `long tts_id` 参数（stop 的目标；say/ask 传 0）。
- `ti_stats` 增加 `stop_accepted`。

### 4.2 `android/tg_inbox.c`

- 解析器接受 `"kind":"stop"`；新增 `tts_id` 数字解析（`tts_id` 为字符串或 true/false/null 一律拒绝）。
- 数字累加改成**溢出安全**（宿主构建里 `long` 是 32 位），上限就是 `TI_MAX_TTS_ID`。
- 对象解析完成后做**字段与 kind 的一致性校验**：
  - `stop` 必须带 `tts_id`，且 `0 < tts_id <= TI_MAX_TTS_ID`，且不带正文；
  - `say/ask` 带 `tts_id` → 拒绝（`tts_id is only valid with kind stop`）。
- `ti_poll`：stop 不走正文校验，也**不受 queue_cap 限制**（队列满时必须还能停）；回执 `stage` 用 `"stop"`；计数 `stop_accepted`。

### 4.3 `android/ai_worker.c`

- `aiw_inbox_enqueue()` 增加 `kind=stop` 分支：先于 `text` 校验，写控制文件成功才 `return 0`（失败 → `-1` → Inbox 写 `ok:false` 并停放到 `rejected/`）。
- 新增 `tts_request_stop_id()`：写 `stop_tts_id=N` + `why=`；已有的全局停止请求**不降级**（直接算成功），已有的单条停止请求被**最新目标覆盖**；`why` 里的换行压成空格。
- 旧的 `tts_request_stop()`（全局）**一行未改**，语音插话/新语句路径照旧。
- 日志/状态：`inbox: ... stops=N`、`status.public.json` 的 `counters.inbox_stops`（UI 侧未解析，不影响既有字段）。

### 4.4 `android/tts_exec/StopControl.java`（新增）

纯 Java、无 Android 依赖的**判定表**，因此可以在主机上直接单元测试：

- `parse(content)` → `NONE` / `GLOBAL`（旧式无 id）/ `INVALID`（有 id 但不可用）/ `>0`（目标）。
- `matches(target, currentTtsId)` → 只有"目标就是正在播的那一条"才算命中；`GLOBAL` 永不命中（它走旧路径）。
- `isTerminal(outcome)` → `ok/complete/stopped/stop/interrupted` 为终态；`timeout/error/rejected/provider_error` **仍可重试**。

### 4.5 `android/tts_exec/TtsExec.java`

- `playItem()` 的播放轮询里读 `control/stop`（`readControlStop()`）：命中 → 删文件 → `stopTts(id)` → `outcome="stopped"` 立即 `break`；未命中 → 删文件 + 记 `stop_stale_target` 并继续播；`INVALID` → 删文件 + 记 `stop_malformed`。
- 终态判定改用 `StopControl.isTerminal()`：`stop` / `complete` 也进终态（原来 `stop` 会掉进重试分支）；`interrupted` 行为不变。
- `handleControl()`：带 id 的停止请求在"没有条目在播"时记为 `stop_stale_idle` 并丢弃，**不再**被当成全局停止去取消队列。
- **未改**：`onNotify status=3 → error` 的映射、`maxAttempts`、`queue/failed/done` 的持久化规则。

### 4.6 UI（`android/t9_07_ui/src/com/tgz02/voice/`）

- `VoiceBridgeClient`：删除 `stop()` 里的 provider `method=5` 调用；新增 `requestStop(int ttsId)`（复用 `submit()` 的 tmp+fsync+rename 原子写入）；stop 的回执独立记账，只进诊断日志，**不**进 `onReceipt`（不污染会话消息）。
- `VoiceHomeActivity` / `ConversationActivity`：`activeTtsId` 只在"`state=playing` 且 `ttsId>0`"时有效，其余一律 `-1`；按停止前先判 `id<=0` → 提示"现在没有在播报"，不再拿上一条的 id 去停。
- `ConversationActivity`：`stopped` 与 `interrupted` 一样显示为"已停止"。

### 4.7 构建与部署脚本

- `android/build_tts_exec.ps1`：编译 `tts_exec/*.java`（现在两个文件）。
- 新增 `android/t9_08b_r2_deploy.sh` / `t9_08b_r2_restore.sh`（备份一次、装、重启，回滚一条命令）。
- 新增 8 个设备侧取证脚本 `android/t9_08b_r2_dev_*.sh`（say/stop/read/journal/play/jlen/turns/stop_button/ui_probe/timeout_fixture）。

## 5 测试

### 5.1 主机测试（新增两个套件）

| 套件 | 覆盖 | 结果 |
|---|---|---|
| `tests/run_t9_08b_r2_stop_tests.ps1`（C，47 断言） | stop 消息契约（缺 id/0/负数/字符串/字面量/超范围/带正文 → 全拒绝；say/ask 带 id → 拒绝；旧请求不变）、end-to-end：回调拿到 `kind=stop`+目标 id+无正文、回执 `stage=stop`、worker 拒绝时 `ok:false` 且停放到 `rejected/`、队列满时 stop 仍能进 | **47 passed, 0 failed** |
| `tests/run_t9_08b_r2_stop_model_tests.ps1`（Java，37 断言，直接跑 `StopControl.java`） | 控制文件解析（无文件/空/旧式/单条/空格/0/负数/非数字/尾随垃圾/边界 2147483647）、匹配与误停、终态表（`stop` 进终态；`timeout/error/rejected/provider_error` 不进） | **37 passed, 0 failed** |

回归（未改语义，仅回调签名同步）：

| 套件 | 结果 |
|---|---|
| `tests/run_t9_07r1_kind_tests.ps1` | 43 passed, 0 failed |
| `tests/run_t9_07r1f_kind_literal_tests.ps1` | 30 passed, 0 failed |
| 宿主整机编译（`ai_worker.c` + `tg_inbox.c`，`-Wall -Wextra`） | 0 warning, 0 error |

### 5.2 ARM32 构建

`android/build_t8_15.ps1 -LogName t9_08b_r2_arm32_build.log`：**0 warning, 0 error**

| 产物 | 大小 | sha256 |
|---|---|---|
| `ai_worker` | 310016 B | `9faabf9ae378974f39ba57ec19cbc564e2d08e89aba1287f38627ce6e94d076c` |
| `tts_exec.dex` | 38236 B | `8c79c5067c185aa015c392a35f1df5a98deeed300299e04f1a14a6c4143b834a` |
| `voice_ui.apk` | 33165 B | `9d3d136b0661a3fc0b5258e508cbf4989e9643947ac1b331cbf695b5139f098d` |

`libtg_ttsguard.so` 与 `libtg_hook.so` 未改、未重新部署。

### 5.3 真机验收（8 项，逐项）

设备：`AILABS_S1L`，Android 8.1，`192.168.1.9:5555`，Magisk root；worker pid 2879，执行器由 `tts_supervisor.sh` 拉起。

| # | 项目 | 实测 | 结论 |
|---|---|---|---|
| 0b | 目标 id 不匹配（队列空闲）时到达的停止 | `stale targeted stop for tts_id=100 dropped (nothing is playing)`，随后的短句仍 `ok` | 通过 |
| 1 | 正常播报不受影响 | 长句自然时长 **19559 ms**，`outcome=ok`，`attempts=1`，无 stop 记录 | 通过 |
| 2 | 播报中按一次停止（**点真机按钮**） | 首页 `mCurrentFocus` 确认为本应用，按钮中心 `(955,573)` 由 UI dump 取得；点按后 `stop_receipts` 增加（日志行 `stop_receipts=16`）——请求由 app 自己写出，不是测试脚本代写；句子在 **5605 ms** 被切断；执行器对停止文件的反应 **9 ms**；`outcome=stopped` | 通过 |
| 3 | 停止后 10 s 内不得重播 | 该 event 只有 **1** 条 tts 记录，无 `retry`，无 `outcome=ok`；10 s 内 journal 行数不变；`queue=0 inflight=0`；`control=[]` | 通过 |
| 4 | 连按 3 次不得误停下一条 | 3 次回执全 `ok/stage=stop`；第 1 条 `stopped`，第 2 条 `ok`；无 `cancel` | 通过 |
| 5 | 两条排队，停第 1 条 | A `stopped`、B `ok`，两条各执行一次 | 通过 |
| 6 | 真实超时仍重试（非注入故障） | 执行器以 `--timeout-ms 1500` 起（真实 deadline）：3 条 `outcome=timeout`(attempts 1/2/3) + 2 条 `retry` + `give_up`；随后恢复 `--timeout-ms 60000` | 通过 |
| 7 | 原厂唤醒 → ASR → AI → TTS | `kind:"turn"`（`route=skill`,`skill=time.query`,`reply="now 22:44"`）+ tts `ok` | 通过 |
| 8 | 语音插话不重播 | 唤醒打断长句：该 event 只有 1 条 `interrupted` 记录，无 retry | 通过 |

### 5.4 附加取证

- **原厂确实收到了针对该 id 的停止**（`evidence/t9-08b-r2/62_stop_logcat.txt`）：

  ```
  W/TtsManager stopTts:398  stop tts, id = 5246745
  D/AudioStateManager [asm] cmd: [49:ALI_STUB_CMD_STOP_TTS]
  D/AudioStateManager sm_process_stop_tts_msg: tts_exist: 1,current_id = 5246745,stop_id: 5246745
  D/AudioStateManager status = interupt,type = tts,agmcId(tts_id) =5246745     ← 工厂随后报"打断"
  ```

  即：执行器先给出 `stopped` 决定，工厂的 `interupt` 反馈随后才到——**决定先于反馈**，竞态不再能把它拉去重试。
- **旧式全局停止语义未变**：`run_tts_exec.sh stop-now`（写无 id 的 `control/stop`）在一次长句播报中触发后，journal 依次是 `tts outcome=ok`（当前条自然播完）、`stop_request`、`cancel`（队列尾被取消）——与 T7-04 完全一致。
- 计数：`state.json` `stopped: 2`、`interrupted: 1`；`status.public.json` `inbox_stops: 21, inbox_rejected: 0`。

## 6 回滚

```
# 组件（worker + 执行器）
sh /data/local/tmp/t9/t9_08b_r2/t9_08b_r2_restore.sh
# 产品 APK：装回上一版
adb install -r <上一版 voice_ui.apk>
```

`t9_08b_r2_deploy.sh` 第一次运行就把原件备份到 `.../t9_08b_r2/backup/{ai_worker,tts_exec.dex}.pre_r2`（不覆盖），`sha256` 已在部署日志里。APK 回滚不影响 Inbox 协议：新 worker 收到 `kind:"stop"` 时旧 APK 不会发；旧 worker 收到新 APK 的 `kind:"stop"` 会被 `unsupported kind` 拒绝并在 `result/` 里给出 `ok:false`（UI 只进诊断日志，不影响其他功能）。

## 7 未完成 / 未验证

1. **工厂 `status = stop|stopped` 行仍未在本机观测到**（全仓库 0 命中）。`StopControl.isTerminal()` 收下 `stop` 属于**防御性**修改，没有真机证据表明该分支会被走到；本机实测的"停止"反馈是 `interupt`。
2. **UI 停止按钮的时序边界**：`play.public.json` 每 250 ms 轮询一次，播报刚开始的 250 ms 内按停止会拿到 `activeTtsId=-1`，界面提示"现在没有在播报"（不发请求）。这属于可接受的产品行为，但未做打压测试。
3. **连续快速停止 ×N（>3）** 与"停止 + 立刻新提问"的组合未单独测试。
4. 多应用并发写 Inbox 的限流边界未新增测试（沿用 T9-06R1 的 10 次/10 s per uid；本轮 21 次 stop 请求均在窗口内被接受，`inbox_rejected: 0`）。
5. 语音链路的"skill 命中"回归只跑了一次 `time.query`，未覆盖多技能/长回答（属 T10 范围）。

## 8 证据清单

| 文件 | 内容 |
|---|---|
| `evidence/t9-08b-r2/60_device_acceptance.txt` | 真机 8 项逐条日志（PASS 0 failed） |
| `evidence/t9-08b-r2/61_b_ui_stop.png` | 真机点按钮停止后的界面 |
| `evidence/t9-08b-r2/62_c_triple.png` / `63_d_voice.png` / `64_e_interrupt.png` / `65_f_final.png` | 连按、语音回归、插话、终态截图 |
| `evidence/t9-08b-r2/62_stop_logcat.txt` | 原厂 `stopTts` / `ALI_STUB_CMD_STOP_TTS` / `sm_process_stop_tts_msg` 证据 |
| `evidence/t9-08b-r2/t9_08b_r2_stop_unit_test.log` | 主机 C 套件（47 断言） |
| `evidence/t9-08b-r2/t9_08b_r2_stop_model_test.log` | 主机 Java 判定表套件（37 断言） |
| `evidence/t9_08b_r2_arm32_build.log` | ARM32 构建（0 warning） |
| `evidence/t9-08b-r2/t9_08b_r2_tts_exec_build.log` | dex 构建（javac + d8） |
| `evidence/t9_07r1_kind_unit_test.log` / `t9_07r1f_kind_literal_unit_test.log` | 既有套件回归（43 / 30） |

## 9 设备当前状态

- worker：`/data/local/tmp/t5_bridge/bin/ai_worker`，sha256 `9faabf9a…`，R2 版本在跑。
- 执行器：`/data/local/tmp/t5_bridge/tts_exec.dex`，sha256 `8c79c506…`，由原 supervisor 以 `--timeout-ms 60000` 运行（第 6 项验收后已恢复）。
- APK：`com.tgz02.voice` 1.2.0（uid 10071）已装 R2 版本。
- `:core`、`libtg_ttsguard.so`、`libtg_hook.so`、队列内容、既有 `done/` 标记均未改动。
- 屏幕超时已从验收用的 1800000 恢复为 60000，`stayon` 仍为打开（验收脚本所设，可随时 `svc power stayon false` 关掉）。
