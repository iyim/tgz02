# T7-03 事故恢复后：只读验收报告

- 时间：2026-11-21 23:26:30 ～ 23:28（设备本地时间，CST）
- 方式：**只读**。未重启设备、未重启 `:core`、未注入/卸载任何 hook、未改任何配置或 SharedPreferences、
  未调用任何原厂未公开入口、未改代码。
- 唯一写入：本报告文件（文档）。

## 0. 结论

**设备处于"原厂唤醒正常 + T6-01 ASR 只读转发保留 + T7-03 两个实验 Hook 已摘除"的状态，可以继续开发。**

| 验收项 | 期望 | 实测 | 判定 |
|---|---|---|---|
| `:core` 进程数 | 1 | 1（pid **10414**，启动于开机后 1241.6 s ≈ 23:15:43） | ✅ |
| 主 Supervisor | 运行 | pid **279** | ✅ |
| `ttsguard` / `dialog` 附加 Supervisor | 全部停止 | 进程列表无；pid 文件已随 `stop` 删除 | ✅ |
| `run_ttsguard.sh watch` | 停止 | 无该进程；`ttsguard.watch.pid` 不存在 | ✅ |
| 残留 watch / 注入进程 | 无 | 无（只剩系统 `watchdogd`） | ✅ |
| `libtg_hook.so`（T6-01） | 保留 | pid 10414 maps 内 3 段；`--check` → `hooked=1`，`seen=54 final=8 sent=8 acked=8` | ✅ |
| `libtg_ttsguard.so`（T7-02） | 不加载 | 三个 smartapp 进程 maps 内均无；`--check` → `already_mapped=0` | ✅ |
| `libtg_dialog.so`（T7-03） | 不加载 | 三个 smartapp 进程 maps 内均无；`--check` → `already_mapped=0` | ✅ |
| 重复/残留旧 Hook | 无 | 每个库只出现一处映射（3 段 = r-xp/r--p/rw-p，同一份） | ✅ |
| 原厂 VAD 参数 | 150 / 700 | `localASRPauseTime=150`、`pauseTime=700`、`StopPolicy=2/3` 全为原值 | ✅ |
| `dialog.cfg` | `min_*=0` | `min_vad_pause_ms=0`、`min_silence_ms=0` | ✅ |
| 唤醒链路 | 正常 | 23:16:14 起连续识别 `天猫精灵你是谁` / `天猫精灵现在几点了` / `天猫精灵关闭屏幕` 等，全部完整成句 | ✅ |
| 崩溃 | 恢复后无 | 当前 logcat 无 `Fatal signal/SIGSEGV/SIGABRT`；crash 缓冲区空；无 23:15 之后的新 tombstone | ✅ |

---

## 1. 进程与 Supervisor

```
PID   PPID  ARGS
920   281   com.alibaba.ailabs.genie.smartapp
1266  281   com.alibaba.ailabs.genie.smartapp:business
10414 281   com.alibaba.ailabs.genie.smartapp:core        <- 唯一 :core
279         tg_supervisor --pidfile /data/local/tmp/t6/tg_supervisor.pid --log /data/local/tmp/t6/supervisor.log
313         watchdogd 20 10                            <- 系统进程，与本项目无关
```

- `:core` 启动时间推算：`/proc/10414/stat` 第 22 字段 = `124160` jiffies（HZ=100）→ 1241.6 s；
  `/proc/uptime` = 1911.05 s（读取时）→ 存活 **669.4 s**，即启动于 **≈23:15:43**。
  本次三组唤醒验证（23:16:14 / 23:17:05 / 23:17:26）都发生在这个进程里，**之后再没重启过**。
- 主 Supervisor 日志尾部，证明它对 10414 的注入在 23:15:44 完成且成功：

```
inj| [inject] stats=state=0 hooked=1 sender=1 spawns=1 seen=0 final=0 ...
inj| [inject] RESULT ok pid=10414 already_mapped=0 check_only=0
2026-11-21 23:15:44.152 sup: inject end: pid=10414 exit=0 hooked=1 elapsed=223ms ok
```

- 附加 Supervisor：`/data/local/tmp/t7/` 下 `ttsguard.sup.pid`、`dialog.sup.pid`、`ttsguard.watch.pid`
  **均不存在**（`run_aux_supervisors.sh stop` / `run_ttsguard.sh watch stop` 会删 pid 文件），
  进程列表里也没有对应 `tg_supervisor --so ...` 进程。日志文件保留（`*.sup.log`，最后写入 23:15）。

---

## 2. 三个 Hook 的实际映射与检查结果

所有检查均在 pid 10414（`:core`）、920（主 app）、1266（`:business`）上做；三个进程的
`/proc/<pid>/maps` **都可以正常读取**（分别 2761 / 2177 / 2533 行，无 `Permission denied`），
所以下表的"没有映射"是**核实过的否定结论，不是读不到**。

### 2.1 maps

