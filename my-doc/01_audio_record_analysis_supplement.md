# 补充分析：PCM 回调最终流向（OpenSL ES → 语音处理消费者）

对象：TG-Z02（CCH）/ MT8167S / smartapp v?（`com.alibaba.ailabs.genie.smartapp`）
方法：纯静态 · native ELF/ARM 反汇编 + 重定位/vtable 重建 + PLT 交叉引用 · **未修改任何文件**
工具：`_analysis/tools/`（armdis / xref / pltxref / vtslots / vtslot2 / subcls / got）
标记：**【已确认】** 指令级证据　**【推断】** 多段证据交叉　**【待验证】** 需动态确认

---

## 0. 结论摘要

| 问题 | 答案 | 置信 |
|---|---|---|
| listener 具体类型 | `AGSpeechEngineProxy`（libsmartbox.so），其 `AGRecordEngineListener` 子对象位于 `this+0x0c`，vptr = `_ZTV19AGSpeechEngineProxy+0x150` = `0x1ebe1c` | 【已确认】 |
| 谁创建/设置 listener | listener 就是 `AGSpeechEngineProxy` **自己**；在 `AGSpeechEngineProxy::init(_RecordDeviceInfo const&, AGRecordEngine*)` 内以 `&this[0x0c]` 注入 | 【已确认】 |
| `setRecordEngineListener()` 调用点 | libsmartbox `0x0e887c`：`engine->vptr[+0x08]`（= `_ZTV17NativeAudioEngine+0x10` = `NativeAudioEngine::setRecordEngineListener`），实参 `r1 = &this[0x0c]` | 【已确认】 |
| `onRecordData` 实现 | `AGSpeechEngineProxy::onRecordData(void const*, int)` @ `0x0ea8c4`；threadLoop 的 `vptr[+0x08]` → `0x1ebe1c+8 = 0x1ebe24` = `_ZThn12_N19AGSpeechEngineProxy12onRecordDataEPKvi`（this−12 thunk）→ 跳 0x0ea8c4 | 【已确认】 |
| 回调后交给谁 | `AGSpeechEngine::feed(recordId, ptr, len)`（`this->[0x1c]` = `SpeechEngineConfiguration::getInstance()->[0]`，即 `AGSpeechEngine*`） | 【已确认】 |
| 最终消费者 | 二选一：`WakeupEngineWrapper::feed`（record 类型==7）或 `SpeechDispatcher::write` → `SpeechBufferBase` → 分发线程 → 4 个 `SpeechConsumer`（CloudASRManager / LocalASRManager / VADManager / UnconvWakeupManager） | 【已确认（分叉点与消费者集合）】 |

---

## 1. `NativeAudioEngine` 的 listener：类型与注入点

### 1.1 engine 侧存储位置
`NativeAudioEngine` vtable（`_ZTV17NativeAudioEngine` @`0xcc5c`，libsaladapter.so，靠 R_ARM_ABS32 重定位重建；
**注意 vptr = `_ZTV+8`，代码偏移 X 对应 ZTV 偏移 X+8**）：

| vptr 偏移 | 目标 |
|---|---|
| +0x00 | `NativeAudioEngine::D2` @`0x439c` |
| +0x04 | `NativeAudioEngine::D0` @`0x4460` |
| **+0x08** | **`NativeAudioEngine::setRecordEngineListener(AGRecordEngineListener*)` @`0x4528`** |
| +0x0c | `getRecordInfo` @`0x4530` |
| +0x10 | `start` @`0x45c4` |
| +0x14 | `stop` @`0x47cc` |

`setRecordEngineListener` 只有 8 字节，即 `str r1,[r0,#4]; bx lr` → listener 存 `this+4`；
与 `threadLoop` 里 `ldr r0,[r4,#4]`（0x4790）严格对应。

### 1.2 注入点（回答"谁设置 listener"）
`AGSpeechEngineProxy::init(_RecordDeviceInfo const&, AGRecordEngine*)` @ `0x0e8820`（libsmartbox.so，size 528）
入口：`r4 = this`，`r5 = &info`，`r6 = engine`。

