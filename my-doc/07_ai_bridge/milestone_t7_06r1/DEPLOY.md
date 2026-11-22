# TG-Z02 语音链路部署文档（T7-06-R1 里程碑）

设备：TG-Z02 / `AILABS_S1`，Android 8.1（SDK 27），`armeabi-v7a`，`192.168.1.9:5555`（root：Magisk）
文档生成：2026-11-22 14:12（设备时间）
仓库：`iyim/tgz02`，基线 `0906daa4`（工作区另有 3 处未提交改动，见 §9）

---

## 0. 一句话现状

工厂应用 `com.alibaba.ailabs.genie.smartapp:core` 里注入了两个库（**ASR 事件采集** + **原厂 TTS 守卫**），
ASR 结果经 **事件桥 → Worker（本地指令 / 大模型分流）→ 原厂放行标记 / 我们自己的 TTS 播报**，
形成"本地指令由原厂回答、大模型问题由我们回答且屏蔽原厂语音"的闭环。

---

## 1. 架构（谁在跟谁说话）

```
 [麦克风]
    │  (KWS 唤醒词，原厂 libsmartbox)
    ▼
 :core 进程 (uid 1000 system, SELinux system_app)
   ├── libtg_hook.so      ← T6-01 ASR 采集：onStartTalk/onResult/onFinal 钩子
   │        │ UNIX abstract socket "tgz2_asr_bridge"
   │        ▼
   ├── libtg_ttsguard.so  ← T7-04/T7-05 TTS 守卫：onTtsStart 拦截 + playTts 记账
   │        ▲ 读允许标记
   │        │ {state_dir}/work/native_route.public.json
   │        │
   └── (原厂回答) ──► 被守卫按标记放行 / 拦截

 tgb_bridge (独立进程)
   └─► work/events.jsonl   ← 每条 asr_final 一行 JSON

 ai_worker (独立进程)
   ├─ 读 events.jsonl（offset 持久化在 consumer_state.json）
   ├─ intent_route：本地指令(音量/天气/时间/开关屏/播放/停止) → route=native
   │      └─► 写 native_route.public.json（exp = now + 8s）→ 守卫放行原厂回答
   └─ 其它 → route=ai → 大模型 HTTP（OpenAI 兼容）
          └─► tts/ 队列 → tts_exec.dex (app_process) 用原厂 TTS 念出来
                 └─► 原厂那条回答没有标记 → 被守卫拦掉（不双答）

 tg_supervisor ×2（常驻）
   ├─ (a) ASR 侧：--so libtg_hook.so   （pid 279，勿杀）
   └─ (b) 守卫侧：--so libtg_ttsguard.so（sup.pid 里那个）
```

关键端口：**没有 TCP 端口**。桥用抽象 socket `tgz2_asr_bridge`（`/proc/net/unix` 里可见）。

---

## 2. 注入到机器里的程序清单

| # | 文件（设备路径） | sha256（前 12） | 宿主进程 | 注入方式 | 作用 |
|---|---|---|---|---|---|
| 1 | `/data/local/tmp/t6/libtg_hook.so` | `b838a7313929` | `:core` | `tg_supervisor --so`（pid 279，常驻重注入） | ASR 事件采集（`SessionManager::onStartTalk` 等），把 final 发到桥 |
| 2 | `/data/local/tmp/t7/libtg_ttsguard.so` | `6d989d8d3ea4` | `:core` | `tg_supervisor --so`（pid 见 `t7/ttsguard.sup.pid`） | 拦截原厂 `onTtsStart`（无放行标记就丢）、记账 `playTts` |
| 3 | `/data/local/tmp/t7/libtg_wakeinfo.so` | `001b27d13b80` | `:core` | `tg_injector --pid … --so …`（**当前未注入**） | 只读观测 WakeUpInfo（T7-06-R1），0700/0600 私有落盘 |
| 4 | `/data/local/tmp/t6/lib tg_dialog.so`（`libtg_dialog.so`） | 22 KB | `:core` | 可选（当前**未注入**） | T7-03 连续对话实验体，本轮未启用 |
| 5 | `/data/local/tmp/t6/tg_injector` | `4d13af84d4c0` | 一次性进程 | 手工执行 | ptrace 注入器：`--pid/--so/--check/--uninstall` |
| 6 | `/data/local/tmp/t6/tg_supervisor` | `17dec6e079d7` | 常驻 | `run_t7_05.sh guard-start` / T6 启动 | 监视 `:core`，退出即重新注入指定 `.so` |
| 7 | `/data/local/tmp/t5_bridge/tgb_bridge` | 3.4 MB | 独立 | `run_bridge.sh start` | 抽象 socket → `work/events.jsonl`（去重/重放/统计） |
| 8 | `/data/local/tmp/t5_bridge/bin/ai_worker` | `32fc28001910` | 独立 | `run_ai_worker.sh start-deepseek` | 事件消费、意图路由、大模型调用、TTS 入队 |
| 9 | `/data/local/tmp/t5_bridge/tts_exec.dex` | 35 KB | `app_process` | `run_tts_exec.sh start`（带守护） | 调原厂 TTS 播报我们的回答 |