| 进程 | libtg_hook.so | libtg_ttsguard.so | libtg_dialog.so |
|---|---|---|---|
| 10414 `:core` | **有**（3 段，单一副本） | 无 | 无 |
| 920 主 app | 无 | 无 | 无 |
| 1266 `:business` | 无 | 无 | 无 |

10414 的映射原文：

```
939c7000-939cc000 r-xp 00000000 ... /data/local/tmp/t6/libtg_hook.so
939cc000-939cd000 r--p 00004000 ... /data/local/tmp/t6/libtg_hook.so
939cd000-939ce000 rw-p 00005000 ... /data/local/tmp/t6/libtg_hook.so
```

### 2.2 Injector `--check`（只查询，不注入）

```
# T6-01 libtg_hook.so
[inject] tg_hook_prepare() = 0
[inject] patch_range=[0x9545953c,0x95459544)
[inject] hook_status=0 hooked=1
[inject] stats=state=0 hooked=1 sender=1 spawns=1 seen=54 final=8 queued=8 sent=8 acked=8 \
        dup=0 rejected=0 dropped=0 reconn=0 overflow=0 conn_open=1 conn_fail=0 ack_timeout=0
[inject] RESULT check pid=10414 hooked=1

# libtg_ttsguard.so
[inject] already_mapped=0
[inject] check_only with no library mapped: nothing to query

# libtg_dialog.so
[inject] already_mapped=0
[inject] check_only with no library mapped: nothing to query
```

解读：

- `libtg_hook` 的补丁点仍是 `SessionManager::onStream`（`patch_range` 8 字节），
  `seen=54`（54 次 onStream 调用）、`final=8`（8 条最终文本）、`queued=sent=acked=8`
  （全部成功送到 Bridge）、`dup/dropped/rejected/overflow` 全 0、`conn_open=1`：
  **ASR → Bridge 的只读转发在工作，且没有丢/重**。
- 另两个库 `already_mapped=0`，即进程内根本没有这两份 .so，谈不上 hook。
  磁盘文件仍在（`/data/local/tmp/t7/libtg_dialog.so` 71132 B、`libtg_ttsguard.so` 18324 B），
  **"文件在磁盘上" ≠ "已加载"，当前未加载**。

---

## 3. 原厂参数当前值（只读读取）

`/data/data/com.alibaba.ailabs.genie.smartapp/shared_prefs/runtime.xml`：

```xml
<int name="devicesettingInfo::localASRPauseTime" value="150" />
<int name="devicesettingInfo::pauseTime" value="700" />
<int name="devicesettingInfo::localASRStopPolicy" value="3" />
<int name="devicesettingInfo::ASRStopPolicy" value="2" />
```

即事故中我改过的两个值（曾为 900 / 1500）**已完全还原为原厂 150 / 700**，其余两项未被改动过。

备份文件存在：`-rw-r----- 1 root root 5244 2026-11-21 22:57 /data/local/tmp/t7/runtime.xml.bak`
（内容与当前 `runtime.xml` 一致，5244 B）。

`/data/local/tmp/t6/dialog.cfg`（本库自己的配置，不影响原厂，除非 min_* > 0）：

```
input_type=7
min_vad_pause_ms=0      <- 只观测，绝不修改原厂参数
min_silence_ms=0
debug=0
```

Worker 侧（`worker.conf` + 实际命令行）：

```
provider=deepseek   base_url=http://192.168.1.13:8790/v1   model=deepseek-flash
context_enabled=1   context_max_messages=6   context_file=/data/local/tmp/t5_bridge/ai_worker/context.json
（未设置 system_prompt= -> 使用内置默认 603 B；未设置 echo_filter= -> 默认 1）

7874 ai_worker --work-dir /data/local/tmp/t5_bridge/work --state-dir /data/local/tmp/t5_bridge/ai_worker \
     --conf /data/local/tmp/t5_bridge/ai_worker/worker.conf \
     --tts-queue-dir /data/local/tmp/t5_bridge/tts --reply-log /data/local/tmp/t5_bridge/ai_worker/replies.jsonl
```

生效证据（worker 日志）：

```
[aiw] 23:19:34 request shape: event=t6-10414-1969051-g6 system=1(role=system,bytes=603) history_msgs=6 user_msgs=1 req_msgs=7
[aiw] 23:20:53 request shape: event=t6-10414-1969063-g8 system=1(role=system,bytes=603) history_msgs=6 user_msgs=1 req_msgs=7
[aiw] 23:05:26 echo filter: enabled=1 no_command=1 window=+1200/-1500ms sim=60%
[aiw] 23:16:59 echo filter: drop event=t6-10414-1969029-g2 seq=3 reason=drop_no_command (norm=12 rest=0)
```

---

## 4. 恢复后的唤醒日志与异常日志

### 4.1 唤醒成功（恢复后第一组，当时已另存为 `evidence/t7_03_wake_recovery.logcat`）

