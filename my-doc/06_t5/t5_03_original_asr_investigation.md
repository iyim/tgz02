# T5-03 前置调查：TG-Z02（CCH / S1L）原厂 ASR 本地/云端执行路径确认

- 设备：`AILABS_S1L`，MT8167S / armv7 / Android 8.1（AliOS 6.1.8-RS-20221104.1459）
- 原厂应用：`com.alibaba.ailabs.genie.smartapp` 8.7.1.18（`/system/app/smartapp/smartapp.apk`），运行进程 `com.alibaba.ailabs.genie.smartapp:core`（PID 16091/16112）
- 仓库 main（调查开始时）：`b9f81c16f8018721eca459fd01c1b4ce59a47cc7`
- 调查时间：2026-11-20 09:41–10:10（CST）
- 本任务只调查，不新增功能、不改原厂 APK/SO/分区、不接入任何第三方 ASR。

---

## 0. 结论摘要

**判定：混合架构，具体形态是「本地唤醒 + 本地 VAD/端点检测 + 本地音频编码（speex/ogg）→ 云端 ASR → 云端 NLU」。用户可见的“任意中文语音转文字”完全由云端完成；本地 ASR 引擎（`libaceAsr.so` + `libmodel.bin.so`）确实随原厂发布，但这台 S1L 上从未被启用（`shouldEnableLocalASR` 恒为 false），因此不参与任何一次识别。**

即：不是 1（完全本地），不是 2（纯云端，因为唤醒/VAD/编码确实在本地），最接近 3，但不是“本地声学处理 + 云端识别”里的“本地声学特征”方案——设备上传的是**编解码后的音频码流（speex in ogg）**，声学模型推理在服务器侧。

证据强度的三条主线（细节见 §5–§9）：

| 结论 | 等级 | 关键证据 |
|---|---|---|
| 识别文字由服务器下发 | **已证实** | 设备日志：`CloudASRManager: start,120: real asr` → 本地编码 → websocket `AliGenie.Microphone/ListenStarted` (attachmentCount=1, codec=speex, container=ogg) → 服务器回 `AliGenie.Text/ListenResult`，`outputText` 增量序列 天猫 → 天猫精灵 → … → 天猫精灵现在几点了（`exp_a3_pipeline_events.txt`） |
| 音频确实上传 | **已证实** | 抓包：A3 单条 TLS 流 `192.168.1.9:47180 → 59.82.113.110:443` 上行 34,459 B；发送侧 `onData` 共 64 帧 / 27,908 B；服务器回传文本与电脑播放内容一致（“天猫精灵现在几点了”） |
| 唤醒在本地 | **已证实** | `XEGNLocalEngine [WAKEUP_ENGINE] xengine.cpp:769`，三次实验 conf 0.867 / 0.720 / 0.887，且断网时仍正常触发 |
| VAD/端点检测在本地 | **已证实** | `VadStateMachine` 能量/参考能量判定 + `CloudASRManager: stopListen` 由本地 EOU 触发（`local VAD frame_start/frame_end` 日志） |
| 本地 ASR 引擎存在但未启用 | **已证实** | 三次实验均 `LocalASRManager: shouldEnableLocalASR,167: can't enable local asr` + `AGSpeechEngine: startListenInternal,302: should not use local asr`；断网时同样如此；反汇编 `shouldEnableLocalASR` 显示需要 `[this+0x44]!=0 && [this+0x10]!=0`，本机 `[+0x10]`（本地引擎实例）为 NULL |
| 断网后完全无法识别 | **已证实** | B1：会话 43.66→49.68 无任何 `ListenResult` / `outputText` / TTS；抓包设备→WAN 字节数 **0** |
| 上传的是 speex/ogg 窄带/宽带码流，约 40 kbps | **强推断** | 协议字段 `"asr":{"wakeupWordAudioLength":6500,"codec":"speex","container":"ogg","channel":1}`、`"format":".ogg"`；实测 27,908 B / 5.3 s ≈ 42 kbps |
| 离线命令词（打开/关闭/localDialog）在本机不可用 | **强推断** | 代码与配置齐全（`speech_cfg_S1L.json` 的 `localDialog` 类型、`libaceAsr` 的 `localDialog`、`OfflineDecision` 的 localDialog/localIoT/localWifiControl 域），但本地 ASR 引擎未加载，故没有可执行载体；未逐条做“打开/关闭”真机验证 |

---

## 1. 架构图（本地 / 云端逐节点标注）

