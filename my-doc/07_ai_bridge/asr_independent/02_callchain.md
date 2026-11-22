# 02 调用链：从唤醒到 Final，以及 T6 Hook 站在哪一层

本文所有环节都标注证据来源：`sym` = 反混淆符号（`../evidence/t7_07_symbols_asr.txt`）、
`str` = 字符串（`../evidence/t7_07_strings_hits.txt`）、`maps` = `/proc/8342/maps` 快照、
`cfg` = `runtime.xml`、`hook` = 我方 `android/hook_agent/libtg_hook.c` 源码与实测记录。

## 0. 全景

```
                ┌──────────────────── smartapp:core（单进程，87 线程）────────────────────┐
 麦克风 ──OpenSLES──▶ libagaudio (AGModuleFactory::createAGAudioRecord)
                                  │
                               PCM 帧
                                  │
                    ┌─────────────┴──────────────┐
                    │                            │
              libvad_api (ali_vad 线程)      唤醒引擎 libwakeup_sync_api_S1L_S3 (XEGNLocalEngine)
                    │                            │ handleWkuResult / pushWkuResult
                    │                            ▼
                    │                     SessionManager::onStartTalk(…)
                    │                            │
        ┌───────────┴────────────┐               │
        │                        │               │
  CloudASRManager         LocalASRManager        │
  start / feedCloudASRdata  start / feed         │
  startEncode/stopEncode    (TGEngineAdapter)    │
        │                        │               │
  libwebsockets + libssl         │ TGLEngine::FeedPCM / FeedFBank / BeamSearch
  libunet + libgcs + httpdns     │ (+ libmodel.bin.so / libconfigure.bin.so / asr_bg.zip)
        │                        │               │
  wss://asr-aicloud…:443    AGLocalASRResult     │
        │                        │               │
  handleCloudASRResult           │ onLocalASRResult
        └───────────┬────────────┘               │
                    ▼                            │
          AGSpeechEngine（结果汇聚）              │
                    │                            │
                    ▼                            ▼
     ★ SessionManager::onStream(sid, text, isFinished, isOffline, needNlp, …)  ← T6 Hook 在这里
                    │
        ┌───────────┴────────────┐
        ▼                        ▼
  NLU（onNlpResult / onPushResult）   EOUDetector / CloudASRManager::onEouEvent → stopListen
        │                        │
        ▼                        ▼
  技能 / 回答生成            录音结束（下一轮要重新唤醒）
        │
        ▼
  TtsManager::playTts → onTtsStart → AudioManager::playTTS → PlaybackService → PCM（TTS Guard 在这里）
```

## 1. 唤醒（KWS）

- 库：`libwakeup_sync_api_S1L_S3.so`（算法）+ `libwakeup_bin_S1L_S3.so`（模型），**两者都常驻**
  （`maps`）。`S1L` 与本机型号 `AILABS_S1L` 对应。
- 关键符号（`sym`）：`XEGNLocalEngine::{wakeupModelInit,feedWakeupEngine,handleWkuResult,pushWkuResult,wkuEvenProcess,setWakeupEngineListener}`、
  `XEGNWakeupEnv::{init,needASRVerify,processWakeupWords}`、`AGWakeupEngine::{isWakeupValid,workaroundForWakeupByTTS}`、
  `ALIUnconvWakeup::init`（非常规唤醒，线程 `ali_unconvWakeu` 常驻）。
- 唤醒成功后进入会话：`SessionManager::onStartTalk(int)` /
  `onStartTalk(InputDeviceType, InputDeviceType, _WakeUpInfo_*, _WakeUpEventRet_*)`（`sym`）。
- 配置：`wakeupStyleGlobal=opsSound`、`wakeupsound=true`、`lower_wake_threshold_switch=false`（`cfg`）。

## 2. 采音与 VAD

- 采音：`AGModuleFactory::createAGAudioRecord()`（`libagspeech`）+ `libagaudio.so`（`DT_NEEDED: libOpenSLES`）。
  线程 `UploadAudioThre`、`AudioTrack` 常驻（`ps -T`）。
- VAD：`libvad_api.so` + `libvad_bin.so`（线程 `ali_vad`）。回调链
  `CloudASRManager::onVadCheckPointerEvent(unsigned char*, int)`、`onVADStatusChange(int, AGVADStatus)`、
  `calculateVolume(const char*, int)`（`sym`）—— 说明**音量条与端点检测都挂在 ASR 管理器上**。
- 判停参数：云端 `pauseTime=700`、`energyJudgeTime=1950`、`energyThreshold=90`、`ASRStopPolicy=2`；
  本地 `localASRPauseTime=150`、`localASREnergyContextCnt=2`、`localASREenergyJudgeTime=1750`、
  `localASRStopPolicy=3`（`cfg`）。

## 3. 两条 ASR 通道

### 3.1 云端流式通道（当前常驻）

| 证据 | 内容 |
|---|---|
| `str` | `wss://asr-aicloud.alibaba.com:443` |
| `sym` | `CloudASRManager::{start,stop,stopListen,feedCloudASRdata,startEncode,stopEncode,sendAudioOneTime,handleCloudASRResult,isASR30,useASR30}` |
| `sym` | `EOUDetector::handleCloudASRResult(std::string const&)` —— **端点判定是拿云端结果算的** |
| `maps` | `libwebsockets.so`、`libssl.so`、`libcrypto.so`、`libnghttp2_ali.so`、`libgcs_ali.so`、`libhttpdns.so`、`libcurl.so` 全部常驻 |
| `cfg` | `asrOnGW=true` |

`start` 的签名里带 `AGEOUConfig`（`CloudASRManager::start(int, string const&, string const&, int, AGEOUConfig, bool)`），
说明 **EOU（end-of-utterance）策略随连接配置下发给服务端**，与本轮 Task D 的结论直接相关。

### 3.2 本地引擎通道（库在，当前未常驻）

| 证据 | 内容 |
|---|---|
| `sym` | `LocalASRManager::{init,start,feed,feedASRData,stop,stopListen,loadleLocalEngine,enableLocalEngine,localASREnabled,shouldEnableLocalASR,onLocalASRResult,onEouEvent,onVadCheckPointerEvent}` |
| `sym` | `TGEngineAdapter::{init,startLocalASR(AGLocalASRStartInfo const&),feedLocalASR,stopLocalASR,onLocalASRResult,setLocalASRListener}` |
| `sym` | `TGEngineAdapterHook::{onASRResult,onNLUResult,onVADStatus,onWakeupPCMData,onWakeupStatus}` |
| `sym` | `AILabs::TGLEngine::{InitBeamSearch,FeedPCM,FeedFBank}`、`BeamSearch::FeedBPE`、`DictHandler`、`AceLMHandler`、`AILabs::parm::xFBank`（MFCC/FBank 特征） |
| `dt_needed` | `libaceAsr.so → libace.so + **libaceNlu.so**`（纯计算，**不依赖任何网络库**）。这是**链接期依赖**：加载 libaceAsr 必须能解析 libaceNlu；但它**不代表识别流程必须执行原厂 NLU** —— 文本在 `onStream` 就已产出，`onNlpResult` 在其后 |
| 资源 | `libmodel.bin.so`(3.2 MB) / `libconfigure.bin.so`(836 KB) / `assets/asr_bg.zip` / `assets/fuzzylexicon.bin` |
| `cfg` | `localASR=true` |
| `maps` | `libaceAsr.so` / `libmodel.bin.so` / `libconfigure.bin.so` 在 `:core` 的**空闲态快照**里零映射（可能是按需加载，见 `03_feasibility.md` §3.2） |

结论：本地引擎**具备完整的本地解码能力**（特征提取 + beam search + LM + BPE 词表），
但**空闲态没有加载**；`LocalASRManager::loadleLocalEngine(bool)` + `shouldEnableLocalASR(const WakeupInfo&)`
说明它可以按唤醒信息（场景/网络/机型）**按需加载**。因此"空闲态零映射"**不能**得出"识别时不加载"。

