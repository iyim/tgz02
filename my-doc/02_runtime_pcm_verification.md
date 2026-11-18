# 第二阶段：原厂 PCM 录音链路真机验证报告（v2 · 实测完成）

设备：TG-Z02（CCH）· `AILABS_S1L` / `full_ailabs_s1l` · MT8167S · armeabi-v7a · Android 8.1 / API 27
object：`com.alibaba.ailabs.genie.smartapp`
前置文档：`01_audio_record_analysis.md`、`01_audio_record_analysis_supplement.md`
文档性质：**v1 是方案设计；v2 是实机验证结果**。v1 的 hook 表 / ADB 流程 / 方案比较仍然有效，本版把「待验证」逐项替换为实测值。

标记：**【实测】** 真机采集　**【静态】** 反汇编证据　**【待验证】** 仍未闭环

---

## 0. 结论速览：静态推断 vs 真机实测

| 项目 | v1 静态推断 | v2 实测结果 | 判定 |
|---|---|---|---|
| 录音链路所在进程 | 无法确定（`NativeService` 声明 `:core`，`AiLabsCore` 由 MainApplication 拉起） | **`:core`（`com.alibaba.ailabs.genie.smartapp:core`）**；主进程 899 中三个库的映射行数全为 0 | ✅ 一致 |
| 采样率 | 未知（配置在 `/data/smartbox`，不在 system.bin） | **16000 Hz**（HAL + 数据率 + 帧长三方互证） | ✅ 已定 |
| 声道 | 未知（曾按单声道假设） | **4 通道**（但仅 ch0/ch1 有效，见 §5） | ⚠️ 修正：不是单声道 |
| 位深 | 未知 | **16-bit（PCM_16_BIT）** | ✅ 已定 |
| 每帧长度 | 未知 | **5120 字节 = 640 样本/通道 × 4ch × 2B = 40 ms** | ✅ 已定 |
| 数据率 | 未知 | **25 帧/秒，125.0 KB/s** | ✅ 已定 |
| 是否开机常开 | 推断「引擎常驻，会话内才上行」 | **持续采集**：40 秒内 1004 帧，无间隙，非会话期也在采 | ✅ 修正：一直采 |
| listener 类型 | `AGSpeechEngineProxy`（vtable `_ZTV19AGSpeechEngineProxy+0x150`，静态算出 `0x1ebe1c`） | 运行时 listener vtable = **`0x8c3f3e1c` = smartbox+0x1ebe1c** | ✅ 完全一致 |
| `setRecordEngineListener` 调用点 | `AGSpeechEngineProxy::init` @0xe887c | 未直接观测（attach 晚于 init），但 listener 已确认存在 | 【待验证】 |
| 分叉条件 `map value==7` | 静态确认数值，语义未知 | recordId=**1**，且数据全部走 `WakeupEngineWrapper::feed` | 【待验证】语义仍未知 |
| `onRecordData` 是否被调用 | 静态认为会被调用 | **调用的是 thunk `0xea8f4`，不是 `0xea8c4`** —— v1 hook 点选错，链路本身一直在跑 | ⚠️ 修正 |
| frida 版本兼容性 | 未验证 | **16.7.19 / 16.1.4 / 16.0.19 / 15.2.2 全部可启动** | ✅ 已测 |
| adb 是否可持久 | 用 Magisk 模块或 persist 属性 | `persist.adb.tcp.port=5555` + `/data/misc/adb/adb_keys`，**重启后自动恢复免授权** | ✅ 已测 |

---

## 1. 验证环境与工具链（实测）

### 1.1 设备事实

| 项 | 值 | 来源 |
|---|---|---|
| 型号 / 产品 | `AILABS_S1L` / `full_ailabs_s1l` | `adb devices -l` |
| SoC 平台串 | `ro.board.platform = mt8167` | getprop（**注意不是 mt8168**） |
| 系统 | Android 8.1，`sdk=27`，`6.1.8-RS-20221104.1459` | getprop |
| 内核 | `Linux 4.4.95+ #1 SMP PREEMPT armv7l` | `uname -a` |
| ABI | `abilist = armeabi-v7a,armeabi`；**`abilist64` 为空** | getprop（纯 32 位系统） |
| SELinux | Enforcing，`su` 域 = `u:r:magisk:s0`，`uid=0` 免交互 | `su -c id` |
| 音频 HAL 卡 | `card0 = mt-snd-card`，capture 设备 `pcm1c/pcm4c/...` | `/proc/asound` |

