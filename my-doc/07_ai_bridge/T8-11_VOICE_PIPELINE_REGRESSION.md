# T8-11 真机语音链路回归测试

- 设备：TG-Z02 / `AILABS_S1L` / Android 8.1（SDK 27）/ ARM32 / `192.168.1.9:5555` / SELinux `Permissive`
- 测试窗口：**开始 2026-11-22 20:16:09，结束 20:28:02**（设备时钟与主机一致）
- 前提：T8-10 已完成 T6 → T8 Hook 切换（提交 `78560813`）
- 本轮**未重启设备或 `:core`、未启停任何 Supervisor、未执行任何 Injector 命令（含 `--check` / `--nlu-status`）、未触碰 takeover**

---

## 〇、结论

| 用例 | 内容 | 结果 |
|---|---|---|
| T1 | 连续唤醒 ×3 | **通过**（3 次真实唤醒命中，8 次尝试） |
| T2 | 本地音量指令"音量调到 40" | **通过**（第 2 次尝试命中；第 1 次 ASR 把"四十"截成"四"） |
| T3 | 本地暂停指令"暂停播放" | **通过（有限定）**：原厂技能执行、`PlaybackState 3→2`；但原厂音乐技能当次未产生实际音频，停止以播放状态迁移为证 |
| T4 | DeepSeek AI 对话全链路 | **通过**（唤醒→ASR→T8 Hook→Bridge→Worker→DeepSeek→TTS→播报，逐段有证据） |
| T5 | 多轮上下文 | **通过**（第二轮正确指代上一轮的"机器学习"） |
| T6 | 播报打断 | **通过**（第 4 轮为完整证据：旧回答 `interrupted`，新问题走 AI 并完整播报） |

**最终结论：通过。** 未出现原厂 AI 抢答、未出现重复播报、未出现上下文丢失。三处限定/异常见 §七。

---

## 一、语音是怎么打的（方法说明）

本轮禁止模拟请求或手工构造事件，因此**全部输入走真实声学通路**：主机合成中文语音 → PC 扬声器 → 空气 → 设备麦克风 → 原厂 KWS / VAD / ASR。

| 环节 | 具体做法 |
|---|---|
| 唤醒音频 | `_analysis/t506d/stim_cal3/s01_wake.wav`（38 852 B，"天猫精灵"，与 T5-06D / T7-01 同一份素材） |
| 指令合成 | `_analysis/t702/gen_wav.ps1`：Windows SAPI `Microsoft Huihui Desktop`，`rate=-3`（首次用 -1，出现尾字截断后统一改 -3/-4） |
| 播放编排 | `_analysis/t502_play.ps1`（WPF MediaPlayer，`Volume=1.0`），计划串 `<wav>:<播放后静默ms>` |
| 典型计划 | `<唤醒>:3000, <指令>:200, <静音>:3000`（唤醒与指令分两段，与 T5-06D/T7-01 的约定一致） |
| 逐次播放日志 | `evidence/t8-11/t1_play*.log`、`t2_play*.log`、`t4_play.log`、`t5_q*.log`、`t6*_play*.log`、`preset_vol50_play.log` |

**"原话"的记录方式**：由于声学 ASR 不保证逐字一致，报告同时记录 ① 我方实际播出的合成文句，② 设备侧原厂 ASR 的最终输出（`events.jsonl` 的 `text` 字段，即真正进入链路的内容）。两者都列出，不使用任何手工构造 JSON。

---

## 二、测试前基线（20:16:09–20:17:17，全部被动读取）

### 2.1 进程

| PID | PPID | STIME | 进程 |
|---|---|---|---|
| 30807 | 281 | 20:09:30 | `com.alibaba.ailabs.genie.smartapp:core` ← 目标 |
| 31289 | 1 | 20:09:57 | `tg_supervisor --injector /t8/tg_injector --so /t8/libtg_hook.so --pidfile /t8/tg_supervisor.pid --log /t8/supervisor.log`（T8） |
| 4685 | 1 | 14:03:56 | `tg_supervisor --injector /t6/tg_injector --so /t7/libtg_ttsguard.so ...`（TTS Guard） |
| 2586 | 1 | 13:19:31 | `tgb_bridge --sock tgz2_asr_bridge --work-dir /data/local/tmp/t5_bridge/work` |
| 3468 | 1 | 14:02:40 | `ai_worker --conf .../worker.conf --tts-queue-dir .../tts` |
| 17253 | 1 | 13:31:20 | `sh /data/local/tmp/t5_bridge/tts_supervisor.sh` |
| 17257 | 17253 | 13:31:20 | `app_process /system com.tgz02.tts.TtsExec ...` |

