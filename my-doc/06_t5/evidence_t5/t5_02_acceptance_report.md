# T5-02 真机验收报告：T4 现场生成 WAV → T5 自动发现 → Mock 任务闭环

- **结论：PASS**（9 条通过标准逐条满足，见 §9）
- **Git 提交（测试时的 main）**：`f8af33d003ed2b7ba9937d319111bd74afe0fb0a`
  （`fix: enforce strict JSON integer syntax in T5 replay`，本报告为其后的文档/证据提交）
- **设备测试时间**：2026-11-20 09:07:17 – 09:11:00（CST / Asia-Hong_Kong）
- **设备**：AILABS_S1L，Android 8.1（SDK 27），build `6.1.8-RS-20221104.1459`，SELinux Permissive
- **改动范围**：仅新增证据与本报告；**未修改** T3/T4 生产代码、原厂 APK/native/分区、T5 任务架构、VAD 参数
- **本轮不涉及**：真实 ASR、LLM、TTS、任何外网调用

---

## 1. 一句话结论

电脑播放用户既有录音 → 原厂唤醒/语音链路被触发 → **T4 在真机上现场写入 7 个新 WAV** →
**T5 无需人工导入即自动发现、等写完、校验头与长度、建任务、Mock 处理并落盘** →
**T5 重启后回放 35 条历史记录、不重复建任务、不重复执行**。全流程
`succeeded=7 / failed=0 / invalid=0 / store_errors=0`，7 个 `results.jsonl` 记录与 7 个 WAV 一一对应。

---

## 2. 测试前状态（T5-02-01）

完整快照见 [`t502/t502_baseline.txt`](t502/t502_baseline.txt)。

| 项目 | 值 |
|---|---|
| 原厂进程 | `com.alibaba.ailabs.genie.smartapp:core` PID **16112**（全程存活） |
| T4 输出目录（本轮） | `/data/local/tmp/t4/segments_t502`（新建，**测试前为空**） |
| T5 工作目录（本轮） | `/data/local/tmp/t5/work_t502`（新建，**测试前为空**） |
| T5 启动参数 | `./t5_agent --watch-dir /data/local/tmp/t4/segments_t502 --work-dir /data/local/tmp/t5/work_t502 --verbose`（其余默认：`scan_interval_ms=1000`、`stable_ms=500`、`max_jobs=4096`、`max_retries=3`、`provider=mock`） |
| `t5_agent` 指纹 | `sha256 c66925be…828ab8`（= `evidence_t5/ndk_build.log` 记录的本次构建产物） |
| `t4_receiver` 指纹 | `sha256 e0f09767…a263cc8`（T4 生产二进制，未重建） |
| 既有数据（只读） | `/data/local/tmp/t4/segments` 20 个 WAV；`/data/local/tmp/t5/work_r4` 100 行 jobs / 20 行 results |

隔离做法：本轮全程使用 `segments_t502` / `work_t502`，历史目录一个字节都没有改动，
既未清空也未删除任何 WAV 或任务记录。

---

## 3. 音源与播放编排（T5-02-02）

音源为工作区 `audio/` 下用户既有录音（文件名即内容），**未复制、未导入设备任何目录**，
只经 PC 扬声器播放，由 TG-Z02 麦克风拾音，走原有 T3→T4 链路。

播放器：`_analysis/t502_play.ps1`（本地临时脚本，不进仓库）。它用
`System.Windows.Media.MediaPlayer` 逐文件播放，系统音量实测已为 100%，播放器 `Volume=1.0`，
每句之间插 1.5 s 静默，并按日志打点。（脚本自测时以 `Volume=0.0` 静音运行过一遍，只验证解码与时长。）

编排顺序（**唤醒词置于首位**，这是本轮唯一的顺序约束）：

