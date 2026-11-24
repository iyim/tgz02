# T9-03 官方语音后台接口与依赖关系地图

- 仓库：`iyim/tgz02`，基线提交 `95d5d50865f26b81a513e9ce99307e81e375b616`
- 设备：TG-Z02 / AILABS_S1L，Android 8.1（SDK 27），`armeabi-v7a`，Magisk root
- 官方包：`com.alibaba.ailabs.genie.smartapp` 8.7.1.18（versionCode 2102087118，system uid）
- 作业时间：2026-11-24 13:00 – 13:35（CST）
- 本阶段只做研究：不改官方程序、不改我们的语音链路、不新建功能

证据等级标记：**[静]** 静态分析 · **[运]** 运行时日志/系统状态 · **[机]** 真机调用验证 · **[未]** 尚未验证

---

## 1. 结论表（交付要求）

| 模块 | 入口 | 所属进程 | 外部可调用性 | 依赖 | 结论 | 证据 |
|---|---|---|---|---|---|---|
| **NativeService**（官方唯一对外的语音服务） | `com.alibaba.ailabs.geniesdk.NativeService`；action `com.yunos.tv.alitvasr.service`（= `ASR_SERVER_ACTION`） | `:core` | `exported=true` 且**无 `android:permission`**；`onBind` 只在 action 等于 `ASR_SERVER_ACTION` **且** `AguiCtx.getInstance() != null` 时返回 `IAliTVASR`，否则返回 `null` | `AguiCtx` 已初始化（在 `:core` 内部） | **是唯一被设计成“给外部调用”的入口**；`com.alibaba.ailabs.tg.ACTION_BIND` 只起进程、**拿不到 Binder** | [静][运] |
| **IAliTVASR**（工厂 AIDL） | `com.yunos.tv.alitvasr.IAliTVASR`（14 个方法） | `:core`（实现是 `ClientManager.mIAliTVASR`，`IAliTVASR.Stub` 子类） | 拿到 Binder 即可跨进程调用；未见服务级权限 | 同上 | 现成的控制面：`playTTS` / `playTTSWithCallback` / `stopTTS` / `setASRMode` / `registerCallback` / `showASRUI` / `sendEventToServer` / `clientToAsr` / `getService` / `updateAppScene` / `setAliTVASREnable` / `setResultMode` / `unregisterCallback` / `onFarDeviceData` | [静][运] |
| **TTS** | 现状：ContentProvider `content://com.alibaba.ailabs.genie.assistant.provider/GenieApi`，`query` 的 selection = JSON `{method:4}`（播放）/ `insert`（停止，method=5） | `:core`（`StatusProvider` → `GenieTable.query` → `VoiceManager.playTts` → `AiLabsCore.playTts`） | Provider `exported=true`、无 `android:permission`；但我们是以 `getContentProviderExternal` + root 身份接入 | `:core` 存活、云端 TTS 流、原厂播放器 | **当前已跑通的通道**；另有 AIDL 回调通道（见下）但未验证 | [机]（现状）[静]（AIDL） |
| **ASR** | 无对外接口。内部：`AiLabsCore.startTalk/stopTalk`（JNI）→ `GenieApi::startTalk` → `SessionManager::onStartTalk` → `InputDeviceManager::startTalk` → `AGSpeechEngineProxy::startTalk` → `AGSpeechEngine::startListen` | `:core` | 不存在独立的 ASR 外部接口；只能通过 `IAliTVASR` 的控制面（`clientToAsr`/`registerCallback`/`setASRMode`）间接使用 | 云端会话（`Websocket-gateway` 的 `ListenStarted`/`Inactive`/`onCloudEOUEvent`）、账号与设备鉴权（`authorize`/`bindUser`） | **不适合独立化**：识别与云端 NVU/EOU 强绑定 | [运][静] |
| **唤醒 KWS** | 内部：`libagspeech.so` 的 `XEGNLocalEngine::startWakeupEngine`、`ALIUnconvWakeup::startWakeup/onFeed`、`libvad_api` 的 `ALIVAD::startVAD/onFeed`；模型 `libwakeup_bin_S1L_S3.so`（3,246,393 B，**不是 ELF**，首字节 `iii,V0…`） | `:core` | 无任何外部接口 | 模型 blob、产品配置、云端唤醒词 | **完全闭环在 `:core` 内**，无复用入口 | [运][静] |
| **会话续听（renew）** | `GenieApi::setFullDuplexDialogRenewDuration`（`AiLabsCore` 同名 JNI）；我们现用 `AGSpeechEngineProxy::startTalk(type=1)` | `:core` | 无公开接口；我们的做法是 native hook | 原厂会话状态 | 现状可行（T8-15.x 已验收），但属“非官方用法” | [机] |

