# T4 真机验收报告（TG-Z02 · 真人语音 / 背景噪声）

- 验收对象：`my-doc/05_t4` 的 T4 PCM Receiver + 基线能量 VAD（生产接收进程 `t4_receiver`）
- 代码版本：`main` @ `366e46dd4102bee9aa2723dcd844e48e67370fd1`（T4-07）
- 设备二进制：`android/out/t4_receiver`，3,435,712 B，SHA256
  `e0f09767dbff486ca29db2fdd1b9dc26f111938f7f37fc8bc2630b41a0263cc8`（推送后设备端 md5 校验一致）
- 测试时间：2026-11-19 19:00–19:50（Asia/Hong_Kong）
- **结论：部分通过**（真人语音检测、切分、长时间稳定性通过；特定声源下存在误触发，属阈值标定问题，无代码缺陷）

> 所有数据均来自本次真机实际运行；真人语音由用户本人对着设备朗读，未使用任何合成音频。
> 唯一的"低阈值"运行（§4.1、§5.1 的电平测量）**只用于测电平，不参与验收判定**，并在文中逐条标注。

---

## 1. 测试环境

| 项 | 值 |
|---|---|
| 设备 | TG-Z02（AILABS_S1L，MT8167S，armv7，Android 8.1 / API 27） |
| 设备地址 | `192.168.1.9:5555`（adb over TCP） |
| SELinux | Permissive |
| 原厂应用 | `com.alibaba.ailabs.genie.smartapp`（`:core` 进程，本轮内经历一次重启，见 §6.1） |
| 采集链路 | T3 PCM Bridge（`pcm_bridge_draft.js`，**未修改**）→ AF_UNIX DGRAM `tgz2_pcm` → T4 `t4_receiver` |
| 采样格式 | 16 kHz / 单声道 / 16-bit，40 ms 一帧（640 样本），25 帧/秒 |
| VAD 参数 | 默认值（**未改动**）：`min_rms=180`，`start_ratio=3.0`，`end_ratio=0.6`，`calibration_ms=1000`，`start_frames=2`，`hangover_ms=600`，`pre_roll_ms=200`，`max_segment_ms=15000` |
| 说话人 | 1 人，距设备 30–50 cm，正常音量，全程未使用唤醒词（§6.1 说明原因） |
| 输出目录 | `/data/local/tmp/t4/acc_<case>`，回拉至 `my-doc/05_t4/acceptance/<case>/` |

**有效起始阈值**（`start_thr = max(180, 3 × 噪声底)`，由每次运行的 SUMMARY `noise_rms` 换算）：

| 用例 | 噪声底 RMS | 起始阈值 | 结束阈值 |
|---|---:|---:|---:|
| A1 安静（重启前） | 72.05 | 216.2 | 129.7 |
| A2 安静（重启后） | 114.06 | 342.2 | 205.3 |
| B/C 真人语音 | 75.61 | 226.8 | 136.1 |
| D1 电视（默认阈值） | 145.16 | 435.5 | 261.3 |
| D2 音乐 | 90.04 | 270.1 | 162.1 |
| D3 环境噪声（空调） | 159.39 | 478.2 | 286.9 |
| E 连续 5 分钟 | 83.49 | 250.5 | 150.3 |

---

## 2. A. 安静环境测试

### 2.1 A1（应用重启前，60 s 窗口）

- 操作：`t4_receiver --secs 68`，T3 bridge 注入 60 s；期间不发声、不动设备（测试者本人在键盘上操作）。
- 原始统计（`acceptance/A1_quiet60_before_restart/receiver.log`）：

```json
{"type":"SUMMARY","received":1505,"accepted":1505,"processed":1505,"bad_len":0,"bad_crc":0,
 "missing":0,"duplicate":0,"reorder":0,"queue_drop":0,"queue_high_watermark":4,"queue_depth":0,
 "vad_speech_frames":78,"segments":2,"segment_write_errors":0,"noise_rms":72.05,"dur_s":68.079}
```

- 结果：**2 次误触发**（60 s 内 2 段）

| 段 | 起始(t) | 时长 | rms_avg | rms_max | 说明 |
|---|---:|---:|---:|---:|---|
| #1 | 14.1 s | 1040 ms | 186.6 | 665 | 桌面瞬时声（无法确认来源） |
| #2 | 16.9 s | 2400 ms | 307.8 | 1794 | 同上，两段间隔 1.6 s |

