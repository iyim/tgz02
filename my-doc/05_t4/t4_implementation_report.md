# T4-01 实现与验收报告（独立 PCM 接收进程 + 基线能量 VAD）

> 结论一句话：**T4 独立接收进程已在 TG-Z02 真机上跑通** —— 从 T3 的 `tgz2_pcm` 收真实 PCM，
> 协议/CRC/序号全部干净（`received == accepted == sent`，`missing/dup/reorder/bad_*` 全 0），
> 无接收队列丢弃，安静环境**零误触发**；片段落盘路径用**强制低阈值**跑通并回拉 6 个可播放 WAV。
> **真人说话（场景 B/C）与背景噪声（场景 D）未验证** —— 设备旁无人，也不能用合成音频冒充。
>
> **T4-02 追加（见 §10）**：退出时排空队列（新增 `processed`）、乱序不污染序号高水位、
> WAV 文件名带 run_id 且不覆盖旧文件 —— 三项已修复，本机测试 + 真机验证通过。

- 基线 commit：`50c61f8863a028c4f94231de18efd97fd4e2d05e`
- 本轮提交：`f93e2c967807357604e395769db747d0a1940ac5`
  （`feat: add T4 PCM receiver and energy VAD`；本报告的回填只改这一行）
- 分支：`main`（未建分支、未开 PR、未 reset、未 force push）
- 未修改：`tgz2_frame.h`（协议/版本/帧大小）、`pcm_bridge_draft.js`、`dgram_server.c`、
  T0/T1/T2/T3 已通过的代码与日志、原厂 APK/SO/分区

---

## 1. 证据分类（先看这张表）

| 项目 | 状态 |
|---|---|
| 接收端代码、VAD、片段切分、WAV、队列解耦、CLI、SUMMARY | **已实现** |
| VAD 单元测试（10 组，65 断言） | **本机通过**（gcc 10.3.0，0 warning） |
| 接收端协议/队列/WAV 测试（9 组，124 断言） | **本机通过**（gcc 10.3.0，0 warning） |
| Android NDK 编译（r21e / armeabi-v7a / API 26） | **通过，0 warning / 0 error**，ELF32+ARM 已核对 |
| 场景 A：安静环境 ≥30 s，不误触发 | **真机已验证**（190 s） |
| 场景 E：连续 ≥3 min 不崩、队列不增长 | **真机已验证**（190 s，队列高水位 3/128） |
| 片段 WAV 落盘（真实设备音频） | **真机已验证**（强制低阈值，6 个片段，本机逐个校验通过） |
| T4-02：退出排空队列（pthread 测试） | **真机已验证**（`drain_test` 在 TG-Z02 上 18 passed / 0 failed） |
| T4-02：乱序/重复/回绕序号语义 | **本机测试通过**（`receiver_test.py` 第 10 组） |
| T4-02：WAV 文件名唯一、不覆盖 | **真机已验证**（两次运行同名片段号/起始序号并存 9 个文件） |
| 场景 B：真人连续说话 ≥5 句 | **未验证**（需人对着设备说话） |
| 场景 C：句中短暂停顿不切段 | **未验证**（同上；逻辑本身由单元测试 T5 覆盖） |
| 场景 D：背景噪声误触发 | **未验证**（现场无可用噪声源/播放通路） |
| ASR / LLM / TTS / 唤醒词 | 本轮不做（任务范围外） |

---

## 2. 新增文件

