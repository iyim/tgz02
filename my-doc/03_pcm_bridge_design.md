# 第三阶段：PCM 旁路桥（PCM Bridge）架构与技术选型

设备：TG-Z02（CCH）· `AILABS_S1L` / `full_ailabs_s1l` · MT8167S · armeabi-v7a · Android 8.1 / API 27
目标进程：`com.alibaba.ailabs.genie.smartapp:core`
前置文档：`01_audio_record_analysis.md`、`01_audio_record_analysis_supplement.md`、`02_runtime_pcm_verification.md`

标记说明（全文统一，见 `03_pcm_bridge_review.md`）：

| 标记 | 含义 |
|---|---|
| **W-PC** | Windows 主机实测（AF_UNIX SOCK_STREAM） |
| **A-SHELL** | Android 普通进程实测（TG-Z02 `/data/local/tmp`，shell 域，不注入） |
| **T-DEV** | TG-Z02 **原厂进程内**实测（`smartapp:core` + hook）—— 本轮为 0 |
| **S-RE** | 静态逆向证据（反汇编 / ELF） |
| **U** | 尚未验证 |

本阶段**不改原厂 APK / SO / 系统分区**，也**不在真机上落地本方案**，只交付设计与电脑端原型。

---

## 0. 目标与边界

### 0.1 要做的事

```
原厂 smartapp:core
       |
       | AGSpeechEngine::feed(uint type, const void* data, int len)   ← 已实测唯一必经点
       |
       +---- 原厂处理流程（一个字节都不动）
       |
       +---- 复制 ch0（5120 → 1280 B）
                    |
              有界环形缓冲（64 帧）
                    |
              独立发送线程（非阻塞 send）
                    |
              AF_UNIX socket
                    |
             独立 AI 助手进程
                    |
              16 kHz / 单声道 / 16 bit PCM
```

### 0.2 明确不做

- 不替换唤醒词、不做 ASR/VAD/LLM 接入（下一阶段）
- 不改原厂 `feed` 的参数、返回值、寄存器、栈
- 不接管麦克风设备（不抢 `/dev/snd`，不并发开 `AudioRecord`）
- 不动 preloader / GPT / NVRAM / NVDATA / boot / system 镜像

### 0.3 本阶段成功判据

| 判据 | 门槛 |
|---|---|
| PCM 能通过独立通道稳定送达 | 连续 10 分钟，丢帧率 0（无外部压力时），载荷逐帧可校验 |
| 不阻塞原厂录音线程 | 生产者节拍误差 ≤ 1 ms，且接收端停摆 2 s 时仍不阻塞 |
| 不破坏原厂链路 | 旁路任一步失败即静默失效，原厂唤醒/识别不受影响 |
| 可完整回滚 | 卸载清单精确到文件，重启后系统回到原状 |

---

## 1. 现状复核：本阶段新增的静态证据

第二阶段结论继续有效（16 kHz / 4ch / 16 bit / 5120 B / 40 ms / 只有 ch0 有效）。
本阶段为「设计可落地」补了三块证据，都是**反汇编直接读出来的**，不是推断。

### 1.1 `feed` 的真实签名与内部分支（修正一处命名不精确）

`02` 文档里把入口写成 `feed(uint)`，那只是 mangled name 的前半截。实际：

```
_ZN14AGSpeechEngine4feedEjPKvi  ==  AGSpeechEngine::feed(unsigned int, void const*, int)
  0xd455c  push  {r4,r5,r6,r7,fp,lr}
  0xd4568  mov   r7, r3            ; r7 = len
  0xd456c  cmp   r2, #0            ; data == NULL ?
  0xd4574  cmp   r7, #1            ; len < 1 ?
  0xd457c  ldr   r3, [r0, #0x50]   ; this->0x50 = 本引擎认的 recordId
  0xd4580  cmp   r3, r1            ; r1 = type，不匹配直接 return len
  0xd458c  ldr   r6, [ip, #0x78]   ; this->0x78 = std::map<uint, ...> 头
  0xd45d4  ldr   r1, [r3, #0x14]   ; map[type] 的值
  0xd45d8  cmp   r1, #7
  0xd45dc  bne   0xd45f4           ; != 7 → 走 this->0x90（另一条链路）
  0xd45e0  ldr   r0, [r0, #0xa4]   ; == 7 → this->0xa4 = WakeupEngineWrapper*
  0xd45ec  bl    #0x8f5a0          ; PLT → WakeupEngineWrapper::feed
  0xd45f4  ldr   r0, [r0, #0x90]   ; 非唤醒链路
  0xd460c  bl    #0x8f5ac          ; PLT，第 5 个参数塞 0x64(100) 到栈
  0xd4610  mov   r0, r7            ; 返回值就是 len
```

