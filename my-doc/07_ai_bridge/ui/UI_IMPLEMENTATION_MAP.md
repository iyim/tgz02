# TG-Z02 设计与现有技术栈的适配说明（T9-UI-01）

> 这一份回答的是："这些画面到底能不能在**当前这个项目**里实现？"
> 结论：能，而且不需要新增任何依赖、不需要 `res/`、不需要新建 Activity 结构。
> 本文给出逐个组件的落法（Java 构造配方）与既有代码的对应关系。

---

## 1. 当前技术栈的事实（已核对源码与设备，不是假设）

| 项 | 事实 | 出处 |
| --- | --- | --- |
| 屏幕 | 1024×600，density 160（mdpi，1dp = 1px），无系统状态栏 | 设备 `wm size` / `wm density`；截图 1024×600 且内容从 y=0 开始 |
| SDK | minSdk 21，targetSdk 27，设备 Android 8.1（API 27） | `t9_07_ui/AndroidManifest.xml` |
| 主题 | `@android:style/Theme.Material.NoActionBar` | 同上 |
| 资源 | **没有 `res/` 目录**，`aapt2` 只处理 manifest | `t9_07_ui/build.ps1` |
| 构建 | `javac --release 8` + `d8 --min-api 27` + `aapt2 link` + `zipalign` + `apksigner` | 同上 |
| 依赖 | 无 AndroidX、无 RecyclerView、无 ConstraintLayout、无第三方库 | 编译 classpath 只有 `android.jar` |
| 现有页面 | `VoiceHomeActivity`、`ConversationActivity`、`MoreActivity`、`SettingsActivity`、`ModelConfigActivity` | manifest |
| 现有视觉 | `Ui.java`：13 个颜色常量、`dp()`、`round()`、`roundStroke()`、`text()`、`action()`、`pill()`、`bar()`、`divider()`、`spacer()` | `Ui.java` |
| 布局方式 | 全部代码构造 `LinearLayout` / `ScrollView` / `TextView`，无 XML 布局 | 全部 Activity |
| 权限 | 应用**无任何权限**、无 service、无 sharedUserId，普通未提权应用 | manifest 注释与实测 uid 10071 |
| 后台 | `ai_worker`（root，C）负责语音与模型；App 只读公开状态、只写 inbox | T9-05…T9-08C 各阶段报告 |

**两条硬约束**由此确定：

1. **不能引资源**：没有 `res/` 就没有 drawable/vector/state-list/自定义字体，图标只能用 Canvas 画，
   圆角只能靠 `GradientDrawable`，字体只能用系统字族（DroidSans + NotoSansCJK，两档字重）。
2. **不能读 Intent**：T9-07R1 起产品 Activity 不解析 Intent，页面之间用进程内静态交接。

---

## 2. Token → Java 常量（一一对应）

复制到 `Ui.java` 的 v2 常量区即可，命名与前缀保持现状（`BG`、`TEXT`…），新增项加后缀区分。

| CSS token | Java 常量 | 值 |
| --- | --- | --- |
| `--bg` | `Ui.BG` | `0xFF0B0E13` |
| `--surface` | `Ui.SURFACE` | `0xFF11161D` |
| `--surface-2` | `Ui.SURFACE_2` | `0xFF161C25` |
| `--surface-3` | `Ui.SURFACE_3` | `0xFF1C2430` |
| `--rail` | `Ui.RAIL` | `0xFF0A0D11` |
| `--line` | `Ui.LINE` | `0xFF212934` |
| `--line-2` | `Ui.LINE_2` | `0xFF2B3644` |
| `--text` | `Ui.TEXT` | `0xFFE9EEF5` |
| `--text-2` | `Ui.TEXT_DIM` | `0xFF98A3B3` |
| `--text-3` | `Ui.TEXT_FAINT` | `0xFF66707F` |
| `--accent` | `Ui.ACCENT` | `0xFF4C8DFF` |
| `--accent-2` | `Ui.ACCENT_DEEP` | `0xFF2F6BEA` |
| `--accent-w` | `Ui.ACCENT_BG` | `0xFF1A2740` |
| `--ok` / `--ok-w` | `Ui.OK` / `Ui.OK_BG` | `0xFF35C46A` / `0xFF14301F` |
| `--warn` / `--warn-w` | `Ui.WARN` / `Ui.WARN_BG` | `0xFFEFAF3C` / `0xFF322714` |
| `--err` / `--err-w` | `Ui.ERR` / `Ui.ERR_BG` | `0xFFE5544B` / `0xFF33191A` |
| `--listen` / `--listen-w` | `Ui.LISTEN` / `Ui.LISTEN_BG` | `0xFF3AD1C0` / `0xFF12302E` |
| `--t-acc` / `--t-ok` / `--t-warn` / `--t-err` / `--t-lst` | `Ui.ON_ACCENT` / `Ui.ON_OK` / `Ui.ON_WARN` / `Ui.ON_ERR` / `Ui.ON_LISTEN` | `0xFFBFD4FF` / `0xFFBFEBD0` / `0xFFF7DCAD` / `0xFFF5BFBB` / `0xFFAEEEE6` |
| `--r-s/m/l` | `Ui.R_S = 8` / `Ui.R_M = 12` / `Ui.R_L = 16` | dp |
| 间距刻度 | `Ui.S1=4 … Ui.S10=24` | dp |

