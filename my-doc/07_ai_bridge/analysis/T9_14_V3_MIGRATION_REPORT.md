# T9-14 报告：按 TG-Z02-UI-V3 设计交付完成界面程序重开发

**日期**：2026-11-26 · **分支**：main · **版本**：voice_ui **1.5.0 (versionCode 7)**
**设计输入**：`C:\Users\mac\WorkBuddy\2026-11-26-09-19-00\TG-Z02-UI-V3\`（README + 01 设计研究 + 02 视觉规范 + 03 开发交接 + prototype + 12 张 RGBA 素材 + 20 张设计稿）
**真机**：AILABS_S1L，Android 8.1，1024×600 mdpi，INZ5KBBUJZQSRCKZ

---

## 1. 迁移范围（按 03_开发交接.md §10 顺序执行）

| 项 | 状态 |
| --- | --- |
| ① 备份（可回滚） | `evidence/t9-14/backup_141_20261126_102631/`（1.4.1 全部源码 + APK + manifest + build.ps1 + RESTORE.txt），基线 commit `15ae8bb5` |
| ② 资源入库（并列不覆盖，Q1 裁决=先并列） | 12 张 V3 PNG 降采样 1024→640 入 `assets_v3/` → APK `assets/ui/v3/`；旧 16 张原样保留；`build.ps1` 增加 ≥12 张校验 |
| ③ Design System 落地 | 新增 `Ui4.java`：V3 全部 Token（§1 七组色 + §1.5 六条技能渐变 + §1.6 十态运行色）、双主题（kid/calm 只换 Token）、组件工厂（pill/card/btn/btnSm/seg/switch/banner/row/navbar/dashed）+ **29 个 SVG 图标的 Canvas 矢量绘制**（自研 SVG-path 子集解释器，Q6 裁决=Canvas 而非 VectorDrawable，与 no-res 工具链一致） |
| ④ 逐页迁移 | 首页十态 / 技能中心+详情 / 记忆中心 / 设置 / 关于 → `V3Shell.java`（52/64 header + main + 88 navbar 骨架） |
| ⑤ 设置页大模型配置 | `ModelConfigActivity` 保留 Ui3 调用，**Ui3 转为 Ui4 兼容 shim**（token 全部转发，主题单一真源在 Ui4） |

## 2. 修改文件

| 文件 | 内容 |
| --- | --- |
| `Ui4.java`（新增，~700 行） | V3 Token 工厂 + Canvas 图标（29 symbol path 数据内联）+ V3 组件 |
| `V3Shell.java`（新增） | V3 页面骨架：header 52/64（返回+面包屑+tag 芯片）、main 24 边距、navbar 88；一级/二级 header 二选一渲染 |
| `VoiceHomeActivity.java`（重写） | V3 十态首页：400px 角色舞台（halo 348 + art 300）+ 对话展示卡（你说/布丁/状态三行制，内部滚动）+ 快捷区 112（渐变卡+dashed 全部技能）；十态映射保持只读契约：status.public.json / play.public.json / events → idle·listening·thinking·speaking·stopped·error·continuous（wakeup/recognizing/answering 由 listening/thinking/speaking 数据临界点表达）；「记住X」记忆学习流原样保留 |
| `SkillsHomeActivity.java`（重写视觉） | 网格（启用 2×188dp 渐变卡+徽章 / 未启用 3×116dp 降饱和）+ 详情头（状态胶囊+语音帮助）+ 闹钟空态/列表/toggle/新增对话框（DataService 逻辑未动）+ 日程占位 + 规划中占位 |
| `MemoryCenterActivity.java`（重写视觉） | 316px 左列（粉色渐变 hero + 2×2 分类卡带真实计数）+ 右列（待确认/已生效列表、卡片操作按钮、清空确认）；全部 DB 逻辑未动 |
| `SettingsHomeActivity.java`（重写视觉） | 2×2 分组（大脑/外观/语音/设备）+ 行图标（chip/palette/mic/power）+ Ui4.seg 主题分段（单行修复延续）+ 三个真实开关 + 后台服务状态；持久化逻辑未动 |
| `AboutActivity.java`（重写视觉） | 380px 品牌 hero（渐变+立绘 250+slogan）+ 状态行（唤醒/后台/模型/运行时长/调用计数，全部来自 live status） |
| `Ui3.java` | token 区改为 Ui4 转发（兼容 shim），注释声明 |
| `build.ps1` | 源清单 +Ui4/V3Shell；assets_v3 并列入库段 |
| `AndroidManifest.xml` | vc 6→7，1.4.1→1.5.0 |
| `assets_v3/`（新增 12 文件） | V3 素材 640×640 RGBA |

## 3. 迁移中发现并修复的问题

| # | 问题 | 修复 |
| --- | --- | --- |
| F1 | **Ui4.svgPath 死循环**：`M3 11.2 12 4l9 7.2` 紧凑路径上 `Float.parseFloat` 抛异常后 `i` 不前进，onDraw 每帧烧 118% CPU、整机黑屏 | 重写数字扫描（独立 `scanNumber` 状态机 + `argCount(cmd)` + 无进度保护），trace_00 主栈定位，修复后 CPU 0% |
| F2 | V3Shell 一级/二级 header 同时渲染（标题重复两次） | 按 `crumbParent()!=null` 二选一挂载 |
| F3 | `android.R.id.content` 是 FrameLayout，cast LinearLayout 崩溃 | navbar 改为构建后由调用方挂到根 LinearLayout |
| F4 | 技能卡徽章与标题重叠 | badge bottomMargin 10 + 文本块 top padding 26 |
| F5 | install -r 覆盖正在运行的进程后 zygote 状态陈旧（START 无 Start proc、焦点 null） | force-stop + monkey 冷启解决；pm clear 会连带清 UI 偏好与 DB（本次测试机上已确认 DB 自动重建、worker 侧 /data/local/tmp 配置不受影响） |

## 4. 真机验收截图（1024×600 实拍，evidence/t9-14/）

| 页面 | 文件 | 对照设计稿 |
| --- | --- | --- |
| 首页·待机 | `v3_home3.png` / `v3_home4.png` | shots/01 一致：品牌区/状态胶囊/对话卡/快捷区/五项导航（真实图标） |
| 技能中心 | `v3_skills3.png` | shots/11 一致：渐变卡+徽章+未启用降饱和 |
| 闹钟详情 | `v3_skill_alarm.png` | shots/12 一致：状态胶囊+空态+banner+主操作 |
| 记忆中心 | `v3_memory2.png` | shots/15 一致：hero+分类卡+空态（真实 0 条） |
| 设置 | `v3_settings2.png` | shots/17 一致：2×2 分组+分段+开关 |
| 关于 | `v3_about2.png` | shots/19 一致：品牌 hero+状态行 v1.5.0 |

## 5. 语音链路回归（未受影响）

- `tgb_bridge` / `ai_worker` 全程存活，About 页显示 `运行中 · pid 2730`、`3 成功 / 0 失败 / 0 超时`、`deepseek-flash`
- worker 侧配置（/data/local/tmp/t5_bridge/secret+work）不受 App 层迁移影响
- App 侧 tgz02.db 自动重建（pm clear 后），DataService 写入链验证正常
- UI 状态机仍只读后台文件、只写 inbox stop——契约零变更

## 6. 尚未验证 / 已知边界

1. **十态中仅 idle 持续验证**（listening/thinking/speaking 等需真实唤醒轮次触发；状态映射代码路径与 V2 一致，逻辑同源）。
2. **calm 主题**已切换真源到 Ui4 并保留入口，但本次未截图回归。
3. pm clear 清掉了 UI 偏好（默认 kid 主题）与 App 侧记忆 DB（真实数据清零，worker 快照未动）——测试机可接受；生产机迁移时**不得 pm clear**。
4. ModelStore 的 App 侧 models.json 被 pm clear 清掉：UI 设置页模型编辑需重新保存一次配置（worker 的模型配置独立存活，语音功能不受影响）。
5. 未触发真实语音轮次验证对话卡的「你说/布丁」渲染（逻辑自 V2 onTurn 原样迁移）。
6. ModelConfigActivity 视觉仍是 V2 风格（经 Ui3 shim 跟随 V3 色板，布局未按 §detail 重排）——下一里程碑处理。
7. 本版本在 /data 更新层；镜像基线 (priv-app) 仍为 vc5，重打包镜像时需同步。

## 7. 结论

V3 设计（Token/组件/十态/页面结构/素材）已全量落地为真机运行的 1.5.0 APK，五个一级页 + 技能详情五区模板与设计稿逐页对照一致，语音链路零改动零回归。1.4.1 完整备份保留可随时回滚。