三个直接后果：

1. **`capture_pcm.py` 里 `args[2]` 取指针、`args[3]` 取长度是对的**（r0=this、r1=type、r2=data、r3=len）。
2. 第二阶段悬案「`recordId=1` / `map value==7` 是什么」现在能定性一半：`type` 必须等于 `this+0x50` 才会被处理，函数自己就过滤了；`map[type]` 的值决定是走唤醒链路还是走 `this+0x90` 链路。**数值语义仍未闭环**（不知道 7 对应哪个枚举），但**不影响旁路**——旁路在入口处复制，两条分支都能看到。
3. 返回值恒为 `len`，旁路绝不能碰 r0。

### 1.2 两个 thunk 都在 ARM 模式，且都走 vtable+0x24

```
0xea8c4 (ARM)  push {fp,lr}; ldr r3,[r0,#0x1c]; r1=[r0,#0x20]; r0=[r3]; ip=[r0,#0x24]; bx ip
0xea8f4 (ARM)  push {fp,lr}; ldr r3,[r0,#0x10]; r1=[r0,#0x14]; r0=[r3]; ip=[r0,#0x24]; bx ip
```

两者结构一致，只是从 proxy 里取 `(engine*, recordId)` 的偏移不同（`0x1c/0x20` 对 `0x10/0x14`）。
它们都通过 `vtable+0x24` 尾调，而 `0xd455c` 正是该槽的实现。

结论：**`feed` 是两条路都汇合的唯一收口**，hook 它一次就够，不要去 hook thunk（第二阶段那次误判就是因为 hook 了没被调用的那个）。

### 1.3 符号是导出的 → 不必硬编码偏移

```
readelf --dyn-syms libsmartbox.so | grep 4feedEjPKvi
  3450: 000d455c  192 FUNC GLOBAL DEFAULT 12 _ZN14AGSpeechEngine4feedEjPKvi
sha256(F6E3C3543FF6DA5B59BF60B884B6CE4332897C75AA6B89B8DCCC0C266DF80940)  size=2047772
```

`GLOBAL DEFAULT` 在 `.dynsym` 里，意味着设备上可以 `dlsym(RTLD_DEFAULT, "_ZN14AGSpeechEngine4feedEjPKvi")` 拿到地址，
再和模块基址相减得到偏移，与 `0xd455c` 对账。**这是后面 §7 偏移漂移检测的第一道闸。**

### 1.4 电脑端能力实测（决定原型怎么写）

| 事实 | 结果 | 影响 |
|---|---|---|
| CPython 3.11.9 有 `socket.AF_UNIX` | **没有**（属性不存在） | Python 无法直接建 UDS |
| Windows 10 19045 内核支持 AF_UNIX | **支持** | C + winsock 可以 |
| Windows 上 `AF_UNIX + SOCK_STREAM` | **可用**（bind/listen/connect/send 全通） | 原型主路径 |
| Windows 上 `AF_UNIX + SOCK_DGRAM` | **不可用**（`WSAEPROTONOSUPPORT 10047`） | dgram 只能在 Linux/Android 上验 |
| 本机有 WSL / Docker / Podman | **都没有** | 拿不到 Linux 环境跑 dgram |

所以电脑端原型两端都用 C 写（`uds_sink.c` / `uds_source.c`），Python 只做编排与离线校验。
这不是妥协产物：**这两个 C 文件就是设备侧原生实现的同构骨架**，去掉 `#ifdef _WIN32` 就能用 NDK 编到 arm。

---

## 2. 硬约束 → 设计手段 → 验证方式