> 现状对照：`Ui.java` 已经有 `BG=0xFF0E1116`、`TEXT=0xFFE9EDF3` 等一组近似值。
> v2 的做法是**用本表整体替换**，并在文件头注明"值与 `UI_DESIGN_SYSTEM.md` §2 一致"，
> 避免两套色并存。

---

## 3. 组件落法（Java 构造配方）

每个组件都给"用什么 View / 什么参数"。所有尺寸经 `Ui.dp(c, n)`。

### 3.1 导航栏

```java
LinearLayout rail = new LinearLayout(c);           // VERTICAL
rail.setBackgroundColor(Ui.RAIL);
rail.setPadding(dp(10), dp(14), dp(10), dp(16));
rail.addView(brandBlock());                        // 30x30 GradientDrawable(9f) + 两行文字
rail.addView(navItem("home", "首页", "home", on));  // 每个 38 高，圆角 10
rail.addView(spacerWeight(1));                     // 把状态区推到底
rail.addView(statusBlock());                       // dot + 两行 11/12
// 宽 208：new LinearLayout.LayoutParams(dp(208), MATCH_PARENT)
```

`navItem`：`LinearLayout` 横向、`GRAVITY_CENTER_VERTICAL`、`setPadding(dp(10),0,dp(10),0)`、
`setBackground(round(...))`；选中用 `Ui.SURFACE_3`，图标与文字颜色按 §6.1 切换。

### 3.2 圆形/圆角/描边

```java
GradientDrawable d = new GradientDrawable();
d.setShape(GradientDrawable.RECTANGLE);      // 圆形用 OVAL
d.setColor(fill);
d.setCornerRadius(dp(r));
d.setStroke(dp(1), stroke);                  // 需要描边时
```

分区背景（首页光环）用 `GradientDrawable.RADIAL_GRADIENT` + `setGradientCenter(0.5f, 0.48f)`
+ `setColors(new int[]{withAlpha(stateColor, 0x22), Color.TRANSPARENT})`；
核心圆的线性渐变用 `LINEAR_GRADIENT` + `setOrientation(TOP_BOTTOM)`。

> 注意：`GradientDrawable` 的 radial 不支持多层叠加，光环用**两层 View** 叠出来
> （halo 层 + core 层），这是设计里固定 158×158 尺寸的原因——尺寸变了要重算两层。

### 3.3 状态胶囊

```java
LinearLayout p = new LinearLayout(c);        // HORIZONTAL, CENTER_VERTICAL
p.setPadding(dp(12), dp(5), dp(14), dp(5));
p.setBackground(pill(fill, strokeOrNone));   // 圆角 20dp 用 RECTANGLE + setCornerRadius(dp(20))
p.addView(dot(6));                           // View + OVAL 背景
p.addView(Ui.text(c, label, 12f, onColor));
```

### 3.4 图标（Canvas 绘制）

```java
static void draw(Canvas cv, String name, float size, int color) {
    cv.save();
    float s = size / 24f;                       // 24 网格 → 目标尺寸
    cv.scale(s, s);
    Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
    p.setStyle(Paint.Style.STROKE);
    p.setStrokeWidth(1.6f);
    p.setStrokeCap(Paint.Cap.ROUND);
    p.setStrokeJoin(Paint.Join.ROUND);
    p.setColor(color);
    switch (name) {
        case "alarm":
            cv.drawCircle(12, 13.2f, 7.1f, p);
            line(cv, p, 12, 13.2f, 12, 9.3f);
            line(cv, p, 12, 13.2f, 14.9f, 14.6f);
            line(cv, p, 3.8f, 5.9f, 6.2f, 3.9f);
            line(cv, p, 20.2f, 5.9f, 17.8f, 3.9f);
            break;
        /* … 其余按 UI_DESIGN_SYSTEM §5 的表逐条写，一个图标 2–8 行 … */
    }
    cv.restore();
}
```

用 `IconView extends View`（`onMeasure` 固定 size，`onDraw` 调 `draw`）即可放进任何 `LinearLayout`。
26 个图标约 180 行代码，比引入矢量图依赖便宜得多。

### 3.5 列表 / 设置行

没有 RecyclerView：**一屏最多 6 行**（`UI_ARCHITECTURE.md` §5），直接往 `LinearLayout` 里
`addView` 即可，滚动交给外层 `ScrollView`。行数超过 20 时才考虑复用（当前设计不会出现）。

### 3.6 开关 / 分段 / 芯片

| 组件 | 实现 |
| --- | --- |
| 开关 40×22 | `View` + `GradientDrawable(OVAL 11dp)` + 内部再叠一个 16×16 圆点 View，用 `setX` 切换；点击切换后回调 `SkillSetting` 或 `Ui` 的本地状态 |
| 分段控件 | `LinearLayout` 横向 + 圆角外框 + 每个段是 `TextView`，选中换背景与字重 |
| 芯片 | `TextView` + 圆角 20 + 内边距 12/6，选中换 `ACCENT_BG` 与 `ON_ACCENT` |

都不需要自定义 View 的复杂手势；`OnClickListener` 足够。

---

## 4. 页面模块化（一个页面 = 一个类 + 一个 build()）

现有代码已经是这个形式（`buildScreen()` / `build()` 返回 `View`），保持并规范化：

```java
abstract class Screen {
    protected Activity host;
    View root;                                  // rail + main
    abstract String title();                    // "设置"
    abstract String subtitle();                 // 可空
    abstract List<Action> actions();            // 顶栏动作
    abstract View body();                       // 内容
    View onFoot();                              // 可空：底部操作条
    String crumbParent() / crumbCurrent();      // 有上级时用面包屑
}
```

`Screen` 统一负责：导航栏（含折叠判定）、顶栏、分隔线、body 滚动、底部条。
子类只实现 `body()`。这样"页面风格不统一"在结构上就不可能发生。

---

## 5. 现有 Activity → 目标页面的映射

| 现在 | 目标 | 改动性质 | 风险 |
| --- | --- | --- | --- |
| `VoiceHomeActivity` | 首页（九状态） | 重写 `buildScreen()`，读同一批公开状态 | 低：只读接口不变 |
| `SettingsActivity` | 设置（分组）+ 4 个二级页 | 拆成 5 个 `Screen` | 低：字段照搬 |
| `ModelConfigActivity` | 设置 → 大模型配置 | 视觉重排，`ModelStore` 逻辑不动 | 低 |
| `MoreActivity` | 删除 | 入口取消 | 无 |
| `ConversationActivity` | 设置 → 系统 → 对话记录（只读） | 去掉输入框与发送，保留列表与清空 | 中：要保证 `VoiceBridgeClient` 的提交通道仍有调试手段（adb 脚本） |
| —— | 技能中心、技能宿主 | 新增（T10） | 中：新建 `SkillHostActivity` |

`AndroidManifest.xml` 的变化只有两处：删 `MoreActivity`、加 `SkillHostActivity`（`exported=false`）。
`VoiceHomeActivity` 保持 `exported=true` + `singleTask`（桌面入口）。

---

## 6. 尺寸与导航适配

只有一个物理尺寸（1024×600），但仍然定义两条退化规则，避免以后换屏或分屏时返工：