```asm
0x0e8864: str  r6, [r4, #0x24]      ; this->[0x24] = engine
0x0e886c: add  r1, r4, #0xc         ; r1 = &this[0x0c]  ← AGRecordEngineListener 子对象
0x0e8870: ldr  r0, [r6]             ; r0 = engine->vptr (= _ZTV17NativeAudioEngine+8)
0x0e8874: ldr  r2, [r0, #8]         ; r2 = vptr[+0x08] = setRecordEngineListener
0x0e8878: mov  r0, r6
0x0e887c: blx  r2                   ; engine->setRecordEngineListener(&this[0x0c])
```

紧接着：

```asm
0x0e8880: bl   SpeechEngineConfiguration::getInstance
0x0e8884: ldr  r0, [r0]             ; = getInstance()->[0]（同 getSpeechEngine(): ldr r0,[r0]; bx lr）
0x0e888c: str  r0, [r4, #0x1c]      ; this->[0x1c] = AGSpeechEngine*
0x0e8890: ldr  r2, [r4, #0x24]      ; engine
0x0e8894: ldr  r1, [r0]             ; AGSpeechEngine vptr
0x0e8898: ldr  r7, [r1, #8]         ; vptr[+0x08] = AGSpeechEngine::registerRecordDevice
0x0e889c: mov  r1, r5               ; &info
0x0e88a0: blx  r7                   ; id = engine->registerRecordDevice(info)
0x0e88a4: str  r0, [r4, #0x20]      ; this->[0x20] = recordId
```

`AGSpeechEngine` vtable（`_ZTV14AGSpeechEngine` @`0x1eb6e4`）对应关系：

| vptr 偏移 | 目标 |
|---|---|
| +0x08 | `AGSpeechEngine::registerRecordDevice(_RecordDeviceInfo const&, AGRecordEngine*, AGSpeechEngineListener*)` @`0xd1930` |
| +0x0c | `AGSpeechEngineInterface::registerRecordDevice(AGSpeechEngineListener*)` @`0xd75d8` |
| +0x10 | `useWakeupWords` @`0xd4284` |
| **+0x24** | **`AGSpeechEngine::feed(uint, void const*, int)` @`0xd455c`** |

### 1.3 listener 子对象与 thunk 的对应（闭环验证）
`_ZTV19AGSpeechEngineProxy` @ `0x1ebccc`，构造器 @`0x0e8228` 写入 4 个 vptr：
`{ZTV+8, ZTV+0xcc, ZTV+0xe4, ZTV+0x150}` → 分别在 `this+0x00 / +0x04 / +0x08 / +0x0c`。

| 事实 | 地址 |
|---|---|
| listener 子对象 vptr | `0x1ebccc + 0x150` = **`0x1ebe1c`** |
| threadLoop 调 `listener->vptr[+0x08]` | `0x1ebe1c + 8` = **`0x1ebe24`** |
| 该槽位内容（重定位） | `_ZThn12_N19AGSpeechEngineProxy12onRecordDataEPKvi` @`0x0ea8f4`（this−12 thunk） |
| 直接实现 | `_ZN19AGSpeechEngineProxy12onRecordDataEPKvi` @`0x0ea8c4`（位于 `0x1ebd30` = ZTV+0x64，主 vtable 侧） |

→ `NativeAudioEngine::threadLoop` 的 `listener->vptr[+0x08](ptr,len)` 与 `AGSpeechEngineProxy::onRecordData` **精确对应**。【已确认】

---

## 2. 第一级转发：`AGSpeechEngineProxy::onRecordData` → `AGSpeechEngine::feed`

`AGSpeechEngineProxy::onRecordData(void const*, int)` @ `0x0ea8c4`（48 字节，纯 tail-call）：

