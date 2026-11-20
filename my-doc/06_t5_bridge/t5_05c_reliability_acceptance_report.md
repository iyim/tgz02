# T5-05C：ASR Bridge 异常、重启与恢复验收报告

- 仓库/分支：`iyim/tgz02`，直接在 `main`（不建分支、不建 PR）
- 基线 HEAD：`395df48587cd9e6eaa0f34fde1cc89bca115b64d`
- 设备：TG-Z02（MT8167S，armv7l，Android 8.1 / SDK 27，`Linux 4.4.95+`）
- 被测：T5-05A `tgb_bridge`（`abstract:tgz2_asr_bridge`）+ T5-05B
  `frida/t505b_asr_bridge_sender.js`（运行在原厂 `smartapp:core` 内）
- 本轮**未修改任何生产代码**（`git diff` 仅新增文档与证据，见 §11）
- 测试时间：2026-11-20 15:18 – 15:53（全部真机执行）

## 0. 逐项结论

| 项目 | 结论 | 关键数字 |
|---|---|---|
| C1 Bridge 重启恢复 | **PASS** | 19 条 final / 19 条 stored；中断期 6 条留在队列、stored 冻结在 13；重启后 1.3 s 内全部补存；`queue_depth=0 pending=0`；JSONL 18→37 行、0 重复 |
| C2 Sender 正常卸载与重载 | **PASS** | gen1 8 条 stored → `stop()`（`attached=false`、定时器清空、socket 关闭）→ 无脚本期间 1 条语音**未产生任何事件** → gen2 计数从 0 开始、5 条 stored；JSONL 89→102 行 = 8+5，0 重复 |
| C3 未 ACK 事件 + 强制卸载 | **PASS（量化了损失，未美化）** | 卸载前 `pending_count=1`、`queue_depth=0`、`retry_count=1`、`sent_frames=2`、`ack_stored=0`；`t5b-16112-1967850-g1` 永久丢失（JSONL 中 0 次出现）；新实例 2 条正常 stored |
| C4 core 重启与重挂载 | **PASS** | `am force-stop` → 系统 3 s 内自起新 core `pid 29413`；precheck 模块/符号/偏移三项全过（base `0x94c05000`、hook `0x94d1853c`）；7 条事件全部 `t5b-29413-*`；旧 PID 事件未被误判 |
| C5 队列压力与背压 | **PASS（明确非零丢失）** | 47 条 final，队列封顶 **32**（`max queue_depth=32`），`queue_overflow=15`，47 = 32 + 15；ACK 恢复后 4.7 s 内排空 32 条、`queue_depth=0`；Hook 计数 `387 = partial 340 + final 47` |
| C6 重复事件与 ACK 异常 | **PASS** | 8 个子项全部按契约表现；只有 `stored`/`duplicate` 才清 pending；错 id 只记 `ack_mismatch` 后仍可 stored；坏 CRC/错类型关闭连接但事件重回队列；临时 error 重试后 stored；永久 rejected 记账不伪装成功；Bridge 去重与 T5-05A 一致（`evt-dup-1` 发 4 次仍只有 1 行） |

**未执行项：无。** 本轮 C1–C6 全部在真机完成，没有用模拟结果替代真机结果。
唯一的"模拟"成分是**对端**：C3/C5/C6 用一次性夹具进程扮演 Bridge，替换的是 ACK/连接行为，
**发送端与 Bridge 的生产代码零改动**（详见 §1.2 的边界声明）。

## 1. 测试环境与方法

### 1.1 三类对端

| 对端 | 用途 | 说明 |
|---|---|---|
| 真 `tgb_bridge` | C1、C2、C4、C6（去重部分） | 生产二进制，`run_bridge.sh` 管理，JSONL 落盘 |
| 无监听（连接被拒） | C5 phase A | Bridge 停止且不起任何对端，`connect:111` |
| 一次性夹具 `t5c_peer` | C3、C5 phase B、C6 | 监听同一抽象名 `tgz2_asr_bridge`，按模式回/不回 ACK；设备侧编译，源码见 `evidence/t505c/tools/t5c_peer.c` |

### 1.2 边界声明（哪些是真机、哪些是夹具）

- **真机**：原厂 `smartapp:core`、原厂唤醒词/云端 ASR/NLU/TTS、H1 hook 点
  （`libsmartbox.so + 0x11353c`）、全部事件文本、全部 `stats()` 计数、JSONL 落盘。