| # | 文件 | 时长 | 播放时刻（round 1） |
|---|---|---:|---|
| 1 | `唤醒词.m4a` | 1.00 s | 09:07:52.1 – 09:07:53.6 |
| 2 | `现在进行第一轮语音测试，请保持环境安静.wav` | 5.52 s | 09:07:55.1 – 09:08:00.9 |
| 3 | `现在几点了.m4a` | 2.00 s | 09:08:02.4 – 09:08:04.8 |
| 4 | `今天天气怎么样.m4a` | 2.00 s | 09:08:06.3 – 09:08:08.6 |
| 5 | `第一句比较短.wav` | 1.92 s | 09:08:10.1 – 09:08:12.3 |
| 6 | `中间停顿1秒半.wav` | 2.36 s | 09:08:13.8 – 09:08:16.4 |

第二轮（T5-02-03 的"写盘期观测"，§6.2）只播 3 段：`唤醒词` → `现在进行第一轮…` → `现在几点了`，
时刻 09:09:54.9 – 09:10:07.6。播放日志：`t502/t502_play_round1.log`、`t502/t502_play_round2.log`。

正式测试前先跑了 30 s 标定（`t502_play_calibration.log`）：`segments=3`、`vad_speech_frames=182`、
`noise_rms=79.72`（起始阈值 `max(180, 3×79.72)=239`），确认"PC 播放 → 设备麦克风"这条声学通路成立，
才进入正式流程。标定用的 WAV 写在 `/data/local/tmp/t4/cal_t502`（**不在** T5 的 watch 目录内）。

---

## 4. T4 现场生成的新 WAV

T4 两次运行（同一输出目录，不同 `run_id`），日志 `t502/t4_run2_receiver.log`：

| 轮次 | 命令 | run_id | 时长窗口 | received | missing/duplicate/reorder | bad_* | queue_drop | vad_speech_frames | segments | segment_write_errors | noise_rms |
|---|---|---|---:|---:|---|---|---|---:|---:|---:|---:|
| round 1 | `run_t4.sh start --secs 90 --out …/segments_t502` | `a6116340` | 09:07:35–09:09:05 | 2002 | 0 / 0 / 0 | 0 | 0 | 244 | **5** | 0 | 80.92 |
| round 2 | `run_t4.sh start --secs 45 --out …/segments_t502` | `988c2771` | 09:09:45–09:10:30 | 967 | 0 / 0 / 0 | 0 | 0 | 211 | **2** | 0 | 79.89 |

round 1 的 `SUMMARY` 在 round 2 启动前抄录（`run_t4.sh` 的 `start` 会 `: >` 截断 receiver 日志，
round 1 的逐段 `SEGMENT` 行因此被覆盖——见 §10 偏差 d）。

T3 桥接侧同一时窗统计（`t502/t502_t3_bridge_stats.txt`）：`enabled=true`、`checks` 四项全 true、
`disables=0`、`lenBad=0`、`connectFail=0`（round 2 的 3 次是在 T4 退出后），
`tidCount=1`（生产者 TID 16285）、`latP50≈9.3 ms`、`latP99≈38 ms`。
桥接 `frames=2002` 与 T4 `received=2002` **完全相等**，本时窗零丢帧。

### 4.1 7 个新 WAV 的文件信息（设备侧 `sha256sum`）

