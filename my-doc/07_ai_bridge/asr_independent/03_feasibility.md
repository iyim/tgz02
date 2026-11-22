# 03 独立化可行性报告

> 本轮**只读**：没有调用 `startTalk`、`startFullDuplexDialog`、`LocalASRManager::start` 等任何未知接口，
> 也没有做新的设备端 Hook 实验。下面的结论都由符号表、字符串、`DT_NEEDED`、`/proc` 映射与配置文件得出。

## 1. 结论表（先看这个）

| 问题 | 结论 | 主要证据 |
|---|---|---|
| 1. 原厂 ASR 的真实组成 | 两套引擎 + 一套工厂：`CloudASRManager`（WSS 云端）与 `LocalASRManager`→`TGEngineAdapter`→`AILabs::TGLEngine`（本地），由 `ALISpeechComponentManager` 按 `kSCKey*` 装配 | `01_components.md` §2/§4 |
| 2. 能否提取 SO 独立调用 | **能，但不是"拿来就能用"**：本地引擎是纯计算库（只依赖 libace/libaceNlu/libm/libdl/libc），可是需要模型/配置/词表资源与一组未知的配置结构 | `DT_NEEDED` 无网络库；`libmodel.bin.so` / `libconfigure.bin.so` / `assets/asr_bg.zip` / `fuzzylexicon.bin` |
| 3. 是否必须保留原厂 `:core` | **取文本不需要**（可以自己 dlopen 本地引擎）；**要复用唤醒 + VAD + 云端通道则需要**（它们由 `:core` 的 87 个线程与配置驱动） | `maps`；`ps -T` |
| 4. 是否必须保留原厂会话管理 | **要"免唤醒续听"就必须**；单纯识别一轮不需要 | `EOUDetector` / `onEouEvent` / `duplexDialogRenew=0`（`04_continuity.md`） |
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

**两套都实装了，当前设备上常驻的是云端通道。**

| 判据 | 观测 | 指向 |
|---|---|---|
| 云端端点字符串 | `libsmartbox.so` 内有 `wss://asr-aicloud.alibaba.com:443` | 云端存在 |
| 云端支撑库常驻 | `libwebsockets/libssl/libcrypto/libnghttp2_ali/libgcs_ali/libhttpdns/libcurl` 在 `:core` 里都有映射 | 云端在跑 |
| 本地引擎库常驻 | `libaceAsr.so` / `libmodel.bin.so` / `libconfigure.bin.so` 在 `:core` 里 **0 条映射** | 本地引擎当前没加载 |
| 本地引擎能力 | `AILabs::TGLEngine` + `BeamSearch::FeedBPE` + FBank/MFCC + `libaceNlu`，纯计算无网络依赖 | 本地能力是真的 |
| 配置开关 | `localASR=true` 且 `asrOnGW=true`（两个都开） | 允许双通道 |
| 加载策略 | `LocalASRManager::shouldEnableLocalASR(const WakeupInfo&)` + `loadleLocalEngine(bool)` | 按唤醒信息决定是否加载 |

严格表述：**"Final 文本由云端产生"这句话本轮没有直接证明**（需要一次真实识别时的 maps/netstat 对照，
本轮按约束没做）。可以确认的是：① 云端通道的全部支撑库常驻、端点字符串在；② 本地引擎三件套在空闲态
一条映射都没有；③ 框架同时保留两条通道，并在 `onStream` 的 `isOffline` 参数上区分它们。

要一次性钉死这一点，下一轮做这个只读观测即可（不改任何东西）：

```sh
# 说话前
su -c 'grep -E "libaceAsr|libmodel.bin" /proc/$(pidof com.alibaba.ailabs.genie.smartapp:core)/maps | wc -l'
su -c 'cat /proc/net/tcp6 | grep -c ":01BB"'          # 443 连接数
# 说一句话（用户自己说，我们不动设备）
# 识别结束后立刻重复上面两条，并抓 logcat -d -s AliAiLabs:V tgl:V
```

若识别瞬间 `libaceAsr` 出现映射 → 走了本地；若 443 连接建立且 maps 无变化 → 走了云端。

## 4. 能不能独立喂 PCM、自己开会话、拿到 Final？

**技术上可以，分三个层次，代价依次下降。**

### 4.1 直接调用本地引擎（最彻底，代价最高）

前置条件（全部已确认存在，但都用不了"直接"）：

| 需要 | 现状 |
|---|---|
| 引擎库 | `libaceAsr.so`（+ `libace.so`、`libaceNlu.so`），`system_file` 0644，SELinux 当前 **Permissive**，root 进程可 `dlopen` 绝对路径 |
| 模型 / 配置 | `libmodel.bin.so`、`libconfigure.bin.so`（用 .so 封装的裸数据），`assets/asr_bg.zip`、`assets/fuzzylexicon.bin` |
| 依赖库 | `libc++_shared.so`、`libagpal.so`（同目录） |
| 配置结构 | `AGSpeechConfig`、`AGLocalASRStartInfo`、`AGEOUConfig`、`AGLocalASRResult`、`AGLocalASRListener` —— **无符号定义、无头文件，需要逆向出字段布局** |
| 资源装配 | `kSCKeyAceLib / kSCKeyAsrLib / kSCKeyAsrRes` 的具体取值（当前由 Java 层或 smartbox 注入，本轮未定位到赋值点） |

未知量集中在 **结构体布局** 与 **资源键取值**。这两项都是"读代码能解、但要花时间"的活，不是不可解。

### 4.2 复用 `libagspeech.so` 的组件工厂（推荐的中路）

`ALISpeechComponentManager::init(AGSpeechConfig*)` + `getLocalASR()` + `LocalASRManager::start/feed`
比自己拼 `TGLEngine` 少走很多弯路（生命周期、内存池 `AGMemoryPool`、线程模型都由工厂管）。
仍然要喂一个 `AGSpeechConfig`，但只需要它里面的 `kSCKey*` 部分 —— 可以在运行时从
`ALISpeechComponentManager::init` 的调用点 dump 出来（在 `:core` 里下只读探针，属于下一轮的实验范畴）。

### 4.3 复用原厂会话层（最省事，也就是现状）

`SessionManager::onStartTalk` + `onStream`。文本直接到手，代价是必须让原厂把这一轮跑完
（含唤醒、VAD、EOU 停录）。

**可行性判断**：三条路都通，难度从左到右递减；风险从左到右同样递减。
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

## 6. 本轮不做的事（明确记录）

- 没有 `dlopen` 任何原厂库；
- 没有调用 `onStartTalk` / `onStopTalk` / `startFullDuplexDialog` / `LocalASRManager::start`；
- 没有 dump 任何结构体内存；
- 没有改 `runtime.xml`、`dialog.cfg`、唤醒/ASR 参数。
