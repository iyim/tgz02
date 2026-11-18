# 第三阶段：PCM 旁路原型测试报告（修订 2 · 实测）

对象：`03_uds_test/`（PC 原型）+ `03_uds_test/android_uds_test/`（Android 普通进程）
性质：**W-PC（Windows 实测）+ A-SHELL（Android 普通进程实测）**。
**T-DEV（原厂进程内实测）本轮为 0** —— 没在设备上跑任何 hook。

配套文档：`03_pcm_bridge_design.md`（架构）、`03_pcm_bridge_review.md`（审查回执与证据等级）、`03_script_audit.md`

---

## 0. 结论

> **W-PC**：协议 v2 下 600 秒 15000 帧零丢失；接收端冻结 3 秒时发送侧只丢 68 帧、节拍误差 24.6 ms，
> 对照版（阻塞发送）单次发送耗时 **2,682,888 µs**。
> **A-SHELL**：Android armv7 上 `AF_UNIX + SOCK_DGRAM` 帧边界成立、满缓冲只报 **EAGAIN**、
> 阻塞对照把生产者冻了 **1.64 s**；发送端重启由 `epoch` 正确识别（300 帧，`missing=0`）。

证据等级（与 review 文档一致，全文严格区分）：

| 标记 | 含义 | 本轮 |
|---|---|---|
| **W-PC** | Windows 主机实测（AF_UNIX **SOCK_STREAM**） | ✅ |
| **A-SHELL** | Android 普通进程实测（TG-Z02 `/data/local/tmp`，`u:r:shell:s0`，**不注入不 hook**，AF_UNIX **SOCK_DGRAM**） | ✅ |
| **T-DEV** | TG-Z02 **原厂进程内**（`smartapp:core` + hook） | ❌ 0 |
| **S-RE** | 静态逆向（反汇编 / ELF） | ✅（见 01/02 文档） |
| **U** | 尚未验证 | — |

---

## 1. 判据与结果

| # | 判据 | 门槛 | W-PC | A-SHELL |
|---|---|---|---|---|
| J1 | 连续 10 分钟稳定 | 零丢帧零损坏 | ✅ 15000/15000，reject=0 | — （跑 12 s 用例） |
| J2 | 丢帧可精确定位 | 缺口 = 注入数 | ✅ 5→5、22→22 | ✅ 42+8=50 |
| J3 | 接收端停摆不阻塞发送 | 节拍误差 ≪ 一帧 | ✅ 24.6 ms（对照 2643 ms） | ✅ 15.9 ms（对照 1601 ms） |
| J4 | 缓冲满只丢不阻塞 | 环满/内核满都不影响节拍 | ✅ | ✅ `eagain=42` |
| J5 | 载荷可校验 | 独立实现全 PASS | ✅ 5/5 cap | ✅ 每用例 `bad=0` |
| J6 | 延迟可量化有上限 | P50/P95/P99/max | ✅ | ✅（avg/max） |
| J7 | 发送端重启不误判丢帧 | `epoch` 切换后 `missing` 不跳变 | ✅ `epochs=1`，missing=0 | ✅ 两个 epoch，missing=0 |

---

## 2. 环境

### 2.1 W-PC

| 项 | 值 |
|---|---|
| 主机 | Windows 10 22H2 (19045) x64 |
| 编译器 | TDM-GCC 64（gcc 10.x，MinGW-w64） |
| Python | 3.11.9 |
| 时钟 | `QueryPerformanceCounter` → 微秒（整机单调，跨进程可比） |
| 定时器 | `timeBeginPeriod(1)` |
| 传输 | `AF_UNIX + SOCK_STREAM`（Windows 内核无 DGRAM，见 §4） |

### 2.2 A-SHELL

| 项 | 值 |
|---|---|
| 设备 | TG-Z02，`Linux 4.4.95+ #1 SMP PREEMPT armv7l` |
| 身份 | `uid=2000(shell)`，`context=u:r:shell:s0`（**无 root**） |
| 工具链 | NDK r21e `armv7a-linux-androideabi26-clang -static` → ELF32 ARM EABI5 静态 |
| 位置 | `/data/local/tmp/tgz2_uds/`（可整目录删除） |
| 传输 | `AF_UNIX + SOCK_DGRAM`（抽象命名空间 + 文件路径各测一遍） |
| 时钟 | `clock_gettime(CLOCK_MONOTONIC)`，同机两进程共享 |

