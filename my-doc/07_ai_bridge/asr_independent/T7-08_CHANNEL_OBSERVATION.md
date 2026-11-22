# T7-08 任务 B：原厂 ASR 实际使用哪条通道（只读观测）

> 本轮约束：只读观察，不改设备状态；不部署新 Hook；不调用任何未知接口。
> 采样脚本 `asr_watch.sh`（只读：读 `/proc/<pid>/maps`、`/proc/net/tcp*`，只往
> `/data/local/tmp/t7/asr_watch.log` 追加自己的采样行）。

## 1. 观测方法

设备侧 `asr_watch.sh` 每秒采一行，字段：

```
uptime_ms  core_pid  libaceAsr  libmodel.bin  libconfigure.bin  libunet  libvad_api  443_estab
```

- `libaceAsr / libmodel.bin / libconfigure.bin`：本地引擎三件套在 `:core` 里的映射条数；
- `libunet`：阿里网络栈（本地引擎不需要，云端通道可能用）；
- `libvad_api`：VAD 常驻对照（应为非 0，用来证明"采样确实读到了 maps"）；
- `443_estab`：`/proc/net/tcp{,6}` 里 443 端口处于 ESTABLISHED 的连接数（**只作参考**，见 §4）。

同时用 `logcat -v time -f …` 持续抓取全量日志，事后筛
`onWakeupCallback / onListenStarted / onStartTalk / onStopTalk / onStream / isOffline / AGSpeechEngine`。

## 2. 基线（空闲态）

| 项 | 观测值 |
|---|---|
| 采样窗口 | 2026-11-22 16:31:5x 起，**135 条采样（约 201 s）**，原始数据见 `../evidence/t7_08_channel_watch.log` |
| `:core` pid | 8342（135 条采样里从未变化 → 期间没有重启） |
| `libaceAsr` / `libmodel.bin` / `libconfigure.bin` | **全部 0**（135/135 条都是 0） |
| `libunet` | 0（全程） |
| `libvad_api` | 恒为 3（非 0 → 采样链路有效，不是"没读到 maps"） |
| `443_estab` | 3 ~ 7 之间波动（空闲态本来就有 TLS 连接，见 §4） |
| 唤醒 / 识别日志 | 同窗口 logcat 共 **141 054 行**，其中 `onWakeupCallback` / `onListenStarted` / `onStartTalk` / `onStopTalk` / `onStream` / `isOffline` / `AGSpeechEngine` **各 0 条** —— 窗口内没有发生任何语音交互 |

结论（仅限空闲态）：**本地引擎三件套在空闲态没有被加载**；云端侧的 TLS/网络支撑库常驻。

## 3. 沿用上一轮的既有观测（同样是空闲态）

- `:core` 常驻：`libwebsockets / libssl / libcrypto / libnghttp2_ali / libgcs_ali / libhttpdns / libcurl`；
- 未常驻：`libaceAsr / libmodel.bin / libconfigure.bin / libunet`；
- 证据：`../evidence/t7_07_libs.txt`、`../evidence/t7_07_dtneeded.txt`。

## 4. 为什么"443 连接"不能当 ASR 证据

- 该 uid（system，1000）同时承载心跳、技能请求、日志上报、OTA 探测；
- 空闲态本来就有 3~7 条 443 连接（见 §2），识别结束也不一定立刻断开（keep-alive）；
- 因此**只能"有流量"**，不能"这是 ASR"。要归因必须看 payload 或端点（`asr-aicloud.alibaba.com`），
  而抓 TLS payload 已经超出"只读观察"的边界。

## 5. 关键证据缺口：`isOffline` 没有被记录

- Hook 源码签名是 `onStream(int, const char*, u_char isFinished, u_char isOffline, u_char needNlp, u_char)`；
- 但事件 JSON 只有 `is_final`，**没有** `is_offline`
  （实测设备上 `work/events.jsonl` 首行字段：
  `version, rec, event_id, event_type, pid, session_id, text, text_bytes, text_chars, is_final, received_at_ms, recv_at_ms, stored_at_ms, seq`）；
- 结论：**现有历史事件无法统计本地/云端占比**。要补这个字段必须改 Hook 并部署 ——
  本轮明确禁止，因此记为"证据缺口"，等下一轮批准。

## 6. 结论（按任务要求的四种口径）

| 口径 | 是否成立 | 依据 |
|---|---|---|
| 已确认本地识别 | ❌ | 一次"识别瞬间加载了 libaceAsr"的观测都没有拿到 |
| 已确认云端识别 | ❌ | 没有 payload/端点级证据；443 计数不足以归因 |
| 两种通道均可用 | ✅ | `localASR=true` + `asrOnGW=true`；本地 `TGLEngine`/`LocalASRManager` 与云端 `CloudASRManager` 两套实现都在；`onStream` 有 `isOffline` 维度 |
| **当前无法确定** | ✅ **本轮实际结论** | 观测窗口内没有任何语音活动（0 条 `onWakeupCallback`），因此**没有**"识别瞬间"的数据 |

**一句话**：通道**能力**已确认（两条都在）；通道**实际使用**仍**无法确定**，
因为缺一次"说话期间"的观测，而 Hook 又没有记录 `isOffline`。

## 7. 下一轮怎么一次性钉死（两条路，任选）

**路线 1（推荐，纯只读）**：
1. 启动 `asr_watch.sh 900`（本文件已带）；
2. 用户对着设备说一句正常指令（例如"天猫精灵，现在几点了"）；
3. 结束后看采样里 `libaceAsr` 是否从 0 变正、`443_estab` 是否在识别瞬间抬升、
   logcat 里 `onWakeupCallback → onListenStarted → onStartTalk → onStream` 是否成对出现；
4. 判定：
   - `libaceAsr` 变正 → **本地识别**参与（至少加载了本地引擎）；
   - `libaceAsr` 全程 0 且 `onStream` 有文本 → **云端识别**；
   - 两者都出现 → **双通道**（例如本地出中间结果、云端出最终结果），此时必须靠 `isOffline` 区分。

**路线 2（要改 Hook，需批准）**：在事件里加 `is_offline`（Hook 里那个参数本来就有，
只是没转发），然后历史事件即可统计。