无 `tg_injector` 进程。

### 2.2 `:core` 映射（`evidence/t8-11/maps_pre.txt`）

```
955a1000-955b4000 r-xp 00000000 b3:16 63251  /data/local/tmp/t8/libtg_hook.so
955b4000-955b5000 r--p 00012000 b3:16 63251  /data/local/tmp/t8/libtg_hook.so
955b5000-955b6000 rw-p 00013000 b3:16 63251  /data/local/tmp/t8/libtg_hook.so
9641c000-96420000 r-xp 00000000 b3:16 86583  /data/local/tmp/t7/libtg_ttsguard.so
96420000-96421000 r--p 00003000 b3:16 86583  /data/local/tmp/t7/libtg_ttsguard.so
```

- `/t8/libtg_hook.so` inode **63251** ✓
- `/t7/libtg_ttsguard.so` inode **86583** ✓
- `/t6/libtg_hook.so` 映射条数 **0** ✓

### 2.3 Supervisor 日志末行（无错误）

```
/data/local/tmp/t8/supervisor.log  末行 2026-11-22 20:09:58.160 sup: inject end: pid=30807 exit=0 hooked=1 elapsed=205ms ok
/data/local/tmp/t7/ttsguard.sup.log 末行 2026-11-22 20:09:33.749 sup: inject end: pid=30807 exit=0 hooked=1 elapsed=312ms ok
```

### 2.4 健康态与日志游标（测试前的"末尾时间戳"）

| 对象 | 测试前状态 |
|---|---|
| Bridge | `state=running`、`clients=1`、`clients_accepted=2`、`clients_closed=1`、`client_aborts=1`、`client_overflow=0`、`frame_errors=0`、`store_errors=0`、`duplicates=0`、`rejected=0`、`store_failed=false`、`events_stored=48`、`updated_at=20:16:23` |
| Worker | `state=running`、`provider=deepseek`、`model=deepseek-flash`、`last_http_status=200`、`last_curl_code=0`、`last_error_class=ok`、`provider_ok=8`、`provider_err=0`、`tts_queued=8`、`context.turns=3/messages=6`、`session.state=IDLE`、`io_errors=0`、`state_errors=0`、`gaps=1`（`:core` 重启导致的事件序号重置，非本轮新增） |
| TTS | `queue_depth=0`、`inflight_depth=0`、`done_count=268`、`failed_count=5`、`ok=18`、`interrupted=3`、`error=0`、`last_event_id=t6-8342-1968506-g44`（18:28，切换前） |
| 日志行数游标 | `events.jsonl` 594 / `tts/journal.jsonl` 472 / `tts_exec.log` 1036 / `ai_worker.log` 103 / `t8/supervisor.log` 36 / `ttsguard.sup.log` 2562 |

另记：`/data/local/tmp/t5_bridge/work/native_route.public.json` 显示 **20:12:11** 已有一条切换后事件 `t6-30807-1968697-g1`（"天猫精灵关闭屏幕"）。该条属于**本轮测试窗口之前的历史**，不作为本轮证据，只说明切换后链路本就通。

---

## 三、逐项测试

### T1 连续唤醒 ×3 — 通过

- 我方播出：`s01_wake.wav`（"天猫精灵"）× 8 次，分 3 批（20:17:33×3、20:18:14×6 中的前 5、20:19:10×6）
- 设备侧 ASR 命中 **3 次**：

| # | 设备 ASR 输出 | 事件 ID | 时间 |
|---|---|---|---|
| 1 | 天猫精灵 | `t6-30807-1968702-g2` | 20:17:37 |
| 2 | 天猫精灵 | `t6-30807-1968714-g3` | 20:18:06 |
| 3 | 天猫精灵 | `t6-30807-1968734-g4` | 20:19:10 |

- 唤醒后没有跟进指令 → Worker 回声门按"去唤醒词后无内容"规则丢弃：
  `[aiw] 20:17:37 echo filter: drop event=…g2 seq=49 reason=drop_no_command (no command content after wake/filler strip (norm=12 rest=0)) text_bytes=12`（g3/g4 同形）
