# T7-01 真机语音多轮对话证据（原厂 ASR → AI Worker → 本地模型代理 → 原厂 TTS）

- 设备：TG-Z02 / CCH `AILABS_S1L` / Android 8.1（SDK 27）/ ARM32 / `192.168.1.9:5555`
- Worker：`/data/local/tmp/t5_bridge/bin/ai_worker`，sha256 `94d53417294bc39c9193c9e012de93b9c37e88cdc1dc0887721ec05c2a74b4df`
  （由 `android/build.ps1` 产出，`evidence/t7_01_ndk_build.log`，0 warning）
- 配置：`/data/local/tmp/t5_bridge/ai_worker/worker.conf`（0600 root，只含 key 的**路径**）
  `provider=deepseek`、`base_url=http://192.168.1.13:8790/v1`、`model=deepseek-flash`、
  `temperature=0.3`、`max_tokens=300`、`context_enabled=1`、`context_max_messages=6`
- 测试脚本：`tests/t7_01_context_device.ps1`（P2/P3 段），本次运行 `evidence/t7_01_device.log`
  → **103 ASSERT OK / 0 FAIL**（含 P0 部署、P1 合成事件、P2 真实语音三连、P3 重启恢复、P4 凭据卫生）

## 1. 真实语音是怎么打的

唤醒词与指令**分两段音频**播放，中间固定 3 秒间隔（与 T5-06D 的约定一致）：

```
plan = s01_wake.wav : 3000ms , <命令片段>.wav : 200ms , silence.wav : 3000ms
```

- `s01_wake.wav` 是 T5-06D 用过的"天猫精灵"唤醒音频（38 852 B）；
- 命令片段用 Windows 中文语音（Microsoft Huihui Desktop，rate=-1）现场合成，**不含唤醒词**；
- 末尾接 1.2 秒真实静音片段，让原厂 ASR 的端点检测能自然收尾（否则尾字常被截断）；
- 每轮最多重试 8 次并轮换同一问题的不同说法；重试原因逐条写进日志。
- 播放器：`_analysis/t502_play.ps1`（PC 扬声器 → 设备麦克风），不是把文本直接塞进 events.jsonl。

## 2. 三连对话实况（`evidence/t7_01_context_final.json`）

| 轮次 | 用户（原厂 ASR 输出） | AI 回复（本地代理 `deepseek-flash`，HTTP 200） |
|---|---|---|
| 1 | 天猫精灵说说东京的景点 | 东京可以逛浅草寺、东京塔、晴空塔、明治神宫，还有涩谷十字路口和上野公园。想购物去银座，想玩就去东京迪士尼。 |
| 2 | 天猫精灵**那里**有什么好吃的 | **东京**好吃的有寿司、拉面、天妇罗、烧肉，还有筑地市场的海鲜和月岛文字烧。想省事就去便利店… |
| 3 | 天猫精灵**推荐个景点** | 推荐**浅草寺**，第一次去**东京**很合适，能看雷门、逛仲见世商店街… |

第 2、3 轮的问句里都没有"东京"，但回复都落在东京（第 2 轮开头直接写"东京好吃的…"，
第 3 轮"第一次去东京很合适"）。这是上下文真的被送进模型的结果，不是巧合复述。

## 3. 每轮请求规模（`evidence/t7_01_device.log`）

Worker 每次启动会截断自己的日志（T5-06C 行为），所以测试脚本在**重启之前**把每轮的请求规模
记进证据日志：

```
[2026-11-21 20:09:26]   req_msgs sequence: 1,3,5
```

`req_msgs` = 本轮实际发给模型的 messages 条数（历史 + 本轮 user）：
第 1 轮 1 条、第 2 轮 3 条（前一轮问答 + 本轮问题）、第 3 轮 5 条（前两轮问答 + 本轮问题）。

同一日志里对应的落盘记录（`evidence/t7_01_context_final.json`、`t7_01_worker_status_final.json`）：

```
context commit: … turns=1 msgs=2
context commit: … turns=2 msgs=4
context commit: … turns=3 msgs=6
status: context.enabled=1  context.max_messages=12  context.messages=6  context.turns=3  load_state=2
```

第 3 轮请求带了 4 条历史，正好是前两轮的完整问答；两轮都没有出现"只剩 assistant"的半轮。

## 4. 原厂 TTS 播报（`evidence/t7_01_tts_journal_tail.jsonl`）

```
{"ts":"2026-11-21T20:08:02.021+0800","kind":"tts","event_id":"t6-1194-1967615-g48","outcome":"ok","dur_ms":11696,"text_bytes":159}
{"ts":"2026-11-21T20:08:40.541+0800","kind":"tts","event_id":"t6-1194-1967621-g49","outcome":"ok","dur_ms":11565,"text_bytes":162}
{"ts":"2026-11-21T20:09:14.317+0800","kind":"tts","event_id":"t6-1194-1967626-g50","outcome":"ok","dur_ms":7832,"text_bytes":108}
```

三条回答都由原厂 TTS 完整播出（`outcome=ok`，时长 11.7 s / 11.6 s / 7.8 s）。

## 5. 重启恢复（同一份日志的 P3 段）

```
ASSERT OK   the restarted worker has the context switch on
ASSERT OK   restart restored all 6 messages
ASSERT OK   restart restored all 3 turns
ASSERT OK   restart load state is "restored"
ASSERT OK   status: context.turns = 3
ASSERT OK   status: context.messages = 6
ASSERT OK   status: context.load_state = 2 (restored)
```

`run_ai_worker.sh stop` → `start-deepseek` 之后，Worker 从 `context.json` 读回 3 轮 6 条消息，
状态文件同时给出 `enabled/max_messages/messages/turns/load_state/saves/save_errors`。

## 6. 关于"语音识别本身"的边界

- 原厂 ASR 是声学的：同一句话可能识别成不同结果，也可能完全没触发（安静环境下约 1/5 的尝试无事件）。
  脚本对每轮做"要求出现关键词"的重试，并把每次失败原文写进日志，**不用模拟 JSON 顶替**。
- 设备自己播报 TTS 时会被自己的麦克风听到，偶发多出一条无关的对话轮次（例如"天猫精灵"单独成句）。
  这类噪声不会破坏历史结构（永远成对写入），也不会挤掉本次要验证的三轮（上限临时放宽到 12 条）。
- 结论：链路（唤醒 → 唤醒词分离 → ASR final → 事件 → Worker → 本地代理 → TTS 播报）是真实的，
  多轮上下文的效果可在上表逐字核对。