```
[本地] 麦克风（MT8167S codec，单麦阵列）
   │  PCM 采集：Java AudioRecord
   │    com.alibaba.ailabs.geniesdk.record.AudioRecordImp#read([BII)I
   │    → NativeAGRecordProducer → JNI → AGSpeechEngine::registerRecordDevice(_RecordDeviceInfo_, AGRecordEngine*, AGSpeechEngineListener*)
   │    证据：AudioRecordImp.smali（getAudioRecord/read/startRecording）、libsmartbox.so 符号 registerRecordDevice
   ▼
[本地] 唤醒引擎（常驻，一直在跑）
   │  XEGNLocalEngine / wku_eng（libwakeup_sync_api_S1L_S3.so + libwakeup_bin_S1L_S3.so + libace.so 的 TFLite 运行时）
   │  证据：`[WAKEUP_ENGINE] xengine.cpp:769: tian mao jing ling, 0.867198, …`；libace.so 导入 tflite/ruy 符号
   ▼
[本地] VAD / 端点检测（VadStateMachine，能量 + 参考能量 + 静音判据）
   │  证据：`VadStateMachine: handleSpeech,434: current energy … ref energy …`、`asr result is valid when silence, end when <frame>`
   ▼
[本地] 音频编码 + 会话上行（CloudASRManager）
   │  ASR 开始：`CloudASRManager: start,120: real asr`；`[FullLink]voice encode start` → `… done`（约 40–80 ms）
   │  编码格式：speex / ogg / 单声道；首包含唤醒词音频前缀 wakeupWordAudioLength=6500
   │  证据：`CloudASRManager: onData,476:send 453`、ListenStarted JSON 的 asr 段
   ▼
[云端] 网关长连接（GCS over TLS：websocket 或 H2）
   │  事件：`AliGenie.Microphone` / `Active` → `ListenStarted`(二进制附件) → `Inactive`
   │  主机：`safe-h2.g-aicloud.alibaba.com`、`pre%d-h2.g-aicloud.alibaba.com`、`gp%d.aicloud.alibaba.com`（libagmmi 字符串常量）
   │  实测：59.82.113.110:443（A3）、59.82.113.224:443（C1）
   ▼
[云端] ASR + NLU（服务器侧，设备只收到结果）
   │  中间结果：`AliGenie.Text/ListenResult` 的 `outputText` 逐字增长
   │  最终结果：`asrResult last text = 天猫精灵现在几点了`
   │  NLU 输出：`AliGenie.Speaker/Speak`（TTS 文本/音频）、`AliGenie.Screen/Render`（时间卡）
   ▼
[本地] 结果消费 / UI 展示 / 播放
   VadStateMachine.handleAsrResult(dirty, clean) → SessionDispatch → NativeUIManager.onRecordStart / GenieAssistantUIManager → 卡片渲染（Waft）

旁路（存在但**本机未启用**）：
[本地] LocalASRManager → AGSpeechEngine::enableLocalEngineInternal / loadLocalEngineInternal →
        libagspeech.so(AGSpeechModule) → TGEngine(libaceAsr.so: AM + LM + pinyin NLU, libmodel.bin.so) →
        TGEngineAdapter::onASRResult/onNLUResult → OfflineDecision（localDialog / localASR / localIoT / localWifiControl）
证据：符号表 + `shouldEnableLocalASR,167: can't enable local asr`（三次实验均出现）
```

---

## 2. Java/Smali 调用链

### 2.1 已知入口链的核实结果（与任务书一致，但**它不是音频通路**）

| 环节 | 文件 / 方法 | 作用 |
|---|---|---|
| `ASRManager`（SDK 侧） | `smali/com/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager.smali`：`getServerName()` 返回 `"com.alibaba.ailabs.genie.assistant.asr"`；`onGetCommu()` 先 `Router.getInstance(ctx,"com.alibaba.ailabs.genie.assistant.server")` 再 `getServer("com.alibaba.ailabs.genie.assistant.asr")`；`clientToAsr(int,Bundle)` 用 `callMethod(0x8, bundle)` 转发 | 跨进程取 ASR 服务 |
| `AsrSvr`（服务侧） | `smali_classes3/.../client/AsrSvr.smali`：`clientToAsr(ILandroid/os/Bundle;)` → `ClientManager.clientToAsr` | `IAliTVASR$Stub` 的薄壳（Binder 入口，行 34–53） |
| `ClientManager` | `smali_classes3/.../client/ClientManager.smali`：`clientToAsr` 按传输码 `0x2712/0x2713/0x2716` 分派；`getASRManager()` 返回 `AsrSvrEx`；`showASRUI/setResultMode/setServerMode/setEnable/stopTTS/registerCallback` 等 | 控制面 API（开关、UI、结果模式、回调注册），**不含音频** |
| `AsrSvrEx` | `smali_classes3/.../client/AsrSvrEx.smali`：`onCommu` 把 Bundle 解出后调用 `ClientManager.showASRUI / setResultMode / setServerMode …` | Bundle→方法 的命令分派器 |
| `AiLabsCore` | `smali_classes3/.../geniesdk/AiLabsCore.smali`：`native startTalk(int, WakeUpInfo)Z`（行 1160）、`native stopTalk(int, StopWakeInfo)V`（1169）、`native registerCallback(AsrClientInfo, NativeClientCallback)V`（865）、`native setAsrMode(String,int)`（1044）、`native showAsrUI(String,Z)V`（1145）、`native stopTts(I)V` | JNI 入口，直通 native `AliAiLabs::AGUI` 层 |

结论：**这条链是“应用/UI 控制面”，负责起停会话、切 UI、收回调、播 TTS；真正搬运音频、跑识别的是 native 层。** 运行时证据：三次实验里所有 ASR 事件（`CloudASRManager` / `VadStateMachine` / `AGSpeechEngine` / `GcsManager` / `Websocket-gateway`）都来自 native 代码（`*.cpp:函数:行号` 格式），且与上面的 Java 类无一条日志交叉。

### 2.2 音频采集侧（Java 确有参与，但只到 JNI 边界）

- `smali_classes3/com/alibaba/ailabs/geniesdk/record/AudioRecordImp.smali`：`constructor(int,int,int,int,int)`、`getAudioRecord(Z)Landroid/media/AudioRecord;`、`read([BII)I`、`startRecording/stopRecording/release`，日志格式 `"audioSource = …, sampleRateInHz = …, channel = …, audioFormat = …, bufferSizeInBytes = …"`。
- `smali_classes3/com/alibaba/ailabs/geniesdk/record/NativeAGRecordProducer.smali`、`NativeInputDevice.smali`：把上面读到的 PCM 交给 native。
- native 侧注册点：`AGSpeechEngine::registerRecordDevice(AliAiLabs::AGUI::IInputDeviceManager::_RecordDeviceInfo_ const&, AGRecordEngine*, AGSpeechEngineListener*)`（`libsmartbox.so`，0xd1930）。

### 2.3 与任务书“已知调用链”的关系

任务书给出的 `ASRClient → ASRManager → Binder → AsrSvr → ClientManager.clientToAsr()` 已逐级核对，全部存在于 smali 中（证据文件 `static_java_asr_chain.txt`）。但**它到 ClientManager 就结束了**：ClientManager 之后没有任何一路进入“收音频→启动识别→收回调”的原厂语音主干，主干在 native（§3）。因此“追踪到实际执行层”必须跨过 Java/native 边界。

---

## 3. Native 调用链（含符号与偏移）

### 3.1 组件—库对应（由 `readelf -d` 的 NEEDED 与字符串交叉确定）

| 库 | 角色 | 关键证据 |
|---|---|---|
| `libace.so` (1.65 MB) | Ace 推理运行时（TFLite + ruy + flatbuffers），导出 `AceInvoke/AceCompile/AceGetTensorByIndex/AceGetVersion/AceSetThreadPool` | dynsym；NEEDED 只有 libm/log/dl/c，**无网络依赖** |
| `libaceAsr.so` (493 KB) | 本地 ASR+NLU 引擎（`TGLEngine`）；源码路径字符串 `/Users/dinghuanghao/local-asr-engine/src/...` | 导出 `TGLEngine::InitModels/InitAmModel/InitLmModel/InitNluModel`、`TGEngine::start/stop/feedFbank/nluParse/getSyllableBuffer/loadResourceBin`、`AceAMHandler`、`AceLMHandler`、`AceNluHandler`、`DictHandler::InitPY2WordDict`、`NluInit/NluProcess/NluDestroy`；NEEDED = libace/libaceNlu/libm/dl/c，**无网络依赖** |
| `libaceNlu.so` (640 KB) | 本地 NLU 运行时 | 同上 |
| `libmodel.bin.so` (3.26 MB) | **模型容器**（不是代码库）：文件头 `18 00 00 00 54 46 4c 33` = TFLite `TFL3`；内含 `am_freeze.tflite`（声学模型）、`lm_model_vad.tflite`（VAD/端点语言模型）、`nlu_pinyin.tflite`（拼音槽位 NLU：`slots_category / slots_place / slots_range`）、`py2char_chn.txt_3000`（3000 字拼音→汉字表）、`model.cfg.json` | `static_local_model_markers.txt` |
| `libconfigure.bin.so` (836 KB) | **同样是 TFLite 模型容器**（`TFL3`，内含 `initial_p2 / final_c2 / final_output_softmax`、`TOCO Converted`）。虽然 `speech_cfg_S1L.json` 里键名是 `net_bin`，但内容与网络配置无关 | `static_local_engine_exports.txt` 末尾说明 |
| `libagspeech.so` (149 KB) | 本地语音模块（`AGSpeechModule`）：按配置 `dlopen` ace/asr/nlu/sem/wakeup/vad 库，导出 `TGEngineCreate/Destroy/LoadResourceBin/FeedPCMData/FeedASRData/Start/Stop/SetHook`、`TGEngineAdapter*`、`XEGNLocalEngine/XEGNWakeupEnv`、`vad_new/feed/stop/setting`、`AGModuleFactory::createAGSpeechSystemInfo`、`AGSpeechModule::createSpeechComponentManager` | `static_local_engine_exports.txt`；NEEDED = libagpal/librecheck/libc++/m/dl/c，**无网络依赖** |
| `libsmartbox.so` (2.05 MB) | 语音引擎编排（`agcore/ASE/engine/AGSpeechEngine.cpp`）：`AGSpeechEngine`、`CloudASRManager`、`LocalASRManager`、`VadStateMachine`、`AGSpeechEngineProxy` | `static_libsmartbox_asr_symbols.txt` |
| `libagmmi.so` (842 KB) | 云端 MMI 客户端：`GcsManager`、`ProtocolBuilder/Parser`、`SessionDispatch`、`UtManager`（`agcore/interaction_manager/gcs/*`、`session/OfflineDecision.cpp`） | `static_libagmmi_protocol_symbols.txt`、`static_protocol_tables.txt` |
| `libgcs_ali.so` (157 KB) | GCS 长连接通道（TLS） | `libagmmi.so` NEEDED 含 `libgcs_ali.so`、`libwebsockets.so`、`libssl/crypto`、`libnghttp2_ali`（H2） |

**关键反证**：`libaceAsr.so`、`libagspeech.so`、`libace.so`、`libaceNlu.so` 的动态依赖里**没有任何网络库**；反之 `libagmmi.so`/`libsmartbox.so` 才引入 websocket/H2/TLS/HTTPDNS。这与“本地识别 vs 云端识别”的分层完全吻合。

### 3.2 执行链（native，本机实际跑的就是这条）

```
AudioRecord(PCM, 16 kHz/16 bit/mono)
  → AGSpeechEngine::registerRecordDevice(...)                    0x0d1930
  → AGSpeechEngine::onGetAudioStream(unsigned char*, int)        0x0d6884
  → [本地] XEGNLocalEngine / wku_eng（libagspeech → libwakeup_sync_api_S1L_S3 + libace TFLite）
  → AGSpeechEngine::onSpeechWakeup / onWakeup                     （日志 onSpeechWakeup,530）
  → AGSpeechEngine::startListenInternal()                        0x0d1c00
        ├─ LocalASRManager::shouldEnableLocalASR(WakeupInfo)     0x0dc1c0  → 本机返回 0
        └─ CloudASRManager::start(int,string,string,int,AGEOUConfig*,bool)  0x0d91c4
              → CloudASRManager::startEncode()                   0x0d9710   （speex/ogg 编码线程）
              → CloudASRManager::onData(void const*, int)        （日志 onData,476，每帧 453 B）
                    → AGSpeechEngineProxy / MMI → GcsManager::send(int,_RequestCtx_*,int,int,cb)  0x07994c
                          → ProtocolBuilder::getMicActiveRequestCtx / getListenStartedRequestCtx  0x07d754 / 0x07d600
                          → libgcs_ali → websocket/H2 over TLS
[云端] → 服务器返回 AliGenie.Text/ListenResult(outputText) / AliGenie.Speaker/Speak / AliGenie.Screen/Render
  → ProtocolParser::onParser(int, json_object*)                 0x07dea0
  → VadStateMachine::handleAsrResult(...)                       （日志 dirty/clean）
  → AGSpeechEngine::onListenResult / handleListenResult          0x0d2b8c / 0x0d4e34
  → CloudASRManager::stopListen(json*)                          0x0d9d60
  → SessionDispatch / NativeUIManager / TtsManager
```

### 3.3 本地 ASR 为何在本机不可用（反汇编证据）

`LocalASRManager::shouldEnableLocalASR(WakeupInfo const&)` @ `0x0dc1c0`（ARM32，`static_libsmartbox_asr_symbols.txt` 同源）：

```
ldrb r0,[r0,#0x44]        ; 若 ==0 → 日志(行 171) "don't enable local asr"，返回 0
ldr  r0,[r4,#0x10]        ; 本地引擎实例指针
cmp  r0,#0                ; 若 ==0 → 日志(行 167) "can't enable local asr"，返回 0
                          ; 否则      日志(行 164) "enable local asr"，返回 1
strb r0,[r4,#0x45]        ; 记录结果
ldr  r1,[r5]              ; WakeupInfo.type
cmp  r1,#0 / cmpne r1,#12 ; 仅 active(0) 与 localDialog(12) 允许本地 ASR
                          ; 否则 日志(行 178) "should not use local asr"，清零
```

三次实验日志命中的都是**行 167**：即“开关位已为 1，但本地引擎实例指针为空”——本地 ASR 引擎对象从未被创建/加载。对应地，日志中从未出现 `load local ASR libary failed`（`libsmartbox.so` 里存在该文案），说明不是“加载失败”，而是**这台 S1L 的产品配置根本没有去加载它**。

`AGSpeechEngine::startListenInternal` 行 302 的 `should not use local asr` 是同一判定的下游分支，本机三次实验必然命中。

### 3.4 本地引擎“本可做什么”

- 唤醒词与本地对话词表：`assets/data/smartbox/alispeech/speech_cfg_S1L.json`
  `wakeup_words_info.global` = `你好天猫 / 天猫精灵`（active）、`打开 / 关闭`（**localDialog**）、`精灵退出 / 精灵暂停 / 声音大一点 / 声音小一点 / 下一首`（shortcut）。
- 本地模型是**受限任务**：`am_freeze.tflite` + `lm_model_vad.tflite` + `nlu_pinyin.tflite`（槽位只有 category/place/range）+ 3000 字拼音表。特征上更像“命令词/短句 + 槽位 NLU”，不是通用长句听写。
- `libagmmi.so` 的 `OfflineDecision`（`agcore/interaction_manager/session/OfflineDecision.cpp`）定义了一套“本地结果优先/超时兜底”的框架：`getConfidenceMin/Max`、`getCheckTimeOut`、`onLocalResult`、`onLocalParser`，域名表 `localDialog / localASR / localIoT / localWifiControl / iotOfflineCtrl`，并有日志文案 `no network, local dialog abandon`。**框架在，但本机没有启用本地引擎，所以从未被执行。**

---

## 4. 网络请求分析

### 4.1 协议与语义（来自 libagmmi 的字符串与常量表）

事件命名空间表（`.data.rel.ro`，`ProtocolBuilder::gNameSpace`，`static_protocol_tables.txt`）共 29 项，本次链路用到的是：

```
AliGenie.Microphone : Active / Inactive / ListenStarted / Recognize
AliGenie.Text       : ListenResult（ASR 中间/最终文本）
AliGenie.Speaker    : Speak（TTS）
AliGenie.Screen     : Render（卡片）/ ScreenJump
AliGenie.Result     : CommandIssued
```

传输：`websocket, url = %s, port = %d, useSsl = %d, ver = %s` 或 `H2, url = %s, port = %d, useSsl = %d`（`libagmmi` 字符串），网关主机常量：
`safe-h2.g-aicloud.alibaba.com`、`pre%d-h2.g-aicloud.alibaba.com`、`gp%d.aicloud.alibaba.com`、`gdev-aicloud…`、`gpretest-aicloud…`、`test1-h2/test2-h2.g-aicloud.alibaba.com`。
实测对端：`59.82.113.110:443`（A3）、`59.82.113.224:443`（C1）——同一 /24，按会话负载均衡。

### 4.2 请求内容（原始日志，A3 ListenStarted）

```
GcsManager: sending, requestId = 1970111, eventNs = AliGenie.Microphone, eventName = ListenStarted
Websocket-gateway: send text--0::{ "digest": "<redacted>", "timestamp": "…", "requestId": "<redacted>",
  "version": "3.0", "bizType": "AILABS", "bizGroup": "S1L", "uuid": "<redacted>",
  "eventNs": "AliGenie.Microphone", "eventName": "ListenStarted", "attachmentCount": 1,
  "format": ".ogg",
  "payload": { …, "asr": { "wakeupWordAudioLength": 6500, "codec": "speex", "container": "ogg", "channel": 1 },
               "voiceInfomation": "" } }
Websocket-gateway: MSG_TYPE_SEND_BIN_START:1970111     ← 二进制音频附件开始
```

会话结束时（A3）：

```
GcsManager: sending, eventNs = AliGenie.Microphone, eventName = Inactive
payload: { "reason": "normal", "speechLen": 5320, "wakeupType": "active" }
```

`attachmentCount: 1` + `MSG_TYPE_SEND_BIN_START` + `speechLen: 5320` 三者共同说明：**一次会话把「唤醒词 + 整段聆听窗口」的编码音频作为二进制附件流式上传**（speechLen 5320 ms 与实测会话时长一致）。

### 4.3 上传量与时序（A3，联网）

- 发送侧：`CloudASRManager: onData,476:send N` 共 **64 帧 / 27,908 B**（61×453 B + 108 + 98 + 69），09:57:52.309 → 09:57:57.853。
- 线上侧（tcpdump，wlan0，TCP payload）：`192.168.1.9:47180 → 59.82.113.110:443` = **34,459 B / 92 包**，反向 31,277 B。
  差值 ≈ TLS 记录头 + websocket 帧头 + Inactive 头；规模与发送侧吻合。
- 逐秒上行（含全部业务）：52 s 13,704 B、54 s 12,015 B、57 s 26,348 B、58 s 26,474 B；空闲基线 **149 B/s**（心跳 ping/pong）。
  同窗全部业务合计：设备→WAN **70,304 B / 45.7 s**，其中 ASR 会话那条流占 34,459 B（49%），其余为 TTS 请求、心跳、其它业务。
- 由此得：ASR 音频上行约 **27.9 KB / 5.3 s ≈ 42 kbps**（speex/ogg，未压缩 PCM 16 kHz/16 bit 会是 ~2 MB/5.3 s，可排除原始 PCM 上传）。

### 4.4 为什么能确认“这条流就是 ASR”

不是“设备有流量”的推断，而是三重闭合：
1. 时间窗：该流量的爆发段与 `CloudASRManager::onData` 的 64 帧、以及播放窗口逐一对应；
2. 内容：服务器回 `outputText` 的内容 = 电脑播放的音频内容（“天猫精灵现在几点了”）；
3. 反向：B1 断网时同一条链路上的设备→WAN 字节数为 **0**，会话无任何结果（§6）。

---

## 5. 实验 A：联网基线（tag `A3`）

- 采集：设备 09:57:45.57 → 09:58:32.47（`start.epoch/stop.epoch`），tcpdump 以 `-G 5` 轮转（5 个窗格），logcat 全 buffer。
- 播放（电脑 MediaPlayer，音量 1.0，`audio/` 目录内用户录音，唤醒词置首）：

| # | 文件 | 播放区间（PC 时钟） | 结果 |
|---|---|---|---|
| 1 | `唤醒词.m4a` | 09:57:50.714 → 09:57:52.186 | 触发唤醒 |
| 2 | `现在几点了.m4a` | 09:57:55.699 → 09:57:58.032 | 被同一会话识别 → “天猫精灵现在几点了” |
| 3 | `今天天气怎么样.m4a` | 09:58:04.040 → 09:58:06.397 | 无唤醒词 → 未产生会话（预期） |
| 4 | `现在进行第一轮语音测试，请保持环境安静.wav` | 09:58:14.406 → 09:58:20.231 | 无唤醒词 → 未产生会话（预期） |

时钟一致性自检：PC `done 唤醒词` = 09:57:52.186，设备 `[WAKEUP_ENGINE]` = 09:57:52.222 → 偏差 **36 ms**。

时间线（设备时钟）：

```
09:57:52.222  [WAKEUP_ENGINE] tian mao jing ling, 0.867198  (帧 9243→9274)
09:57:52.236  二次确认 0.873914
09:57:52.280  AGSpeechEngineProxy: onListenStarted
09:57:52.283  CloudASRManager: isASR30,385: use ASRXX     ← 选路：云 ASR
09:57:52.291  LocalASRManager: shouldEnableLocalASR,167: can't enable local asr    ← 本地 ASR 不启用
09:57:52.294  CloudASRManager: start,120: real asr
09:57:52.301  CloudASRManager: [FullLink]voice encode start
09:57:52.381  GcsManager: ListenStarted（attachmentCount=1, speex/ogg, wakeupWordAudioLength=6500）
09:57:52.383  voice encode start done（编码线程就绪，82 ms）
09:57:52.577  Performance: asr first text = 天猫          ← 首字，唤醒后 +355 ms
09:57:52.589  outputText = 天猫精灵
09:57:52.662  VadStateMachine.handleAsrResult,346: dirty=天猫        clean=<空>     ← 本地只做“去唤醒词”清洗
09:57:56.869  outputText = 天猫精灵现
09:57:56.870  handleAsrResult: dirty=天猫精灵现  clean=现
09:57:57.209  outputText = 天猫精灵现在
09:57:57.210  handleAsrResult,127: asr result is valid when silence, end when 4860   ← 本地 VAD 判端点
09:57:57.382  outputText = 天猫精灵现在几点
09:57:57.662  outputText = 天猫精灵现在几点了
09:57:57.846  CloudASRManager: stopListen,253           ← 本地 VAD 判端点后主动收尾
09:57:57.855  GcsManager: Inactive（speechLen=5320）
09:57:57.886  Performance: asr-asrResult last text = 天猫精灵现在几点了
09:57:58.168  AliGenie.Speaker/Speak（isLast=true）
09:57:58.170  TtsManager: onTtsStart, tts = 现在是上午九点五十七分。
09:57:58.268  AliGenie.Screen/Render（genie_voice_time 卡片，center=09:57）
```

延迟（同一会话）：

| 指标 | A3 | C1（复测） |
|---|---|---|
| 唤醒 → 编码就绪 | 161 ms | 102 ms |
| 唤醒 → 首个中间文本 | **355 ms** | **309 ms** |
| 唤醒 → 最终文本 | 5,664 ms（含 3.5 s 播放间隙与整段说话时长） | 5,674 ms |
| 最终文本 → TTS 文本到达 | 284 ms | 281 ms |

注意：`asr first text` 得到的是**唤醒词本身**（天猫/天天），因为上传音频从唤醒词开始（`wakeupWordAudioLength=6500`）。这恰好也是“文本来自服务器”的直接证据：设备在 355 ms 内没有任何本地识别结果可产生（本地引擎未启用）。

---

## 6. 实验 B：断外网、保留局域网（tag `B1`）

阻断方式（可逆、仅本机、不动路由器、不动 Wi-Fi 配置）：

```
# 设备侧，root
iptables-save > /data/local/tmp/t503/ipt_before.txt
iptables -I OUTPUT 1 ! -d 192.168.0.0/16 -j DROP
# 验证：shell curl http://www.baidu.com → 超时；ping 192.168.1.5（PC）正常；adb 正常
# 实验结束立即：
iptables -D OUTPUT 1
iptables-save > /data/local/tmp/t503/ipt_after.txt
```

- 规则存在时间：10:00:0x → 10:01:17（约 75 s）；`ipt_before` 与 `ipt_after` 规则集合完全一致（仅计数器差异，`open_before/after` 152 行；`during` 153 行，多出的正是那条 DROP）。
- 恢复校验：`curl http://www.baidu.com → code=200`（10:01:17）。

结果：

```
10:00:43.603  [WAKEUP_ENGINE] tian mao jing ling, 0.720266      ← 本地唤醒正常（断网不影响）
10:00:43.664  AGSpeechEngine: onListenStarted,1202: useASR30=0
10:00:43.684  LocalASRManager: shouldEnableLocalASR,167: can't enable local asr   ← 断网也不启用本地 ASR
10:00:43.685  CloudASRManager: start,120: real asr              ← 断网仍走云端路径
10:00:43.685  [FullLink]voice encode start
10:00:43.810  GcsManager: ListenStarted（照常构造并尝试发送）
10:00:43.816  voice encode done；onData 共 67 帧 / 29,480 B（继续在本地编码）
10:00:45.496  Websocket-gateway: LWS_CALLBACK_TIMEOUT_ERROR:17
10:00:46.503  close or destroy error, reason:30, errStr = timed out on 17
10:00:46.672  GateWay.cpp:hasNetwork:334: hasNetwork:1           ← 只判“有网卡”，不判可达
10:00:49.683  AGSpeechEngine: onListenStopped,1225              ← 会话结束
              （无 ListenResult / 无 outputText / 无 TTS / 无 NLU）
```

抓包（同期 23.4 s）：

```
TOTAL device->WAN payload: 0 B
（只有 LAN：adb 5555、mDNS 192.168.1.5→192.168.1.255:8181、DNS→192.168.1.1:53）
```

结论（本实验能证明与不能证明的）：

- 能证明：**本地唤醒、本地 VAD、本地编码在断网时全部照常工作**；`speex` 编码出的 29,480 B 在 `OUTPUT` 链被丢弃，**没有任何字节到达 WAN**；没有识别结果、没有文字、没有 TTS。因此“断网后无法识别”不是鉴权/会话初始化问题，而是**识别本体在云端**。
- 不能证明：`hasNetwork:1` 说明设备网络状态机仍认为在线，这会让“离线兜底”逻辑永远不被触发（`no network, local dialog abandon` 这类分支根本没有机会执行）——这点会影响“断网时离线命令词是否会接管”的判定，属于 §9 的遗留问题。

---

## 7. 实验 C：恢复联网复测（tag `C1`）

- 播放：`唤醒词.m4a` 10:02:23.010→10:02:24.707；`今天天气怎么样.m4a` 10:02:28.223→10:02:30.607。
- 时钟自检：PC 10:02:24.707 vs 设备 10:02:24.741 → 偏差 34 ms。

```
10:02:24.741  [WAKEUP_ENGINE] tian mao jing ling, 0.887292
10:02:24.806  LocalASRManager: can't enable local asr
10:02:24.806  CloudASRManager: start,120: real asr
10:02:24.807  voice encode start → 10:02:24.843 done
10:02:25.050  asr first text = 天天                    ← 唤醒后 +309 ms
10:02:30.382  CloudASRManager: stopListen,253
10:02:30.415  asr-asrResult last text = 天猫精灵今天天气怎么样
10:02:30.696  TtsManager: onTtsStart, tts = 今天昌平区多云转晴，-2度到8度，空气质量指数22优，现在晴。
```

抓包：

```
192.168.1.9:33444 → 59.82.113.224:443 : 上行 34,385 B（会话 02:02:22.49→02:02:30.91 UTC）
反向大包（TTS 音频）：02:02:30 单秒 78,201 B
TOTAL device->WAN payload: 81,055 B（含 TTS 请求/心跳/其它业务）
```

→ 原厂功能（唤醒→识别→NLU→TTS→卡片）完全恢复；与 A3 的差异仅在网关 IP 与播报内容。

---

## 8. 证据清单（全部在 `my-doc/06_t5/evidence_t503/`）

| 文件 | 内容 |
|---|---|
| `exp_a3_pipeline_events.txt` | 实验 A 全量事件行（唤醒/会话/编码/逐帧/协议 JSON/ASR 文本/TTS/渲染），已脱敏 uuid/logId/requestId/digest |
| `exp_b1_pipeline_events.txt` | 实验 B 全量事件行（含 websocket 超时、重连、无结果） |
| `exp_c1_pipeline_events.txt` | 实验 C 全量事件行 |
| `exp_a_play_log_A3.txt` / `exp_b_play_log_B1.txt` / `exp_c_play_log_C1.txt` | 电脑端播放编排与毫秒级打点（文件名、时长、开始/结束时刻） |
| `exp_a_pcap_flows_A3.txt` | A3 抓包：top flows + 逐秒 payload + 设备→WAN 合计 |
| `exp_b_pcap_flows_B1.txt` | B1 抓包：设备→WAN = 0 B |
| `exp_c_pcap_flows_C1.txt` | C1 抓包：上行 34,385 B + TTS 下行峰值 |
| `static_libsmartbox_asr_symbols.txt` | `AGSpeechEngine` / `CloudASRManager` / `LocalASRManager` / `VadStateMachine` 全部导出符号（含地址与大小） |
| `static_libagmmi_protocol_symbols.txt` | `ProtocolBuilder/Parser`、`GcsManager`、`SessionDispatch`、`UtManager`、`OfflineDecision`、`MultiModal*` 符号 |
| `static_local_engine_exports.txt` | `libagspeech.so`/`libaceAsr.so` 本地引擎导出符号 + 源码路径/模型名字符串 + `libconfigure.bin.so` 属 TFLite 模型的说明 |
| `static_local_model_markers.txt` | `libmodel.bin.so` 内 TFLite 子模型与槽位名（am_freeze / lm_model_vad / nlu_pinyin / py2char_chn.txt_3000） |
| `static_protocol_tables.txt` | `.data.rel.ro` 里的命名空间/命令/事件/唤醒类型表（`AliGenie.Microphone`、`Recognize`、`LocalDialog=12` 等） |
| `static_java_asr_chain.txt` | `ASRManager` / `AsrSvr` / `ClientManager.clientToAsr` 的 smali 原文摘录 |
| `static_needed_map.txt` | 全部 81 个 native 库的 NEEDED 依赖图（用于证明本地引擎无网络依赖） |
| `scripts/cap_start.sh`、`cap_stop.sh` | 设备侧采集脚本（tcpdump `-G` 轮转 + logcat） |
| `scripts/t502_play.ps1` | 电脑端播放编排器（复用 T5-02 版本，只播放与打点） |
| `scripts/analyze2.py` | pcap 解析/聚合（无第三方依赖） |
| `scripts/extract_events.py` | logcat 过滤与脱敏（`<redacted>`/`<hexid>`） |
| `scripts/read_tables.py` | ELF `.data.rel.ro` 常量表读取（协议表来源） |

**未入库的原始数据**（体积与设备标识原因，保留在本地分析目录）：
`_analysis/t503/cap_A3/cap_A3/logcat.txt`（2.36 MB）、`cap_B1/...`（1.66 MB）、`cap_C1/...`（4.94 MB）及对应 `*.pcap`（10 个轮转片，A3 合计约 60 KB）。

---

## 9. 判断：本地 / 云端 / 混合

**结论类型：混合，且“识别”这一环完全在云端。**

```
麦克风 → PCM采集 → VAD → ASR → 文字结果 → NLU
 本地     本地     本地   云端    云端       云端
```

逐节点证据：

| 节点 | 位置 | 直接证据 |
|---|---|---|
| 麦克风 + PCM 采集 | 本地 | `AudioRecordImp#read` + `AGSpeechEngine::registerRecordDevice`；`NativeUIManager.onRecordStart` |
| VAD / 端点 | 本地 | `VadStateMachine` 能量与参考能量判据；`CloudASRManager: stopListen` 由本地判定触发 |
| 音频编码 | 本地 | `CloudASRManager::startEncode` / `[FullLink]voice encode start done`；协议 `codec=speex, container=ogg` |
| **ASR** | **云端** | `CloudASRManager: start,120: real asr` → websocket 二进制附件上行 27.9 KB → 服务器回 `AliGenie.Text/ListenResult.outputText`（增量 天猫→…→天猫精灵现在几点了）；断网即无任何文本 |
| 文字结果 | 云端 | `Performance: asr first text / asrResult last text` 均来自 `ProtocolParser` 解析的服务器响应；本地只做“去唤醒词”清洗（`handleAsrResult,346: dirty=天猫精灵现在几点, clean=现在几点`） |
| NLU | 云端 | 同一次响应里的 `AliGenie.Speaker/Speak`（TTS 文本）+ `AliGenie.Screen/Render`（卡片数据） |
| 本地 ASR / 本地 NLU | **存在但未启用** | `shouldEnableLocalASR,167`（三次实验）+ 反汇编判据 `[this+0x10]==NULL` |

补充判定（针对任务书的五个选项）：

1. 完全本地 ASR —— 否（断网必失能，且文本来自服务器响应）。
2. 完全云端 ASR —— 否（唤醒、VAD、编码确实本地，且没有云端供声学模型使用的“特征上传”，上传的是成品码流）。
3. 本地声学处理 + 云端识别 —— **最接近，但需修正措辞**：本地做的是**唤醒/VAD + 音频编码**，不是声学特征提取；识别（声学+语言模型）在云端。
4. 本地离线命令识别 + 云端通用 ASR —— **代码与配置层面成立，但本机不成立**：本地引擎随机型发布却未被加载，因此“离线命令识别”在这台 S1L 上是死的。
5. 其他 —— 无。

---

## 10. 可信度、局限与遗留问题

### 10.1 已证实 / 强推断 / 未确认

- **已证实**（直接代码或真机日志/抓包闭环）：见 §0 表格中标注“已证实”的 6 项；每条都在 §5–§8 给出时间戳与文件位置。
- **强推断**：speex/ogg 采样率与码率（协议只给出 codec/container/channel，未给 rate；码率由字节数/时长反推）；本地离线命令词在本机彻底不可用（判据成立但未逐条试“打开/关闭”）；`libconfigure.bin.so` 为 TFLite 前端模型（键名 `net_bin` 与内容不符，仅凭文件头与内部张量名判定）。
- **未确认**：
  1. 服务器侧 ASR 引擎/模型、是否做端到端流式（设备侧只能看到 `outputText` 增量返回）；
  2. `asr` 事件里 `wakeupWordAudioLength=6500` 的单位（字节还是采样点数）——按 5.3 s 会话与 27.9 KB 推断更像**编码后字节**，但未验证；
  3. 若强制离线（例如让 `hasNetwork` 变为 0 或显式打开本地引擎开关），`OfflineDecision` 与 `localDialog` 是否会接管——本轮不允许改原厂配置，故未测；
  4. 网关域名到 IP 的解析路径（`libhttpdns.so` + `g-aicloud.alibaba.com` 家族）未做逐域名抓包，只记录了实际连接的对端 IP。

### 10.2 实验局限（必须如实记录，不算通过）

1. **采集工具坑**：本机 tcpdump 4.9.0 在 `-w <file>` / `-w -` 模式下只在进程正常退出时 flush，被 `kill` 收尾会得到 24 字节的空 pcap。作废的两轮：A1（播放器进程未执行，`pwsh` 不在 PATH，采集窗只有 3 s）、A2（播放正常但 pcap 未落盘）。最终改为 `-G 5` 轮转（每片关闭即落盘），报告中所有抓包数据均来自轮转片。
2. **A3 只产生 1 次会话**：播放序列里只有第 1 段含唤醒词，第 3、4 段是“无唤醒词的裸语句”，因此没有会话是预期行为，不构成“识别失败”。要测“长句识别”，必须先播唤醒词再紧接长句。
3. **播放链路精度**：电脑 MediaPlayer 的 `done` 时刻比音频内容结束晚约 150–250 ms（脚本内有 150 ms 尾延迟），因此本文所有“播放区间”与设备事件的对照存在 ±0.2 s 量级不确定性；结论只用毫秒级设备内时间戳（同进程 monotonic 日志）。
4. **B1 的可达性判定缺陷**：设备 `hasNetwork` 仍为 1，`CheckSendListenStarted` 仍会尝试发送——这说明原厂“离线兜底”不会被网络状态触发，只能被 `shouldEnableLocalASR` 触发（而它为假）。
5. **未做**：真人近场录音（本轮沿用 T5-02 的电脑播放口径）、多轮对话、连续唤醒、音量/远场矩阵。

### 10.3 对原厂状态的影响

- 全程未改原厂 APK / native 库 / system / boot / 原厂配置；未清理原厂数据；未杀原厂进程。
- 唯一系统级改动是**临时 iptables DROP 规则（约 75 s）**，已删除并与实验前快照逐条比对一致（`ipt_before.txt` 152 行 = `ipt_after.txt` 152 行）。
- 设备侧新增文件仅在 `/data/local/tmp/t503/`（脚本、pcap、logcat）。
- 实验后核对：`com.alibaba.ailabs.genie.smartapp:core` 存活（PID 16112 全程未变），恢复联网后 C1 实验功能正常。

---

## 11. 对 T5 后续的架构含义（只列事实约束，不替下游做选型）

以下全部由本轮证据直接推出，不含方案决定：

1. **原厂不提供可复用的本地识别能力（本机）**：`libaceAsr.so` + `libmodel.bin.so` 虽然存在，但 `shouldEnableLocalASR` 恒为假，本地引擎实例从未创建。任何“沿用原厂本地 ASR”的设想，在这台 S1L 上缺少运行载体；要启用它需要改原厂配置/加载流程（本轮明令禁止）。
2. **原厂真正在跑的链路是“本地唤醒/端点 + 云端识别”**：T3/T4 已经从这条链路的麦克风侧取到 PCM（16 kHz/16 bit/mono），T5 的输入是“已端点化的整段语音”，与原厂送给云端的音频粒度一致（原厂按 5.32 s 级别整段上传）。
3. **云端交互的语音是压缩码流**：原厂在设备侧做 speex/ogg 编码，实测 ~42 kbps；这意味着**若要评估任何“云端 ASR”路线，带宽量级应以 tens of kbps 计**，而不是 256 kbps 的原始 PCM。
4. **首字延迟基准**：原厂“唤醒→首个中间文本”为 **309–355 ms**（含本地编码 40–80 ms 与一次 RTT）。这是 T5 将来比较任何 ASR 路径时的现成基线。
5. **断网行为基准**：原厂断外网时唤醒仍可用、但**完全无文字**，且不会退化为离线命令（因为本地引擎未加载、`hasNetwork` 仍为真）。T5 若要求“断网可用”，必须自行解决，无法依赖原厂。
6. **不要按库名/键名推断功能**：`speech_cfg_S1L.json` 的 `net_bin` 指向的 `libconfigure.bin.so` 实际是 TFLite 模型；`libaceAsr.so` 名字像“ASR 库”但在这台机器上是死代码。这正是本轮要求“用代码与真机证据、不用命名推断”的原因。

---

## 附录：可复现步骤

```bash
# 0) 设备侧准备（root）
adb push scripts/cap_start.sh /data/local/tmp/t503/
adb push scripts/cap_stop.sh  /data/local/tmp/t503/
adb shell su -c 'chmod 755 /data/local/tmp/t503/*.sh'

# 1) 实验 A（联网）
adb shell su -c 'sh /data/local/tmp/t503/cap_start.sh A3'
pwsh -STA -File scripts/t502_play.ps1 -Plan "audio\唤醒词.m4a:3500,audio\现在几点了.m4a:6000,audio\今天天气怎么样.m4a:8000" -Volume 1.0 -LogFile exp_a_play_log.txt
adb shell su -c 'sh /data/local/tmp/t503/cap_stop.sh A3'

# 2) 实验 B（断外网，保留 LAN/ADB；结束立刻恢复）
adb shell su -c 'iptables-save > /data/local/tmp/t503/ipt_before.txt'
adb shell su -c 'iptables -I OUTPUT 1 ! -d 192.168.0.0/16 -j DROP'
adb shell su -c 'sh /data/local/tmp/t503/cap_start.sh B1'
pwsh -STA -File scripts/t502_play.ps1 -Plan "audio\唤醒词.m4a:3500,audio\现在几点了.m4a:8000" -Volume 1.0 -LogFile exp_b_play_log.txt
adb shell su -c 'sh /data/local/tmp/t503/cap_stop.sh B1'
adb shell su -c 'iptables -D OUTPUT 1'
adb shell su -c 'iptables-save > /data/local/tmp/t503/ipt_after.txt'
adb shell 'curl -sS -m 8 -o /dev/null -w "%{http_code}\n" http://www.baidu.com'   # 期望 200

# 3) 实验 C（恢复联网复测）：同实验 A 的步骤，tag 改 C1

# 4) 证据整理
python scripts/extract_events.py     # 生成已脱敏事件行
python scripts/analyze2.py <capdir> <TAG>-   # pcap 流/逐秒/上行合计
```

---

*本报告只做调查与记录；ASR Provider 的最终技术判断留给审查方。*
