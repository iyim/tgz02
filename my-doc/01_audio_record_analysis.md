# TG-Z02（CCH）原厂麦克风录音链路分析报告 v2

设备：天猫精灵 TG-Z02（CCH，电信版）· Android 8.1 / API 27 · MT8167S · ARM 32 位
对象：`com.alibaba.ailabs.genie.smartapp`（smartapp.apk，DEX 由 VDEX 恢复）
方法：纯静态（smali + native ELF/ARM 反汇编 + vtable/重定位重建）· **未修改任何文件**
置信标记：**【已确认】**=指令/代码直接证据　**【推断】**=多段证据交叉　**【待验证】**=需真机

> v2 相比 v1 的实质变化：v1 停在"谁启动 AGRecordEngineForPull"；本轮用 JNI 入口反查 + PLT 交叉引用 + vtable 重定位重建，
> 打通了 `AiLabsCore_init → 平台分支 → SpeechSALAdapter::createRecordEngine → NativeAudioEngine → 模块工厂 → OpenSL ES` 全链，
> 并证明 **`AGRecordEngineForPull` 在本机是未被使用的实现**（其 vtable 在整个 APK 中零字面量引用）。

---

## 1. 核心结论

1. **原厂没有使用 Java `AudioRecord` 采集。** 全 APK 仅两处 `new AudioRecord`：`AudioRecordImp`（geniesdk 录音抽象）与
   `BlowSensor`（H5 吹气传感器，与语音无关）。而 `AudioRecordImp` 与其唯一使用者 `RecordDevice` **零实例化**，
   `NativeInputDevice.onFeed` / `NativeAGRecordProducer.feed` **零调用者**，`AiLabsCore.registerInputDevice` /
   `registerRecordInputDevice` **零调用者** → Java 采集通路是 JNI 能力保留，未启用。【已确认】

2. **真实采集后端是 OpenSL ES，唯一实现在 `libagaudio.so`：`OpenSLESAudioRecord`。**
   包内所有 .so 中只有 `libagaudio.so` / `libagaudio_system.so` 含 `slCreateEngine`、
   `SL_IID_ANDROIDSIMPLEBUFFERQUEUE`、`libOpenSLES`。【已确认】

3. **录音引擎在本机是 `NativeAudioEngine`（libsaladapter.so），不是 `AGRecordEngineForPull`。
   ** 证据：`_ZTV21AGRecordEngineForPull` 在 libsmartbox.so 内**零字面量引用**（本工具全函数扫描）；
   而 `Java_..._AiLabsCore_init` 明确调用 `SpeechSALAdapter::createRecordEngine()`，
   该函数 `new(0x14)` 构造 `NativeAudioEngine` 并存入适配器字段，随后把引擎指针交给
   `GenieApi::registerRecordDevice(_RecordDeviceInfo const&, AGRecordEngine*)`。【已确认】

4. **走哪条录音路径由系统属性 `ro.board.platform` 决定**（`Java_..._AiLabsCore_init` 内
   `__system_property_get("ro.board.platform")` + `memcmp(buf,"mt8168",7)`）：
   - `== "mt8168"` → 走 DSP 分支：`dlopen("/system/lib/libtg_speech_msg.so")`、
     `dlsym("agInterUnitCommunicationInit")`、`GenieApi::registerDSPDevice(...)`；
   - `!= "mt8168"`（**本机 MT8167S 走这条**）→ `SpeechSALAdapter::createRecordEngine()` +
     `GenieApi::registerRecordDevice(...)`。

   日志串分别是 `"run with tiny ase support"` / `"run without tiny ase support"`。【已确认】

5. **PCM 的持续拉取在 `NativeAudioEngine::threadLoop`**：先 `nice(-15)` 提线程优先级（`mvn r0,#0xe`）再进入循环，
   每轮调 `recorder->vtable[+0x2c](&ptr, 0)` 取一块数据；返回值 `< 1` 时 `usleep(16000)`（16 ms）后重试；
   取到则回调 `listener->vtable[+0x08](ptr, len)`（即 `onRecordData`）。【已确认（指令级）】

6. **采样率/声道/位深不硬编码**，来自 AG 音频配置键 `sample_rate / channel_num / frame_per_buf / pcm_format / inputsource`，
   配置目录 `/data/smartbox/`、`/usr/lib/smartbox/`，模块表 `3rd_so_config.json`；这些不在 system.bin → **具体数值需真机读取**。【待验证】

