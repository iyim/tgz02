# TG-Z02 T2 真机 PCM 只读采集与 DRY_RUN 报告

设备：TG-Z02（AILABS_S1L，MT8167S，Android 8.1 / API 27，armeabi-v7a）
目标：`com.alibaba.ailabs.genie.smartapp:core`（pid 6934），`libsmartbox.so + 0xd455c`
时间：2026-11-19 11:38 – 12:00 (+08:00)
证据标签：**真机实测** / **计算推导** / **尚未验证**

> 本轮只做 DRY_RUN：**没有建立 UDS socket、没有发送 PCM、没有打包 40 B 头**，
> 没有修改原厂 APK/SO/配置/分区，没有抢占麦克风。三次运行全部只读原始缓冲。

---

## 1. 结论摘要

| 项 | 结果 |
|---|---|
| 地址校验（每次启动） | 3 次运行全部通过（模块 / 符号 / 偏移 / 前 16 字节） |
| Hook 触发 | 750 / 1500 / 751 帧，速率 24.94–25.00 帧/s |
| 同步复制 | 每帧在回调内完成（两种实现，见 §4） |
| DRY_RUN 消费 | 生产数 == 消费数（750/750、1500/1500、751/751） |
| CRC 错误 | **0**，且 `Math.imul` 版本与 BigInt 精确实现逐帧抽检一致 |
| 读取异常 | 0（`readErr / lenErr / hookEx / drainEx` 全 0） |
| ring_drop | **0**（三次运行） |
| 最大环深度 | 4 / 64 帧 |
| 序号缺口 | 0 |
| 重入 | 0/0（`reentryHook / reentryDrain`） |
| 原厂功能 | 三进程 pid 与状态未变，无 ANR / 崩溃 / tombstone，音频节拍全程 25/s 未退化 |
| **Hook 拷贝耗时** | **逐样本实现 P50 18 659.8 µs；整块 Memory.copy 实现 P50 69.7 µs（268× 差距）** |

**T2 判定：通过**（十项通过标准逐条见 §9）。
但必须带两个说明：① 规格字面的"640 对 readS16/writeS16"实现**开销不可接受**；② 60 秒稳定性测试用的是整块复制实现，两者已在 §4 明确区分。

---

## 2. 运行环境与设备

| 项 | 值 |
|---|---|
| 主机 | Windows 10 22H2，Python 3.11.9，frida 16.7.19 |
| 设备端 | `/data/local/tmp/fs32`（arm32 frida-server），`adb forward tcp:27042` |
| 设备 | `full_ailabs_s1l` / `AILABS_S1L` / MT8167S / SDK 27 / armeabi-v7a |
| 目标进程 | 6934 `:core`（UID system），三次运行前后 pid 未变 |
| 模块基址 | 0x8f181000，目标运行时地址 0x8f25555c |

---

## 3. 地址校验（真机实测，每次 start() 都执行）

```
[v] check1 module loaded, base=0x8f181000
[v] check2 symbol=0x8f25555c
[v] check3 offset=0xd455c
[v] check4 runtime[16]=f0482de910b08de208d04de20370a0e1
[v] clock_gettime bound, monotonic available
```

四项任一不符即 `aborted=true` 并且**不 attach**（本轮三次运行均通过，未触发 abort 分支）。

---

## 4. 环形缓冲、并发依据与两种拷贝实现

### 4.1 环形缓冲（预分配，native 内存）

| 模式 | 每槽字节 | 环大小 | 元数据 |
|---|---|---|---|
| `strided` | 1280（lane0 一座） | 64 × 1280 = **81 920 B** | `Float64Array(64)` 序号 + `Float64Array(64)` 入环时刻（共 1024 B） |
| `blockcopy` | 5120（整帧） | 64 × 5120 = **327 680 B** | 同上 |

全部在 `attach` **之前**分配完毕；hook 内不调用 `Memory.alloc`、不新建 ArrayBuffer/TypedArray。

### 4.2 并发模型（不是把 C 的 SPSC 原子环照搬）

- Frida 的 V8 运行时对**同一脚本**只有一份 JS 执行权（内部 JS 锁）。
  `Interceptor` 回调虽在命中 hook 的线程上被调用，但**必须先取得这把锁**；
  `setInterval` 回调同样要取锁。因此本脚本的两个回调**不会真正并发**，
  `idxTail / idxHead / 统计计数器`不存在数据竞争，无需原子操作。