---

## 2. NativeService：入口、Binder、是否可外部调用

### 2.1 静态：[静]

Manifest（`com.alibaba.ailabs.genie.smartapp` 8.7.1.18）：

```xml
<service name="com.alibaba.ailabs.geniesdk.NativeService" enabled="true" exported="true" process=":core">
  <intent-filter>
    <action name="com.alibaba.ailabs.tg.ACTION_BIND"/>
    <action name="com.yunos.tv.alitvasr.service"/>
    <action name="com.alibaba.ailabs.genie.assistant.autotest"/>
  </intent-filter>
</service>
```

解析结果：`exported=true`，**`android:permission` 为空**（不是“看漏”，是 manifest 里没有该属性）。

`onBind` 的实际逻辑（jadx 反编译原文）：

```java
public IBinder onBind(Intent intent) {
    String action = intent != null ? intent.getAction() : null;
    Log.e(TAG, "action = " + action);
    if (!TextUtils.equals(action, ASR_SERVER_ACTION) || (aguiCtx = AguiCtx.getInstance()) == null) {
        return null;
    }
    return aguiCtx.getClientManager().getIAliTVASR();
}
```

两个关键点：

1. **只有 `ASR_SERVER_ACTION` 才返回 Binder**。`com.alibaba.ailabs.tg.ACTION_BIND` 走 `onStartCommand` 那条路（起进程），`onBind` 对它返回 `null`；
2. 返回之前要求 `AguiCtx.getInstance() != null`，也就是说**语音引擎必须已经在 `:core` 里初始化**。这解释了为什么“绑定前先有 `:core`”是硬前提。

`ClientManager.getIAliTVASR()` 就是 `return this.mIAliTVASR;`（进程内的 `IAliTVASR.Stub` 实现），因此跨进程拿到的是标准 Binder 代理。

### 2.2 运行时：[运]

```
* ServiceRecord{e3ee27c u0 com.alibaba.ailabs.genie.smartapp/com.alibaba.ailabs.geniesdk.NativeService}
    intent={act=com.yunos.tv.alitvasr.service pkg=com.alibaba.ailabs.genie.smartapp}
    processName=com.alibaba.ailabs.genie.smartapp:core
    app=ProcessRecord{abb3a0b 1178:…:core/1000}
    createdFromFg=true  restartTime=-4m4s429ms
    ConnectionRecord{ce68811 u0 IMP …NativeService:@49bf038}
```

- 官方自己就是用 `act=com.yunos.tv.alitvasr.service` 绑的（证实 `ASR_SERVER_ACTION` 的字面值就是这个 action，而不是猜测）；
- 绑定方是同一个包（`binding=AppBindRecord{…:com.alibaba.ailabs.genie.smartapp}`），当前只有 1 条 `IMP` 连接；
- `service list` 里**没有** ASR 相关的系统服务（只有 `alibaba.ailabs.genie.resm: IResManager`），说明它**不是**通过 ServiceManager 注册的全局服务，只能通过 `bindService` 拿到。

