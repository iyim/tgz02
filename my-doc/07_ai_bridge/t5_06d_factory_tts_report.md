# T5-06D 原厂 TTS 接入与真实语音闭环报告

- 设备：TG-Z02（CCH `AILABS_S1L`，MT8167S，armv7l，Android 8.1 / SDK 27，内核 4.4.95+）
- 模型代理：`http://192.168.1.13:8790/v1`，`POST /chat/completions`，模型 `deepseek-flash`
- 分支：`main`（未建分支、未建 PR）
- 结论：**真机链路「原厂唤醒 → 原厂 ASR → 本机 Worker → 局域网模型代理 → 模型回答 → 原厂 TTS 实际播报」跑通，8 个真机验收场景一次全覆盖通过（`RESULT: PASS`，FAILS 0）**
- 证据：`evidence/t5_06d_device_e2e.log`（真机，本次提交）、`evidence/t5_06d_host_test.log`（主机）、`evidence/t5_06d_tts_build.log`、`evidence/t5_06d_ndk_build.log`

---

## 1. 原厂 TTS 调用链及证据

### 1.1 静态证据（对象：`/system/app/smartapp/smartapp.apk` + `oat/arm/smartapp.vdex`）

该 APK **不含 dex**，代码在 `oat/arm/smartapp.vdex`（28.9 MB）。本项目用的是既有还原产物
`_analysis/vdex-dex/classes{,2,3,4}.dex`（22 874 个类）。

> 说明：还原 dex 的 Adler-32/SHA-1 头是旧值，jadx 会拒绝加载。本次只做了**重新计算头校验**
> （`sha1(bytes[32:])` + `adler32(bytes[12:])`），代码未被改动，之后 jadx 1.5.6 完整反编译出 12 087 个 `.java`。
> 这一步是本阶段"能读到代码"的前提，记在这里以免下次重复踩。

关键类与真实调用关系（`com.alibaba.ailabs.genie.smartapp`，即原厂主 App）：

```
StatusProvider            (provider, exported=true, process=:core, 无 android:permission)
  └─ GenieTable.query(json)            // json.method = 4
       └─ VoiceManager.getInstance().playTts(TtsInfo)      // TtsInfo.text 就是待播报文本
            └─ AiLabsCore.playTts(TtsInfo)  (native, JNI 动态注册)
                 └─ TtsManager::playTts     → 走原厂 websocket 会话请求云 TTS
                      ← 云端回 Speak 命令 (payload.type=stream, ttsConfig.voiceAttachment)
                      └─ UTPPlayer / ApolloRenderAdapter / OpenSL ES(48 kHz stereo) → 原厂扬声器
```

`GenieTable.query` 的 method 分派（节选，`case 4` = playTTS，`insert` 里 `case 5` = stopTTS）：

| method | 入口 | 行为 |
|---|---|---|
| 2 | query | `getNativeUiManager().isUiShowing()` |
| 4 | query | `VoiceManager.playTts(TtsInfo{text,…})` → 返回 tts id（`Bundle["data"]`） |
| 5 | **insert** | `VoiceManager.stopTts(sessionId)`；`-1` = 停当前 |
| 12 / 13 | query | 在线状态 / 唤醒类型 |
| 30 | query | `playTTSEx`（带 oralAppKey） |
| 1 / 3 / 19 / 20 … | insert | 显示/隐藏 UI、更新页面文本、取消多轮、用户历史上报 |

请求体（与原厂 `GenieApi.playTTS` 逐字段一致）：

```json
{"method":4,"data":{"sessionId":0,"tts":"<UTF-8 文本>","isOpenMic":false,
  "ignoreMute":false,"feedback":false,"secretKey":"","pkg":"com.tgz02.aibridge.tts","wakeupType":1}}
```

### 1.2 真机动态证据（不是函数名推测）

同一段音频（tts id 5245411，S1 实测）：