```
my-doc/05_t4/
  README.md                      使用说明 + ADB 真机步骤（10 步）
  t4_implementation_report.md    本文件
  android/
    t4_receiver.c               主程序：CLI / 抽象 UDS DGRAM / 两线程 / 片段落盘 / SUMMARY
    rx_core.c  rx_core.h        帧校验与统计、有界队列、JSON、WAV 写入（无 socket/线程依赖）
    vad_energy.c  vad_energy.h  能量 VAD 状态机（纯 C）
    build.sh  build.ps1         NDK 交叉编译（POSIX / 本机 Windows）
    run_t4.sh                   设备端 start/status/stop/log/segments
  tests/
    vad_unit_test.c             VAD 单元测试（10 组）
    receiver_harness.c          驱动 rx_core.c 的 harness（STATS/QUEUE/WAV/SUMMARY）
    receiver_test.py            协议/队列/WAV 自动测试（Windows 可跑）
  test_logs/                    本轮实际测试输出（UTF-8）
    vad_unit_test.log  receiver_test.log  ndk_build.txt
  device_run_quiet_190s.log     真机安静环境 190 s 的完整输出（CONFIG/READY/SUMMARY）
  device_run_forced_30s.log     真机强制低阈值 30 s 的完整输出（含 6 条 SEGMENT）
  device_segments/*.wav         真机切出的 6 个片段（16 kHz/单声道/16-bit，可试听）
```

未修改任何既有文件。

---

## 3. 架构：接收与处理解耦

```
recv 线程（每 100 ms select 唤醒一次，只看停止标志）
  recv 一个数据报 -> rx_classify（长度 != 1320 直接拒；tgz2_unpack 校验 magic/ver/hdr/rate/ch/bits/CRC）
    -> 通过则取 1280 B 载荷作为单声道 PCM（T3 发送端已在消费端取好 lane0）
    -> 互斥锁内 push 有界队列（cap 默认 128 帧 = 5.12 s）
处理线程（cond_timedwait 50 ms 超时，同样只为看停止标志）
  pop 一帧 -> vad_feed（纯能量状态机）-> sink 回调 -> WAV 写盘 + SEGMENT 日志
```

- 队列**满时丢弃新帧**（`queue_drop++`），绝不覆盖未处理帧，也绝不反压发送端；
  高水位 `queue_high_watermark` 单独统计。
- 只有一把互斥锁 + 一个条件变量，没有线程池、没有额外队列。
- 接收线程**从不向发送端写任何数据**（无 ACK），也不会因写盘变慢而阻塞 `recv`
  （写盘在另一个线程）。
- 不使用发送端 `ts_us` 做定时器/切片；`ts_us` 只进 SEGMENT 日志
  （`start_ts_us/end_ts_us`）。VAD 完全按**帧到达顺序**推进。
- 队列槽位按 `cap` 堆分配（`cap * 1296 B`，默认约 166 KB），不占栈、不用固定大数组。

---

## 4. VAD 状态机与参数

`CALIBRATING → IDLE → SPEECH → IDLE`；`start_thr = max(min_rms, noise*start_ratio)`，
`end_thr = start_thr * end_ratio`（迟滞），进入 SPEECH 时补写 pre-roll，
达到 `max_segment_ms` 时**翻滚**分段（当前帧只写进新片段，不重复、不丢音）。

| 参数 | CLI | 默认 | 真机启动日志里的实际值 |
|---|---|---:|---|
| 帧长 | 协议固定 | 40 ms | `frame_ms=40, frame_samples=640` |
| 校准 | `--calibration-ms` | 1000 | `vad_calib_frames=25` |
| 最小起始 RMS | `--min-rms` | 180 | `min_rms=180` |
| 起始倍数 | `--start-ratio` | 3.0 | `start_ratio=3` |
| 结束倍数 | `--end-ratio` | 0.6 | `end_ratio=0.6` |
| 起始确认 | `--start-frames` | 2 | `start_frames=2` |
| hangover | `--hangover-ms` | 600 | `vad_hangover_frames=15` |
| pre-roll | `--pre-roll-ms` | 200 | `vad_pre_roll_frames=5` |
| 最大片段 | `--max-segment-ms` | 15000 | `vad_max_segment_frames=375` |
| 噪声平滑 | `--noise-alpha` | 0.05 | `noise_alpha=0.05` |

参数非法一律 `exit 2` + 明确原因，不会静默使用错误值。

