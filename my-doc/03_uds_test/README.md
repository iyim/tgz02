# 03_uds_test — PCM 旁路原型（电脑端）

本目录只做一件事：**证明 16 kHz 单声道 PCM 能通过独立通道稳定送达，且发送侧永不阻塞**。
不接 ASR/VAD/LLM。

协议定义见 `tgz2_frame.h`：**v2，40 B 头 + 1280 B 载荷 = 1320 B/帧，40 ms 一帧**。
v2 相对 v1 的唯一改动：头里 offset 20 从 `frames_total` 换成 **`epoch`（发送端实例标识）**，
用来区分"发送端重启"与"真的丢帧"。

子目录 `android_uds_test/` 是 Android armv7 的 DGRAM 测试（在本机 Windows 上无法验证 DGRAM 语义时用）。

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

DGRAM 语义改由 `android_uds_test/` 在真机上验证（见 `../03_pcm_bridge_test.md` §6）。

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
python run_test.py --scenario stall --secs 40     # 接收端停摆 3 s，验证发送端不阻塞
python run_test.py --scenario stale --secs 30     # 过期帧丢弃（生产语义）
python run_test.py --scenario naive               # 反面对照：阻塞发送会怎样
```

手动跑（看实时输出）：

```powershell
.\uds_sink.exe --path _run\m.sock --secs 60 --capture _run\m.cap --max-age-ms 500
.\uds_source.exe --path _run\m.sock --secs 50 --sndbuf 8192
python verify_capture.py _run\m.cap
```

---

## 4. 场景说明

| 场景 | sink 参数 | source 参数 | 想证明什么 |
|---|---|---|---|
| `baseline` | — | — | 10 分钟稳定：0 丢帧、延迟稳定、节拍不漂 |
| `stall` | `--max-age-ms 0 --stall-at 8 --stall-len 3` | `--sndbuf 8192` | 接收端卡 3 s，发送端只丢帧、节拍不倒 |
| `naive` | 同上 | 同上 + `--naive` | 反面对照：生产者直接阻塞 send → 节拍被拖死 |
| `stale` | `--max-age-ms 200 --stall-at 6 --stall-len 3` | `--sndbuf 8192` | 过期帧被接收端丢弃，延迟不堆积 |
| `skip` | — | `--skip-every 100` | 人为造缺口，验证 seq 缺口统计准确 |
| `ringfull` | — | `--ring 4 --consumer-pause-at 5 --consumer-pause-ms 1000` | 发送线程被调度走 → 环满 → 只丢不阻塞 |
| `slow` | `--max-age-ms 0 --slow-us 60000` | — | 慢消费者：延迟上限由内核缓冲决定 |
| `slowbuf` | 同上 | `--sndbuf 8192` | 把上限压到 ~0.45 s |

---

## 5. 每个数字的含义

`sink`（接收端）SUMMARY：

| 字段 | 含义 |
|---|---|
| `accepted` | 通过全部校验的帧数 |
| `reject.magic/short/hdr/crc/payload` | 各类拒绝（应为 0） |
| `resync` | stream 模式下因半帧/错位所做的重同步次数 |
| `seq_first` / `seq_last` | 当前 epoch 内首末序号 |
| `miss_before_first` | 首帧之前的丢帧数（等于 `seq_first`） |
| `missing` | 中间缺口累计帧数（= 丢帧数） |
| `dup` / `reorder` | 重复 / 乱序 |
| `stale` | 因 `--max-age-ms` 被丢弃的过期帧 |
| `epoch` / `epochs` | 当前发送端实例 / 发现过几次切换（发送端重启） |
| `lat_us.p50/p95/p99/max` | 端到端延迟（收到时刻 − 帧头采集时刻） |
| `gap_ms.max` | 接收侧两次收帧的最大间隔 |
| `tsgap_ms.min/max` | 帧头时间戳间隔（只有 `missing=0` 时才能当节拍看） |

`source`（发送端）SUMMARY：

| 字段 | 含义 |
|---|---|
| `produced` / `push_ok` / `ring_drop` | 生产数 / 入环数 / 环满丢弃 |
| `send_ok` / `send_drop_wb` / `send_partial` | 发送成功 / 非阻塞丢弃 / 半帧 |
| `reconnects` | 对端消失后重建连接的次数 |
| `depth_max` | 环形缓冲最大深度（应远小于 `ring_cap`） |
| `tick_late_max_us` | **节拍误差**：每帧实际唤醒时刻相对绝对 deadline 的滞后 |
| `tick_missed` | 滞后超过一整个周期（40 ms）的次数，应为 0 |
| `push_us_max` | 入环动作最长耗时（= hook 内允许做的全部工作） |
| `ts_delta_ms.min/max` | 相邻帧时间戳间隔，正常应是 39.9~40.1 |

判据：`tick_late_max_us` 在几十微秒~几毫秒、`tick_missed == 0`、`ts_delta` 稳定在 40±0.2 ms。

---

## 6. 真机脚本

| 文件 | 作用 | 状态 |
|---|---|---|
| `pcm_bridge_draft.js` | 方案 A（修订 6）：T2 式整帧 `Memory.copy(5120)` 入 64×5120 B 环 → 20 ms 消费端抽 lane0 / FNV-1a / TGZ2 v2 头 → 非阻塞 `AF_UNIX SOCK_DGRAM`（抽象名 `tgz2_pcm`） | **已真机实测（T3，2026-11-19，10 s ×2：252/252 帧，CRC/序号全 0 错）** |
| `thread_probe.js` | 只读线程探针：验证 `feed` 是否单生产者（SPSC 前提）；30 s 到点自动 detach | 未执行（本轮由 `pcm_bridge_draft.js` 内的 `producerTid` 守卫实测：单生产者 19873） |

执行顺序（每次只引入一个变量）：
`thread_probe.js`（只读）→ `pcm_bridge_draft.js` + `DRY_RUN=true`（只统计）→ 打开发送。

T3 实测与统计见 `../04_device_t3_uds_report.md`；驱动脚本 `../04_device_t3/run_t3_uds.py`。

## 7. 本机测试（不连设备）

| 文件 | 作用 |
|---|---|
| `tests/bridge_unit_test.js` | 把 `pcm_bridge_draft.js` **原样**加载进假 Frida 环境，覆盖任务书 §5 的 18 项：整帧复制、lane0 抽取、TGZ2 v2 头全字段、`ts_us/epoch/seq`、flags 无 SYNTHETIC、JS/C FNV 对拍、sendto 成功 / EAGAIN / ENOBUFS / 对端消失重连、stale、时钟失败、环满、多生产者线程（单 / 双 / 5 TID 交替 + 重入拦截）、stop 幂等、初始化回滚、DRY_RUN 无 socket、Hook 纯函数性。**240 断言** |
| `tests_c/fnv_golden.c` | 用真正的 `tgz2_fnv1a()` 生成 JS/C 对拍金标准常量（`0x811c9dc5 / 0xe40c292c / 0x1a47e90b / 0xa7ce7505 / 0x09d6a1c5 / 0xee980ac9`） |
| `tests/probe_detach_test.js` | `thread_probe.js` 的卸载验证：到点 detach、幂等、安装失败不留定时器、统计口径。**43 断言** |
| `crc_crosscheck/` | JS/C 的 FNV-1a 逐字节一致（18 组，含真实 ch0）；反面对照证明 `Math.imul` 必需 |
| `bindweak_probe.js` / `bindweak_run.py` | `Script.bindWeak` 生命周期实测（本机进程） |

```powershell
node --check pcm_bridge_draft.js
node tests\bridge_unit_test.js
node tests\probe_detach_test.js
cd crc_crosscheck; python run_crosscheck.py
```

## 8. 已知限制

- 本机只能用 `stream`；`--proto dgram` 只能在 Linux/Android 上测（Windows 内核不支持 AF_UNIX DGRAM）。
- 原生负载是 `seq` 决定的伪随机序列，不是真语音；真语音路径已由第二阶段 `pcm_talk.raw` 验证。
- 只有 1 个生产者 / 1 个消费者。真机实测 `producerTid` 恒为 19873（单生产者），若将来出现第二个生产者，
  脚本会自动禁用旁路并记录 `multi-producer:<tid>`。
- 线程序号 `seq` 在"发送尝试"时分配：`sendDrop` 会消耗一个 `seq`，接收端表现为缺口；
  `stale` / `ringDrop` / `noPeerDrop` 不消耗 `seq`。因此 `接收端 missing == sendDrop + 内核丢包`。
- 帧头 `ts_us` 是"进入 Hook 并拿到 JS 锁之后"的时刻，受 Frida JS 锁排队影响会成对聚集
  （实测间隔 5.77~154.53 ms，均值 39.9 ms）。T4 以后的下游节奏判断不能直接依赖该时间戳。