| 约束（任务书原文） | 设计手段 | 怎么验 |
|---|---|---|
| Hook 内不允许 sleep | hook 内只有 `memcpy(1280B)` + 入队，无任何等待 | 生产者 push 耗时（`push_us_max`）实测 |
| Hook 内不允许同步 IPC | socket 写全部搬进独立线程 | 代码结构 + 接收端停摆不产生阻塞 |
| 不允许改参数/返回值/寄存器 | 只读 r2/r3，不写 context | 原厂唤醒/识别在真机短测中必须正常 |
| 不允许耗时操作 | 无分配（缓冲预分配）、无加锁（acquire/release 原子操作） | push 耗时 + 节拍误差 |
| 使用有界缓冲区 | 64 slot 环形，1320 B/slot ≈ 84 KB | 容量与 depth_max 监控 |
| 满则丢帧不阻塞 | `push` 返回 0 即丢，永不等待 | `ring_drop` 计数 + 节拍不倒 |
| 独立线程发送 | 专用 pthread/CreateThread | 线程名/CPU 占用 |
| 丢帧/失败/状态统计 | seq 缺口 + ring_drop + send_drop + 延迟分位 | 两端 SUMMARY 对账 |
| 旁路失败不影响原厂 | socket 建不起来就整体静默失效 | 断开助手进程后原厂仍工作 |

---

## 3. 线程与内存模型

```
音频线程（原厂）           发送线程（旁路）             助手进程
     |                          |                        |
 onEnter(feed)                  |                        |
   len==5120? (len%8==0?)       |                        |
   取 ch0: 640 次 2B 拷贝       |                        |
   ring_push() ──┐              |                        |
   return（不再做事）            |                        |
                 │  无锁 SPSC   │                        |
                 └────────────► ring_pop()              |
                                  sendto() 非阻塞 ───────► recv()
                                  EAGAIN → 丢 + 计数      校验 → 交给 VAD
```

关键取舍：

1. **环形缓冲 64 帧（2.56 s）**。取太小，一次 GC/调度抖动就丢一大片；取太大，堆积的旧帧会变成"过期语音"，延迟不可控。2.5 s 足够吸收 Android 侧的偶发卡顿，又不至于把对话延迟拖到不可用。
2. **丢在哪一层都要计数**：`ring_drop`（上游丢）与 `send_drop_wb`（下游丢）分开记，否则出问题时无法判断是旁路慢还是助手慢。
3. **只搬 ch0**：125 KB/s → 31.25 KB/s，四倍余量，且 ch1 与 ch0 相关 0.993（复制品），ch2/ch3 是空通道。搬 ch0 一个通道不损失信息。
4. **帧不做时间戳换算**：直接用 `CLOCK_MONOTONIC` 微秒写进帧头，同机两个进程共享同一时钟源，延迟就能直接减出来，不需要 NTP/PTP 那套。

---

## 4. 三种实现方案比较（A / B / C）

### A. Frida JavaScript Hook + NativeFunction 调 libc socket/send

**做法**：`Interceptor.attach(feed)` 里 `readByteArray` 取 5120 B，在 JS 里按 8 字节步长抽 ch0 到预分配的 `Memory.alloc` 环形区，`setInterval`（跑在 Frida 自己的线程）把帧交给 `NativeFunction(libc.sendto)`。

UDS 在 JS 里怎么建（任务书要求写清楚）：

```javascript
const libc = {
  socket:  new NativeFunction(Module.getExportByName('libc.so', 'socket'),  'int', ['int','int','int']),
  sendto:  new NativeFunction(Module.getExportByName('libc.so', 'sendto'),  'long',['int','pointer','ulong','int','pointer','int']),
  connect: new NativeFunction(Module.getExportByName('libc.so', 'connect'), 'int', ['int','pointer','int']),
  fcntl:   new NativeFunction(Module.getExportByName('libc.so', 'fcntl'),   'int', ['int','int','int']),
};
// AF_UNIX=1, SOCK_DGRAM=2, SOCK_STREAM=1；O_NONBLOCK 在 arm 上是 0x800
const fd = libc.socket(1, 2, 0);
// sockaddr_un 必须手工拼：2 字节 family + 路径（Linux 上 108 字节容量）
const sa = Memory.alloc(110);
sa.writeU16(1);                       // sun_family = AF_UNIX (小端)
sa.add(2).writeUtf8String('/data/local/tmp/tgz2_pcm.sock');
libc.fcntl(fd, 4 /*F_SETFL*/, 0x800 /*O_NONBLOCK*/);
libc.connect(fd, sa, 110);            // dgram 也可以不 connect，改用 sendto
```