---

## 2. 类和方法清单

### 2.1 Java 层（smali）

| 类名 | 方法名 | 作用 | 文件路径（行号） |
|---|---|---|---|
| `AudioRecordImp` | `<init>(IIIII)` | 保存 (sampleRate, channel, bufferSize, audioFormat, audioSource) | `system/app/smartapp/smartapp_decompiled/smali_classes3/com/alibaba/ailabs/geniesdk/record/AudioRecordImp.smali:28` |
| `AudioRecordImp` | `getAudioRecord(Z)` | **Java 唯一 `new AudioRecord` 处** | 同上 `:83`（`:94-108`） |
| `AudioRecordImp` | `read([BII)` / `startRecording()` / `stopRecording()` / `release()` | 反射式转发到 AudioRecord | 同上 `:180` / `:229` / `:245` / `:198` |
| `RecordDevice` | `init()/run()/check()` | 线程 + 状态机 + `read()`→`feed()` 循环（**未实例化**） | `.../record/RecordDevice.smali:460/:718/:113`（read `:296`，feed `:346`） |
| `NativeInputDevice` | `onFeed/onStartTalk/onStopTalk/onStream/onVolume` | **native 声明**，Java 侧零调用 | `.../record/NativeInputDevice.smali:147-159` |
| `NativeAGRecordProducer` | `feed([BI)` | **native 声明**，Java 侧零调用 | `.../record/NativeAGRecordProducer.smali:36` |
| `AiLabsCore` | `init`（JNI 侧）/`start`/`startTalk`/`stopTalk`/`enableWakeup` | native 入口 | `.../geniesdk/AiLabsCore.smali:1154/1160/1169/595` |
| `AiLabsCore` | `registerInputDevice` / `registerRecordInputDevice` | Java 设备注册钩子（**零调用者**） | 同上 `:945` / `:977` |
| `MainApplication` | `onCreate` | 开机 `AiLabsCore.getInstance().start()` | `smali_classes2/.../assistant/MainApplication.smali:941` |
| `GenieAssistantUIManager` | TouchTalk / `startTalk(String)` | `startTalk(7, WakeUpInfo{type=8 / 0xa / 0xd})` | `.../GenieAssistantUIManager.smali:1795` / `:4802` |
| `MainApplication$3` | 音量广播 | `stopTalk(7, StopWakeInfo{"volumeup"/"volumedown"})` | `.../MainApplication$3.smali:112,127` |
| `NativeService$2$1/$2$2` | Binder | `AiLabsCore.enableWakeup(Z)` | `.../geniesdk/NativeService$2$1.smali:57` |

### 2.2 Native 层（本轮新增/修正，按调用顺序）

