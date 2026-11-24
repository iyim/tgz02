# T9-08B 语音主界面 + 更多功能入口（真机交付）

- 基线：`7663434f7d8ec9ee23bd8241eb7574f61095f4d9`（T9-08A-R2 报告）
- 范围：只动 UI 结构。原厂 KWS/ASR/TTS、Guard/Hook、TTS 执行器、worker 语音链路、inbox 协议一行未改。
- 结论：三区结构落地；**已开发的文字/历史功能全部保留并可从「更多功能」进入**；语音主链路真机回归通过。

---

## 一、改了什么

### 1. 新增（2 个文件）

| 文件 | 作用 |
|---|---|
| `src/com/tgz02/voice/VoiceHomeActivity.java` | 新的 LAUNCHER：纯语音主屏。状态条、当前一轮的「你说 / 助手」、`停止播报`、顶栏 `设置` `更多`。**没有输入框、没有发送、没有历史**；不读 Intent、不写 inbox、不碰 SessionStore |
| `src/com/tgz02/voice/MoreActivity.java` | 「更多功能」入口页：一项 `文字对话与历史记录` → 启动**原封不动**的 `ConversationActivity`；底部说明"暂时保留，核心稳定后再决定取舍" |

### 2. 修改

| 文件 | 改动 |
|---|---|
| `AndroidManifest.xml` | LAUNCHER 从 `ConversationActivity` 移到 `VoiceHomeActivity`；新增 `MoreActivity(exported=false)`；`ConversationActivity` 保留但不再是入口 |
| `AndroidManifest.test.xml` | 同步上述调整；测试驱动 `TestConversationActivity` 仍只存在于此构建 |
| `SettingsActivity.java` | 新增两段**占位**：`大模型配置（计划于 T9-08C）`、`长期记忆（计划于 T9-08D）`；原有状态展示不变 |
| `VoiceBridgeClient.java` | 构造函数增加页面名（`home` / `conversation` / `settings`），`poll start/stop` 日志带上页面名（用于证明"同一时刻只有一个页面在轮询"）；`stopPolling()` 加幂等判断 |
| `ConversationActivity.java` | 仅构造函数改名（`"conversation"`），**其余代码未动** |

**没有删除任何东西**：`SessionStore`、`submit()`、`pollReceipts()`、历史弹窗、新对话、清除按钮全部保留。

### 3. 为什么「更多功能」只有一个入口

历史列表是 `ConversationActivity` 内部的弹窗；拆成独立入口就必须给 Activity 传参（`--es` 之类），
而那正是 T9-07R1 从生产 APK 里清掉的测试入口。入口收敛成一个、复用现有页面，是唯一不破坏
已验收项的走法。菜单里也没有放"马上就要有"的假条目。

---

## 二、真机验收

分成两次真机运行，因为语音/输入需要设备处于"屏幕亮、麦克风空闲"的状态，而结构检查与
"停止播报"会故意让它长时间播报——放在一个脚本里会互相干扰。两份日志都是当次真实运行。

### 2.1 结构 / 停止 / 切换 / APK：`evidence/t9-08b/60_acceptance.txt`（**33 项，0 失败**）

| 项 | 结论 | 证据 |
|---|---|---|
| 主屏是 LAUNCHER，且**没有**输入框/发送/历史 | 通过 | `uiautomator dump` 里 `android.widget.EditText` 计数 = 0；无"发送"、无"历史"；有 `停止播报`/`设置`/`更多`（`80_home.png`） |
| 主屏 `停止播报` | 通过（附已知缺陷 KF-1，见第四节） | 长播报被截断（journal `outcome` 非 `ok`，或 state 直接回到 idle）；`82_before_stop.png` / `83_after_stop.png` |
| 「更多功能」页 | 通过 | 菜单打开、列出 `文字对话与历史记录`、菜单本身无输入框；点进去打开**同一个** `ConversationActivity`，其输入框仍在（`84_more_menu.png` / `85_conversation.png`） |
| 页面切换 ×3 | 通过 | `88_switch_poll.log`：`home:stop → conversation:start → conversation:stop → home:start …`；无任何页面同时起两个轮询者；结束时仍是主屏在轮询（`89_after_switching.png`） |
| 生产 APK 仍然封闭 | 通过 | dex 无 `TestConversationActivity`、**无 `getStringExtra`**；manifest LAUNCHER 在 `VoiceHomeActivity`；无任何 `uses-permission`；`--es text/--ez auto` 不产生请求 |