- 会话在每次唤醒后回到待机：`session.state=IDLE`，日志 `CLOSED->IDLE (back to standby)`
- **结论**：原厂唤醒词仍有效，唤醒后可进入聆听（ASR 正常收句），**没有出现无故重复唤醒**（每次唤醒只产出一条事件，无同一 session 重复 final），**没有卡在聆听**（后续独立唤醒仍能命中，会话状态回 IDLE）
- 习率备注：8 次播放命中 3 次（约 37%），与既有记录"安静环境约 1/5 的尝试无事件"同量级，属声学路径固有波动

### T2 本地音量指令 — 通过

| 尝试 | 我方播出 | 设备 ASR 输出 | 结果 |
|---|---|---|---|
| 1 | 音量调到四十（rate −1） | 天猫精灵音量调到四 | **失败**：尾字"十"被端点截断，音量被设为 **4**（`arg=set:4`） |
| 2 | 音量调到四十（rate −3） | 天猫精灵音量调到四十 | **通过** |

- 预置条件：先用真实语音说"音量调到五十"→ `setStreamVolume(index:50)` @ 20:20:40.086，`settings get system volume_music_speaker=50`（保证 T2 有可观测的数值变化）
- T2 命中证据：
  - 事件 `t6-30807-1968791-g8`，`text=天猫精灵音量调到四十`，20:21:32
  - `dumpsys audio`：`11-22 20:21:32:421 setStreamVolume(stream:STREAM_MUSIC index:40 flags:0x1) from com.alibaba.ailabs.genie.smartapp`
  - `settings get system volume_music_speaker` → **40**
  - 路由：`route=native intent=volume rule=volume.set arg=set:40 session=1968791`
  - `route.volume 7→8`、`route.native 18→19`；**`route.ai=8` 未变**、**`provider_ok=8` 未变**、`tts_queued=8` 未变
  - 日志后缀 `(factory answers; AI worker does not)`
- **结论**：命令被识别、走本地指令路径、音量实际到 40、**未调用大模型**（AI/模型/TTS 三组计数全部未动）

### T3 本地暂停指令 — 通过（有限定）

- 前置播放：说"播放音乐" → `route=native intent=media rule=media.play arg=play`（20:22:02，`route.media 2→3`），`dumpsys media_session` 出现
  `MusicService com.alibaba.ailabs.genie.smartapp/MusicService`，`state=PlaybackState {state=3, ...}`（PLAYING）
- **限定**：该次音乐技能**没有产生实际音频**——`position=0` 两次采样不变、`active item id=-1`、`tts/journal` 无新增、`/dev/snd` 无活跃播放轨（研判为未绑定音乐账号）。因此"播放确实停止"只能以系统播放状态迁移为证
- 说"暂停播放"（rate −3）：
  - 事件 `t6-30807-1968812-g10`，`text=天猫精灵暂停播放`，20:22:49
  - 路由 `route=native intent=stop rule=stop.keyword arg=stop`，`route.stop 2→3`
  - `ai_worker.log`：`20:22:50 tts stop requested (route=native intent=stop)`
  - `dumpsys media_session` → `state=PlaybackState {state=2, ...}`（**PLAYING → PAUSED**）
  - **`route.ai=8`、`provider_ok=8` 未变** → 未调用大模型
- **结论**：命令识别、原厂本地技能执行、播放状态停止、未调用模型；"实际音频停止"这一条因原厂音乐服务未出声而无法用声音验证，已在 §七 记为限定

### T4 DeepSeek AI 对话全链路 — 通过

- 我方播出："请用简单的话解释一下人工智能是什么"（rate −3）
- 设备 ASR：`t6-30807-1968817-g11`，`text=天猫精灵请用简单的话解释一下人工智能是谁`（"什么"被识别成"谁"），20:23:18
- 链路逐段证据（`ai_worker.log`）：

