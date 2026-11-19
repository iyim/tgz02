# 05_t4 — T4-01 独立 PCM 接收进程 + 能量 VAD

> 目标：在 TG-Z02 上新增一个**独立原生进程**，从 T3 的 `tgz2_pcm` 抽象 UDS DGRAM 收真实 PCM，
> 用可解释的能量 VAD 切出语音片段并落成 WAV。
> 本轮**不做** ASR / LLM / TTS / 唤醒词 / 播放，也不改 T3 Hook 与协议。

```
smartapp:core (原厂进程, 不改)
   |  T3 PCM Bridge: pcm_bridge_draft.js（不改）
   |  AF_UNIX SOCK_DGRAM, abstract: tgz2_pcm, 1320 B/帧, 40 ms
   v
t4_receiver（本目录, 独立进程）
   recv 一个数据报 -> TGZ2 v2 校验（长度/magic/ver/hdr/参数/CRC）
     -> 有界队列（满则丢新帧并计数）
     -> 处理线程：lane0 PCM（1280 B/帧）-> 能量 VAD -> 状态机 -> WAV 片段
```

## 文件

| 文件 | 作用 |
|---|---|
| `android/t4_receiver.c` | 主程序：CLI、抽象 UDS DGRAM、两个线程（recv / VAD）、片段落盘、SUMMARY |
| `android/rx_core.c/.h` | 可主机测试的核心：帧校验与统计、有界队列、JSON、WAV 写入（无 socket/线程依赖） |
| `android/vad_energy.c/.h` | 能量 VAD 状态机（纯 C，不依赖 Android/Java） |
| `android/build.sh` / `android/build.ps1` | NDK r21e 交叉编译（armeabi-v7a / API 26） |
| `android/run_t4.sh` | 设备端 start/status/stop/log/segments |
| `tests/vad_unit_test.c` | VAD 单元测试（10 组） |
| `tests/receiver_harness.c` | 主机驱动 `rx_core.c` 的 harness（生成 STATS/QUEUE/WAV 行） |
| `tests/receiver_test.py` | 协议/队列/WAV 自动测试（Windows 可跑） |
| `t4_implementation_report.md` | 实现与验收报告（区分已实现/本机通过/NDK 通过/真机已验证/尚未验证） |

协议不在这里定义：一律 `#include "../../03_uds_test/tgz2_frame.h"`（T3 的同一份 v2 定义，
`TGZ2_MAGIC/VER/HDR_LEN/RATE/CH/BITS/SPF/PAYLOAD/MSG`）。**未修改协议字段、版本、帧大小。**

## VAD 设计（可解释、可配置）

状态机：`CALIBRATING → IDLE → SPEECH → IDLE`

| 参数 | CLI | 初始值 | 说明 |
|---|---|---:|---|
| 帧时长 | — | 40 ms | 640 样本 @16 kHz（由协议固定） |
| 初始噪声校准 | `--calibration-ms` | 1000 | 校准窗口内求 RMS 均值作为噪声底；此窗口**必须安静**，期间不做检测 |
| 最小起始 RMS | `--min-rms` | 180 | 起始阈值下限 |
| 起始阈值倍数 | `--start-ratio` | 3.0 | `start_thr = max(min_rms, noise*ratio)` |
| 结束阈值倍数 | `--end-ratio` | 0.6 | `end_thr = start_thr * ratio`（迟滞） |
| 起始连续确认 | `--start-frames` | 2 | 连续 N 帧 ≥ start_thr 才进 SPEECH |
| 结束 hangover | `--hangover-ms` | 600 | 连续 ≥ end_thr 以下这么久才结束 |
| pre-roll | `--pre-roll-ms` | 200 | 进入 SPEECH 时补写的历史（≤1600 ms） |
| 最大片段 | `--max-segment-ms` | 15000 | 到点翻滚分段（不丢音、不重复） |
| 噪声底平滑 | `--noise-alpha` | 0.05 | 仅用于 IDLE 的非语音帧 |

要点：

