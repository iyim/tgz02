# T7-01 多轮对话与上下文管理 报告

- 设备：TG-Z02 / CCH `AILABS_S1L` / Android 8.1（SDK 27）/ ARM32 `armeabi-v7a` / `192.168.1.9:5555`
- 分支：`main`（直接提交，无调查/设计前置）
- 复用（未改一行）：T5-06D Native AI Worker 骨架、原厂 ASR 最终文本事件、事件读取/ACK/消费机制、
  原厂 TTS 队列与执行器、T6 的 Injector / Hook Agent / Supervisor
- 交付结论：**用户连续说三句话，AI 用前两轮上下文回答第三句；Worker 重启后历史恢复**。
  真机 `evidence/t7_01_device.log`：**103 ASSERT OK / 0 FAIL**（含真实语音三连 + 重启）
  主机 `evidence/t7_01_host_unit_test.log`：**139 ASSERT OK / 0 FAIL**

---

## 1. 本次改动

| 文件 | 类型 | 说明 |
|---|---|---|
| `android/conv_context.h` / `.c` | 新增 | 对话上下文模块（保存/淘汰/原子落盘/损坏恢复/拼 messages） |
| `android/worker_conf.h` / `.c` | 新增 | `worker.conf` 配置模块（key=value，含原子写） |
| `android/conf/worker.conf.example` | 新增 | 配置示例：只有 key 的路径，没有 key |
| `android/provider.h` / `provider.c` | 改 | `t6b_provider_ops` 增加 `complete_msgs`；新增 `t6b_provider_complete_msgs()` |
| `android/deepseek_provider.h` / `.c` | 改 | `temperature` 可配置；新增 `t6b_ds_build_body_msgs()`；把"发请求+解析"抽成 `ds_exchange()`，单句与多轮共用同一段 HTTP 代码 |
| `android/mock_provider.c` | 改 | 也走 messages 入口，并记录收到的条数（主机/设备测试可核对"历史确实被带上"） |
| `android/ai_worker.h` / `.c` | 改 | 上下文接入主循环、`--conf` 与 T7 参数、`context.clear` 请求文件、状态字段 |
| `android/worker_status.h` / `.c` | 改 | 状态文件新增 `context{enabled,max_messages,messages,turns,load_state,saves,save_errors,evicted,file}` |
| `android/run_ai_worker.sh` | 改 | 自动 `--conf` / `--tts-queue-dir`；新增 `context`、`clear-context` 动作 |
| `android/build.ps1`、`tests/run_host_tests.ps1` | 改 | 源文件列表加入两个新模块 |
| `tests/t7_conv_context_unit_test.c` | 新增 | 主机单测（139 断言） |
| `tests/run_t7_host_tests.ps1` | 新增 | 主机测试入口（只跑 T7 增量） |
| `tests/t7_01_context_device.ps1` | 新增 | 真机增量验收（P0 部署 / P1 合成 / P2 真实语音 / P3 重启 / P4 凭据卫生） |
| `evidence/t7_01_*` | 新增 | 构建日志、主机单测、真机日志、三连对话说明、上下文/状态快照、TTS 日志片段 |

未改动：`boot.img`、`system`、`vendor`、原厂 APK、Injector、Hook Agent、Supervisor、Magisk 模块。

---

## 2. 上下文模块（`conv_context`）

接口（任务书 §6 要求的那组，命名沿用现有风格）：

```c
void cv_defaults(cv_cfg *c);
int  cv_init(cv_ctx *ctx, const cv_cfg *cfg);          /* 装载 + 损坏恢复 */
int  cv_add_user(cv_ctx *ctx, const char *text);
int  cv_add_assistant(cv_ctx *ctx, const char *text);
int  cv_commit_turn(cv_ctx *ctx, const char *u, const char *a);  /* 一轮成对提交 */
int  cv_clear(cv_ctx *ctx);                            /* 清空（内存 + 文件） */
int  cv_build_messages(cv_ctx *ctx, const char *current, char *out, size_t cap, ...);
int  cv_save(cv_ctx *ctx, char *err, size_t errlen);   /* tmp + fsync + rename */
```

关键行为：

1. **只成对保存**：user/assistant 按轮次写入，`cv_commit_turn()` 两条一起成功才落盘；
   任一条非法则整轮回滚（`while (count > before) count--`），不会留半轮。
2. **提交时机**：只有"Provider OK + 回答非空 + 回答已入 TTS 队列 + 消费偏移已持久化"之后才提交，
   见 `ai_worker.c::provider_attempt()`。放在偏移之后是为了避免"提交失败→重试同一事件→同轮写两次"。