### 2.3 外部可调用性：[静] 支持，[未] 真机未验证

| 事实 | 含义 |
|---|---|
| `exported=true` + 无 `android:permission` | Android 框架层不拦外部 `bindService` |
| 应用声明了 `com.yunos.tv.alitvasr.permission.CONTROL`（signature\|privileged）、`SESSION_INFO`，并在自己 manifest 里 request | 说明工厂体系里**存在**“调用方需要权限”的设计 |
| 服务本身没挂 `android:permission` | 权限要么在 AIDL 方法内检查调用方 uid，要么根本没查 |
| 我们**没有**做过外部客户端实测 | 不能仅凭 `exported=true` 断言“任何 App 都能调” |

→ 报告结论按“静态可行、需实测”记录。**T9-04 建议的第一个动作就是写一个 20~30 行的最小客户端**（`bindService(action=com.yunos.tv.alitvasr.service)` → `IAliTVASR.playTTS("测试")`）来一次性回答这个问题；这比继续读代码可靠。

---

## 3. TTS：我们现在到底调了什么

### 3.1 现状通道（真机在用，[机]）

`android/tts_exec/TtsExec.java` 头部注释与实现一致：

```
app_process + 本 dex
  -> IActivityManager.getContentProviderExternal("com.alibaba.ailabs.genie.assistant.provider")
  -> ContentProviderClient.query(content://…/GenieApi, selection=JSON{method:4,…})
  -> :core 进程 GenieTable.query -> VoiceManager.playTts -> AiLabsCore.playTts (native)
  -> 原厂 TtsManager 走原厂 websocket 会话取云 TTS 流
  -> UTPPlayer / ApolloRenderAdapter / OpenSL ES -> 原厂扬声器
```

- `METHOD_PLAY_TTS = 4`、`METHOD_STOP_TTS = 5`（insert 路径）；
- Provider 是 `com.alibaba.ailabs.geniesdk.provider.StatusProvider`，authority `com.alibaba.ailabs.genie.assistant.provider`，**在 `:core` 进程**、`exported=true`、无 `android:permission`；
- 因为 app_process 没有包身份，我们用隐藏 API `getContentProviderExternal` 直接拿 provider 客户端（需要 root）；
- 播完的判定是**解析原厂日志**：`_ali_stub_json_handle_tts_feedback:status = play|complete,type = tts,agmcId(tts_id) = <id>`，按 tts_id 过滤。

### 3.2 原生层（[静]）

| 符号 | 库 | 地址 |
|---|---|---|
| `Java_com_alibaba_ailabs_geniesdk_AiLabsCore_playTts` | libagui.so | 0x14d9c |
| `Java_…_AiLabsCore_stopTts` | libagui.so | 0x156ac |
| `AliAiLabs::AGUI::GenieApi::playTts(_TtsInfo_ const*)` | libsmartbox.so | 0xfd480 |
| `…GenieApi::stopTts(int)` | libsmartbox.so | 0xfd4c0 |
| `…TtsManager::playTts(_TtsInfo_ const*)` | libsmartbox.so | 0x11fafc |
| `…TtsManager::onTtsStart(int, TtsResponseInfo const*)` | libsmartbox.so | 0x11f110 |
| `…TtsManager::onTtsData(int, char const*, int)` | libsmartbox.so | 0x11f60c |
| `…TtsManager::onTtsEnd(int)` | libsmartbox.so | 0x11f780 |
| `…AudioManager::processTtsStart(int, TtsResponseInfo const*)` | libsmartbox.so | 0x13ba28 |

### 3.3 有没有“稳定的播报结束事件”？

| 途径 | 状态 |
|---|---|
| 原厂日志 `_ali_stub_json_handle_tts_feedback` | 现状可用，**但不是 API**（格式随版本变） [机] |
| AIDL `IAliTVASR.playTTSWithCallback(String, IAliTVASRTTSCallback)` + `IAliTVASRTTSCallback{onTtsStart(String), onTtsStop(), onException(String)}` | **看起来正是为此设计的正式回调**，但**未在真机验证** [静][未] |
| `play.public.json`（我们自己的 TtsExec 写） | 只是我们自己的状态镜像，不是官方事件 |

