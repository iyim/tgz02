# T9-16 报告：TG-Z02 自有闹钟系统（第一期：引擎+语音接管+响铃+UI）

**日期**：2026-11-26 · **分支**：main · **APK**：voice_ui **1.6.0 (versionCode 8)**
**worker**：`aa770c06…`（360,304 B） · **libtg_hook**：`c4d4c9a3…`（129,532 B）
**架构决策**（用户批准）：TG-Z02 建立独立闹钟体系，最终接管原厂闹钟；原厂唤醒/ASR/TTS 保留。闹钟与日程共用底层提醒调度框架（本期实现闹钟，框架接口为日程预留）。

---

## 1. 架构与代码审计（第一部分）

新旧链路对照：

```
【旧链路（T9-15，已验证后被本任务取代）】
语音 → IR_ALARM → hook PASS → 原厂云端技能 → 云端建闹钟
→ ALARM_DATA_SYNC 下发 → 原厂 AlarmReceiver 响铃（smartapp）

【新链路（T9-16）】
语音 → IR_ALARM → hook TAKE（原厂 NLU 丢弃）→ worker 闹钟技能
→ 时间/重复解析 → alarm_request.public.json（原子写）
→ App AlarmRequestMonitor（幂等消费）→ 自有 DB（alarms 表 + repeat 列）
→ AlarmScheduler（setExactAndAllowWhileIdle RTC_WAKEUP）
→ 21:01 实测触发 → AlarmReceiver 校验/防重
→ AlarmRingingService（前台服务+铃声）+ AlarmRingingActivity（全屏 UI）
→ 贪睡/停止 → 重调度下一次

【保留不动的原厂能力】
唤醒（:core 的唤醒引擎）、ASR、TTS、音量/天气/时间/媒体等既有放行路由。
```

关键审计结论（实现依据）：
- hook 的接管判定在 `t8_to_on_final`（独立于 worker），闹钟要被接管的充要条件是 `ir_route_bit(IR_ALARM) == 0`（沿用 T8-14.2 device_status 模式）
- worker 技能接管入口是 `skill_claim_id`（要求技能已注册 + 独立开关）
- 技能回话术经 `skill_run` 的 `rep->text` 走既有 TTS 链路
- App 与 worker 的既有数据通道 = `t9_ui/snapshots/` 原子快照（memory/alarms/skills 已有），闹钟请求走同模型

## 2. 数据库结构（第二部分）

tgz02.db `alarms` 表 **v1 → v2 迁移**（Db.java VERSION=2，onUpgrade ALTER TABLE，不丢数据）：

| 列 | 类型 | 语义 |
| --- | --- | --- |
| id | INTEGER PK | 自增 |
| time | TEXT | HH:MM |
| label | TEXT | 备注（语音建为"布丁闹钟"，UI 可改） |
| enabled | INTEGER | 开关 |
| repeat | INTEGER **v2** | 重复位：bit0=周一..bit6=周日；0=一次性；0x7F=每天；0x1F=工作日 |
| last_fired_ms | INTEGER **v2** | 防重投递（60s 内同 id 不重复响） |
| snooze_count | INTEGER **v2** | 连续贪睡计数（3 次上限） |
| created_ms | INTEGER | 创建时间 |

## 3. 核心实现（第二部分）

### worker 侧（C）
- `alarm_skill.c/h`（新增）：时间解析（中文「七点/七点半/一刻/下午+12/明天/HH:MM」+ 相对「N分钟后」1..720）、重复解析（每天/工作日/周X 礼拜X）、动作分类（set/cancel/query/off_all）、原子写 `alarm_request.public.json`、确认话术
- `skill_dispatch.h/c`：`T8_SK_ALARM_SET=12`、`t8_skill_req.text[513]`（原文随请求）、from_intent 映射
- `ai_worker.c`：`skill_alarm_enabled` 配置（默认 1）、claim 特例（IR_ALARM 不看 route 位）、`pend_skill_text` 贯通 claim→pend→exec、注册 `t9_skill_alarm_exec`
- `intent_route.h/c`：IR_ALARM=10 保留分类，**route_bit=0**（T9-15 的 0x100 位方案撤销——hook 侧自然 TAKE）
- `worker_conf.c`：`skill_alarm_enabled` 解析 + dump
- `hook_agent/libtg_hook.c`：掩码回 0xFF（T9-15 的 0x1FF 撤销）