| # | 文件名 | 字节 | 时长 | 头/尾 seq | 关闭时刻（mtime） | SHA256 |
|---|---|---:|---:|---|---|---|
| 1 | `seg_a6116340_0001_252.wav` | 41004 | 1.28 s | 252 / 283 | 09:07:54.00 | `33e70627168fd1cb88f4e5dd0e308aeb671aaac1be49263ece814eac6d4a042d` |
| 2 | `seg_a6116340_0002_288.wav` | 53804 | 1.68 s | 288 / 329 | 09:07:55.78 | `3e97ad1a8f047f09fd96b345c4e25c48c905dbfea88423e96efe384ef760bc5c` |
| 3 | `seg_a6116340_0003_412.wav` | 111404 | 3.48 s | 412 / 498 | 09:08:02.60 | `cfa560730a5a4b9e19276220861beca5e0e4238032440f267e2aff8cca561b2d` |
| 4 | `seg_a6116340_0004_510.wav` | 66604 | 2.08 s | 510 / 561 | 09:08:05.11 | `06ec7a2baa29b3c66448cf2e91220ecbc09a7fbebaf16895b248fc85c83fd7c1` |
| 5 | `seg_a6116340_0005_599.wav` | 65324 | 2.04 s | 599 / 649 | 09:08:08.61 | `4a39a8f4d78738182e2899f3800a23e439aece2f6641a6a08b7bb7ae3281015b` |
| 6 | `seg_988c2771_0001_224.wav` | 85804 | 2.68 s | 224 / 290 | 09:09:58.17 | `aac4463a7b8be3b0112d84cc9813eb4b1548b0af4e91d0c1a58aab5a0ec1ec86` |
| 7 | `seg_988c2771_0002_381.wav` | 194604 | 6.08 s | 381 / 532 | 09:10:07.82 | `78d3b132692c44d2649d20ec36a4925986683b19d53b0866cfcd1d50f6e26463` |

**真机来源可核验**：这些文件的 `run_id`（`a6116340`/`988c2771`）与 T4 该次运行的 `CONFIG.run_id` 相同，
序列号区间与 `SEGMENT.end_seq` 一致；关闭时刻（mtime）落在对应播放时间窗内（如 #4 关闭于 09:08:05.11，
`现在几点了` 播于 09:08:02.4–04.8；#7 覆盖 09:10:01.9–07.8，对应第二轮的第 2、3 段播放）。
PC 端原始音频从未出现在设备目录中（本轮所有设备写入均来自 T4 的 `t4_wav_open/close` 路径）。

回拉副本的波形能量（`_analysis` 临时脚本，仅用于确认"有语音"）：RMS 297–1263、峰值 1764–16118，
全部处于真人语音量级。

---

## 5. T5 自动发现与处理（T5-02-03）

### 5.1 发现与统计

T5 全程无人工干预（不起 `--once`，不 `touch` 文件，不手工 `cp`）。运行日志
`t502/t502_agent_before_restart.log`，退出前最后一次统计：

```json
{"t":"t5_stats","scans":204,"files_seen":961,"new_jobs":7,"dup_skips":930,
 "incomplete_skips":0,"invalid":0,"succeeded":7,"failed":0,"retried":0,
 "queue_full":0,"evicted":0,"recovered":0,"bad_lines":0,"provider_errors":0,
 "store_errors":0,"jobs_tracked":7,"replay_lines":0}
```

| 指标 | 值 | 解读 |
|---|---:|---|
| `new_jobs` | 7 | 与 7 个新 WAV **一一对应**，无多余、无遗漏 |
| `succeeded` | 7 | 全部进入终态 SUCCEEDED |
| `failed` / `retried` | 0 / 0 | 无失败、无重试 |
| `invalid` | 0 | 没有把半成品判成 INVALID |
| `bad_lines` / `store_errors` | 0 / 0 | 解析与落盘零错误 |
| `queue_full` / `evicted` | 0 / 0 | 任务槽位未溢出 |
| `dup_skips` | 930 | 已建任务的 (文件名, 大小) 被后续 204 轮扫描重复看到，全部被去重拦掉 |

> 注：`files_seen` / `dup_skips` 是**按扫描次数累计**的计数（每轮对每个文件各 +1），不是唯一文件数；
> 唯一文件数由 `new_jobs` 体现。

### 5.2 "等写完"的证据（写盘期观测）

因为 T4 每 40 ms 落一帧，文件在写盘期间**边写边长**。第二轮专门加了 100 ms 级采样器
（`/data/local/tmp/t4/t502_sampler.sh`，只 `stat`，不写 watch 目录；实际周期 ~390 ms），
原始数据 `t502/t502_growth.log`（2323 行 = 2322 行采样 + 1 行 `SAMPLER_END`，覆盖 09:09:35.6–09:11:51.6）。

`seg_988c2771_0002_381.wav` 的生长过程（同一文件，11 个不同大小，跨越 5.69 s）：