---

## 3. 被测对象

### 3.1 PC 原型（W-PC）

```
uds_source（模拟 hook 侧）                      uds_sink（模拟 AI 助手侧）
生产者线程 40 ms 绝对 deadline                 select(100 ms) + recv
  → 组装 1320 B 帧（ver2：magic/ver/seq/ts/epoch/crc）
  → ring_push（无锁 SPSC，64 深）      ──►     重组 / 魔数重同步
消费者线程                                    magic/ver/len/crc 校验
  → ring_pop → send 非阻塞                    确定性载荷逐字节比对
  → EAGAIN/ENOBUFS = 丢+计数                  过期帧丢弃（--max-age-ms）
  → EPIPE/ECONNRESET = 关闭+重连              epoch 切换 = 新会话
```

### 3.2 Android 测试（A-SHELL）

`dgram_server.c` / `dgram_client.c`：同一份 `tgz2_frame.h`（协议 v2），
客户端 40 ms 铁定节拍 + `sendto`，服务器 `recv` + 校验，两边都支持 `--sndbuf/--rcvbuf`、
服务器支持 `--pause-at/--pause-len` 人为冻结、`--max-age-ms` 过期丢弃。

**不接触 `smartapp`，不 hook，不需要 root。**

### 3.3 协议 v2（两端一致）

40 B 头：`magic | ver=2 | flags | hdr_len | seq | ts_us | epoch | rate | ch | bits | payload_len | crc` + 1280 B 载荷。
`epoch` 是本轮新增：**发送端实例标识**，用来把"重启"和"丢帧"分开。

---

## 4. W-PC 能力探针

```
$ probe_afunix.exe      → AF_UNIX ROUND-TRIP OK            (exit 0)
$ probe_dgram.exe       → dgram socket fail 10047          (exit 2, WSAEPROTONOSUPPORT)
```

CPython 3.11.9 无 `socket.AF_UNIX`；本机无 WSL/Docker/Podman。
⇒ 电脑端只能测 STREAM，DGRAM 交给 A-SHELL（§6）。

---

## 5. W-PC 场景结果（协议 v2）

| 场景 | 时长 s | 生产 | 环满丢 | 发送成功 | 发送丢弃 | 收到 | 序号缺口 | **过期丢** | 拒绝 | 重同步 | 延迟 P50/P95/P99/max (ms) | 节拍误差 max | 入环耗时 max |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| **baseline** | 600 | 15000 | 0 | 15000 | 0 | 15000 | 0 | 0 | 0 | 0 | **1.05 / 2.03 / 2.08 / 17.2** | 39.6 ms ⚠ | 25 µs |
| **stall** | 40 | 1000 | 0 | 932 | **68** | 932 | 68 | 0 | 0 | 0 | 1.07 / 2.05 / 2.36 / 2961.8 | **24.6 ms** | 2 µs |
| **naive**（对照） | 40 | 933 | 0 | 933 | 0 | 933 | 0 | 0 | 0 | 0 | 0.036 / 0.071 / 0.18 / 2963.0 | **2643.2 ms** | **2682888 µs** |
| **stale**（新） | 30 | 750 | 0 | 682 | 68 | 675 | 75 | **7** | 0 | 0 | **1.04 / 2.03 / 2.06 / 15.0** | 19.4 ms | 25 µs |
| **skip** | 20 | 500 | 5 | 495 | 0 | 495 | 4 (+1 首帧前) | 0 | 0 | 0 | 1.09 / 2.03 / 2.06 / 4.0 | 10.6 ms | 4 µs |
| **ringfull** | 20 | 500 | **22** | 478 | 0 | 474 | 26 | **4** | 0 | 0 | 1.15 / 2.04 / 2.11 / 13.8 | 22.6 ms | 2 µs |
| **slow** | 20 | 500 | 0 | 368 | 132 | 368 | 132 | 0 | 0 | 0 | 1660 / 3020 / 3140 / 4306 | 5.2 ms | 1 µs |
| **slowbuf** | 20 | 500 | 0 | 325 | 175 | 325 | 175 | 0 | 0 | 0 | **293 / 433 / 440 / 453** | 24.5 ms | 2 µs |

CPU（source 本进程 / 占单核）：baseline **8.19 s / 1.36 %**，其余场景 0.23~0.58 s（1.2~1.7 %）。
sink 全程 ≤0.06 s。