| 模块 | 符号 | 作用 | 地址 |
|---|---|---|---|
| `libagui.so` | `Java_com_alibaba_ailabs_geniesdk_AiLabsCore_init` | JNI 初始化：设配置路径、建 SAL、**平台分支**、建并注册录音引擎 | `0x12eb4`（size 2428） |
| `libagui.so` | `Java_..._AiLabsCore_start` | 仅 `JniCtx::getJniCtx()->start()` | `0x12e94`（size 32） |
| `libagui.so` | `Java_..._AiLabsCore_registerInputDevice` / `_registerRecordInputDevice` | 转发到 `GenieApi::registerInputDevice` / `registerRecordDevice`（Java 从不调用） | `0x16564` / `0x181c8` |
| `libagui.so` | `AGRecordProducerProxy` | 把 **Java 生产者** 包装成 `AGRecordEngine`+`AGRecordInterface`（Java 路径的桥，未使用） | vtable `_ZTV21AGRecordProducerProxy` |
| `libsaladapter.so` | `SpeechSALAdapter::createRecordEngine` | `new(0x14)` + `NativeAudioEngine` 构造 | `0x9b88` |
| `libsaladapter.so` | `NativeAudioEngine::NativeAudioEngine` | 取 `AGModuleFactoryHelper::m_Instance` → `helper->[0]->vtable[0x28]()` 得到 recorder | `0x424c` |
| `libsaladapter.so` | `NativeAudioEngine::start` | 起 `AliAiLabs::AGUI::Thread`（`threadLoop`），打印 `NativeAudioEngine` 日志 | `0x45c4` |
| `libsaladapter.so` | `NativeAudioEngine::threadLoop` | **循环取 PCM + 16 ms 空等 + 回调 listener** | `0x473c` |
| `libsaladapter.so` | `NativeAudioEngine::stop` / `getRecordInfo` / `setRecordEngineListener` | `AGRecordEngine` 四方法 | `0x47cc` / `0x4530` / `0x4528` |
| `libagpal.so` | `AGModuleFactoryHelper`（`m_Instance`、`addLib`、`createAGModuleFactoryHelper`、ctor） | 模块加载器/门面，持有 recorder 工厂 | `0x4960..0x57xx` |
| `libagpal.so` | `AGModuleConfig::loadConfig` | 模块表 `aglog/agaudio/aginput/…` + `3rd_so_config.json` | 串表 |
| `libagaudio.so` | `AGAudioModule::createAGAudioRecord` | **`new(0x34)` + `OpenSLESAudioRecord` 构造** | `0x59ec` |
| `libagaudio.so` | `OpenSLESAudioRecord::init` | 建 SL 引擎/录音器、设录音预设、取 `SL_IID_RECORD`、分配帧缓冲、注册回调 | `0x4ef0` |
| `libagaudio.so` | `OpenSLESAudioRecord::start` / `read(uchar**)` / `ProcessSLCallback` | `SetRecordState` 开录 / 取一帧 / 回填缓冲 | `0x5490` / `0x55e0` / `0x4d30` |
| `libagspeech.so` | `AGModuleFactory::createAGAudioRecord`（weak 桩 `mov r0,#0; bx lr`） | 该模块**不**提供录音，依赖 libagaudio 强符号抢占 | `0x117f0` |
| `libsmartbox.so` | `AGSpeechEngineProxy::init(_RecordDeviceInfo const&, AGRecordEngine*)` | 消费注册进来的引擎 | `0xe8820 / 0xe8a30 / 0xe8c18 / 0xe8e50` |
| `libsmartbox.so` | `AGRecordEngineForPull`（`start/stop/threadLoop`） | **未被使用**（vtable 零引用） | `0xf6324/0xf6504/0xf6468` |

---

## 3. 完整调用链（本机实际生效）