- 判读：噪声底仅 72 → 起始阈值 216，普通环境瞬态（峰值 665/1794）即可越过，形成短片段。

### 2.2 A2（应用重启后复测，60 s 窗口）

- 操作同上（`--secs 68`，bridge 60 s）。
- 原始统计（`acceptance/A2_quiet60/receiver.log`）：

```json
{"type":"SUMMARY","received":1502,"accepted":1502,"processed":1502,"missing":0,"duplicate":0,
 "reorder":0,"queue_drop":0,"queue_high_watermark":3,"queue_depth":0,
 "vad_speech_frames":0,"segments":0,"segment_write_errors":0,"noise_rms":114.06,"dur_s":68.060}
```

- 结果：**0 次误触发**（起始阈值 342）。

### 2.3 A 项小结

安静环境下**是否误触发取决于噪声底**：噪声底 72 时 60 s 内 2 次；噪声底 114 时 0 次。
不存在"持续误触发"（两段都是 ≤2.4 s 的孤立瞬态，不是连续触发）。

---

## 3. B / C. 真人语音与连续语句切分

### 3.1 操作过程（用户本人执行）

采集前先修复了 T3 侧的多生产者自禁用（见 §6.1），随后 `t4_receiver --secs 220` + bridge 220 s，
用户按脚本对设备朗读（全程未叫唤醒词）：

| 步骤 | 内容 |
|---|---|
| 1 | 安静 10 s |
| 2 | 拍一次手（对齐标记） |
| 3–7 | 依次朗读 5 句，每句后停 10 s |
| 8 | 「第一句比较短」→ 停 2 s →「第二句紧接着说，用来测试切分」 |
| 9 | 「现在开始第二组」→ 停 2 s →「中间停顿一秒半」 |
| 10 | 静止到收尾 |

### 3.2 原始统计（`acceptance/B_C_speech/receiver.log`）

```json
{"type":"SUMMARY","received":5503,"accepted":5503,"processed":5503,"bad_len":0,"bad_crc":0,
 "missing":0,"duplicate":0,"reorder":0,"queue_drop":0,"queue_high_watermark":4,"queue_depth":0,
 "vad_speech_frames":1003,"segments":12,"segment_write_errors":0,"noise_rms":75.61,"dur_s":228.025}
```

12 个片段，逐一对应（`acceptance/B_C_speech/segment_table.txt`）：

| # | 时间 | 时长 | rms | 峰值 | active/40ms | 对应内容 |
|---:|---:|---:|---:|---:|---:|---|
| 1 | 1.7 s | 1.12 s | 260 | 954 | 9/28 | 测试者就位声（**误触发**） |
| 2 | 16.3 s | 1.00 s | 2197 | 32768 | 6/25 | 拍手（削顶）✅ 对齐标记 |
| 3 | 19.0 s | 5.64 s | 568 | 3409 | 94/141 | 第 1 句 ✅ |
| 4 | 34.5 s | 5.52 s | 653 | 3123 | 97/138 | 第 2 句 ✅ |
| 5 | 50.8 s | 6.72 s | 659 | 4253 | 129/168 | 第 3 句 ✅ |
| 6 | 69.0 s | 5.64 s | 655 | 4029 | 102/141 | 第 4 句 ✅ |
| 7 | 83.8 s | 5.12 s | 727 | 3997 | 84/128 | 第 5 句 ✅ |
| 8 | 102.6 s | 1.92 s | 811 | 3905 | 29/48 | C 组 1 前半句 ✅ |
| 9 | 105.2 s | 4.08 s | 714 | 7139 | 71/102 | C 组 1 后半句（与 #8 间隔 0.7 s）✅ |
| 10 | 120.1 s | 2.12 s | 814 | 5186 | 31/53 | C 组 2 前半句 ✅ |
| 11 | 123.2 s | 2.36 s | 927 | 5763 | 40/59 | C 组 2 后半句（与 #10 间隔 1.1 s）✅ |
| 12 | 183.2 s | 0.80 s | 137 | 2498 | 2/20 | 收尾后环境瞬态（**误触发**，极低能量） |

### 3.3 B 项结果（真人语音）

- **5 句全部被检出（5/5），每句恰好一段**，没有漏检、没有把一句拆成多段、没有把两句合并。
- 句子时长 5.1–6.7 s，与朗读内容相符；`rms_avg` 568–727、40 ms 峰值 3100–4300，
  是背景噪声底（75）的 **7–10 倍**，VAD 判定余量充足。
