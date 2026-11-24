# T9-07 正式自有交互 UI MVP（产品化）

基线：`7cf5e8e2314c667f9218fda410c69c1fa56f8294`（T9-06 验收通过点；本轮分支上的
`2b0d5883` 只是 F 项证据的文档提交）。设备：TG-Z02 / `AILABS_S1L`，Android 8.1（API 27），
armeabi-v7a，1024×600 mdpi，Magisk root。

结论：**T9-07 交付物齐备，真机验收 30 项检查全部通过（含重启）**。

> **T9-07R1（本轮）**：文字输入已接入 AI 对话，生产 APK 里的测试入口已移出。细节见文末
> 「T9-07R1 补章」；本文第十节第 1 条限制已被 R1 修复。原厂 KWS / ASR / TTS /
`:core` 与已验收的 T9-06R1 通道均未替换、未重构：Inbox 语义、Worker 队列、TTS 执行路径、
守卫与 hook 一行未改，只新增了一个"只写、只给 UI 读"的事件出口。

---

## 一、交付物

| 交付物 | 位置 |
|---|---|
| 正式 UI 源码 | `android/t9_07_ui/src/com/tgz02/voice/`（`ConversationActivity` / `VoiceBridgeClient` / `SessionStore` / `SettingsActivity` / `Ui`） |
| 可重复构建脚本 | `android/t9_07_ui/build.ps1`（javac `--release 8` + d8 35.0.1 + aapt2 + zipalign + apksigner） |
| APK 与 SHA256 | `android/t9_07_ui/build/voice_ui.apk`，33,165 B，`sha256=15a5e1c5a09263d662487d50d9b278cf8c134f4727fd1f6b83910936aa9dd3be`；`classes.dex` `sha256=2ea7fa4ccd5699fe24e876ceecdb91454dd7391c7f4af90992ae12a8076ab8c6` |
| Worker 事件出口（新增模块） | `android/ui_events.h` / `android/ui_events.c`；`ai_worker.c` 只加了初始化、两处发布调用与状态刷新 |
| 部署脚本 | `android/t9_07_deploy.sh`（device，含一次性备份 + 装载 + 起服 + 打印事实） |
| 回滚脚本 | `android/t9_07_restore.sh`（device，恢复 T9-06R1 worker 与 wrapper；`--purge-events` 清事件文件） |
| 通道绑定脚本 | `android/t9_07/dev_30_channel_owner.sh`（把 Inbox 属主 / 事件属组绑到 `com.tgz02.voice` 的当前 uid） |
| Host 测试 | `tests/t9_07_ui_events_test.c` + `tests/run_t9_07_ui_events_tests.ps1` → **60/60 通过** |
| 真机验收脚本 | `tests/t9_07_device_acceptance.ps1`（A–H 全流程，可重复执行） |
| 真机验收原始日志 | `evidence/t9-07/60_acceptance.txt`（30 PASS / 0 FAIL）+ `60_a..69_h` 截图 + `63_stop_logcat.txt` |
| 部署/绑定/冒烟证据 | `evidence/t9-07/10_deploy.txt`、`20_smoke.txt`、`30_channel_owner.txt` |

---

## 二、先检查现有接口：为什么必须新增一个事件出口

按任务书"先检查当前 Worker 的事件、ASR 数据和日志接口"，盘出来的事实是：

| 现有接口 | 有没有识别文本 / 回复文本 | 能否作为产品接口 |
|---|---|---|
| `t5_bridge/tts/play.public.json` | 没有文本，只有 `event_id → tts_id / state / last_outcome` | 可以（本就是执行器发布的权威状态） |
| `t9_ui/result/<event_id>.json` | 只有"收下/拒绝 + 原因" | 可以（回执） |
| `t5_bridge/tts/journal.jsonl` | 没有文本（只有 `text_bytes`），且 0600 root | 不行（权限 + 无内容） |
| `ai_worker/ai_worker.log` | **有** ASR 原文与回答（`route=skill ... reply_bytes`） | 不行：人类可读日志，改一句措辞就断，且 0777 无隔离 |

也就是说：**"用户说了什么"和"助手回答了什么"当时只存在于日志里**。所以本轮新增
`ui_events`——一个明确的、机器可读的、带权限隔离的出口，而不是去解析日志（任务书明令禁止）。

