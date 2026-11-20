# T5-05B P1：发送端 SIGPIPE 抑制（真机验证报告）

- 基线：`f13a0cded03b04a80b507b3a230fa222293b34f0`
- 设备：TG-Z02（CCH / `AILABS_S1L`，MT8167S，armv7l，Android 8.1 / SDK 27，
  `Linux localhost 4.4.95+ #1 SMP PREEMPT armv7l`，`O11019 test-keys`）
- 被测进程：原厂 `com.alibaba.ailabs.genie.smartapp:core`，PID **16112**（全程未变）
- Frida：设备端 frida-server 16.7.19，脚本运行时 QJS；主机 frida-python 16.7.19

---

## 1. 结论

| 项 | 结果 |
|---|---|
| 生产代码改动 | 只有两处：新增 `MSG_NOSIGNAL = 0x4000`；`pumpWrite()` 的 `libc.send()` 第 4 参数 `0` → `MSG_NOSIGNAL` |
| 进程级 SIGPIPE 处置 | 未改动（没有 `signal()/sigaction()`、没有 `sigprocmask`），只做逐次 send 标志 |
| 错误处理链 | 未改动：`send_errors++` → `last_error='send:'+e` → `closeConn()` → `requeuePending()` → 指数退避重连 → 恢复后按原 `event_id` 重发 |
| JS 语法 | `node --check` 通过（exit=0） |
| 参数确认（真机） | Hook libc `send`：发送端调用 `flags=0x4000`（`MSG_NOSIGNAL`），见 §6.2 |
| 真机 EPIPE | 发送端的 `send()` 在破裂 socket 上返回 **-1 / errno=32 (EPIPE)**，core PID 保持 16112，无 FATAL/ANR，事件未被记为 stored，恢复后同一 `event_id` 落盘一次 |
| 反证（不带标志） | 同一设备、同一 socket 状态，`send(..., 0)` 的进程被 **signal 13 (SIGPIPE)** 杀死（隔离夹具进程，见 §3） |
| 落盘对照 | 13 → 18 行，`event_id` 18 个全唯一，0 重复，无伪造成功 |

**真机是否真正验证了 SIGPIPE 故障场景？**

是，但需要分层说清楚（不掩饰）：

1. **「发送端在真机上对已破裂连接实际执行 `send()`」这一条已经真实发生**：在真实的
   原厂 `smartapp:core`（PID 16112）里、跑的是未经改动的生产发送脚本，`send()`
   真的返回了 `-1/EPIPE`，进程活着，错误走了普通发送失败分支（§6）。
2. **但「真实 `tgb_bridge` 被 `kill -9` 之后由发送端直接写」这个特定画面，在当前
   tick 顺序下无法自然出现**：`tick()` 先 `pumpRead()` 再 `pumpWrite()`，对端进程一死，
   `recv()` 立刻返回 0（EOF），连接在写之前就被关掉了。T1 用真 Bridge 强杀实测到了
   这一点：`recv_errors=1`、`send_errors=0`、之后全是 `connect:111`（§5）。所以
   「只停 Bridge」的路径**不会**触发 SIGPIPE，也正是评审要求「连接 111 不算通过」的原因。
3. 因此 T2 用设备端夹具把对端造成 **`shutdown(SHUT_RD)` 且进程存活** 的状态：
   内核语义上这就是「写就 EPIPE、读不到 EOF」的破裂连接（§3 mode 3 实测），
   发送端在该连接上真的执行了 `send()`。夹具只改了「对端是谁」，没有改发送端、
   没有改协议、没有改 tick 顺序。

## 2. 生产代码改动（唯一改动）

文件：`my-doc/06_t5_bridge/frida/t505b_asr_bridge_sender.js`

