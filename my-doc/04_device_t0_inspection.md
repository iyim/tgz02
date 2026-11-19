# TG-Z02 T0 真机前置验证报告

设备：TG-Z02（AILABS_S1L，MT8167S，Android 8.1 / API 27，armeabi-v7a）
目标：确认 `libsmartbox.so + 0xd455c` 在当前设备上的真实性、有效性与参数含义
时间：2026-11-19 10:04 – 10:22 (+08:00)
证据等级：**已实测** = 本轮真机或真机产物上实际执行得到；**静态分析** = 对真机 pull 下来的二进制做反汇编/符号分析；**尚未验证** = 本轮没取到证据。

> 本轮全部操作只读：没有写进程内存、没有改寄存器、没有调用原函数、没有建 UDS、没有发送 PCM，
> 没有修改 APK / SO / 系统分区，没有刷写。共 4 轮独立探测，结果一致。

---

## 1. 设备系统与进程信息（已实测）

| 项 | 值 |
|---|---|
| 连接 | `192.168.1.9:5555`，`adb devices -l` → `product:full_ailabs_s1l model:AILABS_S1L device:ailabs_s1l` |
| `ro.build.id` | `O11019` |
| `ro.build.display.id` | `O11019 test-keys` |
| `ro.build.version.sdk` | `27` |
| `ro.product.cpu.abi` | `armeabi-v7a` |
| `ro.yunos.product.chip` | `MT8167S` |
| `ro.build.fingerprint` | `alps/full_ailabs_s1l/ailabs_s1l:6.1.8-RS-20221104.1459/O11019/1667545132:user/test-keys` |
| shell 身份 | `uid=2000(shell)`；`su -c id` → `uid=0(root) ... context=u:r:magisk:s0` |

进程（`ps -A`，均由 zygote 6236 派生，UID `system`）：

| PID | 进程 | 是否加载 libsmartbox.so |
|---|---|---|
| 6682 | `com.alibaba.ailabs.genie.smartapp` | 否 |
| **6934** | **`com.alibaba.ailabs.genie.smartapp:core`** | **是（本轮探测目标）** |
| 7031 | `com.alibaba.ailabs.genie.smartapp:business` | 否 |

"是否加载"用 `su -c "grep -l smartbox /proc/<pid>/maps"` 分别对三个 pid 实测，只有 6934 命中。
`:core` 线程数 79（探测前后一致）。原厂语音进程本来就在运行，本轮**没有**启动或重启任何应用。

---

## 2. 实际加载的 libsmartbox.so（已实测）

| 项 | 值 |
|---|---|
| 设备路径 | `/system/app/smartapp/lib/arm/libsmartbox.so` |
| 大小 | **2,047,772 B** |
| SHA256 | **`f6e3c3543ff6da5b59bf60b884b6ce4332897c75aa6b89b8dccc0c266df80940`** |
| MD5 | `88bd1817d937a8cb55c96567c0b060ae` |
| mtime | 2026-11-17 19:45 |
| 与仓库分析副本对比 | 仓库 `system/app/smartapp/lib/arm/libsmartbox.so` 的 SHA256 **完全相同** → 与之前静态分析的是同一份文件 |

ELF（`arm-linux-androideabi-readelf -h`）：

```
Class:   ELF32
Data:    little endian
Type:    DYN (Shared object file)
Machine: ARM
Flags:   0x5000200, Version5 EABI, soft-float ABI
Entry:   0x0
Phdr:    8 program headers
```

> 结论（已实测）：设备上被加载的就是之前分析的那份 SO，没有被 OTA 或本地替换。

---

## 3. maps 与模块基址计算（已实测 + 静态分析）

`su -c "grep smartbox /proc/6934/maps"` 原始输出（`maps_smartbox.txt`）：

```
8f181000-8f255000 r-xp 00000000 b3:13 485  /system/app/smartapp/lib/arm/libsmartbox.so
8f255000-8f256000 rwxp 000d4000 b3:13 485  /system/app/smartapp/lib/arm/libsmartbox.so
8f256000-8f36c000 r-xp 000d5000 b3:13 485  /system/app/smartapp/lib/arm/libsmartbox.so
8f36c000-8f374000 r--p 001ea000 b3:13 485  /system/app/smartapp/lib/arm/libsmartbox.so
8f374000-8f376000 rw-p 001f2000 b3:13 485  /system/app/smartapp/lib/arm/libsmartbox.so
```