- 好处：**零编译、改一行动一处**，第二阶段已经在用，调参最快。
- 代价（实测与结构性）：
  1. 每帧一次 `readByteArray` + 一次 `sendto`，25 次/秒，单帧 1280 B 拷贝 + JS 侧抽取（640 次循环）。开销本身可接受（微秒级），但 **JS 运行时与目标线程共享**：任何一次 Frida 的 GC 或脚本解析都会直接压在音频线程上。
  2. **`frida-server` 必须常驻**才能长期工作。这与本项目 §6 安全要求（不常驻、不监听 0.0.0.0、单 session）直接冲突，也与第二阶段观察到的 `fs32` SIGABRT / zygote SIGSEGV 无法排除关联。
  3. Frida 的 `send()` 消息队列是**无界**的；把 4096 帧/分钟的二进制往宿主推，宿主一慢就在 `:core` 里攒内存。
- **结论：只做验证工具，不做产品形态。**

### B. 原生 SO + 内联 Hook + 专用发送线程（推荐）

**注入方式**：Zygisk 模块（Magisk 自带能力，本机 Magisk 工作正常）。

- `zygisk_module_entry` → `postAppSpecialize`：目标包名 `com.alibaba.ailabs.genie.smartapp` 且进程名后缀 `:core` 时，`dlopen("libtgz2bridge.so")` 并调其 `tgz2_init()`。
- 时序问题：进 `postAppSpecialize` 时 `libsmartbox.so` 通常**还没加载**。两条路：
  - hook `android_dlopen_ext`，等 `libsmartbox.so` 的 `dlopen` 完成回调里再装 hook（推荐，稳）；
  - 或在 `:core` 的 `JNI_OnLoad` 后延迟轮询 `dl_iterate_phdr`。
- 内联 hook 用现成库（Dobby / ShadowHook / xhook 皆可），不要手写 trampoline：ARM32 下 `push {r4..r7,fp,lr}` 6 条指令 24 字节，需要 32 字节以上的跳板空间，手写容易踩 Thumb/ARM 混编与 cache flush（`__builtin___clear_cache`）。
- 运行时**无守护进程、无调试端口**，进程死掉旁路跟着消失，符合"不常驻"。

- 代价：要写 C、要编 arm 库、崩了要靠 Magisk 安全模式（开机音量键）恢复。所以**必须先有 A 的短时验证数据**再上 B。

### C. 其他路线（逐条否掉，理由留档）

| 路线 | 为什么不用 |
|---|---|
| 另一个 app 用 `AudioRecord` 抢麦 | Android 8.1 上非特权应用并发采集会打断原厂录音；改 `audio_policy` 又要动 system 分区。违背"不破坏原厂" |
| root 守护进程直接读 `/dev/snd/pcmC*D*c` | 同一 PCM 设备不能被两个读者共享，读走就把原厂流抽干了 |
| 在 `audioserver` / HAL 侧抓 | 要替换系统库，动 `/system`，风险与工作量都高于 B，且拿不到 `feed` 处的"原厂认过的数据" |
| `LD_PRELOAD` / `wrap.sh` | 需要应用 debuggable 或改包重签，等于改原厂 APK，直接排除 |
| 直接把 PCM 推给宿主机（`frida send` → adb） | 只能做实验；产品形态要求脱机可用，且 adb 断连就断流 |
| 共享内存（ashmem/memfd）+ futex 替代 UDS | 可行且更快，但要在两端做内存生命周期管理；UDS 31 KB/s 远远够用，先选简单可靠的 |

### 推荐路线

| 阶段 | 形态 | 理由 |
|---|---|---|
| 现在（阶段 3） | **A 做 30 秒真机短测**，电脑端 C 原型证明通道 | 快速拿到"旁路确实可行"的数据 |
| 阶段 4 | **B（Zygisk + 原生 SO）** 作为常驻形态 | 无守护进程、可随模块卸载、崩溃可恢复 |
| 阶段 5 | 助手进程接 VAD/ASR | 与本桥解耦，换实现不影响桥 |

---

## 5. UDS 协议与传输细节