当前运行态（2026-11-22 14:12）：

```
:tcore   = 8342   libtg_hook=3 处映射, libtg_ttsguard=2 处映射, libtg_wakeinfo=0
tgb_bridge = 2586
ai_worker  = 3468（守护进程 4685 之外由 run_ai_worker.sh 管）
tts 执行器 = supervisor 17253 / executor 17257
ASR supervisor = 279        ← 任何时候都不要杀
守卫 supervisor = 见 t7/ttsguard.sup.pid
```

> 记忆点：`tg_supervisor` 有两个，命令行里 `--so` 不同。**按 `--so` 区分，不要按进程名 kill**（本项目曾把守卫 supervisor 误杀）。

---

## 3. 脚本清单（都在 `/data/local/tmp/t7/`，本备份 `t7/` 里一比一）

### 3.1 部署 / 恢复（生产用）

| 脚本 | 用途 |
|---|---|
| `restore_full.sh` | **重启后一键恢复**：桥 → Worker → TTS 执行器 → 守卫，最后打印状态 |
| `restore_noguard.sh` | 同上但**不启守卫**（大模型不可用、或排障时用，避免原厂回答被吞） |
| `restore_stack.sh` | 早期版本（桥 + Worker + 守卫 + 观测库），保留对照 |
| `rollback_0906daa4.sh` | 把 Worker 换回 `0906daa4` 那一版二进制并把守卫拉起来（conf 不动） |
| `rollback_to_r2.sh` | 撤掉观测库、重启 `:core`、回到 R2 路由版本 |
| `set_key.sh KEY` | 写 key 文件（`0600`，只落盘）并重启 Worker |
| `apply_qwen_conf.sh` | 一键切到 qwen 代理（8400 / qwen4-max / thinking=fast），带 conf 备份 |
| `back_to_deepseek.sh` | 一键切回 deepseek 代理（8790 / deepseek-flash），去掉 `thinking` 行 |
| `switch_base.sh URL` | 只改 `base_url` 并重启 Worker（验证请求体时用） |
| `inject_wake.sh install\|check\|uninstall` | 观测库注入/查询/卸载（`pidof` 选进程，不会误伤 shell） |
| `vad_fix.sh` / `vad_revert.sh` | 原厂判停 150ms↔700ms 的临时改动与回退（**默认保持原厂 150**，已验证 700 无效） |
| `cleanup_injector.sh` | 清卡死的 `tg_injector`（**注意**：旧版按子串匹配会误杀守卫 supervisor，见 §8） |

### 3.2 诊断（只读，排障用）