ELF 只有两个 LOAD 段（`readelf_l.txt`）：

```
LOAD 0x000000 0x00000000 0x1ea0ef 0x1ea0ef R E 0x1000
LOAD 0x1ea114 0x001eb114 0x09764  0x0c004  RW  0x1000
```

### 3.1 基址计算（三条独立证据，互相吻合）

1. **从 LOAD#0 推**：`Offset=0, VirtAddr=0`，maps 中 `offset 00000000` 那行的起始地址即基址 → **0x8f181000**。
2. **从 dlsym 推**：运行时 `Module.findExportByName('libsmartbox.so','_ZN14AGSpeechEngine4feedEjPKvi')` = `0x8f25555c`；静态 `st_value = 0xd455c`；`0x8f25555c − 0xd455c = 0x8f181000` ✅
3. **从 LOAD#1 推**：`VirtAddr − Offset = 0x1eb114 − 0x1ea114 = 0x1000`，故 `0x8f36c000 − 0x1eb000 = 0x8f181000` ✅
   （若拿 file offset 直接减会差 0x1000 —— 这正是"不能把 maps 第一行地址当基址"的反例）

### 3.2 三个地址概念

| 概念 | 本设备实际值 | 说明 |
|---|---|---|
| 模块加载基址（load bias） | **0x8f181000** | LOAD#0 的 vaddr 0 对应的运行时地址 |
| ELF 文件偏移 / 虚拟地址 | **0xd455c** | 该 SO 的 LOAD#0 中 `vaddr == file offset`，数值相同 |
| 目标运行时地址 | **0x8f25555c** | `base + 0xd455c` |

### 3.3 需要注意的实测现象

`0xd455c` 落在 **`8f255000-8f256000 rwxp`** 这一页（文件偏移 0xd4000，页内偏移 0x55c）——
目标函数所在页在运行时**可写可执行**。

- 已实测：运行时前 16 字节与磁盘文件字节**完全一致**（见 §5.1），本轮观测期间该页**没有被改写**。
- 静态分析：该 SO 本身只有 R E 与 RW 两个 LOAD 段，没有 RWX 段 → 这一页的可写属性是**运行时由 loader 或某个 `mprotect` 造成**。
- 尚未验证：谁、在何时把它改成 RWX（可能是 text relocation 处理，也可能是保护/自校验）。不影响 Hook，但意味着这段代码**理论上随时可能被改写**，因此每次 Hook 前都应重新比对首字节（本轮脚本已内置该检查）。

---

## 4. 目标偏移反汇编（静态分析）

`arm-linux-androideabi-objdump -d --start-address=0xd4500 --stop-address=0xd4680`，完整输出见 `disasm_0xd455c.txt`。
符号（`readelf -sW`）：

```
000d455c  192 FUNC GLOBAL DEFAULT 12 _ZN14AGSpeechEngine4feedEjPKvi
000d461c   ... FUNC GLOBAL DEFAULT 12 _ZN14AGSpeechEngine11startListenEjRK10WakeupInfo
```

即 `AGSpeechEngine::feed(unsigned int, void const*, int)`，**192 字节**，紧邻 `startListen`。