```
[开机] MainApplication.onCreate
  └─ AiLabsCore.getInstance().start()                      Java → JNI
       └─ Java_..._AiLabsCore_start  (libagui 0x12e94)
            └─ JniCtx::start()

[JNI 初始化] Java_..._AiLabsCore_init (libagui 0x12eb4)
  ├─ AAssetManager_fromJava / AssetFile::setAssetManager / SystemService::setAsset
  ├─ new DeviceProxy
  ├─ AGModuleConfig::updateConfigPath(<cfgpath>)           ← 音频参数配置根目录
  ├─ AGModuleFactoryHelper::createAGModuleFactoryHelper()  ← 模块加载器实例 (libagpal)
  ├─ new OneDeviceOneKey; ServiceControllerClient::start
  ├─ GenieApi::init; IMmiCore::getInstance; SystemService::start
  ├─ new SpeechSALAdapter; SpeechSALAdapter::init
  ├─ __system_property_get("ro.board.platform", buf)
  │    memcmp(buf,"mt8168",7)
  │
  ├──[== mt8168]── "run with tiny ase support"
  │     dlopen("/system/lib/libtg_speech_msg.so"); dlsym("agInterUnitCommunicationInit")
  │     createSpeechComponentManager → GenieApi::createSpeechEngine
  │     GenieApi::registerDSPDevice(_RecordDeviceInfo)          ← DSP/HAL 远场拾音（本机不走）
  │
  └──[!= mt8168]── "run without tiny ase support"    ★ 本机（MT8167S）走这条
        createSpeechComponentManager → GenieApi::createSpeechEngine
        _RecordDeviceInfo info = { int=7, short=1, ... }        ← 构造在栈上 fp-0x28
        engine = SpeechSALAdapter::createRecordEngine()
                    └─ NativeAudioEngine ctor (libsaladapter 0x424c)
                         ├─ this->vptr = &_ZTV17NativeAudioEngine[2]
                         ├─ helper = AGModuleFactoryHelper::m_Instance        (libagpal)
                         ├─ recorder = helper->[0]->vtable[+0x28]()          ← 模块门面产出 recorder
                         └─ recorder->vtable[+0x18]()                        ← recorder 初始化
        GenieApi::registerRecordDevice(info, engine)            (libsmartbox)
             └─ InputDeviceManager::registerRecordDevice
                  └─ AGSpeechEngineProxy::init(info, engine)    ← 引擎交给语音引擎代理

[talk 会话] AiLabsCore.startTalk(7, WakeUpInfo)  (JNI, libagui 0x13830)
  └─ AGUI: InputDevice::onStartTalk  → AGRecordEngine::start(vtable)
       └─ NativeAudioEngine::start (libsaladapter 0x45c4)
            ├─ recorder->vtable[+0x0c]()            ← recorder 侧启动（内部 → OpenSL ES）
            ├─ mStop = 0
            └─ new AliAiLabs::AGUI::Thread("…record_engine") → Thread::start
                 └─ NativeAudioEngine::threadLoop (0x473c)
                      ├─ nice(-14)
                      └─ while (!mStop):
                           got = recorder->vtable[+0x2c](&ptr, 0)     ← 取一块 PCM
                           if (got < 1) { usleep(16000); continue; }  ← 16 ms 空等
                           listener->vtable[+0x08](ptr, got)          ← onRecordData → 识别

[录音设备层] 模块门面 → AGAudioModule::createAGAudioRecord (libagaudio 0x59ec)
  └─ new(0x34) + OpenSLESAudioRecord ctor
       └─ OpenSLESAudioRecord::init (0x4ef0)
            ├─ SLDataLocator_IODevice { SL_DATALOCATOR_IODEVICE=3,
            │                           SL_IODEVICE_AUDIOINPUT=1,
            │                           SL_DEFAULTDEVICEID_AUDIOINPUT=0xFFFFFFFF, 0 }
            ├─ dataSink = { SLDataLocator_AndroidSimpleBufferQueue{0x800007BD, numBuffers=1},
            │               getAudioDataFormat(&sr,&ch,&bits) }
            ├─ CreateAudioRecorder(...) → GetInterface(SL_IID_ANDROIDSIMPLEBUFFERQUEUE)
            ├─ SetConfiguration(SL_ANDROID_KEY_RECORDING_PRESET="androidRecordingPreset", 3, 4)
            ├─ GetInterface(SL_IID_RECORD)
            ├─ malloc((framePerBuf*channels*bits+7)>>3)
            └─ RegisterCallback(RecorderCallback → ProcessSLCallback)    ← 回填缓冲，维持采集
       └─ OpenSLESAudioRecord::start (0x5490) → SLRecordItf::SetRecordState(RECORDING)
       └─ OpenSLESAudioRecord::read(uchar**) (0x55e0) → GetNextBuffer + Enqueue
```

### 断点/边界（明确标注）

- `AGModuleFactoryHelper` 门面 `vtable[+0x28]` 的**具体类**未能定位：已枚举全包 vtable，
  `createAGAudioRecord` 在 `AGAudioModule` vtable 中位于 **+0x30**（+0x28 处是 `createAGLight`），
  所以 `helper->[0]` 不是 `AGAudioModule` 本身，而是 libagpal 内的门面对象（其 +0x28 语义应为"取 recorder"）。
  → 该门面 → `AGAudioModule` 的这一跳为 **【推断】**，其余各跳均为【已确认】。
- `NativeAudioEngine` 的 recorder 接口方法在 **+0x2c**；全包 vtable 中 `read` 出现在
  `OpenSLESAudioRecord +0x30/+0x34/+0x38`、`AGAudioRecord +0x18`、`AGRecordProducerProxy +0x20`，
  **没有** +0x2c 的 `read` → recorder 的具体接口形态（是否为 `AGRecordInterface` 调整后的 this 指针）
  尚未静态确证，**需 vtable 全量 RTTI 重建或动态跟踪**。【待验证】

---

## 4. AudioRecord 参数

### 4.1 Java `AudioRecord`（无调用者，无数值）

`AudioRecordImp.smali:94-108`：

```smali
new-instance p1, Landroid/media/AudioRecord;
iget v1, p0, ...->audioSource:I      # AudioRecord(int audioSource, int sampleRateInHz,
iget v2, p0, ...->sampleRateInHz:I   #            int channelConfig, int audioFormat,
iget v3, p0, ...->channel:I          #            int bufferSizeInBytes)
iget v4, p0, ...->audioFormat:I
iget v5, p0, ...->bufferSizeInBytes:I
invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V
```

