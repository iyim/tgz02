# 修订记录（rev3 / rev3.1 / rev4）

- 修订时间：2026-11-20
- 修订对象：本目录（`system_debloat/`）下全部报告与机器可读数据；不涉及 `system` 镜像、APK、T5 代码或设备分区
- 修订触发：rev3 = ① 操作者指定六个 App 必须保留；② rev2 遗留的三个 P2 问题。
  rev3.1 = rev3 审查的三项小范围修订（A 类映射、README 旧实验顺序、保护期限措辞）。
  rev4 = 对剩余 10 个 B 类候选做收益/风险重估，形成下一阶段真机验证计划
- 本轮**未执行**任何 `pm disable-user` / `pm uninstall` / 镜像或 boot 写操作；设备 `pm list packages -d` 仍为空

## 0. rev4：B 类候选收益与风险（2026-11-20）

| 项 | 内容 |
|---|---|
| 新增文件 | `b_class_priority_analysis.md`（10 个候选逐项分析 + OTA 专项 + 排序 + 验证顺序 + 回退） |
| 分析范围 | 仅 `executable_lists.B_disable` 的 10 个包，未扩大 |
| 数据来源 | `app_inventory.json`（体积/persistent/组件/BOOT 接收器/快照 PSS）、`dependency_edges.csv`、framework vdex 扫描、设备只读快照 |
| 关键结论 | 10 个候选里**只有 OTA 有实测占用**（PSS 16,011 kB；单窗口 343.337 s 内 20% CPU，无 alarm/wakelock）；其余 9 个快照无进程 → 禁用无可测量 RAM/CPU 收益 |
| 顺序调整 | `optimization_plan.md` 第 2 节改为 V0（OTA 只读观测）→ V1（条件触发的单包禁用）→ V2/V3（存储驱动，可选）→ 7 个平台小组件**不入队**；取消旧的“依次禁用 8 个 AOSP 组件”预案 |
| 空间口径 | 禁用恒为 0；`guide` 5.42 MB、`storagemanager` 2.32 MB、7 个小组件合计 0.42 MB 只有“删除”才释放 |
| OTA 专项 | 结论：**优先验证、不直接禁用**；`UpdateService` 为 started service（`startRequested=true`、`createdFromFg=true`、`stopIfKilled=false`，创建于 1d19h30m 前），`pm enable` 后需重启一次才恢复常驻 |
| 未验证 | OTA 的 20% 是否周期性、`FOTA_UPDATE` 是否有运行时调用、任何候选的 RAM/CPU 节省量、framework 绑定的运行时表现 |
| 未做的事 | 未执行任何设备操作；未研究 Magisk 安装结构；未触碰受保护 App 与语音链路 |

## 1. rev3.1 小范围修订（2026-11-20）

| # | 问题 | 处理 | 验证 |
|---|---|---|---|
| 1 | A 类直接映射到 `A_delete`，静态候选被误当删除计划 | `protection.exec_bucket()` 拆分：`A_candidate` 收录**全部** A 类静态候选；`A_delete` 默认空，只有同时具备真机动态验证（`DYNAMIC_VERIFIED_A`，空集）与用户明确授权（`USER_AUTHORIZED_DELETE`，空集）才可进入；`report.py` 增加三条子集断言；受保护包无论状态如何不进 `A_delete` | `A_candidate = ['com.estrongs.android.pop']`，`A_delete = []`；4 条新增测试 |
| 2 | README 仍出现旧实验顺序 `dangbei.apk → easytouch.apk → Osupdate` | 删除该行；改为当前有效顺序 OTA → 开机引导 → 8 个 AOSP 边缘组件，并注明当贝/EasyTouch/权限狗不再出现在任何实验顺序中 | `test_protection` 断言 README 不含该顺序与 `qxg.apk` 试验项 |
| 3 | 保护期限表述不统一 | `PROTECTION_REASON` 统一为「在用户另行明确授权或调整保护要求之前，不得删除、禁用或精简。」；`exec_action` 同步改写 | 6 个 App 的 JSON/CSV/报告文本一致；测试断言逐字匹配 |