- **"PCM 非零"不等于语音**：必须同时满足绝对能量下限与"高于噪声底若干倍"，并连续 N 帧。
- 噪声底**只在 CALIBRATING 与 IDLE 的非语音帧**更新，SPEECH 期间冻结（单元测试 T9 覆盖）。
- 不用发送端 `ts_us` 做定时/切片，只按**帧到达顺序**处理；`ts_us` 只进日志。
- 这是**基线能量 VAD**，不是产品级语音检测；阈值需按真机麦克风噪声重新标定。

## 命令行

```sh
t4_receiver \
  --abstract tgz2_pcm \
  --out /data/local/tmp/t4_segments \
  --secs 0 \
  --min-rms 180 --start-ratio 3.0 --end-ratio 0.6 \
  --calibration-ms 1000 --start-frames 2 \
  --hangover-ms 600 --pre-roll-ms 200 --max-segment-ms 15000
```

- `--secs 0` = 一直跑，直到 SIGINT/SIGTERM；`--secs N` = N 秒后自动收尾并打印 SUMMARY（便于自动测试）。
- 其它：`--rcvbuf BYTES`（默认 262144）、`--queue-cap N`（默认 128，8..4096）。
- 参数非法 → 打印原因并退出码 2，绝不静默使用错误值。

## 输出格式（每行一个纯 JSON 对象，可直接 `json.loads`）

```
{"type":"CONFIG", ...}   启动配置：所有 VAD 参数的实际生效值 + 帧数换算结果
{"type":"READY", ...}    abstract/out/rcvbuf_eff/queue_cap
{"type":"SEGMENT", ...}  每个片段一条：
    segment_id, start_seq, end_seq, frame_count, duration_ms,
    rms_avg, rms_max, end_reason(silence|max_duration|shutdown),
    saved, written_frames, file, start_ts_us, end_ts_us
{"type":"SUMMARY", ...}  退出统计，必需字段：
    received, accepted, processed, bad_len, bad_crc, missing, duplicate, reorder,
    queue_drop, queue_high_watermark, vad_speech_frames, segments, segment_write_errors
    （另附 bad_magic/bad_ver/bad_hdr/bad_param/epoch_switches/epoch/seq_first/seq_last/
      queue_cap/queue_depth/noise_rms/dur_s/rcvbuf_req/rcvbuf_eff）

退出时的不变式（正常退出应恒成立）：
    accepted == processed + queue_drop        processed = 实际送入 VAD 的帧数
    queue_depth == 0                          停摆时队列已被排空
```

**退出语义（T4-02/T4-03）**：主线程置 `g_stop=1` 并 `broadcast`；处理线程不再等待新数据，但
必须同时满足三个条件才允许退出并 `vad_flush()`：

1. `g_stop` 已置位；
2. `rx_done` 已置位（接收线程**彻底结束**，不再 select/recv/入队）；
3. 队列为空（已入队的帧全部处理完）。

`rx_done` 由接收线程在退出前**持锁**写入并 `broadcast`。这样"接收线程已通过停止检查、正在
select/recv，停止后才拿到最后一帧"的竞态窗口被关闭：该帧一定在 `rx_done` 之前入队，处理线程会先处理它。
任何情况下都不清空队列、不丢剩余帧。

片段文件：`<out>/seg_<run_id:8 位十六进制>_<4 位片段编号>_<start_seq>.wav`，
16 kHz / 单声道 / 16-bit PCM，WAV 头在关闭时回填 RIFF 与 data 长度（与实际 PCM 一致）。

- `run_id` 在进程启动时由 PID + 实时时钟纳秒混合生成（`CONFIG` 里能看到），**不同运行不会同名**；
- 创建方式是 `open(path, O_WRONLY|O_CREAT|O_EXCL, 0664)` + `fdopen()`：**原子独占**，
  内核保证同一名字只有一个创建者成功；撞名时自动改用 `…_a1.wav` / `…_a2.wav`（最多 1000 次）。
  不存在"先检查再创建"的 TOCTOU 窗口，`fdopen()` 失败会关 fd 并删掉刚建的空文件。
- Windows 上额外带 `_O_BINARY`（否则 `open()` 走文本模式，0x0A 会被翻译成 CRLF 撑大文件 —— 该问题由本机测试发现）。

## 本机测试（Windows / GCC，可重复）