五个参数全部来自构造器（`:28-55`），构造器无调用者 → **无具体数值**；该类也未调用 `getMinBufferSize()`。

### 4.2 Native OpenSL ES（实际生效）

| 项 | 值 | 证据 |
|---|---|---|
| 后端 | OpenSL ES | `slCreateEngine` / `SL_IID_ANDROIDSIMPLEBUFFERQUEUE` / `libOpenSLES` 串 |
| 音源 | `SLDataLocator_IODevice{3, 1, 0xFFFFFFFF, 0}` | `.rodata @0x6bd8` + `0x4f28-0x4f40` 载入 |
| 缓冲队列 | `{SL_DATALOCATOR_ANDROIDSIMPLEBUFFERQUEUE=0x800007BD, numBuffers=1}` | `movw r1,#0x7bd; movt r1,#0x8000` @`0x4f68/0x4f74`；`[sp,#0x2c]=1` @`0x4f90` |
| 录音预设 | `"androidRecordingPreset" = 3`（VOICE_RECOGNITION），size 4 | `0x4f14`/`0x502c-0x5034`，串 `@0x6870` |
| 帧缓冲 | `(framePerBuf*channels*bits+7)>>3` → `malloc` | `0x5134-0x51b8` |
| 采样率/声道/位深 | 运行时配置 `sample_rate` / `channel_num` / `pcm_format` / `frame_per_buf` | `.rodata @0x5f49/0x5f55/0x5f61/0x5f6f`，日志 `"audio config: inputsource %d, samplerate %d, …"` @`0x5f7a` |
| 配置位置 | `/data/smartbox/`、`/usr/lib/smartbox/`、`3rd_so_config.json` | libagpal 串表 |
| 佐证 | `NativeAudioEngine::threadLoop` 空等 `usleep(16000)`=16 ms，与 16 kHz/16 ms 帧一致 | `0x47b0` |

---

## 5. 录音生命周期

| 阶段 | 触发 | 证据 |
|---|---|---|
| 引擎初始化 | `MainApplication.onCreate` → `AiLabsCore.start()` | `MainApplication.smali:941` |
| 引擎构建+注册 | `Java_..._AiLabsCore_init`：`createRecordEngine` + `registerRecordDevice` | libagui `0x13454/0x1346c` |
| 设备打开 | `OpenSLESAudioRecord::init` 建 SL 录音器（开机后随初始化即建立） | libagaudio `0x4ef0` |
| 采集启动 | talk 会话 → `NativeAudioEngine::start` → 线程 → `SetRecordState(RECORDING)` | libsaladapter `0x45c4`，libagaudio `0x5490` |
| 每帧 | `read()` 循环，`<1` 时 `usleep(16000)` | libsaladapter `0x473c` |
| 采集停止 | `AiLabsCore.stopTalk(7, StopWakeInfo)` → `NativeAudioEngine::stop`（置 mStop）→ `SetRecordState(STOPPED)` | libsaladapter `0x47cc`，libagaudio `0x56bc` |
| 释放 | `OpenSLESAudioRecord::uninit`（`0x581c`）→ `destroy`（`0x5290`） | — |
| 唤醒开关 | `AiLabsCore.enableWakeup(Z)`（Binder 侧 `NativeService$2$1/2`） | smali `:57` |

**是否开机常开**：`AiLabsCore_init` 在 `Application.onCreate` 阶段就建好录音设备并注册引擎 → 设备/引擎常驻；
每帧 PCM 上送只在 talk 会话内（`startTalk`→`stopTalk`）。会话外只做本地唤醒/VAD。【已确认（调用时序）+ 推断（native 常开读帧）】

---

## 6. 尚未确认的问题

