# 原厂 ASR 独立化调查（T7-07，只读）

本轮任务分四块：**A 原厂 ASR 组件独立化调查（只读）**、**B 保护现有路由链路（不改）**、
**C 修复死信 JSON 格式**、**D 连续对话现状调查（只读）**。

## 目录

| 文件 | 内容 |
|---|---|
| `README.md` | 本文件：范围、约束、结论摘要 |
| `01_components.md` | **组件清单**：APK / odex / vdex / SO / 模型 / 资源 / 配置，含大小、sha256 前缀、是否常驻 |
| `02_callchain.md` | **调用链**：唤醒 → 采音 → VAD → ASR（本地/云端两路）→ `onStream` → NLU → TTS，逐段给出证据 |
| `03_feasibility.md` | **独立化可行性**：6 个判断题 + 三种落地方案（直接调用 / 保留原厂 ASR 服务 / 保留最小会话入口） |
| `04_continuity.md` | **连续对话依赖分析**：WAIT_NEXT 到底卡在哪一层 |
| `05_dead_letter_fix.md` | **死信 JSON 修复**：缺陷、修法、测试与实测输出 |
| `REPORT_t7_07.md` | 本轮最终报告：8 条验收问答 + 证据索引 + 提交 SHA |
| `asr_inventory.sh` | 设备侧只读盘点脚本（本轮用它取全部清单，可重复执行，不改任何状态） |

证据原始文件在 `../evidence/`：

| 证据 | 文件 |
|---|---|
| 原厂原生库全量清单（含大小） | `t7_07_libs.txt` |
| 6 个关键库的 `DT_NEEDED` / `SONAME` | `t7_07_dtneeded.txt` |
| 反混淆后的符号表（ASR 管理器 / 引擎适配器 / 会话层 / 本地引擎） | `t7_07_symbols_asr.txt` |
| 云端端点与配置键命中 | `t7_07_strings_hits.txt` |
| 原厂运行配置里的 ASR/VAD/唤醒键值 | `t7_07_runtime_xml_asr.txt` |
| Java 层 ASR 类清单（从 vdex 提取） | `t7_07_vdex_java_asr.txt` |
| 死信修复的主机测试日志 | `t7_06r2_host_test.log` |

## 安全边界（本轮实际遵守情况）

| 约束 | 本轮做法 |
|---|---|
| 不改变设备运行状态 | 全程只读；`:core` 仍是 8342，ASR supervisor 仍是 279，守卫 supervisor 仍是 4685（收工前复查） |
| 不停止 / 重启 `:core` | 未执行 |
| 不杀 Supervisor | 未执行 |
| 不卸载 Hook / TTS Guard | 未执行 |
| 不改原厂配置（runtime.xml / dialog.cfg / KWS / ASR 参数） | 只 `cat` 读过 runtime.xml，未写 |
| 不做新的设备端 Hook 实验 | 未执行 |
| 不做独立 ASR 调用实验 | 未执行（`startFullDuplexDialog`、`startTalk`、`LocalASRManager::start` 一个都没调） |
| 不提交密钥 | 未提交；本轮没有新增任何 key 文件 |
| 不改 system_debloat | 未动 |
| 不做 reset / force push | 未做 |

设备侧临时落地物：盘点脚本 `asr_inventory.sh` 与三个一次性小脚本，**收工前已全部删除**
（脚本本体留在本目录，需要复跑直接 push 即可）。

## 结论摘要（一句话版）

1. 原厂 ASR 是**两条通道**：云端流式（`wss://asr-aicloud.alibaba.com:443`）与本地引擎
   （`libaceAsr.so` 里的 `AILabs::TGLEngine`，配套 `libmodel.bin.so` / `libconfigure.bin.so` /
   `assets/asr_bg.zip` / `assets/fuzzylexicon.bin`）。两条通道的文本**汇聚在同一个回调**
   `AliAiLabs::AGUI::SessionManager::onStream`，这正是 T6 Hook 的位置 —— 所以我们的链路天然与
   "本地还是云端"无关。
2. 当前设备上常驻的是**云端通道的全部支撑库**（websockets / ssl / crypto / gcs / httpdns），
   本地引擎三件套（`libaceAsr.so`、`libmodel.bin.so`、`libconfigure.bin.so`）**在 `:core` 里
   一条映射都没有** —— 说明它们要么按需加载、要么当前没被使用。
3. ASR **不需要** 原厂 NLU/CDM 才能产出 Final：Final 在 `onStream` 之前就已经定型，NLU 是它的
   下游（`onNlpResult`）。但**连续对话（免唤醒续听）需要** 原厂会话层：`duplexDialogRenew` 是
   服务端下发的开关，本地改不了。
4. 死信 JSON 已改为严格 JSON Lines，46 条单元断言 + 87 条解析器断言 + 两组真实 worker
   端到端（写成功推进 / 写失败不推进）全部通过。