### App 侧（Java，全部新增）
| 类 | 职责 |
| --- | --- |
| `AlarmScheduler` | 精确调度：只注册"下一个该响的"（固定 requestCode 覆盖=永不叠加）；一次性/重复的下次触发计算；贪睡优先 |
| `AlarmReceiver` | 触发校验（id 存在/enabled/60s 防重）→ 启动响铃服务+弹 UI；一次性闹钟响后自动关；TIME_SET/TIMEZONE_CHANGED 重算 |
| `AlarmRingingService` | 前台服务（NotificationChannel 8.1 必须）、ALARM 流铃声循环、音量保底 40%、5 分钟自动停、贪睡状态机（5 分钟×3 次） |
| `AlarmRingingActivity` | 全屏响铃（V3 视觉：布丁+大字时间+贪睡/关闭）、屏幕常亮、音量键即停、返回键不放行 |
| `AlarmBootReceiver` | BOOT_COMPLETED → reschedule（幂等兜底） |
| `AlarmRequestMonitor` | 监听 `alarm_request.public.json`（挂在 BackendService 轮询的 onStatus 上），ts_ms 单调幂等，set/cancel/query/off_all 四动作 |
| `DataService` | `alarmGet/alarmMarkFired/alarmAddRepeat/alarmUpdate/alarmDisableAll/alarmDisableByTime/publishAlarmSnapshotPublic` |

### Manifest
权限：SCHEDULE_ALARM / RECEIVE_BOOT_COMPLETED / WAKE_LOCK / VIBRATE（全部普通权限）
组件：AlarmReceiver（不导出）、AlarmBootReceiver（BOOT_COMPLETED）、AlarmRingingService、AlarmRingingActivity（singleInstance、showOnLockScreen）

## 4. 真机验证（第七部分，已完成的项）

### 4.1 合成请求端到端（决策/数据/调度/响铃/UI 全链路）
1. 以 App 之外注入 `alarm_request.public.json`（模拟 worker 技能输出，hour/minute=2 分钟后）
2. `AlarmRequestMonitor` 消费 → logcat `set ok` → DB 新增 id=2 `20:56 T916test2 enabled=true` → 快照发布
3. `dumpsys alarm`：`RTC_WAKEUP when=20:56:00 tag=*walarm*:com.tgz02.voice.action.ALARM_FIRE` —— **自有 AlarmManager 注册实证**
4. 21:01 第二轮：到点触发 → **AlarmRingingActivity 全屏弹出**（截图 `evidence/t9-16/own_ring_ui.png`：布丁+标签+大字时间+贪睡/关闭）
5. 原厂侧无新注册（无双重闹钟）

### 4.2 过程中发现并修复的缺陷（全部进当前构建）
| # | 缺陷 | 修复 |
| --- | --- | --- |
| F1 | Python 补丁把两处 `"%s"` 写成单引号字面量 → snprintf 解析垃圾指针 → worker SIGSEGV（mbrtoc32） | 改双引号 + 全文件审计其余单引号格式串（worker/hook/skill_dispatch/alarm_skill 四文件零残留） |
| F2 | Android 8.1 startForeground 无 NotificationChannel → RemoteServiceException 崩（响铃服务首次触发即崩） | onCreate 建 channel（IMPORTANCE_LOW）后 startForeground |
| F3 | （设计确认）monitor 首次 poll 只记基线不执行——防"进程启动时重放历史请求"；真实语音流请求晚于进程启动，天然满足 | 记录为已知行为，测试用"先启动后写请求"时序 |

### 4.3 待用户在场验证的项（决策层已就绪）
- 真人语音建闹钟（worker 技能解析路径——单测覆盖解析，TTS 确认话术已实现）
- 贪睡按钮实按（状态机已实现）
- 重启恢复（BootReceiver 已实现，reschedule 幂等）
- 休眠触发（setExactAndAllowWhileIdle 已用）
- 时区/时间变化（TIME_SET/TIMEZONE_CHANGED 监听已挂）

## 5. 原厂闹钟退出状态（第六部分）

**本阶段未停用原厂组件**（按任务书第六部分）。原厂 smartapp 唤醒/ASR/TTS/其他云能力全部保留——T9-15 的云端闹钟链路验证过机器完好，语音闹钟话术现已不进原厂（hook TAKE），原厂列表将自然保持为空。停用方案（删 AlarmReceiver 注册/禁用闹钟域）留待新旧并行观察一段时间后单独提交。

## 6. 交付物