---

## 三、数据流（本轮之后）

```
  用户说话 ──► 原厂 KWS/ASR (:core) ──► events.jsonl ──► ai_worker (root)
                                                            │  ├─ 路由/技能/大模型
                                                            │  ├─ tts_enqueue ──► TtsExec ──► 原厂 TTS ──► 喇叭
  用户打字 ──► UI ──► inbox/<id>.json ──► ai_worker ────────┘                        │
                        ▲                                                            ▼
                        └── result/<id>.json ◄──────────────────────── tts/play.public.json
                                                                                     │
  UI（普通应用，无 root）◄── events/<seq>.json（ASR 原文 + 回答）◄── ui_events ◄──────┘
                        ◄── status.public.json（worker/AI/会话状态）
```

UI 依赖的四个只读来源：`events/<seq>.json`（内容）、`status.public.json`（状态）、
`result/<id>.json`（回执）、`play.public.json`（播报事实）。停止走 T9-05 已验收的
provider `insert(method=5)`，不碰队列、不需要 root。

---

## 四、事件与状态文件

`<UI_ROOT>/events/<12 位序号>.json`，一行一条，原子发布（tmp + fsync + rename + 目录 fsync）：

```json
{"v":1,"seq":27,"ts":"2026-11-24T17:13:45","ts_ms":1795511625370,
 "kind":"turn","session":"1969027","event_id":"t6-1178-1969027-g11",
 "route":"skill","skill":"time.query",
 "user":"天猫精灵现在几点","user_bytes":24,"user_cut":0,
 "reply":"now 17:13","reply_bytes":9,"reply_cut":0}
```

- `kind=turn`：一轮完整语音交互（原厂 ASR 原文 + 本轮回答）；`kind=submit`：UI 提交的文本被收下；
- 语义：**只在"回答已入队 + 消费偏移已落盘"之后发布**；发布失败只累加计数，不推进偏移、不阻塞主循环；
- 序号从目录里已有的最大值继续（跨重启单调），上限 `--ui-events-max-files`（默认 512，按序号淘汰最旧）；
- 文本按码点截断到 1024 B，截断时 `user_cut/reply_cut=1`（读侧能看到"我少了内容"，而不是拿到半个字符）。

`<UI_ROOT>/status.public.json`（tmp + rename 覆盖）：`worker`/`pid`/`uptime_ms`、
`provider{name,model,mock,ok,err,timeout,last_http,last_error,last_class,last_latency_ms}`、
`dialog{state,sc,round,session,listening,tap}`、`counters{...}`。**不含 API key、请求体、消息正文。**

权限与隐私：

```
drwxr-x--- 2 root u0_a60  events/          # 只有 root 与该 app 的 gid 能进
-rw-r----- 1 root u0_a60  000000000027.json
-rw-r----- 1 root u0_a60  status.public.json
```

`--ui-events-gid` 取 UI 应用的 gid；**chown 失败时整个出口拒绝启动**（不降级成世界可读），
因为这里的正文就是用户说的话。设备上其它应用既读不到事件，也写不进 Inbox（T9-06R1 的 0700 保持）。

---

## 五、产品 UI

`com.tgz02.voice`，普通应用，**零权限**，无 sharedUserId、无 root、无后台服务、无开机自启。

主界面（`ConversationActivity`）：

- 顶栏：`语音助手` ｜ `新对话` `历史` `设置`；
- 状态条：一个圆点 + 一句话——`待唤醒 · 说「天猫精灵」` / `正在识别…` / `正在处理…` / `正在播报…` /
  `已打断` / `后台服务未连接`（后者在 `status.public.json` 心跳超过 6 s 时出现）；
- 对话区：用户气泡右对齐（蓝）、助手气泡左对齐（深灰），每条下面一行小字 `HH:mm · 已播报/正在播报/已停止/未接受`；
- 底部：输入框 + `发送` + `停止`；
- 自动滚到底；空会话时给一句引导而不是空白。

`VoiceBridgeClient`（唯一通道封装，UI 不碰文件协议细节）：`submit()` 原子写 inbox、轮询
`result/` 取回执、按序号增量读 `events/`、读 `status.public.json`、读 `play.public.json` 做
`event_id ↔ tts_id` 关联，`stop()` 走 provider `insert(method=5)`。一个守护线程、250 ms 一拍。