```
20:23:19 route=ai event=t6-30807-1968817-g11 merges=0 held_ms=638 why=timeout session_state=PROCESSING
20:23:19 session: state=WAIT_NEXT turns=0 followups=0 wait=12000ms
20:23:21 deepseek ok: model=deepseek-flash http=200 curl=0 latency=2202ms resp_bytes=1494 reply_bytes=111
20:23:21 request shape: system=1(role=system,bytes=689) history_msgs=6 user_msgs=1 req_msgs=7
20:23:21 tts queued: reply_bytes=111 queue=/data/local/tmp/t5_bridge/tts
20:23:21 context commit: turns=3 msgs=6
20:23:33 session: state=CLOSED (WAIT_NEXT->CLOSED (timeout)) (back to wake-word standby)
```

- TTS 执行（`tts/journal.jsonl`）：

```
20:23:21.243 tts event=g11 tts_id=-1   outcome=provider_error dur_ms=2   text_bytes=111 attempts=1
20:23:21.280 retry event=g11 attempts=1
20:23:30.814 tts event=g11 tts_id=5245621 outcome=ok          dur_ms=7504 text_bytes=111 attempts=2
```

- 实际播报窗口（`tts/play.public.json`）：`started_ms`→`finished_ms` = 20:23:23.303 → 20:23:30.820，**7 507 ms**，`last_outcome=ok`
- 回复原文（`ai_worker/context.json` 落盘的 assistant 消息）：

  > 人工智能就是让机器学会听、看、说话和做决定的技术，像个会学习的聪明小帮手。

- 计数：`route.ai 8→9`、`provider_ok 8→9`、`tts_queued 8→9`、`fallback_ai=0`
- **Hook 参与的直接证据**：事件 ID 前缀 `t6-30807-*` 由 T8 Hook 的 onStream 拦截 + sender 线程生成并写入 Bridge（本轮禁止 Injector 查询，故 hook 侧 live 计数器不可得，以事件 ID 与 Bridge `events_stored` 增量作为等价证据）
- **原厂抢答检查**：本事件只有一条 TTS 记录、一次播报窗口；`native_route.public.json` 未出现该事件（原生路由只覆盖本地意图）；Worker `route.fallback_ai=0`、`dup_same_event=0`、`same_text_new_event=0`。**未发现原厂 AI 抢答**

### T5 多轮上下文 — 通过

| 轮 | 我方播出 | 设备 ASR | 事件 | 时间 |
|---|---|---|---|---|
| Q1 | 什么是机器学习 | 天猫精灵什么是机器学习 | `t6-30807-1968822-g12` | 20:24:26 |
| Q2 | 它和人工智能有什么关系 | 天猫精灵它和人工智能有什么关系 | `t6-30807-1968827-g13` | 20:24:51 |

- Q1 回复：**机器学习就是让计算机看大量例子，自己找规律、越练越准，不用人一步步教。**（`tts ok dur_ms=6990`）
- Q2 回复：**机器学习是人工智能的一部分，是实现人工智能的主要方法之一。**（`tts ok dur_ms=5677`）
- `context.json` 落盘顺序（`evidence/t8-11/context_final.json` 节选）：

```
user : 天猫精灵什么是机器学习
asst : 机器学习就是让计算机看大量例子，自己找规律、越练越准，不用人一步步教。
user : 天猫精灵它和人工智能有什么关系
asst : 机器学习是人工智能的一部分，是实现人工智能的主要方法之一。
```

- Q2 句面只有"它"，答案却准确落在**机器学习**并把两者关系说清（Q1 之前一提"机器学习"都没有）——说明第一轮上下文确实进模型，**没有退化成单轮独立回答**
- 约束说明：本机固件不支持免唤醒连续追问（见 `t7_05_gate_first_routing_and_marker_reliability_report.md` §5），因此两轮都各喊了一次唤醒词；**没有用"重播唤醒词冒充连续对话"的方式伪造证据**，每轮都单独标注了是否含唤醒词

### T6 播报打断 — 通过

共 4 轮尝试，第 4 轮为完整证据（前 3 轮为时序未踩中的失败/部分，全部保留记录）：