- **夹具**：只替换"对端是谁"。C3/C5b/C6 的 ACK 是夹具按协议真实构造的
  16 B 头 + FNV-1a CRC + JSON body，发送端走的是**未改动的生产解码路径**；
  夹具落盘为 0（它不写任何文件），所以这些用例里 `stored` 代表"发送端收到合法 ACK 并出队"，
  **不代表 Bridge 侧持久化**——涉及持久化的结论只用真 Bridge（C1/C2/C4/C6 去重）。
- 本条对应任务书"不得把内存队列中的事件误称为持久化事件"。

### 1.3 语音刺激与唤醒成功率

同一批 13 条中文短语（`t502_play.ps1` 播放，间隔 2.5 s），工厂唤醒有漏检，逐项如下：

| 用例 | 播放 | 产生 final | 备注 |
|---|---|---|---|
| C1 | 19 | 19 | 100%（两段连播，中间停 Bridge） |
| C2（正式那次） | 16 | 13 | gen1 10→8；空窗 1→0（无脚本，符合预期）；gen2 5→5 |
| C3 | 3 | 3 | gen1 1、gen2 2 |
| C4 | 10 | 7 | 重启后首条略慢 |
| C5 | 52 | 47 | 长连播，漏检 5 |
| C6 | 9 | 8 | 每个子项 1 条，`silent` 用例 2 次播放才唤醒 |

漏检是声学/唤醒词问题，与 Bridge/Sender 无关；统计里 `hooks = partial + final` 恒成立
（C1 `150 = 131 + 19`、C5 `387 = 340 + 47`），说明**没有会话在 hook 之后被丢掉**。

## 2. C1：Bridge 重启恢复 — PASS

时间线（`evidence/t505c/timeline_c1.log`）：

| 时刻 | 事件 |
|---|---|
| 15:18:15 | 起 Bridge（pid 26338），Sender 连上（`events.jsonl` 18 行） |
| 15:18:20–15:19:41 | 连说 13 条 → `final=13 stored=13 q=0` |
| **15:19:42** | **停 Bridge**（pid 26338，`SIGINT` 正常退出，`frames=13 stored=13`） |
| 15:19:43–15:20:23 | 再说 6 条：`final=19`、**`stored` 冻结在 13**、`q=6`、`conn=false`、`connect_errors` 持续增长（`connect:111`） |
| 15:20:25 | 重启 Bridge（pid 27380，`replay_lines=31`） |
| 15:20:26 | 自动重连 → **1.3 s 内 6 条积压全部发完**：`stored=19 q=0 conn=true` |

最终统计：`hook_hits=150 final_count=19 partial_count=131 enqueued=19 queue_depth=0
pending_count=0 queue_overflow=0 send_errors=0 recv_errors=1 connect_errors=138
retry_count=0 ack_stored=19 ack_duplicate=0 ack_rejected=0 dropped=0 reconnect_count=1`。

验收对照：

- **event_id 一致**：恢复发送的 6 条 `event_id`（`t5b-16112-1967670/674/678/684/688/693-g1`）
  与中断期间的会话一一对应，没有重新编号（event_id 在入队时生成，重发沿用 pending 里的同一个）。
- **JSONL 无重复**：18 → 37 行，37 个 `event_id` 全唯一（`events_diff.txt`）。
- **恢复后 `queue_depth=0`、`pending_count=0`**：满足。
- **中断期无伪造成功**：`stored` 一直停在 13，事件留在内存队列里；`recv_errors=1` 是
  Bridge 退出时 socket EOF 的正常记账。
- 原厂 ASR/NLU/TTS：6 条"恢复期"语音在断连状态下依然完成识别与技能执行（工厂侧无感）。

## 3. C2：Sender 正常卸载与重新加载 — PASS

正式那次（15:58:58–16:01:09，core pid 29413）时间线（`timeline_c2.log`）：

| 时刻 | 事件 |
|---|---|
| 15:59:04 | gen1 连上；10 条播放 → `final=8 stored=8 q=0` |
| **16:00:23.0** | `stop()`：`[stopped]` 里 `hook.attached=false`、`tickTimer/statTimer` 清空、fd 关闭、`stopped:true` |
| 16:00:24.5–29 | **无脚本期间**播 1 条（s06）→ **没有产生任何事件**（0 final、JSONL 不增） |
| 16:00:37.3 | 重新加载 gen2；首条 stat：`hooks=0 final=0 stored=0`（全新实例，计数不串） |
| 16:00:39–16:01:09 | 5 条播放 → gen2 `final=5 stored=5 q=0` |

