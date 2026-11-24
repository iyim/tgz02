# APK 管理端（打包 / 一键注入 / 配置 / 运维）可行性调研

- 调研时间：2026-11-24（真机快照见附录 A）
- 设备：TG-Z02，Android 8.1 / SDK 27，`armeabi-v7a`，Magisk root，SELinux `Permissive`
- 目标读者：评审（ChatGPT）
- 本轮性质：**只调研，不改任何程序与脚本**。本文所有结论都基于真机实测快照 + 现有代码结构，不含实现
- 与 T8-16 的关系：本文是旁路调研，**不改变** T8-16（播报期间即时打断）的计划

---

## 1. 要解决的问题

今天这套 AI 桥接已经跑通（唤醒 → ASR → LLM → TTS → 连续对话 / 原厂指令后续听），
但**部署与运维全靠人肉命令行**：

- 6 个常驻件要手工按顺序拉起，顺序错了就不工作；
- 配置分散在 3 个文件 + 1 个 key 文件，改一次要 `su` 编辑再重启进程；
- 出问题要 `adb logcat` / `tail` 逐个文件看；
- **重启后不会自动恢复**（见 3.6），现场表现是"能唤醒但不回答"，和软件 bug 无法区分。

调研目标：能否把这些打包成**一个 APK**，装完给 root 权限后一键部署 + 图形化配置（含大模型设置）+ 运维管理。

---

## 2. 结论（先行）

| 能力 | 可行性 | 依据 |
|---|---|---|
| APK 内打包现有二进制、一键部署到设备 | **95%** | 全部是已验证 ELF + 配置文件，APK 只做解包与 `su` 调度 |
| 一键注入（`:core` 内两个 `.so`） | **95%** | `tg_injector` 已真机验证，调用方式与命令行完全一致 |
| 模型/对话/开关配置页 | **95%** | 字段都是 `worker.conf` 现成项；写文件走 `su` 或 0777 配置目录 |
| 状态与日志面板 | **90%** | 数据源现成（`/proc`、`*_status.json`、各 `.log`），只读场景走 `su` |
| 开机自启 / 断电后自恢复 | **85%** | `service.d` 方案可靠；TV 盒子对后台 App 的限制是唯一变量 |
| 把 `ai_worker` / 桥接改写成 Java 常驻服务 | **不建议** | 0 收益，内存与稳定性都更差（见 §8） |

一句话：**APK 应当是"安装器 + 控制台"，不是"运行时"**。真正的常驻仍由 5 个 ELF/shell 承担。

---

## 3. 现状盘点（真机实测，2026-11-24 09:07）

这一节是可行性判断的事实基础，也是评审最该核的部分。

### 3.1 注入到原厂 `:core` 里的原生模块：恰好 2 个

| 模块 | 路径 / 大小 | 作用 | 当前状态 |
|---|---|---|---|
| `libtg_hook.so` | `/data/local/tmp/t8/` 120 608 B | T6-01 hook agent：inline hook + UDS 事件发送（`abstract:tgz2_asr_bridge`） | `hooked=1 sender=1 seen=62 final=10 sent=10 acked=10 conn_open=1` |
| `libtg_ttsguard_t8155r.so` | `/data/local/tmp/t7/` 41 524 B `sha256=d16eefce…` | T7-02→T8-15.5R 守卫：`playTts` / `onTtsStart` / `onStopTalk` / `AGSpeechEngineProxy::startTalk` 四个挂点 + 续听请求消费 | `hooked=1 play=1 start=1`，`native_window=6 native_reads=11 native_bad=0` |

`/proc/13250/maps` 里各 3 段映射；**应用主进程（`com.alibaba.ailabs.genie.smartapp`，pid 913）里没有任何自定义 `.so`**。

### 3.2 常驻进程（6 类）

| 进程 | pid | 角色 |
|---|---|---|
| `tgb_bridge --sock tgz2_asr_bridge --work-dir …/work` | 2586 | UDS 消费端 → 写 `work/events.jsonl`（**worker 的唯一事件源**，最容易漏） |
| `ai_worker --work-dir … --state-dir … --conf … --tts-queue-dir …` | 21569（uid 0） | 主链路：读事件 → DeepSeek → 写 TTS 队列 |
| `tts_supervisor.sh` → `app_process com.tgz02.tts.TtsExec` | 17253 → 17257 | 真正调原厂 `playTts` 的执行器（`tts_exec.dex` 35 264 B） |
| `tg_supervisor`（守守卫） | 13193 | `:core` 重启后自动重注入 `libtg_ttsguard_t8155r.so` |
| `tg_supervisor`（守 hook agent） | 31289 | 同上，守 `libtg_hook.so` |
| `logcat -v time -s SessionManager:V` ×1 有效 | 16497/16501 | tap：写 `factory_talk.log`，worker 的会话事件来源 |
| `logcat -s AudioStateManager:D VoiceManager:D` | 21409 | 诊断用 |