| 轮 | 长回答事件 | 旧回答结果 | 新问题事件 | 新回答 |
|---|---|---|---|---|
| 1 | `g14`（848 B 文本） | **interrupted**，8 087 ms 处截断 | `g15` 天猫精灵现在几点 | 原厂时间技能应答（`route=intent=time`），我方 TTS 无新任务 |
| 2 | `g16`（99 B） | 自然播完 `ok` 6 506 ms（打断报文到端点时已收尾） | `g17` 天猫精灵什么是光合作用 | AI，`ok` 7 594 ms |
| 3 | `g18`（84 B） | 自然播完 `ok` 5 182 ms（问题被截断导致回答过短） | `g19` 天猫精灵为什么天是蓝色的 | AI，`ok` 6 521 ms |
| 4 | `g20`（129 B，"介绍一下唐朝"） | **interrupted**，5 904 ms 处截断 | `g21` 天猫精灵为什么天是蓝色的 | AI，`ok` 7 967 ms |

第 4 轮的日志证据：

```
2026-11-22T20:27:41.274+0800 tts event=t6-30807-1968862-g20 tts_id=5245666 outcome=interrupted dur_ms=5904 text_bytes=129 attempts=1
2026-11-22T20:27:54.013+0800 tts event=t6-30807-1968867-g21 tts_id=5245671 outcome=ok          dur_ms=7967 text_bytes=120 attempts=1
```

- 旧回答停止：`play.public.json` 的 `finished_ms` 早于该回答应有长度（129 B ≈ 更长），且结论为 `interrupted`
- 不重新播报旧回答：`tts/journal.jsonl` 中 `g20` **只有一条记录**，此后无 `g20` 的任何 `ok`/重播；`tts_exec.log` 中 `g20` 只有一次 `play`
- 不重复提交旧任务：全轮 `dup_dropped=0`、`dup_same_event=0`、`same_text_new_event=0`、`tts_enqueue_failed=0`
- 新问题正常处理并播报：`g21` 新 `session_id=1968867`，走 `route=ai`，`provider_ok` 递增，TTS `ok` 7 967 ms

---

## 四、本轮事件总表（`events.jsonl` 行 595–614，全部 `pid=30807`）

| # | seq | 事件 ID | 时间 | 设备 ASR 文本 | 路由 | TTS |
|---|---|---|---|---|---|---|
| 1 | 49 | `…-1968702-g2` | 20:17:37 | 天猫精灵 | 丢弃（无指令） | — |
| 2 | 50 | `…-1968714-g3` | 20:18:06 | 天猫精灵 | 丢弃（无指令） | — |
| 3 | 51 | `…-1968734-g4` | 20:19:10 | 天猫精灵 | 丢弃（无指令） | — |
| 4 | 52 | `…-1968758-g5` | 20:20:16 | 天猫精灵 | 丢弃（无指令） | — |
| 5 | 53 | `…-1968763-g6` | 20:20:39 | 天猫精灵音量调到五十 | native volume set:50 | 原厂 |
| 6 | 54 | `…-1968777-g7` | 20:21:01 | 天猫精灵音量调到四 | native volume set:4 | 原厂 |
| 7 | 55 | `…-1968791-g8` | 20:21:32 | 天猫精灵音量调到四十 | native volume set:40 | 原厂 |
| 8 | 56 | `…-1968805-g9` | 20:22:02 | 天猫精灵播放音乐 | native media play | 原厂 |
| 9 | 57 | `…-1968812-g10` | 20:22:49 | 天猫精灵暂停播放 | native stop | — |
| 10 | 58 | `…-1968817-g11` | 20:23:18 | 天猫精灵请用简单的话解释一下人工智能是谁 | **ai** | `ok` 7 504 ms |
| 11 | 59 | `…-1968822-g12` | 20:24:26 | 天猫精灵什么是机器学习 | **ai** | `ok` 6 990 ms |
| 12 | 60 | `…-1968827-g13` | 20:24:51 | 天猫精灵它和人工智能有什么关系 | **ai** | `ok` 5 677 ms |
| 13 | 61 | `…-1968832-g14` | 20:25:21 | 天猫精灵请详细介绍 | **ai** | `interrupted` 8 087 ms |
| 14 | 62 | `…-1968837-g15` | 20:25:35 | 天猫精灵现在几点 | native time | 原厂 |
| 15 | 63 | `…-1968841-g16` | 20:26:04 | 天猫精灵请介绍一下 | **ai** | `ok` 6 506 ms |
| 16 | 64 | `…-1968846-g17` | 20:26:17 | 天猫精灵什么是光合作用 | **ai** | `ok` 7 594 ms |
| 17 | 65 | `…-1968851-g18` | 20:26:53 | 天猫精灵请介绍一下唐 | **ai** | `ok` 5 182 ms |
| 18 | 66 | `…-1968856-g19` | 20:27:06 | 天猫精灵为什么天是蓝色的 | **ai** | `ok` 6 521 ms |
| 19 | 67 | `…-1968862-g20` | 20:27:33 | 天猫精灵介绍一下唐 | **ai** | `interrupted` 5 904 ms |
| 20 | 68 | `…-1968867-g21` | 20:27:44 | 天猫精灵为什么天是蓝色的 | **ai** | `ok` 7 967 ms |

`events_stored 48→68`（+20），`duplicates=0`、`rejected=0`、`store_errors=0`、`frame_errors=0`、`bad_lines=0`。

---

## 五、测试前后状态对照

| 项 | 测试前（20:16） | 测试后（20:28） | 判定 |
|---|---|---|---|
| `:core` | `30807` / 20:09:30 / PPid 281 | `30807` / 20:09:30 / PPid 281 | 未变 ✓ |
| T8 Supervisor | `31289` / 20:09:57 | `31289` / 20:09:57 | 未变 ✓ |
| TTS Guard Supervisor | `4685` / 14:03:56 | `4685` / 14:03:56 | 未变 ✓ |
| Bridge / Worker / TtsExec | `2586` / `3468` / `17257` | 同 | 未变 ✓ |
| `/t8` 映射 | inode `63251`，3 段 | inode `63251`，3 段 | 未变 ✓ |
| `/t7` 映射 | inode `86583`，2 段 | inode `86583`，2 段 | 未变 ✓ |
| `/t6` hook 映射 | 0 条 | **0 条** | 未出现回退 ✓ |
| Bridge `clients` | 1（`accepted=2`、`closed=1`） | 1（`accepted=2`、`closed=1`） | 无新增客户端 ✓ |
| Bridge `store_errors` | 0 | **0** | ✓ |
| Bridge `duplicates` / `rejected` / `client_overflow` | 0 / 0 / 0 | 0 / 0 / 0 | ✓ |
| Worker 最近请求 | http 200、`ok` | http 200、`curl=0`、`ok`、latency 1 452 ms | ✓ |
| Worker `last_error_class` | `ok` | **`ok`** | ✓ |
| Worker `provider_err` / `timeout` / `retries` | 0 / 0 / 0 | **0 / 0 / 0** | ✓ |
| Worker `tts_enqueue_failed` | 0 | 0 | ✓ |
| 本地指令是否误调模型 | — | 5 个 native 事件期间 `route.ai`、`provider_ok`、`tts_queued` 均**未变** | 无误调 ✓ |
| Worker `io_errors` / `invalid_lines` / `state_errors` | 0 / 0 / 0 | 0 / 0 / 0 | ✓ |
| Worker `gaps` | 1（`:core` 重启遗留） | 1 | 非本轮新增 ✓ |
| TTS `queue_depth` / `inflight_depth` | 0 / 0 | **0 / 0** | 无积压 ✓ |
| TTS `ok` / `interrupted` | 18 / 3 | **26 / 5** | +8 / +2（+2 即 T6 的 g14、g20） |
| TTS `error` | 0 | 1 | 见 §七.3（一次 provider_error 重试成功） |
| TTS `done_count` | 268 | 278 | +10 = 10 个 AI 事件各一次，**无重复项** |
| 上下文 | `turns=3 msgs=6` | `turns=3 msgs=6`（`evicted=36`、`saves=18`、`save_errors=0`） | 结构完好 ✓ |

本轮新增日志全部按游标增量提取（`tail -n +<游标+1>`），未清空任何历史日志，也未把历史成功记录当本轮证据。

---

## 六、"抢答 / 重复播报 / 上下文丢失"专项结论

| 项 | 结论 | 依据 |
|---|---|---|
| 原厂 AI 抢答 | **未出现** | 10 个 AI 事件每个只有一条 TTS 记录、一次播报窗口；native 路由日志标注 `(factory answers; AI worker does not)`，AI 事件不出现在 `native_route.public.json`；`fallback_ai=0` |
| 重复播报 | **未出现** | `tts_exec.log` 本轮 10 个 AI 事件共 10 条 `play`；`journal` 中每个 `event_id` 至多一条 `ok`；`dup_dropped=0`、`dup_same_event=0`、`same_text_new_event=0`；被打断的 `g14`/`g20` 之后无重播 |
| 被自己的播报回声误触发 | **未出现** | `echo.dropped_echo=0`、`kept_in_window=0`、`window_hits=0`；本轮 20 条事件全部对应我方实际播出的语音 |
| 上下文丢失 | **未出现** | T5 第二轮以"它"正确指代"机器学习"；`context.json` 三轮序完整；`save_errors=0` |