> **平台串的意义**：`Java_..._AiLabsCore_init` 内是 `memcmp(buf, "mt8168", 7)`。本机是 `mt8167`，
> 第 7 字节不同 → **走 `run without tiny ase support` 分支**（NativeAudioEngine 路径），
> 不走 `libtg_speech_msg.so` 的 DSP 分支。静态推断被真机属性证实。

### 1.2 三条通道（都验证过可用）

| 通道 | 配置 | 状态 |
|---|---|---|
| TCP adb | `adb connect 192.168.1.9:5555` | ✅ 重启后自动恢复，直接 `device`（免授权） |
| root shell | `adb shell su -c '<cmd>'` | ✅ `u:r:magisk:s0`，无弹窗 |
| Frida | PC `frida 16.7.19` ↔ 设备 `frida-server-16.7.19-android-arm` | ✅ attach 到 `:core` 成功 |

### 1.3 持久化现状（重启后仍有效）

```
persist.adb.tcp.port    = 5555
service.adb.tcp.port    = 5555
persist.sys.usb.config  = adb
/data/misc/adb/adb_keys : -rw-r----- system shell u:object_r:adb_keys_file:s0 (721 B)
```

> 恢复出厂 / 清 data / OTA 后 `persist.*` 会被清。已备好加固用 Magisk 模块
> `_analysis/adb-enabler/tgz02_adb.zip`（公钥内嵌，`post-fs-data` 阶段重设属性 + 重建 adb_keys），
> 可用 `magisk --install-module /data/local/tmp/tgz02_adb.zip` 安装（当前未装，非必需）。

---

## 2. 实测拓扑：进程 · 线程 · 基址

### 2.1 进程归属（决定性）

```
com.alibaba.ailabs.genie.smartapp          (899)   libsmartbox=0  libsaladapter=0  libagaudio=0  libagui=0
com.alibaba.ailabs.genie.smartapp:core     (1144)  libsmartbox=3  libsaladapter=3  libagaudio=6  libagui=3
com.alibaba.ailabs.genie.smartapp:business (1218)  全 0
com.alibaba.ailabs.genie.osupdate          (880)   全 0
com.alibaba.ailabs.genie.rtc               (2910)  全 0
```

→ **录音链路只在 `:core`**。这也解释了 `NativeService` 为什么声明 `android:process=":core"`。

> ⚠️ `:core` 的 pid **不稳定**：zygote 软重启后从 `1144` 变为 `6934`。
> **任何脚本都必须按进程名查找 pid，不能硬编码。**

### 2.2 线程拓扑（与静态分析一一对应）

`:core` 内的相关线程（`/proc/<pid>/task/*/comm`）：

| tid(重启前) | 线程名 | 对应静态分析 |
|---|---|---|
| 1577 | `AudioRecord` | OpenSL ES 采集线程（`RecorderCallback` / `ProcessSLCallback`） |
| **1583** | **`AG-audio_record`** | **`NativeAudioEngine::threadLoop`**（拉帧循环） |
| 1575 | `AG-speech_dispa` | `SpeechDispatcher::threadLoop` |
| 1576 | `AG-speech_engin` | `AGSpeechEngine` |
| 1584 | `UploadAudioThre` | 云端 ASR 上行 |
| 1455/1533/1548 | `AG-AudioManager` / `AG-GnAudioServi` / `AG-GnAudioState` | 音频管理 |

> 静态里从 `.rodata` 看到的线程名片段 `...record_engine`，真机实际是 **`AG-audio_record`**。

### 2.3 运行时基址（重启前快照，供对照）

| 库 | 基址 | 文件 | 段结构 |
|---|---|---|---|
| `libsmartbox.so` | `0x8c208000` | `/system/app/smartapp/lib/arm/libsmartbox.so` | r-xp 0 / r--p 0x1ea000 / rw-p 0x1f2000 |
| `libsaladapter.so` | `0x8c491000` | 同上 | r-xp 0 / r--p 0xb000 / rw-p 0xc000 |
| `libagaudio.so` | `0x8b740000` | 同上 | r-xp 0 / r--p 0x7000 / rw-p 0x8000 |
| `libagui.so` | `0x8c080000` | 同上 | r-xp 0 / r--p 0x36000 / rw-p 0x38000 |

