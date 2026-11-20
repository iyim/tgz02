# 修订记录（rev2）

- 修订时间：2026-11-20
- 修订对象：本目录（`system_debloat/`）下全部报告与机器可读数据；不涉及 `system` 镜像、APK、T5 代码
- 修订触发：对上一版报告的独立审查意见（8 条）
- 本轮**未执行**任何 `pm disable-user` / `pm uninstall` / 镜像写操作；设备 `pm list packages -d` 仍为空

## 1. 逐条修订对照

| # | 审查意见 | 处理方式 | 落点 |
|---|---|---|---|
| 1 | AMPE 应从 B 调整为 C | 已改。依据：降噪后 7 个包（smartapp、Guide、GenieAicare、GenieBrowser、GenieIoT、GenieLauncher、GenieRTC）对 `genie.webapps.START/INIT` 与 `GwaReceiver` 有 app 级引用。`optimization_plan.md` 中 AMPE 的禁用命令已删除，改为“明确不进 P1”并给出产品决策 + 动态验证步骤 | `app_inventory.*`、`app_removal_recommendations.md` §4.1、`optimization_plan.md` §2.5、`risk_assessment.md` §2.2 |
| 2 | ES 不应再称“安全删除” | 已改。改为“**A 类候选：静态通过，删后动态验证未完成**”，保留 4.60 MB 空间事实，补充放行条件（用户授权 + `pm uninstall -k --user 0` 观察 ≥7 天）；明确本报告不执行卸载 | `README.md` §4/§5、`app_removal_recommendations.md` §2、`optimization_plan.md` §3 |
| 3 | 平台 Provider 过滤有 bug | 已修。原 `x['token'].split('.')[0] in ('com.android','media','settings')` 对 `com.android.providers.*` 恒为 False。新增 `filters.py`（精确集合 + 前缀匹配）与 `test_filters.py`（8 个用例，含回归用例）；`report.py`/`mkdocs2.py`/`edges.py` 全部改为调用该模块；已重新生成 CSV/JSON/统计并核对总数 | `tools/filters.py`、`tools/test_filters.py`、`dependency_edges.csv`、`app_inventory.*` |
| 4 | `/data/app` 更新包数量错误 | 已改。实测为 **3 个**：`GenieAicare`（系统 4.0.26 → 加载 4.0.62）、`GenieRTC`（4.0.16 → 5.2.78.53746723.dc）、`magisk`（25.2 → 27.0）。文档新增“系统内 prebuilt vs 设备加载版本”对照表，并说明删 prebuilt 的后果 | `app_inventory.md` §2/§5.1、`summary_stats.json:updated_system_apps`、`risk_assessment.md` §1/§4 |
| 5 | 禁用批次改为单包逐项 | 已改。P1 拆为实验 1/2/3+，顺序固定 当贝 → 悬浮触控 → OTA，每项独立观察 ≥24 h，附观测项与结果记录模板；OTA 20% CPU 标注为**单次 343 s 区间快照** | `optimization_plan.md` §2、`app_removal_recommendations.md` §3.1 |
| 6 | 运行时数据表述 | 已改。216,324 kB 明确限定为 **smartapp 3 个进程的 PSS 合计**，不等于整条语音链路；`GenieMonitor` 快照中无进程 → 明确写“未获动态验证”，D 级依据仅为 Manifest + 跨包引用；新增 `MemTotal`/`MemFree`/`MemAvailable`/dumpsys `Free RAM`/`used pss` 指标表并说明不可互换、不可相加（含 35 分钟内 `MemFree` 89,812→44,332 kB 的波动证据）；不推算 RAM 节省 | `README.md` §4/§5/§6、`app_dependency_analysis.md` §8.3/§9、`summary_stats.json:memory_snapshot` |
| 7 | 保持核心保护 | 保持并强化：D 类 21 个不变，`AliGenieService`、`smartapp`、`GenieMonitor`、`GenieIoT`、ASR/VAD/Wakeup、音频 native 库、SystemUI、Launcher、Settings、WebView、PackageManager 相关组件，以及 `system/lib`、`lib/hw`、`vendor/lib` 全部列为禁止删除/修改 | `app_removal_recommendations.md` §5、`risk_assessment.md` §5 |
| 8 | 交付要求 | 6 份报告 + REVISIONS + 机器可读数据全部更新；新增过滤函数单元测试；本文件记录依据与未验证事项；只提交报告与工具变更；未触碰 `my-doc/06_t5_bridge` | 本目录全部 |

## 2. 分类变化