### 5.1 baseline：10 分钟，15000 帧

- 序号 0…14999 **完全连续**；`missing/dup/reorder/reject/resync/stale` 全 0。
- 字节 19,800,000 = 15000 × 1320；速率 32.23 KiB/s（= 31.25 × 1320/1280）。
- 延迟：均值 1.22 ms，**P50 1.049 ms，P95 2.034 ms，P99 2.079 ms，max 17.2 ms**（P50≈1 ms 是发送线程 1 ms 轮询的量化）。
- `push_us_max = 25 µs`，均值 0.15 µs —— hook 内允许做的全部工作就这个量级。
- `tick_late_avg = 85 µs`，`tick_late_max = 39.6 ms` 仅 1 次（主机同时在编译/写文件），`tick_missed=0`。

### 5.2 stall vs naive：本轮最关键的对照

两侧 socket 缓冲压到 8 KB，第 8 秒冻结接收端 3 秒：

| | ring + 非阻塞（设计） | 生产者直接阻塞发送（对照） |
|---|---|---|
| 丢帧 | 68（`send_drop_wb=68`） | 0 |
| **单次发送/入环最长耗时** | **2 µs** | **2,682,888 µs（2.68 s）** |
| **节拍误差 max** | **24.6 ms** | **2643.2 ms** |
| 帧时间戳最大间隔 | 2760 ms（丢帧造成） | 2682.9 ms（**生产者被冻住**） |

同一台机器、同一冻结脚本，只有"发送写在哪"不同：一个丢 68 帧继续跑，一个把 40 ms 节拍冻了 2.7 秒。

### 5.3 stale：过期帧丢弃（新增，生产语义）

`--max-age-ms 200`，第 6 秒冻结接收端 3 秒：

- 发送端：`send_drop_wb=68`（缓冲满）。
- 接收端：`stale=7` 被按时间戳丢弃，`missing=75 = 68 + 7` —— **账对得上**。
- **延迟 max 只有 15.0 ms**（对比 stall 的 2961.8 ms）：过期帧被丢掉的直接效果就是延迟不堆积。
- 这就是"不能无限积累旧语音"的实测证据。

### 5.4 ringfull / skip：两类丢弃的账

- `ringfull`：环容量 4，发送线程被停 1 秒 → `ring_drop=22`、`depth_max=4`（正好塞满）；
  接收端 `missing=26 = 22（环丢）+ 4（过期丢）`。
- `skip`：每 100 帧人为丢 1 → 生产 500、入环 495、环满丢 5；接收端 `miss_before_first=1 + missing=4 = 5`，与实际注入一致。

### 5.5 slow / slowbuf：延迟上限的决定因素

| 配置 | P50 | P95 | max | 发送丢弃 |
|---|---|---|---|---|
| 默认缓冲 | 1660 ms | 3020 ms | 4306 ms | 132 |
| `SO_SNDBUF = 8192` | 293 ms | 433 ms | **453 ms** | 175 |

队列在内核发送缓冲里，**它是延迟上限的唯一决定因素**（`16384 B / 31.25 KB/s ≈ 0.5 s`，与实测 453 ms 吻合）。

### 5.6 发送端重启（W-PC）

sink 跑 14 s，中间起两个 source（各 5 s，epoch 不同）：

```
PEER_CLOSED → REACCEPT → PEER_CLOSED → SUMMARY
accepted=250  missing=0  epochs=1  reject=0
verify: 2 个 session，各 125 帧，missing=0，RESULT=PASS
```

第一次尝试时 sink 在 `PEER_CLOSED` 后直接退出（`accepted=150` 就结束）——
已修为"关闭后重新 accept"，并让 accept 等待受 `--secs` 截止时间约束。

---

## 6. A-SHELL：Android 普通进程 DGRAM 实测

设备：`Linux 4.4.95+ armv7l`，`uid=2000(shell)`，`u:r:shell:s0`，静态 ELF32 ARM。
收发缓冲都请求 8192，**内核回读 16384**（Linux 会把值翻倍）。

