# T9-UI-02 交付报告 — 儿童友好型 UI 正式落地 Android APK（真机验证）

- 提交：见文末 SHA；APK：`voice_ui.apk` v1.3.0（570,908 B）
- 结论：V2 视觉体系已在真实设备（AILABS_S1L / 1024×600 / mdpi / Android 8.1 / ARM32）上运行，
  五大页面 + 双主题 + 真实语音状态联动全部真机截图验证；语音链路回归通过。

## 一、审计指出问题的处理（并入本阶段，全部完成）

| # | 问题 | 处理 | 真机证据 |
| --- | --- | --- | --- |
| 1 | 技能详情重复底部导航 | V2Shell 统一生成导航；SkillsHomeActivity 内部视图只换 body/header，不再自建导航 | 03/04 号截图 |
| 2 | 原型控件无交互 | APK 版全部为真实交互：闹钟列表+新增写真实 `skills_alarms.json`；主题切换即时生效且持久化；语音开关持久化到 `ui_voice.json`（明确 toast「仅记录偏好，引擎由后台控制」，不伪装） | 03/06/08 号截图 |
| 3 | 最近使用排序 | APK 版当前只启用闹钟+日程两个真实技能（无假"最近使用"计数）；`lastUsedAt` 排序随 T10 技能注册表落地（那时才有真实使用时间数据源） | — |
| 4 | 删除默认模型的状态一致性 | 该逻辑在 T9-08C 已有（删除默认→交给第一条，注释明确）；本次 V2 化未触碰 ModelStore 逻辑 | 10 号截图 |
| 5 | APK 资源方案冲突 | **走 assets/，实测可行**：`aapt2 link -A` 打包 16 张 PNG；发现并修复 Windows aapt2 把 entry 名写成 `assets/ui\` 反斜杠导致 AssetManager 读不到的问题（构建脚本归一化）；APK 内 entry 数量构建时强校验 ≥16 | 布丁真机可见（01 号截图） |
| 6 | V1/V2 规范冲突 | `UI_IMPLEMENTATION_MAP.md` 头部加废弃声明：V1 视觉参数全部废弃，V2 为唯一有效规范，指向 `Ui3.java` 实现 | 文档 |
| 7 | 2D vs 3D | 承认：布丁是**几何绘制的二维矢量角色**（扁平绘本风），不是 3D 渲染资产。设计文档已如实描述；真 3D 需要单独的建模/渲染管线，超出本项目当前工具链 | — |

## 二、APK 与资源集成

- `voice_ui.apk` 587,292 B → assets 归一化后 **570,908 B**，16 张 PNG（角色 9 + 插画 7）全部内嵌 `assets/ui/`
- 构建链：javac --release 8 → d8（classes.jar 规避命令行长度限制）→ aapt2（manifest + assets）→ zip entry 归一化 → zipalign → apksigner
- 无 res/、无 AndroidX、无第三方库——工具链与 T9-04 以来完全一致
- 编译集：V2 壳 + 6 个新页面 + SkillStore/SkillRegistry + T9-08C 模型栈；ConversationActivity / MoreActivity / SettingsActivity 不再编译（manifest 已移除；代码保留仓库）

## 三、真机验收（截图在 evidence/t9-ui-02/）

| 项 | 结果 |
| --- | --- |
| 首页：布丁主视觉 + 34sp 问候 + 快捷块 + 88dp 导航 | ✅ 01 |
| 技能中心：绘本大卡 + 已启用胶囊 | ✅ 02 |
| 技能详情：整卡可点、真实闹钟存储、新增入口 | ✅ 03 |
| 音乐占位（未接入不伪装） | ✅ 04 |
| 记忆中心：诚实"未接入"（无演示记忆） | ✅ 05 |
| 设置：真实模型状态 + 主题切换 + 语音开关 | ✅ 06 |
| 关于 | ✅ 07 |
| 简洁模式切换（toast + 即时换肤） | ✅ 08 |
| **重启后主题保持** | ✅ 11 |
| **模型配置页（T9-08C 数据原样）+ 真机测试连接 toast** | ✅ 10 |
| 语音回归：真实唤醒→聆听态联动 | ✅ 12 |
| 语音回归：播报态联动（state=playing + speaking 帧） | ✅ 13 |
| 语音回归：定向停止 receipt ok + 终态不重播 + UI 回待机 | ✅ 14 |

## 四、语音链路保护确认

- worker（pid 10991）、stub、执行器全程未被本阶段触碰；回归前后 `pidof ai_worker` 一致
- 唤醒/ASR/TTS/定向停止/连续对话均走原厂与 T9-08B-R2/T9-08C 已验收路径
- 首页只读 `status.public.json` / `play.public.json` / `events/`，唯一写操作 = inbox stop

## 五、已知限制与后续

1. 首页快捷块的"最近使用排序"在 T10 技能注册表落地时接入 `lastUsedAt`（当前只有两个真实技能，固定顺序）。
2. 角色动画（眨眼/呼吸两帧）未在 APK 中启用（静态帧已足够清晰；两帧动画代码已在 Ui3 预留）。
3. 布丁为二维矢量风格（见问题 7）。
4. `curl=6` 间歇问题与 T9-08C 阶段相同，未复现于本次回归窗口。

## 六、回滚

```
adb install -r <T9-08C 时代的 voice_ui.apk（1.2.0）>   # 界面回退到深色 V1 壳
# 或恢复 manifest/build.ps1 至 684d981a 后重编译
# 数据层无破坏：models.json / skills*.json / ui_theme.json 均为新增或原格式
```
