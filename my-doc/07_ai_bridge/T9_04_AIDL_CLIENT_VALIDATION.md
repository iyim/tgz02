# T9-04 官方 NativeService / IAliTVASR 真机调用验证

- 仓库：`iyim/tgz02`，基线提交 `dfad9cc5d28d97c21d8485ef8fab752e6851c74d`
- 设备：TG-Z02 / AILABS_S1L，Android 8.1（SDK 27），`armeabi-v7a`，Magisk root，`192.168.1.9:5555`
- 作业时间：2026-11-24 14:35 — 14:52（CST）
- 范围：只写了一个最小客户端（dex + APK）+ 报告；**没有改官方 App/签名/Manifest，没有改 SELinux，没有关或重启 `:core`，没有动现有 TTS 执行器与 Provider 通道**
- 证据等级标记：**[静]** 静态分析 / **[主]** 主机 / **[机]** 真机调用 / **[未]** 尚未验证

---

## 1. 六个问题的回答（先给结论）

| # | 问题 | 答案 | 等级 |
|---|---|---|---|
| 1 | 普通 App 能否绑定 NativeService？ | **能。** 显式 `component=com.alibaba.ailabs.genie.smartapp/com.alibaba.ailabs.geniesdk.NativeService` + `action=com.yunos.tv.alitvasr.service`，`bindService` 返回 `true`，`onServiceConnected` 拿到 `BinderProxy`，`getInterfaceDescriptor()` = `com.yunos.tv.alitvasr.IAliTVASR`，`pingBinder()=true` | **[机]** |
| 2 | 普通 App 能否调用 IAliTVASR？ | **能，且真的到达官方进程。** `playTTS(4)=true`、`playTTSWithCallback(9)=true`（两轮）、`stopTTS(5)` 无异常；官方 `:core` 的 `TtsManager::playTts` 打印了我们传的原文 | **[机]** |
| 3 | root 环境是否能够调用？ | **不能——连绑定都做不到。** 裸 `app_process`（uid 0）调用 `bindService` 抛 `SecurityException: Unable to find app for caller … (pid=…) when binding service`。这不是权限拒绝，而是 AMS 里没有该进程的 `ProcessRecord` | **[机]** |
| 4 | `playTTSWithCallback` 是否真正播报？ | **没有播报。** 返回 `true`，但音频状态机从未收到播放许可：`CMD_PLAY_TTS`=0、`sm_permit_tts_play`=0、`onTtsStart:141`=0、`tts_feedback`=0；同一分钟内用现有 Provider 通道对照播放同一类文本则完整出现 `permit`/`onTtsStart`/`status = play`/`status = complete`（约 2.3 s 真实出声） | **[机]** |
| 5 | `onTtsStart` / `onTtsStop` 是否稳定回调？ | **一次都没有触发**（两轮均 0/0/0，`onException` 也是 0），与第 4 条的"根本没进入播放状态"一致 | **[机]** |
| 6 | 自有 UI 是否可以直接通过 AIDL 控制官方后台？ | **绑定与调用可以，控制 TTS 不行。** 见 §6：AIDL 的 TTS 入口拿不到官方 `TtsInfo` 里决定播放许可的字段（`pkg`/`wakeupType`/`needFeedback` 等），AIDL 面也没有暴露这些字段。当前可靠的 TTS 通道仍是 Provider | **[机]**+**[静]** |

一句话：**AIDL 门是开着的，但门后那条 TTS 路不通；root 反而进不了这扇门。**

---

## 2. 客户端与被验证的接口

### 2.1 接口来源（不是猜的）

`src/com/yunos/tv/alitvasr/IAliTVASR.java` 与 `IAliTVASRTTSCallback.java` 逐行转写自官方产物：

```
官方包 com.alibaba.ailabs.genie.smartapp 8.7.1.18
/system/app/smartapp/oat/arm/smartapp.vdex → classes4.dex
  com.yunos.tv.alitvasr.IAliTVASR$Stub          （14 方法）
  com.yunos.tv.alitvasr.IAliTVASRTTSCallback$Stub（3 方法）
```

`DESCRIPTOR`、transaction 编号、参数顺序、Parcel 编码全部照抄官方 `Stub.onTransact` / `Stub.Proxy`。构建脚本用 `javap -constants` 反读编译产物，与官方值逐条比对，任何一条不符直接失败：

