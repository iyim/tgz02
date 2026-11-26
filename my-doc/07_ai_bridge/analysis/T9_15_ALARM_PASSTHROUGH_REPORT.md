# T9-15 报告：语音闹钟放行原厂（方案 A）——接管闸门加 IR_ALARM 白名单

**日期**：2026-11-26 · **分支**：main · **类型**：worker/hook C 层修改 + 真机部署
**背景**：T9-14 收尾后用户语音测试发现"定闹钟"被接管到 LLM（回复"没法帮你设闹钟"）。
逆向原厂后确认闹钟域在 smartapp `basedomain.ui.alarm`，机器完好但列表空（云端同步），接管闸门把闹钟话术截走是根因。用户批准方案 A：闹钟话术放行原厂。

---

## 1. 原厂闹钟架构逆向结论（本任务先决产出）

| 组件 | 位置（反编译/真机实证） | 职责 |
| --- | --- | --- |
| `AlarmReceiver` | smartapp `:business`，manifest 无 intent-filter（PendingIntent 精确触发） | 到点响铃执行器 |
| `AlarmQueryReceiver` | exported，action `com.alibaba.ailabs.genie.action.AlarmQuery` | 闹钟列表查询（广播探测可实时应答） |
| `AlarmScheduleSyncDataReceiver` | `:business` | 云端闹钟数据同步（`ALARM_DATA_SYNC`） |
| `AutoStartBroadcastReceiver` | BOOT_COMPLETED | 开机重注册 |
| 铃声资产 | smartapp `res/raw/default_ring.mp3` + `sound1/2.wav` + `alarm_ring_bg_{child,music,custom}.webp` | 儿童/音乐/自定义三类闹钟 |
| GenieChildren | 仅为儿童模式启动器壳（0 个 dex、1 个类），闹钟逻辑与其无关 | — |
| intermediary.apk | `AlarmManagerCompat.setAlarmClock` 状态同步，不执行响铃 | — |

**真机验证机器存活**：`dumpsys alarm` 有 3 个 smartapp 注册（同步心跳 17:36、22:00、明早 07:30）；`AlarmQueryReceiver` 广播应答 `BaseDomain: Alarm is EMPTY!`（进程 1414 实时响应）。**列表空 = 无云端闹钟下发，机器本身完好。**

## 2. 根因（接管闸门，代码级）

`nlu_takeover.c t8_to_on_final()`：ASR 文本先过 `ir_classify`——原路由表只有 volume/weather/time/screen/media/stop/exit/device **没有闹钟** → `hit=0` → `why=T8_TO_WHY_AI` → 会话标记 `T8_TO_TAKE` → `t8_to_should_drop` 返回 1 → **原厂 NLU 结果被丢弃** → 闹钟话术落到我们的 LLM。

## 3. 修改内容

| 文件 | 修改 |
| --- | --- |
| `intent_route.h` | 新增 `IR_ALARM = 10`；`T7B_ROUTE_ALARM = 0x100`；`T7B_ROUTE_ALL 0xFF → 0x1FF` |
| `intent_route.c` | `ir_match_alarm()`：命中词 16 个（闹钟/叫我起床/喊我起床/叫我起来/提醒我/设个提醒/提醒一下/定个闹钟/设个闹钟/定闹钟/设闹钟/取消闹钟/关掉闹钟/删掉闹钟/闹钟响了/贪睡）+ 否决词 15 个（为什么/怎么/如何/是什么/说说/讲讲/聊聊/谈谈/起源/历史/发明/原理/故事/儿歌/诗）；classify 派发链插在 time 之后；route_bit/name/from_name 补齐 |
| `worker_conf.c` | `route_intents` 解析加 `alarm` token |
| `hook_agent/libtg_hook.c` | `g_nlu_mask` 默认值与 env 上限 `0xFF → 0x1FF` |
| `tests/t9_15_alarm_route_unit_test.c`（新增） | host 单测：正向 10 / 否决 4 / 回归 6 / 位名称 4 |
| `tests/t9_15_live_decision_test.c`（新增） | 设备端决策层实测：dlopen **已部署的** libtg_hook.so，调真实 `t8_to_on_final` |
| `build.ps1` | 修复源文件列表：按部署溯源（t9_07r1f_ndk_build.log）补回缺失的 11 个模块（utterance_gate/conv_session/t7_dup/session_ctrl/skill_dispatch/talk_tap/tg_inbox/ui_events/tg_http/model_provider/model_cfg/model_json + provider 家族）——此前列表在重构中残缺导致链接失败 |

