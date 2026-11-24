# T9-02 官方界面不启动时的真机验证

- 仓库：`iyim/tgz02`，起点提交 `166972e9`
- 设备：TG-Z02 / AILABS_S1L，Android 8.1（SDK 27），`armeabi-v7a`，Magisk root
- 实验窗口：2026-11-24 11:35 – 11:56（CST）
- 前置条件：T9-01 备份与恢复材料已校验（19/19 SHA256 一致），见 `T9_01_DEVICE_BASELINE_AND_RECOVERY.md`
- 本阶段**未使用** `pm disable` / `pm uninstall` / `am force-stop`；未修改原厂任何文件、未删除数据、未改 `shared_prefs`

---

## 1. 最终结论（先给结论）

| 问题 | 结论 | 依据 |
|---|---|---|
| ① 日常运行是否可以完全不打开官方界面 App？ | **可以。** 四个能力（唤醒 / ASR / TTS / 原厂指令）在“界面从未打开、顶层 Activity 一直是桌面”的条件下全部实测通过 | §4、§5 |
| ② 官方 `:core` 是否可以独立于主 UI 进程存在？ | **可以。** 对主进程连续 45 次 SIGKILL，`:core` pid 全程不变，唤醒→ASR→EOU→播报仍然完整 | §6.3 |
| ③ 下一步优先做什么？ | 保留官方 `:core`，**不**整体提取后台；先修两个跨重启缺陷，再把“界面”换成我们自己的控制面 | §8 |

补充两个必须说清的事实：

1. **“官方界面不打开” ≠ “官方主进程不存在”**。重启后系统会自动拉起主进程（pid 918，开机后约 12 s 起），但它只当后台宿主，界面并没有被打开（顶层 Activity 是 `com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity`）。语音链路不需要它，见 §6。
2. **官方仍会在会话中显示自己的界面**：主进程被信号杀掉再被系统拉起后，一次唤醒会让 `com.alibaba.genie.waft/.ui.tpl.WaftTplActivity` 成为顶层（§6.2 实测）。这是“界面被显示”，不是“语音依赖界面”。

---

## 2. 验证等级

| 等级 | 含义 | 本阶段是否达到 |
|---|---|---|
| 1 | 静态分析显示可能独立 | 达到（Manifest/进程/库映射） |
| 2 | 不打开 UI，后台进程能够启动 | 达到（重启后自动起 `:core`，§3） |
| 3 | 不打开 UI，原厂唤醒和 ASR 正常 | 达到（§4、§5） |
| 4 | 不打开 UI，原厂 TTS、指令和完整语音链路正常 | **达到**（§5，含 `setStreamVolume` 实际生效） |

`T9-02` 判定为**第 4 级**。

---

## 3. 阶段一：正常运行对照组（官方 UI 进程在跑）

时间 11:35:30 – 11:36:37，未做任何进程操作，只回放语音并取证。

| 时间 | 事件（logcat 原文摘录） |
|---|---|
| 11:35:36.087 | `onStartTalk:255 sessionId = 1967282, wakeupType = 0, wakeupWord=tian mao jing ling` |
| 11:35:36.3xx | `onStream:641 … text = 天天 / 天猫 / 天猫精灵`（流式 ASR） |
| 11:35:39.635 | `AGSpeechEngine: onCloudEOUEvent,646` |
| 11:35:39.639 | `onStopTalk:697 onStopTalk, mStopTalkReason = 0, reason = normal` |
| 11:35:39 | `route=skill skill=time.query … tts queued`（我方 worker 接管） |
| 11:35:41.791 | `onStartTalk sessionId=1971383, wakeupType=1`（guard 自动续听） |
| 11:36:08.654 | `onStartTalk sessionId=1967291, wakeupType=0`（第二段：音量指令） |
| 11:36:13 | `route=native intent=volume rule=volume.down` + `continuity request … CONFIRMED by factory session=1971401 (+271 ms)` |

进程结构（对照）：

