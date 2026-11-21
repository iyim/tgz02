# T7-02 原厂回答屏蔽与 AI 播报隔离 报告

- 设备：TG-Z02（CCH `AILABS_S1L`，MT8167S，armv7l，Android 8.1 / SDK 27，内核 4.4.95+）
- 分支：`main`，前置提交 `b65117ed`（T7-01 多轮上下文）
- 模型代理：`http://192.168.1.13:8790/v1`，`POST /chat/completions`，模型 `deepseek-flash`
- 结论：**原厂 NLU 的主动回答在同一条 TTS 播放链上被精确拦下（不再播），AI Worker 的回答照常经原厂 TTS 播报；同一问题只播一次。设备自身播报产生的回声事件在 Worker 侧被识别并丢弃，播报期间用户插话的真指令不受影响。**
- 未改动：`boot.img` / `system` / `vendor` / 原厂 APK / PCM Hook / VAD / Injector / Supervisor 的既有行为。
- 证据：`evidence/t7_02_ndk_build.log`、`evidence/t7_02_host_unit_test.log`、`evidence/t7_02_device.log`、`evidence/t7_02_trace_before.log`、`evidence/t7_02_trace_after.log`、`evidence/t7_02_build_tts_exec.log`。

---

## 1. 现有语音输出路径追踪（先定位，再动手）

### 1.1 追踪方法

不是按 APK/函数名猜的，而是三路证据交叉：

1. 真机 `logcat` 在**一次真实问答**里抓到的原生日志（带 pid/tid/文件名:行号）；
2. 对 `/system/app/smartapp/lib/arm/libsmartbox.so` 的 `dynsym` 与反汇编，确认符号偏移与函数序言（用于安全打补丁）；
3. `/proc/asound/card0/pcm*p/sub0/status` 采样，确认"到底有没有真的出声"，把日志和物理播放对上。

### 1.2 两条播报路径（真实日志，`evidence/t7_02_trace_before.log`）

**原厂自己回答（要屏蔽的）**：云端 `Speak` 命令直接驱动，不经过任何 Java API：

```
20:22:33.626 1194 1746 D TtsManager: TtsManager.cpp:onTtsStart:141 sessionId = 1967633, isStreaming = 1, tts = 现在是晚上八点二十二分。
20:22:33.639 1194 1544 D AudioManager: AudioManager.cpp:playTTS:1280 stream:1967633, needSuspend:1
20:22:33.648 1194 1544 D AudioManager: AudioManager.cpp:processTtsStart:561 Tts start, id:1967633, text:现在是晚上八点二十二分。 … sessionFlag:1
20:22:33.649 1194 1544 D PlaybackService: PlaybackService.cpp:playTts:502 playTTS, agmcId:1967633, type:'tts'
```

**AI Worker 的回答（要保留的）**：我们自己写文本进原厂 TTS 接口（provider `method=4`）：

```
20:22:35.079 1194 2392 W TtsManager: TtsManager.cpp:playTts:295 isInterrupted, sessionId = 0      <- 我们这一路唯一入口
20:22:35.081 1194 2392 E GenieTable: play curSessionId = 5244437, ttsInfo= TtsInfo{… pkg='com.tgz02.aibridge.tts'}
20:22:35.080 1194 2392 W GcsManager: sending, requestId = 5244437, eventNs = AliGenie.Speaker, eventName = TextToSpeech
20:22:35.137 1194 1746 D TtsManager: TtsManager.cpp:onTtsStart:141 sessionId = 5244437, isStreaming = 1, tts = 我这边看不到实时时间…
20:22:35.139 1194 1544 D AudioManager: AudioManager.cpp:playTTS:1280 stream:5244437
```

**结论**：两条路最终都汇合在 `AliAiLabs::AGUI::TtsManager::onTtsStart(int, ITtsClient::TtsResponseInfo const*)`，
而且**只有我方**会先经过 `AliAiLabs::AGUI::TtsManager::playTts(ITtsClient::_TtsInfo_ const*)`。
所以区分依据是"来源"，不是"函数"：

| 判据 | 我方回答 | 原厂回答 |
|---|---|---|
| 是否经过 `TtsManager::playTts` | 是（返回值 = 本次 sessionId） | 否 |
| 到达 `onTtsStart` 的 sessionId | `playTts` 返回的 id（如 5244437/5245479） | 云端 ASR 会话 id（如 1967633/1973758） |
| 调 `playTts` 的线程 | `Binder:<pid>_<n>`（ContentProvider 的 Binder 分发线程） | — |
| 触发 `onTtsStart` 的线程 | 原厂 websocket 线程（`AG-ws-receive`） | 同左 |
| `TtsInfo.pkg` | `com.tgz02.aibridge.tts` | 不适用 |

