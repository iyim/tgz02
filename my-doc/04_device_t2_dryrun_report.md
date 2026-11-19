# TG-Z02 T2 真机 PCM 只读采集与 DRY_RUN 报告（审查修正版）

设备：TG-Z02（AILABS_S1L，MT8167S，Android 8.1 / API 27，armeabi-v7a，内核 Linux 4.4.95 armv7l）
目标：`com.alibaba.ailabs.genie.smartapp:core`，`libsmartbox.so + 0xd455c`
本轮时间：2026-11-19 13:04 – 13:20 (+08:00)
证据标签：**真机实测** / **静态分析** / **计算推导** / **尚未验证**

> 本轮只做 DRY_RUN：**没有建立 UDS socket、没有发送 PCM、没有打包 40 B 头**，
> 没有修改原厂 APK/SO/配置/分区，没有抢占麦克风。
> 正式运行模式**只有 blockcopy**（hook 内一次 `Memory.copy` 复制整帧 5120 B，lane0 抽取在消费端）。

---

## 1. 结论摘要

| 项 | 30 秒（A） | 60 秒（B） |
|---|---|---|
| 目标 pid / 模块基址 | 6934 / 0x8f181000 | 6934 / 0x8f181000 |
| JS 文件 SHA256（日志首行记录） | `041d6670…e2607725` | 同左 |
| 地址四项校验 | 全通过 | 全通过 |
| 生产 / 消费 | 749 / 749 | 1500 / 1500 |
| 帧率 | 24.97 /s | 25.00 /s |
| ring_drop / 最大环深度 | 0 / 4 | 0 / 3 |
| 序号缺口 | 0 | 0 |
| readErr / lenErr | 0 / 0 | 0 / 0 |
| hookEx / drainEx | 0 / 0 | 0 / 0 |
| 重入计数（hook/drain） | 0 / 0 | 0 / 0 |
| lane0 自检（640 样本） | **640/640 一致** | **640/640 一致** |
| CRC 算法交叉验证（仅首帧） | `match=true`（0xfab8cda） | `match=true`（0x5acf1ba） |
| Hook 拷贝耗时 | P50 68.1 / P95 118.9 / P99 198.5 / max 1597.9 µs | P50 67.2 / P95 114.4 / P99 185.2 / max 1307.0 µs |
| 自动判定行 | `verdict=NO-AUTO-FAIL(review required)` | 同左 |

**T2 是否通过由审查方判定**：脚本只做"自动失败"判定（任一硬指标不达标即 `AUTO-FAIL`），
不会因为日志生成而自称通过。

---

## 2. 运行环境与设备

| 项 | 值 |
|---|---|
| 主机 | Windows 10 22H2，Python 3.11.9，frida 16.7.19 |
| 设备端 | `/data/local/tmp/fs32`（arm32 frida-server），`adb forward tcp:27042` |
| 设备 | `full_ailabs_s1l` / MT8167S / SDK 27 / armeabi-v7a |
| 内核 | `Linux version 4.4.95+ ... #1 SMP PREEMPT`；`CONFIG_HZ=100`（`/proc/config.gz` 可读） |
| 目标进程（测试 A/B） | pid 6934 `:core`（UID system） |

> 设备从上午到现在一直在线（`uptime` 1 天 15 小时），本轮所有数值都在同一台真机上采集。

---

## 3. 地址校验（每次 `start()` 都执行，四项全过即继续，任一不符则不 attach）

```
[v] check1 module loaded, base=0x8f181000
[v] check2 symbol=0x8f25555c
[v] check3 offset=0xd455c
[v] check4 runtime[16]=f0482de910b08de208d04de20370a0e1
[v] clock_gettime bound
```

进程重启后的独立验证（见 §9.2）用的是同一个脚本，基址变成 **0x8f202000**，偏移仍是 `0xd455c`，
四项同样全过 —— 说明校验逻辑不依赖某个固定基址。

---

## 4. 实现

### 4.1 启动时打印的固定参数（每次运行都在日志里）