`SessionStore`（本地历史）：`filesDir/sessions/<id>.json`，每条消息 `role/text/ts/event_id/tts_id/state`；
每次追加整文件原子重写；≤40 个会话、每会话 ≤200 条；并用 "已展示过的 event_id 集合" 去重，
所以重启后补读事件不会把同一句话写两遍。

`SettingsActivity`：语音后台（运行状态/pid/uptime/当前会话轮次）、AI 服务（提供方/模型/成功失败超时/
最近 HTTP/最近耗时/最近错误）、提交通道（已接受/被拒/已发布事件）、会话记录（数量/条数/路径）、
设备与版本。**不读、不显示、不落盘任何 API key。**

状态档位的来源是诚实的：`dialog.state` 由 worker 的会话控制状态（`sc`）+ `play.public.json` 的播报事实合成；
识别文本永远来自 `events` 里原厂 ASR 的原文，拿不到就只显示状态，绝不编造用户消息。

---

## 六、Host 测试（60/60）

`tests/run_t9_07_ui_events_tests.ps1` → `evidence/t9_07_ui_events_unit_test.log`：

```
cc: gcc -O2 -Wall -Wextra -std=gnu99 -I android -o out/t9_07_ui_events_unit_test.exe \
    t9_07_ui_events_test.c android/ui_events.c android/worker_util.c
(no compiler output: 0 warning, 0 error)
T9-07 ui events unit tests: 60 passed, 0 failed
# result: PASS
```

覆盖：创建目录/初始序号、单条发布的文件名与字段、引号反斜杠控制字符转义（仍是一行）、
超长文本按码点截断并置 `*_cut`、跨重启续号、目录清空后序号归零、按序号淘汰最旧（8 条上限下发 20 条只留 8 条）、
状态文件原子替换且不留 tmp、未初始化上下文拒绝发布、空字段/NULL kind 的默认值、单条记录体积上限。

---

## 七、ARM32 构建

`powershell -File android/build_t8_15.ps1 -LogName t9_07_ndk_build.log`（源列表新增 `ui_events.c`）：

```
libtg_ttsguard.so  42,712 B   sha256=67d96b38870bb540a9d7f11b6e902739e5b2fcb92eaacb095e5d3d7bde0cf9e0   （未改）
ai_worker         305,520 B   sha256=94870a4b4a0c42443cdd30b17bb880b35b9e1965bffa4babbdb78feb6fa88b23
# warnings: 0    # result: OK (0 warning)
```

---

## 八、真机验收（30 项检查，全过）

`tests/t9_07_device_acceptance.ps1` 全程驱动**真实控件**（`input tap` 点发送/停止/新对话/历史），
文本用应用自带的测试钩子预填（同一 tap 路径）；语音用**主机扬声器播放唤醒音频、设备麦克风拾音**
（T9-06R1 F 项已验证的方法，不再使用设备端 tinyplay）。原始日志 `evidence/t9-07/60_acceptance.txt`。

| 任务书要求 | 结果 | 证据 |
|---|---|---|
| 1 APK 安装启动，显示正式对话首页 | 通过 | `[PASS] the conversation screen is foreground`；`60_a_home.png` |
| 2 输入文本 → Worker 接收 → 原厂 TTS 播报 | 通过 | `[PASS] the send button on the real screen accepted the message` / `...published the submitted text as an event` / `...outcome=ok`；`61_b_send.png` |
| 3 连续多条，顺序一致 | 通过 | 3 条 `[PASS]`；`tts_ids increase in execution order`；`62_c_order.png` |
| 4 语音唤醒 → 原厂 ASR → Worker → TTS，UI 显示状态与内容 | 通过 | `[PASS] the worker published a completed turn`；`64_e_voice.png`；`70_voice_view.png` |
| 5 UI 可停止当前播报 | 通过 | `[PASS] the executor did not finish it as ok`；`[PASS] the official audio state machine processed a STOP_TTS`；`63_d_stop.png`；`63_stop_logcat.txt` |
| 6 新对话 / 切历史 / 重启后历史仍在 | 通过 | 会话数 1→2；重启后 `[PASS] the session files survived the app restart`；`65..67*.png` |
| 7 后台 Worker 与原厂语音不依赖 UI 页面 | 通过 | UI 进程被杀后仍 `[PASS] with the UI closed the worker still answered and spoke` |
| 8 重启设备后核心链路正常 | 通过 | `[PASS] the worker came back by itself after the reboot`、`[PASS] after a reboot a new message is still spoken by the factory TTS`；`69_h_after_reboot.png` |

