# android/ — AI Worker（T5-06B 消费骨架 + T5-06C 真实 DeepSeek Provider）

一个**独立动态链接的 ARM32 进程**，只读消费桥接端落盘的 `events.jsonl`，把 ASR 最终文本交给
Provider（`mock` 或 `deepseek`），成功后才提交消费偏移。

## 为什么必须动态链接

T5-06A 真机实测：全静态二进制里 `libdl.a` 只是桩（`libdl.a is a stub --- use libdl.so instead`），
`dlopen("libcurl.so")` 无法工作。所以本进程固定 `-fPIE -pie`，`NEEDED libc.so / libdl.so`，
HTTPS 走 **运行时 dlopen 的 Android 系统 libcurl**（7.52.0-DEV），不静态打包 libcurl/libssl/libcrypto。

## 构建（NDK r21e，API 26）

```powershell
powershell -ExecutionPolicy Bypass -File build.ps1
# T5-06C 证据用：
powershell -ExecutionPolicy Bypass -File build.ps1 -LogName t5_06c_ndk_build.log
```

产物：`out/ai_worker`、`out/worker_unit_test`（均为 `ELF32 / ARM / DYN`；零警告）。

## 运行（设备）

```sh
# 1) 放 key（只放文件，绝不进命令行/日志）：默认路径
#    /data/local/tmp/t5_bridge/secret/deepseek_api_key   权限 0600
sh run_ai_worker.sh key                  # 只报告存在性与权限，不打印内容

# 2) Mock（默认，零网络，回归测试用）
sh run_ai_worker.sh start

# 3) 真实 DeepSeek（模型/base url 可用环境变量覆盖）
DEEPSEEK_MODEL=deepseek-chat sh run_ai_worker.sh start-deepseek

# 4) 直接调用二进制（全部选项）
/data/local/tmp/t5_bridge/bin/ai_worker \
    --work-dir /data/local/tmp/t5_bridge/work \
    --state-dir /data/local/tmp/t5_ai_worker_state \
    --provider deepseek \
    --api-key-file /data/local/tmp/t5_bridge/secret/deepseek_api_key \
    --deepseek-model deepseek-chat \
    --deepseek-base-url https://api.deepseek.com \
    --deepseek-connect-timeout-ms 5000 \
    --deepseek-timeout-ms 30000 \
    --reply-log /data/local/tmp/t5_ai_worker_state/replies.jsonl \
    --idle-exit-ms 60000
```

## Provider 语义（两条都不许破）

- **成功才提交**：Provider 返回 OK 才推进 offset / 写 `recent_ids` / 计成功数；
  失败（含 401/429/5xx/超时/DNS/证书）只计数并退避重试，offset 不动，后续事件不许越过它。
- **落盘失败即停**：消费进度写不进去就停止读下一条（退出码 5）。

## 隐私边界

| 位置 | 允许 | 禁止 |
|---|---|---|
| stdout 日志 | provider/model/http/curl/latency/reply_bytes/错误类别 | API Key、Authorization 头、请求体、回答正文 |
| `ai_worker_status.json` | 同上（数字与短枚举） | 同上 |
| `consumer_state.json` | offset/指纹/计数 | 任何文本 |
| `replies.jsonl`（可选，`--reply-log`） | 回答正文（设备本地 0600） | API Key |

key 只在 Provider 内存里（`t6b_ds.api_key`），`fini` 时清零；文件读取拒绝符号链接，并报告实际权限位。

## 退出码

`0` 正常 · `2` 参数错误 · `3` 已有实例 · `4` 初始化失败（含 key 缺失、libcurl 不可用）·
`5` 消费进度无法落盘 · `6` 文件身份（前缀指纹）无法核对或推进

## 原厂 TTS 执行器（T5-06D）

`tts_exec/TtsExec.java` 编译成 `tts_exec.dex`，用 `app_process` 独立运行（不装 APK、不改 system）。

