# evidence_t503 — T5-03 前置调查（原厂 ASR 本地/云端）证据目录

对应报告：[`../t5_03_original_asr_investigation.md`](../t5_03_original_asr_investigation.md)

## 真机实验（设备：AILABS_S1L，2026-11-20 09:57–10:02 CST）

| 文件 | 说明 |
|---|---|
| `exp_a3_pipeline_events.txt` | 实验 A（联网基线）事件行：本地唤醒 → 会话 → speex/ogg 编码 → websocket 上传 → 服务器下发中间/最终文本 → TTS → 卡片 |
| `exp_b1_pipeline_events.txt` | 实验 B（断外网，保留 LAN/ADB）事件行：唤醒仍正常、会话照常发起、websocket 超时、无任何识别结果 |
| `exp_c1_pipeline_events.txt` | 实验 C（恢复联网）事件行：功能完全恢复 |
| `exp_a_play_log_A3.txt` / `exp_b_play_log_B1.txt` / `exp_c_play_log_C1.txt` | 电脑端播放编排与毫秒打点（`t502_play.ps1` 输出） |
| `exp_a_pcap_flows_A3.txt` | A3 抓包汇总：top flows、逐秒 payload、设备→WAN 合计 |
| `exp_b_pcap_flows_B1.txt` | B1 抓包汇总：**设备→WAN = 0 B** |
| `exp_c_pcap_flows_C1.txt` | C1 抓包汇总：ASR 上行 34,385 B + TTS 下行峰值 |

事件行已脱敏：`uuid` / `logId` / `requestId` / `digest` / recordId 等长十六进制标识替换为 `<redacted>` / `<id>` / `<hexid>`。
完整原始 logcat（2.4/1.7/4.9 MB）与 pcap 轮转片因体积与设备标识原因未入库，保留在本地分析目录 `_analysis/t503/cap_*/`。

## 静态证据（取自仓库内原厂文件，未修改）

| 文件 | 来源 | 说明 |
|---|---|---|
| `static_libsmartbox_asr_symbols.txt` | `app/smartapp/lib/arm/libsmartbox.so` | `AGSpeechEngine` / `CloudASRManager` / `LocalASRManager` / `VadStateMachine` 导出符号（含地址/大小） |
| `static_libagmmi_protocol_symbols.txt` | `libagmmi.so` | `ProtocolBuilder/Parser`、`GcsManager`、`SessionDispatch`、`UtManager`、`OfflineDecision`、`MultiModal*` |
| `static_local_engine_exports.txt` | `libagspeech.so`、`libaceAsr.so`、`libmodel.bin.so`、`libconfigure.bin.so` | 本地引擎导出符号、源码路径字符串、模型内含项、两个 `*.bin.so` 实为 TFLite 容器的说明 |
| `static_local_model_markers.txt` | `libmodel.bin.so` | TFLite 子模型与槽位名（`am_freeze` / `lm_model_vad` / `nlu_pinyin` / `py2char_chn.txt_3000`） |
| `static_protocol_tables.txt` | `libagmmi.so` `.data.rel.ro` | `AliGenie.*` 命名空间、事件/命令名、唤醒类型（含 `localDialog=12`） |
| `static_java_asr_chain.txt` | `smartapp_decompiled/smali*` | `ASRManager` / `AsrSvr` / `ClientManager.clientToAsr` smali 原文 |
| `static_needed_map.txt` | `lib/arm/*.so` | 81 个 native 库的 NEEDED 依赖图（本地引擎无网络依赖、云端通道才引入 websocket/H2/TLS） |

## 脚本

| 文件 | 说明 |
|---|---|
| `scripts/cap_start.sh` / `cap_stop.sh` | 设备侧采集（tcpdump `-G 5` 轮转 + logcat 全 buffer） |
| `scripts/t502_play.ps1` | 电脑端播放编排器（复用 T5-02，只播放与打点） |
| `scripts/analyze2.py` | pcap 聚合分析（纯标准库） |
| `scripts/extract_events.py` | logcat 过滤 + 脱敏 |
| `scripts/read_tables.py` | ELF `.data.rel.ro` 协议常量表读取 |
