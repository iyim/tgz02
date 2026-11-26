# TG-Z02 V2 UI 统一规范（T9-13）

> 本文是 T9-13 整改后沉淀的**唯一有效视觉规范**，适用于后续所有页面（闹钟、日程、天气、
> 设备控制等）。新增页面必须复用本文的组件，禁止再出现"每开发一个页面一套布局"。
> 视觉值与 `Ui3.java` 一一对应；结构约束与 `UI_ARCHITECTURE.md` 一致。

## 1. 硬性布局规则（T9-13 教训）

1. **竖向 LinearLayout 的子项必须显式给 LayoutParams**。Android 的
   `generateDefaultLayoutParams()` 在竖向 LinearLayout 里宽度默认 MATCH_PARENT——
   不带参数 addView 的 TextView 会占满整行，`CENTER_HORIZONTAL` 失效，文字贴左。
   （T9-13 底部导航错位的根因。）
2. ** ImageView 显示整张插画素材必须用 `FIT_CENTER`**。素材是 800×600 完整圆角卡片，
   `CENTER_CROP` 会放大裁切只剩局部。只有"素材即背景纹理"的场景才允许 CENTER_CROP。
3. **分段按钮/胶囊文字一律 `setSingleLine(true)`**，靠 padding 撑宽度，禁止换行。
4. 禁止为单页写魔法坐标；所有间距用 §3 的刻度，所有颜色用 §2 的 token。

## 2. 色彩 token（Ui3.java，kid 模式）

| 用途 | token | kid 值 |
| --- | --- | --- |
| 页面背景 | `bg` | `#FFF7EA` 暖米色 |
| 深背景/光环 | `bgDeep` | `#FFEBD2` |
| 卡片表面 | `surface` | `#FFFFFF` |
| 卡片表面 2 | `surface2` | `#FFF3DF` |
| 分隔线 | `line` / `line2` | `#F3E3C8` / `#E8D2AB` |
| 主文字 / 次文字 / 弱文字 | `text` / `text2` / `text3` | `#3A3040` / `#8A7A8F` / `#B7A88F` |
| 主色（CTA/选中） | `primary` / `primary2` | `#FF8A3D` / `#FF6D2E` |
| 状态色 | ok / warn / err / listen | `#35C46A` / `#FFB020` / `#FF5D5D` / `#31D0B4` |
| 技能渐变 | `tileGrad` | alarm 橙 `#FFB347→#FF8A3D`；calendar 蓝 `#6FAEFF→#4C7FE8`；其余灰蓝 |

calm（简洁）模式同表在 `Ui3.java` 内成对维护，禁止写死单模式颜色。

## 3. 尺寸刻度与圆角

- 间距刻度：4 / 8 / 10 / 12 / 14 / 16 / 18 / 20 / 28 / 32 dp。
- 圆角：`R_S=14` 小件 / `R_M=20` 卡片 / `R_L=28` 大卡 / `R_PILL` 胶囊。
- 字号：页标题 26sp bold / 面包屑 18 / 卡片标题 22–24 bold / 正文 19 / 辅助 15 / 导航标签 15 bold / 状态胶囊 20 bold。
- 底部导航条：高 88dp，白底上圆角 20，五项均分（`weight=1`），图标位 46×46，
  标签 WRAP_CONTENT 且 `CENTER_HORIZONTAL`。

## 4. 标准组件（一律从 Ui3 / V2Shell 取用，禁止复制粘贴改参数）

| 组件 | 出处 | 用法 |
| --- | --- | --- |
| 状态胶囊（圆点+文字） | `Ui3.pill` / `Ui3.pillSet` | 首页状态区、详情页状态 |
| 底部导航 | `Ui3.navbar` | 五个固定页共用；二级页经 `V2Shell.buildNav` |
| 卡片容器 | `V2Shell.card` | 白底 + `line` 描边 + `R_M`，内边距 16/8 |
| 设置行 | `V2Shell.setRow` | 标题 19 bold + 可选描述，行高 ≥64dp |
| 键值行 | `V2Shell.kvRow` | 键列宽 150dp |
| 胶囊标签 | `V2Shell.pillTag` | 「已启用/未启用」等状态 |
| 分段按钮 | `SettingsHomeActivity.segBtn`（应上移到 Ui3） | 互斥选项 |
| 分幅插画 | `V2Shell.heroImage` / `SkillsHomeActivity.heroWrap` | `FIT_CENTER` 完整显示素材 |
| 提示条 | `V2Shell.banner` | 页脚说明，`accentW` 底 |

## 5. 素材规范

- 全部插画/角色 PNG **必须带 Alpha 通道**（RGBA），禁止白底 RGB 入库。
- 角色图（puddin_*）：400×400，背景透明，主体居中，白色肚皮属于主体保留。
- 插画卡（illus_*）：800×600 整卡设计，圆角 42px 内嵌于素材，四角透明。
- 入库前用 `evidence/t9-13/assets_original_rgb` 的做法反向核对：四角像素必须含 alpha=0。
- 缩放展示一律 FIT_CENTER；禁止对整卡素材用 CENTER_CROP。

## 6. 新增页面检查清单

- [ ] 五项底部导航全部图标居中、文字居中（真机截图核对）
- [ ] 所有 TextView 显式 LayoutParams 或继承标准组件
- [ ] 无魔法坐标、无页面私有颜色/字号
- [ ] 插画 FIT_CENTER、素材带 alpha
- [ ] 1024×600 真机截图与首页并排比对通过
- [ ] 长中文文案（≥20 字）不裁切、不换行错乱
