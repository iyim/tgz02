# T3 + T4 真机集成联调报告（TG-Z02）

- 日期：2026-11-19 21:46–21:48（Asia/Hong_Kong）
- 代码基线：`main` @ `50c456e6085167857671c230019b3c5eabc00380`（本轮**未修改任何生产代码**）
- 报告提交：见 `git log --oneline -- my-doc/05_t4/t3_t4_integration_report.md`
- 目标：只验证 T3（`pcm_bridge_draft.js`）与 T4（`t4_receiver`）的集成链路，不重做单项测试

---

## 1. 设备与运行环境

| 项 | 值 |
|---|---|
| 设备 | TG-Z02 / AILABS_S1L，MT8167S，armv7，Android 8.1（API 27） |
| ADB | `192.168.1.9:5555`（`adb devices` 当前唯一设备，未使用 README 里的旧地址） |
| 原厂进程 | `com.alibaba.ailabs.genie.smartapp:core`，PID **16112**（全程未重启、未 force-stop） |
| frida-server | `/data/local/tmp/fs32`（root），**开工前已在运行**（PID 15103），未重复启动；`adb forward tcp:27042 tcp:27042` 已建立 |
| frida-python | 16.7.19（host） |
| T4 二进制 | `/data/local/tmp/t4/t4_receiver`，3,435,712 B，md5 `50a9169c92c7a22dfa4b00897072a992` = 仓库 `android/out/t4_receiver` |
| T4 启动脚本 | `/data/local/tmp/t4/run_t4.sh`（仓库 `android/run_t4.sh`，2497 B） |
| SELinux | Permissive（历史状态，本轮未改） |
| 分区 | 未改动 boot/system/vendor/原厂 APK/SO |

---

## 2. 实际启动命令与运行时长

```sh
# 0) 干净输出目录（不混入旧 WAV）
adb shell "rm -rf /data/local/tmp/t4/segments_integ; mkdir -p /data/local/tmp/t4/segments_integ"

# 1) 先起 T4（75 s）
adb shell "sh /data/local/tmp/t4/run_t4.sh start --secs 75 --out /data/local/tmp/t4/segments_integ"
#   -> started: pid=29994  log=/data/local/tmp/t4/t4_receiver.log  out=.../segments_integ

# 2) Frida 转发（server 已在跑，未重复启动）
adb forward tcp:27042 tcp:27042

# 3) T3 Bridge（65 s），在工作树 my-doc/05_t4 目录下执行
python ..\04_device_t3\run_t3_uds.py 65 ..\04_device_t3\t3_t4_integration.log
```

| 阶段 | 时间 | 说明 |
|---|---|---|
| T4 启动 | 21:46:2x | `CONFIG` + `READY` 立即可见，`run_id=3142025530`，`rcvbuf_eff=524288`，`queue_cap=128` |
| 等待绑定 | ≈1 s | `READY` 后确认 socket 已 bind 再起 Bridge |
| T3 注入 | 21:46:3x（脚本加载 `+2.86 s`） | epoch `0xb7b097a5` |
| T3 采集 | 65 s（驱动总耗时 68.11 s） | 1627 帧 = 25.0 fps × 65.1 s |
| T4 退出 | 21:47:5x | `--secs 75` 到点自然退出，`dur_s=75.035` |
| 进程收尾 | — | `pid 29994` 已不存在；Bridge `session detached`，无残留实例（`fs32` 为开工前既有进程） |

---

## 3. T3 Bridge 完整统计

来源：`my-doc/04_device_t3/t3_t4_integration.log` 的 `stats@after-stop`（另有 12 条中间 `STAT` 行）。