> 基址**每次开机都会变**（重启后 `libsmartbox` 变为 `0x8f181000`）。
> Frida 脚本一律用 `Module.findBaseAddress()` + 文件内偏移，**绝不硬编码绝对地址**。

**关键点已实测**：`libagaudio.so` 出现在 `:core` 的 maps 中（6 个段）→
`AGModuleConfig` 确实通过 `dlopen` 动态加载了 `agaudio` 模块（静态推断成立）。

---

## 3. Hook 点实测结果（含一处重要修正）

### 3.1 实测命中情况

| 函数 | 文件偏移 | hook 效果 | 实测数据 |
|---|---|---|---|
| `OpenSLESAudioRecord::read(uchar**)` | `libagaudio+0x55e0` | ✅ 命中 | **25 次/秒**，每次固定 **5120 B**；调用者返回地址 = `saladapter+0x4784` |
| `OpenSLESAudioRecord::getAudioDataFormat` | `libagaudio+0x53f0` | ✅ 命中 | 捕获到建流时参数（16k/4ch/16bit） |
| `NativeAudioEngine::threadLoop` | `libsaladapter+0x473c` | ⚠️ 入口**不触发** | 因为 attach 时它已进入循环（`start()` 早已调用），入口只执行一次 |
| `AGSpeechEngineProxy::onRecordData` | `libsmartbox+0xea8c4` | ❌ **0 次** | 见 §3.2 修正 |
| `AGSpeechEngineProxy` thunk | `libsmartbox+0xea8f4` | ✅（结论性） | vtable 槽 `0x1ebe24` 指向此处，实际走这条 |
| `AGSpeechEngine::feed(uint,..)` | `libsmartbox+0xd455c` | ✅ 命中 | 25 次/秒，`feedIds={"1":...}`（recordId 恒为 1） |
| `WakeupEngineWrapper::feed` | `libsmartbox+0xe1c90` | ✅ 命中 | 与 `feed` 1:1 同步（唤醒支路） |
| `SpeechDispatcher::write` | `libsmartbox+0xdd464` | ✅ 命中 | ~96 次/秒，`status` 恒为 `0`；3 个不同调用者 |
| `SpeechDispatcher::onFeed` | `libsmartbox+0xdd2cc` | ⚠️ 0 次 | 会话期才触发（本次采集未进入识别会话） |

### 3.2 修正：v1 的 hook 点选错了（重要）

v1 建议 hook `AGSpeechEngineProxy::onRecordData @0xea8c4`，实测 **计数恒为 0**，一度误判为「PCM 没到回调」。
真相：

```
listener 指针         = 0xa5d6e0a8            （非空）
listener vtable       = 0x8c3f3e1c            （= libsmartbox + 0x1ebe1c）
vtable[+0x08] 槽内容  = 0x1ebe24  →  0xea8f4   （this−12 thunk）
thunk 0xea8f4 行为    = ldr r3,[r0,#0x10] (=原this+0x1c engine)
                        ldr r1,[r0,#0x14] (=原this+0x20 recordId)
                        ldr ip,[r0+..,#0x24] (=AGSpeechEngine::feed)
                        bx ip              ← 尾跳，lr 保留为 threadLoop 的返回地址
```

所以调用链是 **`threadLoop → thunk(0xea8f4) → 尾跳 feed(0xd455c)`**，
`0xea8c4` 这个「非 thunk 版本」在真机执行路径上**从未被调用**。

→ **正确 hook 点：`feed @0xd455c`（最稳，实测 25/s）或 thunk `@0xea8f4`**。
→ v1 静态分析关于 `listener 身份` 的结论是对的（`0x1ebe1c` 分毫不差），只是 hook 落点选错。

### 3.3 实测调用者图谱（决定性证据）

```
read   ← saladapter+0x4784   （threadLoop 内 0x4780 `blx r3` 的返回地址）
feed   ← saladapter+0x47ac   （threadLoop 内 0x47a8 `blx r3` 的返回地址，经 thunk 尾跳）
wake   ← smartbox+0xd45f0    （feed 内部调用 WakeupEngineWrapper::feed 的位置）
write  ← smartbox+0xe12bc / +0xe1fd4 / +0xe1334   （3 个不同调用者，各约 32 次/秒）
```