### 3.3 配置与状态文件

`t7/renew.conf`（`renew_ms=0 / continuity_enable=1 / continuity_type=1 / continuity_auto=1 / auto_max=12`）、
`t7/continuity.req`（续听请求序号）、`ai_worker/listen_hold`、`ai_worker/worker.conf`
（`provider=deepseek`、`base_url=http://192.168.1.13:8790/v1`、`continuous_dialog_enabled=1`、
`factory_talk_tap_enabled=1`、`skill_dispatch_enabled=1`）、`ai_worker/{context,consumer_state,ai_worker_status}.json`、
`work/{events.jsonl,native_route.public.json,utterance_hold.json,bridge_status.json}`、
`tts/{queue,inflight,done,play.public.json}`、`secret/deepseek_api_key`。

### 3.4 开机自启：**只有一条，且与 AI 无关**

`/data/adb/service.d/a.sh` 只做三件事：重写 `/data/misc/adb/adb_keys`、`setenforce 0`、开 `adb tcp 5555` 并重启 adbd。

**reboot 之后整套 tgz02 栈不会自己起来**——这是当前最脆的一环，也是本调研最想解决的运维缺口。

### 3.5 盘上的"死物"（不影响运行，但说明打包要挑资产）

- `/data/local/tmp/t7/libtg_ttsguard*.so`：**16 个历史版本**，只有 `t8155r` 被映射，其余惰性；
- `/data/local/tmp/t7/*.sh`：**85 个一次性调试脚本**；
- `t7/libtg_dialog.so`：没有任何进程加载（T7-02 期遗留）；
- `t5_bridge/{tgb_client,t5c_peer,run_bridge.sh,*.bak}`、`work/events.{c1..c4,archive}.jsonl`：历史二进制/留档；
- 小瑕疵：`ai_worker/factory_talk.pid` 写着已死的 `26822`，实际在跑 `16497/16501`（pid 文件不更新，重启脚本会误判）。

### 3.6 设备能力快照

`ro.product.cpu.abi=armeabi-v7a`、`ro.build.version.sdk=27`、`/system/bin/app_process -> app_process32`（25 008 B 存在）、
`/data` 1.7 G 用 1.4 G（**剩 314 M**）、`/data/adb` 存在（root 0700）、`/data/local/tmp` 为 `shell:shell 0771`、
`getenforce=Permissive`、已装 68 个包。

---

## 4. 要打包的资产（纯二进制约 4.2 MB）

| 类别 | 文件 | 大小 |
|---|---|---|
| 注入基础设施 | `tg_injector`(t8, 80 780 B)、`tg_supervisor`(t6, 60 904 B) | 141 K |
| 原生模块 | `libtg_hook.so`(120 608 B)、`libtg_ttsguard_t8155r.so`(41 524 B) | 162 K |
| 主链路 | `ai_worker`(277 960 B)、`tgb_bridge`(3 553 180 B) | 3.8 M |
| TTS 执行器 | `tts_exec.dex`(35 264 B) | 35 K |
| 驱动脚本 | install / start / status（把今天手工的 6 条启动命令固化） | 几 K |
| 配置模板 | `worker.conf.tmpl`、`renew.conf.tmpl` | 几 K |

不带：日志、`events.*.jsonl` 归档、16 个历史守卫 `.so`、85 个调试脚本。
**APK 估 7–8 MB，解包约 4.5 MB**，`/data` 剩余 314 M 足够（但建议同时给日志加 16 MB 轮转）。

---

## 5. 逐项技术判定