```asm
0x0ea8cc: ldr  r3, [r0, #0x1c]      ; r3 = this->[0x1c] = AGSpeechEngine*
0x0ea8d0: mov  lr, r2               ; len
0x0ea8d4: mov  r2, r1               ; ptr
0x0ea8d8: ldr  r1, [r0, #0x20]      ; recordId
0x0ea8dc: ldr  r0, [r3]             ; AGSpeechEngine vptr
0x0ea8e0: ldr  ip, [r0, #0x24]      ; vptr[+0x24] = AGSpeechEngine::feed
0x0ea8e4: mov  r0, r3
0x0ea8ec: pop  {fp, lr}
0x0ea8f0: bx   ip                   ; tail-call feed(recordId, ptr, len)
```

签名对齐：`feed(uint id, void const* data, int len)` → `r0=engine, r1=id, r2=data, r3=len` ✓。【已确认】

---

## 3. 第二级：`AGSpeechEngine::feed` 的双分叉（唤醒 vs 识别）

`AGSpeechEngine::feed(uint, void const*, int)` @ `0x0d455c`（192 字节）：

```asm
0x0d456c: cmp  r2, #0            ; data == null ?
0x0d4570: beq  0x0d4610          ; → 直接返回 len
0x0d4574: cmp  r7, #1            ; len < 1 ?
0x0d4578: blt  0x0d4610
0x0d457c: ldr  r3, [r0, #0x50]   ; this->[0x50] = 当前 recordId
0x0d4580: cmp  r3, r1
0x0d4584: bne  0x0d4610          ; recordId 不匹配 → 丢弃
        ; std::map<uint,...> 查找（红黑树，节点 +0x10=key, +0x14=value）
0x0d458c: ldr  r6, [ip, #0x78]!  ; root
0x0d459c..0x0d45d0: 遍历查找 r1
0x0d45d4: ldr  r1, [r3, #0x14]   ; value
0x0d45d8: cmp  r1, #7
0x0d45dc: bne  0x0d45f4          ; ≠7 → 走识别
0x0d45e0: ldr  r0, [r0, #0xa4]   ; WakeupEngineWrapper*
0x0d45e4: mov  r1, r2            ; data
0x0d45e8: mov  r2, r7            ; len
0x0d45ec: bl   WakeupEngineWrapper::feed        ; ★ 唤醒引擎支路
0x0d45f0: b    0x0d4610
0x0d45f4: ldr  r0, [r0, #0x90]   ; SpeechDispatcher*
0x0d45f8: mov  r1, #0
0x0d45fc: str  r1, [sp]
0x0d4600: mov  r1, r2            ; data
0x0d4604: mov  r2, r7            ; len
0x0d4608: mov  r3, #0x64
0x0d460c: bl   SpeechDispatcher::write           ; ★ 识别支路
0x0d4610: mov  r0, r7            ; 返回 len
```

- `recordId` 语义：`registerRecordDevice()` 返回并存入 `this->[0x20]`，feed 用它做 `this->[0x50]` 与 map key 的双重校验。【已确认】
- 分叉条件：map 中该 record 的 value `== 7` → 唤醒；否则 → 识别。【已确认（数值）／推断（7 的枚举含义）】
- `WakeupEngineWrapper::feed` @ `0xe1c90`（676B，libsmartbox 内，包装 `libwakeup_sync_api_*.so`）。【已确认地址】
- `SpeechDispatcher::write(char const*, int, AGWakeupAudioStatus, int)` @ `0x0dd464`（284B）。【已确认】

---

## 4. 第三级：`SpeechDispatcher` 的写入与分发线程

### 4.1 `write`：入环形缓冲 + 条件唤醒（不直接调 consumer）
`0x0dd464`（284B）中的全部外部调用：

```asm
0x0dd488: bl  SAMutex::lock
0x0dd4e0: bl  SpeechBufferBase::write        ; 分支 A
0x0dd508: bl  SpeechBufferBase::write        ; 分支 B
0x0dd514: bl  SAMutex::cond_signal
0x0dd548: bl  SpeechBufferBase::write        ; 分支 C
0x0dd554: bl  SAMutex::unlock
```

→ PCM 写入 `SpeechBufferBase`（主缓冲 / rollback 缓冲由 `this->[0x30]`、`this->[0x34]` 区分），随后 `cond_signal`。【已确认】