| 项 | 值 |
|---|---|
| 主进程 913 | 99 线程，映射 3 个官方 `.so`（`libcrashsdk/libmarsulog/libunet`） |
| `:core` 13250 | 80 线程，映射 47 个官方 `.so`（含 `libagspeech/libwakeup_bin_S1L_S3/libvad_*/libsmartbox`） |
| `:business` 29017 | 映射 1 个官方 `.so` |
| `NativeService` | 5 条 `IMP` 连接、`startRequested=true callStart=true`（主进程绑定 + startService） |

结论：**唤醒/ASR/TTS/指令全部发生在 `:core`**；主进程不映射语音引擎库。

---

## 4. 阶段二：重启后不打开官方界面（第一次）

操作：11:37:38 `adb reboot`；boot_completed 在约 20 s 内恢复；11:38:43（uptime 54.32 s）抓状态。**全程没有打开任何官方界面**。

| 项 | 值（`evidence/t9-02/01_boot_state_after_reboot_no_ui.txt`） |
|---|---|
| 主进程 | pid 918，进程年龄 41.7 s（约开机后 12 s 自动起），139 线程 |
| `:core` | pid 1151，年龄 39.0 s，85 线程 |
| `:business` | pid 1210，年龄 38.7 s |
| 顶层 Activity | `com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity`（桌面，**不是**官方 App） |
| `NativeService` | `startRequested=true createdFromFg=true restartTime=-39s400ms` |
| `:core` 语音库 | `libagspeech.so`、`libwakeup_bin_S1L_S3.so`、`libwakeup_sync_api_S1L_S3.so`、`libvad_api.so`、`libvad_bin.so`、`libsmartbox.so` |

语音实测（11:39:01–11:40:05，官方 UI 未打开）：

```
11-24 11:39:08.823 onStartTalk:255 sessionId = 1968115, wakeupType = 0, wakeupWord=tian mao jing ling
11-24 11:39:12.531 AGSpeechEngine: onCloudEOUEvent,646
11-24 11:39:12.531 onStopTalk:697 mStopTalkReason = 0, reason = normal
11-24 11:39:12.915 AudioManager: processTtsStart:561 Tts start, id:1968115, text: 现在是上午十一点三十九分。
11-24 11:39:13.044 NOTIFY_TTS_STATUS arg1=AUDIO_STATUS_PLAY   arg2=1968115
11-24 11:39:15.428 NOTIFY_TTS_STATUS arg1=AUDIO_STATUS_COMPLETE arg2=1968115
11-24 11:39:31.039 onStartTalk sessionId = 1968119, wakeupType = 0（第二段：音量调小）
11-24 11:39:35.281 onCloudEOUEvent,646
11-24 11:39:35.632 setStreamVolume(stream:STREAM_MUSIC index:1 flags:0x1) from com.alibaba.ailabs.genie.smartapp
11-24 11:39:35.644 NOTIFY_TTS_STATUS arg1=AUDIO_STATUS_PLAY   arg2=1968119
11-24 11:39:40.322 NOTIFY_TTS_STATUS arg1=AUDIO_STATUS_COMPLETE arg2=1968119
```

顶层 Activity 在同一窗口内始终是桌面（`08_top_activity_after`）。

**这次实验的诚实说明**：该窗口里 `:core` 已被**遗留 rc 拉起的 T6 旧 supervisor** 注入过 `/data/local/tmp/t6/libtg_hook.so`（11:38:08，见 `04_t6_supervisor_injection_evidence.txt`），所以它不是“完全无注入的原厂进程”。因此补做了 §5 的干净复测。

---

## 5. 阶段二（干净复测）：`:core` 零注入 + 界面未打开

操作 11:53:51：停掉两个注入 supervisor（`SIGTERM`），`kill -9` 旧的 `:core`，等系统重建，确认新 `:core` 18248 的 maps 里 `libtg_` 计数 = **0**（`14_injection_free_core.txt`）；顶层仍是桌面。然后回放语音。

```
### our libs in :core (expect none)
0
### top activity
    mResumedActivity: ActivityRecord{cf1a434 u0 com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity t2}
```

语音实测（11:54:15–11:55:00，`evidence/t9-02/06_noui_clean_key_lines.txt`）：