```
E/GenieTable: play curSessionId = 5245411, ttsInfo= TtsInfo{sessionId=0, text='…', isOpenMic=false, …, pkg='com.tgz02.aibridge.tts'}
D/TtsManager:  onTtsStart: sessionId = 5245411, isStreaming = 1
D/AudioStateManager: _ali_stub_json_handle_tts_feedback:status = play,type = tts,agmcId(tts_id) =5245411
D/ApolloRenderAdapter: openAudioTrack ... channels:2, open audio track finish
D/AudioStateManager: _ali_stub_json_handle_tts_feedback:status = complete,type = tts,agmcId(tts_id) =5245411
D/VoiceManager: onNotify id= 5245411 ,status = 2, uri = content://…/GenieApi/5245411?status=2
```

`status = play` / `complete` 由原厂音频状态机打出，`OpenSL ES` 打开了真实输出轨道 —— 这是
"声音确实送到了原厂扬声器"的直接证据，不是 Mock。

---

## 2. 真正可用的调用入口

| 候选入口 | 可用性 | 结论 |
|---|---|---|
| **`content://com.alibaba.ailabs.genie.assistant.provider/GenieApi`，`method=4`（query）** | **可用**，exported、无 permission、`pkg` 自报 | **本阶段采用** |
| `IAliTVASR.playTTS(String)`（`com.alibaba.ailabs.geniesdk.NativeService`，action `com.yunos.tv.alitvasr.service`，exported） | 服务端 `ClientManager.canPlayTts()` 要求 **屏幕亮 && 调用方包名 == 栈顶 Activity 包名** | 独立进程/命令行不可用，弃用 |
| `VoiceManager.playPts` 直调（进程内 Java） | 只在原厂进程内可用 | 仅用于动态验证，不作为交付路径 |

**外部程序侧的实现**（`android/tts_exec/TtsExec.java`）：`app_process` 跑自建 dex，

```
Class.forName("android.app.ActivityThread").systemMain() → getSystemContext()
Class.forName("android.app.ActivityManager").getService()                       // IActivityManager
  → getContentProviderExternal("com.alibaba.ailabs.genie.assistant.provider", 0, token)
  → ContentProviderClient(cr, IContentProvider, stable=true)                     // 构造器反射
  → query(GenieApi, selection=上面的 JSON) → cursor.getExtras().getInt("data") = tts id
```

不装 APK、不改原厂 APK/native、不碰 system/boot，进程以 root 运行（与桥接端、执行器一致）。

**为什么不用 ContentObserver 收状态**：非 App 进程注册的观察者在 `ContentService` 派发时被判
`Ignoring content changes …: Failed to find PID <pid>`（AMS 不认识该 pid），真机实测收不到回调。
因此状态改从原厂日志取（见 §5），这一条也是实测结论，不是猜测。

### 第 3 节目要求的 5 个问题，逐条回答

1. **收到文本后经过哪些接口**：见 §1.1 的链路（ContentProvider → GenieTable → VoiceManager → JNI → TtsManager → 云 TTS 流 → UTPPlayer/Apollo/OpenSL ES）。
2. **哪个接口能接收外部文本并触发 TTS**：`GenieApi` provider 的 `method=4`；文本字段 `data.tts`。
3. **是否依赖原厂会话/页面状态/初始化**：不依赖页面与 session（`sessionId=0`、`asrLogId=NULL` 可播，实测）；依赖 `:core` 进程存活、`AguiCtx` 已初始化、原厂 websocket 在线（TTS 音频来自云）。
4. **能否在不改原厂的前提下从独立进程调用**：能，见上；不修改任何原厂产物。
5. **停止 / 取消 / 连续播报**：`method=5`（insert）→ `VoiceManager.stopTts(sessionId)`；连续播报由原厂 `AudioStateManager` 播放列表排队（实测三条按 FIFO 播完），被打断时原厂打 `status = interupt`。

---

## 3. 新增程序与接口说明

### 3.1 TTS 执行器 `android/tts_exec/TtsExec.java`（dex，`app_process` 运行）

| 能力 | 实现 |
|---|---|
| 文本 → 原厂 TTS | provider `method=4`，文本只进 JSON 字段（**绝不拼接成 shell 命令**） |
| 异步 | 独立进程 + 独立线程 drain 队列；原厂 ASR 采集线程完全不受影响 |
| 完成/失败/超时 | 原厂日志按 `tts_id` 过滤：`status = play/complete/interupt`；`playTimeoutMs` 兜底 |
| 防重复播报 | `queue/ → inflight/` 原子 rename 认领；`done/<event_id>.ok` 终结标记；Worker 侧按 event_id 幂等入队 |
| 停止当前播报 | `control/stop` 文件 → `method=5`（`sessionId=-1`）；也可 `run_tts_exec.sh stop-now` |
| 音量 | **不触碰 AudioManager**，播报走原厂 TTS 通道，原厂音量键/静音继续生效 |
| 队列/状态 | `queue/`、`inflight/`、`done/`、`failed/`、`tmp/`、`journal.jsonl`、`state.json`、`control/` |
| 目录权限 | 目录 0700、条目/journal/state 0600，全部 root 身份 |

命令行：`--root DIR`、`--once`、`--stop`、`--play-file F`（无守护进程时一次性播报）、
`--enqueue-file F --event-id ID`（并入队列，安全）、`--timeout-ms`、`--idle-ms`、`--poll-ms`、`--max-attempts`、`--verbose`。

退出码：`0` 正常、`2` 用法、`3` 已有实例、`4` 初始化失败、`5` 单条失败。

### 3.2 设备端控制脚本 `android/run_tts_exec.sh`

`start`（自动清理旧 supervisor，只保留一个守护循环，最多重启 500 次）/ `stop` / `status` /
`play FILE [ID]`（入队，由守护进程播）/ `play-now FILE [ID]` / `stop-now`。

### 3.3 `ai_worker` 新增 `--tts-queue-dir`

C 侧只增加一个**幂等入队**动作（不改 T5-06C 的消费语义）：

```
[aiw] deepseek ok: model=deepseek-flash http=200 curl=0 latency=1478ms resp_bytes=1040 reply_bytes=75 event=t5b-28236-1968607-g1
[aiw] tts queued: event=t5b-28236-1968607-g1 reply_bytes=75 queue=/data/local/tmp/t5_bridge/tts
```

状态 JSON 新增：`tts_queued` / `tts_skipped` / `tts_enqueue_failed` / `tts_queue`。
入队失败时打 `WARNING tts enqueue FAILED: event=… reply_bytes=… (<原因>)` 并计数，**不静默丢**。

### 3.4 构建/测试脚本

- `android/build_tts_exec.ps1`：javac（android.jar）+ d8（`--min-api 26`）→ `tts_exec.dex`（26 632 B，sha256 `9cd978f4d8a7175bdd9be74ca118c4de1052304051b1e91aef8560c6689c1e3b`）
- `tests/run_t5_06d_host_tests.ps1`：dex 构建 + 主机单元/集成 + TTS 队列用例，写 `evidence/t5_06d_host_test.log`
- `tests/t5_06d_device_e2e.ps1`：真机 8 场景编排（`-Only s1,s2` 可挑场景），写 `evidence/t5_06d_device_e2e.log`

---

## 4. 模型回答 → TTS 的数据传递机制

### 4.1 投递语义

- 队列根：`/data/local/tmp/t5_bridge/tts`（0700 root）；条目文件：`queue/<event_id>.json`（0600）
- 条目内容：`{"v":1,"event_id":…,"created_ms":…,"attempts":N,"reply_bytes":N,"text":"…"}`
- 写入：`tmp/<id>.json.tmp` → `fsync` → `rename` 到 `queue/` → `fsync(dir)`；执行器只会看到完整条目
- 顺序：按条目文件 mtime（= 入队顺序），同 mtime 用文件名兜底
- **先入队、后提交消费偏移**：崩溃在两者之间 → 事件重放 → 模型重答，但入队按 `event_id` 幂等（`queue/`、`inflight/`、`done/`、`failed/` 任一存在即跳过），不会重复播报
- 回答正文**只**存在于设备本地队列文件与执行器内存；日志/journal/state/证据只有字节数与 id

### 4.2 崩溃与重启