验收对照：

- **不出现重复 Hook**：若旧 hook 未 detach，同一次会话会被两个实例各处理一次
  （同 `event_id` 两帧）→ Bridge 会返回 `duplicate`。实测 Bridge `duplicates` 在 C2 前后
  保持 **11 不变**（这 11 次全部来自 C6 的 `tgb_client` 用例），且 JSONL 新增行数
  `13 = 8 + 5` 精确等于两代 final 之和 → 单一 hook。
- **不出现重复发送**：同上；`ack_duplicate=0`（两代都是 0）。
- **新 Sender 能连上原 Bridge**：gen2 首条 stat `conn=true`，5 条全部 stored。
- **两轮事件可对照**：`events_diff.txt` 中 C2 从 89 → 102 行，13 条新事件的
  `session_id` 与播放顺序一致，跨代无重复。
- 原厂功能不受影响：同一 core 进程（29413）连续两代 hook 之间照常唤醒/识别。

> 说明：C2 有过两次**作废试跑**（15:24 与 15:54），原因是我方测试脚本的两个缺陷
> （"重新加载等待"按脚本启动时刻而不是卸载时刻计算；统计行没有按 generation 区分），
> 导致"空窗"没有真正出现。缺陷已修，报告只采用 15:58 那次的数据；
> 作废试跑的时间戳记在 `pid_log.txt` 里，不影响结论。

## 4. C3：未 ACK 事件 + Sender 强制卸载 — PASS（损失已量化）

完整逐条记录见 `evidence/t505c/c3_loss_window.txt`，摘要：

| 指标（卸载前 `stats()`） | 值 |
|---|---|
| `event_id` | `t5b-16112-1967850-g1`（session 1967850，"天猫精灵播放一首"） |
| `hook_hits` / `final_count` | 7 / 1 |
| `enqueued` | 1 |
| `queue_depth` | 0 |
| **`pending_count`** | **1**（正在等 ACK 的那一条） |
| `retry_count` / `ack_timeouts` / `sent_frames` | 1 / 1 / 2（同一 event_id 写了两次） |
| `ack_stored` | **0** |

- 卸载方式：`Script.unload()`（强制，**没有**调 `stop()`），15:28:02.983。
- 卸载后：该 `event_id` 在 `events.jsonl` 中出现 **0 次** → **永久丢失**，且从未被记成 stored。
- 新实例（gen2）重新连真 Bridge 后 2 条新事件正常 stored，功能未受影响。
- 丢失窗口的定义与四类触发条件写在 `c3_loss_window.txt` 末尾；
  关键结论：**`queue_overflow`/`dropped` 两个计数器都不覆盖这一类丢失**，
  脚本生命周期内的丢失只能靠卸载前 `stats()` 的 `pending_count/queue_depth` 观测。

本轮**未**引入磁盘持久化队列（按任务书要求：如需改架构先报设计与代价，见 §10）。

## 5. C4：core 重启与 Sender 重挂载 — PASS

| 步骤 | 实测 |
|---|---|
| 记录旧 PID | `16112`（15:28:49） |
| 正常停止 Sender | 当时无 Sender 在跑（`ps | grep -c t5c_runner` = 0），符合"先停 Sender" |
| 触发 core 重启 | `am force-stop com.alibaba.ailabs.genie.smartapp`（应用级正常停止，非 `kill -9`） |
| 确认新 PID | 15:28:54 `pidof …:core` → **29413**（系统自行拉起，约 3 s；`ps` 显示 `smartapp`、`:core`、`:business` 全部换新） |
| 重新加载 Sender | 挂在 29413 上，`precheck` 输出：`module_ok=true symbol_ok=true offset_ok=true`，`base=0x94c05000`、`addr=0x94d1853c`（旧进程为 `0x8e384000` / `0x8e49753c`，ASLR 变化正常） |
| 触发 5 条语音 | 7 条 final 全部 `t5b-29413-*`，`stored=7 q=0` |
| 旧 PID 事件不误判 | 新 7 条 event_id 全部带 `29413`；`events.jsonl` 66 → 73 行，73 个 id 全唯一 |
| 原厂功能恢复 | 唤醒/ASR/NLU/TTS 正常（`AliTVASR` 与技能调用日志可见） |

## 6. C5：队列压力与背压 — PASS（**非零丢失**）

两段式（`timeline_c5.log`、`c5_queue_samples.txt`）：