| 相对时刻 | 墙钟 | 文件字节 |
|---|---:|---:|
| +0.00 s | 09:10:02.274 | 16384 |
| +0.68 s | 09:10:02.950 | 36864 |
| +1.17 s | 09:10:03.444 | 53248 |
| +1.68 s | 09:10:03.953 | 69632 |
| +2.34 s | 09:10:04.612 | 90112 |
| +2.90 s | 09:10:05.176 | 106496 |
| +3.49 s | 09:10:05.762 | 131072 |
| +4.16 s | 09:10:06.433 | 147456 |
| +4.64 s | 09:10:06.912 | 163840 |
| +5.16 s | 09:10:07.435 | 180224 |
| **+5.69 s** | **09:10:07.960** | **194604（终值）** |

T5 在同一时间窗内以 1 s 周期持续扫描该文件（`files_seen` 单调增加），但**没有**在任何中间大小上建任务：
该文件唯一的 Job 于 **09:10:09** 进入 SUCCEEDED，记录的 `size=194604`（终值），
比终值落盘晚约 1.0 s，比首次被看到晚约 5.7 s。

> `job_id = fnv1a64("<name>:<size>")`，若在中途大小上建过任务，必然留下一个 `size=16384/36864/…`
> 的额外 Job（且 `results.jsonl` 会多一行）。实测 7 文件 / 7 Job / 7 result，**没有任何中间大小任务**。
> 这就是"等写完再处理"在本轮的直接证据。

### 5.3 WAV 校验与 Mock 处理

- 校验：`t5_wav_inspect()` 走偏移式 chunk 遍历 + 全长度一致性。回拉后独立复算
  （`t502/t502_wav_verify.txt`）：7/7 文件 `RIFF/WAVE`、`fmt` = PCM / 1ch / 16000 Hz / 16 bit、
  `data.size == 文件长度-44`、`riff_size == 文件长度-8`，全部 **OK**（时长 1.28–6.08 s）。
- Mock：`provider=mock`，`results.jsonl` 里 7 条 `text` 均为 `[MOCK] recognized segment N`。
  **这不代表任何真实语音识别能力**，只证明任务管线跑通。

### 5.4 Job 状态与 WAV 关联（可追溯性）

状态链 7/7 均为 `DISCOVERED → VALIDATING → PENDING → PROCESSING → SUCCEEDED`（`jobs.jsonl` 35 行 = 7×5）。

| 文件名 | job_id | size | run_id | seg_id | start_seq | 终态 |
|---|---|---:|---|---:|---:|---|
| `seg_a6116340_0001_252.wav` | `5e5396574f3b9602` | 41004 | `a6116340` | 1 | 252 | SUCCEEDED |
| `seg_a6116340_0002_288.wav` | `80377112807c19ad` | 53804 | `a6116340` | 2 | 288 | SUCCEEDED |
| `seg_a6116340_0003_412.wav` | `998bd0f2bccf7466` | 111404 | `a6116340` | 3 | 412 | SUCCEEDED |
| `seg_a6116340_0004_510.wav` | `f9ed0ecd1f7a96c1` | 66604 | `a6116340` | 4 | 510 | SUCCEEDED |
| `seg_a6116340_0005_599.wav` | `a5a6f993e75bd40b` | 65324 | `a6116340` | 5 | 599 | SUCCEEDED |
| `seg_988c2771_0001_224.wav` | `e71c44f7f30274e4` | 85804 | `988c2771` | 1 | 224 | SUCCEEDED |
| `seg_988c2771_0002_381.wav` | `20f21777708abe22` | 194604 | `988c2771` | 2 | 381 | SUCCEEDED |

每条记录同时保存**绝对来源路径**（`file`）、文件名、字节数、`run_id`、`seg_id`、`start_seq`，
并校验 `job_id == fnv1a64("<name>:<size>")` 7/7 命中（`t502_wav_verify.txt` 末段）。

### 5.5 重复 / 错误任务

