# 01 原厂语音栈组件清单（TG-Z02 / AILABS_S1L）

设备：`AILABS_S1L`，Android 8.1（SDK 27），`armeabi-v7a`（仅 32 位），`192.168.1.9:5555`，Magisk root。
取证方式：`asr_inventory.sh`（只读）、`adb pull` 到主机后静态分析（NDK readelf / strings / c++filt）；
`:core` 常驻情况取自 `/proc/8342/maps`（pid 为当时的 `smartapp:core`）。

## 1. 应用与代码位置

| 项 | 位置 | 大小 | 说明 |
|---|---|---|---|
| 主应用 | `/system/app/smartapp/smartapp.apk` | 25,336,386 B | `com.alibaba.ailabs.genie.smartapp`，**APK 内没有 `classes.dex`** |
| 优化代码 | `/system/app/smartapp/oat/arm/smartapp.vdex` | 28,902,724 B | Java 字节码实际在 vdex 里（`dexdump` 需 vdexExtractor，本轮用 strings 提取符号） |
| 运行期映射 | `/data/dalvik-cache/arm/system@app@smartapp@smartapp.apk@classes.{art,vdex,dex}` | — | 见 `/proc/<pid>/maps` |
| 原生库目录 | `/system/app/smartapp/lib/arm/` | 68 个 `.so`，合计 ~36.7 MB | 详见 `../evidence/t7_07_libs.txt` |
| 语言资源 | `assets/asr_bg.zip` 381,131 B / `assets/fuzzylexicon.bin` 337,101 B | — | ASR 背景模型包 + 模糊词典（本地识别后用） |

**没有独立的 ASR JAR / DEX 包**：语音能力全部来自
`com.alibaba.ailabs.genie.assistant.sdk.asr` 这个 Java 包（24 个类，见
`../evidence/t7_07_vdex_java_asr.txt`）＋ `libagspeech.so` / `libsmartbox.so` / `libace*.so` 原生实现。

相邻应用 `com.aligenie.ags`（`/system/app/AliGenieService`）里**没有任何语音库**
（只有 `libaligenie_ic.so`、`libcrashsdk.so`、`liblogProducer.so`），
所以"语音不在 AGS 服务里跑"，就在 `smartapp:core` 进程里跑。

Java 层关键类（vdex 提取，全名 `com/alibaba/ailabs/genie/assistant/sdk/asr/`）：
`ASRClient`、`ASRManager`、`ASRClientInfo`、`ASRCommandReturn`、`ASRStatus`、`GenieApi`、
`GenieClient`、`OnASRCommandListener`、`OnNluResultListener`、`OnTtsListener`、`DMAction`、
`AppContextData`、`UserDataProvider` 等。状态常量：`ASR_STATUS_RECORD_START/RECORD_END`、
`ASR_STATUS_RECOGNIZE_START/RECOGNIZE_END`、`ASR_STATUS_VOLUME_UPDATE`；
另有 `AliTVASRManager`（TV 专用管理器）。

## 2. 语音相关原生库

| 库 | 大小 | 角色 | `DT_NEEDED` 里的关键项 | `:core` 常驻 |
|---|---|---|---|---|
| `libsmartbox.so` | 2,047,772 | **AGUI 应用核心**：会话 / NLU / TTS / 云端 ASR 管理 | libcurl, libwebsockets, libssl, libcrypto, libnghttp2_ali, libhttpdns, libgcs_ali, libopus-ogg, libspeex-ogg, libjson_c_ali | 是 |
| `libagspeech.so` | 149,112 | **语音组件工厂**：组件管理器 + 本地引擎适配器 | libagpal, librecheck_api, libc++_shared | 是 |
| `libace.so` | 1,645,976 | ACE 前端/公共算法（特征、矩阵、Eigen） | libm/log/dl/c | 是 |
| `libaceAsr.so` | 493,288 | **本地 ASR 引擎**：`AILabs::TGLEngine`（FeedPCM/FeedFBank/BeamSearch） | libace, libaceNlu, libm/dl/c | **否** |
| `libaceNlu.so` | 640,828 | 本地 NLU 引擎 | libace 等 | **否** |
| `libmodel.bin.so` | 3,260,775 | 本地引擎**模型数据**（按 .so 封装的二进制） | — | **否** |
| `libconfigure.bin.so` | 835,691 | 本地引擎**配置数据** | — | **否** |
| `libvad_api.so` / `libvad_bin.so` | 566,964 / 59,028 | VAD（端点检测）接口 + 数据 | libc++_shared | 是 |
| `libwakeup_sync_api_S1L_S3.so` / `libwakeup_bin_S1L_S3.so` | 1,132,388 / 3,246,393 | 唤醒（KWS）算法 + 唤醒模型（S1L 就是本机型号） | — | 是 |
| `librecheck_api.so` / `librecheck_bin.so` | 923,480 / 932,613 | 识别结果复核/纠错（recheck） | — | 是 / 是 |
| `libsed_api.so` / `libsed_bin.so` | 566,964 / 89,747 | 声音事件检测（SED） | — | 是 |
| `libagaudio.so` | 34,376 | 采音/放音抽象（OpenSLES） | libOpenSLES, libagutils | 是 |
| `libunet.so` | 2,400,552 | 阿里网络栈（HTTP/DNS 封装） | — | **否** |
| `libagpal.so` | 54,912 | 平台抽象层（线程/锁/日志） | — | 是 |