语音那一轮的原始事实（重启后那一轮，`60_acceptance.txt` 内 event seq 50）：

```
{"kind":"turn","session":"1967392","event_id":"t6-1145-1967392-g2","route":"skill",
 "skill":"time.query","user":"天猫精灵现在几点","reply":"now 17:29","reply_bytes":9}
{"ts":"...","kind":"tts","event_id":"t6-1145-1967392-g2","tts_id":52458xx,"outcome":"ok","dur_ms":1.9s}
```

（`t6-1145-...` 里的 1145 是重启后 worker 的新 pid，说明整条链路是重启后自建起来的。）

停止那一轮的原始事实：UI 点 `停止` → provider `insert(method=5)` → 原厂
`ALI_STUB_CMD_STOP_TTS` / `sm_process_stop_tts_msg`（`63_stop_logcat.txt` 14 行相关日志）→
执行器 journal 该事件 `outcome:"interrupted"`，`dur_ms` 远小于文本应有的时长。

---

## 九、对任务书禁止项的逐条对照

| 禁止项 | 实际情况 |
|---|---|
| 不再开发管理面板/调试探针 | 交付的是对话首页 + 历史 + 设置，无日志面板、无队列控制台 |
| 不做无价值设置项 | 设置页只读四类真实事实，无开关摆件 |
| 不替换原厂唤醒/ASR/TTS | 未改动 `:core`、KWS、ASR、TTS；仅新增只读出口 |
| 不做 barge-in | 未实现，`停止` 是显式按钮 |
| 不重构 T9-06R1 通道 | Inbox 校验、速率、队列上限、uid 白名单语义不变；只是把"属主"从一个探针 uid 换成产品 uid（脚本 `dev_30_channel_owner.sh`） |
| 不为架构完美而延迟 | 资源零引入（无 res/），构建沿用已验证工具链；先可装可用再谈细节 |
| 不只交文档/静态页 | 有 APK、有 30 项真机检查、有原始日志与截图 |

---

## 十、明确未完成 / 已知限制（不得算作已通过）

1. ~~**文字消息只有"照读"，没有 AI 回答。**~~ **已在 T9-07R1 修复**（`kind:"ask"` 走 AI，见文末补章）。原文如下，仅作历史记录：UI 的文本被 worker 直接塞进 TTS 队列念出来。
   要让它走 AI，需要给 Inbox 加"请模型回答"的新语义——那属于改已验收通道，本轮按禁止项没做。
   因此文字消息只显示用户气泡 + 播报状态，**不伪造助手回复**。
2. **助手回复的文案来自现有技能。** 例：`time.query` 的文案是英文 `now 17:29`（T8-14 技能自带），
   UI 原样显示，本轮不改编排文案。
3. **"正在识别"档位依赖 factory talk tap。** 该 tap 读 SessionManager 日志，日志轮转时可能拿不到，
   此时档位会退化为"待唤醒"，但一轮结束后的事件内容仍会出现（T9-06R1 F 项记录过同一现象）。
4. **无 barge-in**（按任务书）。
5. **设备上有第三方覆盖层。** `app.orchard.tv`（照片屏保）在空闲时会盖住整个界面，`com.shere.assistivetouch`
   （悬浮球）会压住输入框左下角并吞点击。两者都是设备预装/已装应用，本轮未改、未卸载；
   验收脚本在需要时 `force-stop` 屏保，并在 `SendText` 里对"焦点不在地界面/点击被吞"做重试。
   这是环境噪声，不是 UI 缺陷，但真实使用中用户需要点一下屏幕把它们赶走。
6. **重装 APK 可能改变应用 uid**，通道属主随之失效 → 必须重跑 `dev_30_channel_owner.sh`（它自己读 uid）。
   已写进部署步骤；未做"自动重绑"（那需要 root 常驻逻辑）。
7. **UI 首次启动不回放历史事件**（`primed` 水位）：事件目录是"活通道"不是历史库，历史来自本机会话文件。
   若希望"关掉 UI 期间发生的语音轮次"也进历史，需要额外做一次"上次已读序号"的持久化。