```
[v] copy_mode=blockcopy
[v] input_frame_bytes=5120
[v] ring_slot_bytes=5120 ring_total_bytes=327680 ring_cap=64
[v] output_payload_bytes=1280
[v] lane0_samples=640 lane0_stride_bytes=8
[v] meta_bytes=1024 cost_ring=2048 lat_ring=4096
```

### 4.2 Hook 热路径（`t2_pcm_dryrun.js`，正式模式）

```js
onEnter: function (args) {
  if (!running) return;
  if (inHook) { reentryHook++; return; }              // 串行化验证用的重入守卫
  inHook = true;
  try {
    calls++;
    tids[Process.getCurrentThreadId()] = 1;

    var len = args[3].toInt32();
    if (len !== FRAME_IN) { lenBad++; return; }        // 5120
    var src = args[2];
    if (src.isNull()) { nullPtr++; return; }

    var depth = (idxTail - idxHead) | 0;
    if (depth >= RING_CAP) { ringDrop++; return; }

    var slot = idxTail % RING_CAP;
    var dst = ring.add(slot * SLOT_BYTES);

    var tS = nowNs();
    Memory.copy(dst, src, FRAME_IN);                   // 同步复制整帧 5120 B
    var tE = nowNs();

    slotSeq[slot] = seqNext++;
    slotTsNs[slot] = tE;
    idxTail++;
    produced++;
    if (depth + 1 > depthMax) depthMax = depth + 1;
    /* 耗时写入预分配 Float64Array(2048) */
  } catch (e) { hookEx++; } finally { inHook = false; }
}
```

hook 内**没有** CRC、RMS、字符串格式化、日志、socket、等待、`Memory.alloc`，
也没有 `new ArrayBuffer/Uint8Array/Int16Array`（提交前做过一次 token 审计：热路径内只出现 `Memory.copy`）。

### 4.3 消费路径（DRY_RUN）

`setInterval(20 ms)` → `drain()`：
取槽 → `readByteArray(5120)` → **lane0 抽取 `lane[q] = in16[q*4]`（640 个 int16）**
→ 校验 1280 字节 → 逐帧算 FNV-1a（`Math.imul`）→ 载荷统计 → 序号连续性 → 消费延迟 → `idxHead++`。
`stop()` 幂等：清 tick/rep/stop 三个定时器 → detach listener → 输出最终统计与自动判定行。

### 4.4 并发依据

Frida 的 V8 运行时对同一脚本只有一份 JS 执行权：`Interceptor` 回调（在命中 hook 的线程上被调用）
与 `setInterval` 回调都必须先取得这把锁，因此二者**不会真正并发**，JS 状态无需原子操作；
代价是延迟耦合——消费端持锁时 hook 要排队。

**该排队时间不计入下面的 hook 耗时统计**：时间戳是在拿到锁之后、`Memory.copy` 之前取得的。
运行时用 `inHook / inDrain` 守卫观测重入，三次运行均为 `0 / 0`。

---

## 5. 30 秒运行（测试 A）— `t2_pcm_dryrun_30s_blockcopy.log`

```
[i] js_sha256 = 041d6670de4f19fb3c592b8cf90ab91f3d37e63856a72f3ad38e0136e2607725
[i] lane0 self-check: samples=640 mismatches=0 result=ok
[i] crc algorithm cross-check (first frame only): 0xfab8cda vs exact 0xfab8cda match=true
[FINAL 30.0s] mode=blockcopy produced=749 consumed=749 ringDrop=0 depthMax=4 seqGap=0
              readErr=0 lenErr=0 hookEx=0 drainEx=0 reentry=0/0 laneCheckErr=0
[FINAL] hook copy: n=749 P50=68.1us P95=118.9us P99=198.5us max=1597.9us (excludes JS-lock queueing)
[FINAL] drain latency: n=749 P50=16176.3us P95=28167.9us P99=39226.7us max=61949.8us
[FINAL] crc: frames=749 algorithm_check=ok sum32=0x73f87a13
       (per-frame FNV computed; no independent per-frame expectation in DRY_RUN)
[FINAL] payload: rms_avg=7079.2 rms_max=19553.2 p2p_max=65535 min=-32768 max=32767
[FINAL] rate=24.97/s calls=749 lenBad=0 nullPtr=0 threads=1
===== [END] reason=timeout mode=blockcopy lane0_selfcheck=ok(640/640) verdict=NO-AUTO-FAIL(review required) =====
[i] hook window elapsed: 33.12s (js auto-stop at 30s)
[i] driver_exit_after = 35.70s (from driver start)
[i] js_sha256_at_exit = 041d6670...e2607725
[i] rc = 0
```

