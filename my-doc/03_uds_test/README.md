# 03_uds_test — PCM 旁路原型（电脑端）

本目录只做一件事：**证明 16 kHz 单声道 PCM 能通过独立通道稳定送达，且发送侧永不阻塞**。
不接 ASR/VAD/LLM，不碰设备。

协议定义见 `tgz2_frame.h`（40 B 头 + 1280 B 载荷 = 1320 B/帧，40 ms 一帧）。

---

## 1. 为什么是 C 而不是 Python 两端

本机实测（`probe_afunix.c` / `probe_dgram.c`）：

| 项目 | 结果 |
|---|---|
| CPython 3.11.9 `socket.AF_UNIX` | 不存在（该解释器未开编译开关） |
| Windows 10 19045 内核 AF_UNIX | 支持 |
| `AF_UNIX` + `SOCK_STREAM`（C/winsock） | 可用 |
| `AF_UNIX` + `SOCK_DGRAM`（C/winsock） | `WSAEPROTONOSUPPORT 10047`，不可用 |
| WSL / Docker / Podman | 均未安装 |

所以：**两端用 C**（winsock 能直接建 AF_UNIX），Python 只做编排与离线校验。
这两个 C 文件同时是设备侧原生实现（方案 B）的骨架：去掉 `#ifdef _WIN32` 用 NDK 编到 armv7 即可。

---

## 2. 编译

Windows（TDM-GCC，已验证）：

```powershell
cd D:\tgz02\OS\system\my-doc\03_uds_test
gcc -O2 -Wall -o uds_sink.exe   uds_sink.c   -lws2_32
gcc -O2 -Wall -o uds_source.exe uds_source.c -lws2_32 -lwinmm
gcc -O2 -o probe_afunix.exe probe_afunix.c -lws2_32
gcc -O2 -o probe_dgram.exe  probe_dgram.c  -lws2_32
```

`-lwinmm` 是为了 `timeBeginPeriod(1)`：Windows 默认定时器粒度 15.6 ms，不调这个 40 ms 节拍会抖 ±15 ms。

Linux / Android（NDK，`armv7a-linux-androideabi26-clang`）：

```sh
clang -O2 -o uds_sink   uds_sink.c
clang -O2 -o uds_source uds_source.c -lpthread
```

---

## 3. 跑

一条命令跑全部场景（约 13 分钟，baseline 占 10 分钟）：

```powershell
python run_test.py --scenario all
```

单场景：

```powershell
python run_test.py --scenario baseline --secs 600
python run_test.py --scenario stall --secs 40     # 接收端停摆 2 s，验证发送端不阻塞
python run_test.py --scenario naive               # 反面对照：阻塞发送会怎样
```

手动跑（看实时输出）：

```powershell
# 窗口 A
.\uds_sink.exe --path _run\m.sock --secs 60 --capture _run\m.cap
# 窗口 B
.\uds_source.exe --path _run\m.sock --secs 50
# 校验
python verify_capture.py _run\m.cap
```

---

## 4. 场景说明

| 场景 | sink 参数 | source 参数 | 想证明什么 |
|---|---|---|---|
| `baseline` | — | — | 10 分钟稳定：0 丢帧、延迟稳定、节拍不漂 |
| `stall` | `--stall-at 10 --stall-len 2` | — | 接收端卡 2 s，发送端只丢帧、节拍不倒 |
| `naive` | 同上 | `--naive` | 反面对照：生产者直接阻塞 send → 节拍被拖死 |
| `skip` | — | `--skip-every 100` | 人为造缺口，验证 seq 缺口统计准确 |
| `ringfull` | — | `--ring 4 --consumer-pause-at 5 --consumer-pause-ms 1000` | 发送线程被调度走 → 环满 → 只丢不阻塞 |
| `slow` | `--slow-us 3000` | — | 慢消费者：延迟不能无限增长，只能丢帧 |

---

## 5. 每个数字的含义

`sink`（接收端）SUMMARY：

| 字段 | 含义 |
|---|---|
| `accepted` | 通过全部校验的帧数 |
| `reject.magic/short/hdr/crc/payload` | 各类拒绝（应为 0） |
| `resync` | stream 模式下因半帧/错位所做的重同步次数 |
| `seq_first` / `seq_last` | 首末序号 |
| `miss_before_first` | 第一帧之前的丢帧数（等于 `seq_first`） |
| `missing` | 中间缺口累计帧数（= 丢帧数） |
| `dup` / `reorder` | 重复 / 乱序（UDS 上应恒为 0） |
| `lat_us.p50/p95/p99/max` | 端到端延迟（收到时刻 − 帧头采集时刻） |
| `gap_ms.max` | 接收侧两次收帧的最大间隔（能看出读端被调度走） |
| `tsgap_ms.min/max` | 帧头时间戳间隔（能看出发送侧节拍是否真 40 ms） |

`source`（发送端）SUMMARY：

| 字段 | 含义 |
|---|---|
| `produced` / `push_ok` / `ring_drop` | 生产数 / 入环数 / 环满丢弃 |
| `send_ok` / `send_drop_wb` / `send_partial` | 发送成功 / 非阻塞丢弃 / 半帧 |
| `depth_max` | 环形缓冲最大深度（应远小于 `ring_cap`） |
| `tick_late_max_us` | **节拍误差**：每帧实际唤醒时刻相对绝对 deadline 的滞后 |
| `tick_missed` | 滞后超过一整个周期（40 ms）的次数，应为 0 |
| `push_us_max` | 入环动作最长耗时（= hook 内允许做的全部工作） |
| `ts_delta_ms.min/max` | 相邻帧时间戳间隔，正常应是 39.9~40.1 |

判据：`tick_late_max_us` 在几十微秒量级、`tick_missed == 0`、`ts_delta` 稳定在 40±0.2 ms。

---

## 6. 已知限制

- 本机只能用 `stream`；`--proto dgram` 只能在 Linux/Android 上测（Windows 内核不支持 AF_UNIX DGRAM）。
- 原型载荷是 `seq` 决定的伪随机序列，不是真语音；真语音路径已由第二阶段 `pcm_talk.raw` 验证。
- 只有 1 个生产者 / 1 个消费者；若设备上 `feed` 会跨线程并发（未验证），SPSC 环需要改成 MPSC 或按线程分环。