### 5.1 帧格式（40 B 头 + 1280 B 载荷 = 1320 B，协议 **v2**）

| off | size | 字段 | 说明 |
|---|---|---|---|
| 0 | 4 | magic | `'TGZ2'` = `0x325A4754` |
| 4 | 1 | ver | **=2**（v1→v2 的唯一变化：字段 20 语义） |
| 5 | 1 | flags | bit0 合成数据（原型用），bit1 语音活动 |
| 6 | 2 | hdr_len | =40 |
| 8 | 4 | seq | 生产序号，**每个 epoch 内**单调 +1，**缺口即丢帧** |
| 12 | 8 | ts_us | 采集时刻，`CLOCK_MONOTONIC` 微秒（跨进程同机可直接相减） |
| 20 | 4 | epoch | **发送端实例标识**，进程重启即变；接收端据此重开会话 |
| 24 | 4 | rate | 16000 |
| 28 | 2 | ch | 1 |
| 30 | 2 | bits | 16 |
| 32 | 4 | payload_len | 1280 |
| 36 | 4 | crc | FNV-1a(payload) |

v1 的字段 20 是 `frames_total`（= seq+1，与 seq 重复）。改成 `epoch` 之后，
**"发送端重启导致的序号跳变"与"真的丢帧"就能分开**；`ver` 同时提到 2，
老接收端会明确拒收而不是误读 —— 这一点由 W-PC 与 A-SHELL 两侧的独立校验器验证。

全部**手工小端序列化**，不用 `struct`：ARM EABI 会把 `uint64` 对齐到 8 字节，`packed` 前的结构体是 48 字节不是 40。
电脑端原型与 Python 校验器就是按这张表各自独立实现的，`verify_capture.py` 能对上 = 这张表没写错。

### 5.2 dgram 优先，stream 兜底

| | dgram | stream |
|---|---|---|
| 帧边界 | 内核保证，一次 `recv` = 一帧 | 需自己重组 |
| 满时行为 | `sendto` 返回 `EAGAIN/ENOBUFS`，天然丢帧 | 可能半帧（`send` 返回 < 1320） |
| 半帧处理 | 不存在 | 放弃剩余字节，接收端靠 magic 重同步 |
| Windows 原型 | **不可用**（10047） | 可用 |

选择规则：Android/Linux 用 **dgram**；只有 Windows 原型被迫用 stream（也因此把 stream 这条更脆的路先跑通、先测透）。
接收端无论如何都要实现 magic 重同步，因为助手进程可能被 kill 后重启，残帧会留在缓冲里。

**A-SHELL 实测（TG-Z02 普通进程，`android_uds_test/`）——两条推翻原先假设的事实：**

1. **满缓冲报的是 `EAGAIN`（errno 11），不是 `ENOBUFS`。** 接收端冻结 2 秒、收发缓冲各 8 KB 时：
   客户端 `ok=258 / eagain=42 / enobufs=0 / other=0`。`ENOBUFS` 是 netlink/packet 套接字才常见的错误。
   → 代码两者都判，但文档与注释以 `EAGAIN` 为准。
2. **`SO_SNDBUF/SO_RCVBUF` 请求 8192 → 内核回读 16384。** Linux 把设置值翻倍，实际可用约 10 帧（1320 B/帧）。
   → "把缓冲设成 8 KB"要按"内核报告 ~16 KB"来估算延迟上限（16384 / 31.25 KB/s ≈ 0.5 s）。

### 5.3 非阻塞的准确含义

- 发送端 socket 一律 `O_NONBLOCK`（`fcntl F_SETFL`；arm 上 `O_NONBLOCK=0x800`）。
- `sendto` 返回 `-1` 且 `errno∈{EAGAIN,EWOULDBLOCK,ENOBUFS}` → **丢这一帧，计 `send_drop_wb`**，绝不重试、绝不 select 等待。
- `send` 返回 0< n <1320（stream 半帧）→ **不再追写**（追写必然继续阻塞），计 `send_partial`，交给接收端重同步。
- 帧内**绝不**出现 `poll/select/usleep`。发送线程空闲时用 **1 ms** `nanosleep` 轮询环形缓冲（实测代价：本进程 CPU 1.2%~1.9%，稳态延迟 P50 约 1 ms）。若要把这 1 ms 也省掉，用 `eventfd` 唤醒**会**在 hook 里多一次 `write()` 系统调用——按"hook 内不做 IPC"的硬规则，这里选择轮询而不是唤醒。