→ 结论：**TTS 已经有一条真机可用的调用通道**（Provider），但“播报结束”目前是靠日志凑的；AIDL 回调是下一步最值得验证的东西，一旦成立，我们的 UI 就能摆脱日志解析。

---

## 4. ASR / KWS：库、初始化、接口

### 4.1 谁在 `:core` 里，谁不在（[运]）

`:core` 映射（T9-01 采集，本次复核一致）：`libagspeech.so`、`libsmartbox.so`、`libvad_api.so`、`libvad_bin.so`、`libwakeup_bin_S1L_S3.so`、`libwakeup_sync_api_S1L_S3.so`、`libagui.so`、`libagaudio*.so`、`libaginput.so` 等；主进程只映射 3 个（`libcrashsdk/libmarsulog/libunet`）。

| 库 | .dynsym 规模 | 角色 |
|---|---|---|
| `libsmartbox.so` | 5,652 | AGUI 引擎：`GenieApi` / `SessionManager` / `AGSpeechEngineProxy` / `AGSpeechEngine` / `TtsManager` / `AudioManager` / `WakeupManager` |
| `libagspeech.so` | 539 | 本地语音组件：`ALIVAD`、`ALIUnconvWakeup`、`XEGNLocalEngine`、`TGEngineAdapter` |
| `libagui.so` | — | **JNI 胶水层**：104 个 `Java_com_alibaba_ailabs_geniesdk_AiLabsCore_*` |
| `libwakeup_sync_api_S1L_S3.so` | 2,176 | 唤醒同步 API |
| `libvad_api.so` | 261 | VAD API |
| `libwakeup_bin_S1L_S3.so` | **不是 ELF** | 唤醒模型数据（3,246,393 B，首字节 `69 69 69 2c 56 30 …`，格式未验证） |

### 4.2 JNI 入口（[静]，`libagui.so` → Java 类 `com.alibaba.ailabs.geniesdk.AiLabsCore`）

| JNI 方法 | 地址 | 作用（按名字） |
|---|---|---|
| `AiLabsCore_init` | 0x12eb4 | 引擎初始化 |
| `AiLabsCore_start` | 0x12e94 | 引擎启动 |
| `AiLabsCore_startTalk` | 0x13830 | 开麦/开会话 |
| `AiLabsCore_stopTalk` | 0x13ce8 | 关麦/结束 |
| `AiLabsCore_playTts` | 0x14d9c | 播报 |
| `AiLabsCore_stopTts` | 0x156ac | 停止播报 |
| `AiLabsCore_enableWakeup` | 0x15dac | 开/关唤醒 |
| `AiLabsCore_setEnable` / `setAsrMode` / `setResultMode` | 0x14388 / 0x14490 / 0x1440c | 语音开关与模式 |
| `AiLabsCore_registerCallback` / `registerRecordInputDevice` | 0x14054 / 0x181c8 | 事件回调、录音设备注册 |
| `AiLabsCore_getTalkStatus` / `getWakeupType` | 0x15994 / 0x15a20 | 会话状态 |
| `AiLabsCore_setFullDuplexDialogRenewDuration` | 0x15a38 | 续听时长（我们目前靠 hook 改的是它下游的字段） |
| `AiLabsCore_authorize` / `bindUser` / `updateAccountInfo` | 0x1a974 / 0x14d0c / 0x1ae14 | 账号/鉴权 |

### 4.3 内部调用链（[静]，地址可复核）