| 类 | rev1 | rev2 | 变化 |
|---|---|---|---|
| A | 1 个（4.60 MB） | 1 个（4.60 MB） | 数量不变，口径改为“候选、动态未验证” |
| B | 14 个（115.33 MB） | **13 个（28.15 MB）** | AMPE 移出 |
| C | 19 个（153.89 MB） | **20 个（241.07 MB）** | AMPE 移入 |
| D | 21 个（252.90 MB） | 21 个（252.9 MB） | 不变 |
| 合计 | 55 个 / 526.72 MB | **55 个 / 526.72 MB** | 一致 |

## 3. 过滤修复的量化影响

| 指标 | rev1 | rev2 |
|---|---|---|
| `dependency_edges.csv` 边总数 | 639 | 639 |
| `app`（应用级证据） | 219 | **197** |
| `platform_provider` | 110 | **132** |
| `sdk_noise` | 203 | 203 |
| `ambiguous` | 107 | 107 |
| 被误判为 app 级的 `com.android.providers.*` | 有（漏过滤） | **0** |

## 4. 测试结果

```
python -m unittest test_filters -v
test_aosp_provider_authorities ... ok
test_bare_authorities ... ok
test_empty_and_case ... ok
test_prefix_only_authority ... ok
test_regression_split_bug ... ok
test_third_party_authorities_are_not_platform ... ok
test_app_level_only ... ok
test_classify ... ok
----------------------------------------------------------------------
Ran 8 tests in 0.000s
OK
```

覆盖率说明：这 8 个用例覆盖审查意见点名的 5 个 authority（`com.android.providers.media` /
`com.android.providers.settings` / `com.android.providers.contacts` / `media` / `settings`）+ 5 个第三方
authority 反例 + 前缀型子 authority + 大小写/空值 + 证据分桶函数。

## 5. 仍未验证的事项（不得当作已证结论使用）

1. **ES 删除后的实际影响**：未做 `pm uninstall` 与重启验证；隐式调用只有在运行时才暴露。
2. **B 类 13 个包禁用后的行为**：无一在真机上执行过禁用；本报告的“通过判据”是待执行方案，不是结果。
3. **AMPE 禁用/删除后的技能影响**：7 个包的引用已确认，但“具体哪些语音技能会失效”未验证。
4. **删除 `/data/app` 覆盖包的系统 prebuilt 的后果**（`GenieAicare`/`GenieRTC`/`magisk`）：
   推断为“退化为普通数据区应用、失去 SYSTEM flag 与默认权限授予”，**未实测**。
5. **`GenieMonitor` / `AliGenieService` / `GenieIoT` 的运行时占用**：快照中没有它们的进程，PSS 未知。
6. **framework 侧调用的具体方法**：`framework/*.jar` 是 316 字节占位，只有 vdex 字符串证据。
7. **`vendor` 分区内部依赖**：未解包 `vendor.img`，`GooglePinyinIME`、`MTKThermalManager` 未做静态分析。
8. **任何 RAM 节省量**：本报告不提供，也不应从 PSS 快照推算。

## 6. 变更文件

| 文件 | 变更类型 |
|---|---|
| `README.md` | 重写结论摘要、9 问回答、RAM 口径（§6）、目录（§7）、限制（§8） |
| `revisions.md` | 新增（本文件） |
| `app_inventory.md` | 更新分布表、新增 §5.1 `/data/app` 覆盖包对照表 |
| `app_dependency_analysis.md` | 更新 AMPE 引用计数、唤醒锁归属限定、§9 链路表、§10 修订说明 |
| `app_removal_recommendations.md` | 重写 A 类章节、B 类首批改单包实验、新增 §4.1 AMPE 专项、§8 修订说明 |
| `risk_assessment.md` | 新增 2 类风险（prebuilt 退化、指标混用）、B 类表移除 AMPE、新增 §6 修订说明 |
| `optimization_plan.md` | P1 改单包实验、AMPE 移出、P2 前置条件、§4 指标口径、§9 修订说明 |
| `app_inventory.csv` / `.json` | 重新生成（AMPE→C、ES 说明、引用计数按修复后规则） |
| `dependency_edges.csv` | 重新生成（过滤修复，`evidence_class` 重算） |
| `summary_stats.json` | 新增 `revision`、`memory_snapshot`（含各指标含义）、`updated_system_apps`、`process_pss_kb` |
| `tools/filters.py` | 新增（共享过滤规则） |
| `tools/test_filters.py` | 新增（单元测试） |
| `tools/report.py` 等 | 改为调用 `filters`，移除错误的内联判断 |
