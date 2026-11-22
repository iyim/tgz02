# 03 独立化可行性报告

> 本轮**只读**：没有调用 `startTalk`、`startFullDuplexDialog`、`LocalASRManager::start` 等任何未知接口，
> 也没有做新的设备端 Hook 实验。下面的结论都由符号表、字符串、`DT_NEEDED`、`/proc` 映射与配置文件得出。

## 1. 结论表（先看这个）

| 问题 | 结论 | 主要证据 |
|---|---|---|
| 1. 原厂 ASR 的真实组成 | 两套引擎 + 一套工厂：`CloudASRManager`（WSS 云端）与 `LocalASRManager`→`TGEngineAdapter`→`AILabs::TGLEngine`（本地），由 `ALISpeechComponentManager` 按 `kSCKey*` 装配 | `01_components.md` §2/§4 |
| 2. 能否提取 SO 独立调用 | **静态分析显示"具备可行性"，尚未验证"可以独立运行"**：本地引擎是纯计算库（动态依赖 `libace.so` / `libaceNlu.so` / libm / libdl / libc，无网络库），结构上具备被外部进程加载的条件；但"真的能跑起来并产出文本"**没有任何实测证据**（本轮禁止调用）。仍缺模型/配置/词表资源的装配方式与一组未知配置结构 | `DT_NEEDED`；`libmodel.bin.so` / `libconfigure.bin.so` / `assets/asr_bg.zip` / `fuzzylexicon.bin` |
| 3. 是否必须保留原厂 `:core` | **取文本很可能不需要**（前提是本地引擎能被独立加载并跑通——未验证）；**要复用唤醒 + VAD + 云端通道则需要**（它们由 `:core` 的线程与配置驱动） | `maps`；`ps -T` |
| 4. 是否必须保留原厂会话管理 | **"免唤醒续听"目前必须**（服务端 `duplexDialogRenew` 决定原厂会话是否续期）；**"单轮识别"不需要**。注意二者是两件事：引擎级会话（`LocalASRManager::start/feed`）与平台会话（`SessionManager` + EOU 裁决）不是同一层，见 §7 | `04_continuity.md` |
| 5. 能否保留原厂 ASR、替换原厂 NLU/CDM | **能，而且现在就是这么干的**：T6 Hook 钉在 `onStream`（ASR 之后、NLU 之前） | `02_callchain.md` §4/§5 |
| 6. 连续对话卡在哪一层 | 卡在**原厂会话续期**（服务端开关 `duplexDialogRenew`）+ EOU 停录，不在 Worker | `04_continuity.md` |
| 7. 死信 JSON | 已修，46 + 87 条断言 + 两组端到端全绿 | `05_dead_letter_fix.md` |
| 8. 本地/AI 分流是否受影响 | 未受影响：路由、放行标记、守卫、TTS 全部未改；只新增 `dead_letter.c/.h` 并改了死信一处实现 | 本轮 diff |

## 2. 完整调用链（初始化 → 会话 → 音频 → Final）

### 2.1 初始化

```
Java: com.alibaba.ailabs.genie.assistant.sdk.asr.ASRClient/ASRManager
  └─ JNI ─▶ libsmartbox.so:  AliAiLabs::AGUI 会话框架（SessionManager / GcsManager / ClientManager）
        └─▶ libagspeech.so:  AGSpeechModule::createSpeechComponentManager()
              └─▶ ALISpeechComponentManager::init(AGSpeechConfig*)
                    ├─ getWakeupEngine()   ← kSCKeyWakeupLib   / kSCKeyWakeupRes
                    ├─ getUnconvWakeup()   ← kSCKeyUnconvWakeupLib / Res
                    ├─ getVAD()            ← kSCKeyVadLib      / kSCKeyVadRes
                    ├─ getLocalASR()       ← kSCKeyAsrLib      / kSCKeyAsrRes (+ kSCKeyAceLib)
                    ├─ getCloudASR()       ← 无库依赖（WSS 在 libsmartbox 内）
                    └─ (NLU) kSCKeyNluLib  / kSCKeySemRes
```

### 2.2 会话

- 唤醒：`XEGNLocalEngine::handleWkuResult` → `AGWakeupEngine::isWakeupValid` →
  `SessionManager::onStartTalk(...)` → 分配 session id。