```powershell
cd D:\tgz02\OS\system\my-doc\05_t4

# 1) VAD 单元测试（10 组，无外部依赖）
gcc -O2 -Wall -Wextra -o tests\vad_unit_test.exe tests\vad_unit_test.c android\vad_energy.c -lm
.\tests\vad_unit_test.exe

# 2) 接收端协议/队列/WAV/序号语义 测试（自动编译 harness）
python tests\receiver_test.py

# 2b) 退出排空 / 停止竞态 / 并发 WAV 创建测试（pthread，Windows 无 pthread，只能 Linux/WSL 或 Android 跑）
#     期望 34 passed, 0 failed（A 排空、B 空队列、C 真线程、D rx_done 竞态、E 门闩同步的 4 线程 O_EXCL）
#     说明：D 的入队/计数读取全部持 ctx->mu；E 用 mutex+cond 门闩同时放行，并逐个检查 pthread_create
$cc = "$env:NDK\toolchains\llvm\prebuilt\windows-x86_64\bin\armv7a-linux-androideabi26-clang.cmd"
& $cc -O2 -Wall -Wextra -static -o android\out\drain_test tests\drain_test.c android\rx_core.c android\vad_energy.c -lm
adb push android/out/drain_test /data/local/tmp/t4/drain_test
adb shell "chmod 755 /data/local/tmp/t4/drain_test; cd /data/local/tmp/t4 && ./drain_test"

# 2c) 进程级停止路径测试（真实 SIGINT/SIGTERM，需要设备 + adb）
#     不带 bridge：8 个用例 86 passed；带 bridge（真实 PCM 帧）：95 passed
python tests\stop_signal_test.py                  # 纯停止路径
python tests\stop_signal_test.py --bridge          # 同时注入 T3 PCM（需 frida-server 在跑）

# 3) 语法检查
python -m py_compile tests\receiver_test.py tests\stop_signal_test.py

# 4) NDK 编译（armeabi-v7a / API 26，0 warning）
powershell -ExecutionPolicy Bypass -File android\build.ps1
```

> Windows 内核不支持 `AF_UNIX SOCK_DGRAM`，所以本机测试**只**覆盖可移植逻辑
> （帧分类/统计/队列策略/WAV/SUMMARY）。真实 socket 收发在真机上验证，不把本机测试当 socket 验证。

## 真机测试步骤（ADB）

前置：T3 已通过（`dgram_server` 链路验证过）；本轮不改原厂 APK/SO/分区，不改 T3 Hook。

```sh
# 0) 设备连接
adb connect 192.168.1.9:5555      # 本机：D:\GreenSoft\platform-tools\adb.exe

# 1) NDK 编译（本机）
powershell -ExecutionPolicy Bypass -File android\build.ps1     # 产物 android/out/t4_receiver

# 2) push 到 /data/local/tmp/t4/
adb shell "mkdir -p /data/local/tmp/t4/segments"
adb push android/out/t4_receiver /data/local/tmp/t4/t4_receiver
adb push android/run_t4.sh       /data/local/tmp/t4/run_t4.sh
adb shell "chmod 755 /data/local/tmp/t4/t4_receiver /data/local/tmp/t4/run_t4.sh"

# 3) 输出目录与权限
adb shell "chmod 775 /data/local/tmp/t4/segments"

# 4) 启动 T4 接收进程（安静环境 30 s 场景）
adb shell "sh /data/local/tmp/t4/run_t4.sh start --secs 40"

# 5) 再启动 T3 PCM Bridge（原脚本，不改 Hook）
adb shell "su -c 'nohup /data/local/tmp/fs32 -l 0.0.0.0:27042 >/dev/null 2>&1 &'"
adb forward tcp:27042 tcp:27042
python ..\04_device_t3\run_t3_uds.py 35 ..\04_device_t3\t3_bridge_t4_run.log

# 6) 安静环境测试（场景 A）：不发声、不碰设备，等接收端自己 --secs 到点
adb shell "sh /data/local/tmp/t4/run_t4.sh log | tail -5"

# 7) 真人说话测试（场景 B/C，必须由人执行）
adb shell "sh /data/local/tmp/t4/run_t4.sh start --secs 120"
#    —— 人对着设备正常说 5 句（每句 2-5 秒），句间停顿 1 秒以上
#    —— 再单独做一次"句中短暂停顿 300-500 ms"的测试（场景 C）
python ..\04_device_t3\run_t3_uds.py 115 ..\04_device_t3\t3_bridge_t4_speech.log

# 8) 背景噪声测试（场景 D）
#    用现场噪声源（风扇/音乐/电视）持续 60 s，重复 7) 的采集，观察是否误触发

# 9) 停止并取回
adb shell "sh /data/local/tmp/t4/run_t4.sh stop"        # SIGINT，打印 SUMMARY / SEGMENT 行
adb pull /data/local/tmp/t4/t4_receiver.log .
adb pull /data/local/tmp/t4/segments ./segments

# 10) 试听与统计
#    - 用电脑播放器逐个播放 segments/*.wav（16 kHz 单声道）
#    - 对照 SUMMARY 的 received/accepted/missing/queue_drop/vad_speech_frames/segments
python ..\03_uds_test\verify_capture.py <capture.cap>   # 如需核对同一轮的帧完整性
```