## 4. 两路汇聚点：`SessionManager::onStream`

```
AliAiLabs::AGUI::SessionManager::onStream(int sid, char const* text,
                                          unsigned char isFinished,
                                          unsigned char isOffline,
                                          unsigned char needNlp,
                                          unsigned char ?)
```

- 符号：`_ZN9AliAiLabs4AGUI14SessionManager8onStreamEiPKchhhh`，`libsmartbox.so` 偏移 `0x11353c`
  （ARM，前两条指令 `E92D4FF0 / E28DB01C`，与 `hook` 源码注释一致）。
- **`isOffline` 这个参数说明结果层区分"本地结果 / 云端结果"**，两路文本都从这个回调流出
  （注意：参数存在 = 框架有这个维度；**不等于**我们已知它每次取什么值 —— 当前 Hook 没有记录它）。
- 由此回答问题"**T6 Hook 截获的是哪个层级**"：
  - 不是引擎内部（不是 `TGLEngine::FeedPCM`，也不是 WebSocket 解包）；
  - 不是 JNI/Java 层（`ASRClient` / `ASRManager` 那一层在 `smartapp` 主进程侧）；
  - **是 AGUI 会话层的 ASR 文本流**：`(session id, 文本, 是否最终, 是否离线, 是否需要 NLU)`。
  - 因此它**同时覆盖本地与云端两条通道**，且位于 NLU 之前 —— 这就是为什么我们只挂一个点就够，
    也是"换掉 NLU/CDM 不影响取文本"的原因。

## 5. NLU 与对话管理

- 云端/原厂：`SessionManager::{onNlpResult, onNlpResultEnd, onPushResult, onPushFilter, onSpecialNlpResult, onMmiEvent}`
  —— NLU 结果是**独立回调**，发生在本轮的 `onStartTalk → onStream → onNlpResult` 之后。
- 本地：`TGEngineAdapterHook::onNLUResult(AILabs::TGEngineNotification, std::string const&)`
  —— 本地引擎自带 NLU（`libaceNlu.so`），但那是**本地引擎内部**的旁路，不影响 `onStream` 已经拿到的文本。
- 结论：**ASR 产出 Final 不需要 NLU/CDM**；NLU 是 Final 的消费者，不是生产者。

## 6. TTS

- 原厂入口：`TtsManager::playTts(ITtsClient::_TtsInfo_ const*)` → `TtsManager::onTtsStart(int, TtsResponseInfo const*)`
  → `AudioManager::playTTS` → `PlaybackService`（`hook_tts` 源码注释里的实测链路）。
- TTS Guard 只挂这两个函数（`libtg_ttsguard.c`），不参与 ASR。

## 7. 停录与 EOU（连续对话的关口）

- `EOUDetector::handleCloudASRResult` → `CloudASRManager::onEouEvent(AGAIInfo, int)` → `stopListen(json*)`；
  本地侧对应 `LocalASRManager::onEouEvent` / `stopListen`（`sym`）。
- 我方现场记录（`t7_04_continuity_probe.logcat`）：`onCloudEOUEvent` 之后紧接着 `stopListenInternal`，
  且 `StopTalk` 的 `UpdateContext` 里带 `duplexDialogRenew: 0` —— 会话不会被续期。
  详见 `04_continuity.md`。

## 8. 一句话总结调用链

**唤醒（本地 KWS）→ 采音（OpenSLES）→ VAD（本地）→ ASR（本地引擎 或 云端 WSS，二选一/可切换）
→ 文本汇入 `SessionManager::onStream` → NLU → 回答 → TTS（原厂 TTS 或我方 TTS 执行器）。**

T6 Hook 钉在 "ASR → NLU" 这道门上，所以它既不依赖本地/云端的选择，也不依赖 NLU 的实现。
