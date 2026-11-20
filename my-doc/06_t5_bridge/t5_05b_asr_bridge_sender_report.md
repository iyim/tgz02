# T5-05B 实施报告：Frida H1 ASR final → 本机 Bridge 发送端

- 仓库：`iyim/tgz02`（直接在 `main`，未建分支、未建 PR）
- 基线：`382e19f9`（T5-05A 复审通过后的 main）
- 设备：TG-Z02（`AILABS_S1L`，armv7l，Android 8.1 / AliOS `6.1.8-RS-20221104.1459`，SDK 27）
- 目标进程：`com.alibaba.ailabs.genie.smartapp:core`，PID **16112**（全程未变）
- 新增文件：`frida/t505b_asr_bridge_sender.js`（发送脚本）、`frida/t505b_runner.py`（宿主编排/统计）
- 未改动：T5-04 探针、T5-05A Bridge 生产代码、T3/T4、原厂 APK/native/配置/分区

## 0. 结论

真实链路已打通并真机验收：

```
原厂云端 ASR → H1 SessionManager::onStream(isFinished=1)
  → Hook 内只入有界队列（32 槽）
  → 20 ms 定时器：非阻塞 AF_UNIX SOCK_STREAM(abstract:tgz2_asr_bridge) 单 in-flight
  → tgb_bridge 校验/去重/fsync → ACK(status,event_id)
  → 事件出队
```

| 验收项 | 实测 |
|---|---|
| 真实 final 事件落盘 | **13 条**（12 个不同语句，含 2 条重复文本的不同会话） |
| Frida 侧 ACK | **13/13 stored，event_id 一一对应**（`evidence/t505b/t505b_comparison.md`） |
| partial 是否发送 | **未发送**：`partial_count` 74+24+7+8，`enqueued == final_count` |
| 每 session 恰好 1 个 final | `dup_session_final = 0`，库里 13 行 13 个不同 session_id |
| 中文完整性 | 文本与朗读语句一致（2 条是原厂 ASR 自己截短，见 §6） |
| Bridge 离线→恢复 | 停 Bridge 期间 2 条事件排队，重启后自动重连并全部 stored（`reconnect_count=1`，无丢失） |
| 临时存储错误 | 同 event_id 重试 20 次、退避到 2 s、`ack_stored=0`、`dropped=0`、库文件未改变 |
| 原厂共存 | TTS/NLU/音量（音量被改成 50）/音乐（state=3 播放）均正常；detach 后原厂照常工作 |
| 崩溃/ANR | logcat 无 `FATAL` / `ANR in`；core 单一实例、PID 稳定 |
| 未解决限制 | 见 §9（脚本卸载丢失未 ACK 内存事件、头阻塞、event_id 理论碰撞） |

## 1. Hook 与模块校验（任务书 §3）

只 Hook 已验证的 H1，加载时做三级校验（与 T5-04 同一套，不符即拒绝 Hook 并抛错，不降级）：

```
module : libsmartbox.so            base = 0x8e384000
symbol : _ZN9AliAiLabs4AGUI14SessionManager8onStreamEiPKchhhh
offset : 0x11353c                  addr = 0x8e49753c
args   : args[1]=sid(int)  args[2]=text(char*)  args[3]=isFinished(0=partial,1=final)
```

真机返回 `{"t":"precheck","ok":true,"hook":{"module_ok":true,"symbol_ok":true,"offset_ok":true,"attached":true}}`。

Hook 回调内**只有**：读 sid → 逐字节有界读 text（沿用 T5-04 P2 的 `readU8` 遇 NUL 即停，上限 512）→
读 isFinished → 判 final → 生成 event_id → 入有界队列 → 计数器。
回调内没有 socket / connect / send / recv / sleep / 文件 / 网络 / 大量日志。
未修改参数、返回值、内存、寄存器；未调用任何原厂函数。

## 2. 发送架构（任务书 §4）