这组数据把静态分析的链路**逐跳验证到机器码级别**：

```
OpenSLESAudioRecord::read (agaudio+0x55e0, 25/s, 5120B)
   ↑ 调用者 = saladapter+0x4784
NativeAudioEngine::threadLoop (saladapter+0x473c)
   ↓ listener vptr[+8] = smartbox+0x1ebe24 → thunk 0xea8f4
AGSpeechEngine::feed (smartbox+0xd455c, recordId=1)
   ↓ map[recordId] 命中 → 唤醒支路
WakeupEngineWrapper::feed (smartbox+0xe1c90)
```

> 说明：**当前（无识别会话）数据全部走唤醒支路**。
> `SpeechDispatcher::write` 是另一条独立数据流（约 96 帧/秒、3 个调用者、status=0），
> 与麦克风帧不同步，推测是 AEC 参考 / 播放回采 / 或缓冲再分发，**【待验证】**。
> `SpeechDispatcher::onFeed` 与 4 个 `SpeechConsumer` 本次未触发 → 需要真正进入识别会话才能验证。

---

## 4. PCM 参数：三重交叉验证（已定论）

| 证据源 | 采样率 | 声道 | 位深 | 每帧 |
|---|---|---|---|---|
| `dumpsys media.audio_flinger` | 16000 Hz | 4 | PCM_16_BIT | HAL frame 1120，buffer 8960 B |
| Frida `getAudioDataFormat` | 16000 | 4 | 16 | — |
| 实测数据率换算 | 125.0 KB/s ÷ 2B ÷ 4ch ≈ 15.6k → **16 kHz** | 4 | 16 | 5120 B / 40 ms |

**最终参数（可直接用于下游）**

```
采样率      16000 Hz
声道        4（交错，int16 LE）
位深        16 bit
每帧        5120 字节 = 640 samples/ch × 4ch × 2B
帧周期      40 ms（25 帧/秒）
数据率      125.0 KB/s
容器        OpenSL ES record，SL_IODEVICE_AUDIOINPUT，preset=VOICE_RECOGNITION
```

**40 秒实测样本**：`1004 帧 / 5,140,480 字节 / 40.16 s / 125.0 KB/s`，
帧长分布 `{5120: 1004}` —— **零异常帧、零丢帧**。

---

## 5. 通道结构分析（推翻「4 麦阵列」的简单理解）

对 40 秒样本做逐通道统计：

| 通道 | RMS | 峰值 | 与 ch0 相关性 | 判定 |
|---|---|---|---|---|
| ch0 | 643.6 | 6663 | 1.000 | **真实麦克风** |
| ch1 | 681.1 | 6889 | **0.993** | **与 ch0 几乎同一路信号** |
| ch2 | 44.3 | 131 | 0.005 | 空通道 / 噪声底 |
| ch3 | 44.3 | 131 | 0.005 | 与 ch2 完全相同（互相关 1.000） |

结论：

1. **4 通道只是容器格式，实际只有 1 路有效音频**（ch0 ≈ ch1，相关 0.993）
2. ch2/ch3 是恒定低噪（峰值仅 131），**不是麦克风信号**
3. 因此**不需要做波束成形/多通道降混**；取 **ch0** 即可获得干净单声道
4. 若做 `mix4`（4 通道平均），有效信号会被 2 个空通道稀释一半 —— **不要用**

> 对「换脑子」项目的直接影响：旁路只需搬运 5120 B 中的 ch0 那 1280 B（640×2B），
> 带宽从 125 KB/s 降到 **31.25 KB/s**，且无需后处理。

---

## 6. 语音活动实证：确实录到了你说话

40 秒内的能量时间线（0.5 s 一窗，ch0 + ch1），噪声底 80–150：

```
 2.0~ 3.0 s   1483 → 872      ← 第 1 句
 9.5~10.5 s   1753 → 1416     ← 唤醒词 + 第 1 句
12.5~13.5 s   1296 → 890
21.0~21.5 s   1063 → 1580
25.0~26.5 s   1882 → 1491     ← 峰值最大，疑似设备 TTS 应答被麦克风回采
34.0~34.5 s    847 → 1548
37.0~38.0 s   1222 → 1024
```