---

## 七、异常与限定（如实记录）

1. **T3 的"实际音频停止"无法用声音验证**：原厂音乐技能 `route=media.play` 执行成功、`MusicService` 会话进入 `state=3`(PLAYING)，但 `position` 恒 0、无 active track、无 TTS 生成 —— 判断为**未绑定音乐账号**，该次播放本身没有声音。因此"暂停播放"的停止效果以 `PlaybackState 3→2` 为证，不是听感证据。这属于设备侧音乐服务状态，与 Hook 链路无关。
2. **ASR 尾字截断（2 次）**：T2 第 1 次"音量调到四十"被识别为"音量调到四"（音量被设成 4）；T6 前几轮"……唐朝的历史"被识别为"请介绍一下唐"。改用 `rate=-3/-4` 与更短句式后命中。属于原厂 ASR 端点检测行为，已按"重试 + 逐次记录原文"处理，未用模拟数据替代。
3. **一次 TTS `provider_error` 后自动重试成功**：`g11` 首播 `tts_id=-1 outcome=provider_error dur_ms=2`，`tts_exec` 重新入队（`attempts=2`）后 `ok dur_ms=7 504`。结果是设备正常播报，但 `state.json` 的 `error` 计数 +1。属 TTS 执行器的瞬时上游错误，自动恢复，未影响用户可感知结果。
4. **T6 前 3 轮未踩中打断窗口**：轮 2/3 的旧回答在我方打断报文端点之前已自然播完（`ok`），只有轮 1、轮 4 真正截断。全部原始记录保留，不把 `ok` 记成 `interrupted`。
5. **T1 命中率 3/8**：声学路径固有波动，未做任何声学参数调整（本轮禁止改配置）。
6. **Hook 侧 live 计数器缺位**：本轮禁止执行 Injector 查询，因此 `hooked/sender/seen/final/queued` 只能取注入时刻快照（20:09:58）。Hook 参与本轮链路的证据改用事件 ID 前缀 `t6-30807-*`、Bridge `events_stored` 增量与 TTS 播报窗口。

---

## 八、证据文件

`my-doc/07_ai_bridge/evidence/t8-11/`：

| 文件 | 内容 |
|---|---|
| `maps_pre.txt` / `maps_post.txt` | 测试前后 `:core` 完整 maps |
| `bridge_status_pre.json` / `bridge_status_post.json` | Bridge 前后状态 |
| `worker_status_pre.json` / `worker_status_post.json` | Worker 前后状态（含 route / provider / echo / context / session 全部计数） |
| `tts_state_pre.json` / `tts_state_post.json` | TTS 队列前后状态 |
| `context_final.json` | Worker 上下文落盘（T4/T5 回复原文） |
| `events_full.jsonl` | 整份事件日志（594→614 行，本轮 20 条在末部） |
| `tts_journal_full.jsonl` | 整份 TTS 台账（本轮 11 条 `tts` + 1 `retry` + 1 `stop_request`） |
| `ai_worker_full.log` | 整份 Worker 日志（本轮逐条路由/模型/TTS 记录） |
| `hook_sup_log_pre.txt` | T8 Supervisor 日志快照（36 行，无错误） |
| `t1_play.log` / `t1_play2.log` / `t1_play3.log` | T1 三轮播放打点 |
| `preset_vol50_play.log` / `t2_play.log` / `t2_play2.log` | 音量预置与 T2 两次尝试 |
| `t3_play_music.log` / `t3_play.log` | T3 播放与暂停 |
| `t4_play.log` / `t5_q1_play.log` / `t5_q2_play.log` | T4 / T5 播放打点 |
| `t6_play_long.log` / `t6_play_interrupt.log` / `t6b_*` / `t6c_*` / `t6d_*` | T6 四轮播放打点 |
| `cmd_*.wav` | 本轮所有合成语音素材（SAPI 16 kHz 16-bit mono） |