**它不是产品级语音检测器**：只看能量，不区分人声/音乐/敲击；阈值必须按真机麦克风噪声重新标定。

---

## 5. 本机测试结果（实际执行）

环境：Windows 10 19045 / gcc `(tdm64-1) 10.3.0` / Python 3.11.9。

### 5.1 VAD 单元测试 —— 65 passed / 0 failed

```
gcc -O2 -Wall -Wextra -o tests\vad_unit_test.exe tests\vad_unit_test.c android\vad_energy.c -lm
.\tests\vad_unit_test.exe
=== 65 passed, 0 failed ===        (exit 0, 编译 0 warning)
```

覆盖（对应任务书 §5.A）：

| 组 | 内容 | 关键断言 |
|---|---|---|
| T1 | 全零静音 | 125 帧不打开片段，`speech_frames=0`，噪声底=0 |
| T2 | 低幅度噪声（RMS 40） | 225 帧不触发；起始阈值 = max(180, 40×3) = 180，结束阈值 108 |
| T3 | 连续高能量 | 2 帧 400 触发一次；进入 SPEECH；片段末尾 seq = 触发帧 |
| T4 | 单帧脉冲 | 不触发，计数被后续静音清零 |
| T5 | 语音中停顿 400 ms | 不结束（hangover 600 ms），恢复后仍是同一片段 |
| T6 | 持续静音 15 帧 | 结束一次，`end_reason=silence`，回 IDLE |
| T7 | pre-roll 帧数 | 200 ms→5 帧（首帧 seq = 触发帧−4）；400 ms→10 帧；`pre_roll=0` 时触发帧自己写入 |
| T8 | 最大片段时长 | 200 ms 上限下 12 帧切成 5+5+2，`end_reason=max_duration`，不丢不重 |
| T9 | 噪声底冻结 | SPEECH 期间 50 帧 400 幅度不改变噪声底；回 IDLE 后才更新 |
| T10 | 参数边界/异常输入 | 9 类非法配置被拒并给出原因；`vad_feed(NULL)`/帧长错/未初始化均返回 −1 不崩溃 |

### 5.2 接收端协议/队列/WAV —— 124 passed / 0 failed

```
python tests\receiver_test.py
=== 124 passed, 0 failed ===       (exit 0)
```

| 组 | 内容 | 实测 |
|---|---|---|
| 1 | 合法帧 | `received=3, accepted=3`，所有 bad 计数 0，`seq 1..3` |
| 2 | 错误长度 | `bad_len=1, accepted=0`（长度在 unpack 之前判） |
| 3 | 错误 CRC | `bad_crc=1`，同批合法帧仍被接收 |
| 4 | 错误 magic / version | `bad_magic=1, bad_ver=1, accepted=0` |
| 5 | 序号缺口 / 重复 / 乱序 | 跳 3 个 seq → `missing=3`；重复 → `duplicate=1`；回退 → `reorder=1` |
| 6 | epoch 切换 | `epoch_switches=1`，`missing=0`（不把重启算成丢帧） |
| 7 | 队列满 | cap=8 推 13 → `pushed_ok=8, drops=5, high_watermark=8`，取回仍是 seq 1..8（未覆盖） |
| 8 | SUMMARY | 12 个必需字段齐全且都是整数，值与 STATS 一致 |
| 9 | WAV | 文件大小 = 44 + 5×1280；RIFF size = 文件长−8；data size = PCM 长；`wave` 读回 16000/1ch/16bit、`nframes=5×640`，逐字节与写入样本一致 |

> 说明：Windows 内核不支持 `AF_UNIX SOCK_DGRAM`，本机测试只覆盖可移植逻辑；
> socket 收发由真机 `t4_receiver` 验证（见 §7），不把本机测试当成 socket 验证。

### 5.3 其它检查

```
python -m py_compile tests\receiver_test.py     -> exit 0
```

---

## 6. Android NDK 编译