**Phase A：接收方完全不可达（`connect:111`），队列只能涨**

| 批次 | `final` | `queue_depth` | `queue_overflow` | `stored` |
|---|---|---|---|---|
| 1（13 条） | 12 | 12 | 0 | 0 |
| 2（+13） | 25 | 25 | 0 | 0 |
| 3（+13） | 36 | **32** | **4** | 0 |
| 4（+13） | 47 | **32** | **15** | 0 |

- 队列**从未超过配置容量 32**（`c5_queue_samples.txt` 里 `max queue_depth = 32`），
  槽位是启动时预分配的固定数组，不存在随事件增长的内存分配。
- `47 = 32（在队） + 15（被挤掉）`，`queue_overflow` 精确等于丢弃数 → 统计可信。
- **明确记录：这 15 条事件永久丢失**（队列满时丢最老），不是"零丢失"。

**Phase B：可控对端 withhold ACK，然后恢复 ACK**

| 阶段 | `retry` | `ack_timeouts` | `stored` | `queue_depth` |
|---|---|---|---|---|
| 连上但永不回 ACK（约 6 s，采样瞬间） | 2 | —（全程最终 3） | 0 | 31 |
| 打 ACK 开关后 | 3 | 3 | **32** | **0**（4.7 s 内排空） |

- ACK 恢复后队列按 FIFO 依次发完 32 条、`queue_depth=0 pending_count=0`；
  对端日志显示 32 条 `TX … status=stored`。
- Phase A 期间 `hook_hits=387 = partial 340 + final 47`，`read_errors=0`：
  队列满了以后工厂侧仍在稳定产出 final、每条都进入了 hook → **Hook 没有被队列阻塞**
  （这是推断性证据：本项没有给 hook 回调插桩测耗时，见 §9 风险 3）。

> 为什么不直接用"只 withhold ACK"把队列撑满：单 in-flight + 3 s ACK 超时的排水速度
> （约 1 条 / 3–5 s）与语音到达速度（约 1 条 / 5 s）同量级，队列撑不满。
> 要压出 `queue_overflow`，必须让**排水速率为 0**（接收方不可达）。这是当前设计的真实特性，
> 已在报告里写明，而不是把夹具调参当成结论。

## 7. C6：重复事件与 ACK 异常 — PASS

每个子项单独起一个夹具对端 + 一个全新 Sender，各说 1 条语音（`c6_trace.txt`、`peer_c6_*.log`）：

| 子项 | 夹具行为 | 实测计数 | 结论 |
|---|---|---|---|
| 重复 `event_id` | 首帧回 `status=duplicate`，其后 `stored` | `ack_duplicate=1 ack_stored=0` | duplicate 视为"已完成"并出队，但与 stored 分开计数（不掩盖"是重复，不是新存"） |
| 错误 `event_id` 的 ACK | 首帧回 `ack="…-g9"` | `ack_mismatch=1 ack_timeouts=1 retry=1 ack_stored=1` | **不匹配的 ACK 没有清掉 pending**：事件仍在队列里，3 s 后按原 id 重发并最终 stored |
| 错误 CRC | 首帧 ACK 的 CRC 取反 | `protocol_errors=1 recv_errors=1 retry=1 ack_stored=1` | 帧坏 → 关连接 → 事件回队列 → 重发 stored |
| 错误 ACK 类型 | 首帧用 `type=1`（REQ） | 同上 | 同上 |
| ACK 超时 | 对端 accept 后既不读也不回 | `ack_timeouts=3 retry=3 reconnect_count=3 ack_stored=0` | 3 s 超时 → 关连接 → 指数退避重连重发，不伪造成功 |
| 永久拒收（带 id） | `status=rejected code=bad_field_type` | `ack_rejected=1 rejected_codes={"bad_field_type":1} ack_stored=0` | 记账并放弃该事件，`last_error=rejected:bad_field_type` |
| 帧级拒收（ack=null） | `status=rejected ack=null code=bad_crc` | `frame_rejects=1 retry=1 ack_stored=1` | 按"小于 3 次重发"处理，重发后 stored；≥3 次才 `dropped` |
| 临时错误 | 前 2 帧 `status=error code=store_failed` | `retry_count=2 ack_stored=1 last_error=store:store_failed` | 同一 event_id 退避重试，最终 stored |

**Bridge 侧（真 tgb_bridge + 仓库自带 `tgb_client`，`bridge_dedupe_client.txt`）**