```
OK    registerCallback  want=1  got=1
OK    unregisterCallback want=2 got=2
OK    setAliTVASREnable want=3  got=3
OK    playTTS           want=4  got=4
OK    stopTTS           want=5  got=5
OK    setResultMode     want=6  got=6
OK    setASRMode        want=7  got=7
OK    showASRUI         want=8  got=8
OK    playTTSWithCallback want=9 got=9
OK    updateAppScene    want=10 got=10
OK    onFarDeviceData   want=11 got=11
OK    clientToAsr       want=12 got=12
OK    getService        want=13 got=13
OK    sendEventToServer want=14 got=14
OK    onTtsStart        want=1  got=1
OK    onTtsStop         want=2  got=2
OK    onException       want=3  got=3
```

完整输出：`evidence/t9_04_build.log`。

### 2.2 两个产物（同一份源码）

| 产物 | 用途 | 大小 | SHA256 |
|---|---|---|---|
| `build/aidl_probe.dex` | `app_process` 下以 uid 0 运行 | 23,560 B | `769ba7af4cb1b0ebf7901e5bb38882a7d852fe8ab07c6305f93109dd0eab2451` |
| `build/aidl_probe.apk` | 普通第三方 App（普通 UID） | 20,877 B | `510eabd78c1dcb282883190dc24ad44a0b1800f7ae6f43fcdc36f1c1e2065466` |

- 构建：`javac --release 8` + `d8 --min-api 27` + `aapt2 link` + `zipalign` + `apksigner`（SDK build-tools 35.0.1；build-tools 34.0.0 的 d8 8.2.2 在解析匿名内部类时内部 NPE，已换 8.6.2）。
- APK 请求权限：**0 个**（`AndroidManifest.xml` 里没有 `<uses-permission>`）。
- 签名：自签测试 key `CN=TGZ02-T904-probe,O=tgz02`（keytool 生成，密码 `android`，仅用于本测试）。
- 安装后 uid `u0_a55`（10055），`package:/data/app/com.tgz02.aidltest-n_XyLEJu0OHAc9PalMMr5A==/base.apk`。

客户端做的事（`Probe.java`）：显式 `Intent` → `bindService(BIND_AUTO_CREATE)` → 记录 binder 类名/`pingBinder`/`getInterfaceDescriptor` → `asInterface` → `playTTS` → `playTTSWithCallback`（带自己实现的 `IAliTVASRTTSCallback.Stub`，统计 start/stop/exception）→ `stopTTS` → 再一轮 `playTTSWithCallback`。每一步都打 `RESULT …` 行，便于机器核对。

---

## 3. 测试 A：普通 App（前台，普通 UID）

真机原始输出（`evidence/t9-04/25_app_probe_final.txt`）：

```
11-24 14:50:45.518 I/T904: === BEGIN mode=app pid=17512 uid=10055 app=com.tgz02.aidltest process=com.tgz02.aidltest sdk=27
11-24 14:50:45.522 I/T904: env top=com.tgz02.aidltest/.ProbeActivity screenOn=true
11-24 14:50:45.523 I/T904: bind intent: #Intent;action=com.yunos.tv.alitvasr.service;component=com.alibaba.ailabs.genie.smartapp/com.alibaba.ailabs.geniesdk.NativeService;end
11-24 14:50:45.526 I/T904: RESULT bindService=true
11-24 14:50:45.581 I/T904: onServiceConnected component=com.alibaba.ailabs.genie.smartapp/com.alibaba.ailabs.geniesdk.NativeService binder=android.os.BinderProxy alive=true
11-24 14:50:45.582 I/T904: binder.descriptor=com.yunos.tv.alitvasr.IAliTVASR
11-24 14:50:45.583 I/T904: RESULT asInterface=com.yunos.tv.alitvasr.IAliTVASR$Stub$Proxy
11-24 14:50:46.086 I/T904: RESULT playTTS(4)=true
11-24 14:50:49.091 I/T904: RESULT playTTSWithCallback(9) round=1 = true
11-24 14:51:01.100 I/T904: after round 1: onTtsStart=0 onTtsStop=0 onException=0
11-24 14:51:01.102 I/T904: RESULT stopTTS(5)=ok
11-24 14:51:03.107 I/T904: RESULT playTTSWithCallback(9) round=2 = true
11-24 14:51:15.116 I/T904: RESULT round1 start=0 stop=0 exc=0
11-24 14:51:15.116 I/T904: RESULT round2 start=0 stop=0 exc=0
```

官方 `:core`（pid 1178）同一时刻的记录，说明调用**真的进了官方进程**：