### 1.3 关键符号与偏移（`readelf --dyn-syms` + `objdump -d`）

| 符号 | 偏移 | 序言（前 8 字节） |
|---|---|---|
| `_ZN9AliAiLabs4AGUI10TtsManager7playTtsEPKNS0_10ITtsClient9_TtsInfo_E` | `0x11fafc` | `e92d4bf0 e28db018`（push {r4-r9,fp,lr}; add fp,sp,#24） |
| `_ZN9AliAiLabs4AGUI10TtsManager10onTtsStartEiPKNS0_10ITtsClient15TtsResponseInfoE` | `0x11f110` | `e92d4ff0 e28db01c`（push {r4-r11,lr}; add fp,sp,#28） |

结构体字段（由反汇编确认，用于只读地取文本、打日志）：

- `_TtsInfo_.text`：`*(char **)(info + 0x04)`
- `TtsResponseInfo.text`：`*(char **)(info + 0x28)`，`TtsResponseInfo.isStreaming`：`*(uint8_t *)(info + 0x08)`

### 1.4 唤醒提示音与系统提示

唤醒提示音走**另一条链**：`ApolloPlayerAdapter … player:prompt` / `AudioManager::playTTS` 之前的 prompt 播放，
**不经过 `TtsManager::onTtsStart`**，因此本次改动不碰它（P5 用真实唤醒 clip 验证：`player:prompt, reset done` 仍然出现）。

### 1.5 物理出声校验

`/proc/asound/card0/pcm*p/sub0/status` 采样（`evidence/t7_02_trace_before.log` 尾部）：

```
20:22:27.716 RUN: pcm0p      <- 唤醒提示音
…20:22:31.242 RUN: pcm0p
20:22:33.737 RUN: pcm5p      <- 原厂回答开播
20:22:33.737…20:22:45.590 RUN: pcm5p   <- 原厂回答 + 我方回答连续占用同一个播放设备
```

即"一次问答两段语音"是物理事实，不是日志错觉。

---

## 2. 实现

### 2.1 新增：`android/hook_tts/libtg_ttsguard.c`（TTS 来源守卫）

独立 `.so`，与 T6-01 的 `libtg_hook.so` 完全解耦，导出**同名同签名**的 `tg_hook_*` 入口，
因此**不需要改已验收的 Injector**：`tg_injector --so libtg_ttsguard.so` 即可装卸。

装两个只读 inline hook：

1. **`TtsManager::playTts`（后置）**：先执行原函数（走 trampoline），拿到返回值 `rv`；
   读调用线程 comm，若是 `Binder:` 开头则把 `(rv, text)` 记入"我方允许集"，否则只记账不允许。
2. **`TtsManager::onTtsStart`（前置）**：先问守卫——`sessionId` 命中允许集（或文本精确命中）就原样放行；
   否则**不调用原函数**、直接返回 0（音频链根本不会建立），并打一行带 `sessionId / streaming / 线程名 / 文本` 的日志。

技术要点（都写在源码注释里）：

- stub 页 `mmap` 后 `mprotect` 成 **RX**（退路 RWX）——第一步漏了这步，跳进 RW 页直接 SIGSEGV（已在真机复现并修正）；
- 两个 hook 的补丁窗口取并集交给 Injector 做"没有线程停在补丁里"的保守检查；
- DROP 分支必须**把 6 个压栈字全部退回**并还原 `r4`（早版本只 `pop {r4,lr}`，sp 错位 → 原厂进程静默退出）；
- 允许集是 4 条环 + 自旋锁，只做几十字节拷贝，不分配内存；
- 任何一步不匹配（模块/符号/偏移/序言）就拒绝安装，绝不猜地址。

### 2.2 新增：`android/run_ttsguard.sh`（装卸 + 守护）

原厂 `:core` 是"按需拉起的内容提供者进程"，系统回收后 pid 会变（实测 `1194 → 30288 → 30785 → 31313 → 484 → 1627 → 4338 → 8505 → 23990 → 26491 → 4507 …`），
而且**同时可能存在两个同名 `:core`**（ASR 在一个、TTS 播报在另一个）。所以脚本：

- 枚举所有 cmdline 精确等于 `com.alibaba.ailabs.genie.smartapp:core` 的进程（`ps` 粗筛 + `/proc/<pid>/cmdline` 精确核对）；
- 只对**已加载 libsmartbox.so 且存活 ≥3 s** 的进程注入（避免搅乱启动中的进程）；
- `mapped` 不等于 `hooked`：库还在内存里但补丁被摘掉时要重装；
- 映射副本是 `(deleted)`（磁盘 .so 被替换过）时，让该进程重启一次，新进程自然加载当前文件；
- `watch start|stop`：每 5 秒 `ensure` 一次，脱离 adb 会话运行。