### 2.2 语音轮 / 文字提问 / 历史 / 新对话：`evidence/t9-08b/61_voice_text.txt`（**12 项，0 失败**）

| 项 | 结论 | 证据 |
|---|---|---|
| 语音一轮显示在主页 | 通过 | 唤醒词 → 原厂 ASR（`session=1969651`）→ 技能回答 → 原厂 TTS；主屏显示 ASR 原文与回答（`90_voice_turn.png`） |
| 「更多功能」→ 文字提问仍走 AI | 通过 | `route":"ai","status":"ok"`，回答"巴黎，法国的首都就是巴黎。"（`91_text_ask.png`） |
| 历史弹窗 / 新对话 | 通过 | `历史会话` 弹窗正常打开；会话文件数 9 → 10（`92_history.png`） |

---

## 三、构建产物

| 产物 | 大小 | SHA256 |
|---|---|---|
| `t9_07_ui/dist/voice_ui.apk`（生产） | 33,165 B | `04873ba8fbf1f7ac317594bc3da8b4ca70be02b4e58ebbca3d9edca6a40b12dc` |
| `t9_07_ui/dist/voice_ui_test.apk`（测试） | 37,261 B | `884436661554c91eb73d7096f6fb25877471833681dc614de98278b67685ea2f` |
| worker / guard | 未改动 | `9c237ae1…` / `67d96b38…`（本轮没有重建 worker） |

---

## 四、停止播报的缺陷（KF-1）：定位见独立文档，**证据已更正**

`停止播报` 目前不能算"终止操作"：UI 的停止只走 provider `insert(method=5)`，执行器不知道这是
用户主动停止；工厂反馈若落成 `onNotify status=3 → "error"`，`TtsExec` 会把它当成可重试的播放失败，
把**同一个 event_id** 重新入队，2 秒后再播一遍。

**证据更正（审查发现的）**：本报告上一版引用的 `error → retry → interrupted` 来自 21:04 的一次
**手动运行**，不在本次提交的验收日志里。本次 `evidence/t9-08b/60_acceptance.txt` 中停止测试的
事件是：

```
{"kind":"tts","event_id":"saystop-214431","tts_id":5246480,"outcome":"interrupted","dur_ms":8695,"attempts":1}
```

即本次**没有重现**重播。正确表述是：机制存在且有一次完整 journal 可证（21:04 那次），但不是每次
都发生（`interrupted` 与 `error` 两条日志谁先到，决定终态还是重试）。因此既不能说已修复，也不能
把"这次没重播"当成通过。

完整定位（三条停止路径、outcome 映射、终态/重试分岔、三个缺陷点的行号、两个可选修复落点、
修复后的 7 条验收）见 **[T9_08B_R1_STOP_TRACE.md](T9_08B_R1_STOP_TRACE.md)**。本轮只定位，
未改代码。
## 五、未做 / 仍然是占位

- 大模型配置、长期记忆：设置页里只有"尚未实现（计划于 T9-08C / T9-08D）"的占位行；
- 记忆注入的 P1 修正（不得用 `role:system` 承载用户数据）已记入审计文档 R3 决议，随 T9-08D 实现；
- 技能系统（T10）未动。

---

## 六、回滚

UI 是普通应用，回滚只是装回上一版源码构建的 APK：

```sh
git checkout 7663434f -- my-doc/07_ai_bridge/android/t9_07_ui
powershell -File my-doc/07_ai_bridge/android/t9_07_ui/build.ps1
adb install -r my-doc/07_ai_bridge/android/t9_07_ui/dist/voice_ui.apk
```

worker、inbox、原厂语音链路均未改动，因此**不需要**任何设备侧回滚。
