# T7-07 本轮最终报告：原厂 ASR 独立化调查（只读）+ 死信 JSON 修复

日期：2026-11-22（设备时间，CST）
基线：`987c948d`（T7-06-R1 里程碑）
设备：TG-Z02 `AILABS_S1L`，Android 8.1 / SDK 27，`armeabi-v7a`，`192.168.1.9:5555`，root（Magisk，SELinux Permissive）

---

## 一、八条验收问答（对应 §八）

### 1. 当前原厂 ASR 的真实组成是什么？

**两条引擎 + 一套组件工厂 + 一套会话/端点裁决**，全部在 `smartapp:core` 进程内：

| 层 | 组件 | 证据 |
|---|---|---|
| 组件装配 | `ALISpeechComponentManager::{init,getVAD,getWakeupEngine,getLocalASR,getCloudASR,releaseLocalASR}`，按 `kSCKey{Ace,Asr,Nlu,Vad,Wakeup,UnconvWakeup}Lib/Res` 装配 | `evidence/t7_07_symbols_asr.txt`、`t7_07_strings_hits.txt` |
| 本地引擎 | `LocalASRManager` → `TGEngineAdapter` → `AILabs::TGLEngine`（`FeedPCM`/`FeedFBank`/`InitBeamSearch`、`BeamSearch::FeedBPE`、FBank/MFCC、`libaceNlu`）+ 模型 `libmodel.bin.so`/`libconfigure.bin.so` + 资源 `asr_bg.zip`/`fuzzylexicon.bin` | 同上 + `t7_07_dtneeded.txt` |
| 云端引擎 | `CloudASRManager::{start,feedCloudASRdata,startEncode,handleCloudASRResult}`，走 `wss://asr-aicloud.alibaba.com:443` | `t7_07_strings_hits.txt` |
| 端点/续听 | `EOUDetector::handleCloudASRResult` → `CloudASRManager::onEouEvent` → `stopListen` | `t7_07_symbols_asr.txt` |
| 结果汇聚 | `AGSpeechEngine` → `SessionManager::onStream(sid,text,isFinished,isOffline,needNlp,…)` | Hook 实测（`0x11353c`） |
| 唤醒 / VAD | `libwakeup_sync_api_S1L_S3` / `libwakeup_bin_S1L_S3`；`libvad_api` / `libvad_bin`（线程 `ali_vad`） | `t7_07_libs.txt` + `/proc` maps |

Java 侧：`com.alibaba.ailabs.genie.assistant.sdk.asr`（`ASRClient`/`ASRManager`/`GenieApi`/`OnASRCommandListener`…，24 类）。
**没有独立 ASR 服务进程、没有 libnls*.so、APK 里没有 classes.dex（代码在 `oat/arm/smartapp.vdex`）。**

### 2. 能否提取 SO 独立调用？

**能，但需要三样东西凑齐**：

1. 库：`libaceAsr.so`（+`libace.so`/`libaceNlu.so`）——`system_file` 0644，SELinux Permissive，root 进程可 `dlopen` 绝对路径；
2. 数据：`libmodel.bin.so`(3.26 MB)、`libconfigure.bin.so`(836 KB)、`assets/asr_bg.zip`、`assets/fuzzylexicon.bin`；
3. **未知量**：`AGSpeechConfig` / `AGLocalASRStartInfo` / `AGEOUConfig` / `AGLocalASRResult` / `AGLocalASRListener`
   的结构布局，以及 `kSCKey*` 的实际取值 —— 无头文件、无符号定义，需要逆向补齐。

所以不是"拿来即用"，但**不存在根本性障碍**（引擎库无网络依赖、无私有内核接口）。

### 3. 是否必须保留原厂 `:core`？

- **只要"识别文本"** → 不必保留，可以自己 dlopen 本地引擎；
- **要"唤醒 + VAD + 云端通道 + 会话裁决"** → 必须保留（这些由 `:core` 的 87 个线程、`runtime.xml`
  参数、服务端 appkey 一起驱动）。

### 4. 是否必须保留原厂会话管理？

- **单轮识别** → 不必；
- **免唤醒续听（连续对话）** → **必须**。因为续期开关 `duplexDialogRenew` 是 `StopTalk` 上报后由
  服务端下发的（现场值 `0`），本地没有合法入口自己打开。

### 5. 是否可以保留原厂 ASR、替换原厂 NLU/CDM？

**可以，而且现在就是这么做的**：T6 Hook 钉在 `SessionManager::onStream` —— ASR 之后、NLU 之前。
`onStream` 的第三个/第四个参数 `isFinished` / `isOffline` 说明这一层已经拿到"最终文本 + 是否离线结果"，
NLU 是它的下游（`onNlpResult` / `onPushResult`）。我们正是靠这一点把"本地指令放行原厂 + AI 指令走 Worker"落地。