- 入口：`ContentProviderClient.query(content://com.alibaba.ailabs.genie.assistant.provider/GenieApi, selection={"method":4,...})`
- 状态：按 `tts_id` 过滤原厂日志 `status = play|complete|interupt`（行内不含回答正文）
- 队列：`queue/ → inflight/ → done/`，`journal.jsonl` 只记 id/字节数/时间/结果
- 停止：`control/stop` 或 `run_tts_exec.sh stop-now` → provider `method=5`
- 不碰 AudioManager，原厂音量控制保持

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File build_tts_exec.ps1   # -> tts_exec.dex
adb push tts_exec.dex /data/local/tmp/t5_bridge/tts_exec.dex
adb push run_tts_exec.sh /data/local/tmp/t5_bridge/run_tts_exec.sh
adb shell "sh /data/local/tmp/t5_bridge/run_tts_exec.sh start"
adb shell "sh /data/local/tmp/t5_bridge/run_tts_exec.sh status"
```

Worker 侧只需加 `--tts-queue-dir /data/local/tmp/t5_bridge/tts`，回答会按 `event_id` 幂等入队。
详见 `../t5_06d_factory_tts_report.md`。

## 多轮上下文与配置化（T7-01）

上下文是一个独立模块（`conv_context.c`），不塞进主循环；配置是 `worker.conf`（key=value）。

```
# /data/local/tmp/t5_bridge/ai_worker/worker.conf   0600 root，只放 key 的路径
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

- 优先级：命令行 > `worker.conf` > 编译默认值；`context_enabled` 默认 0（= T5-06C 行为）。
- `context_max_messages` 只按**完整轮次**淘汰（强制偶数，2–48），永远不会只剩 assistant。
- 只有"模型成功 + 回答非空 + 已入 TTS 队列 + 偏移已落盘"之后才提交这一轮；失败/空回复不进历史。
- `context.json` 写盘是 `tmp + fsync + rename + fsync(dir)`，权限 0600；文件损坏会留档
  `context.json.corrupt` 并清空历史继续跑（不影响启动）。
- 状态文件新增：`context{enabled,max_messages,messages,turns,load_state,saves,save_errors,evicted,file}`；
  每轮日志会打 `provider reply: … req_msgs=<请求条数> history_msgs=<历史条数>`。

```powershell
# 构建与部署（NDK r21e，产物同时包含 worker_unit_test）
powershell -ExecutionPolicy Bypass -File build.ps1 -LogName t7_01_ndk_build.log
adb push out/ai_worker /data/local/tmp/t7_ai_worker
adb shell "su -c 'cp /data/local/tmp/t7_ai_worker /data/local/tmp/t5_bridge/bin/ai_worker'"
adb push conf/worker.conf.example /data/local/tmp/t7_worker.conf
adb shell "su -c 'cp /data/local/tmp/t7_worker.conf /data/local/tmp/t5_bridge/ai_worker/worker.conf'"
```

设备端控制（`run_ai_worker.sh`）：

```sh
sh run_ai_worker.sh start-deepseek     # 有 worker.conf 就自动 --conf，有 tts 目录就自动 --tts-queue-dir
sh run_ai_worker.sh context            # 只读查看上下文（对话正文，不含 key）
sh run_ai_worker.sh clear-context      # 运行中写 context.clear 请 Worker 就地清空；未运行则直接删文件
```

新增命令行开关：`--conf PATH`、`--temperature X`、`--max-tokens N`、`--base-url U`、`--model M`、
`--context 0|1`、`--context-max-messages N`、`--context-file PATH`、`--clear-context`。

两个新模块都进主机测试：`tests/run_t7_host_tests.ps1`（139 断言），
真机验收：`tests/t7_01_context_device.ps1`。详见 `../t7_01_multi_turn_context_report.md`。

## 原厂回答屏蔽与回声隔离（T7-02）

原厂回答与我们的回答在 native 层汇合于 `AliAiLabs::AGUI::TtsManager::onTtsStart(int, ITtsClient::TtsResponseInfo const*)`，
但**只有我们的文本**会先经过 `TtsManager::playTts(ITtsClient::_TtsInfo_ const*)`（`GenieTable.query(method=4)` 那条路）。
新增的 `hook_tts/libtg_ttsguard.c` 就装这两个点：

```
playTts（后置）  : 先跑原函数取返回值；调用线程 comm 是 "Binder:" -> 把 (id, text) 记入允许集
onTtsStart（前置）: id/文本命中允许集 -> 原样放行；否则不调用原函数（音频链不建立）并记一行 DROP 日志
```

