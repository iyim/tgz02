# T7-09 原厂 ASR 有效语音窗口观测（只读）

> 约束：只读观察。没有改设备状态、没重启 `:core`、没碰 Hook/Guard/Bridge、没调用任何原厂接口、
> 没有独立加载 ASR 引擎。采样器 `asr_watch2.sh` 只读 `/proc`，只写自己的日志文件。

## 1. 工具与实测标定（先说清楚"能不能做到 100 ms"）

先按要求验证设备 shell 的小数秒 `sleep`：

| 测试 | 结果 |
|---|---|
| `sleep 0.1` ×10 | ≈1.5–2.0 s（单次约 150–200 ms） |
| `sleep 0.02 / 0.05` ×10 | ≈1 s（单次约 100 ms，已接近下限） |
| `grep -c` 扫 `/proc/<core>/maps`（211 KB，2690 行） | ≈77 ms |
| `pidof <pkg>:core` | ≈56 ms |
| 两次 `/proc/net/tcp{,6}` grep | ≈68 ms |

结论：**"100 ms 等间隔采样"在这台机器上做不到**——光一次 maps 扫描加一次 sleep 就 230 ms。
所以 `asr_watch2.sh` 采取"一次 `cat maps` + shell 内 5 次模式匹配（少起进程）+ 443 每 5 轮更新一次"
的折中，并在日志尾部自己写 `# rate` 行报告实测周期，不靠人估。

**实测周期：min 320 ms / avg 400–440 ms / max 450 ms（≈2.4–2.7 Hz）**，是旧版 1 Hz 的 2.5 倍以上。

采样列：`uptime_ms(毫秒) core_pid libaceAsr libmodel.bin libconfigure.bin libunet libvad_api 443_estab stale`

## 2. 窗口 A（2026-11-22 16:52:57 起，已结束）

| 项 | 观测值 |
|---|---|
| 采样条数 | **365**（跨度 156.85 s，平均 430 ms/点；实测 `min 310 / avg 430 / max 830 ms`） |
| `:core` pid | 8342（365 条全一致 → 期间没有重启） |
| `libaceAsr` / `libmodel.bin` / `libconfigure.bin` / `libunet` | **0/365**（整个窗口都没出现映射） |
| `libvad_api` | 恒为 1（采样链路有效，不是读不到） |
| 443 ESTABLISHED | 3 ~ 10 波动（空闲态本来就有，**不能**作为 ASR 证据） |
| 同期 logcat | 110 007 行；`onWakeupCallback` / `onListenStarted` / `onStartTalk` / `onStopTalk` / `onStream` **合计 0 条** |

原始数据：`../evidence/t7_09_channel_watch.log`（含 `# rate` 行与判定说明）。

## 3. 本轮判定

> **本轮观测无效：窗口内没有发生任何语音交互。**

按任务要求，这种情况下不允许推出任何通道结论。特别声明：

- **不得**因为"没采到 `libaceAsr`"就说"走的是云端"——采样周期 400 ms 仍可能漏掉瞬时加载；
- **不得**因为"443 连接有 6~10 条"就说"走了云端 ASR"——空闲态本来就有这些连接（心跳/技能/上报）；
- 本轮**没有** `isOffline` 证据（Hook 事件无该字段，本轮禁止改 Hook）。

## 4. 下次窗口的操作步骤（照做即可给出结论）

1. 设备侧启动采样（只读）：
   ```sh
   adb push asr_watch2.sh /data/local/tmp/t7/
   adb shell su -c 'sh /data/local/tmp/t7/asr_watch2.sh 3000 100 &'
   adb shell su -c 'logcat -v threadtime -f /data/local/tmp/t7/asr_watch2.logcat &'
   ```
2. **在采样运行期间**，对设备连续说 3 条指令：两条本地指令（如"现在几点""音量调到 5"）+
   一条普通聊天（如"给我讲个笑话"）；