```
D/WakeupEngineWrapper: [FullLink]onWakeupCallback
D/AGSpeechEngine: onSpeechWakeup,530: tian mao jing ling
D/SessionManager: onStartTalk:255 [10490] sessionId = 1969024, wakeupType = 0, wakeupWord=tian mao jing ling
D/AGSpeechEngine: handleWakeupPromptFinish,895
D/WakeupEngineWrapper: setSystemInfo,272: isFullDuplexMode=0, isAsrMode=1
D/SessionManager: onStopTalk:842 ... "listenDuration": 6980 ... "confidence": 0.7796
```

### 4.2 之后持续可用（`events.jsonl` 是持久证据，不受 logcat 环形缓冲区影响）

```
seq=2  session=1969024  "天猫精灵现在几点"      23:16:19
seq=3  session=1969029  "天猫精灵"              （只有唤醒词 -> worker 按 drop_no_command 丢弃，正确）
seq=4  session=1969033  "天猫精灵今天天气怎么"   23:17:05
seq=5  session=1969038  "天猫精灵现在几点"      23:17:26
seq=6  session=1969046  ...
seq=7  session=1969051  "天猫精灵你是谁"        23:19:32
seq=8  session=1969056  "天猫精灵现在几点了"     23:19:49
seq=9  session=1969063  "天猫精灵关闭屏幕"      23:20:51
```

即：恢复后 **8 次唤醒里 7 次收全整句**（含"唤醒词 + 停顿 + 指令"），session id 连续递增，
没有出现"只收到天猫精灵"的粘连现象。

### 4.3 异常日志核对

| 关注项 | 结果 |
|---|---|
| `abortListen,395,wakeup type is active`（事故期残留） | **当前缓冲区中已不再出现**（缓冲区只覆盖最近约 25 s，见 §5 限制） |
| `Fatal signal` / `SIGSEGV` / `SIGABRT` / `am_proc_died` | 当前 logcat 中**无**；`logcat -b crash -d` **空** |
| tombstone | `/data/tombstones` 最新为 `tombstone_09`（10:58）、`tombstone_03`（20:20，61 KB），**23:15 之后没有新增** |
| `UnconvWakeupManager: feed,68: feed when not started` | 仍然每约 1.6 s 一条（空闲态告警）。这不是崩溃，也不阻断唤醒（上面 8 次唤醒都成功）；在 22:52 事故期同样存在，暂按**原厂空闲态噪声**记录，不再深究 |

> 关于 tombstone：事故期我们的 `SIGSEGV` 是由阿里 crashsdk 接管的（日志里是 `crashsdk` + `DEBUG` 输出），
> 不写 `/data/tombstones`，所以"没有新 tombstone"不能单独作为"没崩过"的证据；
> 但 §4.2 的 `events.jsonl` 连续性与 `:core` 存活 669 s 足以说明**恢复后没有崩溃/重启**。

---

## 5. 未能核实 / 有保留的项目

1. **事故期（22:39–23:15）的 logcat 原文已不可回读**：设备日志量极大（约 11.7k 行 / 25 s），
   环形缓冲区只保留最近几十秒；那段时间的 `abortListen … wakeup type is active`、SIGSEGV 栈
   只能依赖当时另存的文件（`evidence/t7_03_hook_trace.logcat`、`evidence/t7_03_wake_recovery.logcat`
   与本文档引用的片段），无法再做二次取证。
2. **附加 Supervisor 的"最后状态"只能间接确认**：进程与 pid 文件均不存在，`*.sup.log` 最后写入于 23:15；
   日志里没有 `stop` 记录行，因此"是被正常 stop 而不是异常退出"这一点依赖 pid 文件被删除的事实，
   属间接证据。
3. **`libtg_hook.so` 的 8 条 final 与 8 条 acked 无法逐条对到 `events.jsonl` 的行**：
   Bridge 重启后 `seq` 归零（当前 seq 1..9 与 hook 的 `final=8` 量级一致，但编号体系不同），
   未做逐条映射。
4. **`UnconvWakeupManager` 告警是否原厂固有**：没有事故前的对照窗口，无法证明它在我改动之前就存在。

---

## 6. 附：本次只读核验用到的命令（全部只读）

```sh
ps -A -o PID,PPID,ARGS | grep smartapp
ps -A -o PID,ARGS | grep -E 'tg_supervisor|run_ttsguard|run_dialog|run_aux'
cat /proc/10414/stat            # 第 22 字段 = starttime
cat /proc/uptime
cat /proc/<pid>/maps | grep libtg
/data/local/tmp/t6/tg_injector --pid 10414 --so <lib> --check
cat /data/data/.../shared_prefs/runtime.xml
ls -l /data/local/tmp/t7/runtime.xml.bak
cat /data/local/tmp/t6/dialog.cfg
cat /data/local/tmp/t5_bridge/ai_worker/worker.conf
ps -A -o PID,ARGS | grep ai_worker
cat .../ai_worker.log | grep -a system
cat /data/local/tmp/t5_bridge/work/events.jsonl | tail -n 3
logcat -d -v time
logcat -d -b crash -v time
ls -l /data/tombstones
cat /data/local/tmp/t6/supervisor.log | tail -n 4
```

未执行：任何 `kill` / `am` / `setprop` / `cp` / `chmod` / 注入 / 卸载 / 重启。