8. **未做**：多语言、主题切换、消息长按复制、历史搜索、通知、横竖屏适配（本机固定横屏 1024×600）、
   语音条动态波形、把设置里的错误类别映射成中文解释。

---

## 十一、部署与回滚

```sh
# 部署（一次）
adb push android/out/ai_worker            /data/local/tmp/stage_ai_worker
adb push android/run_ai_worker_inbox.sh   /data/local/tmp/stage_run_ai_worker.sh
#   → mv 到 /data/local/tmp/t9/t9_07/stage/{ai_worker,run_ai_worker.sh}（见 evidence/t9-07/10_deploy.txt）
su -c 'sh /data/local/tmp/t9/t9_07/t9_07_deploy.sh'          # 备份 → 停 → 装 → 起 → 打印事实
adb install -r android/t9_07_ui/build/voice_ui.apk
su -c 'sh /data/local/tmp/t9/t9_07/dev_30_channel_owner.sh'  # 把 Inbox/事件属主绑到当前 app uid
```

```sh
# 回滚（一条命令回到 T9-06R1）
su -c 'sh /data/local/tmp/t9/t9_07/t9_07_restore.sh'                 # 恢复 worker + wrapper 并重启
adb uninstall com.tgz02.voice                                        # 产品 UI 就是个普通应用
su -c 'sh /data/local/tmp/t9/t9_07/t9_07_restore.sh --purge-events'  # 需要时顺手清掉事件文件
```

回滚材料（设备）：`/data/local/tmp/t9/t9_07/backup/ai_worker.t9_06r1`
（`sha256=6d03c281a60d1429a270d07c264abd54db99239801d89e20a7fb55904bc90d76`）与
`run_ai_worker.sh.t9_06r1`（`sha256=d4267a3167d08aa0bbdacaae9a345b579a09c4df7fd66c8a429b0d35b017181b`），
首次部署时写入，后续部署不再覆盖。

设备现场（验收结束）：worker 自启正常运行，`events/` 为 `drwxr-x--- root u0_a60`，
`status.public.json` 为 `-rw-r----- root u0_a60`，Inbox 仍 `drwx------ u0_a60`，
原厂 `:core` 与守卫/hook 未动，TTS 队列与 journal 未被改动语义。

---

## 十二、本轮改动的文件

新增：

```
android/ui_events.h                        只读写出口的头（契约 + 上限 + 权限说明）
android/ui_events.c                        实现（原子发布、续号、淘汰、转义、权限）
android/t9_07_ui/                         产品 UI（5 个 java 文件 + manifest + build.ps1）
android/t9_07_deploy.sh                    部署（备份/装载/起服/打印事实）
android/t9_07_restore.sh                   回滚
android/t9_07/dev_*.sh                     设备侧辅助（通道绑定、证据快照、冒烟、journal 基线）
tests/t9_07_ui_events_test.c               host 测试 60 项
tests/run_t9_07_ui_events_tests.ps1        测试入口（写 evidence 日志）
tests/t9_07_device_acceptance.ps1          A–H 真机验收
evidence/t9_07_ui_events_unit_test.log     host 测试原始日志
evidence/t9_07_ndk_build.log               ARM32 构建日志
evidence/t9-07/                            真机验收原始日志 + 20 张截图 + 停止时的 logcat
```

修改：

```
android/ai_worker.h       + ui_events 配置字段（默认关闭）
android/ai_worker.c       + 出口初始化 / 两处发布 / 状态刷新 / 四个命令行开关（默认关闭）
android/build_t8_15.ps1   + ui_events.c
android/run_ai_worker_inbox.sh  + --ui-events / --ui-events-gid（gid 取自 allowed_uids 首行）
android/README.md         + T9-07 小节
```

未改动：`session_ctrl` / `utterance_gate` / `intent_route` / `skill_dispatch` / `tg_inbox` /
`tts_exec` / `hook_tts` / `hook_dialog` / 任何 init.rc 与 boot 脚本。

---

# T9-07R1 补章：文字输入接入 AI + 生产 APK 移除测试入口

基线：`a9b419093d3478608849028529d3911a73eeb1a6`。本轮只修两件事，界面、语音链路、
TTS Guard/Hook/`:core` 全部未动。