| 项 | 值 |
|---|---|
| NDK | `D:\tgz02\OS\_analysis\tools\android-ndk-r21e`（`Pkg.Revision = 21.4.7075529`） |
| 编译器 | `…\bin\armv7a-linux-androideabi26-clang.cmd`，clang 9.0.9，`Target: armv7a-unknown-linux-android26` |
| 命令 | `armv7a-linux-androideabi26-clang -O2 -Wall -Wextra -static -o out/t4_receiver t4_receiver.c rx_core.c vad_energy.c -lm` |
| 结果 | exit 0，输出 **0 行**，**0 warning / 0 error**，无任何 `-Wno-*` |
| 产物 | `android/out/t4_receiver`，3,431,344 B |
| SHA256 | `d4ac850e1712e3bf9fd37840ffce8ce8d431566271211a94aedb3c76e48455c4` |
| ELF | `Class: ELF32` / `Type: EXEC` / `Machine: ARM`（armeabi-v7a，静态） |

---

## 7. 真机测试（TG-Z02，pid 19572，Android 8.1 / API 27，SELinux Permissive）

设备端脚本：`/data/local/tmp/t4/run_t4.sh`；T3 侧用**未修改**的 `pcm_bridge_draft.js`
（`js_sha256=08c4720e…`，与 T3 交付一致）。

### 7.1 场景 A + E：安静环境 190 s（接收端 `--secs 190`，bridge 注入 180 s）

接收端 SUMMARY（`device_run_quiet_190s.log`）：

```json
{"type":"SUMMARY","received":4450,"accepted":4450,"bad_len":0,"bad_crc":0,
 "missing":0,"duplicate":0,"reorder":0,"bad_magic":0,"bad_ver":0,"bad_hdr":0,
 "bad_param":0,"epoch_switches":0,"epoch":4090137433,"seq_first":1,"seq_last":4450,
 "queue_drop":0,"queue_high_watermark":3,"queue_cap":128,"queue_depth":1,
 "vad_speech_frames":0,"segments":0,"segment_write_errors":0,
 "noise_rms":82.29,"dur_s":190.015,"rcvbuf_req":262144,"rcvbuf_eff":524288}
```

发送端（同一时间窗）统计：

| 项 | 值 |
|---|---|
| `frames` / `produced` / `sent` | 4503 / 4503 / **4450** |
| `sendDrop` / `noPeerDrop` / `reconnects` | 1 / 51 / 1 |
| `depthMax` | 7 / 64 |
| `latP50` | 9.0 ms |

**对账**：`sent 4450 == received 4450 == accepted 4450`，`seq 1..4450` 连续、`missing=0`。
末尾的 1 次 `sendDrop` + 51 帧 `noPeerDrop` + 1 次 `reconnects` 出现在**接收端先退出之后**
（本次接收端 `--secs 190` 与 bridge 180 s 只差 10 s，实际两者起停相差约 2 s），
发送端表现为"对端消失 → 关 socket → 不再阻塞"，与 T3 设计一致；这 51 帧不消耗 `seq`，
所以接收端看不到缺口 —— 数字完全自洽。

判读：

- **场景 A 通过**：190 s 安静环境中 `vad_speech_frames=0`、`segments=0` —— 环境噪声（RMS 82.29）没有触发任何片段，没有"RMS 非零就当语音"。
- **场景 E 通过**：190 s 连续运行不崩、`queue_drop=0`、队列高水位 3/128（不增长）、`queue_depth=1`（退出时仅 1 帧在途）。
- 接收端实测 `rcvbuf_eff=524288`（请求 262144，内核给的更大）。

### 7.2 片段落盘路径（**强制低阈值**，不是语音测试）

为了在无人值守情况下验证"VAD → 片段 → WAV"的真实链路，用低阈值把环境噪声当触发源：

```
t4_receiver --secs 0 --min-rms 40 --start-ratio 0.4 --start-frames 3 \
            --hangover-ms 400 --max-segment-ms 5000
```