- 本地通道开会话：`LocalASRManager::start(std::string const&, int, std::string const&, int, AGEOUConfig, bool)`
  → `loadleLocalEngine(true)` → `TGEngineAdapter::startLocalASR(AGLocalASRStartInfo const&)`。
- 云端通道开会话：`CloudASRManager::start(int, std::string const&, std::string const&, int, AGEOUConfig, bool)`
  → `startEncode()` → WSS 连接 `asr-aicloud.alibaba.com:443`（appkey 由 `SessionManager::setOralAppkey(char*)` 给）。

### 2.3 输入音频

- 采音：`AGModuleFactory::createAGAudioRecord()`（OpenSLES，`libagaudio.so`）。
- 分发：
  - 云端：`CloudASRManager::feedCloudASRdata(const char*, int)`（+ `sendAudioOneTime()`、`stopEncode()`）；
  - 本地：`LocalASRManager::feed(const char*, int, bool, int, int)` → `TGEngineAdapter::feedLocalASR`
    → `AILabs::TGLEngine::FeedPCM(const char*, int)`（也可 `FeedFBank(const float*, int, bool)`）。
- VAD 并行：`CloudASRManager::onVadCheckPointerEvent(unsigned char*, int)` → `onVADStatusChange`。

### 2.4 返回 Final

```
本地：TGLEngine(BeamSearch) ─▶ AGLocalASRResult ─▶ TGEngineAdapter::onLocalASRResult
                                          └─▶ LocalASRManager::onLocalASRResult
云端：WSS 帧 ─▶ CloudASRManager::handleCloudASRResult(std::string const&)
                    └─▶ EOUDetector::handleCloudASRResult   （端点判定）
                                └─▶ CloudASRManager::onEouEvent → stopListen
两路 ─▶ AGSpeechEngine ─▶ ★ SessionManager::onStream(sid, text, isFinished, isOffline, needNlp, …)
```

## 3. 本地推理还是云端识别？

**结论：两套通道都实装且都"活着"；当前设备空闲态常驻的是云端通道的支撑库。
"某一次 Final 由哪条通道产生"本轮仍未确认（见 §3.2 的证据缺口）。**

### 3.1 已确认的事实

| 判据 | 观测 | 能推出什么 |
|---|---|---|
| 云端端点字符串 | `libsmartbox.so` 内有 `wss://asr-aicloud.alibaba.com:443` | 云端识别通道**存在** |
| 云端支撑库常驻 | `libwebsockets/libssl/libcrypto/libnghttp2_ali/libgcs_ali/libhttpdns/libcurl` 在 `:core` 里都有映射 | 云端通道**已装配**（不等于每次识别都走它） |
| 本地引擎库 | `libaceAsr.so` / `libmodel.bin.so` / `libconfigure.bin.so` **空闲态零映射** | 只能说明**空闲态没加载**；`LocalASRManager::loadleLocalEngine()` / `shouldEnableLocalASR()` 说明可以按需加载，因此**不能**据此断言识别时也没加载 |
| 本地引擎能力 | `AILabs::TGLEngine` + `BeamSearch::FeedBPE` + FBank/MFCC，另有独立的 `libaceNlu.so` | 本地**有**一套完整的解码能力（是否启用是另一回事） |
| 配置开关 | `localASR=true` 且 `asrOnGW=true`（两个都开） | 框架允许**两条通道并存** |
| `onStream` 签名 | `(…, u_char isFinished, u_char isOffline, u_char needNlp)` | 结果层**区分**本地/云端，但**当前 Hook 没有把 `isOffline` 记录下来** |

### 3.2 证据缺口（明确写出来）

1. 我方 Hook 只取 `text` 与 `isFinished`，事件里**没有** `is_offline` 字段
   （`work/events.jsonl` 实测字段清单里确实没有）；
2. 因此**现有历史事件无法统计本地/云端占比**；
3. 空闲态 maps 不能替代"识别瞬间的 maps"；
4. 443 连接数只能说明有 TLS 流量，**不能**证明那就是 ASR（同一个 uid 还有心跳/技能/日志上报）。