3. **淘汰按完整轮次**：超上限时从最早的一对 `user+assistant` 开始丢；头部若是孤立 assistant（异常残留）
   先清掉。`max_messages` 强制为偶数（`cv_effective_max()`），所以永远不会只剩 assistant。
4. **上限**：`CV_MAX_MESSAGES_HARD=64`（内存）/ `CV_MAX_MESSAGES_CAP=48`（配置），默认 12 = 6 轮。
5. **messages 拼装**：历史按时间顺序 + 本轮 user，输出 OpenAI 兼容数组；单条消息**从不截断**，
   缓冲区放不下时从最早的轮次少发（计数 `size_dropped`），当前这句永远保留。
6. **持久化**：`context.json`，`tmp + fsync + rename + fsync(dir)`，权限 0600。
7. **损坏恢复**：空文件/超长/非法 JSON/非法角色/非法 UTF-8 → 留档 `context.json.corrupt`，
   历史清空，`last_load_state=RECOVERED`，进程照常启动（实测 P1-8）。
8. **清空能力**：
   - 进程在跑 → `run_ai_worker.sh clear-context` 写 `state_dir/context.clear`，
     Worker 在主循环里就地清空（内存 + 文件）并打印 `context cleared on request`；
   - 进程没跑 → 直接 `ai_worker --clear-context`（拿锁后删文件）。

---

## 3. Provider 配置化

`worker.conf`（key=value，# 注释，坏行忽略）：

```
provider=deepseek
base_url=http://192.168.1.13:8790/v1
model=deepseek-flash
api_key_file=/data/local/tmp/t5_bridge/secret/deepseek_api_key
temperature=0.3
max_tokens=300
context_enabled=1
context_max_messages=6
context_file=/data/local/tmp/t5_bridge/ai_worker/context.json
```

- 优先级：**命令行 > 配置文件 > 编译默认值**；`--conf` 先扫一遍再解析其它参数，写在前在后都生效。
- 缺字段/缺文件：用安全默认值；**显式给错的 `--conf` 才报错退出（码 2）**。
- `temperature` 0.0–2.0、`max_tokens` 1–8192、`context_max_messages` 2–48，越界直接拒绝（不静默截断）。
- **不写 key**：配置里只有 `api_key_file`；出现 `api_key=` 会被拒绝（`wc_apply()` 返回 -2）。
- HTTP 层没有重写：`ds_exchange()` 就是原来的 `ds_complete()` 主体，多轮只是换了请求体构造函数；
  后续加 GPT/通义只需再写一个 `t6b_provider_ops`（含 `complete_msgs`）。

---

## 4. 测试结果（只做 T7 增量，不重跑 T2–T6）

### 4.1 主机单测：139 / 0（`evidence/t7_01_host_unit_test.log`）

覆盖 1 单轮、2 两轮、3 三轮、4 重启恢复、5 超上限淘汰、6 关闭上下文、7 失败不污染、8 文件损坏，
外加：messages 放不下时按轮次少发、配置文件解析/拒绝 key/坏值、`complete_msgs` 转发与老实现兜底、
DeepSeek 请求体（model/temperature/max_tokens/system/messages 全在）、转义往返、缩小上限后装载即淘汰。

### 4.2 真机：103 / 0（`evidence/t7_01_device.log`）

| 段 | 内容 | 结果 |
|---|---|---|
| P0 部署 | 推送并校验 sha256（`94d53417…`）、脚本、配置；key 文件 0600 且只报长度；TTS 执行器在线 | 24 项 OK |
| P1 合成 | 独立沙箱 `/data/local/tmp/t7_01`，Mock Provider，逐条事件 | 35 项 OK |
| P2 真实语音 | 唤醒 → 3 秒 → 指令；三轮连续对话；ASR/模型/TTS 全真 | 26 项 OK |
| P3 重启 | stop → start，`restored_msgs/turns`、状态文件五项 | 12 项 OK |
| P4 凭据 | key 不出现在 worker 日志/状态/上下文/配置；无 Authorization；无 key 形状串 | 6 项 OK |

P1 关键断言（对应用户要求 1–8）：

```
1) single turn sends exactly one message (msgs=1)
2) two turns send 1 then 3 messages
3) three turns send 1,3,5 messages
3) context file holds 3 complete turns (messages=6)
4) restart reports restored_msgs=6 / restored_turns=3 / load=restored
5) after the limit every request sends 5 messages = 4 kept + current
5) the oldest kept message is a user message (no orphan assistant)
6) every request sends exactly one message (got 1,1,1) / no context file is created
7) the second event really failed at the provider / only the successful turn is stored (2 messages)
8) load=recovered / the broken file was kept as context.json.corrupt
```