脚本**没有**修改 T6-02 Supervisor；生产上更彻底的做法是在 Supervisor 里加第二个 `--so`（见 §7）。

### 2.3 新增：TTS 执行器公开播放状态 `play.public.json`

`android/tts_exec/TtsExec.java` 增加一份 **0644** 的播报状态投影：

```json
{"v":1,"pid":18158,"updated_ms":1795266176412,"state":"playing",
 "event_id":"t6-14856-1973758-g2","tts_id":5245212,
 "started_ms":1795266176383,"finished_ms":0,"last_outcome":"",
 "queue_depth":0,"inflight_depth":1}
```

只放"是否在播/播的是哪个 event_id/起止毫秒"，**不含任何播报正文**；
`journal.jsonl`、`state.json` 仍是 0600 root-only，行为不变。
写盘走 `tmp → fsync → rename`，读侧永远看到完整 JSON。

### 2.4 新增：`android/echo_filter.{h,c}` + Worker 接入

判定只用两样东西：播放状态文件 + Worker 自己登记过的"我让它播的文本"。

- **规则 A（回声）**：事件到达时若处于播报窗口（`state=playing`，或 `finished_ms` 之后 1500 ms 内，起点前 1200 ms 保护），
  且事件文本与正在播的文本相似（最长公共子串占比 ≥ 60%，按 UTF-8 码点计算；单字事件不参与）→ 丢弃，计入 `echo_dropped_echo`。
- **规则 B（无指令）**：去掉唤醒词（天猫精灵/天猫/精灵…）与语气词（嗯/哦/拜拜/好的…）后没有内容 → 丢弃，计入 `echo_dropped_nocmd`。
  这条正是 T7-01 里"天猫精灵嗯""嗯拜拜"这类自问自答的来源；可用 `--echo-no-command 0` 关掉。
- 窗口内但文本不相似 → **保留并回答**，计入 `echo_kept_in_window`（用来证明"没有误杀用户在播报期间的插话"）。
- 被丢弃的事件按"合法但不处理"提交偏移（`commit_skipped`），不会卡住消费，也不会进上下文/TTS 队列。
- 开关：`--echo-filter 0|1`、`--echo-no-command 0|1`、`worker.conf` 的 `echo_filter=` / `echo_no_command=`；状态文件新增 `echo{…}` 块。

### 2.5 与既有模块的边界

| 模块 | 是否改动 |
|---|---|
| 原厂 APK / `libsmartbox.so` | 不改（只读打补丁，可 uninstall 还原） |
| PCM Hook / VAD | 未触碰 |
| Injector | 未改（新库实现同名 ABI） |
| Supervisor | 未改（守卫用独立脚本守护） |
| ASR 桥接 / Hook Agent | 未改，仍由 Supervisor 注入 |
| TTS 执行器 | 只**新增**一份公开状态投影，队列/幂等/重放语义未变 |

---

## 3. 前后对比

| | 屏蔽前（20:22，`t7_02_trace_before.log`） | 屏蔽后（22:0x，`t7_02_trace_after.log`） |
|---|---|---|
| 原厂回答 | `onTtsStart sessionId = 1967633 … 现在是晚上八点二十二分` 开播 | `tgt: onTtsStart DROP id=1969486 streaming=1 comm=AG-ws-receive text="主人你还在吗？我在听呢。" (factory NLU answer)` |
| 我方回答 | `onTtsStart sessionId = 5244437 …` 随后开播 | `tgt: playTts -> allow-listed id=5246285 comm=Binder:9123_D` → `onTtsStart ALLOW id=5246285 by=session_id` → `AudioManager::playTTS stream:5246285` |
| 一次问答的语音段数 | 2 段（pcm5p 连续占用 ~12 s） | 1 段 |
| 唤醒提示音 | `player:prompt` / pcm0p | `player:prompt` 仍在（P5 实测） |
| ASR | 正常 | 正常（事件持续产出，`asr_final` 计数只增不减） |

---

## 4. 测试

### 4.1 主机单测（`tests/t7_02_echo_unit_test.c`）

`powershell -File tests/run_t7_02_host_tests.ps1` → **pass=41 fail=0**（`evidence/t7_02_host_unit_test.log`）。
覆盖：归一化（含全角标点）、唤醒词/语气词剥离、UTF-8 码点级相似度、播放窗口（playing/结束后窗口/窗口外）、
回声丢弃、窗口内真指令保留、单字指令保护、无指令规则开关、总开关、状态文件缺失时的降级。