接收端 SUMMARY（`device_run_forced_30s.log`）：`received=752 accepted=752 missing=0
queue_drop=0 high_watermark=3 vad_speech_frames=725 segments=6 segment_write_errors=0
noise_rms=79.71`。

6 条 SEGMENT（节选）：

```json
{"segment_id":1,"start_seq":24,"end_seq":148,"frame_count":125,"duration_ms":5000,
 "rms_avg":78.4,"rms_max":104.9,"end_reason":"max_duration","saved":true,
 "file":"/data/local/tmp/t4/segments/seg_0001_24.wav"}
...
{"segment_id":6,"start_seq":649,"end_seq":752,"frame_count":104,"duration_ms":4160,
 "rms_avg":77.9,"rms_max":96.0,"end_reason":"shutdown","saved":true,
 "file":"/data/local/tmp/t4/segments/seg_0006_649.wav"}
```

本机对 6 个 WAV 逐个校验（`device_segments/`，脚本见下）：

| 文件 | 大小 | 时长 | 头校验 | RMS | 采样范围 |
|---|---:|---:|---|---:|---|
| seg_0001_24.wav | 160,044 | 5000 ms | OK | 78.9 | −250 .. 113 |
| seg_0002_149.wav | 160,044 | 5000 ms | OK | 79.2 | −252 .. 106 |
| seg_0003_274.wav | 160,044 | 5000 ms | OK | 78.0 | −232 .. 125 |
| seg_0004_399.wav | 160,044 | 5000 ms | OK | 79.0 | −222 .. 118 |
| seg_0005_524.wav | 160,044 | 5000 ms | OK | 78.1 | −233 .. 119 |
| seg_0006_649.wav | 133,164 | 4160 ms | OK | 78.3 | −235 .. 117 |

校验项：`RIFF`/`WAVE` 标识、`RIFF size == 文件长−8`、`data size == PCM 长`、
`16000 Hz / 1 ch / 16-bit`、`nframes == frame_count × 640`、读回 PCM 与预期长度一致。
5 个 `max_duration` 片段正好 125 帧（5 s），1 个 `shutdown` 片段 104 帧（SIGINT 收尾）——
与 SEGMENT 日志逐项吻合，说明**翻滚分段与退出收尾都不丢音、不重复**。

> 这 6 个 WAV 的 RMS≈78、采样 ±250，是**环境噪声**，不是人声。
> 它们只证明"真机 PCM → VAD → 片段 WAV"这条路径可用，**不代表**语音检测效果。

### 7.3 未完成的场景

| 场景 | 状态 | 原因 |
|---|---|---|
| B 真人连续说话 ≥5 句 | **未验证** | 设备旁无人；任务书要求真人执行，不能用合成音频代替 |
| C 句中短暂停顿不切段 | **未验证** | 同上（状态机逻辑由单元测试 T5 覆盖，但真机音频未验证） |
| D 背景噪声误触发率 | **未验证** | 现场无可用噪声源；`tinyplay` 打不开 `/dev/snd/pcmC0D0p`（T3 已记录），无法用扬声器制造激励 |

---

## 8. 已知问题与下一步

1. **运行顺序**：接收端存活时间必须**长于** bridge，否则尾部会出现 `noPeerDrop`
   （本次 §7.1 就出现 51 帧）。建议 `--secs` 至少比 bridge 多 30 s，或先起 bridge 再起接收端。
2. **阈值未标定**：环境噪声 RMS≈80，默认 `min_rms=180` / `start_ratio=3` 下零误触发，
   但真人语音的信噪比还不知道 —— 必须先做场景 B，再决定 `min_rms`/`start_ratio`/`hangover`。
3. **pre-roll 不计入 `vad_speech_frames`**：该计数只统计 SPEECH 状态内的帧，
   因此片段帧数（含补写）会略大于它（本次 729 vs 725，差 4 帧即首段的静音 pre-roll）。