- 导出与 `libtg_hook.so` 同名同签名的 `tg_hook_*`，所以**不用改 Injector**：
  `tg_injector --so /data/local/tmp/t7/libtg_ttsguard.so`
- 装卸与守护用 `run_ttsguard.sh`（`:core` 会被系统回收、且可能同时存在两个同名进程，脚本枚举全部匹配项）。
- 构建：`build_t7_02.ps1`（`out/libtg_ttsguard.so` + `out/ai_worker`，0 warning）。

回声隔离：TTS 执行器新增 0644 的 `play.public.json`（只放 state/event_id/起止毫秒，不含正文），
Worker 用 `echo_filter.c` 在播报窗口内比对"我播过的文本"，相似则丢弃（`drop_echo`），
不相似则保留并回答（`kept_in_window`）；另有"去唤醒词/语气词后无内容"规则（`--echo-no-command 0` 可关）。

```powershell
powershell -File run_t7_02_host_tests.ps1    # 主机 41 断言
powershell -File t7_02_device.ps1            # 真机 56 断言（P0-P5）
```
## 语音交互体验修复（T7-02-R1 / T7-03）

三件事：统一 system prompt、连续对话（免唤醒续听）调研与入口、ASR 提前结束的判停参数。

**① system prompt（已完成）**

- 默认值在 deepseek_provider.h 的 T6B_DS_SYSTEM_PROMPT_DEFAULT（音箱 AI 角色）；
- 运行时三种覆盖方式：CLI --system-prompt TEXT / --system-prompt-file PATH /
  worker.conf 的 system_prompt=（支持 `\n` 转义）或 system_prompt_file=；
- **固定放在 messages[0]**（conv_context.c 负责），system 不进 ctx->msgs，
  因此不参与按轮次淘汰；放不下时整轮报错，不静默丢弃；
- Provider 侧只在数组里还没有 system 时才补一条（mock / deepseek / 以后的 GPT、通义、自定义兼容接口一致）；
- 每轮日志：equest shape: event=... system=1(role=system,bytes=N) history_msgs=X user_msgs=1 req_msgs=Y（不含正文）。

**② 连续对话（原厂能力受限，已定位入口）**

hook_dialog/libtg_dialog.so 提供只读观测 + 受控调用，un_dialog.sh 是它的控制脚本：

`sh
sh run_dialog.sh install            # 注入（也可交给 run_aux_supervisors.sh 跟随 :core 注入）
sh run_dialog.sh status             # hooked=1 / stats
sh run_dialog.sh snap               # 最近一次唤醒 _WakeUpInfo_ 快照
sh run_dialog.sh talk 7             # GenieApi::startTalk(7, NULL)   —— 实测不建立会话
sh run_dialog.sh talk-saved 7       # 用快照重放                    —— 实测不建立会话
sh run_dialog.sh promptfin          # InputDeviceManager::wakeupPromptFinish()
sh run_dialog.sh cdmnotify 1102     # ContinuousDialogManager::onNotify(0x44e)
sh run_dialog.sh probe              # 依次试输入设备类型 0..8
`

实测结论写在 ../t7_03_voice_ux_report.md §3：startTalk 返回成功但不产生会话
（isTalk=0、无 onListenStarted、无 onStream），CDM 在屏蔽原厂回答后从未被填充；
真正的续听入口是唤醒事件 + 栈上 _WakeUpInfo_，不能安全伪造。

**③ ASR 判停参数（已可配置）**

/data/local/tmp/t6/dialog.cfg：

`
input_type=7
min_vad_pause_ms=900     # setVADPauseTime 的最低值（0 = 只观测）
min_silence_ms=900       # setSilenceTimeout 的最低值
debug=0
`

hook 只在原厂值低于下限时改那一个参数，实测日志：
setVADPauseTime: 700 ms -> 900 ms (config floor)、setSilenceTimeout: 5000 ms (unchanged)；
计数器 ad_clamp / sil_clamp 可在 status 里核对。

**④ T7-02 遗留空窗（已解决）**

un_aux_supervisors.sh start 用 T6-02 Supervisor 已有的 --so 参数，为
libtg_ttsguard.so 与 libtg_dialog.so 各起一个实例；:core 一出现就注入
（实测 elapsed=1573ms，hooked=1），不再依赖 5 s 一次的 watch。

## 本地指令优先路由 / 暂存门 / 会话状态（T7-04）