```
11-24 11:54:17.034 D/SessionManager(18248): onStartTalk:255 sessionId = 1968437, wakeupType = 0, wakeupWord=tian mao jing ling
11-24 11:54:17.051 W/SessionDispatch(18248): onStartTalk:106 sessionId = 1968437
11-24 11:54:20.612 D/AGSpeechEngine(18248): onCloudEOUEvent,646
11-24 11:54:20.617 W/SessionManager(18248): onStopTalk:697 mStopTalkReason = 0, reason = normal
11-24 11:54:21.263 D/GenieAssistantUIManager(18248): NOTIFY_TTS_STATUS arg1=AUDIO_STATUS_PLAY    arg2=1968437
11-24 11:54:23.700 D/GenieAssistantUIManager(18248): NOTIFY_TTS_STATUS arg1=AUDIO_STATUS_COMPLETE arg2=1968437
11-24 11:54:38.989 D/SessionManager(18248): onStartTalk:255 sessionId = 1968441, wakeupType = 0（音量指令）
11-24 11:54:43.301 D/AGSpeechEngine(18248): onCloudEOUEvent,646
11-24 11:54:43.780 D/GenieAssistantUIManager(18248): NOTIFY_TTS_STATUS arg1=AUDIO_STATUS_PLAY    arg2=1968441
11-24 11:54:48.347 D/GenieAssistantUIManager(18248): NOTIFY_TTS_STATUS arg1=AUDIO_STATUS_COMPLETE arg2=1968441
```

指令真的执行了（不是只播报）：

```
11-24 11:54:43:643 setStreamVolume(stream:STREAM_MUSIC index:1 flags:0x1) from com.alibaba.ailabs.genie.smartapp
```

（`evidence/t9-02/07_noui_clean_command_evidence.txt`；同文件里还留有 11:39:35、11:47:42、11:50:42、11:52:55 四次同样的 `setStreamVolume index:1`，可交叉验证。）

结论：**在没有我们的任何注入、没有打开官方界面的条件下，原厂唤醒、ASR、云端语义、TTS 播报、音量指令全部正常** —— 第 4 级。

---

## 6. 阶段三：依赖分析 + 单进程可逆实验

### 6.1 静态/运行态依赖分析（先分析，再动手）

| 观察 | 含义 |
|---|---|
| `:core` 的 `NativeService`：`exported=true`，action 含 `com.alibaba.ailabs.tg.ACTION_BIND`、`com.yunos.tv.alitvasr.service`；`startRequested=true callStart=true` | 既被 `startService` 起过（有独立生命周期），也被别处 `bindService` |
| 5 条 `IMP` 连接到 `NativeService`，绑定方 `AppBindRecord{… com.alibaba.ailabs.genie.smartapp/com.alibaba.ailabs.geniesdk.NativeService:com.alibaba.ailabs.genie.smartapp}` | 绑定方是**主进程**（同一包名） |
| `:core` 有 exported Provider `StatusProvider` / `AgisProvider` | 任何 `ContentResolver` 访问都会创建 `:core` 进程，不必有 UI |
| `:core` 仅 1 个 Activity（`UserInfoActivity`），且语音链路从不启动它 | 语音不需要 `:core` 的界面 |
| 主进程持有前台服务 `GenieManageServerService`（`isForeground=true`）与 `TimerService/AbcService`（`startRequested=true`） | 主进程会被系统保活并自动重启 |

判断：**语音引擎在 `:core`；主进程是绑定方 + 保活宿主，但 `:core` 自身是 `started` 服务，不依赖绑定生存。**

### 6.2 实验 A：只 SIGKILL 主 UI 进程（11:42:28）

```
resolved main=918 core=1151  11:42:28
SIGKILL sent to 918
--- ps after kill
  898 … osupdate
 1062 … launcher
 1151 … smartapp:core      ← 存活
 1210 … smartapp:business
 1564 … iot:service
 2425 … rtc
 7771 … smartapp           ← 系统已在 1 s 内重新拉起主进程
core 1151 alive
```

随即回放唤醒词（11:42:34）：