- 独立 `setInterval`（20 ms）驱动状态机：连接 → 写帧 → 读 ACK → 出队。
- 非阻塞 socket：`socket(AF_UNIX,SOCK_STREAM)` + `fcntl(F_SETFL,O_NONBLOCK)` 并回读校验；
  `connect` 若 `EINPROGRESS/EALREADY` 则用 `getsockopt(SO_ERROR)` 在下个 tick 判定完成。
- 显式处理：部分写（`writeOff` 续写）、部分读（4 KB 组帧缓冲按头长切帧）、
  `EAGAIN/EWOULDBLOCK`（留到下个 tick）、`EINTR`（重试）、对端断开（`recv()==0`）、
  Bridge 重启（退避重连 + 未 ACK 事件回到队头重发）。
- **单 in-flight**：收到匹配 `event_id` 的 ACK 之前不发下一条（第一版契约，避免 ACK 关联复杂化）。
- 重试用**原 event_id**（不生成新 id），队头插入（不插队），指数退避 100 ms→2 s 封顶。
- 队列 32 槽，满则丢最老的并 `queue_overflow++`（不静默）。

## 3. 协议实现（任务书 §5）

与 `android/tgb_proto.h` 完全一致，一个字节都没改：

| off | size | 内容 |
|---|---|---|
| 0 | 4 | magic `'T','G','B','1'` = 0x31424754 |
| 4 | 1 | 帧版本 1 |
| 5 | 1 | 类型 1=REQ / 2=ACK |
| 6 | 2 | hdr_len = 16 |
| 8 | 4 | body_len（JSON 的 **UTF-8 字节数**） |
| 12 | 4 | CRC = FNV-1a 32(body) |

body：`{"version":1,"event_id":..,"event_type":"asr_final","pid":..,"session_id":"..","text":..,"is_final":true,"received_at_ms":..}`
- `text` 用 `JSON.stringify` 生成（中文原样输出、引号/反斜杠/控制字符自动转义），
  `body_len` 与 511 字节上限都按 **UTF-8 字节数** 计算（`utf8Len()` 逐码点累加）。
- `session_id` 以字符串发送（工厂的 sid 是整数 1967345 等，字符集 `[0-9]` 合法）。

ACK 侧**自己实现校验**，不复用服务端"只收 REQ"的 `tgb_hdr_decode`：
magic / ver / `hdr_len==16` / `type==2` / `body_len<=1024` / CRC / `JSON.parse` / `event_id` 匹配。

### 3.1 上机时才暴露的两个坑（都已修复并写进注释）

1. **本机 Frida 16.7.19 的脚本运行时是 QJS**：`NativePointer.writeXX(value, offset)`
   的第二个参数被忽略，所有字节都写到 offset 0 → 服务端一律 `bad_magic`。
   同理 `readXX(offset)` 也不可信。全部改成 `.add(offset).writeXX(value)` / `.add(offset).readXX()` 后正常。
   （隔离实验：同一脚本里 A 形式得到 `efbeadde0000…`，B 形式得到正确的 `5447423101011000…`。）
2. `status=error`（临时存储错误）里曾把 `backoffUntil` 覆盖成固定 100 ms，
   导致 45 s 内重试 311 次；改为交给 `requeuePending()` 的指数退避后变成 20 次/40 s（1 次/2 s 封顶）。

## 4. event_id 与 session 生命周期（任务书 §6 实测）

event_id 形式：`t5b-<pid>-<sessionId>-g<generation>`，例如 `t5b-16112-1967345-g1`。
- 重试不变：重试用 `pending` 里的同一个字符串（实测 20 次重试全部是 `t5b-16112-1967443-g1`）。
- 不同会话不误判：sessionId 不同 → id 不同；**同一文本的两个会话都入库**（见 §6 的两组重复文本）。
- 同一 session 出现第二次 final（工厂异常）：generation 递增（`-g2`），不覆盖前一条，并计 `dup_session_final`。
  本轮 `dup_session_final = 0`，即没有出现。