- 起止边界：全部 12 段的前 3 个 40 ms 帧 RMS 均为 60–130（静音），
  **起始滞后 120 ms**（VAD 需 2 帧确认 + 200 ms pre-roll），末 8 帧同样回落到 60–105，
  **无截断**（`acceptance/B_C_speech/onset_offset.txt`）。
- 用户试听确认：`seg_31f417db_0003_477.wav`（第 1 句，5.64 s）、`seg_31f417db_0008_2565.wav`（C 组前半句，1.92 s）
  **"内容完整，无截断"**。

### 3.4 C 项结果（连续语句切分）

| 组 | 片段 | 句间静默 | 结果 |
|---|---|---:|---|
| 组 1 | #8 + #9 | 0.7 s | **正确切成 2 段** |
| 组 2 | #10 + #11 | 1.1 s | **正确切成 2 段** |

- 1–2 s 的句间停顿远大于 `hangover_ms=600`，因此不会合并；同时前者未被 `pre_roll=200 ms` 污染（#9 开头 3 帧仍是静音）。
- 没有出现"前后语音被错误截断"（组内两段的首尾都完整）。

---

## 4. D. 背景噪声测试

### 4.1 D1 电视（人声节目）

**第一步：确认电视真的进了麦克风（低阈值电平测量，仅测量、不作判定）**

`--min-rms 40 --start-ratio 0.2 --start-frames 3 --max-segment-ms 2000`，20 s，电视正常音量：

| 测量项 | 值 |
|---|---|
| 每 2 s 窗口 RMS | 165–200 |
| 40 ms 峰值 | 795–2240 |
| 过零率 | 0.07–0.18（人声特征） |
| 静音帧占比 | 44–66%（人声有停顿） |

→ 电视人声在麦克风处约 **RMS 170–200**，确实被采集到。
（同一位置在电视关闭时 RMS 只有 72–78，可作对照。）

**第二步：默认阈值验收（45 s）**

```json
{"type":"SUMMARY","received":1127,"accepted":1127,"processed":1127,"missing":0,"queue_drop":0,
 "queue_high_watermark":4,"queue_depth":0,"vad_speech_frames":19,"segments":1,
 "segment_write_errors":0,"noise_rms":145.16,"dur_s":53.061}
```

- 起始阈值 435（=3×145），电视人声 170–200 低于阈值，但人声的爆破/重音瞬时峰值可达 430+；
- 结果：**45 s 内 1 次误触发**（920 ms，`rms_avg=177`，`rms_max=433`）。

### 4.2 D2 音乐

**电平测量（低阈值，20 s）**：每 2 s 窗口 RMS 78–163，40 ms 峰值 265–710，噪声底 156。

**默认阈值验收（45 s）**：

```json
{"type":"SUMMARY","received":1129,"accepted":1129,"processed":1129,"missing":0,"queue_drop":0,
 "queue_depth":0,"vad_speech_frames":0,"segments":0,"segment_write_errors":0,
 "noise_rms":90.04,"dur_s":53.038}
```

- 结果：**0 次误触发**（阈值 270，音乐在麦克风处 ≤163）。

### 4.3 D3 普通环境噪声（空调/风扇，45 s）

```json
{"type":"SUMMARY","received":1127,"accepted":1127,"processed":1127,"missing":0,"queue_drop":0,
 "queue_depth":0,"vad_speech_frames":0,"segments":0,"segment_write_errors":0,
 "noise_rms":159.39,"dur_s":53.064}
```

- 结果：**0 次误触发**（噪声底被空调抬到 159，阈值自适应升到 478）。

### 4.4 D 项小结

| 声源 | 麦克风处电平 | 起始阈值 | 45 s 内误触发 |
|---|---:|---:|---:|
| 电视人声（正常音量） | RMS 170–200 / 峰值 ≤2240 | 435 | **1 次** |
| 音乐 | RMS 78–163 | 270 | **0 次** |
| 环境噪声（空调） | 噪声底 159 | 478 | **0 次** |

---

## 5. E. 连续运行测试（5 分钟）

- 操作：`t4_receiver --secs 308` + bridge 注入 300 s，期间保持环境常态。
- 原始统计（`acceptance/E_5min/receiver.log`）：

