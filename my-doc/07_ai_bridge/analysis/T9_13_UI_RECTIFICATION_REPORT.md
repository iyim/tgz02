# T9-13 整改报告：UI 布局错位、文字排版与图片透明边缘专项整改

**日期**：2026-11-26 · **分支**：main · **版本**：voice_ui 1.4.1 (versionCode 6)
**GitHub Issue**：iyim/tgz02#1
**真机**：AILABS_S1L (TG-Z02)，Android 8.1，1024×600 mdpi，USB serial INZ5KBBUJZQSRCKZ

---

## 1. 原始问题及根因（全部在真机 + 源码 + 素材三重取证后定位）

| # | 现象 | 根因 | 证据 |
| --- | --- | --- | --- |
| R1 | 底部导航「首页」贴屏幕左缘、五个标签整体左偏且与图标错位 | `Ui3.navbar()` 给标签 `addView(lab)` **不带 LayoutParams**。竖向 LinearLayout 的默认子项宽度是 MATCH_PARENT，文字占满整格后 `CENTER_HORIZONTAL` 失效 → 左对齐；垂直方向被压到条底。图标有显式 46×46 参数所以居中——这正是"图标居中、文字偏移"的组合成因 | AOSP `LinearLayout.generateDefaultLayoutParams()`；整改前截图 `evidence/t9-13/before_home.png` |
| R2 | 布丁形象、技能插画周围白色矩形 | 全部 16 张素材 PNG 是 **RGB 无 Alpha**（`type=RGB`，四角像素 `(255,255,255)`），白底直接盖在米色光环/渐变卡片上 | PNG header 解析（IHDR color type=2）；`evidence/t9-13/alpha_check.png` |
| R3 | 技能中心/记忆中心 hero 大图被放大裁切只剩局部 | `heroImage()` / `heroWrap()` 用 `CENTER_CROP`，把 800×600 整卡素材当背景纹理放大裁切 | `after_skills.png`（整改前态）只见钟脸局部 |
| R4 | 设置页「儿童友好」分段按钮文字换行成两行 | `segBtn` 未设单行，宽度不足时自动换行 | `after_settings.png`（整改前态） |
| R5 | 右侧中部白色圆形浮层 | **不是本应用控件**：`dumpsys window` 显示为 `com.shere.assistivetouch`（`/system/app/easytouch.apk` v4.6.1，系统持久应用，SYSTEM_ALERT_WINDOW，uid 10040）。属预装悬浮球，按任务要求记录归属，未改动 | `dumpsys window windows` 输出 |

## 2. 修改文件及内容

| 文件 | 修改 |
| --- | --- |
| `src/com/tgz02/voice/Ui3.java` | navbar：图标块显式 46×46 LayoutParams；标签改 WRAP_CONTENT + `setGravity(CENTER_HORIZONTAL)` + `setIncludeFontPadding(false)` + topMargin 2dp；条内边距 6→8dp。**根因修复，非调坐标** |
| `src/com/tgz02/voice/SkillsHomeActivity.java` | `heroWrap`：CENTER_CROP → FIT_CENTER，高 140→150dp |
| `src/com/tgz02/voice/MemoryCenterActivity.java` | hero：CENTER_CROP → FIT_CENTER |
| `src/com/tgz02/voice/V2Shell.java` | `heroImage`：CENTER_CROP → FIT_CENTER + 12/8dp 内边距，素材完整显示 |
| `src/com/tgz02/voice/SettingsHomeActivity.java` | `segBtn`：`setSingleLine(true)` + padding 18→20dp |
| `AndroidManifest.xml` | versionCode 5→6，versionName 1.4.0→1.4.1 |
| `evidence/t9-ui-01-v2/assets/`（16 张 PNG） | 全部转 RGBA：puddin_* 400×400 边缘连通白底 flood-fill 透明化（thresh=28，白色肚皮/光环保留）；illus_* 检测非白包围盒裁出整卡 + 圆角 42px alpha 蒙版 |
| `ui/UI_DESIGN_SYSTEM_V2_RULES.md` | **新增**：统一视觉规范（token/刻度/组件清单/素材规范/新页面检查清单），后续技能页面直接复用 |