| 条件 | 行为 |
| --- | --- |
| 宽度 ≥ 900dp | 导航栏 208，图标 + 文字 + 数字徽标 |
| 宽度 < 900dp | 导航栏 72，仅图标（保留点击区域 40×40 与 `contentDescription`），二级菜单隐藏 |
| 高度 < 560dp | body 上下边距降到 12，首页光环缩到 132，其余不变 |
| 横竖屏 | manifest 已声明 `configChanges`，不重建；实际设备固定横屏，竖屏不设计 |

判定在 `Screen` 基类里用一次 `getResources().getConfiguration().screenWidthDp`，子类不重复判断。

---

## 7. 技能页面的动态接入方式

- **一个宿主 Activity**：`SkillHostActivity`，进程内静态交接 id（不读 Intent）。
- 宿主从 `SkillRegistry.find(id)` 取 `SkillPage`，用 `Screen` 基类套 5 区骨架，
  把 `buildContent()` 的返回值放进 ② 区。
- 技能不是 Activity ⇒ 无需在 manifest 注册 ⇒ 新增技能不需要改任何清单/导航代码。
- 技能的数据文件各自独立（`files/alarms.json`、`files/calendar/`…），框架只持有
  `skills.json` 的启用状态与排序。

---

## 8. 与后台服务的接口边界

| 界面需要 | 允许的通道 | 禁止 |
| --- | --- | --- |
| 语音状态 / 轮次 / 播报 | 只读 `ui/status.public.json`、`ui/events/<seq>.json`、`tts/play.public.json`（现有 `VoiceBridgeClient`） | 读 worker 私有配置、读 `journal.jsonl` |
| 停止播报 | 写 inbox `{"kind":"stop","tts_id":N}`（`requestStop`） | 直接杀进程 / 直接调用原厂接口 |
| 模型配置 | 读写 `files/models.json`（`ModelStore`） | 在 UI 侧发 HTTP、读 `worker.conf` |
| 模型连接测试 | inbox `{"kind":"modeltest","model_id":…}`（`requestModelTest`） | 自己 curl |
| 长期记忆（T9-08D） | IPC：`mem_list / mem_add / mem_update / mem_delete / mem_enable / mem_disable / mem_clear / mem_pending / mem_resolve` | 直连 `memory.json`（0600 root） |
| 技能数据 | 各技能自己的 App 私有文件 | 跨技能读别人的文件 |

原则：**UI 只读公开状态、只写自己的文件、只经 inbox/IPC 触发后台动作。**

---

## 9. 分阶段落地顺序（T9-UI-02 起）

1. `Ui.java` v2 + `Icons.java` + `Screen` 基类 + 导航栏/顶栏/卡片/列表/胶囊/按钮（组件层，约 1 天量级）。
2. 首页九状态接真实 `status.public.json`（不动语音链路）。
3. 设置首页 + 4 个二级页（含大模型配置页承接 T9-08C-R2）。
4. 记忆中心（T9-08D 的 IPC 就绪后接数据）。
5. T10：`SkillRegistry` + `SkillHostActivity` + `skills.json` + 技能中心列表/管理页。
6. 逐个技能按 `UI_SKILL_EXTENSION.md` 接入。

每一步都必须保持：应用仍是无权限普通应用、语音链路不改、`ai_worker` 接口不新增私有读取。

---

## 10. 已知差异与限制（不掩饰）

| 差异 | 影响 | 处理 |
| --- | --- | --- |
| 原型用 Windows YaHei 渲染，设备用 Noto Sans CJK | 字形略有差异，字宽/行高一致 | 不影响布局判断；首版实现后必须在设备截图复核一次 |
| 设备只有 Regular/Bold 两档字重 | 无法做 500/600 的细腻层级 | 层级靠字号与颜色（已写进规范） |
| 无 `res/` | 没有 ripple、没有矢量图、没有 state-list | 按下态用背景色变化代替（已写进动效规范） |
| `GradientDrawable` 不能多层 | 光环必须两层 View 叠加 | 尺寸固定 158，改动需同时改两层 |
| 无 RecyclerView | 大列表需手写复用 | 设计上一屏不超过 6 行，靠滚动而非虚拟化 |
| 深浅主题切换需重建 View | 运行时切主题会重建当前页面 | 在 `Screen` 基类里 `recreate()` 一次，可接受 |