| 环节 | 判定 | 关键点 |
|---|---|---|
| 打包 ELF | ✅ | 放 `assets`（不放 `jniLibs`：会被 ABI 过滤/校验，且必须 `lib*.so` 命名）；解包后 `chmod 755` + 校验 sha256 |
| 执行位置 | ✅ 按 Android 10+ 规则设计 | 10+ 禁止从 app data 直接 exec；本机 8.1 不限制，但统一"解到 `/data/adb/tgz02` 再 exec"可一劳永逸 |
| 提权 | ✅ | `su -c`（Magisk 已在）；建议 `libsu`（minSdk 21），免去自研 su 输出/超时处理 |
| 注入 `:core` | ✅ | `tg_injector` 需 ptrace 同 uid(root) 目标；SELinux 当前 Permissive。APK 只负责拼命令行，二进制零改动 |
| 注入的稳定性 | ✅ 有前提 | `tg_supervisor` 必须 `setsid` 脱离 App 进程；**App 不能持有它**，否则 lowmemorykiller 杀掉 App 就断链 |
| TtsExec | ✅ | 释放 dex 到 `/data/adb/tgz02/dex`，`su` 起 `tts_supervisor.sh`；已真机验证 |
| 配置写入 | ✅ | `/data` 下 App 无写权限。①全走 su；②建 `/data/adb/tgz02/conf` 0777 让 App 直写、worker 只读。**推荐②**（热更新不必每次提权） |
| 大模型设置 | ✅ | 字段全是 `worker.conf` 现成项；连通性测试用 App 自身 `INTERNET` 权限打 `/v1/models` |
| key 存放 | ⚠️ 有限保证 | `EncryptedSharedPreferences`（界面侧）+ 落盘 `secret/deepseek_api_key` root:0600。root 环境**无法真正保密** |
| 状态面板 | ✅ | `/proc`、`ai_worker_status.json`(0600 root)、`ttsguard.sup.log` 均 `su` 读，**不需要改 worker** |
| 开机自启 | ⚠️ 二选一 | ①Magisk `service.d` 引导脚本（最可靠、与 App 解耦，`a.sh` 已是此路）；②`BOOT_COMPLETED` + 前台服务（TV 盒子后台限制严，只作兜底）。建议①+② |
| 换守卫版本 | ✅ 有代价 | 已知约束：必须 kill 一次 `:core`（旧跳转已写入原厂函数头，不能热替换）→ 按钮须提示"中断 3–5 s"，并保留上一版 `.so` 回滚 |
| 体积/日志 | ✅ | `factory_talk.log` 已 645 K、`events.jsonl` 持续增长 → 轮转（16 MB 上限） |

---

## 6. 三个必须提前接受的硬约束

1. **注入必须 root + SELinux Permissive**（今天靠 `a.sh` 每次开机 `setenforce 0`）。恢复 Enforcing 就注入不了。
2. **升级守卫 `.so` = 重启一次 `:core`**，用户感知是"3–5 秒无响应"。
3. **大模型 key 在 root 环境不可能真正保密**，只能 0600 + 不出现在日志/命令行。

---

## 7. 建议的形态

### 7.1 职责边界

```
APK = 安装器 + 控制台（部署 / 拉起 / 状态 / 配置 / 重启 / 回滚）
常驻 = tgb_bridge · tg_supervisor×2 · ai_worker · tts_supervisor(→app_process) · logcat tap
```

APK 不常驻：杀手 App 不影响服务，省电，也避免与 TV 盒子后台策略冲突。

### 7.2 目录布局（替代今天散在 `/data/local/tmp` 的布局）

```
/data/adb/tgz02/
  bin/     tg_injector tg_supervisor ai_worker tgb_bridge
  lib/     libtg_hook.so libtg_ttsguard_<ver>.so (+ 上一版用于回滚)
  dex/     tts_exec.dex
  conf/    worker.conf renew.conf            # 0777，App 直写
  secret/  deepseek_api_key                  # 0600 root
  state/   events.jsonl play.public.json native_route.public.json …
  log/     ai_worker.log factory_talk.log ttsguard.log
```

### 7.3 界面（四页足够）

- **首页**：总开关 + 6 个状态灯（bridge / worker / 两个 supervisor / TtsExec / 注入状态）+ "自检"
- **模型**：provider、base_url、model、key、temperature、max_tokens、上下文长度、超时 + "连通性测试"
- **对话**：连续对话开关、续听时长、暂停行为（`media.play` 不续听）、native 路由开关、技能开关、barge-in 开关（预留）
- **诊断**：注入状态、会话/请求计数（`nativeReads/nativeWindow/req_seen/req_fired/req_rebase`）、日志尾部、"一键收集"

### 7.4 "一键部署"动作链（复用现有二进制，零改动）

```
解包 + sha256 校验 → 写 conf → 写 service.d 引导脚本
→ su 起 tgb_bridge / 两个 tg_supervisor → 等 :core 出现 → injector 注入
→ 起 tts_supervisor + ai_worker → 起 logcat tap
→ 自检（"现在几点"，看 ai_worker.log 有无 reply）→ 状态灯全绿
```