| # | 未确认 | 原因 | 验证手段（真机） |
|---|---|---|---|
| 1 | 实际采样率/声道/位深数值 | 运行时配置，配置目录不在 system.bin | `adb shell ls -l /data/smartbox; cat /data/smartbox/*.json`；`logcat | grep "audio config"` |
| 2 | `AGModuleFactoryHelper` 门面 `vtable[+0x28]` 的具体类 | 门面类在 libagpal 内，需完整 RTTI/vtable 重建 | Ghidra 全量分析 libagpal `AGModuleFactoryHelper::m_Instance`；或 `logcat` 看模块加载顺序（`addLib agaudio`） |
| 3 | `NativeAudioEngine` recorder 接口 `+0x2c` 的实现者 | 全包 vtable 无 +0x2c 的 `read`；怀疑是 this 调整后的接口指针 | 动态 `gdb`/`frida` hook `OpenSLESAudioRecord::read` 与 `threadLoop`，比对返回指针 |
| 4 | DSP 分支是否在本机被其它进程启用 | 本机 SoC 为 mt8167s，属性比对 `"mt8168"` 不成立 | `adb shell getprop ro.board.platform`；`logcat | grep "tiny ase"` |
| 5 | `_RecordDeviceInfo{7,1,…}` 字段语义（是否含采样率） | 结构体无调试信息 | 反汇编 `InputDeviceManager::registerRecordDevice`（2480B）逐个偏移确认 |
| 6 | VDEX 恢复损失（13,022 check-cast / 622 降级方法）对本链影响 | `NativeInputDevice.setInputDeviceListener`、`AudioRecordImp.init`、`NativeAGRecordProducer.setConsumer` 均被降级为空体 | 用 `baksmali` 直接反汇编 `_analysis/vdex-dex/classes3.dex` 比对 |

---

## 7. 关键代码证据

### 7.1 Java：唯一 AudioRecord 创建点（无调用者）
`AudioRecordImp.smali:94-108`（见 §4.1）。全工程 `AudioRecordImp;` 27 处命中全部在本文件内，无 `new-instance`。

### 7.2 Java：read→feed 循环（无实例化）
`RecordDevice.smali:286-346`：`startRecording()` → `mBuffer` → `IRecordDevice.read(...)`（`:296`）→
`if (len>0)` → `IAGRecordConsumer.feed(buf,len)`（`:346`）。

### 7.3 JNI：平台分支 + 引擎创建/注册（决定性）
`libagui.so` `Java_..._AiLabsCore_init` @`0x12eb4`

```asm
0x13390: add  r0, pc, r0          ; → "ro.board.platform"
0x133c4: bl   __system_property_get
0x133d4: add  r1, pc, r1          ; → "mt8168"
0x133d8: bl   memcmp(..., 7)
0x133ec: beq  0x13474             ; == mt8168 ⇒ DSP 分支
        ; ---- 本机走下面这条（memcmp != 0）----
0x1341c: ; log "run without tiny ase support"
0x13454: bl   SpeechSALAdapter::createRecordEngine
0x13464: str  r1, [r0]            ; 保存引擎到全局
0x13468: sub  r0, fp, #0x28       ; &_RecordDeviceInfo{7, 1, ...}
0x1346c: bl   GenieApi::registerRecordDevice(info, engine)
        ; ---- DSP 分支 ----
0x134A0: ; log "run with tiny ase support"
0x134bc: bl   dlopen("/system/lib/libtg_speech_msg.so")
0x134d0: bl   dlsym(..., "agInterUnitCommunicationInit")
0x1350c: bl   GenieApi::registerDSPDevice(info)
```

PLT 交叉引用结果（唯一调用者，均为 JNI 函数）：
```
PLT 0x119f8 GenieApi::registerRecordDevice    <- 0x12eb4 Java_..._AiLabsCore_init
PLT 0x11a28 GenieApi::registerDSPDevice       <- 0x12eb4 Java_..._AiLabsCore_init
PLT 0x11cec GenieApi::registerInputDevice     <- 0x16564 Java_..._registerInputDevice
PLT 0x11e0c GenieApi::registerRecordDevice    <- 0x181c8 Java_..._registerRecordInputDevice
```

### 7.4 引擎类确认：`NativeAudioEngine`
`SpeechSALAdapter::createRecordEngine` @`0x9b88`：
```asm
0x9b94: mov r0, #0x14        ; 20 字节对象
0x9b98: bl  _Znwj            ; operator new
0x9ba0: bl  NativeAudioEngine ctor   (0x424c)
0x9ba8: str r5, [r4, #4]     ; 适配器保存引擎指针
```
`NativeAudioEngine` vtable 大小 32 字节，与 `AGRecordEngineForPull` 相同，二者都实现 `AGRecordEngine`
（`_ZTI14AGRecordEngine` 的子类枚举结果：`AGRecordProducerProxy`、`NativeAudioEngine`、`AGRecordEngineForPull`）。

### 7.5 拉取循环（指令级）
`NativeAudioEngine::threadLoop` @`0x473c`（原始码 `e5940008 e5901000 e591302c e12fff33 e3500001 ba000008`）：