**sessionId 唯一性实测（本 PID 16112 生命周期内）**：

```
1967345  1967349  1967353  1967357  1967361  1967365  1967369
1967381  1967399  1967412  1967421  1967425  1967435  1967451
（logcat 里 detach 后的一次原厂会话：1967458）
```

- 严格单调递增、无重复（14 次观测，步长 4）；T5-04 记录的 `1967284/1967288/…` 同一序列，早于本轮的编号。
- 结论：**同一 PID 生命周期内 sessionId 唯一** → 可采用 `pid + sessionId` 组合；本轮另外加了 generation 兜底。
- 残留风险：若进程重启后 PID 被复用且工厂会话计数器回到相同值，理论上可碰撞（本机未观测到）。见 §9。

## 5. 队列 / 重试 / ACK 处理（任务书 §4、§7）

| 情形 | 处理 | 计数 |
|---|---|---|
| ACK `stored` 且 event_id 匹配 | 事件完成、出队 | `ack_stored` |
| ACK `duplicate` 且匹配 | 事件完成（幂等，说明之前确实落过盘） | `ack_duplicate` |
| ACK `error`（store_failed / store_unavailable） | **保留事件**，同 id 回队头，指数退避重试 | `retry_count` / `requeued` |
| ACK `rejected` 且 ack=event_id（消息级永久拒收） | 记录 code，事件丢弃，**不伪装成功** | `ack_rejected` / `rejected_codes[code]` |
| ACK `rejected` 且 ack=null（帧级拒收：magic/ver/len/crc） | 记录 code；重发 3 次后丢弃并显式记账 | `frame_rejects` / `dropped` |
| ACK event_id 不匹配 | 记异常，不清空当前 in-flight | `ack_mismatch` |
| 等 ACK 超时 3 s | 关连接、同 id 重发、退避 | `ack_timeouts` / `retry_count` |
| 对端关闭 / 读错误 | 关连接、同 id 重发、退避 | `recv_errors` / `reconnect_count` |
| 写失败（非 EAGAIN） | 关连接、同 id 重发 | `send_errors` |
| 连接失败（Bridge 未起） | 每 300 ms 重连 | `connect_errors` |
| 队列满 | 丢最老的并记账 | `queue_overflow` |

统计（`rpc.exports.stats()`）字段：`hook_hits, final_count, partial_count, empty_count, read_errors,
queue_depth, pending_count, queue_overflow, connect_errors, send_errors, recv_errors,
ack_stored, ack_duplicate, ack_rejected, retry_count`，另加诊断：
`text_too_long, ack_mismatch, ack_timeouts, frame_rejects, dropped, protocol_errors,
dup_session_final, reconnect_count, enqueued, requeued, sent_frames, rejected_codes, last_error`。

`rpc.exports.stop()`：停两个定时器 → detach Hook → 关闭 socket → 输出最终统计与 `{t:'stopped'}`。

## 6. 真机验收记录（任务书 §8）

### 6.1 主验收（`evidence/t505b/frida_accept1.jsonl`，200 s）

阶段 A（Bridge 在线，6 条）；阶段 B（**停掉 Bridge**，2 条）；阶段 C（重启 Bridge 后 4 条）。

```
final: hooks=83 final=9 partial=74 empty=0 read_errors=0
       enqueued=9 sent_frames=9 ack_stored=9 ack_duplicate=0 ack_rejected=0
       retry=0 reconnect=1 connect_errors=63 recv_errors=1 protocol_errors=0
       pending=0 queue_depth=0 queue_overflow=0 dropped=0
```

- 阶段 A：5 条 stored；阶段 B（离线）2 条排队 → 阶段 C 重启后 **14:35:09 一次性 stored**
  （`reconnect_count=1`、`connect_errors=63` 即离线期间 63 次 `ECONNREFUSED` 重连），无丢失。