4. 队列满采用 drop-new（保旧丢新）；真机本轮 `queue_drop=0`，压力路径只在本机测过策略。
5. 接收端每帧在接收线程里做一次 FNV-1a（1280 B）+ 一次结构体拷贝（约 1.3 KB），
   在 ARMv7 上实测未造成堆积（高水位 3），但高负载场景仍需观察。
6. 未做：ASR/LLM/TTS/唤醒词（任务范围外），T5 不自行启动。

---

## 9. 复现命令

```powershell
cd D:\tgz02\OS\system\my-doc\05_t4

# 本机测试
gcc -O2 -Wall -Wextra -o tests\vad_unit_test.exe tests\vad_unit_test.c android\vad_energy.c -lm
.\tests\vad_unit_test.exe
python tests\receiver_test.py
python -m py_compile tests\receiver_test.py

# NDK 编译
powershell -ExecutionPolicy Bypass -File android\build.ps1

# 真机（ADB，设备 192.168.1.9:5555）
adb shell "mkdir -p /data/local/tmp/t4/segments"
adb push android/out/t4_receiver /data/local/tmp/t4/t4_receiver
adb push android/run_t4.sh       /data/local/tmp/t4/run_t4.sh
adb shell "chmod 755 /data/local/tmp/t4/t4_receiver /data/local/tmp/t4/run_t4.sh"
adb shell "sh /data/local/tmp/t4/run_t4.sh start --secs 220"
python ..\04_device_t3\run_t3_uds.py 180 ..\04_device_t3\t3_bridge_t4_quiet.log
adb shell "sh /data/local/tmp/t4/run_t4.sh stop"
adb pull /data/local/tmp/t4/t4_receiver.log .
adb pull /data/local/tmp/t4/segments ./segments
```

---

## 10. T4-02 修复记录（P1 + P2×2）

基线：`8a3473ae3d68d90cb42efeca80397636260bc931`；
提交：`fix: drain T4 queue on shutdown and harden stats`。

### 10.1 P1：退出时排空队列（不再丢帧）

**问题**：`proc_thread()` 的循环条件是 `while (!g_stop)`，主线程置 `g_stop` 后处理线程可能
在队列仍有数据时退出。T4-01 的真机证据 `device_run_quiet_190s.log` 里
`accepted=4450` 而 `queue_depth=1` 就是这一帧没被处理。

**修复**：循环改为 `for (;;)`；条件变量等待仅在 `!g_stop` 时进行；只有在
「`g_stop` 且队列为空」时才 `break`；`break` 之后才 `vad_flush()`。
停止时不修改队列、不清空、不丢弃任何已入队帧。主线程仍然是
`join(rx) → join(proc) → 打印 SUMMARY`，保证接收线程不会在处理线程退出后继续入队。

**新增统计** `processed`（实际送入 VAD 的帧数），并纳入 SUMMARY；
退出后应满足 `accepted == processed + queue_drop` 且 `queue_depth == 0`。

**测试**：新增 `tests/drain_test.c`，它 `#define main` 改名后直接
`#include "../android/t4_receiver.c"`，**调用的就是生产 `proc_thread()`**：

| 用例 | 场景 | 断言 |
|---|---|---|
| A | 先把 `g_stop=1`，队列里已有 25 帧静音 + 60 帧方波 | `processed=85`、队列深度 0、`vad.frames_seen=85`、只开 1 个片段、`vad_flush` 后状态回 IDLE、WAV 落盘（63 帧 = 5 pre-roll + 58；大小 = 44+63×1280） |
| B | 空队列 + `g_stop=1` | 立即退出，`processed=0`，无片段收尾 |
| C | 真线程：先入队 40 帧，`g_stop=0` 起线程（走 cond_timedwait 等待路径），200 ms 后置停止并 `broadcast` | `join` 后 `processed=40`、队列深度 0、`vad.frames_seen=40` |

**执行方式与结果**：Windows 无 pthread，本测试**不在 Windows 跑**；
用 NDK 交叉编译后在 TG-Z02 真机执行：