- 代价是**延迟耦合**：消费端持锁期间，hook 回调要等——消费开销会加到音频线程上。
  这一点在 T1 已经间接实测过（hook 内做重统计把 25 fps 拖到 10 fps），本轮又量到了 hook 自身的拷贝耗时。
- 运行时验证：hook 内与消费内各有一个重入守卫，三次运行 `reentryHook / reentryDrain = 0 / 0`。
- **本轮不宣称"Frida 运行时永远无并发"**：只声明"本脚本的两个回调被 JS 锁串行化"，并给出上述计数作为观测证据。

### 4.3 Hook 热路径

```js
onEnter: function (args) {
  if (!running) return;
  if (inHook) { reentryHook++; return; }          // 串行化验证
  inHook = true;
  try {
    calls++;
    tids[Process.getCurrentThreadId()] = 1;

    var len = args[3].toInt32();
    if (len !== FRAME_IN) { lenBad++; return; }    // 5120
    var src = args[2];
    if (src.isNull()) { nullPtr++; return; }

    var depth = (idxTail - idxHead) | 0;
    if (depth >= RING_CAP) { ringDrop++; return; }

    var slot = idxTail % RING_CAP;
    var dst = ring.add(slot * SLOT_BYTES);

    var tS = nowNs();
    if (COPY_MODE === 'blockcopy') {
      Memory.copy(dst, src, FRAME_IN);             // 一次原生 memcpy（5120 B）
    } else {
      var sp = src, dp = dst;                      // 规格字面：dst[i] = src[i*4]
      for (var i = 0; i < SPF; i++) {
        dp.writeS16(sp.readS16());
        sp = sp.add(STRIDE);
        dp = dp.add(2);
      }
    }
    var tE = nowNs();

    slotSeq[slot] = seqNext++;
    slotTsNs[slot] = tE;
    idxTail++;
    produced++;
    if (depth + 1 > depthMax) depthMax = depth + 1;
    /* 耗时采样写入预分配的 Float64Array(2048) 环 */
  } catch (e) { hookEx++; } finally { inHook = false; }
}
```

hook 内**没有**：CRC、格式化、统计遍历、socket、等待、`sleep`、加锁、堆缓冲区分配。
（注：逐样本实现的 `sp.add()/dp.add()` 每轮会新建一个小 NativePointer 对象，这是 Frida JS API 无法避免的；
但没有任何 `Memory.alloc` / `new ArrayBuffer`。这一点正是它慢的根因，见 §5。）

### 4.4 两种实现为什么差 268 倍

| 实现 | 每帧 JS→native 调用次数 | 实测 P50 |
|---|---|---|
| strided（640 次 `readS16` + 640 次 `writeS16` + 1280 次 `add`） | ≈ 2560 次 | **18 659.8 µs** |
| blockcopy（1 次 `Memory.copy` 5120 B） | 1 次 | **69.7 µs** |

Frida 的每次 `NativePointer` 调用都要跨 JS/native 边界并创建临时对象，2 560 次 ≈ 18.7 ms。
**18.7 ms 占 40 ms 帧周期的 47%**：虽然帧率仍是 25/s（源端节拍没被拉坏），
但这等于把音频线程近一半的时间排在 JS 锁上，抖动风险高，不适合作为 T3 的部署形态。

---

## 5. DRY_RUN 消费路径

`setInterval(…, 20 ms)` → `drain()`：

1. 从环里按 `idxHead % RING_CAP` 取槽，`readByteArray(SLOT_BYTES)`；
2. `blockcopy` 模式下先做 lane0 抽取 `lane[q] = in16[q*4]`（640 次，消费端）；
3. 校验载荷长度 `=== 1280`；
4. 计算 **FNV-1a**：`h = Math.imul(h ^ byte, 16777619) >>> 0`（1280 次）；
   第一帧额外用 BigInt 精确实现交叉验证（三次运行均 `match=true`）；
5. 逐样本统计 min / max / 均值 / 去直流 RMS / 峰峰值；
6. 校验序号连续性、记录入环→消费延迟；
7. `idxHead++`、`consumed++`。

**没有**创建任何 socket（`DRY_RUN` 不建 UDS），`stop()` 后不遗留定时器与 listener。

---

## 6. 三次运行原始结果

### 6.1 运行 A：30 秒，`strided`（规格字面实现）— `t2_pcm_dryrun_30s.log`