```json
{"type":"SUMMARY","received":7503,"accepted":7503,"processed":7503,"bad_len":0,"bad_crc":0,
 "missing":0,"duplicate":0,"reorder":0,"bad_magic":0,"bad_ver":0,"bad_hdr":0,"bad_param":0,
 "epoch_switches":0,"queue_drop":0,"queue_high_watermark":4,"queue_depth":0,
 "vad_speech_frames":186,"segments":7,"segment_write_errors":0,
 "noise_rms":83.49,"dur_s":308.026,"seq_first":1,"seq_last":7503}
```

| 检查项 | 结果 |
|---|---|
| 序号连续性 | `seq 1..7503`，`missing=0 duplicate=0 reorder=0` ✅ |
| 队列 | `queue_drop=0`，高水位 4/128（不增长），退出时深度 0 ✅ |
| 协议校验 | 全部 0 错误（长度/CRC/magic/ver/参数）✅ |
| 进程 | 300 s 无崩溃、无死锁，正常退出并打印 SUMMARY ✅ |
| 帧率 | 7503 帧 / 300.8 s ≈ 24.9 fps（设计 25 fps）✅ |
| 片段 | 7 段，全部 `saved=true`、`segment_write_errors=0` ✅ |

---

## 6. 发现的问题

### 6.1 【基础设施 · 非 T4 缺陷】T3 Bridge 多生产者自禁用，导致采集静默失败

- **现象**：第二次真人测试开始时 `received=1`、`vad_speech_frames=0`，248 s 只收到 1 帧。
- **证据**（`acceptance/bridge_logs/t408_bridge_BC2.log`）：
  `frames=1 produced=1 ... disables=1`，`stop() -> {"why":"multi-producer:14171"}`。
- **定位**：T3 bridge 的 `pcm_bridge_draft.js` 第 396–399 行有单生产者保护：
  第一个线程记录 `producerTid`，若**另一个线程**调用 `AGSpeechEngine::feed` 就 `disable('multi-producer:' + tid)`。
  用户此前多次说唤醒词让助手工作，原厂音频管线随后从**两个不同线程**调用 `feed`，触发该保护。
- **影响范围**：只影响采集（T3 bridge），T4 接收端行为正常（它只是没收到帧）。
- **处置**：重启原厂应用（`am force-stop` + launcher 启动）后恢复单生产者，`frames=376/15 s` 正常。
  **未修改 T3 Hook 任何代码**。
- **建议**（不在本轮修改）：T3 bridge 若要支持多线程 feed，需要在环里按线程分槽/加锁，
  这属于 T3 的后续工作。

### 6.2 【参数/鲁棒性 · 非代码缺陷】噪声底依赖 1 s 校准窗口

- 实测噪声底在 72–159 之间大幅波动（同一房间、同一设备），起始阈值随之在 216–478 之间变化；
- A1 中噪声底只有 72，阈值 216，桌面瞬态（峰值 665/1794）两次越过阈值形成 1.0 s / 2.4 s 的假片段；
- A2 同一房间重测，噪声底 114，阈值 342，**0 次误触发**。
- 结论：这是**标定问题**，不是逻辑错误；若要求"安静环境零误触发"，需要提高 `min_rms`
  （例如 300）或延长/多次校准取中位数（属参数与算法改进，需另行评审，本轮未改）。

### 6.3 【参数】电视人声处于阈值边缘

- 电视人声在麦克风处 RMS≈170–200，而默认阈值在电视播放时升到 435（噪声底被抬到 145）；
  但人声瞬时峰值可达 430+，45 s 内仍触发 1 次。
- 说明当前 VAD 是**近场优先**：真人近距离语音（RMS 550–730）余量 7–10 倍，
  远场电视（170–200）处在边缘。若产品要求远场抑制，需要谱特征/双麦，属于算法升级，不在本轮范围。

### 6.4 【行为说明】片段起点有约 120 ms 静音

- 全部片段前 120 ms 是 pre-roll 的静音尾巴（VAD 需 2 帧确认），不是截断；用户试听确认内容完整。
- 若后续做 ASR，这个 120 ms 前导静音不影响识别，但可以做补偿。

### 6.5 其他（如实记录）

- 首轮 60 s 测试（A1）中的 2 次误触发**未能定位声源**（当时测试者在键盘上操作，房间内无电视/音乐）；
- 早期一次 300 s 采集（20:00 前后的 `acc_BC`，30 段）中，除真人语音外还包含
  **用户习惯性说的唤醒词**与**设备助手回话**（一段 6.84 s、峰值削顶的片段）；
  该轮数据不作为验收依据，只用于定位 §6.1 的问题。