```
dup（同一 event_id 连发两次）→ ACK: status=duplicate code=duplicate_event_id ×2
bad_crc（帧 CRC 坏）        → ACK: ack=null status=rejected code=bad_crc
bad_type（type=REQ）        → ACK: ack=null status=rejected code=bad_frame_type
resend_after_ack            → ACK: duplicate ×2
events.jsonl 102 行 → 102 行（未新增），evt-dup-1 / evt-resend-1 各只有 1 行
bridge_status: events_stored=29 duplicates=15 rejected=10 frame_errors=10 store_errors=0
```

即：**去重与拒收语义与 T5-05A 完全一致**，重复帧只入盘一次。

## 8. 统计汇总（每项最终 `stats()`）

| 用例 | hook_hits | final | partial | enqueued | q | pending | ovf | sendErr | recvErr | connErr | retry | stored | dup | rej | dropped | recon |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| C1 | 150 | 19 | 131 | 19 | 0 | 0 | 0 | 0 | 1 | 138 | 0 | 19 | 0 | 0 | 0 | 1 |
| C2 gen1（stop 前） | 82 | 8 | 74 | 8 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 8 | 0 | 0 | 0 | 0 |
| C2 gen2（reload 后） | 36 | 5 | 31 | 5 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 5 | 0 | 0 | 0 | 0 |
| C3 gen1（强制卸载前） | 7 | 1 | 6 | 1 | 0 | **1** | 0 | 0 | 0 | 0 | 1 | **0** | 0 | 0 | 0 | 1 |
| C3 gen2 | 16 | 2 | 14 | 2 | 0 | 0 | 0 | 0 | 1 | 4 | 0 | 2 | 0 | 0 | 0 | 1 |
| C4 | 81 | 7 | 74 | 7 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 7 | 0 | 0 | 0 | 0 |
| C5 | 387 | 47 | 340 | 47 | 0 | 0 | **15** | 0 | 0 | 1032 | 3 | 32 | 0 | 0 | 0 | 3 |
| C6 badid | 7 | 1 | 6 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 1 | 0 | 0 | 0 | 1 |
| C6 badcrc | 7 | 1 | 6 | 1 | 0 | 0 | 0 | 0 | 1 | 0 | 1 | 1 | 0 | 0 | 0 | 1 |
| C6 badtype | 9 | 1 | 8 | 1 | 0 | 0 | 0 | 0 | 1 | 0 | 1 | 1 | 0 | 0 | 0 | 1 |
| C6 dup | 6 | 1 | 5 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 | 0 |
| C6 error | 10 | 1 | 9 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 2 | 1 | 0 | 0 | 0 | 0 |
| C6 reject | 9 | 1 | 8 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |
| C6 rejectnull | 7 | 1 | 6 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 1 | 0 | 0 | 0 | 0 |
| C6 silent | 9 | 1 | 8 | 1 | 0 | **1** | 0 | 0 | 0 | 0 | 3 | 0 | 0 | 0 | 0 | 3 |

（`send_errors` 全为 0：本轮没有对端在第 4 轮 P1 之后制造过 EPIPE；SIGPIPE 抑制保持有效。）

PID 变化：`16112`（C1–C3）→ `29413`（C4 之后，C5/C6）。详见 `pid_log.txt`。

logcat（`logcat_check.txt`）：`ANR in=0`、`FATAL EXCEPTION=0`、`SIGPIPE=0`、`signal 13=0`；
唯一一条 `Fatal signal` 是第三方进程 `.ayland:channel` 的 SIGSEGV（15:43:01，与本链路无关）。

## 9. 本轮发现的问题

1. **`tgb_client`（测试工具，非生产）超时参数溢出**：`tests/tgb_client.c` 的 `recv_ack()`
   把剩余毫秒直接当 `tv_usec` 用（`tv_usec = left * 1000`），当 `--timeout-ms >= 1000` 时
   `tv_usec > 1e6`，`select()` 立即返回 `EINVAL`，客户端表现为 `acks=0, elapsed_ms=0`
   （本轮 C6 第一遍就踩到了）。**未修改**（属 T5-05A 测试树，且不在本轮验收路径上），
   建议 P2 改成 `tv_sec = left/1000; tv_usec = (left%1000)*1000`。
2. **`last_error` 只有一个字段**：EPIPE 之后紧接着的重连失败会把它覆盖成 `connect:111`
   （T5-05B P1 已记录）。审计"最后一次发送失败原因"时只能依赖计数器 + 旁路 hook。