```
11-24 11:42:36.946 D/SessionManager( 1151): onStartTalk sessionId = 1968129, wakeupType = 0
11-24 11:42:40.436 D/AGSpeechEngine( 1151): onCloudEOUEvent,646
11-24 11:42:40.440 D/SessionManager( 1151): onStopTalk:697 reason = normal
11-24 11:42:40.883 D/GenieAssistantUIManager( 1151): NOTIFY_TTS_PLAY_TXT … 现在是上午十一点四十二分。
11-24 11:42:40.883 W/AudioFlinger_Threads( 316): createTrack_l(): mismatch between requested flags …
```

`:core` pid 全程 1151 未变（`09_core_status_after_voice`）。注意：重启后的主进程把官方语音界面显示了出来（顶层变成 `com.alibaba.genie.waft/.ui.tpl.WaftTplActivity`），说明“主进程会画界面”，但不影响语音。

### 6.3 实验 B：把主进程按住 25 s（SIGKILL 循环）

11:43:31–11:43:56，每 300 ms 杀一次主进程（共 **45 次**，pid 从 11xxx 一路换到 11885），期间回放唤醒词：

```
11-24 11:43:36.094 D/SessionManager( 1151): onStartTalk sessionId = 1968135, wakeupType = 0
11-24 11:43:39.651 D/AGSpeechEngine( 1151): onCloudEOUEvent,646
11-24 11:43:40.430 D/GenieAssistantUIManager( 1151): NOTIFY_TTS_PLAY_TXT … 现在是上午十一点四十三分。
11-24 11:43:42.861 D/GenieAssistantUIManager( 1151): NOTIFY_TTS_STATUS arg1=AUDIO_STATUS_COMPLETE arg2=1968135
```

击杀记录与结果（`11_killhold_kill_loop.txt`、`12_killhold_key_lines.txt`）：

```
killhold done: kills=45
--- ps after
 1151 … smartapp:core     ← 仍是同一个进程
11915 … smartapp          ← 最后一次被拉起的主进程
mResumedActivity: … .genie.launcher/.activity.AdultHomeActivity（回到桌面）
```

结论：**主 UI 进程对语音链路不是必要条件**；被反复杀死时唤醒、ASR、EOU、播报仍然完成，且 `:core` 不退出。

### 6.4 单进程实验的可逆性

| 项 | 结果 |
|---|---|
| 使用的手段 | 仅 `kill -9 <主进程 pid>`（信号），未 `am force-stop`、未 disable、未清数据 |
| 系统反应 | 主进程被 ActivityManager 在 ~1 s 内自动重启（因为 `GenieManageServerService` 等 `startRequested` 服务） |
| `:core` | 全程存活，pid 不变 |
| 实验后状态 | 主进程 11915 正常运行；`:core` 1151；之后按 T9-01 流程恢复我们的栈（`:core` 18956，仅 `t8/libtg_hook.so` + `libtg_ttsguard_t8155r.so`） |
| 对原厂的影响 | 无持久化改动；无文件/配置/数据修改 |

---

## 7. 对现有 AI 桥接的影响与恢复

| 阶段 | 桥接状态 |
|---|---|
| 阶段一（对照） | 完整：`route=skill`、`route=native`、`tts queued`、`continuity … CONFIRMED (+271 ms)` |
| 阶段二/三（重启、无注入、杀主进程） | 冻结：supervisor/bridge/worker/tts 全部未运行（重启后本就不自启），`factory_talk.log` 不再增长；这是“我们的栈没起来”，不是官方能力失效 |
| 恢复后 | 见 §7.1，链路全部恢复 |

### 7.1 恢复后的复测（`:core` 18956）

```
11:55:51 factory wake session=1968948 wake_type=0
11:55:56 route=native intent=volume rule=volume.down …
11:55:57 continuity request: seq=1088070 sent … CONFIRMED by factory session=1973048 (+207 ms)
11:55:57 factory wake session=1973048 wake_type=1
```

证据：`13_chain_after_restore_worker_delta.txt`、`T9_01` 的 `16_chain_verify_native_relisten.txt`。

恢复过程中额外发现两个跨重启缺陷（详见 T9-01 §8）：遗留 rc 注入 T6 旧 hook；`continuity.req` / `listen_hold` 的单调时钟值跨重启失效。**两者都不影响原厂能力，只影响我们自己的续听与注入组合。**

---