```
$ armv7a-linux-androideabi26-clang -O2 -Wall -Wextra -static -o out/drain_test       tests/drain_test.c android/rx_core.c android/vad_energy.c -lm
（0 warning / 0 error）

$ adb shell 'cd /data/local/tmp/t4 && ./drain_test'
drain_test  (proc_thread from t4_receiver.c, frame=640 samples)
[A] g_stop=1 且队列 85 帧：必须排空后再退出
  ok   A processed == 85（停止后仍逐帧处理）
  ok   A 队列深度 == 0
  ok   A VAD 实际收到 85 帧
  ok   A 只开了一个片段
  ok   A 收尾时关闭了该片段（vad_flush 生效）
  ok   A flush 后状态回到 IDLE
  ok   A 片段 WAV 保存成功
  ok   A 没有写盘错误
  ok   A 输出目录里有 WAV
  ok   A 片段含 63 帧（5 帧 pre-roll + 58 帧）
  ok   A WAV 大小 = 44 + 帧数*1280
[B] 队列为空 + g_stop=1：立即退出
  ok   B processed == 0
  ok   B VAD 没收到帧
  ok   B 没有片段需要收尾
[C] 真线程：先入队 40 帧，运行中置停止并 broadcast
  ok   C pthread_create 成功
  ok   C processed == 40
  ok   C 队列深度 == 0
  ok   C VAD 收到 40 帧
=== 18 passed, 0 failed ===
```

### 10.2 P2：乱序帧不再倒退序号基准

**问题**：`rx_classify()` 每帧无条件 `st->seq_last = h.seq`，
收到 `1,3,2,4` 时，处理 2 会把高水位拉回 2，处理 4 时再算一次缺口（missing 变 2）。

**修复**：改成 uint32 无符号差判定，只有"前进"的帧才推进高水位：

```c
uint32_t d = h.seq - st->seq_last;
if (d == 0)                       st->duplicate++;          /* 重复，不改基准 */
else if (d < 0x80000000u) {       if (d > 1) st->missing += d - 1; st->seq_last = h.seq; }
else                              st->reorder++;            /* 回退，不改基准 */
```

`0xFFFFFFFF -> 0` 的差是 1，回绕不会报缺口；epoch 切换仍然重置序号判断。

**测试**（`receiver_test.py` 第 10 组，全部实测通过）：

| 输入 | 实测 |
|---|---|
| 1,2,3,4 | `missing=0 duplicate=0 reorder=0` |
| 1,3,2,4 | `missing=1 reorder=1`，`seq_last=4`（旧写法会算成 missing=2） |
| 1,2,2,3 | `duplicate=1`，`missing=0` |
| 1,3,4 | `missing=1` |
| 0xFFFFFFFE..1（回绕） | `missing=0 reorder=0`，`seq_first=4294967294 seq_last=1` |
| 0xFFFFFFFF → 1 | `missing=1`（回绕后的真实缺口仍能算出） |

`missing` 的语义已在 README 明确为"**观察到的序号缺口累计**"，不是"最终确认永久丢失的帧"。

### 10.3 P2：WAV 文件名带 run_id，不覆盖旧录音

**问题**：`seg_<编号>_<start_seq>.wav` 只由片段号与起始序号组成，进程重启后可能同名，
`fopen(..., "wb")` 会截断上一次测试的录音。

**修复**：
- 每次进程启动生成 `run_id`（PID × 2654435761 ^ CLOCK_REALTIME 的秒/纳秒混合），进 `CONFIG` 日志；
- 文件名改为 `seg_<run_id:8hex>_<4 位片段编号>_<start_seq>.wav`；
- 打开前先探测目标名是否已存在，存在就改用 `…_a1.wav` / `…_a2.wav`（最多 1000 次），
  **任何情况下都不截断已有文件**；路径长度检查与"创建失败不崩溃"的原处理保持不变。