| 用例 | 服务端 | 客户端 | 结论 |
|---|---|---|---|
| **case1 基本** | accepted 250，`missing=0`，`bad` 全 0，lat avg 184.5 µs / max 3.6 ms，tsgap 34.2~45.8 ms | produced 250，`ok=250`，`eagain=0`，`enobufs=0`，`partial=0`，tick_late_max 5.8 ms，send_us_max 1.66 ms | DGRAM 通路成立：**帧边界保留**（无 short/partial），32.23 KiB/s |
| **case2 冻结 2 s（非阻塞）** | accepted 250，`stale=8`，`missing=50`，lat avg 206.7 µs / max 8.4 ms | produced 300，`ok=258`，**`eagain=42`**，`enobufs=0`，`other=0`，last_errno=**11**，tick_late_max 15.9 ms，send_us_max 5.2 ms | **满缓冲报 EAGAIN，不阻塞**；丢 42 + 过期 8 = 缺口 50 |
| **case3 冻结 2 s（阻塞对照）** | accepted 250，`stale=9`，`missing=9` | produced 259，`ok=259`，`eagain=0`，**send_us_max 1,640,923 µs**，**tick_late_max 1,601,197 µs**，`tick_missed=1` | 生产者被冻 **1.64 s**；丢帧少但节拍毁了 |
| **case4 文件 socket** | accepted 250，`missing=0`，`bad` 全 0 | ok 250，eagain 0，tick_late_max 33 ms，send_us_max 7.2 ms | `/data/local/tmp` 文件 socket 在 shell 域**可用**，无 SELinux 拒绝 |
| **case5 发送端重启** | accepted 300（150+150），`missing=0`，最终 epoch=1393358067 | A: epoch 1390968851，B: epoch 1393358067 | **epoch 切换被正确识别，没有把重启算成 150 帧丢失** |

三条由真机回答的新事实（都是 A-SHELL，不是推测）：

1. **帧边界成立**：`bad.len=0`、`partial=0`，一次 `recv` 恰好一帧。
2. **满缓冲是 `EAGAIN`（errno 11），不是 `ENOBUFS`**：`enobufs` 全程 0。
   原设计把 ENOBUFS 当主要错误是错的（那是 netlink/packet 套接字的典型错误）；代码两者都判，文档已改。
3. **`SO_SNDBUF/SO_RCVBUF` 会被内核翻倍**（8192 → 16384），估算延迟上限要按 16 KB 算。

---

## 7. 独立校验（`verify_capture.py`，Python 重写协议）

sink 落盘的 `.cap` 逐帧校验：magic/ver/hdr_len/rate/ch/bits/payload_len、FNV-1a、
重算 640 个样本逐字节比对、**按 epoch 分组**核对序号连续性。

| cap | 帧数 | epoch 组 | 缺口 | 拒绝 | 结论 |
|---|---|---|---|---|---|
| `baseline.cap` | 15000 | 1 | 0 | 0 | PASS |
| `stall.cap` | 932 | 1 | 68（1 处 × 69） | 0 | PASS |
| `stale.cap` | 675 | 1 | 75 | 0 | PASS |
| `ringfull.cap` | 474 | 1 | 26 | 0 | PASS |
| `restart.cap` | 250 | **2** | 0 | 0 | PASS |

（A-SHELL 侧没有落盘 cap，服务端在收帧时实时做同样的校验，`bad` 五项在全部用例里都是 0。）

---

## 8. 回归：`analyze_pcm.py` 改造后输出不变

| 指标 | 第二阶段 | 本轮重跑 |
|---|---|---|
| 帧数 / 时长 | 1004 / 40.16 s | 1004 / 40.16 s |
| ch0 RMS / peak | 643.6 / 6663 | 643.6 / 6663 |
| ch1 RMS / peak | 681.1 / 6889 | 681.1 / 6889 |
| ch2 / ch3 RMS / peak | 44.3 / 131 | 44.3 / 131 |

→ 脚本重构没动统计口径，也没动任何 hook 偏移与 PCM 参数。

---

## 9. 噪声与解释

| 现象 | 解释 |
|---|---|
| `tick_late_max` 在 10~40 ms 之间波动（baseline 39.6 ms） | 主机同时跑编译/文档 IO；`tick_missed=0` 说明没有丢整帧 |
| `ts_delta` 出现 0.4~0.6 ms 的极短间隔 | 上一拍迟到后按"绝对 deadline 不漂移"追赶，属设计行为 |
| `stall` 的 `lat avg 22.5 ms` 而 `p50 1.07 ms` | 均值被冻结期间那批 2.9 s 的帧拉高；看分位数才对 |
| `naive` 的 `p50 36 µs` | 帧直接落进内核缓冲，没有排队；**延迟低不等于设计好**（生产者被冻 2.7 s） |
| `slow` 的 `tsgap_max 1200 ms` | 时间戳间隔包含丢帧；只有 `missing=0` 的场景才能当节拍用 |
| `ringfull` 的 `tick_late_max 22.6 ms` | 外部负载；该场景 `push_us_max` 仅 2 µs |
| A-SHELL case1 的 `tick_late_max 5.8 ms`、`send_us_max 1.66 ms` | 首次 `sendto` 触发页错误；之后稳定在数十微秒 |