### 5.4 缓冲预算

| 环节 | 大小 | 时间当量 |
|---|---|---|
| 载荷 | 1280 B | 40 ms |
| 环形缓冲 64 slot | 84 KB | 2.56 s |
| `SO_RCVBUF` 建议 | 128 KB | ≈100 帧 ≈ 4 s |
| 稳态带宽 | 31.25 KiB/s | — |

### 5.5 延迟上限由内核缓冲决定（实测教训）

电脑端原型量到一件**必须写进设计**的事：慢消费者场景下，延迟不是由我们的环形缓冲决定，而是由
**内核 socket 缓冲 / 31.25 KB/s** 决定。

| 配置 | P50 延迟 | P95 | 最大 | 结论 |
|---|---|---|---|---|
| 默认缓冲（发送端不限） | 1.62 s | 2.91 s | 4.20 s | 内核替我排了 4 秒队 |
| `SO_SNDBUF = 8192` | 299 ms | 425 ms | 442 ms | 上限被压到 ≈ 缓冲/带宽 |

所以设备侧定案：

- 发送端 **必须显式设 `SO_SNDBUF`**（建议 8 KB ≈ 6 帧），否则一次助手侧卡顿就会变成"4 秒前的语音"。
- 接收端 `SO_RCVBUF` 同理设小（4~8 帧）。两个一起设，延迟上限 ≈ 0.3 s，超出就丢帧。
- 更稳的做法是接收端按帧头 `ts_us` **丢弃超过 500 ms 的过期帧**（时间戳已经在协议里，不额外成本）。

### 5.6 谁 bind、放哪儿、权限

- **助手进程 bind（服务端）**，注入方 `connect`/`sendto`（客户端）。理由：助手会重启，客户端重试比服务端反复重建 socket 干净；助手没起来时旁路只会计 send 失败，不影响原厂。
- socket 路径：`/data/local/tmp/tgz2_pcm.sock`（`shell_data_file`，Magisk 环境下两边都能访问）。
- 更干净的方案是 **Linux 抽象命名空间**（`sun_path[0] == '\0'`，路径 `"@tgz2_pcm"`）：不落盘、无权限问题、进程退出自动回收。代价是 Windows 原型不支持，只能在设备上验证。设计上留开关。
- SELinux：助手进程若跑在 `u:r:shell:s0` 或 Magisk 的 `u:r:magisk:s0`，与 `:core` 的域不同，`shell_data_file` 是双方都可访问的落点；若走抽象命名空间则不受文件标签限制。

---

## 6. Hook 内部的安全规则（硬性，逐条可检查）

1. **只读**：只读 `r2`（数据指针）与 `r3`（长度）。不写 `context.*`，不改 `returnAddress`，不动栈。
2. **长度闸门**：`len == 5120` 且 `len % 8 == 0` 才处理；否则直接返回。固件若把通道数改成 2，这里会安全地什么都不做，而不是把 PCM 抽错。
3. **零分配**：环形缓冲在 `tgz2_init()` 里一次性 `mmap`，hook 内只做 `memcpy`。
4. **零加锁**：SPSC 环，`__atomic_load_n(ACQUIRE)` / `__atomic_store_n(RELEASE)`，无 mutex、无 futex。
5. **抽 ch0**：源 `p + i*8`，目标 `q + i*2`，`i∈[0,640)`。逐 `int16` 拷贝，不做 SIMD（640 次 2 字节拷贝在 A53 上是几微秒）。
6. **失败即降级**：`tgz2_init()` 里若 socket 建失败、SO 版本不匹配、签名不符 → 设 `g_disabled=1`，hook 内第一行判断后立刻返回。**原厂链路零影响**。
7. **不写日志文件**：hook 内禁止 `fopen/printf`。计数只放内存，由发送线程每小时/退出时落盘。
8. **不做时间换算**：`clock_gettime(CLOCK_MONOTONIC)` 一次（vDSO，约 20 ns）。

---

## 7. 偏移漂移检测（固件更新后不许瞎 hook）