- 12 次播放产生 9 个会话：3 次未唤醒（声学/唤醒词问题，`hook_hits` 说明没有任何会话被漏抓）。
- 说明：本阶段的脚本是"退避修复前"的版本（该阶段 `retry=0`，正常路径与最终版本完全一致）；
  修复后的最终脚本由 §6.4/§6.5 两轮（错误路径 + 恢复）与 §6.6（detach 后）验证。

### 6.2 补充（`frida_accept2.jsonl`，75 s，含 2 条与主验收**文本相同**的语句）

`hooks=27 final=3 partial=24 stored=3`，`dup=0`，`dup_session_final=0`，
`enqueued=3`（= final 数）→ partial 未发送、同文本不同会话未被误判为重复。

### 6.3 库文件对照（`t505b_comparison.md` + `t505b_bridge_events.jsonl`）

13 条事件与 Frida 侧 ACK 一一对应（13/13 `stored`），无「ACK 了但库里没有」，也无「库里多出」。

```
seq  session_id   text
1    1967345      天猫精灵现在几点了
2    1967349      天猫精灵今天天气怎么样
3    1967353      天猫精灵明天会下雨吗
4    1967357      天猫精灵你叫什么名字
5    1967361      天猫精灵现在北京时间几点
1    1967365      天猫精灵今天星期几          ← 离线期间产生，重启后补存
2    1967369      天猫精灵帮我算一下          ← 同上
3    1967381      天猫精灵把音量调到五十
4    1967399      天猫精灵播放一首
5    1967412      天猫精灵现在几点了          ← 与 #1 文本相同、不同会话，未误判重复
6    1967421      天猫精灵关灯
7    1967425      天猫精灵播放一首            ← 与 #9 文本相同、不同会话
（重启后 seq 从 1 重新计数，属 Bridge 每进程内计数，符合设计）
```

两条文本与原句不同（"帮我算一下三加五"→"帮我算一下"、"播放一首轻音乐"→"播放一首"），
是**原厂云端 ASR 自己截短**，不是发送端截断：`text_bytes` 与收到的文本严格对应（24/27 字节）。

### 6.4 临时存储错误（`frida_fault2.jsonl`，Bridge 以 `--fault-after-writes 0` 启动）

```
tries=0..19 全部是同一个 event_id：t5b-16112-1967443-g1
间隔：5.107 → 5.331 → 5.806 → 6.628 → 8.258 → 10.294 … 38.728（指数退避，2 s 封顶）
final: ack_stored=0 ack_duplicate=0 ack_rejected=0 dropped=0 pending_count=1 retry_count=20
bridge: store_errors=20 store_failed=true events_stored=0
events.jsonl：与注入前 **逐字节相同**（cmp 通过）→ 没有把失败伪装成成功
```

### 6.5 故障恢复（`frida_recover.jsonl`）

恢复常规 Bridge（`replay_lines=12`）后再播一条：
`ack {"event_id":"t5b-16112-1967451-g1","status":"stored"}`，库变 13 行。

### 6.6 原厂共存

| 项 | 证据 |
|---|---|
| NLU | 13 个会话都得到原厂响应（"现在几点了"→报时、"天气"→天气播报、"三加五"→算术、"关灯"→设备控制分支） |
| 音量 | `settings get system volume_music_speaker` = **50**（"把音量调到五十"被执行） |
| 音乐 | `dumpsys media_session` 出现 `state=PlaybackState{state=3...}`（"播放一首"触发播放）；随后 detach 状态下说"停止播放"→ `state=2` |
| TTS | 各会话均有原厂播报（`onTtsStart` 日志与音频输出） |
| detach 后原厂 | 脚本 stop/detach 后再播一条：logcat `onListenStarted … sessionID is 1967458`、`SessionManager.cpp:onStream:641 … isFinished = 0`，Bridge 文件**未新增**（13 行不变） |
| 崩溃/ANR | logcat 无 `FATAL` / `ANR in`；`pidof …:core` 全程 16112，单实例 |
| 未改原厂 | 只在 `/data/local/tmp/t5_bridge/` 写文件；未装任何 APK、未改 `libsmartbox.so`、未 remount |