```
14:50:46.588 W/TtsManager( 1178): TtsManager.cpp:playTts:295 isInterrupted, sessionId = 0
14:50:46.596 W/TtsManager( 1178): TtsManager.cpp:playTts:388 tts = T9 AIDL plain TTS test, asrLogId = NULL
14:50:46.72x W/TtsManager( 1178): TtsManager.cpp:playTts:388 tts = T9 AIDL 回调测试 第一轮, asrLogId = NULL
14:51:0x.xxx W/TtsManager( 1178): TtsManager.cpp:playTts:388 tts = T9 AIDL 回调测试 第二轮, asrLogId = NULL
```

### 3.1 但**没有出声**（这是本次最重要的负面结果）

同一次捕获里对官方音频状态机（`AudioStateManager`）与 TTS 引擎（`TtsManager`）计数：

| 计数项 | AIDL 调用（前台，uid 10055） | Provider 对照（同一分钟，见 §5） |
|---|---|---|
| `ALI_STUB_CMD_PLAY_TTS` | **0** | 1 |
| `sm_permit_tts_play`（播放许可） | **0** | 1 |
| `onTtsStart:141`（引擎真正开始） | **0** | 2 |
| `_ali_stub_json_handle_tts_feedback` | **0** | 4（`play` + `complete` + `interupt`…） |
| `onTtsEnd` | 3（每次调用约 140 ms 后立即"结束"） | 1（正常结束，约 2.3 s 后） |

即：官方的 TTS 管理器收到了文本，音频状态机**根本没收到播放请求**，因此没有授权、没有出声、也没有回调。

---

## 4. 测试 A2：同一 App 退到后台（对照实验）

按 HOME 后同一个 binder、同一个进程再调一次：

```
11-24 14:51:28.353 I/T904: === background probe: env top=com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity screenOn=true
11-24 14:51:28.364 I/T904: RESULT playTTSWithCallback(9) background=false
11-24 14:51:40.401 I/T904: RESULT background start=0 stop=0 exc=0
```

这与官方代码的前置判断完全一致（`ClientManager.canPlayTts()`，[静]）：

```java
private boolean canPlayTts() {
    if (isScreenOn()) {
        String nameForUid = mContext.getPackageManager().getNameForUid(Binder.getCallingUid());
        ComponentName top = getRunningTasks(1).get(0).topActivity;
        return top != null && TextUtils.equals(top.getPackageName(), nameForUid);
    }
    return false;
}
public boolean playTTSWithCallback(final String str, final IAliTVASRTTSCallback cb) {
    if (!canPlayTts()) return false;                       // ← 后台直接 false
    mMainHandler.postDelayed(new Runnable() { … VoiceManager.getInstance().playVoice(str, new VoiceCallback(cb)) … }, 500L);
    return true;
}
```

结论：**返回值 `true/false` 只反映"调用者是不是当前前台 App 且屏幕亮"**，不代表播报已经开始。这条对自研 UI 很重要：只要我们的界面在最前面，门就开着；一旦后面去播报，就会被静默拒绝。

---

## 5. 决定性对照：现有 Provider 通道（同一分钟、同一捕获方法）

为了让"没出声"不是测量方法的问题，紧接着用**已验收的 TtsExec → Genie API（method 4）**通道播一句同类文本，用完全相同的 logcat 捕获：

```
14:45:21.977 W/TtsManager( 1178): TtsManager.cpp:playTts:388 tts = 控制实验 播放测试, asrLogId = NULL
14:45:22.049 D/TtsManager( 1178): TtsManager.cpp:onTtsStart:141 sessionId = 5245496, isStreaming = 1, tts = 控制实验 播放测试
14:45:22.068 D/TtsManager( 1178): TtsManager.cpp:onTtsData:205 TTS_TIME receive stream data actually.
14:45:22.129 D/AudioStateManager( 1178): sm_process_tts_play:2273 speech_start=0, exist_playing = 0, playlist_empty=1, …
14:45:22.129 D/AudioStateManager( 1178): sm_permit_tts_play:2228 ttsid 5245496
14:45:22.212 D/AudioStateManager( 1178): _ali_stub_json_handle_tts_feedback:status = play,type = tts,agmcId(tts_id) =5245496
14:45:24.521 D/AudioStateManager( 1178): _ali_stub_json_handle_tts_feedback:status = complete,type = tts,agmcId(tts_id) =5245496
```

同一套捕获能看见出声的全过程（play → 2.3 s → complete），因此 §3.1 的"0 许可 / 0 反馈"是**AIDL 路径真的没播**，不是日志没抓到。

证据：`evidence/t9-04/30_control_provider.txt`。

---

## 6. 为什么 AIDL 这条路不出声（可解释部分）

两条路最后都进 `VoiceManager.playTts(TtsInfo)`，差别只在 `TtsInfo` 的字段 [静]：