**测试**：
- 本机（`receiver_test.py` 第 12 组）：同一 `--run-id` 连续两次 → 第二次得到 `_a1` 后缀且两个文件都可读、
  内容一致；换 `run_id` → 文件名不同；文件名格式断言 `seg_<runid>_<seg>_<seq>.wav`。
- 真机：两次运行（`run_id` 分别 `b55a5158` / `a46a517e`）产生了**片段号与起始序号完全相同**的文件，
  目录里 9 个文件并存、无覆盖：

```
seg_a46a517e_0001_24.wav   seg_b55a5158_0001_24.wav
seg_a46a517e_0002_99.wav   seg_b55a5158_0002_99.wav
seg_a46a517e_0003_174.wav  seg_b55a5158_0003_174.wav
seg_a46a517e_0004_249.wav  seg_b55a5158_0004_249.wav
                           seg_b55a5158_0005_324.wav
```

9 个文件逐个校验（`device_segments_t402/`）：RIFF/WAVE 标识、`RIFF size = 文件长−8`、
`data size = PCM 长`、16000/1ch/16bit、`nframes = 帧数×640`、字节数与时长一致，**9/9 OK**。

### 10.4 回归测试（本轮实际执行）

| 项目 | 命令 | 结果 |
|---|---|---|
| VAD 单元测试 | `gcc -O2 -Wall -Wextra -o testsad_unit_test.exe testsad_unit_test.c androidad_energy.c -lm` → 运行 | **65 passed, 0 failed**（0 warning） |
| 接收端测试 | `python testseceiver_test.py` | **203 passed, 0 failed** |
| Python 语法 | `python -m py_compile testseceiver_test.py` | exit 0 |
| 退出排空测试 | `drain_test`（NDK 编译 → 真机运行） | **18 passed, 0 failed** |
| NDK 编译 | 见 §10.5 | **0 warning / 0 error** |

### 10.5 NDK 编译（本轮）

| 项 | 值 |
|---|---|
| 编译器 | `…ndroid-ndk-r21e\…rmv7a-linux-androideabi26-clang.cmd`（clang 9.0.9，`armv7a-unknown-linux-android26`） |
| 命令 | `armv7a-linux-androideabi26-clang -O2 -Wall -Wextra -static -o out/t4_receiver t4_receiver.c rx_core.c vad_energy.c -lm` |
| 结果 | exit 0，0 warning / 0 error，无 `-Wno-*` |
| 产物 | `android/out/t4_receiver` 3,431,548 B，SHA256 `31635a3ff2c532ddf7a1c2b94ebb1f11e4930c438ee6dcd74d1eb5fb0619c41c` |
| ELF | `Class: ELF32` / `Type: EXEC` / `Machine: ARM` |
| 测试二进制 | `out/drain_test` 3,439,924 B，SHA256 `31ed324931f628923ee77ee5d749c0ee7a52171564e247730642bcc0a2cd9f2a` |

### 10.6 真机验证（本轮）

| 项 | 结果 |
|---|---|
| 安静环境 55 s（bridge 45 s） | `received=1127 accepted=1127 processed=1127 queue_drop=0 queue_depth=0`，`missing/dup/reorder/bad_*` 全 0，`segments=0`，`noise_rms=77.49` |
| 不变式 | `accepted(1127) == processed(1127) + queue_drop(0)` ✅，`queue_depth==0` ✅ |
| 强制低阈值两次运行 | 每次 `processed == accepted`、`queue_depth=0`、`segment_write_errors=0`；两次 run_id 不同，9 个 WAV 并存且全部校验通过 |
| 退出排空（生产线程） | `drain_test` 在真机上 18 passed（见 10.1） |
| 真机"停止时队列非空"的自然复现 | 本轮未复现（安静场景队列高水位仅 4，远低于 128）；该路径由 `drain_test` A 用例确定性覆盖 |
| 真人说话 / 背景噪声 | **仍未验证**（需要真人/噪声源，见 §7.3） |