## 7. Frida 统计输出（样例）

```
[stat] hooks=83 final=9 partial=74 empty=0 readErr=0 q=0 ovf=0 stored=9 dup=0 rej=0 retry=0
       conn=true connErr=63 sendErr=0 recvErr=1 lastErr=connect:111
{"t":"final_stats","stats":{"hook_hits":83,"final_count":9,"partial_count":74,"empty_count":0,
 "read_errors":0,"queue_depth":0,"pending_count":0,"queue_overflow":0,"connect_errors":63,
 "send_errors":0,"recv_errors":1,"ack_stored":9,"ack_duplicate":0,"ack_rejected":0,
 "retry_count":0,"enqueued":9,"requeued":0,"sent_frames":9,"protocol_errors":0,
 "dup_session_final":0,"reconnect_count":1,...}}
```

## 8. 交付物

| # | 交付 | 位置 |
|---|---|---|
| 1 | Frida 发送脚本 | `frida/t505b_asr_bridge_sender.js`（+ 宿主 `frida/t505b_runner.py`） |
| 2 | 协议实现说明 | 本报告 §3（+ 脚本头部注释） |
| 3 | session ID 唯一性实测报告 | 本报告 §4 |
| 4 | 队列/重试/ACK 说明 | 本报告 §5 |
| 5 | Frida 统计输出 | 本报告 §7、`evidence/t505b/runner_*.out` |
| 6 | 真机 10 条以上真实语音记录 | 本报告 §6.1/6.2、`evidence/t505b/play_*.log` |
| 7 | events.jsonl 对照结果 | 本报告 §6.3、`evidence/t505b/t505b_comparison.md` |
| 8 | Bridge 离线与恢复记录 | 本报告 §6.1/6.5 |
| 9 | 原厂功能共存记录 | 本报告 §6.6 |
| 10 | 异常与未解决限制 | 本报告 §3.1（上机发现的两个坑）、§9 |

## 9. 未解决限制（明确列出）

1. **脚本卸载 / core 进程退出时，内存中未 ACK 的事件会丢**。本轮不做 Frida 侧持久化，
   队列只在内存（32 槽）。正常路径下 in-flight 有 ACK 兜底、队列里的事件在 Bridge 恢复后补发；
   但 stop/detach 时若仍有 pending/queue，事件即丢失（`stop()` 会在 `{t:'stopped'}` 里报
   `pending_count` / `queue_depth`，可观测但不恢复）。→ 留给 T5-05C。
2. **头阻塞**：单 in-flight + 保序，一条事件遇到永久性存储故障会一直重试（1 次/2 s）并挡住后续会话；
   队列满时按策略丢最老的并记 `queue_overflow`。这是"保序优先"的代价，本轮未做旁路通道。
3. **event_id 理论碰撞**：`pid + sessionId + gen` 依赖 sessionId 在同一 PID 内唯一（已实测 14 次无重复）；
   若进程重启后 PID 被复用、且工厂会话计数器回到同一数值，可能生成重复 id。
   届时 Bridge 会把它当 duplicate 丢弃（数据丢失但不污染库）。缓解办法：把脚本的启动时间戳加进 id
   （会让"重试不变"与"每会话唯一"之外多一个维度），本轮未采用，等你确认。
4. **未做 Frida 侧磁盘持久化、未做多客户端**（Bridge 侧支持 8 连接，发送端只用 1 条）。
5. **本次验收丢 3 次唤醒**（17 次播放 → 14 个会话），属声学/唤醒词检测，与发送端无关；
   真机上如果麦克风环境更差，会话数会变少，但已建立会话的 final 不会丢（`hook_hits == partial+final`）。
6. **`received_at_ms` 用 `Date.now()`（脚本侧墙钟）**，与 Bridge 的 `recv_at_ms` 可相减看链路时延；
   设备改时间会让该差值失真。