- 重复任务：**0**（7 文件 → 7 job_id，唯一）。
- 错误任务：**0**（无 FAILED、无 INVALID、无 `incomplete-timeout:*`）。
- 存储错误：**0**（`store_errors=0`、`bad_lines=0`；`jobs.jsonl` 35 行、`results.jsonl` 7 行，
  行数与状态空间完全吻合）。

---

## 6. 重启恢复（T5-02-04）

安全停止：对 PID 发 `SIGINT`（未 `SIGKILL`、未删 pid/记录），进程在 5 s 窗口内退出并打出最终统计；
重启使用**完全相同**的 argv 与目录。

| 指标 | 重启前（退出前最终 stats） | 重启后（退出前最终 stats） |
|---|---:|---:|
| `scans` | 204 | 16 |
| `files_seen` | 961 | 112 |
| `new_jobs` | 7 | **0** |
| `dup_skips` | 930 | 112 |
| `succeeded` | 7 | **0**（无新处理） |
| `failed` / `invalid` / `retried` | 0 / 0 / 0 | 0 / 0 / 0 |
| `store_errors` / `bad_lines` | 0 / 0 | 0 / 0 |
| `jobs_tracked` | 7 | **7**（回放得到） |
| `replay_lines` | 0 | **35** |
| `jobs.jsonl` 行数 | 35 | **35（未变）** |
| `results.jsonl` 行数 | 7 | **7（未变）** |

重启后的 `t5_start` 与统计见 `t502/t502_agent_restart.log`：
`{"new_jobs":0,"dup_skips":112,"succeeded":0,"jobs_tracked":7,"replay_lines":35}`。
即：**历史 35 条状态记录被完整回放、7 个任务全部恢复、7 个已成功的 WAV 一个都没有被重新建任务或重新执行**，
且没有写入任何新记录。停止时同样走 SIGINT → 正常退出。

---

## 7. 异常与偏差（全部如实记录）

| # | 现象 | 分析 | 处置 |
|---|---|---|---|
| a | `incomplete_skips = 0`（未观察到"稳定但仍未回填头部"的采样点） | T4 每 40 ms 写一帧，`t4_wav_close()` 在 hangover 结束后立即回填；`--stable-ms 500` 的稳定性窗口在真实写盘节奏下先一步拦住了中间态，因此"稳定 + 头部占位"这个组合在本轮没被采到。写盘期保护由"稳定性窗口 + 全长度校验"承担（§5.2 已用生长日志证明没有中间态任务）；`t4-open-placeholder` 分支由主机单测 T14.1–14.11 / T03a / T03b 确定性地覆盖 | 不调参、不制造场景；如实标注"真机未直接命中该分支" |
| b | 播放 6 段，round 1 只切出 5 段 | `第一句比较短.wav`、`中间停顿1秒半.wav` 未达 T4 VAD 起始阈值（`noise_rms 80.92` → 阈值 243，属近场优先标定，T4 验收报告早已记录该特性） | 不改 VAD 参数（本轮禁止改 T4），不影响 T4→T5 衔接结论 |
| c | T5 以 `./t5_agent` 相对路径启动 | `/proc/<pid>/cmdline[0]` 为 `./t5_agent`，`run_t5.sh` 的 PID 身份校验要求绝对路径 `$BIN`，会判 stale 而不发信号 | 本轮用独立目录启动，故未走 `run_t5.sh`；停进程前按同样的 `/proc/<pid>/cmdline` 规则人工确认身份后再 `SIGINT`。`run_t5.sh` 一字未改 |
| d | `t4_receiver.log` 只剩 round 2 的内容 | `run_t4.sh` 的 `start` 分支会 `: > "$LOG"` 截断日志（既有行为） | round 1 的 `SUMMARY` 已在 round 2 启动前抄录（§4 表格），round 1 的逐段 `SEGMENT` 行不可复原，故 §4.1 的 seq 区间对 round 1 以文件名/任务记录为准 |
| e | 采样器实际周期 ~390 ms，不是设计的 100 ms | 每次迭代对 5–7 个文件各做一次 `stat` 再 `sleep 0.1`，Android `sh` 的进程开销拉长了周期 | 不影响结论：5.69 s 内仍采到 11 个不同大小 |
| f | 测试结束后 T5 处于停止状态 | 测试前设备上也没有 T5 常驻进程；为避免污染后续轮次，保持与测试前一致 | 已在 §2/§6 说明；`/data/local/tmp/t4/segments_t502` 与 `work_t502` 原样保留供复查 |
| g | T5 日志中 `dup_skips` 高达 930 | 每轮扫描都会对"已建任务但文件仍在目录里"的每个文件 +1，属预期累计语义 | 见 §5.1 注 |