刺激：0–10 s 静默；约 12 s 起设备扬声器播放中文语音（9.5 s）；约 22 s 起播放 1 kHz 测试音（10 s）。

## 6. 60 秒运行（测试 B）— `t2_pcm_dryrun_60s_blockcopy.log`

```
[i] js_sha256 = 041d6670de4f19fb3c592b8cf90ab91f3d37e63856a72f3ad38e0136e2607725
[i] lane0 self-check: samples=640 mismatches=0 result=ok
[i] crc algorithm cross-check (first frame only): 0x5acf1ba vs exact 0x5acf1ba match=true
[FINAL 60.0s] mode=blockcopy produced=1500 consumed=1500 ringDrop=0 depthMax=3 seqGap=0
              readErr=0 lenErr=0 hookEx=0 drainEx=0 reentry=0/0 laneCheckErr=0
[FINAL] hook copy: n=1500 P50=67.2us P95=114.4us P99=185.2us max=1307.0us (excludes JS-lock queueing)
[FINAL] drain latency: n=1500 P50=15505.5us P95=27181.1us P99=35899.5us max=68796.0us
[FINAL] crc: frames=1500 algorithm_check=ok sum32=0xb1fe489f
[FINAL] payload: rms_avg=3536.3 rms_max=19431.5 p2p_max=65535 min=-32768 max=32767
[FINAL] rate=25.00/s calls=1500 lenBad=0 nullPtr=0 threads=1
===== [END] reason=timeout mode=blockcopy lane0_selfcheck=ok(640/640) verdict=NO-AUTO-FAIL(review required) =====
[i] hook window elapsed: 63.14s (js auto-stop at 60s)
[i] driver_exit_after = 65.39s (from driver start)
[i] rc = 0
```

刺激：0–10 s 静默；约 12 s 语音；约 22 s 1 kHz 测试音（10 s，约 32 s 结束）；30–60 s 持续观察。
**这只是 60 秒运行，不是长稳测试**（长稳未做，见 §10）。

两个运行里 `payload min/max` 都到过 ±32768：那是扬声器放语音/测试音时 ADC 削顶，
说明取到的确实是随声音变化的真实音频，不是常量缓冲。

---

## 7. 关于 CRC 的准确表述

- 每帧**都计算** FNV-1a（`Math.imul` 实现，1280 字节），`crcFrames` 记录帧数（749 / 1500）；
- `crcAlgorithmCheck` **只在第一帧**做一次：把 `Math.imul` 结果与 BigInt 精确实现比对，只用来验证**算法实现**；
- DRY_RUN 里**没有**"独立预期 CRC"用于逐帧完整性比对（没有接收端、没有重放）——
  因此**不能**把"算法交叉验证通过"说成"全部 PCM 帧已完成独立 CRC 完整性校验"。
  逐帧 FNV 只是被算出来并累加（`sum32`）用于观察波动。
- **T3 的接收端**会按实际帧头 CRC 对收到的载荷做完整性校验，那才是真正的端到端校验。

---

## 8. CPU 开销（原始采样可复核）

测量脚本：`04_device_t0/t2_cpu_measure.py`；原始日志：`04_device_t0/t2_cpu_measure.log`。
每个窗口都记录了墙钟起止、`/proc/<pid>/stat` 的 `utime/stime` 起止值与 jiffies 增量。