`libsmartbox.so` 的 sha256 前缀 `f6e3c3543ff6da5b…` —— 与 T6 Hook 记录的模块指纹一致
（Hook 的 `TG_SYM_OFF 0x11353c` 就是本文件的 `SessionManager::onStream`）。

> 说明：`:core` 常驻判断来自一次 `/proc/8342/maps` 快照（空闲态）。
> **本地引擎三件套（libaceAsr / libmodel.bin / libconfigure.bin）零映射**，
> 而云端通道需要的 websockets / ssl / crypto / gcs / httpdns 全部命中 —— 这是本轮
> "本地还是云端"判断的核心证据，见 `02_callchain.md` §4 与 `03_feasibility.md` §3。

## 3. 运行配置（原厂 `shared_prefs/runtime.xml`，只读）

与语音直接相关的键（完整摘录见 `../evidence/t7_07_runtime_xml_asr.txt`）：

| 键 | 值 | 含义 |
|---|---|---|
| `devicesettingInfo::localASR` | **true** | 本地 ASR 开关 |
| `devicesettingInfo::asrOnGW` | **true** | ASR 走网关（云端）开关 |
| `devicesettingInfo::localASRPauseTime` | 150 | 本地判停（ms） |
| `devicesettingInfo::pauseTime` | 700 | 云端判停（ms） |
| `devicesettingInfo::localASRStopPolicy` / `ASRStopPolicy` | 3 / 2 | 两套停录策略 |
| `devicesettingInfo::localASREnergyThreshold` / `energyThreshold` | 60 / 90 | 两套能量门限 |
| `devicesettingInfo::localASREnergyContextCnt` / `energyContextCnt` | 2 / 2 | 上下文帧数 |
| `devicesettingInfo::localASREenergyJudgeTime` / `energyJudgeTime` | 1750 / 1950 | 能量判定时长（ms） |
| `devicesettingInfo::asrrecordtime` | 5 | 录音上限（s） |
| `devicesettingInfo::dualChannelForASR` | false | 双通道 ASR |
| `devicesettingInfo::speechUploadInterval` | 120 | 上传间隔 |

**两套参数（`localASR*` 与默认）同时存在**，正对应下面两条 ASR 通道。

## 4. 配置键（`libagspeech.so` 里的组件装配键）

`ALISpeechComponentManager` 用一组字符串键装配各组件，说明每个组件都是**可替换/可指定路径**的：

```
kSCKeyAceLib        kSCKeyAsrLib        kSCKeyAsrRes
kSCKeyNluLib        kSCKeySemRes
kSCKeyVadLib        kSCKeyVadRes
kSCKeyWakeupLib     kSCKeyWakeupRes
kSCKeyUnconvWakeupLib  kSCKeyUnconvWakeupRes
kSCKeyFarNearFieldType  kSCKeyDisalbeWakeup  kSCKeyRollback
```

对应 `ALISpeechComponentManager::{init,getVAD,getWakeupEngine,getLocalASR,getCloudASR,releaseLocalASR,deinit}`
（符号见 `../evidence/t7_07_symbols_asr.txt`）。也就是说：**"库路径 + 资源路径"是外部注入的**，
这对独立化方案很关键（见 `03_feasibility.md` §4）。

## 5. 明确"不存在"的东西

- 没有独立可执行的 ASR 服务进程 / 二进制；
- 没有 `libnls*.so`（阿里云 NLS SDK 的常规命名）；云端 ASR 是 `libsmartbox.so` 内部自带的
  WebSocket 客户端（端点 `wss://asr-aicloud.alibaba.com:443`）；
- 没有把模型单独放在 `/data` 或 `/vendor`（模型全部封装在 `lib*.bin.so` 与 apk assets 里）；
- APK 内没有 `classes.dex`（代码在 `oat/arm/smartapp.vdex`）。