- 信噪比 ≈ 20 dB，语音段与静音段区分明显
- 共 7 段活动，覆盖唤醒词与后续语句
- **注意**：25 秒处的强峰大概率是**设备自己播放的应答被录回**（无 AEC 或 AEC 不完全）
  → 独立助手做 VAD 时必须防「自己说自己听」

导出的单通道 WAV（16k/16bit/mono）可直接试听核对：
`_analysis/capture/ch0.wav`（推荐）、`ch1.wav`、`ch2.wav`、`ch3.wav`、`mix4.wav`（不推荐）。

---

## 7. Frida 兼容性与踩坑记录

### 7.1 版本兼容性（实测四个版本全部可用）

| 版本 | 结果 |
|---|---|
| 16.7.19 | ✅ 启动并监听（与 PC 端一致，最终采用） |
| 16.1.4 | ✅ 启动并监听 |
| 16.0.19 | ✅ 启动并监听 |
| 15.2.2 | ✅ 启动并监听 |

`frida-server` 二进制为 `ELF 32-bit LSB, machine ARM (40)`，与设备 `armeabi-v7a` 匹配。
`/data` 挂载为 `rw,nosuid,nodev`（**无 noexec**），`/data/local/tmp` 可执行。

### 7.2 踩坑记录（都会导致误判，务必注意）

| 现象 | 真实原因 | 处理 |
|---|---|---|
| `Bail out! Frida:ERROR: promise.vala:92 assertion failed (!_ready)`，exit 133 | **27042 端口已被上一个实例占用**，bind 失败走了错误处理路径 | 先 `killall fs32`，或换端口 `-l 127.0.0.1:2705x` |
| `Unable to save SELinux policy to the kernel` 警告 | magisk 域无权限写内核策略 | 无害，忽略 |
| `no such file` / 脚本 `Permission denied` | 用 `adb shell 'for ... do'` 时本地 cmd 吞掉了嵌套引号 | **一律改用脚本文件 + `Get-Content x.sh \| adb shell su`** |
| `ps -A \| grep xxx` 无输出、`awk: not found` | Android 8.1 toybox 无 `awk` | 用 `grep -c` / `cut` / `set --` 位置参数替代 |
| zygote 崩溃（系统软重启） | 见 §7.3 | 不要长期常驻 frida-server |

### 7.3 稳定性事件（重要）

一次采集过程中设备发生「自动重启」，排查结果：

```
tombstone_02  20:28  pid 280 name: main >>> zygote <<<
              signal 11 (SIGSEGV), SEGV_MAPERR, fault addr 0x6afb121f
tombstone_01  20:08  pid 31437 name: fs32 >>> /data/local/tmp/fs32 <<<
              signal 6 (SIGABRT)
uptime: 22:45（内核未重启，是 zygote/system_server 软重启）
load average: 6.69 / 7.02 / 7.51（偏高）
dropbox 中有大量 system_server_wtf
```

- **zygote 崩了** → 所有 Java 进程重启，用户感知为「重启」
- frida-server 自身也 SIGABRT 过一次（即 §7.2 的端口冲突）
- 无法证明因果，但**时间高度相关**，且设备本身负载高、系统不稳

**结论与纪律**：
1. frida-server **不常驻**，用完即 `killall fs32`
2. 单次 attach 控制在 30–60 秒内，采完立即 `unload` + `detach`
3. 不要同时开多个 frida session
4. 关键操作前记录 `pid` 与基址，zygote 重启后必须重新解析

---

## 8. PCM 获取方案（实测修正版）

| 维度 | A. thunk `0xea8f4`（原 onRecordData） | **B. `feed` `0xd455c`** | C. `write` `0xdd464` | D. `onFeed` `0xdd2cc` |
|---|---|---|---|---|
| 实测是否命中 | ✅（thunk 被 vtable 直接调用） | ✅ **25 帧/秒稳定** | ✅ ~96 帧/秒 | ❌ 本次未触发 |
| 能否拿到原始 PCM | ✅ | ✅ | ⚠️ 疑似 AEC/回采流 | ⚠️ 会话期才有 |
| 每帧字节 | 5120 | 5120 | 未测（不同源） | — |
| 与原厂的关系 | 回调入口，先于分叉 | 分叉点之前，含 recordId | 另一条独立流 | 扇出到 4 consumer |
| 复制成本 | 低 | **低（单点）** | 中（3 个调用者） | 高（×4 扇出） |
| 复核结论 | 可用，但需 hook thunk 地址 | **首选** | 仅作旁证 | 待会话期验证 |