```asm
000d455c <_ZN14AGSpeechEngine4feedEjPKvi@@Base>:
  d455c: e92d48f0  push {r4, r5, r6, r7, fp, lr}
  d4560: e28db010  add  fp, sp, #16
  d4564: e24dd008  sub  sp, sp, #8
  d4568: e1a07003  mov  r7, r3              ; r7 = arg3(int)
  d456c: e3520000  cmp  r2, #0
  d4570: 0a000026  beq  d4610               ; if (arg2 == NULL) 返回
  d4574: e3570001  cmp  r7, #1
  d4578: ba000024  blt  d4610               ; if (len < 1) 返回
  d457c: e5903050  ldr  r3, [r0, #0x50]
  d4580: e1530001  cmp  r3, r1
  d4584: 1a000021  bne  d4610               ; if (this->+0x50 != arg1) 返回
  d4588: e1a0c000  mov  ip, r0
  d458c: e5bc6078  ldr  r6, [ip, #0x78]!    ; this->+0x78 容器(root)，按 arg1 查表
  ...                                       ; 遍历 + 取值 + cmp r1,#7 校验类型
  d45e4: e1a01002  mov  r1, r2
  d45e8: e1a02007  mov  r2, r7
  d45ec: ebfeebeb  bl   8f5a0 <_ZN19WakeupEngineWrapper4feedEPKvi@plt>   ; feed(data, len)
  d45f0: ea000006  b    d4610
  d45f4: e5900090  ldr  r0, [r0, #0x90]
  d45f8: e3a01000  mov  r1, #0
  d45fc: e58d1000  str  r1, [sp]
  d4600: e1a01002  mov  r1, r2
  d4604: e1a02007  mov  r2, r7
  d4608: e3a03064  mov  r3, #100              ; AGWakeupAudioStatus = 100
  d460c: ebfeebe6  bl   8f5ac <_ZN16SpeechDispatcher5writeEPKci19AGWakeupAudioStatusi@plt>
  d4610: e1a00007  mov  r0, r7                ; return len
  d4614: e24bd010  sub  sp, fp, #16
  d4618: e8bd88f0  pop  {r4, r5, r6, r7, fp, pc}
```

### 4.1 逐项回答任务 D 的 6 个问题

| # | 问题 | 结论 |
|---|---|---|
| 1 | 是否有效指令边界 | **是**。`0xd455c` 既是符号 `st_value`，也是 `push {r4,r5,r6,r7,fp,lr}` 的起点；`0xd4558` 属上一函数末尾的常量池（反汇编显示的 `ldrdeq` 是数据被误读成指令），说明 0xd455c 正好在函数边界 |
| 2 | 所属函数与功能 | `AGSpeechEngine::feed(unsigned int, void const*, int)`。校验入参后把音频缓冲**转发**给 `WakeupEngineWrapper::feed(const void*, int)` 或 `SpeechDispatcher::write(const char*, int, AGWakeupAudioStatus, int)`。它自己**不拷贝、不解码** |
| 3 | 参数寄存器与栈 | r0 = this；r1 = `unsigned int`（会话/引擎 id，与 `this+0x50` 比较，且作为 `this+0x78` 容器的 key）；**r2 = `void const*` 数据指针**；**r3 = `int` 长度**（`mov r7,r3` 后全程用 r7）；栈仅 8 字节，用来放 `SpeechDispatcher::write` 的第 5 个参数 0 |
| 4 | 是否出现 PCM 指针/长度迹象 | **有**。`cmp r2,#0` + `cmp r7,#1` 是"指针非空 + 长度正数"守卫；随后把 `(r2, r7)` 原样作为 `(ptr, len)` 传给下游；返回值也是 `len`。这是 PCM 缓冲入口最典型的形态 |
| 5 | Thumb/ARM 状态 | **ARM 模式**。`st_value = 0xd455c` 为偶数（Thumb 会置最低位 1），编码 `e92d48f0` 是 ARM 的 `push`。Frida 会自动处理，不需要手动 `|1` |
| 6 | 与之前分析的 Hook 点是否一致 | **一致**。偏移、符号名、192 字节长度以及之前脚本内置的 16 字节签名 `f0 48 2d e9 10 b0 8d e2 08 d0 4d e2 03 70 a0 e1` 与本文件字节逐一相同 |

> 以上为**静态分析**结论。"r2 是数据、r3 是长度"在 §5 被运行时观测独立印证；"这块内存就是原厂麦克风 PCM"另见 §6 的采样证据。

---

## 5. Frida 真机动态验证（已实测）

环境：设备端 `/data/local/tmp/fs32`（arm32 frida-server），`adb forward tcp:27042 tcp:27042`，PC 端 frida 16.7.19。
脚本与驱动：`t0_probe.js`（地址与字节 + 30 s 观察）、`t0_probe2.js`（帧率/间隔/缓冲/通道统计）、`t0_probe3.js`（单帧样本级比对），驱动统一为 `t0_probe_run.py`（Python 直接以 UTF-8 落盘日志）。