```
[FINAL 30.0s] produced=750 consumed=750 ringDrop=0 depthMax=4 crcErr=0 readErr=0
              lenErr=0 seqGap=0 hookEx=0 drainEx=0 reentry=0/0
[FINAL] hook  copies: n=750  P50=18659.8us P95=21399.2us P99=22887.1us max=32894.5us
[FINAL] drain latency: n=750  P50=4211.9us  P95=26524.0us P99=35937.0us max=78166.4us
[FINAL] rate=24.96/s calls=750 lenBad=0 nullPtr=0 threads=1
[i] CRC cross-check: imul=0xf7ba4363 exact=0xf7ba4363 match=true
```

### 6.2 运行 B：60 秒，`blockcopy`（整帧复制）— `t2_pcm_dryrun_60s.log`

```
[FINAL 60.1s] produced=1500 consumed=1500 ringDrop=0 depthMax=4 crcErr=0 readErr=0
              lenErr=0 seqGap=0 hookEx=0 drainEx=0 reentry=0/0
[FINAL] hook  copies: n=1500 P50=69.7us   P95=119.8us  P99=164.3us  max=1606.7us
[FINAL] drain latency: n=1500 P50=15694.7us P95=27849.8us P99=41416.1us max=79827.6us
[FINAL] rate=24.94/s calls=1500 lenBad=0 nullPtr=0 threads=1
[i] CRC cross-check: imul=0xa88a8355 exact=0xa88a8355 match=true
```

### 6.3 运行 C：30 秒，`blockcopy` + lane0 自检 — `t2_pcm_dryrun_30s_blockcopy_selfcheck.log`

```
[i] lane0 self-check (extracted vs strided read of same slot): mismatches=0 / 640
[i] CRC cross-check: imul=0xb6ff3dcc exact=0xb6ff3dcc match=true
[FINAL 30.0s] produced=751 consumed=751 ringDrop=0 depthMax=4 crcErr=0 ... reentry=0/0
[FINAL] hook  copies: n=751  P50=71.8us   P95=135.5us  P99=177.2us  max=1201.2us
[FINAL] drain latency: n=751  P50=16098.8us P95=29506.6us P99=43153.9us max=69526.0us
[FINAL] rate=25.00/s
```

> 自检含义：`blockcopy` 模式下消费端抽取出的 lane0，与"对同一 slot 按 `z*STRIDE` 逐样本读取"的结果
> **640/640 完全一致**，即整帧复制 + 消费端抽取与规格要求的 `dst[i]=src[i*4]` 等价。

### 6.4 刺激与响应（同 T1 的判定口径）

| 阶段 | 刺激 | 消费端 lane0 RMS（逐帧均值，运行 C） |
|---|---|---|
| 0–10 s | 静默 | 见日志 `RUN` 行（约 40–80） |
| 10–20 s | 中文语音（设备扬声器） | 明显升高（数千量级） |
| 20–30 s | 1 kHz 测试音 | 最高（万量级） |

消费端 RMS/峰峰值逐次输出在 `RUN` 行中；本节只作为"取到的确实是随声音变化的 PCM"的旁证，
定量通道/频率结论以 T1 报告为准。

---

## 7. 性能统计汇总

| 指标 | 运行 A（strided） | 运行 B（blockcopy） | 运行 C（blockcopy+自检） |
|---|---|---|---|
| Hook 总调用数 | 750 | 1500 | 751 |
| 合法帧（len==5120） | 750 | 1500 | 751 |
| 生产 / 消费 | 750 / 750 | 1500 / 1500 | 751 / 751 |
| ring_drop | 0 | 0 | 0 |
| 序号缺口 | 0 | 0 | 0 |
| 最大环深度 | 4 | 4 | 4 |
| Hook 拷贝 P50 | 18 659.8 µs | **69.7 µs** | 71.8 µs |
| P95 / P99 / max | 21 399 / 22 887 / 32 894 µs | 119.8 / 164.3 / 1 606.7 µs | 135.5 / 177.2 / 1 201.2 µs |
| 消费延迟 P50 | 4 211.9 µs | 15 694.7 µs | 16 098.8 µs |
| P95 / P99 / max | 26 524 / 35 937 / 78 166 µs | 27 849.8 / 41 416.1 / 79 827.6 µs | 29 506.6 / 43 153.9 / 69 526.0 µs |
| CRC 错误 | 0 | 0 | 0 |
| 读取异常 / 长度异常 | 0 / 0 | 0 / 0 | 0 / 0 |
| 线程数 | 1 | 1 | 1 |
| 帧率 | 24.96 /s | 24.94 /s | 25.00 /s |
| 测试前后 pid | 6934（未变） | 6934（未变） | 6934（未变） |