---

## 8. 明确不建议做的两件事

1. **把 `ai_worker` / `tgb_bridge` 改写成 Java 常驻服务**：要重做 HTTP/TCP/UDS/文件协议，内存与稳定性都更差，收益为零。
2. **用 Xposed/LSPosed 替代 `tg_injector`**：换掉已验收的注入链路，风险远大于收益。

---

## 9. 工作量估算

| 里程碑 | 内容 | 人日 |
|---|---|---|
| M1 | 骨架 + 解包校验 + `su` 封装 + 启停 + 6 个状态灯 | 1–2 |
| M2 | 模型配置页 + 写 conf + 重启生效 + 连通性测试 | 1–2 |
| M3 | 日志面板 + 诊断 + 一键收集（把 T8-15.x 的人工排查自动化） | 1 |
| M4 | `service.d` 自启 + 幂等 + 断电重启验证 | 1 |
| M5（可选） | 守卫版本切换/回滚、barge-in 开关预留 | 1–2 |

合计：核心可用版 **3–5 人日**，含回滚/自启 **5–7 人日**。

---

## 10. 唯一需要触碰现有代码的地方

**只有一处**：`run_ai_worker.sh` 里那批绝对路径（`/data/local/tmp/t5_bridge/...`）要能按部署根目录推导。
二进制本身、UDS 协议、守卫逻辑**全部不用改**。

---

## 11. 需要评审拍板的问题

1. **部署根目录**：`/data/adb/tgz02`（Magisk 目录，重启保留、不被清理）还是继续 `/data/local/tmp`（今天的位置，改动最小但进程目录混杂）？
2. **自启方式**：只做 `service.d`（最稳），还是 `service.d` + `BOOT_COMPLETED` 双保险（要多写一个前台服务）？
3. **配置目录权限**：`conf/` 设 0777 让 App 直写（省提权、但配置对任意 App 可写），还是每次改配置都走 `su`（更安全、每次弹窗）？
4. **APK 是否需要"停止一切并恢复原厂"的急停按钮**（恢复守卫原厂序言 + 停掉全部常驻件）？
5. **是否需要 A/B 双版本守卫**（保留上一版 `.so` 一键回滚），还是只留单版本 + 重装 APK 回退？

---

## 附录 A：真机快照（2026-11-24 09:07，`192.168.1.9:5555`）

```
pids: core=13250 app=913 worker=21569
:core maps 自定义 .so:
  3 × /data/local/tmp/t7/libtg_ttsguard_t8155r.so
  3 × /data/local/tmp/t8/libtg_hook.so
app 主进程自定义 .so: （无）

常驻:
  13193  tg_supervisor --so .../libtg_ttsguard_t8155r.so
  31289  tg_supervisor --so .../libtg_hook.so
  2586   tgb_bridge --sock tgz2_asr_bridge --work-dir /data/local/tmp/t5_bridge/work
  21569  ai_worker --work-dir … --state-dir … --conf … --tts-queue-dir …
  17253  sh /data/local/tmp/t5_bridge/tts_supervisor.sh
  17257  app_process /system com.tgz02.tts.TtsExec --root … --idle-ms 0 --timeout-ms 60000
  16497/16501  logcat -v time -s SessionManager:V -T '11-24 08:08:15.000' >> factory_talk.log
  21409  logcat -v time -s AudioStateManager:D VoiceManager:D

守卫统计（--check）:
  hooked=1 play=1 start=1 func_play=986e4afc func_start=986e4110
  play_seen=5 ours=5 not_ours=0 start_seen=16 allowed=5 dropped=5
  native_allowed=6 native_window=6 native_miss=0 native_reads=11 native_expired=5 native_bad=0 native_seq=17
hook agent 统计:
  hooked=1 sender=1 seen=62 final=10 queued=10 sent=10 acked=10 conn_open=1 conn_fail=0

tgb_bridge: {"type":"READY","pid":2586,"events_stored":0,"replay_lines":540,"bad_lines":0}
设备: abi=armeabi-v7a sdk=27 app_process32=存在 /data 剩 314M /data/adb=存在(0700) getenforce=Permissive 68 packages

开机自启: /data/adb/service.d/a.sh（仅 adb_keys / setenforce 0 / adb tcp 5555）
遗留: t7 守卫 .so 16 个（仅 t8155r 生效）、t7 *.sh 85 个、libtg_dialog.so 未加载、
      ai_worker/factory_talk.pid 记录已死 pid 26822（实际 16497/16501）
```