## 4. 构建与部署（真机，哈希可溯源）

| 产物 | sha256 | 状态 |
| --- | --- | --- |
| ai_worker `f57ff678…`（355,796 B） | 已替换 `/system/tgz02/bin/`，运行中 pid 24423，`/proc/exe` 实证 | ✅ |
| libtg_hook.so `c99e3730…`（129,532 B，0 warning） | 已替换并重注入 `:core`（pid 23767，hooked=1） | ✅ |
| 回滚备份 | `/data/local/tmp/t9_15_bak/`（ai_worker.bak `1add1012` = M2 记录、libtg_hook.so.bak `5be22690` = M2 记录） | ✅ |
| host 单测 | **24/24 通过**（`我想听故事`→none 经 HEAD 对照验证为既有行为非回归，期望已修正并注明） | ✅ |
| **设备端决策层实测** | **7/7 通过**：`天猫精灵定早上七点的闹钟`/`明天早上七点叫我起床`/`提醒我…` → **PASS(factory)**；`闹钟是谁发明的`/`我想听故事` → TAKE(AI)；weather/volume 回归 PASS | ✅ |

二进制内规则实证：拉取设备 ai_worker 搜串，`alarm`/`alarm.keyword`/`IR_ALARM_HIT`/`IR_ALARM_VETO` 全部在位。

## 5. 远程语音播放测试的边界（如实记录）

尝试了三条远程放声路径，均未触发唤醒（这是测试手段的物理限制，不是修复失败）：
1. Windows SAPI Huihui 合成"天猫精灵"+指令 → 唤醒引擎不识别（声学模型不匹配合成音）
2. 播放 T8 时期真机录音 wake48/wake_clock48.wav → 未触发（**AEC 回声消除**按设计抑制扬声器声，mic 拿到的是被抵消的信号）
3. 直接 fire `AlarmReceiver` → 静默无响（列表为空无可响闹钟，与"机器完好但列表空"一致）

**结论：决策层修复已在本机 ARM 上用真实部署 .so 全量验证；最后一环（真人对设备说一句）只能由人完成。**

## 6. 预期真机效果与用户验收步骤

说"**天猫精灵，明天早上七点叫我起床**"：
1. 决策层 PASS → 原厂 NLU/云端技能接管（回复应变成原厂风格确认，不再是 deepseek 文风）
2. 云端建闹钟 → `ALARM_DATA_SYNC` 下发 → `dumpsys alarm` 出现 07:00 注册、`AlarmQueryReceiver` 应答从 EMPTY 变有闹钟
3. 到点 `AlarmReceiver` 响铃（default_ring.mp3）

若云端技能解析响应正常，全程无新代码。

## 7. 回滚

单文件级：`/data/local/tmp/t9_15_bak/` 两个文件 cp 回 /system + 重启进程（或直接重启设备后由 boot_stack 拉起旧二进制——但 /system 已是新文件，需先 cp 备份回）。git 层面 revert 本次 commit 即可还原源码。

## 8. 尚未验证

1. 真人语音端到端（决策层已验证，差最后一次真实 ASR 通行）
2. 原厂云端技能是否要求登录态/账号绑定才能建闹钟（若云侧拒绝，需看 smartapp 日志再定位——那是云端问题不是本地代码问题）
3. `贪睡/取消闹钟/删掉闹钟` 等次级话术的原厂行为