| 场景 | 行为 |
|---|---|
| 执行器被杀（播报中） | 条目停在 `inflight/`；重启后 `recoverInflight()` 把它搬回 `queue/`，`attempts+1`，**重放**（至少一次语义） |
| 执行器被杀（空闲） | `queue/` 条目原样保留，重启即播 |
| Worker 重启 | 消费偏移已提交则跳过；未提交则重放事件，入队按 event_id 去重 |
| 播报超时 / 失败 / 被原厂打断 | `attempts < maxAttempts(3)` → 回队重试（日志 `kind=retry`）；否则进 `failed/`（保留正文）并记 `kind=give_up` |
| 设备重启 | 队列在 `/data/local/tmp` 下，重启后执行器启动即恢复；**注意**：不改 system 就没有开机自启，需人工/编排脚本 `run_tts_exec.sh start`（见 §7 已知问题） |

---

## 5. 状态反馈与失败处理

执行器按 tts id 过滤原厂日志（行内**不含**回答正文）：

```
AudioStateManager … _ali_stub_json_handle_tts_feedback:status = play|complete|interupt,type = tts,agmcId(tts_id) =<id>
VoiceManager      … onNotify id= <id> ,status = 1|2|3
```

映射：`play→started`、`complete→ok`、`interupt→interrupted`（原厂被新会话/提示音抢走音频通道）、
`status=3→error`；另有执行器自身 `timeout`、`rejected`（provider 未受理）、`provider_error`（provider 不可达）。

`journal.jsonl` 每行一条（示例均为真机原文，无正文）：

```json
{"ts":"2026-09-…","kind":"tts","event_id":"t5b-28236-1968607-g1","tts_id":5245411,"outcome":"ok","dur_ms":5252,"text_bytes":75,"attempts":1}
{"ts":"…","kind":"retry","event_id":"…","attempts":1,"outcome":"interrupted"}
{"ts":"…","kind":"recover","item":"recover-090507.json","age_ms":7676}
{"ts":"…","kind":"give_up","event_id":"…","attempts":3,"outcome":"interrupted"}
```

---

## 6. 真机测试原始日志（`evidence/t5_06d_device_e2e.log`，本次一次性跑完，FAILS 0）

前置断言：`smartapp:core` 存活、T5-05B 桥接 running、密钥 0600/非空（只读权限位与字节数）、
`tts_exec.dex` 存在、`events.jsonl` 存在且只增、frida sender ready、core pid 未变、执行器 alive。

| 场景 | 关键事实 |
|---|---|
| **S1** 一句短问句 | 事件 `t5b-28236-1968607-g1` → `http=200 latency=1478ms reply_bytes=75` → tts id `5245411` → `outcome=ok dur_ms=5252`；原厂日志 `status = complete … agmcId(tts_id) =5245411` |
| **S2** 连续两轮 | 轮1 `1968612` / tts `5245416` / ok 5076 ms / 72 B；轮2 `1968617` / tts `5245421` / ok 5795 ms / 84 B；两个 event_id 不同 |
| **S3** 长中文 | 真实回答 `1968622`（http 200，96 B，ok）；直连长文本 243 B → tts `5245427` → **ok 17 605 ms**，`text_bytes=243` 与源文件逐字节一致（无截断/乱码） |
| **S4** 播报期间再说话 | 长文本播报中播放语音刺激：`factory core survived the overlap`，事件链未崩；原厂对该 tts 打 `status = interupt`（见 §5 的独立状态建模） |
| **S5** 连续多条顺序 | 执行器停机时入队 3 条 → 启动后 journal 顺序 `ord-1 > ord-2 > ord-3`，全部 `ok`，队列清空 |
| **S6** 执行器失败后恢复 | 执行器停机 → 真实 ASR + 模型正常（http 200，78 B）→ `queue depth = 1`（回答在本地未丢）→ 重启执行器 → `t5b-28236-1968629-g1` **ok 5812 ms** |
| **S7** 播报中崩溃恢复 | 292 B 长文本播报中 `kill -9`（`after kill: queue=0 inflight=1`）→ 重启后 `kind=recover` → `recover-090507` **ok 20 812 ms**（attempts=3） |
| **S8** 原厂功能共存 | 全流程后再放语音刺激：原厂 ASR 仍能识别（事件继续增长）；`core pid unchanged`；密钥仍 0600；`events.jsonl` 只增不减 |