| 字段 | 值 | 说明 |
|---|---|---|
| `enabled` | `true` → 停止时 `false` | 全程持续 enabled，停止由 `stop()` 正常下发 |
| `why` | `ok` | 无异常禁用原因 |
| `frames` | 1627 | 进入 Hook 且通过全部闸门 |
| `produced` | 1627 | 整帧入环，`frames - produced = 0` |
| **`consumed`** | **（无此字段）** | 本脚本无 `consumed`；等价量：`sent + pending = produced`，即 1627 + 0 |
| `sent` | 1627 | 成功 `sendto` |
| `pending` | 0 | 退出时环已排空 |
| `seq` | 1627 | 发送尝试序号 = `sent`，说明无 EAGAIN 重试消耗 |
| `sendDrop` / `sendErr` | 0 / 0 | 无 EAGAIN/ENOBUFS，无 errno |
| `noPeerDrop` / `stale` / `ringDrop` | 0 / 0 / 0 | — |
| **`seqGap`** | **（无此字段）** | 发送侧无 gap 概念；接收侧 `missing=0` 等价证明无缺口 |
| `hookEx` / `drainEx` | 0 / 0 | 无异常逃逸 |
| `hookReentry` / `drainReentry` | 0 / 0 | 无重入 |
| `disables` | **0** | 未发生任何自禁用 |
| `tidCount` | **1** | 见 §7 |
| `tids` | `{"16285": 1627, "firstTid": 16285}` | 单生产者线程 16285 |
| `producerTid` / `otherTidCalls` | 16285 / 0 | — |
| `clockSched` / `clockExclusive` | `exclusive` / `true` | T3-09 修复点在真机生效 |
| `clockFail` / `clockDrop` / `noClockTicks` | 0 / 0 / 0 | — |
| `crcFrames` | 1627 | 每帧都算 CRC |
| `sessions` / `reconnects` / `connectFail` | 1 / 0 / 0 | 单会话，无重连 |
| `depthMax` | 7 | 环深 7/64，无堆积 |
| `latP50_us` / `latP99_us` | 9,052 / 49,554 | 与 T3-08/T3-09 同量级 |
| `pendingEq` | `true` | `frames-produced == lenBad+nullPtr+ringDrop+clockDrop` |
| 四项地址校验 | `ck1..ck4 = true` | Hook 地址/签名与基线一致 |

中间 `STAT` 序列（每 5 s 一条）连续性：`124 → 250 → 374 → 499 → 625 → 750 → 875 → 1001 → 1125 → 1250 → 1382 → 1505`，
`sendDrop/sendErr/ringDrop/stale/hookEx/drainEx/reentry` **全部恒为 0**，`pending` 只在 0/1 之间跳动（正常 tick 间隙）。
唯一变化量是 `depthMax` 4→7（短时突发），远低于 64。

---

## 4. T4 Receiver SUMMARY

来源：`my-doc/05_t4/acceptance/integration/t4_receiver.log`。

| 字段 | 值 | 判定 |
|---|---|---|
| `received` | 1627 | 与 T3 `sent=1627` **完全一致** |
| `accepted` | 1627 | — |
| `processed` | 1627 | `accepted == processed + queue_drop` → 1627 = 1627 + 0 ✔ |
| `bad_len` | 0 | ✔ |
| `bad_crc` | 0 | ✔ |
| `missing` | 0 | 序号 1..1627 无缺口 ✔ |
| `duplicate` / `reorder` | 0 / 0 | ✔ |
| `queue_drop` | 0 | ✔ |
| `queue_high_watermark` | 2 | 队列容量 128，无压力 ✔ |
| `queue_depth` | 0 | 退出时已排空 ✔ |
| `vad_speech_frames` | 1046 | 占 64.3% |
| `segments` | 11 | — |
| `segment_write_errors` | 0 | ✔ |
| `noise_rms` | 75.98 | 校准期噪声底（安静） |
| `dur_s` | 75.035 | 与 `--secs 75` 一致 |
| `epoch` | 3081803685 | = T3 `0xb7b097a5`，同一次会话 |
| `seq_first..seq_last` | 1..1627 | 与 T3 `seq=1627` 一致 |

**口径说明**：两端计数完全相等属于本轮情况良好，而不是设计保证——
T3 的 `seq` 在"发送尝试"时分配（`sendDrop` 会消耗序号），T4 的 `missing` 反映的是内核/发送侧丢包与缺口；
若出现 `sendDrop > 0`，T4 会表现为 `missing` 缺口而非 `bad_crc`。

---

## 5. WAV 文件检查

目录 `/data/local/tmp/t4/segments_integ`（**本轮新建并清空过**，不含旧文件），`run_id = bb47813a`，共 **11 个** WAV。

逐个解析 RIFF（脚本检查，未改文件）：