---

## 10. 未验证（U）

| # | 项 | 说明 |
|---|---|---|
| 1 | `feed` 是否**单线程**调用 | SPSC 前提；用 `thread_probe.js` 只读探针验证，**未执行** |
| 2 | 原厂进程内的一切 | T-DEV = 0：hook 耗时、唤醒成功率、CPU 增量都还没有 |
| 3 | 抽象命名空间跨进程可达性（`:core` ↔ 助手进程） | A-SHELL 只证明了 shell↔shell |
| 4 | 真实断连（kill -9 助手进程）下的重连时序 | 代码路径已实现，未构造真实断开 |
| 5 | 固件 OTA 后签名是否仍匹配 | 每次 OTA 重跑闸 1~3 |
| 6 | 原厂 TTS 回采是否会误触发 VAD | 留给 VAD 阶段 |

---

## 11. 复现

```powershell
# W-PC
cd D:\tgz02\OS\system\my-doc\03_uds_test
gcc -O2 -Wall -o uds_sink.exe   uds_sink.c   -lws2_32
gcc -O2 -Wall -o uds_source.exe uds_source.c -lws2_32 -lwinmm
python run_test.py --scenario all          # ≈13 分钟
python run_test.py --scenario stale        # 过期帧丢弃
python verify_capture.py _run\baseline.cap

# A-SHELL
cd android_uds_test
$cc = "D:\tgz02\OS\_analysis\tools\android-ndk-r21e\toolchains\llvm\prebuilt\windows-x86_64\bin\armv7a-linux-androideabi26-clang.cmd"
& $cc -O2 -static -o out\dgram_server dgram_server.c
& $cc -O2 -static -o out\dgram_client dgram_client.c
adb push out\dgram_server out\dgram_client run_on_device.sh /data/local/tmp/tgz2_uds/
adb shell 'sh /data/local/tmp/tgz2_uds/run_on_device.sh'
adb shell 'sh /data/local/tmp/tgz2_uds/run_case5.sh'

# 清理
adb shell rm -rf /data/local/tmp/tgz2_uds
```

---

## 12. 测试驱动的 6 处设计修正（都已回写）

| # | 问题 | 症状 | 修正 | 等级 |
|---|---|---|---|---|
| 1 | 发送线程空闲轮询写 500 µs | Windows `Sleep(500/1000)=Sleep(0)` → **占满一核** | 改 1 ms，`tgz2_sleep_us` 最小 1 ms；CPU 1.36 % | W-PC |
| 2 | 首帧 deadline 多算一周期 | 第一段间隔 80 ms | `deadline` 初值 = 当前时刻 | W-PC |
| 3 | 重组缓冲 10.5 KB < 单次 `recv` 突发 | 慢消费者时**假 resync / 假 bad magic** | 缓冲 256 KB + `recv` 直读进重组缓冲 | W-PC |
| 4 | 以为延迟上限由自家环形缓冲决定 | 慢消费者 P50 1.66 s / max 4.3 s | 定位为内核 `SO_SNDBUF`；设 8 KB 后上限 453 ms | W-PC |
| 5 | 把 `ENOBUFS` 当 DGRAM 满缓冲的主要错误 | 文档/注释误导 | 真机上**只出现 `EAGAIN`(11)**，两者都判但以 EAGAIN 为准 | A-SHELL |
| 6 | sink 在 `PEER_CLOSED` 后直接退出 | 发送端重启后收不到后续帧（14 s 计划只跑了 6 s） | 改为关连接后重新 accept，并让 accept 等待受 `--secs` 约束 | W-PC |

另外，协议从 v1 升到 v2（`frames_total` → `epoch`）：这是审查意见 §3 的直接产物，
已在 W-PC 与 A-SHELL 两侧各自验证"重启不误判丢帧"。