| 脚本 | 看什么 |
|---|---|
| `triage.sh` | 一分钟全景：进程 / Worker 末尾日志 / 事件数 / TTS 队列 / 守卫计数 |
| `inventory.sh` | 设备上我们放的所有文件 + 进程 + 映射 |
| `now_state.sh` | 进程、事件、桥状态、崩溃残留、TTS 播放状态 |
| `check_route.sh` / `last_finals.sh` | 最近 final 文本、最近几条 `route=native|ai`、守卫计数 |
| `guard_stats.sh` | 守卫计数（`allowed/dropped/native_allowed/native_expired`） |
| `ai_check.sh` / `ai_tts_state.sh` | 大模型链路：路由、reply_bytes、TTS done/failed、journal |
| `why_no_wake.sh` / `after_wake.sh` / `watch.sh` / `live_asr.sh` / `engine_window.sh` | 唤醒链路：KWS→onStartTalk→onListenStarted→EOU→stop 的日志切片 |
| `asr_check.sh` / `asr_probe_before.sh` / `asr_probe_after.sh` / `asr_restore_ev.sh` | ASR 采集计数、桥、事件、路由标记 |
| `power_state.sh` / `audio_state.sh` / `avc.sh` | 屏幕状态 / 音频占用 / SELinux 拒绝 |
| `tvs_diag.sh` / `login_state.sh` | 原厂 ASR 引擎状态、TVS 登录态 |
| `runtime_xml.sh` / `vad_cfg.sh` | 读原厂 `runtime.xml` 的判停参数（只读） |
| `find_key.sh` / `find_libsmartbox.sh` | 找 key 残留 / 找 `libsmartbox.so` 位置 |
| `qwen_state.sh` | qwen 配置切换后的状态确认 |
| `collect_ev.sh` / `make_milestone.sh` | 把应用私有目录与运行目录打包到 `/sdcard` |
| `lifecycle.sh` | 注入/卸载/再注入循环测试（§8 的"卸载伪报成功"就是它发现的） |
| `ab_guard.sh` / `ab_hook.sh` | A/B：停守卫、停观测库，判断问题是否来自我们 |
| `inject_test_event.sh` | 往 `events.jsonl` 追加一条**同形**的 `asr_final`，用于不靠嗓子验证大模型链路 |

### 3.3 历史脚本（前几轮留下，仍在备份里）

`dev_*.sh`（调试片步）、`run_t7_04.sh`、`run_t7_05.sh`（守卫正式控制脚本，22 KB，含 fail-closed/rollback）、`run_t7_05.r2.sh`、`run_aux_supervisors.sh`、`run_ttsguard.sh`、`run_dialog.sh`、`wake_log0/1.sh`、`net_diag.sh`、`bridge_diag.sh`、`env_diag.sh`、`app_reinit.sh`、`recapture.sh`。

---

## 4. 数据与配置

| 文件 | 说明 |
|---|---|
| `t5_bridge/ai_worker/worker.conf` | Worker 配置（`0600`）：`provider/base_url/model/api_key_file/temperature/max_tokens/route_*/gate_*/session_*/echo_*` |
| `t5_bridge/secret/deepseek_api_key` | **大模型 key（`0600`，36 字节）**；已加 `.gitignore`，不要提交 |
| `t5_bridge/work/events.jsonl` | ASR final 流水（一行一条，含 `event_id/session_id/text/seq`） |
| `t5_bridge/work/native_route.public.json` | 放行标记：`{"version":2,"seq","wall_ms","exp_ms","asr_session","event_id","intent","rule"}`，`exp = now + 8000ms` |
| `t5_bridge/ai_worker/consumer_state.json` | 消费进度（offset/prefix_hash/最近 event_id） |
| `t5_bridge/ai_worker/dead_letter.jsonl` | **死信**：8 次失败仍不成功的事件写这里并跳过（保证流水线不被堵死） |
| `t5_bridge/ai_worker/context.json` | 多轮上下文（最多 6 条消息） |
| `t5_bridge/tts/` | 播报队列（`queue/ inflight/ done/ failed/ journal.jsonl play.public.json`） |
| `…/files/wake/wakeinfo.jsonl` | 观测库快照（本轮注入才有；`0700` 目录 / `0600` 文件） |

---

## 5. 部署步骤（从零到可用）

前提：设备已 root（`su` 可用），`adb connect 192.168.1.9:5555` 成功。

```sh
# 5.1 还原文件（用本备份）
adb push packages/m_t6.tar.gz packages/m_t7.tar.gz packages/m_bridge.tar.gz /sdcard/
adb shell su -c 'cd /data/local/tmp && tar -xzf /sdcard/m_t6.tar.gz && tar -xzf /sdcard/m_t7.tar.gz && tar -xzf /sdcard/m_bridge.tar.gz'
adb shell su -c 'chmod 755 /data/local/tmp/t6/tg_injector /data/local/tmp/t6/tg_supervisor /data/local/tmp/t5_bridge/bin/ai_worker'
adb shell su -c 'chmod 600 /data/local/tmp/t5_bridge/ai_worker/worker.conf /data/local/tmp/t5_bridge/secret/deepseek_api_key'

# 5.2 配置大模型（当前是 deepseek 代理）
adb shell su -c 'grep -E "^(provider|base_url|model)=" /data/local/tmp/t5_bridge/ai_worker/worker.conf'
#   provider=deepseek  base_url=http://192.168.1.13:8790/v1  model=deepseek-flash
# 换 key： sh /data/local/tmp/t7/set_key.sh <KEY>

# 5.3 一键起全栈
adb shell su -c 'sh /data/local/tmp/t7/restore_full.sh'
```