| # | 文件 | 大小 | 时长 | 采样率/声道/位深 | RIFF/data 长度 | 100 ms 窗 RMS 范围 |
|---|---|---|---|---|---|---|
| 1 | `seg_bb47813a_0001_187.wav` | 220,204 B | 6.88 s | 16000 / 1 / 16 | ✔ 110080 帧 | 71..1271 |
| 2 | `seg_bb47813a_0002_369.wav` | 96,044 B | 3.00 s | 同上 | ✔ 48000 帧 | 70..994 |
| 3 | `seg_bb47813a_0003_441.wav` | 204,844 B | 6.40 s | 同上 | ✔ 102400 帧 | 71..1168 |
| 4 | `seg_bb47813a_0004_606.wav` | 138,284 B | 4.32 s | 同上 | ✔ 69120 帧 | 74..1728 |
| 5 | `seg_bb47813a_0005_824.wav` | 105,004 B | 3.28 s | 同上 | ✔ 52480 帧 | 80..2306 |
| 6 | `seg_bb47813a_0006_1049.wav` | 85,804 B | 2.68 s | 同上 | ✔ 42880 帧 | 64..1884 |
| 7 | `seg_bb47813a_0007_1119.wav` | 57,644 B | 1.80 s | 同上 | ✔ 28800 帧 | 69..1325 |
| 8 | `seg_bb47813a_0008_1166.wav` | 38,444 B | 1.20 s | 同上 | ✔ 19200 帧 | 75..1607 |
| 9 | `seg_bb47813a_0009_1259.wav` | 125,484 B | 3.92 s | 同上 | ✔ 62720 帧 | 71..1644 |
| 10 | `seg_bb47813a_0010_1372.wav` | 190,764 B | 5.96 s | 同上 | ✔ 95360 帧 | 71..467 |
| 11 | `seg_bb47813a_0011_1524.wav` | 133,164 B | 4.16 s | 同上 | ✔ 66560 帧 | 67..350 |

- 11/11 通过：`RIFF/WAVE`、`fmt=PCM(1)`、**16 kHz / 单声道 / 16-bit**、`align=2`、`byte_rate=32000`、
  `data_len == 文件大小-44`、`RIFF size == 文件大小-8`，帧数与 SEGMENT 的 `frame_count × 640` 一致；
- 1–9 号片段 100 ms 窗 RMS 在 ~70 与 1000~2300 之间大幅摆动（典型人声起停），
  10–11 号（`rms 200~230`、峰值低）更像远场/低电平持续声（可能是助手播报回采或环境声）；