三个独立模块，全部是纯本地逻辑，不调用任何原厂 Native 私有函数：

- `intent_route.c`：`ir_classify(text, &ir)` 判定音量 / 天气 / 关屏 / 开屏 / 时间。命中后 Worker 只做三件事：
  `route=native`（不请求模型）、写 0644 放行标记 `work/native_route.public.json`、提交偏移（不重复处理）。
  规则 = 每类的 `hit` / `veto` 关键词表，判不准就返回 0 继续走大模型。
- `utterance_gate.c`：final 先握 `debounce_ms`（默认 450 ms）；同 session 按前缀/相似度合并修订；
  跨 session 只在"旧文本以悬空谓词结尾 + 间隔 <= `cross_session_ms`"时拼接；
  `max_hold_ms` 封顶；暂存槽落盘 `state_dir/utterance_hold.json`，重启恢复一次、过期丢弃。
- `conv_session.c`：IDLE / ACTIVE / PROCESSING / SPEAKING / WAIT_NEXT / CLOSED。播报结束
  （`play.public.json` 变 idle）进入 `WAIT_NEXT`，`session_timeout_ms`（默认 12000）后回到 `IDLE`。

开关（优先级 CLI > `worker.conf` > 默认值）：

```ini
route_native=1                     # 0 = 全部走大模型（回退到 T7-03 行为）
route_intents=volume,weather,screen_off,screen_on,time,media,stop
gate=1
gate_debounce_ms=450
gate_max_hold_ms=2500
gate_cross_session=1
gate_cross_session_ms=1200
session=1
session_timeout_ms=12000
```

命令行：`--route-native 0|1`、`--gate 0|1`、`--gate-debounce-ms`、`--gate-max-hold-ms`、
`--gate-cross-session 0|1`、`--gate-cross-session-ms`、`--session 0|1`、`--session-timeout-ms`。

状态文件新增三段（只放计数与短标签，不含用户正文）：

```json
"route":{"enabled":1,"intents":31,"native":1,"ai":7,"volume":0,"weather":0,
         "screen_off":0,"time":0,"screen_on":1,"last":"route=native intent=screen_on ..."},
"gate":{"enabled":1,"debounce_ms":450,"max_hold_ms":2500,"cross_session":1,
        "seen":8,"held":7,"released":7,"merged":0,"cross_merged":1,
        "dropped_dup":0,"restored":0,"last_detail":"cross session merge gap=616ms merges=1"},
"session":{"enabled":1,"timeout_ms":12000,"state":"IDLE","turns":0,"followups":0,
           "opened":0,"closed":1,"detail":"CLOSED->IDLE (back to standby)"}
```

设备生命周期（单一所有者，不再用 5 s watch）：

```
su -c 'sh /data/local/tmp/t7/run_t7_04.sh guard-start'    # 唯一 supervisor（先清重复实例）
su -c 'sh /data/local/tmp/t7/run_t7_04.sh guard-status'
su -c 'sh /data/local/tmp/t7/run_t7_04.sh guard-stop'     # 停 supervisor + 卸载注入
su -c 'sh /data/local/tmp/t7/run_t7_04.sh rollback'       # 再还原 T7-03 的 worker/conf
```

`native_allow`：守卫读 Worker 写的放行标记，`sessionId` 命中或仍在 `exp_ms` 有效期内就放行原厂回答
（日志 `onTtsStart ALLOW ... by=native_session intent=volume`）。这样"原厂基础指令的回答"
与"原厂对普通对话的抢答"在守卫里被区分开，守卫不再是"无条件屏蔽所有原厂回答"。

## 暂存门先于路由 / 放行标记可靠性（T7-05）

顺序变了（这是 T7-05 的核心）：

```
asr_final -> 回声过滤 -> ug_feed()/ug_poll()（修订 + 悬空合并）
        -> 完整 utterance 入 uttq -> uttq_pop_to_pend()：这里才 ir_classify()
        -> 命中 route=native（写放行标记），否则建 pend 走模型
```

好处：ASR 把一句话拆成两条 final 时，不会再用半句话做路由决策；一条完整指令只判定一次。
完整本地指令走"快路"（`ug_fast_ready`），不等 450 ms 窗口；聊天文本仍等满窗口以合并修订。