> rev3.1 不重新分析系统、不重构工具、不扩大保护范围，也未研究 Magisk 安装结构。

## 1. rev3 改动对照

| # | 任务项 | 处理方式 | 落点 |
|---|---|---|---|
| 1 | 六个 App 永久保护 | 从 inventory 实测包名（非显示名）：`com.dangbei1.tvlauncher`、`bin.mt.plus`、`com.estrongs.android.pop`、`com.web1n.permissiondog`、`com.shere.assistivetouch`、`com.topjohnwu.magisk`。全部写入 `protection.py`，`report.py` 在生成阶段强制过滤：受保护包只进 `protected_blocked` 桶，不进 `A_delete`/`B_disable`/`C_observe`/`D_forbidden`；`exec_action` 统一为“受用户保护：禁止删除、禁用、清数据、限制自启/后台/权限” | `tools/protection.py`、`app_inventory.*`、`user_protected.json`、`summary_stats.json:executable_lists`、五份报告 |
| 2 | Magisk 独立保护 | 单列 `MAGISK_RELATED`：镜像内仅 `app/magisk.apk`（11,278,270 B，v25.2）；镜像外 `/sbin/magisk32|magiskinit|magiskpolicy`、`/sbin/magisk` 符号链接、`/sbin/.magisk`、`/data/adb`（后两者 shell 无权限，内容未读）。同时记录“已核查未发现”的镜像位置（`bin/su`、`xbin/su`、init rc、build.prop）。禁止删除/清理/改 `boot.img` 与 init。**未推断安装结构** | `protection.py`、README §4.1、`app_removal_recommendations.md` §2.1 |
| 3 | ES 从删除清单排除 | 保留 **A 类**技术分类与静态分析结论（0 条 app 级入向引用、无进程、无 native 库），仅加 `user_protected=true` 与拦截；`A_delete` 桶为空；文中明确“不为方便把 ES 伪装成 D 类” | `app_removal_recommendations.md` §3.1、`app_inventory.*`、`summary_stats.json` |
| 4 | P2-1 旧目录路径引用 | 删除/改写全部旧目录路径引用（原 7 处：README 2 处、plan 2 处、risk 2 处、revisions 1 处），统一改为“T5 工程与本目录完全独立”这类不涉及旧目录的描述；`test_protection.TestLegacyPathsRemoved` 断言报告与数据中不再出现该旧路径 | 全部 `.md` / `.json` / `.csv` |
| 5 | P2-2 A 类含义 | 统一为「**A 类候选：静态分析认为具备删除可能性，尚未完成真机动态验证。**」；新增 `class_label` 字段与“可执行/不可执行”列，并在总览中区分“静态候选 / 已验证 / 用户保护 / 当前可执行” | `report.py:CLASS_LABEL`、README §5/§6、`app_removal_recommendations.md` §1/§3、`app_inventory.md` §1 |
| 6 | P2-3 authority 边界 | `is_platform_authority()` 由裸 `str.startswith` 改为「精确集合匹配 或 等于前缀 或 以 `<前缀>.` 开头」；`com.android.settingshelper.provider` 等相似串不再误判；新增 4 条边界测试（含审查指定的断言） | `tools/filters.py`、`tools/test_filters.py` |

## 2. 分类与保护状态（rev3）

| 类 | 数量 | 分区体积 MB | 其中受保护 | 可执行 |
|---|---|---|---|---|
| A 类候选 | 1 | 4.6 | 1（ES） | **0** |
| B 建议禁用 | 13 | 28.15 | 3（当贝 / EasyTouch / 权限狗） | 10 |
| C 暂时保留 | 20 | 241.07 | 1（Magisk） | 0 |
| D 禁止删除 | 21 | 252.9 | 0 | 0 |
| 合计 | 55 | **526.72** | **5（镜像内）+ 1（设备侧）** | 10 |