`restore_full.sh` 内部顺序（**顺序不能改**）：

1. `run_bridge.sh start` —— 桥先起，否则 hook 发不出事件（`conn_fail` 会涨）；
2. `run_ai_worker.sh start-deepseek` —— Worker 起，开始消费 `events.jsonl`；
3. `run_tts_exec.sh start` —— TTS 执行器起，否则大模型回答了也没人念；
4. `run_t7_05.sh guard-start` —— 守卫最后起（它会等 `:core` 出现再注入）。

---

## 6. 验证清单（每步的期望输出）

| 检查 | 命令 | 期望 |
|---|---|---|
| 桥在跑 | `sh /data/local/tmp/t5_bridge/run_bridge.sh status` | `running: pid=…` + `"sock":"abstract:tgz2_asr_bridge"` |
| ASR hook 注入 | `tg_injector --pid <core> --so …/libtg_hook.so --check` | `hooked=1`，`seen` 随说话增长 |
| 守卫注入 | `sh /data/local/tmp/t7/guard_stats.sh` | `hooked=1`，`play=1 start=1` |
| Worker 正常 | `tail -3 …/ai_worker.log` | `provider ready: … model=…`、`route=native/ai` |
| TTS 执行器 | `sh …/run_tts_exec.sh status` | `supervisor=…/alive executor=…/alive`，`done` 增长 |
| 本地指令 | 说"天猫精灵，现在几点" | 日志 `route=native intent=time`；守卫 `native_allowed` +1；**原厂开口** |
| 大模型 | 说"天猫精灵，给我讲个笑话" | `route=ai` → `provider reply …bytes` → `tts queued` → `done` 增长；守卫 `dropped` +1（原厂被拦）；**我们的 TTS 开口** |

不靠嗓子的替代验证（推荐排障时用）：

```sh
adb shell su -c 'sh /data/local/tmp/t7/inject_test_event.sh'   # 追加一条同形 asr_final
adb shell su -c 'tail -6 /data/local/tmp/t5_bridge/ai_worker/ai_worker.log'
```

---

## 7. 回滚

| 场景 | 做法 |
|---|---|
| 只想让原厂恢复原样（语音回答） | `sh /data/local/tmp/t7/run_t7_05.sh guard-stop`（守卫卸载），或 `restore_noguard.sh` |
| 想让原厂彻底干净 | 杀两个 supervisor + 卸 hook：`guard-stop`，再 `tg_injector --pid <core> --so libtg_hook.so --uninstall`，最后 `am force-stop` 应用 |
| 大模型配置回退 | `sh /data/local/tmp/t7/back_to_deepseek.sh`（conf 备份在 `ai_worker/worker.conf.bak_before_qwen`） |
| Worker 二进制回退 | 备份在 `bin/ai_worker.bak_t7_05r2`（`0906daa4` 版，`3ff34009…`） |
| 守卫 `.so` 回退 | `t7/backup_t7_05/`、`t7/backup_t7_05r1*`、`t7/backup_t7_05r2/`（T7-04 / T7-05-R1 / R2 三个版本） |
| 原厂判停参数 | `t7/backup_runtime_before_vad.xml`（sha `87e40494…`），或 `runtime.xml.bak` |

---

## 8. 已知问题与踩过的坑（下次改造先读这一节）