## 8. 三个问题的回答与下一步建议

1. **日常运行可以完全不打开官方界面。** 第 4 级证据：界面未打开（顶层一直是 launcher）、`:core` 零注入的干净条件下，唤醒 / ASR / 云端语义 / TTS / 音量指令全部实测通过。
2. **`:core` 可以独立于主 UI 进程存在。** 45 次连续 SIGKILL 主进程，`:core` pid 不变、语音不中断。但要注意：主进程会被系统自动拉起（`startRequested` 服务 + 前台服务），所以“主进程彻底不存在”这个状态本身不可持续，也不需要。
3. **下一步优先级建议（不建议整体“提取官方后台”）**：
   1. **先修跨重启缺陷**（T9-01 §8.1 / §8.2）：把遗留 rc 换成 T8 组合；`continuity.req`/`listen_hold` 引入 boot 作用域。否则任何一次重启都会让“界面不启动”这条路线在工程上不可用（我们的续听会永久失效）。
   2. **锁定“后台即服务”的接口面**：`:core` 的 `NativeService`（`com.alibaba.ailabs.tg.ACTION_BIND` / `com.yunos.tv.alitvasr.service`）与 `StatusProvider`/`AgisProvider` 是现成的进程间入口；T9-03 应只针对这些入口 + TTS 入口（`playTts`/`AGSpeechEngineProxy`）做接口化，而不是反编译整套后台。
   3. **界面替换**：既然 UI 不需要启动，最省风险的做法是“保留官方 `:core` + 用我们自己的控制面（App/网页/命令行）驱动会话与播报”，而不是把官方 APK/DEX/SO 抽出来重打包（后者会引入签名、系统 uid、`sharedUserId=android.uid.system` 等一堆不可回避的问题）。
   4. **只有一条路需要 T9-03 的组件盘点**：如果要做“完全脱离官方 App 的 TTS/ASR”，才需要拆 `vdex`、定位 `libagspeech.so` 的 `playTts`/`startTalk` 与模型文件；那是更大的工作量，且会失去官方的云端 NLU 能力。

---

## 9. 证据索引

| 文件 | 内容 |
|---|---|
| `evidence/t9-02/01_boot_state_after_reboot_no_ui.txt` | 重启后 54 s 的完整状态（进程/年龄/顶层 Activity/绑定/库映射/音频） |
| `evidence/t9-02/02_recore_race_with_t6_supervisor.txt` | 旧 supervisor 与新 hook 抢注入的现场 |
| `evidence/t9-02/03_stop_t6_supervisor.txt` | `setprop ctl.stop tg_supervisor` + 重启 `:core` 后的干净组合 |
| `evidence/t9-02/04_t6_supervisor_injection_evidence.txt` | T6 supervisor 日志（11:38:08 注入成功、11:46 注入失败 exit=19）与 rc 文件哈希 |
| `evidence/t9-02/05_noui_first_run_key_lines.txt` | 第一次“不打开 UI”测试的 57 条关键日志 |
| `evidence/t9-02/06_noui_clean_key_lines.txt` | 零注入干净复测的 56 条关键日志 |
| `evidence/t9-02/07_noui_clean_command_evidence.txt` | `setStreamVolume index:1` 五次记录（跨多轮实验） |
| `evidence/t9-02/08_noui_clean_top_activity.txt` | 干净复测结束时的顶层 Activity（桌面） |
| `evidence/t9-02/09_killmain_sigkill.txt`、`10_killmain_key_lines.txt` | 单次 SIGKILL 主进程 + 语音仍可用 |
| `evidence/t9-02/11_killhold_kill_loop.txt`、`12_killhold_key_lines.txt` | 45 次 SIGKILL 循环 + 语音仍可用 |
| `evidence/t9-02/13_chain_after_restore_worker_delta.txt` | 恢复后 `CONFIRMED (+208 ms)` |
| `evidence/t9-02/14_injection_free_core.txt` | `:core` 零注入证明 |
| `evidence/t9-02/15_final_restore.txt` | 最终恢复状态（栈 + 注入组合） |
| `evidence/t9-02/16_stale_request_state.txt` | 跨重启状态文件失效的现场 |