## 一、结论

- **文字输入现在真的走 AI**：UI → 私有 Inbox（`kind:"ask"`）→ Worker 复用
  `conv_context` + DeepSeek Provider + `tts_enqueue` → 原厂 TTS。UI 同时显示问题与回答，
  同一 `event_id` 贯穿 events / journal / play.public.json。
- **生产 APK 不再有任何测试入口**：`ConversationActivity` 不读 Intent、没有 `onNewIntent`、
  `handleIntent()` 已删除；自动化驱动 `TestConversationActivity` 只存在于 `-Test` 构建。
- 真机 **43 项检查全部通过（0 失败）**：`evidence/t9-07r1/60_acceptance.txt`。

## 二、请求类型协议（可校验，旧请求语义不变）

```json
{"v":1,"kind":"ask","event_id":"ui-1795516920210-d2d1","text":"What is the capital of France"}
```

| 字段 | 语义 |
|---|---|
| `kind` 省略 | **`say`**：T9-06 的语义——照念文本，不进模型。旧请求零变化 |
| `kind:"say"` | 同上（显式） |
| `kind:"ask"` | 让 Worker 用现有 AI 链路回答，回答再交给原厂 TTS |
| 其它值 / 非字符串 | **拒绝**（`unsupported kind` / `kind must be a string`），回执 `ok:false` 并归档到 `rejected/` |

回执（`result/<event_id>.json`）的 `stage` 直接说明这次被接受成了什么：
`queue`（say）/ `ai`（ask）/ `existing`（幂等命中）。设备实测：
`kind=say` → `{"ok":true,"stage":"queue"}` 且 tts_id 5246001 照念成功（`evidence/t9-07r1/80_legacy_say.txt`）。

## 三、Worker 内的文字轮（复用，不复制）

```
inbox(ask) → aiw_inbox_enqueue：只入 FIFO（深度 4，满则明确拒绝），立刻回执
           → 主循环 aiw_text_turn()（have_pend 时不抢语音轮，仍是一次一条）：
                cv_build_messages(&w->cv, system_prompt, text, …)   ← 与语音同一份上下文
                t6b_provider_complete_msgs(&w->prov, …)             ← 与语音同一个 Provider 配置
                tts_enqueue(&rep)                                   ← 与语音同一个 TTS 队列/执行器
                ef_note_enqueue(...)                                ← 自己的播报不会被回声过滤器当用户说话
                cv_commit_turn(&w->cv, text, reply)                 ← 这一轮进入对话历史
             → 发布 events：kind=turn, route=ai, status=ok, user=问题, reply=回答
```

失败（超时 / 网络 / 上下文构建失败 / TTS 入队失败）一律发布
`status:"failed"`、`reply:""`、`reason:"..."`：**不入队、不写上下文、不伪造回答**，
UI 显示为"回答失败：<真实原因>"。

事件记录新增两个字段（`ui_events`）：`status`（`ok`/`failed`）与 `reason`。旧的读侧不受影响。

## 四、UI 改动

- 提交带 `kind:"ask"`；回执 `stage=ai` → 用户气泡显示"AI 正在回答…"；
- `turn` 到达 → 追加助手气泡（同一 `event_id`，用户气泡已存在则不重复追加）；
- `failed` → 助手气泡"回答失败：<reason>"，同时用户气泡状态改为"回答失败"（不会永远停在"正在回答"）；
- 输入框增加 IME 发送键（`IME_ACTION_SEND`），真实键盘可以直接发送；
- **删除** `handleIntent()` / `onNewIntent()`：生产代码里没有任何读 Intent 的路径。

## 五、测试入口隔离

| | 生产 `voice_ui.apk` | 测试 `voice_ui_test.apk` |
|---|---|---|
| 构建命令 | `build.ps1` | `build.ps1 -Test` |
| 源码 | `src/` | `src/` + `src_test/` |
| Manifest | `AndroidManifest.xml` | `AndroidManifest.test.xml` |
| 含 `TestConversationActivity` | **否**（dexdump 验证） | 是 |
| 响应 `--es text/--ez auto/--es action stop` | **否**（实测无请求、无停止） | 是（含中文预填） |

