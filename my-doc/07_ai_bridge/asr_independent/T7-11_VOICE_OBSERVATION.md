# T7-11：真人语音观测（真实设备，2026-11-22 17:48–17:53）

目的：回答 T7-09 留下的唯一问题 —— **这台机器在真实说话时，跑的到底是哪条 ASR 通道**。
方法：`asr_watch2.sh` 只读高频采样 + `logcat` 时间轴 + `events.jsonl` / `ai_worker.log` 对照。
全程**未部署、未重启、未改 Hook / 配置**。

## 1. 结论

**ASR 走云端；本地只负责唤醒和 VAD。** 这次不是"推断"，是四路证据同向的直接观测：

| # | 证据 | 数值 |
|---|---|---|
| 1 | 框架自己的 `isOffline` 字段（Hook 没转发，但框架打在 logcat 里） | 5 个会话、**29 条 `onStream` 全是 `isOffline = 0`**，`isOffline = 1` 出现 **0** 次 |
| 2 | 云端协议帧 | 每个会话一条 `GcsManager send ... eventNs = AliGenie.Microphone, eventName =ListenStarted`；`Websocket-gateway ... send text--0::{...}` 共 22 帧 |
| 3 | 本地 ASR 库是否加载（3 Hz 采样 `/proc/8342/maps`） | `libaceAsr / libmodel.bin / libconfigure.bin / libunet` 在 **515 个采样里出现 0 次**（三个窗口合计） |
| 4 | 唤醒在哪 | `XEGNLocalEngine [WAKEUP_ENGINE] xengine.cpp` 本地唤醒，score 0.80；`WakeupManager: active wakeup` |

`libvad_api` 515/515 常驻 → VAD 是本地常驻的，**它不是 ASR**，不构成"本地识别"的证据。

## 2. 三个窗口（含一次无效，必须记录）

| 窗口 | 时间 | 采样 | 会话 | 事件 | 有效性 |
|---|---|---|---|---|---|
| W1 | 17:48:03–17:48:54 | 124 | **0** | 0 | **无效**：前台是 `app.orchard.tv`，`UnconvWakeupManager: feed,68:feed when not started` 每 1.6 s 一条 → 唤醒引擎未启动，说话根本没进识别 |
| W2 | 17:49:59–17:51:24 | 233 | 1（1968462） | 1（`天猫精灵`） | 有效，但只抓到唤醒词 |
| W3 | 17:52:16–17:53:10 | 158 | 4 | 4 | **有效**，覆盖 3 条指令 + 1 条停止 |

W1 的教训：**先确认设备在听，再说话**。判据是 `onStartTalk` 出现；`UnconvWakeupManager ... not started`
是"没在听"的直接证据，这种情况下任何采样都不构成"未发生"的结论。

## 3. 端到端链路（W3，四句话，全部 `isOffline = 0`）

| sessionId | ASR final 文本 | `isOffline` | worker 路由 | 结果 |
|---|---|---|---|---|
| 1968466 | 天猫精灵现在几点 | 0 | `route=native intent=time rule=time.keyword` | 原厂回答（AI worker 不参与） |
| 1968470 | 天猫精灵音量调到五 | 0 | `route=native intent=volume rule=volume.set arg=set:5` | 原厂回答 |
| 1968484 | 天猫精灵给我讲一个笑话 | 0 | `route=ai why=timeout held_ms=609` | deepseek-flash http=200 latency=3598ms reply_bytes=93 → TTS 入队 |
| 1968497 | 天猫精灵暂停 | 0 | `route=native intent=stop rule=stop.keyword` | `tts stop requested` + 原厂回答 |

也就是说：**T6 Hook 挂在 ASR-before-NLU 这个位置，用真实语音第一次完整走通了**——云端 ASR 出文本 →
Hook 落事件 → worker 分流（本地指令 / DeepSeek 聊天）→ TTS。`events.jsonl` 从 584 → 589 行，5 条新记录。

## 4. 采样器的局限（口径不许放大）

- 采样周期实测 280–630 ms（约 3 Hz），**不能排除毫秒级瞬时加载**；但一次识别会话持续 2–3 s，且这里
  四个会话 + 唤醒窗口合计 515 个采样点全为 0，若本地 ASR 引擎参与，模型加载必然跨越多个采样点。
- 443 连接数在两轮里是 3 → 8 → 12，**只说明"有 TLS 流量"**，不作为归因判据（连接复用、日志上传都会影响）。
- `isOffline` 目前靠 logcat 读；Hook 事件 JSON 里仍**没有**该字段（T7-09 记录的证据缺口）。
  本轮不改 Hook，缺口保留，但"归因"这件事已经不再依赖它缺失。

## 5. 设备状态

- 全程未部署、未重启：`ai_worker` pid 3468（`32fc280019103d58…`，仍是旧二进制）、`:core` pid 8342 未变、Guard 未动。
- 采样进程均已停止（`pgrep asr_watch2.sh` 空），logcat 抓取已停。

## 6. 证据文件（`my-doc/07_ai_bridge/evidence/`）

| 文件 | 内容 |
|---|---|
| `t7_11_w1_asr_watch2.log` / `w2` / `w3` | 三个窗口的 maps/443 采样 CSV（124 / 233 / 158 行） |
| `t7_11_logcat_extract.txt` | W2+W3 的 `onStartTalk / onStopTalk / onStream / wakeup / ListenStarted / WebSocket 帧` 摘录，以及 W3 的 worker 路由行 |
| `t7_11_events_new.jsonl` | 本次测试产生的 5 条事件（seq 39–43） |
| `t7_11c_worker.log` | worker 在 W3 的完整日志（路由、DeepSeek 调用、TTS 入队） |

原始 logcat 整包（W3 约 3.5 MB）**没有入库**，只留摘录；W2 的原始 logcat 未保留（设备端文件已被下一窗口覆盖），
其证据以摘录形式保存在 `t7_11_logcat_extract.txt` 里。