```
开麦（唤醒或续听）
  GenieApi::startTalk(InputDeviceType, _WakeUpInfo_ const*)         libsmartbox 0xfcff8
   -> SessionManager::onStartTalk(...)                              libsmartbox 0x111364
   -> InputDeviceManager::startTalk(...)                            libsmartbox 0x107e14
   -> AGSpeechEngineProxy::startTalk(_WakeUpInfo_*)                 libsmartbox 0xe90a8
   -> AGSpeechEngine::startListen(unsigned, WakeupInfo const&)      libsmartbox 0xd461c

关麦
  GenieApi::stopTalk(InputDeviceType, _StopWakeInfo_ const*)        libsmartbox 0xfd050
   -> SessionManager::onStopTalk(...)                              libsmartbox 0x113918
   -> AGSpeechEngineProxy::stopTalk(...)                            libsmartbox 0xe9900

本地引擎（libagspeech）
  XEGNLocalEngine::init / startWakeupEngine / stopWakeupEngine / useWakeupWords
  ALIUnconvWakeup::init / startWakeup / onFeed / resetWakeup / mainProcess
  ALIVAD::init / onStart / startVAD / onFeed / resetVAD
  TGEngineAdapter::setLocalASRListener / onWakeupPCMData
```

这些地址与 T8-15.x 已经在用的 hook 目标一致（`AGSpeechEngineProxy::startTalk` 0xe90a8、`SessionManager::onStopTalk` 0x113918、`GenieApi::startTalk` 0xfcff8），可以视为**已被真机行为交叉验证过**的符号（[机]）。

### 4.4 是否存在“独立于官方 Java 进程”的可调用接口？

| 检查 | 结果 |
|---|---|
| 系统服务（ServiceManager） | 无（`service list` 只有 `IResManager`） [运] |
| 导出 Provider | 只有 `StatusProvider`（`GenieApi` 表，TTS 用）与 `AgisProvider`（`assistant.server`），**没有** ASR 表 [静][运] |
| 导出 Service | 只有 `NativeService`，其 Binder 是控制面 `IAliTVASR`，不是“喂 PCM / 取 ASR 结果”的接口 [静] |
| JNI 直调 | 需要把 `libagui.so`/`libsmartbox.so` 加载进自己的进程并自己完成 `AiLabsCore_init`（含云端会话、鉴权、模型路径），等于重写半个引擎 [静] |

→ **结论：ASR/KWS 没有可供外部程序使用的独立接口。** 要用原厂识别，只能“让它自己的 `:core` 去听”，我们最多做控制与旁听（现状正是如此）。

---

## 5. 回答五个问题

**1. 自有 UI 是否可以直接调用官方后台服务？**
可以“试”：`NativeService` 是 exported 且无服务级权限，用 `bindService(action="com.yunos.tv.alitvasr.service")` 就能拿到 `IAliTVASR`（含 `playTTS` / `playTTSWithCallback` / `stopTTS` / `setASRMode` / `showASRUI` 等 14 个方法）。但**真机外部调用尚未验证**，而且前提是 `:core` 里的 `AguiCtx` 已初始化（否则 `onBind` 返回 null）。**[静] / [未]**

**2. 是否需要保留官方主进程作为初始化宿主？**
不需要。T9-02 第 4 级已经证明：主进程被连续 SIGKILL 45 次，`:core` 照常完成唤醒→ASR→朗读；`:core` 自己持有 `NativeService`、`StatusProvider`、`AgisProvider`。主进程仍承担 `GenieManageServerService` 等职责，但**不是语音的初始化宿主**。**[机]**

**3. 是否能完全不打开官方 UI，同时继续使用全部原厂语音能力？**
能，且已验证到第 4 级（零注入条件下唤醒/识别/朗读/音量指令全部通过，顶层 Activity 全程是桌面）。**[机]**