真机证据：`[PASS] the production dex contains no driver class` / `[PASS] the test dex does contain it` /
`[PASS] passing --es text/--ez auto to the production APK produced no request` /
`[PASS] the driver activity does not exist in the production APK` /
`[PASS] in the test build the driver prefills and sends (Chinese included)`（截图 `77_f_test_build.png`）。

## 六、Host 测试

| 套件 | 结果 |
|---|---|
| **T9-07R1 新增**（kind 协议 / `status`+`reason`）`run_t9_07r1_kind_tests.ps1` | **43 / 43** `evidence/t9_07r1_kind_unit_test.log` |
| T9-07 回归（ui_events） | 60 / 60 |
| T9-06 回归（inbox 70 项） | 70 / 70 |

## 七、真机验收（43 项，全过）

`tests/t9_07r1_device_acceptance.ps1`：A–E 全程用**生产 APK**，问题用真实键盘输入、发送是真实点击。

| 项 | 结论 | 关键证据（`evidence/t9-07r1/60_acceptance.txt`） |
|---|---|---|
| A 文字 → AI → 原厂 TTS | 通过 | 问 "What is the capital of France" → 答 "Paris is the capital of France."；`text turn ok provider=deepseek`；journal 同一 event_id `outcome=ok`；UI 两条气泡（`71_a_text_ai.png`） |
| B 连续两问、上下文 | 通过 | "Remember the codeword ORANGE." → "What is the code word" → 答 "The code word is ORANGE."，两轮事件不同、顺序正确（`72_b_context.png`） |
| C 语音回归 | 通过 | 唤醒词 → 原厂 ASR（session 1969182）→ 答 "now 18:42" → 原厂 TTS；UI 显示识别文本与回答（`73_c_voice.png`） |
| D 真实失败 | 通过 | Worker 以 100 ms 超时重启后提问 → `status:"failed"`、`reply:""`、`reason:"deepseek timeout after 103ms"`，未入队；UI 显示"回答失败：…"（`74_d_failure.png`） |
| E 安全 | 通过 | 测试 Intent 无效；`dumpsys` 与 `aapt2` 均无任何权限；shell uid 写 Inbox → `Permission denied`；root 造的"外 uid"请求被丢弃且不产生事件 |
| F 构建隔离 | 通过 | dex/manifest 对比 + 测试构建实跑中文提问（"请用一句话介绍巴黎" → "巴黎是法国的首都，…"）后恢复生产 APK，仍不响应 Intent |

## 八、构建产物

| 产物 | 大小 | SHA256 |
|---|---|---|
| `out/ai_worker`（ARM32，0 warning） | 309,968 B | `f9bc834cd6b9e0ce9fab2c4a7fc3fbc333cef86c30811ee9ef57a35c24b11bf7` |
| `out/libtg_ttsguard.so`（未改） | 42,712 B | `67d96b38870bb540a9d7f11b6e902739e5b2fcb92eaacb095e5d3d7bde0cf9e0` |
| `t9_07_ui/dist/voice_ui.apk`（生产） | 33,165 B | `9eb6444c1dbe185e00f535a204cbc4e216f495dcfd9cd7acd9f9a42d0e3f7714` |
| `t9_07_ui/dist/voice_ui_test.apk`（测试） | 33,165 B | `89541045f18cb4bca684aed0db5e31d85f4252072e46a577d8290c2185b93a96` |

## 九、本轮仍未做到 / 需要知道的事

1. **文字轮不重试**：ASR 轮失败会退避重试，文字轮失败会把 `failed` 直接交给 UI（用户重发即可）。
   这是有意的：重试会让 UI 的"失败"状态变得不可信。
2. **设备输入法是拼音 IME**：`input text` 会把部分英文单词转成中文（本轮验收里
   出现过 `Tell么啊story about the sea`）。这是设备侧输入法行为，不是应用问题；
   验收脚本因此对"问题文本是否原样到达"做校验并在被改写时重试，失败项（D）只依赖 Worker 的结论。
   真实用户用键盘打字不受影响。
3. **`say` 通道保留但不被产品 UI 使用**：UI 只发 `ask`；`say` 留给旧脚本/回归，语义未变。
4. 其余限制（无 barge-in、第三方覆盖层、重装 APK 会变 uid 需重新绑定、事件目录只保留最近 512 条、
   UI 首次启动不回放旧事件）与 T9-07 第十节一致，本轮未改变。