素材原始 RGB 备份：`evidence/t9-13/assets_original_rgb/`。

## 3. 图片素材透明度检查结果

- 整改前：16/16 张 PNG `color type=2 (RGB)`，四角纯白。
- 整改后：16/16 张 RGBA。布丁系列边缘连通白底抠透（保留主体内白色）；插画系列裁切为完整圆角卡片（内部不挖洞）。
- 中途发现的算法缺陷及修正：第一版 flood-fill（thresh=10）从边中点种子在渐变底上啃出水平透明带（`illus_alarm_fixed.png` 可见），改为包围盒裁卡法后消除（`illus_alarm_fixed2.png` 验证）。
- 构建管线断言：`build.ps1` 保持 ≥16 张 asset 校验，RGBA 化不影响 aapt2 `-A` 嵌入与 entry 名归一化。

## 4. 真机测试截图（全部 1024×600 实拍）

| 阶段 | 文件 |
| --- | --- |
| 整改前基线 | `evidence/t9-13/before_home.png` |
| 导航/白底初验 | `evidence/t9-13/after_home.png`、`after_home2.png` |
| hero 裁切修复后 | `evidence/t9-13/final_skills2.png`、`final_memory.png`、`final_settings.png`、`final_about.png`、`final_home.png` |
| 素材级验证 | `alpha_check.png`、`illus_alarm_compare.png`、`illus_alarm_fixed2.png` |

**验收对照**：
- 五个底部导航图标+文字全部居中对齐 ✅（final_home.png，首页不再贴左缘）
- 布丁无白色矩形、边缘自然 ✅（光环完整可见）
- 技能/记忆页插画完整显示无裁切 ✅
- 设置分段按钮单行 ✅
- 白圈浮层归属已查明并记录（easytouch，非本应用）✅

## 5. 构建和测试结果

- 构建：`build.ps1` EXIT=0，javac release 8 / d8 min-api 27 / aapt2 / zipalign / apksigner 全链路通过。
- 产物：`dist/voice_ui.apk` 665,116 B，sha256 `f46d1f97…e2781f20`，vc6 / 1.4.1，签名 t9_04.keystore（证书 SHA-256 `d9900746…69e14ad7`，与历史版本一致）。
- 安装：Streamed Install Success（/data 更新层覆盖 /system 基线，`codePath=/data/app/…` + `/system/priv-app/TgVoiceUI` 双通道确认）。
- **语音链路回归（未受影响）**：`tgb_bridge` → `/system/tgz02/bin/tgb_bridge`、`ai_worker` → `/system/tgz02/bin/ai_worker`、`tg_supervisor` ×2 → `/system/tgz02/bin/tg_supervisor`（/proc/exe 实证）；events.jsonl 持续写入；App uid 10071 不变。
- 导航交互回归：五页 `mCurrentFocus` 逐页验证（SkillsHome/MemoryCenter/SettingsHome/About），全部到达。

## 6. 尚未验证的问题

1. **calm（简洁）主题**的全页面视觉回归未做（本任务只在 kid 模式验证；segBtn/heroImage 改动同样作用于 calm，风险低但未截图）。
2. 插画在更小容器（offCard 120dp 高、alpha 0.42）中的观感未逐张核对。
3. easytouch 悬浮球是否保留属产品决策，本任务只记录未处置。
4. 布丁状态图 9 张中仅 idle/sleep 在截图中出现过；thinking/listening/error 等状态图的透明边缘未逐一真机触发验证（本地 alpha_check 已覆盖同批处理逻辑）。
5. 该版本尚未合入 /system 镜像基线（仍走 /data 更新层）；下次镜像重打包时需同步 `priv-app/TgVoiceUI/voice_ui.apk`。

## 7. 统一 UI 规范（本次沉淀的核心资产）

`ui/UI_DESIGN_SYSTEM_V2_RULES.md` 固化了：竖向 LinearLayout 子项必须显式 LayoutParams、整卡素材 FIT_CENTER、分段按钮单行、色彩/字号/圆角/间距 token 表、标准组件清单（一律取用 Ui3/V2Shell）、素材必须带 Alpha、新增页面 6 项检查清单。后续闹钟/日程/天气页面按此执行，杜绝"一页一套布局"。