**最终选型：`AGSpeechEngine::feed @ libsmartbox+0xd455c`**

理由（全部有实测支撑）：
1. 25 帧/秒恒定、每帧 5120 B、40 秒零丢帧 → 时序最稳定
2. 位置在「唤醒/识别」分叉**之前**，两路数据都能拿到
3. 能同时读到 `recordId`（实测恒为 1），便于判断当前处于哪条支路
4. `onRecordData` 的 thunk 版本虽然也命中，但 hook thunk 属于「实现细节」，不如符号化函数稳

---

## 9. 旁路架构（基于实测参数重算）

### 9.1 带宽核算（关键变化）

| 方案 | 原始带宽 | 说明 |
|---|---|---|
| 4 通道全搬 | 125.0 KB/s | 其中 2 路是空通道，浪费 50% |
| **只搬 ch0** | **31.25 KB/s** | 640 samples × 2B / 40ms ← **推荐** |
| ch0+ch1 | 62.5 KB/s | 两路相关 0.993，冗余 |

→ UDS 只要 31 KB/s，**共享内存环形缓冲暂时没必要**，UDS 足够且实现简单。

### 9.2 推荐链路

```
[Frida agent in :core]
  hook libsmartbox+0xd455c (feed)
    onEnter: len = args[3]; ptr = args[2]
      → 只取 ch0：按 8 字节跨步拷贝（4ch×2B）→ 1280 B / 帧
      → write(uds_fd, buf, 1280)   O_NONBLOCK，队列满则丢帧并计数
[AI 助手进程]
  读 /dev/socket/tgz02_pcm
    → 16k/16bit/mono PCM 流
    → 本地 VAD（防 TTS 回声）→ 自有 ASR/LLM
```

硬约束（防止影响原厂）：
1. hook 内**不得** sleep / 同步 IPC / 大块 memcpy（1280 B 拷贝可接受）
2. 队列满 → 丢新帧 + 计数，绝不排队
3. 不改寄存器、不改返回值
4. 单次会话 ≤ 60 秒，采完立即 detach

---

## 10. 风险与回滚

| 风险 | 证据/概率 | 缓解 | 回滚 |
|---|---|---|---|
| zygote 崩溃导致软重启 | 已发生 1 次（§7.3），时间与 attach 相关 | frida 不常驻、单次 ≤60s、避免多 session | 设备自动恢复；`killall fs32` |
| 唤醒/识别变迟钝 | hook 在采集热路径 | 只做 1280 B 拷贝 + 计数 | detach 即恢复 |
| 偏移失配（OTA 后） | 未发生 | 每次先 `sha256sum` 比对 so 与本地样本 | 重新静态分析 |
| `persist.adb.tcp.port` 被清 | 恢复出厂/清 data 时 | Magisk 模块加固（已备好 zip） | `rm -rf /data/adb/modules/tgz02_adb` |
| PCM 落盘泄露 | 采集样本在 `_analysis/capture` | 只在本机、采集完可删 | `del .\capture\*.raw` |

> **全程未修改任何 APK / so / system 文件**：所有操作仅限「运行 Frida agent」「写 /data/local/tmp 临时文件」
> 「设置 persist 属性」「写 /data/misc/adb/adb_keys」。原厂语音功能未受影响（采集期间唤醒/识别均正常）。

---

## 11. 剩余待验证项（已从 10 项收敛到 4 项）

| # | 未闭环内容 | 原因 | 验证方法 |
|---|---|---|---|
| 1 | `setRecordEngineListener` 的真实调用时刻 | attach 晚于 `AiLabsCore_init` | 开机即 attach：`frida -f com...:core -l probe.js`（spawn 模式） |
| 2 | `recordId=1` / `map value==7` 的枚举语义 | 数值已实测，含义未知 | hook `registerRecordDevice` 返回值 + 对照唤醒/识别两种场景 |
| 3 | 识别会话期的数据形态（`onFeed` + 4 个 consumer） | 本次未进入识别会话（`onFeed`=0） | 保持 hook，完整走一次「唤醒→提问→应答」再采 |
| 4 | `SpeechDispatcher::write` 的 96 帧/秒数据源 | 3 个调用者、与麦克风不同步 | hook 三个调用者地址（`smartbox+0xe12bc/e1fd4/e1334`）的上一层 |