- **内容听辨未由机器完成**：文件已拉到 `D:\tgz02\OS\_analysis\integ_wav\`（未提交），
  是否确实包含本轮所说内容需现场人员听辨确认（见 §6）。

---

## 6. 真人语音 / 原厂唤醒词 / 指令共存

**实际操作**（由现场人员按指令执行，时间约为 Bridge 启动后的 0–65 s 内）：

| 时刻（Bridge 相对） | 操作 | 记录 |
|---|---|---|
| 0–5 s | 保持安静，供 T4 完成 1000 ms 噪声校准 | 校准结果 `noise_rms=75.98`（安静） |
| 5 s 起 | 连续说 4~5 句日常语音 | T4 生成 1–9 号片段（时长 1.2~6.9 s） |
| 中段 | 说唤醒词「天猫精灵」并等待回应 | 见下方"待确认" |
| 唤醒后 | 一条原厂指令 | 见下方"待确认" |
| 结束后 | 未重启/未强杀原厂应用 | `:core` PID 16112 存活，`sessions=1`、epoch 无切换 |

**客观侧证（可复核）**

- T3 采集 65 s 期间帧率恒定 25.0 fps、`sessions=1`、`reconnects=0`、`epoch` 未变 → 原厂音频管线**没有中断或重启**；
- T4 采集到 1046 个语音帧、11 个片段，说明这段窗口里确实有人声输入（不是静音/回放）；
- 应用主进程与 `:core` 在联调结束后仍在运行（`ps -A` 可查），未被本流程重启。

**未确认项（如实标注，不写成通过）**

1. 第 5 段 / 第 7–9 段中哪一段对应唤醒词、哪一段对应指令——需要现场人员复听 WAV 才能对上；
2. 原厂唤醒灯/应答与指令执行结果——需要现场人员目视确认；
3. logcat 观察：21:48:17 起 `:core` 的 tid 16264 周期性打印
   `W UnconvWakeupManager: feed,68:feed when not started`（约 24 s 内 15 次），
   该消息出现在 Bridge 退出**之后**。本仓库没有联调前的 logcat 基线，**无法判定它是否原本就有**，
   因此不作为回归结论，仅列入 §8 观察项。要闭环请现场在无 Frida 的情况下再说一次唤醒词对比。

---

## 7. 多 TID 观测

| 项 | 值 |
|---|---|
| `tidCount` | **1** |
| `producerTid` / `firstTid` | 16285 |
| `tids` | `{"16285": 1627}`（1627 次全来自同一线程） |
| `otherTidCalls` | 0 |
| `disables` | 0 |

**结论：本轮未观察到多 TID。** 因此本轮**不能**声称"T3-08/T3-09 的多线程问题已在真机复验"。
证据边界：本轮的"无异常 disable / 无丢帧"只覆盖**单生产者**路径；
多 TID 的真机证据仍只有 T4-08 的历史失败记录（`t408_bridge_BC2.log`：19873 + 14171 → 自禁用、只发 1 帧），
修复后的多 TID 真机会话**仍未抓到**（详见 `03_pcm_bridge_t3_09_clock_exclusive.md` §6）。

---

## 8. 问题清单

| # | 现象 | 影响 | 处理 |
|---|---|---|---|
| 1 | 未观察到多 TID（`tidCount=1`） | 多线程路径本轮未被真机覆盖 | 不修改代码；继续等一次 `tidCount ≥ 2` 的真机会话（观察 `hookReentry`/`disables` 仍为 0） |
| 2 | `UnconvWakeupManager: feed when not started` 周期性出现（联调后、tid 16264） | 尚不明确是否与本次联调有关，也可能本来就是空闲态行为 | **未改代码**；建议无 Frida 时复测一次唤醒对比；已保留 `_analysis\integ_logcat.txt`（未提交） |
| 3 | 片段 10/11 电平明显偏低（rms 200~230，峰值 1200~1360） | 可能是助手播报回采或远场环境声，不是说话人近场 | 属 VAD/声学现象，本轮不改参数（任务禁止调参） |
| 4 | T3 统计无 `consumed` / `seqGap` 字段 | 与任务书字段名不一致 | 未改代码；已在本报告给出等价量（`sent+pending`、T4 `missing`） |

---

## 9. 结论

| 维度 | 结论 | 依据 |
|---|---|---|
| **A. PCM 集成传输** | **通过** | T3 `frames=produced=sent=1627`、`pending=0`、各类 drop 全 0；T4 `received=accepted=processed=1627`、`bad_len=0`、`bad_crc=0`、`missing=0`、`duplicate=0`、`reorder=0`、`queue_drop=0`、`queue_depth=0`、`segment_write_errors=0`；`accepted == processed + queue_drop` 成立；两端计数一致且能由 65 s / 75 s 窗口解释 |
| **B. 真人语音切片** | **部分确认（技术层面通过，内容待听辨）** | 11 个 WAV 全部格式合规（16 kHz/单声道/16-bit、RIFF/data 长度自洽、帧数与 SEGMENT 一致），1–9 号包络呈人声起停；但"是否包含本轮所说内容"需现场人员听 WAV 确认 |
| **C. 原厂功能共存** | **待现场确认** | 侧证：65 s 内原厂音频管线帧率恒定、无会话重启、应用存活；但唤醒词与指令是否被原厂正确响应，需要现场目视/听确认（且 §8-2 的 logcat 观察需对比） |
| **D. 多生产者线程** | **本轮未观察到多 TID** | `tidCount=1`、`otherTidCalls=0`、`tids={"16285":1627}`、`disables=0`；不构成多线程真机复验 |

**总评：部分通过。**
A 项（PCM 集成传输）完整通过，链路无丢帧、无协议错误、正常收尾；
B 项技术上成立但缺人工听辨；C 项缺现场口述确认；D 项本轮没有覆盖到多 TID。
不把"没观察到问题"当作"问题已被证明不存在"——多 TID 与其并发窗口仍是未闭环项。

---

## 10. 原始日志

| 文件 | 内容 |
|---|---|
| `my-doc/04_device_t3/t3_t4_integration.log` | T3 驱动完整日志（ready / 12 条 STAT / stop / after-stop / js_sha256） |
| `my-doc/05_t4/acceptance/integration/t4_receiver.log` | T4 `CONFIG` / `READY` / 11 条 `SEGMENT` / `SUMMARY` |
| `my-doc/05_t4/acceptance/integration/segments_list.txt` | 本轮 WAV 清单（名称 + 大小），WAV 本体未入库，仍在设备 `/data/local/tmp/t4/segments_integ/` |

未提交（避免污染仓库）：`_analysis\integ_logcat.txt`（logcat 摘录）、`_analysis\integ_wav\`（11 个 WAV 副本）。