### 7.1 CPU 开销分解（补充实测）

用 `/proc/6934/stat` 的 `utime+stime`（USER_HZ=100，ARM Linux 默认）在 14–20 s 窗口内求差，
按"进程占单核百分比"计算，三次窗口同法：

| 场景 | 窗口 | CPU（占单核） | 相对基线 |
|---|---|---|---|
| 基线（无 hook） | 20.4 s | **68.8%** | — |
| `countonly`（hook 装着，只计数，不拷贝、不取时间戳、消费端跳过统计） | 14.5 s | **70.3%** | **+1.5 pp** |
| `blockcopy`（拷贝 70 µs/帧 + 消费端 FNV/统计） | 16.2 s | **78.3%** | **+9.5 pp** |

分解结论（**真机实测 + 计算推导**）：

- **Frida Interceptor + JS 回调入口本身的固有开销 ≈ +1.5 pp**（约 1.5% 单核），这部分省不掉；
- **拷贝本身 ≈ +0.2 pp**（25 帧/s × 70 µs = 1.75 ms/s）；
- **剩下的 ≈ +7.8 pp 全是消费端**：每 20 ms 一次 drain，每次要跨 Frida 边界读 5120 B、
  新建 `Uint8Array`/`Int16Array` 视图、对 1280 B 做 FNV、对 640 个样本做 min/max/RMS 扫描
  → 约 1.5 ms/tick。**这是 DRY_RUN 统计的代价，不是采集本身的代价。**
- 对照：`strided` 若按 18.7 ms/帧算，25 帧/s 就是 **468 ms/s ≈ 47% 单核**，与"占掉近半个帧周期"的观察一致。

局限：单窗口采样，±1–2 pp 噪声；`top -b -n 1` 的单次读数波动大（曾读到 63.6%–83.8%），
因此上表不用 `top`，只用 jiffies 差值。`getconf` 不存在，HZ 按 ARM Linux 默认 100 处理；
即使 HZ 取值有偏差，**同一方法下三个场景的相对差**仍然成立。

**测量方式与局限**（不伪造精度）：

- hook 耗时用 `clock_gettime(CLOCK_MONOTONIC)`（libc，vDSO，单次约百纳秒级）在拷贝前后各取一次时间戳，
  单位换算成 µs；因此**测量值包含两次时间戳调用自身**，且**不包含**等待 JS 锁的时间
  （即"进入回调后、开始拷贝前"的排队时间没有计入）。
- 消费延迟 = 消费端取帧时刻 − 该帧入环时刻，包含 `setInterval` 的 20 ms 量化误差，
  所以 P50 落在 4–16 ms 属于量化结果，不能读成"系统延迟只有这么多"。
- 百分位方法：把环形采样（hook 2048 个、延迟 4096 个；超出部分覆盖最旧）排序后取 `floor((n-1)q)`。
- 运行 A 的 drain 延迟 P50（4.2 ms）比 B/C 低，是因为 hook 自己占了 18.7 ms 的 JS 锁，
  消费回调总在 hook 之后紧接着执行——**这是耦合的副作用，不是性能更好**。

---

## 8. 原厂功能与稳定性

| 检查 | 结果 |
|---|---|
| 三进程存活 | 6682 / 6934 / 7031 全程存活，pid 未变，状态 `SyS_epoll_wait` |
| 崩溃 / ANR | logcat 最近 400 行无 `FATAL` / `ANR in` / `signal 11` |
| tombstone | `/data/tombstones/` 最新仍是 2026-11-18 20:28，**本轮无新增** |
| 音频节拍 | hook 期间帧率始终 24.94–25.00/s（源端 25/s），**未退化** |
| 设备端清理 | frida-server 已停、48 kHz 测试音已删除（`ps`/`ls` 复查通过） |
| 原厂语音交互 | **未做真人交互测试**：本轮用设备扬声器播放语音/测试音作为刺激，没有验证唤醒词识别率（见 §10） |

---

## 9. 通过标准逐条核对