### 4.2 `threadLoop`：消费线程
`SpeechDispatcher::threadLoop(void*)` @ `0x0dd080`（140B）：

```asm
0x0dd08c: mvn  r0, #0xe            ; nice(-15)
0x0dd094: add  r4, r5, #0xc        ; &mutex
0x0dd098: ldrb r0, [r5, #0x18]     ; mStop
0x0dd0b8: bl   SAMutex::cond_wait
0x0dd0bc: ldr  r0, [r5, #0x34]     ; rollback buffer
0x0dd0c8: bl   SpeechBufferBase::processAudio
0x0dd0cc: ldr  r0, [r5, #0x30]     ; main buffer
0x0dd0d8: bl   SpeechBufferBase::processAudio
0x0dd0e4: b    0x0dd098            ; 循环
```

→ `SpeechBufferBase::processAudio` 取出 PCM 并回调 dispatcher 的 `onFeed`。【已确认（调用关系）；processAudio 内部回调为推断】

### 4.3 `onFeed`：向所有 `SpeechConsumer` 扇出（**最终消费者集合**）
`SpeechDispatcher::onFeed(SpeechBufferBase*, char const*, int, bool)` @ `0x0dd2cc`（156B）：

```asm
0x0dd2e0: ldr  r0, [r0, #0x24]     ; consumers = this->[0x24]（vector<SpeechConsumer*> begin）
0x0dd2e4: ldr  r1, [r7, #0x28]     ; end
0x0dd2fc: mvn  r5, #0             ; status = -1
0x0dd304: cmp  r1, r8 ; beq → r5=1     ; buf == this->[0x34] → status=1
0x0dd30c: ldr  r1, [r7, #0x30]
0x0dd314: movweq r5, #2                ; buf == this->[0x30] → status=2
0x0dd320: ldr  r0, [r0, r4, lsl #2]    ; consumer = consumers[i]
0x0dd32c: ldr  r1, [r0]                ; vptr
0x0dd330: ldr  r6, [r1, #8]            ; consumer->vptr[+0x08]
0x0dd338: stm  sp, {r2, r5}            ; 追加参数：(this->[0x1c], status)
0x0dd340: blx  r6                      ; consumer->onData(data, len, sessionId, status)
0x0dd348..0x0dd358: i++ < count → 循环
```

`SpeechConsumer` 的实现者（`_ZTI14SpeechConsumer` 子类枚举，仅 libsmartbox.so 内 4 个）：

| 类 | 类型信息 | 作用 |
|---|---|---|
| `CloudASRManager` | `_ZTV15CloudASRManager` | 云端 ASR 上行 |
| `LocalASRManager` | `_ZTV15LocalASRManager` | 本地 ASR（`libaceAsr.so` / `libmodel.bin.so`） |
| `VADManager` | `_ZTV10VADManager` | VAD（`libvad_api.so` / `libvad_bin.so`） |
| `UnconvWakeupManager` | `_ZTV19UnconvWakeupManager` | 免唤醒词检测（`libsed_api.so`） |

各 manager 另有 `getActualConsumer()` 弱符号（`VADManager`@`0xde49c`、`LocalASRManager`@`0xdca50`、`CloudASRManager`@`0xdab48`、`UnconvWakeupManager`@`0xf7b74`），说明存在"代理 consumer → 实际 consumer"的再一层间接。【已确认存在；具体映射【待验证】】

> `consumer->vptr[+0x08]` 在不同 manager 上对应的符号名受**多继承 vtable 布局**影响：本工具按绝对偏移取到的是
> `CloudASRManager::feed` / `LocalASRManager::onLocalASRResult` / `VADManager::onVADStatusChange` / `UnconvWakeupManager::onWakeup`，
> 这些是"管理器被通知"的回调，与 `SpeechConsumer` 的数据入口是否同一槽位需 RTTI 全量重建确认 → **【待验证】**
> （不影响结论：PCM 确实被扇出到这 4 个消费者）。

---

## 5. 完整链路（含每一跳的库名/函数/地址）