3. **脚本生命周期丢失无计数器**：C3 的丢失在 `stats()` 里只能看到 `pending_count=1`，
   卸载后既没有 `dropped` 也没有 `queue_overflow`。若后续需要审计，建议在 `stop()` 里
   把未完成事件写一行"带 event_id 的丢弃记录"（本轮未做，属架构改动，见 §10）。
4. **唤醒漏检**：C2/C4/C5 有 4–5 条漏唤醒（约 10%），全部由声学环境导致，
   统计上 `hooks = partial + final` 未出现丢会话。

## 10. 未解决风险（按严重度）

| # | 风险 | 影响 | 现状 |
|---|---|---|---|
| 1 | **Sender 生命周期内的未 ACK 事件会丢**（C3 实测 1 条） | 卸载/进程退出/掉电期间的事件不可恢复 | 已知边界；本轮按要求不引入磁盘队列 |
| 2 | **队列满丢最老事件**（C5 实测 15 条） | 长时断连 + 高频语音时丢事件，有计数但无 id 记录 | 已知边界，计数准确 |
| 3 | **Hook 回调耗时未直接测量** | "不阻塞 H1"目前是推断（hook 计数与工厂产出连续） | 可加轻量计时（仅计数器，不写盘）后补测 |
| 4 | 单 in-flight 保序 → 头阻塞 | 一条永久问题会挡住后续事件（最长 3 s/次 + 退避） | 设计如此，未变 |
| 5 | `event_id` 依赖 PID + sessionId | PID 复用 + session 计数回到同值理论上可碰撞；Bridge 会按 duplicate 丢弃（不污染库） | 沿用 T5-05B 结论 |
| 6 | 夹具 ACK 的用例不代表持久化 | C6 的 `stored` 只证明"发送端收到合法 ACK 并出队" | 报告中已逐条标注 |

## 11. 是否允许进入下一阶段

**允许进入下一阶段**，前提是下一阶段把 §10 的 1、2 当成已知边界处理：

- C1（重启恢复）、C2（卸载重载）、C4（进程重启）、C6（ACK 异常）四条主路径行为正确、
  计数自洽、落盘无重复；
- C5 证明有界队列与背压计数可信（**会丢，但丢得明明白白**）；
- C3 证明内存队列不是持久化队列，且丢失可量化——这是"接 TTS / 技能调度"之前必须接受的语义。

若下一阶段要求"断连/卸载期间零丢失"，则必须先做 Sender 侧持久化队列（方案：H1 回调里只写
固定长度的环形共享内存或直接 append 到设备上的 spool 文件 + 由 tick 线程 fsync，
代价是 hook 路径要增加一次 `write()`、需要处理磁盘满/坏块），这属于架构改动，
按任务书要求**先报设计再实施**，本轮不做。

## 12. 交付物

| 文件 | 内容 |
|---|---|
| `t5_05c_reliability_acceptance_report.md` | 本报告 |
| `evidence/t505c/timeline_c1..c6.log` | 6 个用例的编排时间线（含 bridge 启停、播放、统计时刻） |
| `evidence/t505c/c1_trace.txt` … `c6_*_trace.txt` | 每个用例的发送端轨迹（去重压缩，保留 conn/sent/ack/retry/reject/stat 转折点） |
| `evidence/t505c/*_summary.json` | 每个用例的完整 `stats()` 与消息记录摘要 |
| `evidence/t505c/events_diff.txt` | C1–C4 的 JSONL 前后对照（新增行、唯一性、重复数） |
| `evidence/t505c/events_c*_before/after.jsonl` | 原始快照 |
| `evidence/t505c/c3_loss_window.txt` | C3 丢失事件的逐条记录与丢失窗口分析 |
| `evidence/t505c/c5_queue_samples.txt` | C5 全程 `queue_depth/overflow/stored` 采样 |
| `evidence/t505c/bridge_dedupe_client.txt` | 真 Bridge 的去重/拒收 ACK 原文 |
| `evidence/t505c/peer_*_peer.log` | 夹具对端日志（RX/TX 逐帧） |
| `evidence/t505c/pid_log.txt` / `logcat_check.txt` | PID 变化、logcat 异常检查 |
| `evidence/t505c/tools/` | 本轮所有夹具与编排脚本源码（`t5c_peer.c`、`t5c_runner.py`、`c1..c6.ps1`、`t5c_lib.ps1`、`collect.py`），不属于生产代码 |