```asm
0x4754: mvn  r0,#0xe ; r0 = -15 → nice(-15)
0x476c: ldr  r0,[r4,#8]        ; recorder
0x4774: ldr  r1,[r0]           ; vptr
0x4778: ldr  r3,[r1,#0x2c]     ; 取数据（两参：&ptr, 0）
0x4780: blx  r3
0x4784: cmp  r0,#1  / 0x4788: blt 0x47b0
0x47b0: mov  r0,#0x3e80 ; usleep(16000 µs)
0x4790: ldr  r0,[r4,#4]        ; listener
0x47a0: ldr  r1,[sp,#4]        ; ptr
0x47a4: ldr  r3,[r3,#8]        ; listener->onRecordData(ptr,len)
0x47a8: blx  r3
```

### 7.6 模块工厂 → OpenSL ES（决定性一跳）
`AGAudioModule::createAGAudioRecord` @`0x59ec`：
```asm
0x59f4: mov r0,#0x34
0x59f8: bl  _Znwj                      ; new(0x34)
0x5a00: bl  OpenSLESAudioRecord ctor   (0x31c8)
0x5a04: mov r0,r4                      ; 返回 recorder
```
`AGAudioModule` vtable（`_ZTV13AGAudioModule` @`0x8c70`，由 R_ARM_ABS32 重定位重建）：

| 槽位 | 方法 | 槽位 | 方法 |
|---|---|---|---|
| +0x08 | `AGModuleFactory::D2` | +0x30 | **`AGAudioModule::createAGAudioRecord`** |
| +0x0c | `AGAudioModule::D0` | +0x34 | `createSpeechComponentManager` |
| +0x10 | `createAGAudioTrack()` | +0x38 | `createAGInput` |
| +0x14 | `createAGAudioTrack(params)` | +0x3c | `createAGWifi` |
| +0x18 | `createAGAudioSystem` | +0x40 | `createAGSigmesh` |
| +0x1c | `createAGLog` | +0x44 | `createAGGatt` |
| +0x20 | `createAGAudioDump` | +0x48 | `createAGGattServer` |
| +0x24 | `createAGSpeechSystemInfo` | +0x4c | `createAGSystem` |
| +0x28 | `createAGLight` ← 与 `NativeAudioEngine` 调用的 +0x28 **不同** | +0x50.. | `AGSecurity/AGPower/AGShake` |

### 7.7 `AGRecordEngineForPull` 未被使用
```
xref: AGRecordEngineForPull::start / stop / threadLoop → direct callers = 0
xref: 字面量引用 _ZTV21AGRecordEngineForPull(0x1ec2e8) → 0
```
（对比：`AGRecordEngineForPull` 的 `threadLoop` 也用 `usleep(0x3e80)`，说明它与 `NativeAudioEngine` 同一套设计模板。）
【已确认 vtable 未被引用；"该类不被实例化"为强推断】

### 7.8 OpenSL ES 参数（见 §4.2 的地址表）
`.rodata @0x6bd8`：`00000003 00000001 ffffffff 00000000` = `SLDataLocator_IODevice`。

---

## 8. 一句话回答

**已经找到从"实际录音设备"到"原厂语音引擎"的完整链路，但它上面没有 Java `AudioRecord`：
`AiLabsCore_init` 按 `ro.board.platform` 分支（本机 MT8167S ≠ mt8168）走
`SpeechSALAdapter::createRecordEngine → NativeAudioEngine(libsaladapter) → GenieApi::registerRecordDevice →
AGSpeechEngineProxy`，引擎内部经 `AGModuleFactoryHelper` 取录音器，而包内唯一的采集实现是
`AGAudioModule::createAGAudioRecord → new OpenSLESAudioRecord`（OpenSL ES record，locator=SL_IODEVICE_AUDIOINPUT），
`NativeAudioEngine::threadLoop` 每 16 ms 用 `recorder->vtable[+0x2c](&ptr,0)` 拉一块 PCM 并回调 `onRecordData` 送入识别；
唯一还断着的一跳是 `AGModuleFactoryHelper` 门面 `vtable[+0x28]` 到 `AGAudioModule::createAGAudioRecord(+0x30)` 的类型确认
（以及采样率等运行时配置数值），这两项都只能靠真机日志/vtable 全量 RTTI 重建坐实。**