共存与音量：

```
volume/mute state: - STREAM_MUSIC: Muted: false  Min: 0
```

执行器不调用 `AudioManager`、不改音量与音频通道；S1–S7 全程 `smartapp:core` pid 未变（唤醒/ASR 引擎未被重启）。

---

## 7. 已知问题与下一步

1. **TTS 音频来自原厂云**：`playTts` 会经原厂 websocket 请求云合成（`Speak` 命令 + `voiceAttachment` 流）。
   原厂云不可用时本链路不可用；本阶段没有做本地离线 TTS 兜底（也不允许自研引擎）。
2. **`status = interupt` 是真实存在的**：原厂新的会话/提示音会抢走音频通道，长文本在"刚唤醒的会话"里更容易被打断。
   执行器已把它当独立状态并重试（S3 因此加了静置 + 一次重试），但**没有**做"抢占优先级"这类侵入式处理。
3. **开机自启**：不改 system 分区就没有 init/服务托管，设备重启后需执行 `sh /data/local/tmp/t5_bridge/run_tts_exec.sh start`（可用外部编排脚本补）。
4. **状态通道依赖日志**：`ContentObserver` 在非 App 进程收不到派发（AMS 不认识 pid），所以状态只能读原厂日志；
   若原厂换日志 tag，需要同步改 `LogTail` 的正则。
5. **唤醒词与指令必须分开播**：整句一次播时唤醒率明显偏低；本阶段把刺激拆成 `wake` + `cmd` 两段、中间静默 3 s
   （`_analysis/t506d/split_wake_cmd.py` + `cut2.py`，切点 0.88 s 按本机音色标定）。这一点已写进编排脚本默认行为。
6. 后续可做：把 `--tts-queue-dir` 与 `reply-log` 合成单一"回答落盘"策略；把 `interupt` 的重试策略做成可配置；
   TTS 失败的死信（`failed/`）增加一个显式 `requeue` 子命令。

---

## 8. 主机侧验证（不碰设备）

`tests/run_t5_06d_host_tests.ps1` → `evidence/t5_06d_host_test.log`

- Worker 单元：**621 / 621** 通过
- 集成全集：PASS（含 T5-06B/06C 全部用例）
- 新增 TTS 队列用例：`i31_tts_queue_item_written`、`i32_tts_queue_idempotent_by_event_id`、
  `i33_tts_queue_config_and_failure`、`i34_tts_queue_off_by_default` —— **4/4 PASS**
- 锁压测 100 轮：`failed: 0`
- ARM32 交叉编译：`# result: OK (0 warning, 0 error)`，`ai_worker` 137 908 B / `tts_exec.dex` 26 632 B

## 9. 文件清单（本阶段新增/修改，全部在 `my-doc/07_ai_bridge/`）

新增：
```
android/tts_exec/TtsExec.java            执行器源码
android/tts_exec.dex                     构建产物（真机实际运行的那一份，26 632 B，sha256 9cd978f4…）
android/build_tts_exec.ps1               dex 构建
android/run_tts_exec.sh                  设备端 start/stop/status/play/stop-now
tests/run_t5_06d_host_tests.ps1          主机一键验证
tests/t5_06d_device_e2e.ps1              真机 8 场景编排
t5_06d_factory_tts_report.md             本报告
evidence/t5_06d_device_e2e.log           真机原始日志（本次）
evidence/t5_06d_host_test.log            主机原始日志
evidence/t5_06d_tts_build.log            dex 构建日志（javac + d8 输出）
evidence/t5_06d_ndk_build.log            ARM32 构建日志
```
修改：
```
android/ai_worker.{h,c}        新增 --tts-queue-dir 与幂等入队
android/worker_status.{h,c}    新增 tts_* 计数与 tts_queue 字段
tests/worker_integration_test.py  新增 i31–i34
```

未改动：T5-05A/B/C 已验收模块、`system_debloat`、原厂 APK/native/`boot.img`/system 分区、
`events.jsonl`（本阶段只读，行数从 183 增长到 196+，无截断）。