所有脚本的约束：只读 `args`、只读内存、不改寄存器、不调用原函数；到点自动 `detach()` 并清定时器。
共执行 4 轮（3 轮采集 + 1 轮复采），结论一致；下面引用的是最终日志。

### 5.1 地址与运行时字节（`t0_run_idle.log`）

```
[i] target pid = 6934
[i] attached
[i] libsmartbox.so base = 0x8f181000  (0x8f181000)
[i] dlsym(_ZN14AGSpeechEngine4feedEjPKvi) = 0x8f25555c
[i] symbol offset = 0xd455c  vs target 0xd455c match = true
[i] target runtime addr = 0x8f25555c
[i] runtime[16] = f0482de910b08de208d04de20370a0e1
[i] diskfile[16] = f0482de910b08de208d04de20370a0e1
[i] bytes identical = true
[i] first insn: push {r4, r5, r6, r7, fp, lr}
[i] second insn: add fp, sp, #0x10
```

**结论**：`base + 0xd455c` 在运行时就是 `feed` 的第一条指令，且**运行时字节与磁盘文件逐字节相同**（无运行时加壳/解密）。

### 5.2 目标函数是否触发（`t0_run_idle.log`）

设备**完全静默**（无人工语音输入）情况下：

```
[FIRST] tid=7477 r0(this)=0x904b1080 r1=0x1 r2(data)=0x8b404400 r3(len)=5120
[FIRST] data[0..64) = 0300f2ff b8ffb8ff 0c00f3ff b8ffb8ff fefffeff b8ffb8ff ...
[RUN 5.0s]  calls=124 threads=1 lens={"5120":124} nullPtr=0 readFail=0 hookEx=0
[RUN 10.0s] calls=250 threads=1 lens={"5120":250}
[RUN 15.0s] calls=374 threads=1 lens={"5120":374}
[RUN 20.0s] calls=500 threads=1 lens={"5120":500}
[RUN 25.0s] calls=624 threads=1 lens={"5120":624}
[FINAL 30.0s] calls=749 threads=1 lens={"5120":749}
[i] listener detached
```

- **749 次 / 30 秒**
- **唯一线程 tid=7477**，`/proc/6934/task/7477/comm` = **`AG-audio_record`**
- **长度恒为 5120**（`lens` 只有 5120 一个键，无例外）
- 指针非空、内存可读（`nullPtr=0 readFail=0 hookEx=0`）

### 5.3 帧率、缓冲区复用、通道统计（`t0_run_stats.log`）

```
[FINAL 30.0s] calls=750 rate=25.00/s threads=1 lens={"5120":750}
             distinctPtrs=1 interval(ms) min=1 avg=40.00 max=139 hashDup=0
[CH] frames=60 (640 groups x 4ch int16)
[CH] ch0 min=-195 max=85  mean=-62.47 nonzero=99.7%
[CH] ch1 min=-199 max=85  mean=-63.45 nonzero=99.8%
[CH] ch2 min=-72  max=-72 mean=-72.00 nonzero=100.0%
[CH] ch3 min=-72  max=-72 mean=-72.00 nonzero=100.0%
[PTR] data ptrs seen: 0x8b404400
```

| 观测项 | 值 | 含义 |
|---|---|---|
| 调用速率 | **24.88 – 25.07 次/秒**（4 轮） | ≈ 25 fps |
| 调用间隔 | avg **39.97 – 40.18 ms**，min 1–9 ms，max 134–143 ms | 平均正是 40 ms，偶有抖动 |
| data 指针 | **只有一个：0x8b404400** | **同一缓冲区被反复复用** → 旁路必须在 hook 内同步拷贝 |
| 帧内容 FNV（前 64 B） | `hashDup=0`（750 帧无重复） | 内容是活的 |

### 5.4 单帧样本级比对（`t0_run_single_frame.log`）