**4. 目前最值得独立化的组件是哪一个？**
**TTS**。理由：①现状已有真机可用的 Provider 通道（`GenieApi.method=4/5`）；②还有一条看起来是正式回调的 AIDL（`playTTSWithCallback` + `onTtsStart/onTtsStop`）尚未验证；③TTS 不涉及唤醒模型与麦克风时序，风险最低。其次才是“会话控制”（`startTalk`/续听时长）。**不建议**独立化 KWS/ASR：模型是混淆 blob（`libwakeup_bin_S1L_S3.so` 不是 ELF）、识别强依赖云端会话与账号鉴权。

**5. 保留官方 `:core` 时，自有完整屏幕 UI 应通过什么接口通信？**
优先级从高到低：

1. **`IAliTVASR`（bind `NativeService`）** —— 控制面最完整，也最“官方”；
2. **ContentProvider `com.alibaba.ailabs.genie.assistant.provider`（`GenieApi` 表）** —— 我们现在就在用，已跑通 TTS 播放/停止；
3. 万不得已才继续用 logcat 解析播报状态（现状），因为它不是接口。

这三条都需要先确认权限/uid 要求（T9-04 的最小客户端实验）。

---

## 6. 方法与证据说明（含一个必须记录的坑）

1. **官方 APK 内没有 `classes.dex`**（T9-01 已记录），代码在 `/system/app/smartapp/oat/arm/smartapp.vdex`。本次先用现有工具抽出 4 个 dex（`_analysis/vdex-dex/`）。
2. **抽出的 dex 的 Adler-32 校验和是坏的（SHA-1 签名是对的）**，jadx 因此静默加载 0 个类；把 `checksum` 重新按 `Adler32(bytes[12:])` 写回后，jadx 正常加载 **12,091 个类**。这一坑已记录，避免下次误判“APK 没有类”。
3. 反编译用的是 jadx（同一份 dex 重建的“分析用 apk”，`_analysis/t9/smartapp_dexonly.apk`，**不用于设备、不替换官方文件**）；
4. 原生侧用 ELF `.dynsym` 解析（自写脚本），地址即 `.so` 内偏移；
5. 所有结论都标了 [静]/[运]/[机]/[未]，没有把“看起来能调”写成“已验证”。

---

## 7. 下一步建议（T9-04 候选，尚未开始）

1. **最小外部客户端实验**（1~2 小时）：写 20~30 行 `bindService` 客户端，分别以
   - 普通 App（uid 10xxx）、
   - root/app_process（我们现有方式）
   两种身份调用 `IAliTVASR.playTTS("test")`，确认：能否 bind、是否被权限拒绝、`playTTSWithCallback` 的 `onTtsStop` 是否真的回调。这将一次性回答“自有 UI 能不能直接用官方后台”。
2. 若第 1 步成立：把我们的 TTS 执行器从“日志解析”升级为“回调驱动”（保留 Provider 通道作为回退）。
3. 若不成立（被权限拦住）：走“自建 system uid 签名的系统应用”路线（需要签名与系统分区权限，属于更大改动，需另行评估）。

## 8. 证据索引

| 文件 | 内容 |
|---|---|
| `evidence/t9-03/01_symbols_libsmartbox_libagspeech.txt` | 两个核心库的 `.dynsym` 目标符号与地址 |
| `evidence/t9-03/02_jni_libagui.txt` | `libagui.so` 的 104 个 `AiLabsCore_*` JNI 入口 |
| `evidence/t9-03/03_nativeservice_onbind.txt` | `NativeService` 类摘要 + `onBind` 反编译原文 |
| `evidence/t9-03/04_alitvasr_interface.txt` | `IAliTVASR` 14 个方法、`IAliTVASRTTSCallback` 3 个回调 |
| `evidence/t9-03/05_runtime_binder.txt` | 运行时 ServiceRecord、`service list`、Provider 列表 |
| `evidence/t9-03/06_tts_exec_chain.txt` | 我们 TtsExec 的真实调用链与常量 |
| `evidence/t9-03/07_dex_extraction_note.txt` | vdex→dex、校验和修复、jadx 类数 |