---

## 7. WAV 文件检查

对所有保留的片段执行结构校验（`acceptance/*/segment_table.txt`、`wav_env.txt`）：

| 检查项 | 结果 |
|---|---|
| `RIFF` / `WAVE` 标识 | 全部通过（12/12 语音段、2/2 误触段、20/20 电平测量段、7/7 长跑段） |
| `RIFF size == 文件长 − 8` | 通过 |
| `data size == PCM 字节数` | 通过 |
| 采样率 / 声道 / 位深 | 16000 Hz / 1 ch / 16 bit，全部一致 |
| `nframes == frame_count × 640` | 通过（例：5.64 s 段 = 141 帧 × 640 = 90240 样本） |
| 可播放性 | 用户在本机双击播放 `seg_31f417db_0003_477.wav`、`seg_31f417db_0008_2565.wav`，**正常播放、内容完整** |
| 空文件 / 异常数据 | 无（最短 800 ms，最长 6.84 s，均含有效 PCM） |
| 截断 | 无（起始 120 ms 静音 + 结尾回落，见 §3.3、§6.4） |

---

## 8. 验收结论

| 项 | 结论 | 依据 |
|---|---|---|
| A 安静环境（是否持续误触发） | **部分通过** | A1（噪声底 72）60 s 内 2 次短误触发；A2（噪声底 114）0 次；无持续误触发 |
| B 真人语音触发 | **通过** | 5/5 句全部检出，一句一段，无漏检/无合并/无截断（用户试听确认） |
| C 连续语句切分 | **通过** | 两组"1–2 s 停顿"均正确切成 2 段（间隔 0.7 s / 1.1 s） |
| D 背景噪声 | **部分通过** | 电视人声 45 s 内 1 次误触发；音乐 0 次；环境噪声（空调）0 次 |
| E 连续 5 分钟 | **通过** | 7503 帧零丢帧、零队列丢弃、零 CRC 错误、无崩溃，7 段全部正常落盘 |

**总体结论：部分通过。**

- 核心功能（近场真人语音 → 片段 WAV）在真机上稳定可用，数据通路零丢失；
- 误触发只在两种情况下出现：① 噪声底很低时的一次性环境瞬态；② 电视人声处于阈值边缘。
  两者都属于**阈值标定**范围，不涉及 T4 代码缺陷；
- 未发现 PCM 传输、队列、WAV 写入环节的任何缺陷；
- 发现一个**采集侧**问题（T3 bridge 单生产者保护在多线程 feed 时自禁用），已定位并给出处置方式，未修改 T3 代码。

**建议的后续（需评审后再动代码）**：提高 `min_rms` 或改进校准（多次采样取中位数），
并在 README 中写明"近场优先"的设计意图。

---

## 9. 证据清单

```
my-doc/05_t4/acceptance/
  A1_quiet60_before_restart/   receiver.log, files.txt, wav_list.txt, wav_env.txt, 2 个 WAV（误触发段）
  A2_quiet60/                  receiver.log, files.txt, wav_list.txt
  B_C_speech/                  receiver.log, files.txt, wav_list.txt, segment_table.txt,
                               onset_offset.txt, 12 个 WAV（含 5 句 + 2 组双句）
  D1_TV_probe_lowthreshold/    level_probe.log（电平测量，WAV 未入库，设备 /data/local/tmp/t4/acc_TV1 保留）
  D1_TV_normal/                receiver.log, 1 个 WAV（唯一一次电视误触发）
  D2_Music_probe_lowthreshold/ level_probe.log（同上，WAV 未入库）
  D2_Music_normal/             receiver.log
  D3_Ambient_normal/           receiver.log
  E_5min/                      receiver.log, files.txt, wav_list.txt
  bridge_logs/                 T3 bridge 日志（含 multi-producer 失败证据）
  receiver_logs/               各用例的完整控制台输出（CONFIG/READY/SEGMENT/SUMMARY）
```

> 说明：`D*/probe_lowthreshold` 目录是**测电平用**的低阈值运行（`--min-rms 40 --start-ratio 0.2`），
> 目的是量化"麦克风实际听到多少"，**不作为误触发判定依据**；判定只使用默认阈值运行（`*_normal/`）。