| 字段 | Provider 通道（GenieTable method 4） | AIDL `playTTS`/`playTTSWithCallback`（`VoiceManager.playVoice`） |
|---|---|---|
| `text` | ✓ | ✓ |
| `sessionId` | 0（我们传的） | 未设置 |
| `isOpenMic` | false | false |
| `secretKey` | "" | 未设置 |
| `wakeupType` | 1 | 未设置 |
| `pkg` | `com.tgz02.aibridge.tts` 之类 | **未设置（null）** |
| `ignoreMute` | false | 未设置 |
| `needFeedback` | false | 未设置 |

AIDL 面的 `playTTS(String)` / `playTTSWithCallback(String, cb)` **只接受文本和回调**，没有办法把 `pkg` / `wakeupType` / `secretKey` 带进去——而官方音频状态机在 Provider 路径里正是带着这些字段去做 `sm_permit_tts_play` 的。本次能确认的是"结果层"：`CMD_PLAY_TTS` 与 `permit` 完全没出现；至于 native 内部具体是哪一个字段把请求挡在 ASM 之前，属于 **[未]** —— 需要带 hook 的 native 侧实验才能钉死，不在本次范围（本次要求"只验证调用能力"）。

同理，回调链（[静]）：

```java
// VoiceManager
public void onTtsStatus(Context ctx, int id, int status) {
    if (status == 13) { onTtsStart(id); return; }        // 13 = 开始
    if (status == 12 || status == 8) onTtsEnd(id);       // 12/8 = 结束
    else if (status != 0) onTtsError(id);
}
public void onTtsStart(int id) {
    if (mVoiceInfo == null || id != mVoiceInfo.getRequestId()) return;   // ← 必须是自己那一单
    mVoiceInfo.getVoiceCallback().onTtsStart(mVoiceInfo.getTtsContent());
}
```

本次实际观测到的通知是 `onNotify id= 5245490 ,status = 3`（`status=3` 落到 `onTtsError`），且 id 与当次 `requestId` 不匹配（`playVoice` 内部先 `onEnd(true,true)` 再把新 id 写进 `mVoiceInfo`，日志里 `onTtsEnd sessionId=5245492` 与 `onNotify id=5245490` 相差 2）——所以既没有 `onTtsStart` 也没有 `onException` 送到我们这里。**这说明回调不是"慢"或"丢包"，而是压根没走到我们的那一单上。**

---

## 7. 测试 B：root / `app_process`（uid 0）

`evidence/t9-04/10_root_probe.txt`：

```
uid=0(root) gid=0(root) groups=0(root) context=u:r:magisk:s0
=== running the probe (uid 0)
T904: === BEGIN mode=root pid=11026 uid=0 app=android process=app_process sdk=27
T904: env top=app.orchard.tv/.MainActivity screenOn=true
T904: bind intent: #Intent;action=com.yunos.tv.alitvasr.service;component=com.alibaba.ailabs.genie.smartapp/com.alibaba.ailabs.geniesdk.NativeService;end
T904: bindService threw java.lang.SecurityException: Unable to find app for caller
      android.app.IApplicationThread$Stub$Proxy@68218f5 (pid=11026) when binding service
T904: RESULT bindService=false
T904: === DONE verdict=bind_failed elapsed=34ms
```

要点：

- 失败点是 **AMS 绑定环节**（`Unable to find app for caller`），不是官方服务里的权限判断；裸 `app_process` 没有 `ProcessRecord`，AMS 无法把 `ServiceConnection` 挂到一个进程上。
- 所以 **root 不能通过 AIDL 走这条路**；root 能用的仍是 `getContentProviderExternal`（现有 TtsExec 就在用），那是另一条通道。
- 这条同时否掉了"用 root 后台守护进程直接驱动 AIDL"的架构设想：不是权限不够，是根本不存在可绑定的调用者身份。
- 顺带再次确认：`root shell UID` 与 `system UID` 不是一回事；本次也没有尝试改 SELinux 或给 App 加系统签名。

---

## 8. 证据分级汇总