三级闸门，全过才装 hook：

**闸 1 — 符号**
```c
void *p = dlsym(RTLD_DEFAULT, "_ZN14AGSpeechEngine4feedEjPKvi");
if (!p) → 放弃（不是这个固件）
```

**闸 2 — 模块相对偏移**
```c
dladdr(p, &info);                     // 或 dl_iterate_phdr 找 libsmartbox.so 基址
uint32_t off = (uint32_t)((uintptr_t)p - (uintptr_t)info.dli_fbase);
if (off != 0xd455c) → 记录实际偏移，放弃（不做模糊匹配）
```

**闸 3 — 机器码签名**（本固件 `libsmartbox.so`，sha256 `F6E3...0940`，2047772 B）

| 位置 | 长度 | 期望字节 | 含义 |
|---|---|---|---|
| `feed+0` | 16 | `f0 48 2d e9 10 b0 8d e2 08 d0 4d e2 03 70 a0 e1` | `push{r4-r7,fp,lr}; add fp,sp,#0x10; sub sp,#8; mov r7,r3` |
| `feed+0x78`（0xd45d4） | 12 | `14 10 93 e5 07 00 51 e3 04 00 00 1a` | `ldr r1,[r3,#0x14]; cmp r1,#7; bne` |
| `feed+0x84`（0xd45e0） | 16 | `a4 00 90 e5 02 10 a0 e1 07 20 a0 e1 eb eb fe eb` | `ldr r0,[r0,#0xa4]; mov r1,r2; mov r2,r7; bl PLT` |

任一条不符 → 不装 hook、写一行日志、退出。

**闸 4（运行时自证，可选但强烈建议）**：hook 装好后，只统计不发送（`--dry-run`）观察 30 秒，
必须看到 `len==5120` 的帧以 25 fps 稳定出现。看不到就说明即使偏移对上了，语义也变了。

> 记录：本阶段曾因 hook 到 `0xea8c4`（一个从不被调用的兄弟 thunk）而误判"链路中断"。
> 闸 4 的 dry-run 就是为了让这种错误在 30 秒内暴露，而不是在联调时。

---

## 8. 生命周期、恢复与回滚

### 8.1 启动顺序（真机）

```
boot → Magisk post-fs-data → Zygisk 加载 → 系统起 zygote
  → :core 启动 → zygisk postAppSpecialize → dlopen(libtgz2bridge.so)
  → 闸1~3 校验 → dlopen 回调里装 hook（等待 libsmartbox.so）
  → 助手进程（可选先后）bind UDS
  → 非阻塞发送
```

助手进程晚于 `:core` 起来也安全：客户端在**发送线程**里每 500 ms 重试 `connect`，
期间只累积 `send_drop_wb`，`feed` 侧完全无感。

### 8.2 停止与卸载

| 目的 | 操作 |
|---|---|
| 临时停用（重启生效） | `touch /data/adb/modules/tgz2bridge/disable` → reboot |
| 立即停用 | `kill` 助手进程；桥的 `send` 失败即静默丢弃 |
| 完整卸载 | `rm -rf /data/adb/modules/tgz2bridge` → reboot |
| 兜底 | 开机按音量下进 Magisk 安全模式，禁用全部模块 |

### 8.3 回滚清单（本阶段实际会碰到的文件）

本阶段（设计+电脑原型）**设备上零改动**。真机落地时预期新增/修改的只有：

```
/data/adb/modules/tgz2bridge/            ← 模块根（可整目录删除）
    module.prop
    zygisk/arm/libtgz2bridge.so
    post-fs-data.sh  (可选)
/data/local/tmp/tgz2_pcm.sock            ← 运行时 socket，进程退出即消失
```

不动：`/system/app/smartapp/*`、`/data/app/*`、`/data/adb/magisk*`、boot/system 备份。

---

## 9. 设备侧实施步骤（每步都有判据与回滚）