已闭环（原 v1 待验证清单）：进程归属、采样率、声道、位深、麦克风是否常开、listener 类型、
frida 兼容性、adb 持久化、每帧长度、数据率、通道有效性。

---

## 12. 复现命令清单（实测可用）

```powershell
$adb = 'D:\GreenSoft\platform-tools\adb.exe'

# 1) 连接（重启后自动免授权）
& $adb connect 192.168.1.9:5555
& $adb devices -l

# 2) 确认目标进程（pid 会变，必须动态取）
& $adb shell 'pidof com.alibaba.ailabs.genie.smartapp:core'

# 3) 确认库已加载 + 基址
& $adb shell su -c 'grep -E "libsmartbox|libsaladapter|libagaudio" /proc/$(pidof com.alibaba.ailabs.genie.smartapp:core)/maps'

# 4) 启动 frida-server（仅需时启动）
& $adb shell su -c 'setsid /data/local/tmp/fs32 -l 127.0.0.1:27042 >/dev/null 2>&1 &'
& $adb forward tcp:27042 tcp:27042

# 5) 采集 PCM（按进程名自动找 pid，40 秒）
& 'C:\Program Files\Python311\python.exe' D:\tgz02\OS\_analysis\frida\capture_pcm.py `
    --duration 40 `
    --out  D:\tgz02\OS\_analysis\capture\pcm_talk.raw `
    --meta D:\tgz02\OS\_analysis\capture\pcm_talk_meta.txt

# 6) 分析（通道统计 + 能量时间线 + 导出 WAV）
& 'C:\Program Files\Python311\python.exe' D:\tgz02\OS\_analysis\frida\analyze_pcm.py

# 7) 立刻停止 server（重要）
& $adb shell su -c 'killall fs32'
```

配套脚本（均在本仓库）：

| 脚本 | 用途 |
|---|---|
| `_analysis/frida/capture_pcm.py` | 按进程名 attach、hook `feed`、把 PCM 实时写本机 |
| `_analysis/frida/analyze_pcm.py` | 4 通道反交错、能量时间线、导出 WAV |
| `_analysis/frida/tgz02_probe.js` | 轻量计数探针（read / onRecordData / feed） |
| `_analysis/frida/tgz02_diag.js` / `tgz02_diag2.js` | 调用者图谱 + listener 检查（含 v1 hook 点错误的发现过程） |

样本文件：`_analysis/capture/pcm_talk.raw`（5.14 MB，40.16 s）、`ch0.wav` … `ch3.wav`、`mix4.wav`。

---

## 13. 结论

1. **链路已完整验证到机器码级**：`OpenSLESAudioRecord::read`（agaudio+0x55e0）← `NativeAudioEngine::threadLoop`
   （saladapter+0x473c）→ listener vtable `0x1ebe1c` → thunk `0xea8f4` → `AGSpeechEngine::feed`（smartbox+0xd455c）
   → `WakeupEngineWrapper::feed`（smartbox+0xe1c90）。每一跳都有运行时调用者证据。
2. **参数定论**：16 kHz / 4 通道 / 16-bit / 5120 B 每帧 / 40 ms / 125 KB/s，40 秒零丢帧。
3. **通道真相**：只有 ch0（≈ch1）是有效麦克风，ch2/ch3 为空 → 旁路只需搬 ch0，**31.25 KB/s**。
4. **v1 的一处 hook 错误已修正**：`onRecordData` 实际走 thunk `0xea8f4`，`0xea8c4` 不被调用；
   但 v1 关于 listener 身份（`0x1ebe1c`）的静态推断**完全正确**。
5. **采集确实录到了语音**：7 段活动、SNR≈20 dB；含疑似 TTS 回采，助手侧需防自激。
6. **剩余 4 项**都属于「语义/时序细节」，不影响旁路落地；核心问题——**能否在不动原厂的前提下取到干净 PCM**——已经答案是「能」。