```
[ONE] tid=7477 data=0x8b404400 len=5120
[ONE] first 32 int16 (4ch interleaved):
      -52,-67,-72,-72, -49,-68,-72,-72, -66,-92,-72,-72, -64,-80,-72,-72,
      -57,-77,-72,-72, -55,-65,-72,-72, -48,-59,-72,-72, -42,-71,-72,-72
[ONE] ch0!=ch1 samples = 626/640
[ONE] ch0!=ch2 samples = 633/640
[ONE] ch2!=ch3 samples = 0/640
[ONE] ch2 first=-72 ch3 first=-72 last ch2=-72 ch3=-72
```

---

## 6. 参数观察结果与 PCM 初步证据（已实测）

### 6.1 参数寄存器（运行时与静态分析一致）

| 寄存器 | 含义 | 实测值 |
|---|---|---|
| r0 | `this`（AGSpeechEngine 实例） | 0x904b1080 |
| r1 | `unsigned int` 会话/引擎 id | 0x1 |
| **r2** | **`void const*` 音频数据指针** | **0x8b404400**（固定复用） |
| **r3** | **`int` 字节长度** | **5120**（4 轮、全部调用无例外） |

### 6.2 是否有 PCM 证据

| 证据 | 结论 |
|---|---|
| 5120 B / 40 ms / 连续不断 | 已实测 |
| 每帧 640 组 × 4 个 int16（=5120 B）交错 | 已实测（样本级） |
| ch2 / ch3 在 60 帧内恒为 **−72**（首、末值都是 −72） | 已实测 → 两路是**恒定 DC**，不携带音频 |
| ch0 / ch1 有起伏（ch0 −234…125，ch1 −237…127，多轮区间），非零样本 99.7% | 已实测 → 两路承载**实际信号** |
| ch0 与 ch1 在 640 个样本中有 621–627 个不同 | 已实测 → **两路独立近邻信号**（双麦），不是复制 |
| 帧内容逐帧变化（FNV 无重复） | 已实测 |

**对原假设的修正**：

- "5120 字节 / 40 ms / 4 通道交错" → **三条全部得到实测支持**。
- "只有 ch0 有数据" **不准确**：实测 **ch0 与 ch1 都有信号**（相近但不等），**ch2/ch3 恒定 −72**。
  采样阶段若只取 ch0 会丢掉 ch1；若用"ch0 有信号、其余静音"做静音判据也需重写。

### 6.3 尚未验证

- 这段信号**是否就是麦克风原始 PCM**（而非已过增益/降噪/重采样的中间结果）：本轮只能证明它是"来自原厂录音线程、16 kHz 量级的音频缓冲"，未与原厂 `AudioRecord` 源数据做位级对照。
- 采样率 **16000 Hz 仍是假设**（由"640 样本 / 40 ms"推出，本轮没有独立测时钟）。
- 语音交互期间的帧率/长度是否变化：**未单独实测**（无人工语音输入手段，且本轮禁止回灌音频）。

---

## 7. 脚本清单

| 文件 | 作用 |
|---|---|
| `t0_probe.js` | 基址、dlsym 偏移交叉验证、运行时 vs 文件字节、首两条指令、30 s 只读 hook（tid/参数/长度/首次采样） |
| `t0_probe2.js` | 帧率、调用间隔、缓冲区复用、前 60 帧四通道 min/max/mean、内容变化检测 |
| `t0_probe3.js` | 单帧样本级：ch0 vs ch1 vs ch2 vs ch3 逐样本比对、前 32 个样本落盘 |
| `t0_probe_run.py` | 统一驱动：attach → 载入 JS → 收集输出 → UTF-8 落盘 → detach |

脚本内置：符号偏移校验 → 运行时字节比对 → 通过后才 attach；到点自动 `detach()` + 清定时器；无效 listener 不谎称已卸载。
日志由 Python 侧以 UTF-8 写出、且脚本输出全为 ASCII，避免 Windows 控制台编码问题（前两轮曾因此产生乱码，已修正重采）。

---

## 8. 异常、崩溃与失败记录