### 6. 连续对话目前究竟卡在哪一层？

**卡在原厂会话续期层，不在 Worker、不在 TTS Guard。**
现场日志：`onStartTalk(1969141)` → 6.2 s 后 `onStopTalk(reason=normal)`，上报里 `duplexDialogRenew: 0`；
`EOUDetector` 一判停就 `stopListen`。Worker 的 `WAIT_NEXT` 只是内部状态机 + 12 s 期望值，无法把麦克风叫回来。
详见 `04_continuity.md`。

### 7. 死信 JSON 是否通过标准解析器测试？

**通过。**
- C 单元断言 **46 条**（转义 / 控制字符 / 非 ASCII / 非法 UTF-8 / 结构注入 / 缓冲区不足 / 追加写 / 半行修复 / 失败返回）；
- Python `json.loads` **68 项**（仅样例）/ **87 项**（含端到端）逐行解析，字段名与取值 round-trip；
- 反向证据：旧的"引号换单引号"行被同一个解析器判为非法（`PASS regression`）；
- 端到端：真实 `ai_worker`（Mock 恒失败）写出 3 条合法死信且偏移继续前进；死信文件不可写时
  `processed_total=0`、`pending_event_id` 保持、`provider_retries>0`。

### 8. 当前本地指令 / AI 指令分流链路是否完全未受影响？

**未受影响。** 本轮代码改动只有两处业务文件：

| 文件 | 改动 | 是否影响分流 |
|---|---|---|
| `android/dead_letter.c` / `.h`（新增） | 死信 JSON 序列化 + 追加写 | 否（只在"已经决定跳过某条事件"时被调用） |
| `android/ai_worker.c` | `dead_letter_event()` 改为调用上面两个函数；加 include | 否（分流/放行/守卫/TTS 一行未动） |
| `android/worker_status.c` | `counters` 里多输出一个 `dead_letters` 计数 | 否（只读展示） |
| `android/build.ps1` / `build_t7_05.ps1` / `tests/run_host_tests.ps1` | 源码清单加 `dead_letter.c` | 否（编译期） |

设备侧：**没有部署新二进制、没有重启任何进程、没有卸载任何 Hook**。收工核对：
`:core` 仍 8342、ASR supervisor 仍 279、守卫 supervisor 仍 4685、`/data/local/tmp/t7` 的 79 个脚本数量不变。

---

## 二、任务 A 交付

| 文档 | 内容 |
|---|---|
| `asr_independent/01_components.md` | APK/odex/vdex/SO/模型/资源/配置全量清单（含大小、sha256 前缀、是否常驻） |
| `asr_independent/02_callchain.md` | 唤醒→采音→VAD→ASR（双通道）→`onStream`→NLU→TTS 全链路，逐段标证据 |
| `asr_independent/03_feasibility.md` | 6 个判断题 + 三种方案（直接调用 / 保留原厂服务 / 保留最小会话入口）+ 工作量与风险 |
| `asr_independent/04_continuity.md` | 连续对话 6 问（WAIT_NEXT 边界、停录、12 s 等待、合法入口、引擎级 vs 会话级、打断能力） |
| `asr_independent/asr_inventory.sh` | 设备只读盘点脚本（本轮取证用，可复跑） |

### 本轮新增的硬证据

| 证据 | 说明 |
|---|---|
| `evidence/t7_07_libs.txt` | 68 个原生库全量清单 |
| `evidence/t7_07_dtneeded.txt` | 关键库依赖：`libaceAsr` 无网络依赖；`libsmartbox` 带 curl/websockets/ssl |
| `evidence/t7_07_symbols_asr.txt` | 反混淆符号：`LocalASRManager` / `CloudASRManager` / `EOUDetector` / `TGEngineAdapter` / `TGLEngine` |
| `evidence/t7_07_strings_hits.txt` | `wss://asr-aicloud.alibaba.com:443`、`setOralAppkey`、14 个 `kSCKey*` |
| `evidence/t7_07_runtime_xml_asr.txt` | `localASR=true` 与 `asrOnGW=true` 并存，两套 VAD/判停参数 |
| `evidence/t7_07_vdex_java_asr.txt` | Java 层 24 个 ASR 类 |

### 一个需要下一轮钉死的点

`:core`（空闲态）里 **`libaceAsr.so` / `libmodel.bin.so` / `libconfigure.bin.so` 零映射**，
而云端通道支撑库（websockets/ssl/crypto/gcs/httpdns）全部常驻。这**强烈提示**当前走云端识别，
但"某次 Final 到底由谁产生"还需要一次"说话前后 maps/netstat 对照"的只读观测（`03_feasibility.md` §3 给了命令）。
本轮按约束没有做这类运行时观测。

---

## 三、任务 B：保护现有链路（自证）