补这个缺口的办法两选一（都要下一轮批准）：
- **只读**：识别瞬间采样 `maps` + 网络计数 + 工厂 logcat（`asr_watch.sh` 就是干这个的）；
- **改 Hook**：在事件里加 `is_offline` 字段（本轮禁止部署新 Hook，不做）。

## 4. 能不能独立喂 PCM、自己开会话、拿到 Final？

**技术上可以，分三个层次，代价依次下降。**

### 4.1 直接调用本地引擎（最彻底，代价最高）

前置条件（都"存在"，但没有一项等于"已验证可独立运行"）：

| 需要 | 现状 |
|---|---|
| 引擎库 | `libaceAsr.so`，`system_file` 0644，SELinux 当前 **Permissive**，root 进程**理论上**可 `dlopen` 绝对路径（未实测） |
| 动态依赖 | `libaceAsr.so` 的 `DT_NEEDED` 明确包含 **`libaceNlu.so`** 与 `libace.so`（见 `../evidence/t7_07_dtneeded.txt`）。这是**链接期依赖**：加载 `libaceAsr.so` 就必须能解析 `libaceNlu.so`。**但它不代表识别流程必须执行原厂 NLU** —— 依赖一个库和调用它的 NLU 接口是两回事；现有证据（`onStream` 早于 `onNlpResult`）说明文本在 NLU 之前就已经产出 |
| 模型 / 配置 | `libmodel.bin.so`、`libconfigure.bin.so`（用 .so 封装的裸数据），`assets/asr_bg.zip`、`assets/fuzzylexicon.bin`。**它们的加载约定（谁读、什么格式、放哪）尚未确认** |
| 其它依赖库 | `libc++_shared.so`、`libagpal.so`（同目录） |
| 配置结构 | `AGSpeechConfig`、`AGLocalASRStartInfo`、`AGEOUConfig`、`AGLocalASRResult`、`AGLocalASRListener` —— **无符号定义、无头文件，需要逆向出字段布局** |
| 资源装配 | `kSCKeyAceLib / kSCKeyAsrLib / kSCKeyAsrRes` 的具体取值（本轮未定位到赋值点） |

未知量集中在 **结构体布局**、**资源键取值**、**模型加载约定** 三处。
结论口径：**这是"静态分析支持、工程上可尝试"的方向，不是"已经验证可以独立运行"**。
在没有一次成功的独立调用之前，任何"可以直接调用"的说法都只能算假设。

### 4.2 复用 `libagspeech.so` 的组件工厂（推荐的中路）

`ALISpeechComponentManager::init(AGSpeechConfig*)` + `getLocalASR()` + `LocalASRManager::start/feed`
比自己拼 `TGLEngine` 少走很多弯路（生命周期、内存池 `AGMemoryPool`、线程模型都由工厂管）。
仍然要喂一个 `AGSpeechConfig`，但只需要它里面的 `kSCKey*` 部分 —— 可以在运行时从
`ALISpeechComponentManager::init` 的调用点 dump 出来（在 `:core` 里下只读探针，属于下一轮的实验范畴）。

### 4.3 复用原厂会话层（最省事，也就是现状）

`SessionManager::onStartTalk` + `onStream`。文本直接到手，代价是必须让原厂把这一轮跑完
（含唤醒、VAD、EOU 停录）。

**可行性判断**：4.1 / 4.2 是"结构上成立、未经实测"的两条路；4.3 是本轮正在生产使用的路。
本轮不建议立刻做 4.1，因为它需要新的设备端实验（结构体 dump / dlopen 试验），与"保护现有链路"冲突。

## 5. 三个方案

### 方案 A：直接调用本地 ASR（离线自主）

| 项 | 内容 |
|---|---|
| 入口 | `dlopen("/system/app/smartapp/lib/arm/libaceAsr.so")` → `AILabs::TGLEngine::{InitBeamSearch,FeedPCM,FeedFBank}`；或先 `libagspeech.so` 的 `ALISpeechComponentManager` |
| 需要自己做 | 模型/配置加载、特征参数（FBank/MFCC）、词表与 LM、EOU、重采样（目标 16 kHz/16 bit/mono） |
| 收益 | 完全离线、可脱离原厂进程、可换语言模型 |
| 风险 | 结构体与资源键未知；一旦原厂算法库内部依赖 `libagpal` 的线程/内存池约定，容易踩坑；工作量最大（估算 3–5 个工作日的前期逆向 + 2 天联调） |
| 与现有链路关系 | 只替换"文本来源"，`onStream`→Worker 的下游完全不动 |