### 8.1 USER_HZ 的确认

- 设备 `/proc/config.gz` 可读，直接得到 `CONFIG_HZ=100` / `CONFIG_HZ_100=y`；
- procfs 的 tick 单位按 32 位 ARM 约定为 `USER_HZ=100`。
- `top -b -n 2 -d 1 -p <pid>` 的瞬时值在本机 toybox 上不可靠（同一时刻给 8.9%，与 jiffies 法差一个数量级），
  因此**只把 config.gz 作为依据**，top 交叉核对记为"不可用"。

### 8.2 三窗口原始采样（pid 19572，无音频刺激，各 15 s）

```
baseline_no_hook   utime 20130->21144  stime 358->368  djiffies=1024  wall=15.293s  cpu=66.96%
countonly          utime 21589->22611  stime 386->398  djiffies=1034  wall=15.213s  cpu=67.97%
blockcopy          utime 23634->24782  stime 425->440  djiffies=1163  wall=15.202s  cpu=76.50%
```

`cpu_percent = (utime+stime 增量) / (USER_HZ × 墙钟秒) × 100`

| 场景 | CPU（占单核） | 相对基线 |
|---|---|---|
| baseline（无 hook） | 66.96% | — |
| countonly（只计数的 hook） | 67.97% | **+1.01 pp** |
| blockcopy（拷贝 + 消费统计） | 76.50% | **+9.54 pp** |

解读（**真机实测 + 计算推导**）：Interceptor + JS 回调入口的固有开销约 +1 pp；
`Memory.copy` 本身按 25 帧/s × 70 µs ≈ 0.18% 单核；**其余约 +8 pp 来自消费端的 DRY_RUN 统计**
（每 20 ms 一次跨 Frida 边界读 5120 B、建视图、1280 B FNV、640 样本扫描）。

> 说明：更早一次同法测量（68.8% / 70.3% / 78.3%，pid 6934）**没有保存原始采样**，
> 因此只能记为"报告记录、不可独立复核"；本节的 66.96% / 67.97% / 76.50% 才是可复核的那一组。
> 局限：单次 15 s 窗口、±1–2 pp 噪声、三个窗口背靠背测量，环境负载漂移未完全排除。

---

## 9. 稳定性、进程重启事件与偏离

### 9.1 测试 A/B 期间

三进程（6682 / 6934 / 7031）全程存活；无 `FATAL`/`ANR`；无新 tombstone；
音频节拍始终 24.97–25.00/s；`rc=0`。

### 9.2 一次**由我造成的**进程重启（必须记录）

在做 CPU 标定时我在设备上起了 3 个 CPU-bound busy loop（想用它们标定 HZ），
设备负载升到 load average 15 左右，随后 `:core` 与 `:business` 在 **13:11 前后重启**：

| 项 | 变化 |
|---|---|
| `:core` | 6934 → **19572** |
| `:business` | 7031 → **19637** |
| 主进程 | 6682 未变 |

- **没有 tombstone**（最新仍是 2026-11-18 20:28），logcat 里也没有 `FATAL` / `ANR` / `signal 11`
  → 不是 native 崩溃，更像是高负载下被系统回收/重新拉起。
- 时间顺序上：**测试 A/B 已在此事件之前完成并 rc=0**（两份日志的 target_pid 都是 6934）。
- 事件后我用同一份脚本做了一次 20 s 独立验证（`t2_pcm_dryrun_20s_afterrestart.log`）：
  pid 19572、**模块基址变成 0x8f202000**、偏移仍 0xd455c、四项校验全过、
  自检 640/640、`ringDrop=0`、`hookEx=drainEx=0`、`rate=25.00/s`、hook P50 67.7 µs、`rc=0`。
- busy loop 现已全部清除（`ps` 复查无残留）。

**这是我的操作失误，与 T2 代码路径无关，但设备确实在我手上重启过一次**，因此如实记录。

### 9.3 与规格的偏离 / 历史说明