| 组件 | 本轮是否触碰 |
|---|---|
| `libtg_hook.so`（T6 Hook） | 未改、未重装、未卸载 |
| `tgb_bridge` | 未改、未重启 |
| `ai_worker`（设备上那份） | 未替换（新二进制只在主机侧构建验证） |
| `libtg_ttsguard.so` | 未改、未 reload |
| `tts_exec.dex` | 未改 |
| 本地指令路由 / AI 路由 / 放行标记 / 拦截策略 | 未改 |
| `runtime.xml` / `dialog.cfg` / KWS 参数 / ASR 参数 | 只读 `cat` |
| Supervisor / init.rc | 未改、未杀 |
| `system_debloat` | 未动 |

---

## 四、任务 C：死信 JSON 修复

见 `05_dead_letter_fix.md`。摘要：

- 缺陷：`dead_letter_event()` 把整行所有 `"` 换成 `'`，连结构引号一起压掉 → 不是合法 JSON；
- 修复：拆出 `dead_letter.c/.h`，严格转义（含非法 UTF-8 处理）、单次 `write` + `fsync`、失败 `ftruncate` 回滚、
  追加前修半行；`ai_worker` 保持"写 → fsync → 提交 offset"顺序；
- 测试：`tests/t7_06r2_dead_letter_unit_test.c`（46 断言）、`tests/t7_06r2_dead_letter_json_test.py`（87 项）、
  `tests/run_t7_06r2_host_tests.ps1`（单元 + 解析器 + 端到端 A/B），日志 `evidence/t7_06r2_host_test.log`；
- 编译：主机 TDM-GCC 与设备 NDK（armv7a/API26）均 0 warning 0 error；
- 新增（不影响行为）：状态文件 `counters.dead_letters`。

---

## 五、任务 D：连续对话

见 `04_continuity.md`。一句话：**卡在原厂会话续期**（`duplexDialogRenew` 服务端开关 + EOU 停录），
不在 Worker；Guard 不负责打断（打断在 TTS 队列 + 原厂唤醒路径）。

---

## 六、已知问题 / 遗留（不隐藏）

1. **死信里的 `seq` 字段语义**：来自暂存门槽位，可能对应"下一句"或为 0（端到端实测 `2/3/0`）。
   既有行为，本轮不改；关联死信请用 `event_id`。
2. **`worker_unit_test.exe` 有 1 条既有失败**（`deepseek/request body escaping`，620 通过 / 1 失败）：
   该断言把 `T6B_DS_SYSTEM_PROMPT` 原文塞进期望串（未转义换行），而 `t6b_ds_build_body()` 输出的是
   `\n` 转义形式，两者天然不可能相等。已用"只链接 `deepseek_provider.c + worker_util.c`"的独立程序复现，
   与本轮改动无关。属测试断言陈旧，按"只修死信这一处缺陷、不做顺手重构"的要求本轮未动 —— 要不要修请拍板。
3. **新 `ai_worker` 未部署**：设备上仍是 T7-06-R1 的 `32fc28001910…`，死信格式修复要等下一个部署窗口。
4. **本地/云端最终归属**未做运行时观测（见 §二末尾）。
5. `T7B_ROUTE_SLACK_MS=8000` 的窗口在守卫放行里作用仍偏"宽"（靠"有没有发标记"收敛），未在本轮评估。

---

## 七、下一轮建议（按风险从低到高）

| # | 建议 | 风险 | 收益 |
|---|---|---|---|
| 1 | 部署本轮修好的 `ai_worker`（含 `dead_letters` 计数），跑一轮真机回归 | 低（回滚脚本齐备） | 死信可解析，排障不再丢证据 |
| 2 | 只读探针：说话前后抓 `maps` + `/proc/net/tcp6` + `logcat -s AliAiLabs:V tgl:V` | 极低（纯观测） | 一次钉死"当前是本地还是云端 Final" |
| 3 | 在 `onStartTalk`/`onStopTalk`/`onEouEvent` 加只读观测点，画清"谁在什么时候关麦" | 低（只观测） | 为方案 C（最小会话入口）铺路 |
| 4 | 逆向 `AGSpeechConfig` / `AGLocalASRStartInfo` 布局，试 `ALISpeechComponentManager` 装配本地引擎 | 中（新实验、可能崩 `:core`） | 真正离线 ASR + 自持会话（方案 A/C 的 4.2 变体） |
| 5 | 尝试驱动 `duplexDialogRenew` 或自持引擎级会话实现免唤醒续听 | 高 | 连续对话 |

---

## 八、提交

本轮提交（先代码+文档，再补 SHA）：见下一条提交 `docs(ai-bridge): record T7-07 commit SHA`。
所有新增文件都在 `my-doc/07_ai_bridge/` 下，未建分支、未开 PR、未做任何历史重写。