```
OpenSL ES（硬件）
  │  RecorderCallback → OpenSLESAudioRecord::ProcessSLCallback   libagaudio 0x4d30
  │  OpenSLESAudioRecord::read(unsigned char**)                  libagaudio 0x55e0
  ▼
NativeAudioEngine::threadLoop                                   libsaladapter 0x473c
  │  recorder->vptr[+0x2c](&ptr, 0)        每 16ms（usleep 0x3e80）
  │  listener = this->[4]，由 setRecordEngineListener 写入
  ▼
listener->vptr[+0x08] = _ZThn12_...onRecordData   (0x1ebe24)
  ▼
AGSpeechEngineProxy::onRecordData(void const*, int)              libsmartbox 0xea8c4
  │  tail-call: this->[0x1c]->vptr[+0x24](id=this->[0x20], ptr, len)
  ▼
AGSpeechEngine::feed(uint recordId, void const*, int)             libsmartbox 0xd455c
  ├─[map[recordId]==7]→ WakeupEngineWrapper::feed(obj, ptr, len)  libsmartbox 0xe1c90
  │                       └─ libwakeup_sync_api_S1/L_S3.so（唤醒词）
  └─[else]────────────→ SpeechDispatcher::write(ptr, len, 0x64, 0) libsmartbox 0xdd464
                          │ SpeechBufferBase::write + cond_signal
                          ▼
                       SpeechDispatcher::threadLoop                libsmartbox 0xdd080
                          │ SpeechBufferBase::processAudio（主 / rollback 双缓冲）
                          ▼
                       SpeechDispatcher::onFeed(buf, ptr, len, flag) libsmartbox 0xdd2cc
                          │ for each consumer: consumer->vptr[+0x08](ptr, len, session, status)
                          ▼
       ┌──────────────────┬────────────────────┬──────────────────────┐
   CloudASRManager   LocalASRManager        VADManager          UnconvWakeupManager
   （云端 ASR 上行）  （libaceAsr.so 本地识别）（libvad_api.so）    （libsed_api.so 免唤醒）
```

---

## 6. 补查：`AGModuleFactoryHelper` 的 `vtable[+0x28]`

### 6.1 已确认部分
`NativeAudioEngine::NativeAudioEngine()` @ `0x424c`（libsaladapter.so）：

```asm
0x42a4: ldr  r5,[pc,#0xd4]        ; lit = 0x8b58
0x42a8: ldr  r5,[pc,r5]           ; GOT[0x42b0+0x8b58] = 0xce08
0x42ac: ldr  r0,[r5]              ; r0 = AGModuleFactoryHelper::m_Instance
0x42b0: cmp  r0,#0
0x42b4: ldrne r0,[r0]             ; r0 = m_Instance->[0]（vptr）
0x42b8: cmpne r0,#0
0x42bc: bne  0x42dc
...
0x4300: ldr  r0,[r5]              ; m_Instance
0x4304: ldr  r0,[r0]              ; vptr
0x4308: ldr  r1,[r0]              ; 保留
0x430c: ldr  r1,[r1,#0x28]        ; vptr[+0x28]
0x4310: blx  r1                   ; recorder = m_Instance->vptr[+0x28]()
0x4314: str  r0,[r4,#8]           ; this->[8] = recorder
0x4318: cmp  r0,#0
0x431c: bne  0x42cc
0x42cc: ldr  r1,[r0]
0x42d0: ldr  r1,[r1,#0x18]
0x42d4: blx  r1                   ; recorder->vptr[+0x18]()  初始化
```

GOT 解析：`GOT[0xce08] → _ZN21AGModuleFactoryHelper10m_InstanceE (R_ARM_GLOB_DAT)`。【已确认】
`AGModuleFactoryHelper` 定义于 **libagpal.so**（`createAGModuleFactoryHelper`@`0x4944`、ctor`0x49b0`、`addLib`@`0x5360`、`AGModuleConfig::loadConfig`）。

### 6.2 未能闭合的部分（明确标注）
- libagpal.so 中**没有任何**对 `createAGAudioRecord` / `createAGAudioTrack` 的重定位引用；
  也没有 `_ZTV*Module*` 形式的模块 vtable 导出。