> 分类数量与 rev2 相同（A1/B13/C20/D21，共 55 个 / 526.72 MB）；保护不改变技术分类，只改变可执行性。

## 3. 过滤修复的量化影响

| 指标 | rev1 | rev2 | rev3 |
|---|---|---|---|
| `dependency_edges.csv` 边总数 | 639 | 639 | 639 |
| `app`（应用级证据） | 219 | 197 | 197 |
| `platform_provider` | 110 | 132 | 132 |
| `sdk_noise` | 203 | 203 | 203 |
| `ambiguous` | 107 | 107 | 107 |
| 被误判为 app 级的 `com.android.providers.*` | 有 | 0 | 0 |
| 相似串（如 `com.android.settingshelper.provider`）被误判为平台 | 可能 | **可能（裸前缀）** | **0（边界匹配）** |

> rev3 的边界修正在现有数据上没有改变上述计数（镜像中不存在此类相似 authority），
> 但消除了“前缀相似即平台”的判定漏洞；测试用例锁定该行为。

## 4. 测试结果（rev3.1 实跑）

```
python -m unittest discover -v      # 在 system_debloat/tools/ 下执行
```

- `test_filters`：**12 条**，含 `com.android.settingshelper.provider` 边界用例、
  前缀相似反例（`com.android.settingsproxy`、`com.android.providersx.foo` 等）、子命名空间正例。
- `test_protection`：**30 条**，覆盖六个 App 的保护登记、执行清单隔离、ES「保留 A 类但被拦截」、
  `A_candidate`/`A_delete` 映射与授权门（含 4 条合成用例）、Magisk 组件范围、CSV/JSON 一致性、
  统计一致性、旧目录引用检查、README 旧实验顺序与保护期限措辞检查。

两套测试合计 **42 条**，全部通过（`Ran 42 tests ... OK`）。

## 5. 仍未验证的事项（不得当作已证结论使用）

1. **ES 删除后的实际影响**：未做 `pm uninstall` 与重启验证（且它现在受用户保护，不会执行）。
2. **可执行 B 类（10 个）禁用后的行为**：无一在真机上执行过禁用；报告中“通过判据”是待执行方案，不是结果。
3. **AMPE 禁用/删除后的技能影响**：7 个包的引用已确认，但“具体哪些语音技能会失效”未验证。
4. **删除 `/data/app` 覆盖包的系统 prebuilt 的后果**（`GenieAicare`/`GenieRTC`）：
   推断为“退化为普通数据区应用、失去 SYSTEM flag 与默认权限授予”，**未实测**。
5. **`GenieMonitor` / `AliGenieService` / `GenieIoT` 的运行时占用**：快照中没有它们的进程，PSS 未知。
6. **framework 侧调用的具体方法**：`framework/*.jar` 是 316 字节占位，只有 vdex 字符串证据。
7. **`vendor` 分区内部依赖**：未解包 `vendor.img`，`GooglePinyinIME`、`MTKThermalManager` 未做静态分析。
8. **任何 RAM 节省量**：本报告不提供，也不应从 PSS 快照推算。
9. **Magisk 安装结构**：`/sbin/.magisk`、`/data/adb` 对 shell 不可读，本轮未提权；`boot.img` 未分析。
   只能确认 `/sbin` 为 Magisk tmpfs 挂载与三个二进制的存在，不推断补丁细节。
10. **六个受保护 App 的“必要权限/自启”边界**：保护规则要求不限制其必要自启与权限，
    但其具体依赖集合（例如当贝桌面拉起的推送服务是否必要）未做逐项验证。

## 6. 变更文件

**rev3.1（本次）**