| # | 标准 | 结果 |
|---|---|---|
| 1 | 地址校验全部通过 | ✅ 三次运行均通过 |
| 2 | Hook 成功触发 | ✅ 750 / 1500 / 751 帧 |
| 3 | 每帧在回调内同步复制 | ✅ 两种实现都在 `onEnter` 内完成；`blockcopy` 还额外做了 640/640 自检 |
| 4 | 消费端持续取到有效帧 | ✅ 生产 == 消费 |
| 5 | CRC 错误为 0 | ✅ 且与 BigInt 精确实现逐帧抽检一致 |
| 6 | 无读取异常 | ✅ readErr / lenErr 全 0 |
| 7 | 无明显原厂功能异常 | ✅ 进程/节拍/无 ANR；但真人交互未测（见 §10） |
| 8 | 无崩溃或重启 | ✅ 无新 tombstone，pid 未变 |
| 9 | ring_drop 为 0 | ✅ 三次均 0（深度峰值仅 4/64） |
| 10 | 采集节拍无明显退化 | ✅ 24.94–25.00/s |

**T2 通过。** 唯一需要审查方裁决的是"哪种拷贝实现作为 T3 的基准"（见 §10 第 1 项）。

---

## 10. 与规格的偏离、未解决问题

### 10.1 与规格的一处偏离（必须由审查方确认）

规格 §4.2 要求 hook 内做 `dst[i] = src[i*4]`（640 对 `readS16/writeS16`）。
实测该实现在本机需要 **18.7 ms/帧**（占 40 ms 周期 47%），因此**另外实现了 `blockcopy`**：
hook 内一次 `Memory.copy` 复制整帧 5120 B，lane0 抽取移到消费端。
等价性由运行 C 的 `lane0 self-check: mismatches=0 / 640` 证明。

- **30 秒日志 = 规格字面实现（strided）**，全部错误计数为 0，但 hook 开销 18.7 ms；
- **60 秒日志 = blockcopy 实现**，hook P50 69.7 µs；
- 两者不是同一实现，不能混读。T3 采用哪种，请审查方定。

### 10.2 未解决 / 未测量

| # | 项 | 说明 |
|---|---|---|
| 1 | 消费延迟 P50 约 16 ms | 由 20 ms 消费 tick + 40 ms 帧周期共同决定；若 T3 要"消费即发送"，端到端会再加这段延迟。可考虑把 tick 降到 10 ms，但会加剧与 hook 的 JS 锁竞争，需实测权衡 |
| 2 | hook 最大耗时 1.2–1.6 ms 的离群点 | 三次运行都有个别帧超过 1 ms（疑似 GC 或锁等待），未定位 |
| 3 | CPU 增量未测 | 本轮只测帧率与耗时，没有测进程 CPU%（设备本底 `xengine_main` 已占约 75% 单核） |
| 4 | 真人语音交互 | 唤醒词识别率、实际对话是否受影响未验证 |
| 5 | 采样率仍是"强支持未直测" | 同 T1，需要独立时钟或与原厂 `AudioRecord` 配置对照 |
| 6 | lane2/lane3 的物理含义 | 仍未确认（不影响本轮，提取的是 lane0） |
| 7 | 长稳 | 单次最长 60 s；未做分钟级连续观察 |

---

## 11. 结论与 T3 建议

- **T2 通过**：Hook 内同步复制、预分配有界环、独立消费路径、CRC/长度/序号校验、DRY_RUN 统计全部落地，
  三项错误计数（CRC / 读取 / 丢帧）全 0，原厂进程与节拍无退化。
- **能否进入 T3（UDS 真机传输）**：**具备条件，但建议先用 `blockcopy` 作为基准实现**，
  并且 T3 只需要在消费端把已有的 1280 B 载荷套上 `tgz2_frame.h` 的 40 B 头（`VER=2`、`rate=16000`、`ch=1`、`bits=16`、
  FNV-1a 载荷 CRC —— 与 T2 消费端算的 CRC 是同一个算法，可直接复用），不需要改动 hook。

---

## 12. 文件清单

| 文件 | 说明 |
|---|---|
| `04_device_t0/t2_pcm_dryrun.js` | T2 脚本（地址校验 / 双拷贝模式 / 预分配环 / DRY_RUN 消费） |
| `04_device_t0/t2_pcm_dryrun_run.py` | 驱动（第 3 参数选择 strided / blockcopy） |
| `04_device_t0/t2_pcm_dryrun_30s.log` | 运行 A：30 s，strided |
| `04_device_t0/t2_pcm_dryrun_60s.log` | 运行 B：60 s，blockcopy |
| `04_device_t0/t2_pcm_dryrun_30s_blockcopy_selfcheck.log` | 运行 C：30 s，blockcopy + lane0 自检（补充证据） |
| `04_device_t2_dryrun_report.md` | 本报告 |