### 方案 B：保留原厂 ASR 服务，我们只做消费者（现状，最稳）

| 项 | 内容 |
|---|---|
| 入口 | T6 Hook：`SessionManager::onStream`（偏移 `0x11353c`） |
| 优点 | 已验证跑在真机上；本地/云端通道自动兼容；不需要任何结构体逆向 |
| 缺点 | 依赖 `:core` 存活与原厂整轮流程；ASR 参数、唤醒参数不能随意改 |
| 本轮建议 | **保持**。任何 ASR 独立化尝试都先在方案 B 上并行验证，成功再切 |

### 方案 C：保留最小原厂会话入口（折中，为连续对话铺路）

| 项 | 内容 |
|---|---|
| 入口 | `SessionManager::onStartTalk(int)` / `onStopTalk(int)` 打开/关闭一轮；文本仍从 `onStream` 拿；NLU 继续由我们接管（`native_route.public.json` 放行 + AI 走 Worker） |
| 关键区别 | 不再依赖"唤醒词"触发，而是由我们自己决定何时开一轮 —— 这正是"免唤醒续问"需要的能力 |
| 拦路石 | ① `onStartTalk` 之后的 EOU/停录仍由原厂 `EOUDetector` 决定；② 续期开关 `duplexDialogRenew` 来自服务端（`04_continuity.md`）；③ 上一轮实测 `startFullDuplexDialog` 的返回值被忽略，不能作为可靠入口 |
| 建议 | 先做**只读探针**：在 `onStartTalk` / `onStopTalk` / `onEouEvent` 上各加一个观测点，确认"谁在什么时候关麦"，再决定是否自己驱动 `LocalASRManager::start` 走方案 A 的 4.2 变体 |

## 6. 两件必须分开的事：单轮 ASR 独立化 ≠ 连续对话会话管理

这两件事经常被混成一句"能不能不用原厂"，但它们的依赖完全不同：

| 目标 | 依赖的层 | 是否能独立 | 当前证据 |
|---|---|---|---|
| **单轮**：给定一段 PCM → 得到文本 | 引擎层（`TGLEngine` 本地 / `CloudASRManager` 云端） | **结构上可以**（本地引擎无网络依赖、可用 dlopen 加载）；**尚未实测** | 静态分析（`02_callchain.md`、`../evidence/t7_07_*`） |
| **单轮**：喊唤醒词 → 说一句 → 得到文本 | 引擎层 **+** KWS（`libwakeup_*`）**+** VAD（`libvad_*`）**+** 会话开启（`SessionManager::onStartTalk`） | 需要原厂（方案 B）或自己重做前三层 | 真机已验证（生产中） |
| **多轮**：说完一句不喊唤醒词继续说 | 上面全部 **+** 平台会话续期（`duplexDialogRenew`、`EOUDetector`、`ContinuousDialogManager`） | **目前不能**（续期开关来自服务端） | `04_continuity.md` 现场日志 |

由此得到两条口径，写清楚免得被误读：

1. `duplexDialogRenew = 0` 证明的是**当前原厂平台会话没有续期**；
   它**不能**推出"引擎级会话永远无法独立维持录音"——引擎级（`LocalASRManager::start` + `feed`）
   是另一层的东西，只是本轮既没有验证它，也没有调用它。
2. 反过来，"本地引擎可以独立跑"（若将来验证成立）**也不等于**"连续对话就解决了"：
   录音什么时候停、下一句什么时候开始听，仍然由平台会话层裁决。

## 7. 本轮不做的事（明确记录）

- 没有 `dlopen` 任何原厂库；
- 没有调用 `onStartTalk` / `onStopTalk` / `startFullDuplexDialog` / `LocalASRManager::start`；
- 没有 dump 任何结构体内存；
- 没有改 `runtime.xml`、`dialog.cfg`、唤醒/ASR 参数。