`route_publish()` 现在返回结果：open/write/fsync/fchmod/rename/chmod+stat/回读校验任一步失败，
重试 3 次后**回退到 AI 回答**（日志 `route=native FALLBACK to ai`），不会出现"两边都没有回答"。

守卫侧的判定抽到 `hook_tts/native_marker.c`（纯逻辑、host 可测）：

| 条件 | 结果 |
|---|---|
| 标记无效 / 缺 `exp_ms` | 不放行 |
| `now > exp_ms` | 不放行 |
| sessionId == 标记 session | 放行（`native_session`） |
| 标记里没有 session | 窗口内放行（`native_window`） |
| session 对不上 | 不放行（`native_miss`）——T7-04 是无条件放行 |

构建与主机测试：

```
powershell -ExecutionPolicy Bypass -File build_t7_05.ps1      # ARM32，0 warning 才算过
powershell -ExecutionPolicy Bypass -File ..\tests\run_t7_05_host_tests.ps1   # 108 断言
```

设备侧生命周期（T7-05 版，回滚基线是 T7-04）：

```
su -c 'sh /data/local/tmp/t7/run_t7_05.sh guard-start'
su -c 'sh /data/local/tmp/t7/run_t7_05.sh guard-status'
su -c 'sh /data/local/tmp/t7/run_t7_05.sh rollback'
```
## 产品 UI 的事件出口（T9-07）

worker 侧新增两个只写、且只对 UI 应用可读的产物（默认关闭，显式 `--ui-events DIR` 才打开）：

| 产物 | 内容 | 权限 |
|---|---|---|
| `<DIR>/events/<12 位序号>.json` | 每条事件：`kind`（`turn` / `submit`）、`session`、`event_id`、`user`（原厂 ASR 原文或 UI 提交的文本）、`reply`（本轮回答）、`route`、`skill` | 目录 `0750 root:<gid>`，文件 `0640 root:<gid>` |
| `<DIR>/status.public.json` | worker / AI / 会话状态的对外子集（不含 key、请求体、消息正文） | 同上 |

- 原子性：tmp + fsync + rename（再 fsync 目录），读侧永远看不到半条记录；
- 序号：从目录里已有的最大序号继续，跨重启单调；上限于 `--ui-events-max-files`（默认 512，按序号淘汰最旧）；
- 文本：按码点截断到 1024 B，被截断时记录 `user_cut` / `reply_cut` = 1；
- 归属：`--ui-events-gid` 取 UI 应用的 gid，设备上其他应用读不到会话内容；chown 失败则整个出口拒绝启动（不降级成世界可读）；
- 语义：只在"回答已入队 + 消费偏移已落盘"之后发布；发布失败只记计数，不推进偏移、不阻塞主循环；
- 关闭时行为与 T8-15.6 一致（既有回归用例不变）。

UI 只读这些文件，不解析 worker 日志：

```
su -c 'sh /data/local/tmp/t9/t9_07/t9_07_deploy.sh'                     # 装新 worker + wrapper
su -c 'sh /data/local/tmp/t9/t9_07/dev_30_channel_owner.sh'              # 把 inbox/事件属主绑到 com.tgz02.voice 的 uid
powershell -ExecutionPolicy Bypass -File ..\tests\run_t9_07_ui_events_tests.ps1
powershell -ExecutionPolicy Bypass -File ..\tests\t9_07_device_acceptance.ps1
su -c 'sh /data/local/tmp/t9/t9_07/t9_07_restore.sh' [--purge-events]    # 回滚
```
### 提交通道的请求类型（T9-07R1）

`inbox/<event_id>.json` 多了一个可选字段 `kind`：

```json
{"v":1,"kind":"ask","event_id":"ui-...","text":"用户的问题"}
```

| `kind` | 行为 | 回执 stage |
|---|---|---|
| 省略 / `"say"` | T9-06 语义：文本直接进 TTS 队列，照念 | `queue` |
| `"ask"` | 走 AI：`conv_context` + Provider + `tts_enqueue`，回答再播报 | `ai` |
| 其它 / 非字符串 | 拒绝（`unsupported kind` / `kind must be a string`），归档到 `rejected/` | `rejected` |

`ask` 的失败不会被伪装成回答：worker 发布 `events` 记录 `status:"failed"` + `reason`，
`reply` 为空，且不会入队播报。