3. 结束后（或 `touch asr_watch2.stop` 提前停）拉取：
   `asr_watch2.log`（采样）、`asr_watch2.logcat`（语音时间轴）、
   `work/events.jsonl` 新增行（识别文本与时间）；
4. 用 logcat 的 `onStartTalk ~ onStopTalk` 圈出每一条语音的时间窗，再回看同时间窗的采样行。

## 5. 判定口径（B3，逐条写死）

| 观测现象 | 能得出的结论 | 不能得出的结论 |
|---|---|---|
| 识别窗口内 `libaceAsr` 由 0 变 1 | **本地引擎参与了这一轮** | 不能推出"最终文本来自本地"（引擎可能只做中间结果/端点判定） |
| 事件里有 `isOffline=true` | 本地离线识别的**直接证据** | — |
| 事件里有 `isOffline=false` | 非离线识别的证据 | — |
| 本地库全程未观察到加载 | **仅**"未观察到" | 不能推出"一定走了云端"（采样率与瞬时加载） |
| 443 连接数上升 | **仅**"有 TLS 流量" | 不能推出"这就是 ASR" |

当前 Hook 事件没有 `is_offline`。本轮禁止改 Hook/部署新 Hook，因此**这条证据缺口保留**，
等批准后再决定是否新增该字段。

## 6. 后续窗口（等用户回来再说）

用户本轮外出、短时间内无法对设备说话，所以按"等有语音再判定"的原则安排了后续窗口：

| 项 | 内容 |
|---|---|
| 窗口 B1（已结束） | 16:56–17:12，**2442 采样**（约 16 分钟），本地引擎三件套仍 0/2442，无语音事件 |
| 窗口 B2（进行中） | 新增 `asr_watch_chain.sh`：把 `asr_watch2.sh` 按 4 × 3000 点分段连续跑（约 80 分钟），每段结束把日志另存为 `asr_watch2.seg<N>.log`，避免"分段重启就把上一段冲掉" |
| logcat | 原来的无界抓取 16 分钟就涨到 92 MB，已改为**带轮转的抓取**（`-r 4096 -n 4`，上限约 16 MB），避免把设备存储写满（当时 `/data` 只剩 386 MB） |
| 数据保留 | 设备上 `/data/local/tmp/t7/asr_watch2.*` 保留到下一轮取用后立即删除 |

> 结论仍然是"等一次真实语音"：只要用户回来说 3 条指令，取 `asr_watch2.seg*.log` +
> logcat 时间轴 + `work/events.jsonl` 就能按 §5 的口径给出归因（或明确写"仍未捕获，继续无效"）。

## 7. T7-10：空闲采样已停止（保留工具与证据）

按 T7-10 的要求，**不再做无语音情况下的长时间空闲采样**。本轮只做了"停机 + 保证据"：

| 项 | 处置 |
|---|---|
| `asr_watch2.sh` / `asr_watch_chain.sh` | **保留**，不再开发新采样脚本 |
| 窗口 A（365 采样） | 保留：`evidence/t7_09_asr_watch2.runA.log` + `evidence/t7_09_channel_watch.log` |
| 窗口 B1（2442 采样） | 保留：设备 `/data/local/tmp/t7/asr_watch2.runB1.log`，本轮已拉回 `evidence/t7_09_asr_watch2.runB1.log` |
| 窗口 B2（chain，seg0） | 17:12 起跑、17:16 停机，只落了一段：`evidence/t7_10_asr_watch2.seg0.log`（**不判定**） |
| 采样进程 | 已停（`ps` 里 `asr_watch` 计数 0），logcat 抓取也已停 |
| 归因 | **本轮不做 ASR 通道归因**（无语音窗口本来就无法归因） |
| 下一步 | 等用户能在设备旁边，做**一次集中真实语音观测**（2 条本地指令 + 1 条普通聊天），再按 §5 口径判定 |

> B2 只跑了约 4 分钟就被停机，段内同样没有任何语音事件。按"未观察 ≠ 未发生"的口径，
> 这段数据只作为"工具能连续跑"的存在性证据，不进任何归因结论。
