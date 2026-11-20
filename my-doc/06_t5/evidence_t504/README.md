# evidence_t504 — T5-04 原厂云端 ASR 文字只读拦截验证

对应报告：[`../t5_04_asr_text_interception_report.md`](../t5_04_asr_text_interception_report.md)

设备：TG-Z02 / AILABS_S1L，进程 `com.alibaba.ailabs.genie.smartapp:core`（PID 16112），
模块 `libsmartbox.so`（SHA256 `f6e3c354…80940`，与仓库文件一致）。

## 交付物

| 文件 | 说明 |
|---|---|
| `t504_asr_text_probe.js` | **探针脚本**：4 个只读 Hook（H1 `SessionManager::onStream`、H2 `PerformanceData::setTextTime`、H3 `AGVadStateMachine::handleAsrResult`、H4 `CloudASRManager::handleCloudASRResult`），加载时校验 base+offset |
| `t504_host_runner.py` | 宿主运行器：attach / 收 jsonl / 定时 detach |
| `t504_latency.py` + `t504_latency_table.md` | 从设备 logcat 计算逐会话延迟 |
| `t504_session_summary.md` | 逐会话 partial/final 汇总；各 Hook 命中统计 |

## 实测证据

| 文件 | 说明 |
|---|---|
| `t504_test_a_hits.jsonl` | 测试 A（音量大一点 / 现在几点了 / 今天天气怎么样）原始命中 |
| `t504_test_bc_hits.jsonl` | 测试 B（连续三句）+ 用户长录音 |
| `t504_test_c2_hits.jsonl` | 测试 C2（6.8 s 连续长句） |
| `t504_test_{a,bc,c2,e}_play_log.txt` | 电脑端播放编排与毫秒打点 |
| `t504_logcat_{a,bc,c2,e}_extract.txt` | 设备 logcat 的 ASR 相关行（用于与原厂自身 `SessionManager.cpp:onStream:641` / `setTextTime` 交叉验证） |
| `t504_device_env.txt` | 设备/模块 SHA256、模块基址、偏移校验结果、frida 版本 |

`asrLogId` / `logId` / `uuid` / `digest` / 其它长十六进制标识在入库证据中已替换为 `<redacted>` / `<id>`。

## 测试激励

- 人声：仓库外电脑端既有录音 `audio/唤醒词.m4a`、`audio/现在几点了.m4a`、`audio/今天天气怎么样.m4a`、`audio/现在进行第一轮语音测试，请保持环境安静.wav`（由电脑扬声器播放，经设备麦克风进入原厂链路）。
- 合成：`音量大一点`（测试 A1）与 `请把客厅的灯打开然后把卧室的空调调到二十六度`（测试 C2）由本机 SAPI（Microsoft Huihui，zh-CN，16 kHz/16 bit/单声道）生成，仅存在于 PC 侧，**未入库**；重新生成命令见报告附录。

## 探针输出的 result_type 语义

- **H1**：读原厂 `isFinished`，`final` 为权威判定（每会话恰好 1 次）。
- **H2**：带 `sessionId`，但第 4 参（isLast）在本 ARM32 ABI 下未落到可判定槽位，仅作旁证；
  其 `partial` / `post_final` 只是相对本会话 final 的**顺序标签**，不代表重复识别。
- **H3/H4（P1 修复后）**：参数里没有 `sessionId` 且运行在语音引擎线程，输出
  `session_id = null`、`session_correlation = 'not_available_in_hook_arguments'`、
  `result_type = 'unclassified'`；不再跨线程猜测会话。H4 仍保留 `asr_log_id`。

## P1 修复（2026-11-20）

| 文件 | 说明 |
|---|---|
| `t504_p1_fix_record.md` | 两项修复的做法、静态检查、真机冒烟结果，含 `readUtf8String(MAX_TEXT)` 在本机 frida 上抛异常的实测记录（需评审确认替代写法） |
| `t504_p1_smoke_hits.jsonl` | 修复后的 2 会话冒烟原始命中（已脱敏） |
| `t504_p1_logcat_extract.txt` | 冒烟期间的唤醒/final/TTS 行（已脱敏） |


## 复现

```bash
# 0) 设备侧：启动 frida-server（16.7.19）并转发
adb shell su -c 'nohup /data/local/tmp/fs32 -l 0.0.0.0:27042 > /data/local/tmp/t504_fs.log 2>&1 &'
adb forward tcp:27042 tcp:27042

# 1) 宿主：加载探针（时长自定，到点自动 detach）
python t504_host_runner.py t504_asr_text_probe.js 16112 60 out.jsonl

# 2) 播放测试语音（电脑 MediaPlayer，仅播放与打点）
powershell -STA -File <repo>/_analysis/t502_play.ps1 \
  -Plan "audio/唤醒词.m4a:3500,audio/现在几点了.m4a:6000" -Volume 1.0 -LogFile play.log

# 3) 设备侧同时抓 logcat（可选，用于交叉验证与延迟统计）
adb shell su -c 'sh /data/local/tmp/t503/cap_start.sh T504X'   # 该脚本来自 T5-03
adb shell su -c 'sh /data/local/tmp/t503/cap_stop.sh  T504X'
```

期望现象：`out.jsonl` 中出现成对的 `partial`（is_finished=0）与末尾一条 `final`（is_finished=1），
文本为"天猫精灵 + 指令"整句；同一会话的 `sessionId` 一致。

## 注意

- 探针只读，但**必须**在 `offset_match=true` 时才 attach；设备 SO 版本变化会直接拒绝 Hook 并报 `hook`/`hook_error`。
- 只记录测试者提供的测试语句；不要用于长期监听他人语音。
- 测试完成后 detach（运行器到时会自动 detach），不要配置为开机自启。