| # | 现象 | 判断 |
|---|---|---|
| 1 | 调用间隔 min = 1–9 ms、max = 134–143 ms（avg 40.00 ms） | 偶发成对/延迟到达，`Date.now()` 精度 1 ms + 调度抖动；总量正常（750 次 / 30 s） |
| 2 | 目标所在页 `rwxp` | 已实测该页运行时字节未被改写；"谁把它设成 RWX"未查明（见 §3.3） |
| 3 | shell 下 `grep /proc/6934/maps` → `Permission denied` | 正常（uid 2000 读不到 system 进程），改用 `su -c` 后成功 |
| 4 | 设备端 frida-server 本轮由我手动拉起（此前已被 kill） | 环境复原，不是故障 |
| 5 | 前两轮日志中文乱码 | **我自己采集方式的问题**：PowerShell 控制台按 GBK 解码 Python 的 UTF-8 输出。已改为 Python 直写 UTF-8 + 脚本输出全 ASCII，并重采 3 轮，最终日志 0 个替换字符 |
| 6 | 4 轮 attach/detach 后进程状态 | 三个 pid 与状态均未变（6682/6934/7031，`SyS_epoll_wait`），**无崩溃、无 ANR、无重启**，无 tombstone |

---

## 9. 对任务 6 个问题的直接回答

1. **`libsmartbox.so + 0xd455c` 是否仍然有效？**
   **有效（已实测）**。SO 的 SHA256 与仓库分析副本一致；`dlsym` 返回 `0x8f25555c`，减基址 `0x8f181000` 正好 `0xd455c`；该地址是 `push {r4,r5,r6,r7,fp,lr}` 的指令边界；运行时 16 字节与磁盘文件逐字节相同。

2. **是否确认目标函数会在语音交互时触发？**
   **已实测会触发，且比预期更强**：设备静默时即以 **24.88–25.07 次/秒** 持续触发，唯一线程 `AG-audio_record`。语音交互期间是否改变频率/长度**未单独实测**。

3. **是否找到候选 PCM 数据指针和长度？**
   **找到了（已实测）**：`r2 = 0x8b404400`（固定复用缓冲）、`r3 = 5120`。静态分析给出同一结论。
   **注意**：缓冲区只有一个，必须在该回调内同步拷贝。

4. **是否有证据支持 5120 字节 / 40 ms / 4 通道？**
   **三条都有量化证据（已实测）**：5120 B 恒定；平均间隔 40.00 ms、速率 ≈25/s；每帧 640 组 × 4×int16，ch2/ch3 恒 −72、ch0/ch1 有信号且互不相同。
   **同时修正**：不是"只有 ch0 有信号"，而是 **ch0 与 ch1 都有信号**，ch2/ch3 为恒定 DC。

5. **是否可以进入下一阶段（PCM 只读采集 + UDS 发送）？**
   **技术上可以，但有四个前置条件需先处理（由审查方决定）**：
   - 缓冲区单实例复用 → 采集**必须**在 hook 回调内同步拷贝，不能延后到定时器；
   - 单生产者只在 4 轮各 30 s 窗口内观测到（tid=7477），长期单线程性仍未证明 → SPSC 仍应保留运行时守卫；
   - 放弃"只取 ch0"的假设，先确认下游要 ch0 还是 ch0+ch1；
   - hook 期间 CPU 增量未测（设备本底 `xengine_main` 已占 ~75% 单核），建议先 `DRY_RUN` 只统计不发送。

---

## 10. 原始数据文件

| 文件 | 内容 |
|---|---|
| `proc_6934_maps.txt` | `:core` 完整 maps（2505 行） |
| `maps_smartbox.txt` | 只含 libsmartbox.so 的 5 条映射 |
| `readelf_h.txt` / `readelf_l.txt` | ELF 头 / 程序头 |
| `disasm_0xd455c.txt` | `0xd4500`–`0xd4680` 反汇编 |
| `device_so_metadata.txt` | 设备侧 SHA256 / 大小 / fingerprint |
| `t0_run_idle.log` | 第一轮日志（基址、符号、字节比对、749 次调用） |
| `t0_run_stats.log` | 第二轮日志（帧率、间隔、缓冲区、四通道统计） |
| `t0_run_single_frame.log` | 第三轮日志（单帧样本级比对） |
| `t0_probe*.js`, `t0_probe_run.py` | 探测脚本与驱动 |

> 设备 SO 本体（2,047,772 B）未重复入库：与仓库已有的 `system/app/smartapp/lib/arm/libsmartbox.so` **SHA256 完全相同**，校验值见 §2。