1. **桥不自启**：`tgb_bridge` 不在 init.rc 里，重启必掉。掉的时候现象是"能唤醒、没回答"，hook 计数 `conn_fail` 一路涨。必须跑 `restore_full.sh`。
2. **守卫放行窗口**：`T6B_ROUTE_SLACK_MS` 从 2 s 改成 **8 s**。2 s 时原厂来不及开口，本地指令的答案会被守卫当抢答丢掉（现象："叫得醒，不回答"）。
3. **放行标记的 `session` 字段**：原来写的是 ASR session，被守卫拿去和 TTS id 比，永远比不中；现在改名 `asr_session`（只记录），让守卫走窗口判定。
4. **Worker 死等会堵死整条链**：旧策略"事件不成功永不跳过"，一条 503/401 就够让**本地指令也不回答**。现在有死信：`retry_max+3 = 8` 次后写 `dead_letter.jsonl` 并推进偏移。
5. **卸载会伪报成功**（T7-06-R1 修）：`mprotect` 失败时仍报 `uninstalled`，下次注入撞上"prologue mismatch"。现在还原后**回读校验**、失败返回错误、`hooked` 读入口实际字节。
6. **同一进程反复注入有歧义**：`dlopen` 同一路径会 `already_mapped`，`--check` 可能问到旧那份。换 `.so` 或往返注入后**重启 `:core`**（`run_t7_05.sh guard-reload`）。
7. **原厂识别侧会卡死**：表现是 KWS 触发、`onListenStarted` 后立刻 `onCloudEOUEvent` → `onListenStopped`，或者干脆不 `onListenStarted`。整机重启可恢复；**与本项目代码无关**（A/B 卸掉我们全部注入结果一样）。
8. **不要按进程名子串 kill**：`ps | grep tg_injector` 会命中守卫 supervisor 的命令行（`--injector …/tg_injector`），本项目曾因此误杀守卫。
9. **大模型 key 只落盘**：`worker.conf` 里只有路径；key 文件 `0600`；日志/命令行都不打印。
10. **大模型 503**：整条链会卡在重试上（死信会兜底），先查代理（`/v1/models` 通不通、`chat/completions` 是否 503）。
11. **守卫开着时的双答风险**：`route=ai` 不发标记 → 原厂被拦；但如果 Worker 没在跑（没标记也没我们 TTS），就会出现"没人回答"。排障时先 `triage.sh`。

---

## 9. 本轮未提交的代码改动（工作区）

| 文件 | 改动 |
|---|---|
| `android/deepseek_provider.[ch]` | 请求体支持 `"thinking":"<值>"`（OpenAI 兼容扩展字段；空值不发） |
| `android/worker_conf.c`、`android/ai_worker.c` | 新增 `thinking=` 配置项与 `--thinking`；`provider_dead_letter`；标记窗口 2s→8s、`session`→`asr_session` |
| `android/ai_worker.h` | `T6B_ROUTE_SLACK_MS 8000`、`provider_dead_letter` 字段 |
| `android/worker_status.h` | `dead_lettered` 计数 |
| `tests/t7_conv_context_unit_test.c` | 新增 thinking 断言；修掉"默认配置没填 `session.timeout_ms`"导致 conf 回读失败的旧缺陷（现 166 断言 0 失败） |

对应当前设备二进制：`bin/ai_worker` = `32fc28001910`（0 warning 构建）。

---

## 10. 常用命令速查

```sh
# 状态全景
adb shell su -c 'sh /data/local/tmp/t7/triage.sh'

# 最近一条 final 是什么
adb shell su -c 'sh /data/local/tmp/t7/last_finals.sh 3'

# 守卫拦了多少
adb shell su -c 'sh /data/local/tmp/t7/guard_stats.sh'

# 大模型为什么不回答
adb shell su -c 'tail -5 /data/local/tmp/t5_bridge/ai_worker/ai_worker.log'
adb shell su -c 'cat /data/local/tmp/t5_bridge/ai_worker/dead_letter.jsonl'

# 重启后恢复
adb shell su -c 'sh /data/local/tmp/t7/restore_full.sh'

# 让设备安静（原厂接管）
adb shell su -c 'sh /data/local/tmp/t7/run_t7_05.sh guard-stop'
```

---

## 11. 安全与权限约定

- 我们所有落盘都在 `/data/local/tmp/{t6,t7,t5_bridge}` 与应用私有目录，**不改 system 分区、不装 APK、不动原厂 APK/native**；
- 观测库（`libtg_wakeinfo.so`）目录 `0700`、文件 `0600`，由 hook 以自身 uid（实测 1000/system）创建；
- key 文件 `0600`，备份里已 `.gitignore`；
- 原厂参数（`runtime.xml` 的 `localASRPauseTime=150`、`pauseTime=700`）保持原厂值；本备份另外保留了当时实验用的 `backup_runtime_before_vad.xml`，仅供对照。