| 结论 | 等级 | 依据 |
|---|---|---|
| NativeService `exported=true`、无 `android:permission`、`onBind` 仅对 `com.yunos.tv.alitvasr.service` 返回 Binder | [静] | T9-03 §3（`evidence/t9-03/03_nativeservice_onbind.txt`） |
| 普通 App 能 bind 并拿到 `IAliTVASR` | [机] | §3 日志 |
| 普通 App 调 `playTTS/playTTSWithCallback/stopTTS` 均被受理 | [机] | §3 日志 + `:core` 侧 `playTts` 原文 |
| AIDL TTS 不产生播放许可、不发声、无回调 | [机] | §3.1 计数 + §5 对照 |
| 前台/后台门禁（`canPlayTts`） | [机]+[静] | §4 |
| root/`app_process` 无法 bind | [机] | §7 |
| "哪个 `TtsInfo` 字段挡住 native 许可" | [未] | 需要 native 侧 hook 实验，本次未做 |
| `setASRMode` / `setAliTVASREnable` / `registerCallback` / `clientToAsr` 的实际效果 | [未] | 本次刻意没调（会改官方行为），留待单独任务 |

---

## 9. 对架构结论的影响

评审给出的候选架构是"自有完整 UI + 自有 AI Bridge + 官方 NativeService/IAliTVASR + 官方 :core"。本次实测给这条链加了两条硬约束：

1. **TTS 不要指望 AIDL。** 返回值 `true` 会骗人；现在能真正出声、且能拿到"开始/完成"的仍是 Provider 通道（`method:4` + `feedback` 日志或 `play.public.json`）。也就是说 TtsExec 那条路继续保留是正确的，不必因为它"看起来绕"就换。
2. **AIDL 只适合"前台 App 自用"的场景。** 它天然要求调用者是当前前台包；root 守护进程连门都进不去。因此未来若做"常驻后台服务 + 界面"，真正被控的必须是前台那一侧（或者干脆沿用"文件 + Provider"的进程间约定，像现在 `continuity.req` / `tts/queue` 那样）。

仍然值得继续验证（成本低、价值明确）：

- `clientToAsr(10003, …)`（`ID_CHECK_USER_BIND`）与 `clientToAsr(10002, …)`（设置后台服务）：它们是"把自己的包登记给官方"的入口，可能反过来解释 `canPlayTts` 的门禁能否被登记解除；
- 在官方正在进行语音会话（刚唤醒）时再调 `playTTSWithCallback`，看是否因为"会话态"而获得播放许可——这能直接证明 §6 的字段假设；
- `registerCallback` + `IAliTVASRCallback`：如果它能把 ASR 事件推给外部包，那才是"自有 UI 接管交互"的关键，比 TTS 更值钱。

---

## 10. 设备当前状态 / 如何撤销

- 探针 APK 已安装（`com.tgz02.aidltest`，uid 10055），卸载方法：`adb shell pm uninstall com.tgz02.aidltest`（只删这个测试包，不涉及官方 App）。
- 设备上保留的文件：`/data/local/tmp/t9/t9_04/`（dex、apk、各脚本与原始日志）。
- 官方进程未受影响：`:core` pid 1178 全程未变，仍只映射 `libtg_hook.so` + `libtg_ttsguard_t8156.so`；`tg_hook_sup`/`tg_guard_sup` running；`tgb_bridge` 1602、`ai_worker` 2580 在位；Provider TTS 通道在对照实验中正常出声（`evidence/t9-04/40_final_state.txt`）。
- 官方 App 未被卸载/禁用/force-stop，官方 `:core` 未重启，Manifest/签名未改，SELinux 未改。

---

## 11. 复现

```powershell
# 构建（需要 Android SDK build-tools 35.0.1 + JDK）
powershell -ExecutionPolicy Bypass -File android/t9_04_aidl/build.ps1
# 事务号断言 + 产物哈希都会打印；任何一条与官方不符会直接失败

# 普通 App
adb install -r android/t9_04_aidl/build/aidl_probe.apk
adb push evidence/t9-04/dev_25_app_probe_wake.sh /data/local/tmp/t9/t9_04/
adb shell "su 0 sh -c 'sh /data/local/tmp/t9/t9_04/dev_25_app_probe_wake.sh'"

# root / app_process
adb push android/t9_04_aidl/build/aidl_probe.dex /data/local/tmp/t9/t9_04/
adb shell "su 0 sh -c 'sh /data/local/tmp/t9/t9_04/dev_10_root_probe.sh'"

# Provider 对照
adb shell "su 0 sh -c 'sh /data/local/tmp/t9/t9_04/dev_30_control_provider.sh'"
```

### 一个测量上的坑（记下来免得下次误判）

这台设备的 logcat `main` ring buffer 只有 1 MB，且日志量很大（实测 3 秒能滚掉上百行，整个 buffer 不到一分钟就转一圈）。第一次跑完再去 `logcat -d` 读，探针日志**已经被滚掉**，看起来像"程序没打印"。正确做法是运行前 `logcat … > file &` 实时落盘。本次全部证据都用实时落盘方式采集（`dev_20/23/25/30`）。