| 文件 | 变更 |
|---|---|
| `tools/protection.py` | 新增 `exec_bucket()` 与授权门 `DYNAMIC_VERIFIED_A` / `USER_AUTHORIZED_DELETE`（均为空集）；保护期限措辞改为统一表述 |
| `tools/report.py` | 拆分 `A_candidate` / `A_delete`；新增三条子集断言；`exec_action` 措辞同步 |
| `tools/test_protection.py` | 30 条（新增 `TestCandidateDeletionGate` 5 条、`TestReadmeExperimentOrder` 4 条，修订既有断言） |
| `README.md` | 删除旧实验顺序；新增 §4.2 A 类候选与删除清单映射；保护期限措辞统一 |
| `app_removal_recommendations.md` | §3 增加 `A_candidate` / `A_delete` 映射说明 |
| `app_dependency_analysis.md` | 受保护项的技术结论加“不构成执行建议”限定 |
| `app_inventory.*` / `summary_stats.json` / `user_protected.json` | 重新生成（新增 `A_candidate` 桶、措辞统一） |
| `revisions.md` | 新增 §0 rev3.1 记录 |

**rev3（上一版，归档）**

| 文件 | 变更类型 |
|---|---|
| `README.md` | 新增 §4 用户保护清单（含 §4.1 Magisk）+ 章节重编号；结论与 9 问改为“保护优先”口径 |
| `revisions.md` | 重写（rev2 归档 + rev3 记录） |
| `app_inventory.md` | 清单新增「保护」列、新增 §2 用户保护表、章节重编号 |
| `app_dependency_analysis.md` | §10 修订说明追加 rev3（保护不影响技术分类） |
| `app_removal_recommendations.md` | 新增 §2 用户保护（含 §2.1 Magisk）、A 类改“候选”口径、B 类拆“受保护/可试验” |
| `risk_assessment.md` | 新增“违反用户保护”“误处理 Magisk 组件”风险、新增 §2.3 受保护项 |
| `optimization_plan.md` | P1 移除当贝/EasyTouch/权限狗、实验改为 OTA→引导→AOSP、P2 前置条件加保护项 |
| `app_inventory.csv` / `.json` | 新增 `class_label` / `user_protected` / `protection_reason` / `exec_action` |
| `dependency_edges.csv` | 重新生成（authority 边界修复后重算 `evidence_class`） |
| `summary_stats.json` | 新增 `user_protection` 与 `executable_lists`（含 `protected_blocked`） |
| `user_protected.json` | 新增（机器可读保护清单与执行清单） |
| `tools/protection.py` | 新增（保护规则 + `assert_no_protected()`） |
| `tools/test_protection.py` | 新增 |
| `tools/filters.py` | 修正 `is_platform_authority()` 边界匹配 |
| `tools/test_filters.py` | 新增 4 条边界用例（12 条） |
| `tools/report.py` | 接入保护过滤、新增字段与 `user_protected.json` 输出 |
| `tools/mkdocs*.py` | 生成保护章节、移除旧目录路径引用 |

## 附录：rev2 修订记录（2026-11-20，历史归档）

| # | 审查意见 | 处理方式 |
|---|---|---|
| 1 | AMPE 应从 B 调整为 C | 已改。依据：降噪后 7 个包对 `genie.webapps.START/INIT` 与 `GwaReceiver` 有 app 级引用 |
| 2 | ES 不应再称“安全删除” | 已改为“A 类候选：静态通过，删后动态验证未完成” |
| 3 | 平台 Provider 过滤有 bug | 新增 `filters.py` + `test_filters.py`，修复 `split('.')[0]` 判断 |
| 4 | `/data/app` 更新包数量错误 | 由 2 个修正为 3 个（补 `GenieAicare`），新增版本对照表 |
| 5 | 禁用批次改为单包逐项 | P1 拆为单包实验，每项观察 ≥24 h；OTA 20% CPU 标注为单次区间快照 |
| 6 | 运行时数据表述 | 216,324 kB 限定为 smartapp 3 进程；指标口径分表；不推算 RAM 节省 |
| 7 | 保持核心保护 | D 类 21 个不变 |
| 8 | 交付要求 | 报告与机器可读数据全部更新，新增过滤测试 |

量化影响：`app` 级边 219 → 197，`platform_provider` 110 → 132，`com.android.providers.*` 误判为 0。