### 4.3 真机语音三连（`evidence/t7_01_real_voice_conversation.md`）

| 轮次 | 原厂 ASR | AI 回复（本地代理 `deepseek-flash`） |
|---|---|---|
| 1 | 天猫精灵说说东京的景点 | 东京可以逛浅草寺、东京塔、晴空塔、明治神宫…… |
| 2 | 天猫精灵**那里**有什么好吃的 | **东京**好吃的有寿司、拉面、天妇罗……筑地市场的海鲜 |
| 3 | 天猫精灵**推荐个景点** | 推荐**浅草寺**，第一次去**东京**很合适…… |

第 2、3 轮问句都不含"东京"，回复都落在东京；请求规模 `req_msgs = 1,3,5`；
三条回答由原厂 TTS 播完（`outcome=ok`，11.7 s / 11.6 s / 7.8 s）。

---

## 5. 遇到的问题与处理

| 级别 | 现象 | 处理 |
|---|---|---|
| P0 | `--clear-context` 在 Worker 运行时拿不到锁（退出码 3），清不了上下文 | 增加 `context.clear` 请求文件，主循环就地清空；脚本区分"运行中/未运行"两条路径 |
| P0 | 真机读上下文时中文变乱码，JSON 解析失败（只在 stdout 重定向时报错） | 测试脚本入口把 `[Console]::OutputEncoding` 固定为 UTF-8；JSON 解析前裁掉 adb 可能混入的非 JSON 前后缀 |
| P0 | `t6b_ds_build_body` 的 `max_tokens` 是写死的常量，`temperature` 根本发不出去 | 新增 `t6b_ds_build_body_msgs()`，两者都参数化；`T6B_DS_BODY_MAX` 4 KiB → 32 KiB |
| P1 | 系统提示词被按 6 倍转义预留算长度，中文提示词直接判"too long" | `esc_sys` 扩到 2048 并按实际上限校验 |
| P1 | 唤醒词和指令同一段音频时，原厂 ASR 会把"天猫精灵"单独判成一句 | 唤醒与指令分两段、间隔固定 3 秒（与 T5-06D 约定一致），指令片段不含唤醒词 |
| P1 | 指令音频尾部被端点检测截断（"介绍下日本东京"只剩"介绍下"） | 播放计划末尾接 1.2 s 真实静音片段；每轮最多 8 次重试并轮换同义说法 |
| P2 | Mock 的"已提交条数"与"请求条数"都写在 `msgs=` 上，测试无法区分 | 新增独立可观测字段 `req_msgs=<请求条数>` / `history_msgs=<历史条数>` |
| P2 | 测试脚本里 `"$try:"` 被 PowerShell 当驱动器变量 | 全部改成 `${try}` |
| P2 | adb 抛异常时 `$LASTEXITCODE` 残留为 0，脚本误判命令成功 | `AdbRaw` 捕获异常时返回哨兵 `ADB_EXCEPTION` 并置 `$LASTEXITCODE=1` |

---

## 6. 设备当前状态

- `/data/local/tmp/t5_bridge/bin/ai_worker` = `94d53417…`（与 `build.ps1` 产物一致，可复现）
- `/data/local/tmp/t5_bridge/ai_worker/worker.conf`（0600 root）、`context.json`（0600 root，3 轮 6 条）
- Worker 以 `start-deepseek` 常驻（`run_ai_worker.sh status` 可见），消费偏移与 `events.jsonl` 同步
- 原厂 TTS 执行器在线；`/system/etc/init/tg_supervisor.rc`（T6-03）仍托管 Supervisor，未受影响

## 7. 已知限制（记录，不阻断）

1. 上下文只保存文本，**不含**事件 id / 时间戳；清空后不可回溯（审计靠 `events.jsonl` 与 worker 日志）。
2. 历史不做 token 计数，只按消息条数；超长回答靠单条 1023 字节上限兜底，不按 token 预估费用。
3. `context.json` 单写者（Worker 自身）；多个 Worker 同时对同一 `state_dir` 会被 flock 拒绝（既有行为）。
4. Worker 每次启动会截断自己的日志，多轮请求规模需要靠测试脚本或状态文件留痕。
5. 原厂 ASR 是声学的：同一句话可能识别不同、也可能不触发；测试用"关键词重试"而不是模拟事件。
6. 设备 TTS 会被自己的麦克风听到，偶发多出一条无关轮次；不影响成对结构与多轮效果。
7. `context_max_messages` 上限 48 条（24 轮），再大需要同时评估请求体大小与模型上下文窗口。