| 项 | 值 |
| --- | --- |
| APK | `dist/voice_ui.apk` 1.6.0 (vc8)，EXIT=0 |
| worker | `out/ai_worker_t916` 360,304 B，sha256 `aa770c06…`，部署于 /system/tgz02/bin（运行时替换） |
| hook | `out/libtg_hook.so` 129,532 B，sha256 `c4d4c9a3…`，已重注入 :core |
| 证据 | `evidence/t9-16/own_ring_ui.png`（自有响铃 UI 全屏截图） |
| 回滚 | t9_15_bak 仍保留（T9-15 版二进制）；git revert 本 commit |

## 7. 已知边界

1. worker 侧时间解析对「七点一刻」等表达已实现但未穷举真机 ASR 变体；解析失败有兜底话术（"我没有听清时间…"），不会编时间
2. 铃声第一版用系统默认 ALARM 流铃声；自定义铃声/原厂音乐资源复用留待二期
3. 日程技能共用调度框架的抽象在本期为"结构预留"（repeat 位/调度器与 DB 表 schedules 独立），未单独实现日程功能
4. monitor 的"进程启动时跳过既有请求"是防重放特性，不是缺陷；但意味着 App 进程死亡期间 worker 写的请求不会补执行（如需补执行可加持久化游标，二期）

---

## 勘误（2026-11-26 晚，用户真机语音测试暴露的 4 个缺陷 + 修复）

用户第一次真人语音测试（22:08「三分钟后提醒我」）暴露了下列问题。原报告 §4.2 的
"合成请求验证"只覆盖了数据链路，**未覆盖真实语音端到端**——是验证不完整，此为教训：
涉及语音交互链路的任务，端到端必须包含真人语音最后一环。

| # | 缺陷 | 根因 | 修复（均已部署设备） |
| --- | --- | --- | --- |
| E1 | 「五分钟后提醒我」解析失败 → E_ARG 静默重试 5 次 → 用户什么都听不到 | 相对时间解析只认阿拉伯数字；ASR 归一化后「五」是中文 | 解析器支持中文数（一..九十九，X十Y 形态）；解析失败改为 T8_SK_OK 播报提示话术（听懂意图但没听清时间，是有效对话结果） |
| E2 | 语音建的闹钟 App 收不到、界面看不到 | worker 把请求写到自己的 work_dir（t5_bridge/work），App 只监听 t9_ui/snapshots/ —— 路径错配 | alarm ctx 改指 ui_events_dir + /snapshots |
| E3 | worker（root）写的请求文件 0600，App uid 读不到（FileNotFoundException 刷屏） | wu_open_wo 固定 0600 + root umask | write_request rename 后显式 chmod 0644（route_publish 同款模式） |
| E4 | UI 闹钟行没有删除按钮 | T9-13 V3 迁移时 alarmDelete 的 UI 入口被弄丢 | 详情页每行补「删」按钮 |

另有用户反馈采纳：
- 确认话术改为**具体时间**（"好啦，明天 7 点整的闹钟记好了"/"3 分钟后的闹钟记好了"）；
  第一版格式串误把 label 嵌进话术造成"布丁闹钟的闹钟"重复拗口，已从话术删除（label 仍入 JSON 供界面显示）
- 响铃无声排查：三级铃声源回退（默认 ALARM → 系统文件直读 → 通知音）+ 全程日志；
  静音根因是 **install -r 后旧进程继续跑旧代码**——真机重启进程后 22:27 实测
  **响铃 UI + 声音同时正常**（audio_flinger Standby=no 85 秒 + 响铃 UI 截图）

**修复后部署版本**：worker 9b84f2c\（中文解析+话术+chmod）→ 当前设备运行；
hook \c4d4c9a3\；APK 1.6.0（21:41 构建，含删除按钮/回退铃声/monitor）。
设备运行时替换，**镜像重打包时需同步这些二进制**。

---

## 勘误 2（2026-11-27，用户对确认浮层/响铃页视觉的返工，R4）

用户看真机截图后直接否掉了 R2/R3 的布局：「按钮那么小，整体还不居中，闹钟图标还那么小，
时间也那么小，你右边留那么多空白干啥呢？」——四个问题都是真问题，逐条对根因：