```diff
@@ -72,6 +72,10 @@ var SOL_SOCKET = 1, SO_ERROR = 4;
 var EINTR = 4, EAGAIN = 11, EWOULDBLOCK = 11;
 var EALREADY = 114, EINPROGRESS = 115, EISCONN = 106;
 var EPIPE = 32, ECONNRESET = 104, ENOTCONN = 107, ECONNREFUSED = 111;
+/* MSG_NOSIGNAL：对端已关闭时，send() 只返回 EPIPE，不向进程投递 SIGPIPE。
+ * 脚本运行在原厂 smartapp:core 进程内，绝不能改动进程级 SIGPIPE 处置，
+ * 只能逐次 send 带该标志，避免影响原厂其他线程（T5-05B P1）。 */
+var MSG_NOSIGNAL = 0x4000;
 
 /* ============================ 统计 ============================ */
@@ -549,7 +553,8 @@ function checkConnecting() {
 function pumpWrite() {
     while (sock.writeOff < frameLen) {
-        var n = libc.send(sock.fd, frameBuf.add(sock.writeOff), frameLen - sock.writeOff, 0);
+        var n = libc.send(sock.fd, frameBuf.add(sock.writeOff), frameLen - sock.writeOff,
+                          MSG_NOSIGNAL);
         if (n > 0) { sock.writeOff += n; continue; }
```

改动范围：2 个 hunk、+7 / −1 行，除此之外该文件与 `f13a0cde` 完全一致
（`git diff` 全文见 `evidence/t505b/p1_sigpipe/p1_host_checks.txt`）。
未改：T5-05A Bridge 生产代码、T5-04 探针、T3/T4、原厂 APK/SO/配置/系统分区。

## 3. 设备内核语义实测（先立地基，再谈修复）

夹具 `/data/local/tmp/sigpipe_probe`（源码
`evidence/t505b/p1_sigpipe/tools/sigpipe_probe.c`）用 `socketpair` + `fork` 隔离，
父进程关掉自己那份对端 fd，确保对端真的关掉（第一版夹具忘关，导致 mode 1/2 假通过，
已修正后重跑）。ARM32 / kernel 4.4.95+ 实测：

| mode | 场景 | `recv()` | `send()` | 结果 |
|---|---|---|---|---|
| 1 | 对端 `close+exit()` | 0 (EOF) | `MSG_NOSIGNAL` → -1 / 32 | 进程**存活** |
| 2 | 对端 `close+exit()` | 0 (EOF) | 无标志 → — | 被 **signal 13 (SIGPIPE)** 杀死 |
| 3 | 对端 `shutdown(SHUT_RD)` 仍存活 | -1 / 11 (EAGAIN) | `MSG_NOSIGNAL` → -1 / 32 | 进程**存活** |
| 4 | 对端 `shutdown(SHUT_WR)` 仍存活 | 0 (EOF) | `MSG_NOSIGNAL` → 64 (成功) | 进程存活 |
| 5 | 对端 `close+exit()`，不先 recv | — | `MSG_NOSIGNAL` → -1 / 32 | 进程**存活** |
| 6 | 对端 `close+exit()`，不先 recv | — | 无标志 → — | 被 **signal 13** 杀死 |

三点结论：

1. `MSG_NOSIGNAL` 在本内核上确实把 SIGPIPE 变成 `EPIPE`（mode 2 vs mode 1/5）。
2. 对端**进程退出**这种状态，`recv()` 会先给出 EOF（mode 1/2），因此发送端
   `tick()` 的 `recv→send` 顺序必然先看到 EOF（这就是 T1 的现象）。
3. 只有 `shutdown(SHUT_RD)`（对端活着但不读）能让**读方向静默、写方向 EPIPE**
   （mode 3）—— 这是 T2 构造"写必破裂"连接的依据。

原始输出：`evidence/t505b/p1_sigpipe/p1_fixture_semantics.txt`

## 4. 主机侧验证

```
$ node --check my-doc/06_t5_bridge/frida/t505b_asr_bridge_sender.js
(exit=0)

MSG_NOSIGNAL literal = 0x4000  decimal = 16384
```

- 常量值：`0x4000` = 16384，与 Linux `include/uapi/asm-generic/socket.h` 一致。
- `pumpWrite()` 的 `send()` 第 4 参数静态确认是 `MSG_NOSIGNAL`。
- 分支未被破坏（源码逐行确认，且 diff 只有两处）：部分发送 `writeOff += n; continue`、
  `EINTR → continue`、`EAGAIN/EWOULDBLOCK → return`（下个 tick 继续）、
  其余错误与 `n === 0` → `send_errors++` + `closeConn()` + `requeuePending()`。
- 完整证据：`evidence/t505b/p1_sigpipe/p1_host_checks.txt`

## 5. T1：真实 Bridge 被 `kill -9`（自然路径，说明为什么 111 不算通过）

编排脚本：`evidence/t505b/p1_sigpipe/tools/t1_kill.ps1`
时间线：`evidence/t505b/p1_sigpipe/p1_t1_kill_timeline.log`
发送端轨迹（已去重压缩）：`evidence/t505b/p1_sigpipe/p1_t1_trace.txt`

| 时刻 | 事件 |
|---|---|
| 15:01:30 | 启动真 Bridge，pid 24493，replay 13 行 |
| 15:01:41 | 发送端 attach 到 PID 16112，UDS 连接成功 `fd=125` |
| 15:01:52–56 | 语音 1 → `sent` 207 B → `stored`（`t5b-16112-1967536-g1`） |
| **15:01:58.610** | **`kill -9 24493`**（第 2 句正在说，final 尚未产生） |
| 15:02:00.9 | 第 2 句 final 到达：`recvErr=1`（peer-closed）、`q=1`、**`sendErr=0`** |
| 15:02:03–08 | 第 3 句 final 到达：`q=2`；期间 `connErr` 每 300 ms 增 1（`connect:111`） |
| 15:02:09.459 | 重启真 Bridge，pid 24783，replay 14 行 |
| 15:02:09.8 | 自动重连 → 先发 `t5b-16112-1967540-g1`（213 B）→ `stored`；再发 `t5b-16112-1967544-g1`（204 B）→ `stored` |

最终计数：`hook_hits=22 final_count=3 partial_count=19 stored=3 dup=0 rej=0
send_errors=0 recv_errors=1 retry=0 connect_errors=32 reconnect_count=1 queue_depth=0`。

**关键点**：`send_errors = 0`、`recv_errors = 1`。发送端一次都没有对死连接写过——
它先在 `recv()` 拿到 EOF 就关了连接，之后只有 `connect:111`。这正是评审所说
"只停 Bridge 不算验证"的原因，也说明 P1 修的是一个**很窄的竞态窗口**
（`recv()` 返回 EAGAIN 之后、`send()` 之前对端死亡）。

## 6. T2 / T2b：`send()` 真正命中 EPIPE

### 6.1 夹具与编排

- 停掉真 Bridge（`run_bridge.sh stop`）→ 启动 `t5p1_peer`：监听同一个抽象名
  `tgz2_asr_bridge`，**accept 后立刻 `shutdown(cfd, SHUT_RD)` 并关闭监听**，
  之后既不读也不写（进程存活 300 s）。所以发送端连上的是一个"写必 EPIPE、读不到 EOF"
  的连接，且重连会得到 `ECONNREFUSED`（不会连到永不 accept 的 backlog 上）。
- 发送端 / 观测脚本不变；语音刺激 `s04.wav`（T2）、`s05.wav`（T2b）。
- 编排脚本：`tools/t2_epipe.ps1`（T2b = 同一脚本换 `s05.wav` 与 `t2b*` 文件名）。

### 6.2 轨迹（T2b，带 `send` 返回值观测）

`evidence/t505b/p1_sigpipe/p1_t2b_trace.txt`：

```
[conn]  {"state": "connected", "fd": 124, "reconnect_count": 0}
[sendwatch] fd=124 len=210 flags=0x4000          ← 发送端 send 带的就是 MSG_NOSIGNAL
[sendret]   fd=124 len=210 flags=0x4000 ret=-1 errno=32   ← 真机 EPIPE，进程没死
[stat] hooks=10 final=1 q=1 stored=0 retry=1 conn=false connErr=3 sendErr=1 recvErr=0 lastErr=connect:111
[conn]  {"state": "connected", "fd": 124, "reconnect_count": 1}   ← 真 Bridge 重启后重连
[sendwatch] fd=124 len=210 flags=0x4000
[sendret]   fd=124 len=210 flags=0x4000 ret=210 errno=11
[sent]  {"event_id": "t5b-16112-1967567-g1", "frame_bytes": 210}
[ack]   {"event_id": "t5b-16112-1967567-g1", "status": "stored", "dup_count": 0, "events_stored": 1}
```

四次证据含义：

1. `flags=0x4000`：生产脚本真的把 `MSG_NOSIGNAL` 传到了内核。
2. `ret=-1 errno=32`：这是发送端**自己的** `send()` 在破裂连接上的结果，
   发生在原厂 core 进程里 —— SIGPIPE 没有出现，进程没退出。
3. `q=1 stored=0`：事件被按原 `event_id` 回队列（`requeue_count`/`retry_count` 计数 +1），
   **没有**被记成 stored；紧接着只有 `connect:111` 的重连失败。
4. 重发帧长度 **210 B 与首次完全一致**（同一 `event_id`、同一 body），
   `status=stored`、`dup_count=0`。

T2（首轮，先于 `sendret` 观测脚本）结果一致：`send_errors=1 retry_count=1 requeued=1
sent_frames=1 ack_stored=1 connect_errors=12`，事件 `t5b-16112-1967553-g1` 在真 Bridge
重启后 `stored`（`received_at_ms=1795158225869` → `stored_at_ms=1795158229593`，滞后 3.7 s）。

### 6.3 计数汇总（评审要求的四项）

| 运行 | `send_errors` | `retry_count` | `ack_stored` | `pending_count`（EPIPE 瞬间） | `recv_errors` |
|---|---|---|---|---|---|
| T1（真 Bridge 强杀） | 0 | 0 | 3 | 队列中 q=1→2，无 pending | 1（peer-closed） |
| T2（半关闭对端） | 1 | 1 | 1 | q=1 | 0 |
| T2b（半关闭对端 + 返回值观测） | 1 | 1 | 1 | q=1（`stored=0`） | 0 |

> 说明：`last_error` 会被后续的 `connect:111` 覆盖（字段只有一个），所以 EPIPE 的
> 直接证据是 `send_errors` 计数 + 旁路 `sendret` 的 `errno=32`，而不是 `last_error`。

## 7. 落盘对照（无重复、无伪造成功）

`evidence/t505b/p1_sigpipe/p1_events_diff.txt`

```
before: 13 行 / after: 18 行 / 唯一 event_id: 18 / 重复 event_id: 0
t5b-16112-1967536-g1  1967536  天猫精灵现在几点了          （T1 第 1 句）
t5b-16112-1967540-g1  1967540  天猫精灵今天天气怎么样      （T1 被中断那句，Bridge 重启后补存，滞后 7.47 s）
t5b-16112-1967544-g1  1967544  天猫精灵打开电视            （T1 第 3 句）
t5b-16112-1967553-g1  1967553  天猫精灵关灯                （T2，EPIPE 后补存）
t5b-16112-1967567-g1  1967567  天猫精灵明天会下雨吗        （T2b，EPIPE 后补存）
```

- EPIPE 期间夹具进程从不写盘（它只 `shutdown(SHUT_RD)` 后 idle），所以这两条事件
  **只可能**来自恢复后的真 Bridge；bridge 自身 `duplicates=0`、
  `store_errors=0`、`frame_errors=0`。
- 18 个 `event_id` 全唯一：既没有"EPIPE 被当成成功"造成重复，也没有"重发两条"。

## 8. 进程、日志与原厂共存

`evidence/t505b/p1_sigpipe/p1_logcat_check.txt`（T1 前 `logcat -c`，全程 11 728 行）

| 检查 | 结果 |
|---|---|
| `ANR in` | **0** |
| `FATAL EXCEPTION` | **0** |
| `SIGPIPE` | **0** |
| `signal 13` | **0** |
| `smartapp:core`(16112) 的 `F` 行 | **0** |
| core PID | 16112 从 15:01:27 到 15:09 全程不变（`pidof` 复核） |
| 原厂功能 | 5 次唤醒全部产出 ASR final（`hook_hits=22/10/5`，`final=3/1/1`），NLU 正常执行（"关灯""打开电视""明天会下雨吗"），音量保持 50，无重启 |
| 残留 | Bridge 已停、夹具二进制已删、`gum-js-loop`/`frida-helper` 为 0 |

唯一一条 `Fatal signal` 与本任务**无关**，可以解释清楚：

```
15:02:18.904 24859 24859 F libc : Fatal signal 11 (SIGSEGV) ... pid 24859 (CheatingService)
15:02:18.871 ActivityManager: Start proc 24859:com.talkingdata.sdk.TDAntiCheatingService/u0a39
             for service com.dangbei1.tvlauncher/... caller=com.dangbei1.tvlauncher
```

它属于第三方桌面 `com.dangbei1.tvlauncher` 集成的 TalkingData 反作弊 SDK 进程，
信号是 SIGSEGV（不是 SIGPIPE），崩溃后由 `ActivityManager` 自己按 1 s 重启策略拉起，
与 `smartapp:core`、与 UDS 无关（该进程在 T1 之前就已经在反复 `has died` 重启）。

## 9. 边界与未完成项（不做夸大）

1. **P1 修的是窄窗口**：`recv()` 先于 `send()`，对端进程死亡会先以 EOF 暴露；
   EPIPE 只在"`recv()` 已返回 EAGAIN、`send()` 尚未执行"的微秒级窗口内出现。
   本轮没有试图在真机上撞这个窗口（概率约 10⁻⁴ 量级/次语音，不具可重复性），
   而是用内核语义等价的状态（`SHUT_RD`）确定性地把 `send()` 推到 EPIPE。
2. **没有在 `smartapp:core` 里做 `send(..., 0)` 的反证**：那会按原厂 SIGPIPE 处置
   直接杀死原厂进程。反证放在隔离夹具进程（§3 mode 2/6，signal 13），
   语义等价但不冒污染原厂进程的风险。
3. **没有用 `sigaction`/`sigprocmask`**，也没有给原厂进程装任何信号处理器——按任务要求，
   只逐次 send 带标志。
4. `last_error` 单字段会被后来的 `connect:111` 覆盖（可观测性问题，非本次范围）。
   若后续需要审计"最后一次发送失败原因"，建议 P2 增一个 `last_send_error` 字段。
5. 既有边界继承 T5-05B：脚本 stop/detach 时未 ACK 事件仍会丢；单 in-flight 保序带来
   头阻塞；`event_id` 依赖同 PID 内 sessionId 唯一。

## 10. 交付物

| 文件 | 说明 |
|---|---|
| `frida/t505b_asr_bridge_sender.js` | 唯一生产改动（2 hunk） |
| `t5_05b_p1_sigpipe_report.md` | 本报告 |
| `evidence/t505b/p1_sigpipe/p1_host_checks.txt` | 语法检查、常量与参数确认、完整 diff |
| `evidence/t505b/p1_sigpipe/p1_fixture_semantics.txt` | 设备内核 SIGPIPE 语义（mode 1–6 原始输出） |
| `evidence/t505b/p1_sigpipe/p1_t1_kill_timeline.log` / `p1_t1_trace.txt` / `p1_t1_play.log` | T1：真 Bridge `kill -9` 全过程与发送端轨迹 |
| `evidence/t505b/p1_sigpipe/p1_t2b_epipe_timeline.log` / `p1_t2b_trace.txt` / `p1_t2b_play.log` | T2b：EPIPE 命中、恢复、`send` 返回值/errno |
| `evidence/t505b/p1_sigpipe/p1_events_diff.txt` | 13→18 行事件对照，0 重复 |
| `evidence/t505b/p1_sigpipe/p1_logcat_check.txt` | logcat / PID / 无关 SIGSEGV 说明 |
| `evidence/t505b/p1_sigpipe/tools/` | 夹具与编排脚本源码（不属于生产代码） |
