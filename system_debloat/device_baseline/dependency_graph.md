# 依赖关系图（rev5.3）

生成自 `dependency_edges.csv` 中 `evidence_class ∈ {app, ambiguous}` 的边，共 **304 条**。
`sdk_noise`（203 条）与 `platform_provider`（132 条）已排除，理由见 `../app_dependency_analysis.md`。

## 口径（必须先读）

| 证据类型 | 含义 | 能否当作运行时依赖 |
|---|---|---|
| `app`（197 条中的入向边） | 引用方的 dex/vdex 里出现被引方的**类名/action/authority** | 强线索，但仍需运行时确认 |
| `ambiguous` / `platform_provider` | 通用词命中 | **不能**当作依赖 |
| `sdk_noise` | 第三方 SDK 噪音 | 忽略 |
| manifest 引用 | 组件声明的 action/authority 指向 | 属静态契约 |
| 资源配置引用 | 资源里出现包名 | 中等 |
| 字符串命中 | 仅字符串相同 | 最弱，`不等于运行时依赖` |
| 未发现引用 | 没有命中 | **不等于没有依赖**（反射/动态加载/服务名拼接都可能漏） |

## 被引用最多的目标（入向边数）

| target package | app 级入向边 |
|---|---|
| `com.alibaba.ailabs.genie.smartapp` | 139 |
| `com.android.settings` | 42 |
| `com.alibaba.ailabs.genie.children` | 24 |
| `com.alipay.arome.app` | 19 |
| `com.alibaba.ailabs.genie.launcher` | 13 |
| `com.alibaba.ailabs.genie.iot` | 12 |
| `com.alibaba.ailabs.genie.rtc` | 10 |
| `com.alibaba.ailabs.genie.screensaver` | 9 |
| `com.alibaba.genie.waft` | 7 |
| `com.aligenie.ags` | 7 |
| `com.ailabs.youku.iot` | 5 |
| `com.alibaba.ailabs.genie.osupdate` | 3 |

## 引用方排行（出向边数，含 ambiguous）

| source package | 边数 |
|---|---|
| `com.alibaba.ailabs.genie.smartapp` | 42 |
| `com.android.settings` | 35 |
| `com.alibaba.ailabs.genie.screensaver` | 23 |
| `com.alibaba.ailabs.genie.launcher` | 22 |
| `com.alibaba.ailabs.genie.children` | 21 |
| `com.android.systemui` | 21 |

## 结构化数据

完整 304 条边在 `dependency_graph.json`，字段：
`source_package / source_component / target_package / target_component / dependency_type / evidence / confidence / impact_if_disabled`。

- `source_component` 本轮为 `null`：dex 命中只能定位到包，定位到具体调用点需要反编译，未做。
- `confidence`：`app` → high，`ambiguous`/`platform_provider` → low。
- **`impact_if_disabled` 是推断值**，不是实测。

## 已知盲区

1. Native 库之间的动态依赖（`libsmartbox.so` → `libaceAsr.so` 等）未做 `readelf -d` 级分析。
2. framework 侧只统计了“包名命中”，没有类级引用（`boot.vdex` 大，未做全量类索引）。
3. Launcher 卡片 → 目标包的跳转（`genie://…/webviewPage`、`bilibili://`）属于字符串证据，
   已写在 `../desktop_app_audit.md`，未并入本图。