| # | 做什么 | 判据 | 失败怎么办 |
|---|---|---|---|
| 1 | 装原型助手（能 bind UDS、写统计） | 设备上 `socat`/自写 demo 能从 socket 收到帧 | 只删助手，原厂无影响 |
| 2 | A 方案 30 秒短测（Frida，`127.0.0.1:27042` + adb forward） | 收到 ≥700 帧、`len` 全是 5120、ch0 可听 | 立刻 `killall fs32`，原厂无影响 |
| 3 | 断流测试：助手中途 kill 再起 | 原厂唤醒正常；恢复后 seq 继续走 | — |
| 4 | 编 `libtgz2bridge.so`（armv7, NDK, `-fPIC -shared`） | 能 `dlopen` 且 `tgz2_selftest()` 通过 | 只影响模块 |
| 5 | Zygisk 模块 dry-run（只统计不发送） | 30 秒内 750±5 帧，`len` 全 5120 | `touch disable` + reboot |
| 6 | 打开发送，30 秒 | 助手侧 0 丢帧；原厂唤醒/识别正常 | 同上 |
| 7 | 10 分钟长稳 | 丢帧率 <0.1%，P95 延迟 < 100 ms | 同上 |

**每步只允许一步一个新变量。** 步骤 2 与 5 之间不允许同时改两样东西。

---

## 10. 尚未验证（不许写成结论）

| # | 未验证项 | 等级 | 为什么重要 | 怎么才能闭环 |
|---|---|---|---|---|
| 1 | ~~`feed` 是否**单线程**调用（SPSC 前提）~~ **已由 T3-08 解决** | — | 真机证明会出现两个生产者线程（19873 / 14171） | 桥接层改为多 TID 接受（TID 仅统计），见 `03_pcm_bridge_t3_08_multitid.md`；`thread_probe.js` 仍未执行 |
| 2 | 原厂进程内的真实行为（hook 耗时、唤醒成功率） | U | 唯一能证明"不破坏原厂" | 30 秒短测（§9 步骤 2） |
| 3 | 抽象命名空间在 `:core` 与助手进程间是否可达 | U | 决定 socket 要不要落盘 | 真机 A+助手进程联调（A-SHELL 只证明了 shell↔shell 可行） |
| 4 | 固件升级后签名是否仍匹配 | U | 决定 §7 闸门是否真的拦得住 | 每次 OTA 后重跑闸 1~3 |
| 5 | 旁路对 `:core` CPU 的实际增量 | U | 任务书要求量化 | 短测前后 `top -H -p <pid>` |
| 6 | 原厂 TTS 回采是否会被助手侧 VAD 误触发 | U | 25 s 处的疑似 TTS 峰（见 02 文档 §6） | 留给 VAD 阶段 |

已由本轮闭环的：DGRAM 语义（A-SHELL）、协议 v2 的 epoch/过期/重连（W-PC + A-SHELL）、
PC 侧 10 分钟长稳（W-PC）。

---

## 11. 本目录文件清单

| 文件 | 作用 |
|---|---|
| `tgz2_frame.h` | 协议 + 时间戳 + 无锁 SPSC 环 + socket 封装（可交叉编译到 arm） |
| `uds_sink.c` | 接收端：校验/统计/延迟分位/停摆注入/过期帧丢弃/epoch 会话切换 |
| `uds_source.c` | 合成发送端：40 ms 铁定时节拍 + 有界环 + 非阻塞发送 + 断线重连 + `--naive` 对照组 |
| `run_test.py` | 场景编排（baseline/stall/naive/stale/skip/ringfull/slow/slowbuf） |
| `verify_capture.py` | 独立离线校验（Python 重新实现协议，按 epoch 分组核对连续性） |
| `probe_afunix.c` / `probe_dgram.c` | 本机 AF_UNIX 能力探针（W-PC：STREAM 可用 / DGRAM 不可用） |
| `pcm_bridge_draft.js` | 真机 A 方案草稿（修订 2，**仍未在设备上运行**） |
| `thread_probe.js` | 只读线程探针：验证 `feed` 是否单生产者（SPSC 前提），**未执行** |
| `android_uds_test/` | Android armv7 DGRAM 测试（server/client/build/run 脚本），A-SHELL 已跑 |
| `README.md` | 编译、运行、各字段含义 |
| `.gitignore` | 二进制、`_run/`、`.cap` 不入库 |
| `03_pcm_bridge_test.md` | 实测数据与结论 |
| `03_pcm_bridge_review.md` | 审查回执：9 项修正 + 证据等级定义 |
| `03_script_audit.md` | 第二阶段既有脚本的审查清单与修改记录 |