未发现任何**无法解释**的数据损坏、任务丢失或存储错误。

---

## 8. 未改动 / 未触碰清单

- T3/T4 采集与传输代码：`my-doc/03_uds_test/pcm_bridge_draft.js`、`my-doc/04_device_t3/*`、
  `my-doc/05_t4/android/*` —— **git 无改动**。
- T5 生产代码：`my-doc/06_t5/android/*`、`my-doc/06_t5/tests/*` —— **git 无改动**。
- 原厂 APK / native 库 / 系统分区：未改动（未 remount，未 `am force-stop` 原厂应用）。
- 设备上只新增：`/data/local/tmp/t4/segments_t502/`、`/data/local/tmp/t4/cal_t502/`、
  `/data/local/tmp/t4/t502_sampler.sh`、`/data/local/tmp/t4/t502_growth.log`、
  `/data/local/tmp/t5/work_t502/`、`/data/local/tmp/t5/t502_*`。
- 未接入真实 ASR / LLM / TTS，未发任何外网请求（frida 走 `adb forward` 本地端口）。

---

## 9. 通过标准逐条对照

| # | 标准 | 结论 | 依据 |
|---|---|---|---|
| 1 | 电脑播放录音后，T4 确实生成新 WAV | **PASS** | 7 个新文件，`run_id` 与 T4 `CONFIG`/`SEGMENT` 一致，`segment_write_errors=0`（§4） |
| 2 | T5 自动发现该 WAV，无需手动导入 | **PASS** | `new_jobs=7`，全程无人工操作（§5.1） |
| 3 | T5 能正确判断 WAV 已经完整写入 | **PASS** | 生长日志 11 个中间态 + 无中间态任务 + 全长度校验 7/7 OK（§5.2、§5.3） |
| 4 | T5 能创建与 WAV 对应的任务 | **PASS** | 7 文件 → 7 唯一 `job_id`（§5.4） |
| 5 | Mock Provider 正常处理，任务进入正确终态 | **PASS** | 7/7 `SUCCEEDED`，`failed=0`，`text="[MOCK] recognized segment N"` |
| 6 | WAV 与 Job 的关联关系可追溯 | **PASS** | 路径 + `run_id` + `seg_id` + `start_seq` + `size`，`job_id` 复算 7/7 命中（§5.4） |
| 7 | T5 重启后任务记录仍然存在 | **PASS** | `replay_lines=35`、`jobs_tracked=7`、`jobs.jsonl`/`results.jsonl` 行数不变（§6） |
| 8 | 已成功处理的 WAV 不会被重复处理 | **PASS** | 重启后 `new_jobs=0`、`succeeded=0`、`dup_skips=112`（§6） |
| 9 | 没有无法解释的数据损坏、任务丢失或存储错误 | **PASS** | `store_errors=0`、`bad_lines=0`、RIFF/长度/格式 7/7 校验通过、7 WAV ↔ 7 result 一一对应（§7） |

---

## 10. 证据文件清单

| 文件 | 内容 |
|---|---|
| [`t502/t502_baseline.txt`](t502/t502_baseline.txt) | 测试前状态、启动方式、二进制指纹、既有数据 |
| [`t502/t4_run2_receiver.log`](t502/t4_run2_receiver.log) | T4 第二轮 `CONFIG`/`READY`/`SEGMENT`/`SUMMARY` 原文 |
| [`t502/t502_t3_bridge_stats.txt`](t502/t502_t3_bridge_stats.txt) | 两轮 T3 桥接 `frames`/`disables`/`lat`/`tids` 关键字段 |
| [`t502/t502_agent_before_restart.log`](t502/t502_agent_before_restart.log) | T5 首轮运行至 SIGINT 退出的完整日志（含 stats） |
| [`t502/t502_agent_restart.log`](t502/t502_agent_restart.log) | T5 重启后的完整日志（`replay_lines=35`） |
| [`t502/t502_growth.log`](t502/t502_growth.log) | 2322 行写盘期采样（时间戳 ns + 文件名 + 字节数） |
| [`t502/t502_play_round1.log`](t502/t502_play_round1.log) | round 1 播放编排与逐段时刻 |
| [`t502/t502_play_round2.log`](t502/t502_play_round2.log) | round 2 播放编排与逐段时刻 |
| [`t502/t502_play_calibration.log`](t502/t502_play_calibration.log) | 30 s 标定播放日志 |
| [`t502/t502_jobs.jsonl`](t502/t502_jobs.jsonl) | 35 条状态迁移原文（7 任务 × 5 状态） |
| [`t502/t502_results.jsonl`](t502/t502_results.jsonl) | 7 条终态结果原文 |
| [`t502/t502_wav_sha256.txt`](t502/t502_wav_sha256.txt) | 设备侧 7 个 WAV 的 SHA256 |
| [`t502/t502_wav_verify.txt`](t502/t502_wav_verify.txt) | 回拉副本的 RIFF/fmt/data 校验、job_id 复算、`VERDICT = PASS` |
| [`t502/wav/`](t502/wav) | 7 个新 WAV 的回拉副本（真机采集，未做任何后处理） |
| [`t502/t502_play.ps1`](t502/t502_play.ps1) | PC 端播放编排脚本（仅播放，不写设备目录） |
| [`t502/t502_sampler.sh`](t502/t502_sampler.sh) | 设备端写盘期采样脚本（只 `stat`，只读） |
| [`t502/t502_verify_wav.py`](t502/t502_verify_wav.py) | WAV 结构 + 任务关联复算脚本（在本目录内可直接运行） |

> `t502_play.ps1` / `t502_sampler.sh` / `t502_verify_wav.py` 是本轮**一次性取证辅助脚本**，
> 不属于测试框架，也不参与 T5/T4 构建；放进证据目录只是为了"报告里的每个数字都能重算"。

---

## 11. 复现步骤（最短路径）

```sh
# 0) 设备准备
adb -s 192.168.1.9:5555 forward tcp:27042 tcp:27042
adb -s 192.168.1.9:5555 shell "su -c 'nohup /data/local/tmp/fs32 >/data/local/tmp/fs32.log 2>&1 &'"

# 1) 独立目录 + 先起 T5（watch 为空目录）
adb shell "mkdir -p /data/local/tmp/t4/segments_t502 /data/local/tmp/t5/work_t502"
adb shell "cd /data/local/tmp/t5; nohup ./t5_agent --watch-dir /data/local/tmp/t4/segments_t502 \
            --work-dir /data/local/tmp/t5/work_t502 --verbose > t502_agent.log 2>&1 < /dev/null &"

# 2) 起 T4（有限时长），再起 T3 桥接，然后 PC 播放（唤醒词在最前）
adb shell "sh /data/local/tmp/t4/run_t4.sh start --secs 90 --out /data/local/tmp/t4/segments_t502"
python run_t3_uds.py 80 <bridge.log>
powershell -STA -File t502_play.ps1 -Plan "<唤醒词>:1500,<句1>:1500,<句2>" -Volume 1.0

# 3) 观察 T5 → 等 T4 结束读 SUMMARY → SIGINT T5 → 用同样 argv 重启 → 比对记录
```

---

## 12. 下一步

按任务要求，本报告到此为止：**不启动 T5-03、不接真实 ASR**，等待对 T5-02 结果的审查意见。