### 4.2 真机增量验收（`tests/t7_02_device.ps1`）

见 `evidence/t7_02_device.log`：**`SUMMARY pass=56 fail=0 duration=203s` / `RESULT: PASS`**（2026-11-21 22:01-22:04，真机）。阶段与结论：

| 阶段 | 对应验收项 | 结果 |
|---|---|---|
| P0 部署对账 | 守卫/Worker/dex 的 sha256、守卫已挂进 `:core`、播放状态可读 | PASS |
| P1 真实语音一轮 | 验收 1/2/4/5：唤醒提示仍在、原厂不再抢先回答、大模型答案经原厂 TTS 播完、同一问题只播一次 | PASS |
| P2 连续三轮 | 验收 6：三轮都只播一次、上下文持久化成对写入、每轮开播前守卫都处于 hooked | PASS |
| P3 回声过滤 | 验收 7：播报中塞入与回答同文的 `asr_final` 被 `drop_echo`；同时塞入的真指令被保留并回答（`kept_in_window=1`） | PASS |
| P4 Worker 重启 | 验收 8：上下文恢复（load=2）、回声过滤重新生效、下一轮照常回答 | PASS |
| P5 原厂能力 + 装卸 | 验收 1/9：ASR 事件继续产出、`player:prompt` 仍在、uninstall 后 `hooked=0`、可再装回 | PASS |

> P2 的三轮对话里，原厂回答是否被拦，P1 已经用同一守卫逐行证明；P2 只断言"每轮只播一次"和"上下文成对写入"，
> 因为 `:core` 可能在中途被系统回收（守卫随进程消失、5 s 内重装），跨进程比较守卫计数没有意义。

---

## 5. 设备当前状态

- `:core`：`pid=9123`，守卫 `hooked=1`（`play=1 start=1`），累计 `play_seen=7 ours=7 allowed=7 dropped=5`，`watch` 守护进程在跑；
- AI Worker：`pid=10876`，`context{enabled:1,max_msgs:6,messages:6,turns:3,load_state:2}`，`echo{enabled:1,no_command:1,kept_in_window:1}`；
- TTS 执行器：`play.public.json` 正常出入 `playing/idle`；
- ASR 桥接、Supervisor、init.rc 托管未变。

---

## 6. 过程中修掉的真问题（都留了痕迹）

1. **stub 页没有可执行权限** → 第一次跳进去 SIGSEGV，原厂进程反复退出（当时表现为"注入后 :core 每 30-60 s 重启一次"）。加了 `mprotect(RX)`。
2. **DROP 分支栈错位**：压了 6 个字只弹 2 个，调用方 sp 偏 16 字节，进程静默退出（`am_proc_died` 但没有 `am_kill`、没有 tombstone）。
   改为"还原 r4 + `add sp, sp, #24` + `bx lr`"。
3. **同名双 `:core`**：ASR 在 pid A、TTS 在 pid B，只注入一个进程时 hook 永远打不中。脚本改成枚举全部匹配进程。
4. **`mapped` ≠ `hooked`**：uninstall 后库仍在内存，`ensure` 误以为"已装好"。改成用 `--check` 的 `hooked` 判定，必要时重装。
5. **adb push 换 inode** → 进程里那份变 `(deleted)`，Injector 的 `--uninstall` 走 `dlopen(RTLD_NOLOAD)` 失败。脚本退化为"让该进程重启"。
6. 测试脚本自身：`$var:` 被当成盘符、`[int]` 装不下毫秒时间戳、UTF-8 BOM 丢失导致中文注释把脚本解析坏 —— 都已修。

---

## 7. 限制与后续

1. **`:core` 被回收后的空窗**：守卫随进程消失，`watch` 每 5 s 补装，最坏 5 s 内原厂回答可能抢播一次。
   彻底解决应把 `--so libtg_ttsguard.so` 加进 T6-02 Supervisor 的注入步骤（本次按"不擅改已验收模块"没有动它，留给评审决定）。
2. **会一并被拦的原厂语音**：所有走云端 `Speak` 的原厂回答（包括它自己的错误提示）。必要提示音走 prompt 链，不受影响。
   如果评审要求保留某些云端提示，可在守卫里加"允许集白名单"（按文本前缀），接口已留。
3. **回声判定的边界**：文本相似阈值 60%、窗口 +1200/-1500 ms 是实测参数；用户逐字复述我方刚说过的话会被当成回声（极小概率）。
4. **只用文本做回声比对**：不在播报时（窗口外）不拦任何事件；Worker 刚重启、候选文本丢失时退化为"只按无指令规则处理"，不会误杀。
5. **未做**：多 TTS 并发（原厂同步播报队列未变）、音乐/日程/提醒等技能。