**必须明确**：场景 B（真人连续说话）与 C（句中短暂停顿）**必须由人实际对着设备说话**，
不能用合成音频、不能用本机 WAV 回放冒充。若无人执行，报告中必须写"真机真人测试未完成"。

## 统计语义（重要）

| 字段 | 语义 |
|---|---|
| `accepted` | 协议校验成功的帧数 |
| `queue_drop` | 校验成功但队列满而被**主动丢弃**的帧数（drop-new，保旧丢新） |
| `processed` | 实际从队列取出并送入 VAD 的帧数 |
| `missing` | **观察到的序号缺口累计**（按 `seq` 高水位算出），不是"最终确认永久丢失的帧"；`epoch` 切换会重置判断 |
| `duplicate` / `reorder` | 重复帧 / 回退帧（回退**不会**让序号高水位倒退，因此不会连锁产生虚假缺口） |
| `queue_depth` | 退出时的队列深度，正常应恒为 0（排空后才退出） |

序号按 `uint32` 无符号差判定：`0` 重复、`1..2^31-1` 前进、`>=2^31` 视为回退。
`0xFFFFFFFF -> 0` 的差是 1，因此**回绕不会产生虚假缺口**。

## 判读要点

| 现象 | 含义 |
|---|---|
| `received == accepted` 且 `missing == 0` | 协议层与序号连续，没有丢帧 |
| `queue_drop > 0` | 处理线程跟不上（写盘卡顿/设备负载高），帧被主动丢弃 |
| `queue_high_watermark` 接近 `queue_cap` | 队列长期接近满，需要压缩 VAD/写盘耗时 |
| `missing > 0` 但 `epoch_switches == 0` | 真丢帧（发送端 sendDrop 或内核丢包），需与 T3 侧统计对照 |
| 安静环境 `vad_speech_frames` 明显 > 0 | 误触发，需要提高 `--min-rms` 或 `--start-ratio` |
| 片段被切成多段 | `--hangover-ms` 太短，或 `--end-ratio` 太接近 1 |
| 句首被切掉 | `--pre-roll-ms` 太短（当前 200 ms） |

## 已知限制

- 只做能量 VAD，不区分人声/音乐/敲击；不会做端点检测之外的语义判断。
- 校准窗口（默认第 1 秒）必须安静，否则噪声底会被说话污染。
- 单进程两线程；接收侧每帧做一次 FNV-1a（1280 B），处理侧写 WAV 为同步 fwrite。
- 队列满采用 drop-new（保留旧帧），片段内部可能出现序号缺口，需对照 `queue_drop` 判读。
- `missing` 是"观察到的缺口"，若发送端重启换了 `epoch` 会被重置；它不是端到端丢帧的最终结论。
- `drain_test.c` 依赖 pthread，只能在 Linux/WSL 或 Android 上执行；Windows 本机不跑（不得当作已验证）。
- 并发测试没有 ThreadSanitizer 覆盖：结论来自锁配对审查 + 真机多次复跑，不是工具级证明。
- 停止标志分两个（T4-07）：`g_signal_stop` 只由信号处理函数写、只在 `main` 读；
  `g_stop` 是普通 `int`，线程侧所有读写都持 `g_ctx.mu`（`stop_requested()` / `request_stop()`）。
  `SIGKILL` 不可捕获，不在覆盖范围。