- 规格字面的 `strided`（`dst[i]=src[i*4]` 逐样本 640 对读写）**已从脚本中移除**，
  只保留为历史测量：`t2_pcm_dryrun_30s.log`（pid 6934、750 帧、`ringDrop=0`，但 hook P50 **18.7 ms**）。
  该日志是旧版本脚本产生的，**不能与本轮 blockcopy 结果混读**；正式模式只有 blockcopy。
- `countonly` 模式仅用于 §8 的开销分解，不产生 PCM，也不是正式模式。

---

## 10. 未验证事项

| # | 项 | 状态 |
|---|---|---|
| 1 | **原厂唤醒词与实际对话交互** | **未完成**：操作者不在家、设备不在身边，无法做真人语音测试。用设备扬声器播放的合成语音/测试音**不能**替代唤醒词测试。**需要在真机上单独进行。** |
| 2 | 采样率的独立时钟测量 | 仍为"强支持、未直测"（640 样本/40 ms + 两点频谱校准） |
| 3 | 消费延迟对端到端的影响 | P50 ≈15.5–16.2 ms（20 ms tick + 40 ms 帧周期决定）；T3 若"消费即发送"需再加这段 |
| 4 | hook 个别帧 1.3–1.6 ms 离群点 | 三次运行都有，未定位（疑似 GC 或锁等待） |
| 5 | 长稳（分钟级连续运行） | 未做；本轮最长 60 s |
| 6 | lane2/lane3 物理含义 | 未确认（本轮只提取 lane0） |
| 7 | CPU 绝对值的外部可比性 | 设备当前负载（load average ≈10）高于上午，绝对值偏高；只有同批窗口之间的差值可比 |

---

## 11. 文件清单

| 文件 | 说明 |
|---|---|
| `04_device_t0/t2_pcm_dryrun.js` | T2 脚本（blockcopy 正式模式；countonly 仅用于开销分解；lane0 自检带错误计数；启动参数打印；自动失败判定） |
| `04_device_t0/t2_pcm_dryrun_run.py` | 驱动（默认 blockcopy、拒绝未知模式、日志首行 JS SHA256、区分运行窗口/驱动退出时间、异常也清理） |
| `04_device_t0/t2_pcm_dryrun_30s_blockcopy.log` | **测试 A**：30 s，pid 6934 |
| `04_device_t0/t2_pcm_dryrun_60s_blockcopy.log` | **测试 B**：60 s，pid 6934 |
| `04_device_t0/t2_pcm_dryrun_20s_afterrestart.log` | 重启后 20 s 独立验证（pid 19572，基址 0x8f202000） |
| `04_device_t0/t2_cpu_measure.py` | CPU 原始采样脚本（HZ 依据 + 三窗口 jiffies 记录） |
| `04_device_t0/t2_cpu_measure.log` | CPU 原始采样日志（含 utime/stime 起止值） |
| `04_device_t0/t2_pcm_dryrun_30s.log` | **历史**：旧版 strided 实现日志（非正式模式，保留不覆盖） |
| `04_device_t0/t2_pcm_dryrun_60s.log` | **历史**：旧版 blockcopy 日志（保留不覆盖） |
| `04_device_t0/t2_pcm_dryrun_30s_blockcopy_selfcheck.log` | **历史**：旧版自检日志（保留不覆盖） |
| `04_device_t2_dryrun_report.md` | 本报告 |

---

## 12. 结论

- DRY_RUN 在真机上跑通：hook 内同步复制整帧、预分配有界环、独立消费端提取 lane0（1280 B）、
  逐帧长度/序号/统计全 0 异常，30 s 与 60 s 两次运行的 `verdict` 均为 `NO-AUTO-FAIL(review required)`。
- **T2 是否通过由审查方判定**。本轮不自动给"通过"结论。
- 进入 T3 前需要审查方决定：是否精简消费端统计以降低约 8 pp 单核开销；
  以及真人唤醒词/对话验证如何补做（本轮明确未做）。