- 因此 `m_Instance` 的 `vptr[+0x28]` **不是**直接指向 `AGAudioModule::createAGAudioRecord`（该符号仅 libagaudio.so 有强定义，且其模块 vtable 位于 `+0x30`）。
- 已排除：`AGAudioModule` 自身（`_ZTV13AGAudioModule`：`+0x28`=`createAGLight`、`+0x30`=`createAGAudioRecord`）。
- 现状：`m_Instance` 是 libagpal 内带虚表的全局单例，`vptr[+0x28]` 返回一个 recorder 对象指针；其具体类名需
  对 libagpal 做**完整 RTTI/vtable 重建**（该库的 vtable 符号未导出，只能靠 `.data.rel.ro` + 重定位反推）。→【推断】
- 反向约束（强证据）：被创建的 recorder 只有两种可能实现（`AGRecordInterface` 仅 `AGAudioRecord`/`AGRecordProducerProxy` 两个子类），
  而后者是 Java 生产者代理（`AiLabsCore.registerRecordInputDevice`，Java 侧零调用），故实际为 **`AGAudioRecord`（= `OpenSLESAudioRecord`）**。→【推断，且证据方向唯一】

---

## 7. 待验证清单（真机/动态）

| # | 项 | 手段 |
|---|---|---|
| 1 | `m_Instance->vptr[+0x28]` 返回对象的实际类型 | `frida` hook `AGModuleFactoryHelper::m_Instance` 读 `[0]`→vtable，比对 `_ZTV` 地址 |
| 2 | `recordId` 的取值与 `map value == 7` 的枚举语义 | `logcat` 抓 `registerRecordDevice` 返回值；或 hook `AGSpeechEngine::feed` 打印 `r1` |
| 3 | `SpeechConsumer` 各实现中 `vptr[+0x08]` 的确切方法名 | Ghidra 全量 RTTI；或 hook 4 个 manager 的 onData |
| 4 | `getActualConsumer` 的代理→实机映射 | 反汇编 4 处弱函数 + 其 SetXXX 调用点 |
| 5 | `SpeechBufferBase::processAudio` 是否确为 `onFeed` 的唯一触发者 | hook `processAudio` 与 `onFeed` 计数比对 |
| 6 | 采样率/声道/位深数值 | `/data/smartbox` 配置 + `logcat | grep "audio config"` |

---

## 8. 一句话回答

**是——已找到完整链路：OpenSL ES（`OpenSLESAudioRecord::read`，libagaudio `0x55e0`）→ `NativeAudioEngine::threadLoop`
（libsaladapter `0x473c`，16 ms 周期）→ listener（`AGSpeechEngineProxy` 的 `AGRecordEngineListener` 子对象，
vptr `0x1ebe1c`，由 `AGSpeechEngineProxy::init` 在 `0x0e887c` 通过 `engine->setRecordEngineListener(&this[0x0c])` 注入）
→ `AGSpeechEngineProxy::onRecordData`（`0xea8c4`）→ `AGSpeechEngine::feed`（`0xd455c`，按 `recordId` 与
`map value==7` 分叉）→ 唤醒支路 `WakeupEngineWrapper::feed`（`0xe1c90` → `libwakeup_sync_api*.so`）
或识别支路 `SpeechDispatcher::write`（`0xdd464` → `SpeechBufferBase` → `threadLoop` `0xdd080` → `onFeed` `0xdd2cc`）
→ 扇出到 4 个 `SpeechConsumer`：`CloudASRManager` / `LocalASRManager`（libaceAsr.so）/ `VADManager`（libvad_api.so）/
`UnconvWakeupManager`（libsed_api.so）。
剩下未坐实的只有两处细节：`m_Instance->vptr[+0x28]` 返回对象的具体类名（已用排除法锁定为 `OpenSLESAudioRecord`），
以及各 consumer 在 `vptr[+0x08]` 槽位上的确切方法名（多继承布局需 RTTI 全量重建）。**