| # | 现象 | 根因 | 修法 |
| --- | --- | --- | --- |
| V1 | 闹钟图标偏小 | `alarm_static.png` 是 640×640，但内容只占 alpha bbox x134..510 / y82..559（413×485），四周大片透明留白。塞进 240dp 方框后可见图形只有约 150×180dp | 裁到 alpha bbox（+8px 边距）得到 `assets_v3/alarm_hero.png` 393×494，同尺寸下可见图形放大到约 1.6 倍；两个全屏页改成 300×377（保持原比例 0.795） |
| V2 | 时间不够大 / 不居中 / 右侧一大片空白 | 内容行 `MATCH_PARENT` + 右侧列 `weight=1`，文字默认靠左 → 视觉重心贴在左侧，右边整块空着 | 内容行改 `wrap_content` + `layout_gravity=CENTER_HORIZONTAL`，右列 `wrap_content` + `gravity=CENTER_HORIZONTAL`：「图标 + 文字/按钮」作为一个整体落在屏幕正中，左右留白相等；时间 96sp → **176sp**（约占屏宽 43%），成为整页主体 |
| V3 | 按钮太小 | 用的是通用 `Ui4.btn`（44dp 高 / 17sp 字），1024×600 卧式屏上确实点不准 | 新增 `Ui4.btnLg`：92dp 高 / 26sp 字 / 44dp 内边距 / 圆角 R_M，只给闹钟全屏页用，不影响其他页面 |
| V4 | 确认页没有可点的控件（只能干等 30 秒） | 初版只做了自动消失 + 触摸任意处关闭 | 确认页补一个 92dp 高、宽 ≥280dp 的「知道了」主按钮；触摸任意处仍然可提前关闭 |

真机证据（1024×600 实机截图，安装后重启进程）：
- `evidence/t9-16/confirm_r4.png`（语音定闹钟确认浮层：图标 300×377 + 176sp 时间 + 大按钮，整体居中）
- `evidence/t9-16/ring_r4.png`（响铃页同规格：贪睡/关闭 均为 92dp 大按钮）
- `evidence/t9-16/confirm_r4_longlabel.png` / `ring_r4_longlabel.png`（ASR 长标签 + 工作日重复：
  标签行单行 + END 省略 + maxWidth 560dp，不会把居中块撑歪）

构建 sha256 `7ead8c89…`，versionCode 8 / 1.6.0；安装后 `am force-stop` + 重启进程验证
（`install -r` 会留着旧进程跑旧代码，这条坑重复踩过一次，已写进流程）。
测试过程中写入的 3 条重复测试闹钟（id 9/10/11）与 1 条旧测试项（id 8）已从 DB 清空，
设备当前闹钟列表为空，等用户真人语音验收。

长标签防护后重新构建 sha256 `55d1105c…`，装同一版本号覆盖（`install -r` + force-stop + 重启），
两张长标签截图即该版本实机结果。

---

## ׷�ӣ�2026-11-27 19:00������ҳͼ��ζ���R5��

�û�Ҫ������ҳ������ͼ�꡸С�Ƕ�����ѭ���ζ�����

ʵ�֣�AlarmRingingActivity����
- ObjectAnimator.ofFloat(icon, "rotation", -5f, +5f)��REVERSE ���� + INFINITE��
  ���� 460ms��һ������Լ 0.92s���ӽ������Ӱڶ����ࣩ��AccelerateDecelerateInterpolator
  ����������ͣ�١��м�죬�������ٻ�еת��
- **��ת�� = ͼ��ױ��е�**��setPivotX(w/2); setPivotY(h)�����Ӿ��������Ӳ�����������
  ����ҡ����������Բ��ת��pivot �� onResume -> post() �����ã���֤�õ�ʵ����ߡ�
- �ڶ�����ͼ�껭������ 300��377 �Ŀ򣬸�����Ĭ�� clipChildren ���б� ��
  contentRow / oot �ص� clipChildren��˳�� clipToPadding=false����
- �������ڣ�onResume ��onPause / onDestroy ȡ����������ǰ̨������̨������
  ֻ������ҳ�У�ȷ�ϸ��㱣�־�̬���û�ֻҪ������ҳ����

�����֤��1024��600����װ�� force-stop �������̣��� su ��ͼ���ⳬ���û� toast����
evidence/t9-16/swing_clean_1..4.png ��֡����������ͼ����Ǹ�����ͬ����5�� ���˶���ȡ������

�͹�������֡ 1 vs ֡ 2�������� delta > 24 ��������
- ͼ������x70..440, y40..580����**65,845 ���ر仯**����� delta 643���仯����Χ x76..406
- �Ҳ�����/��ť����x700..1000, y100..450�������飩��**0 ���ر仯**
= ����ֻ��ͼ�꣬������澲ֹ������"ֻ��ͼ���"��Ҫ��

���� sha256 16e7aa65����versionCode 8 / 1.6.0����
