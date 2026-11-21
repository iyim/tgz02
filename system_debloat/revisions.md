# 修订记录（rev3 / rev3.1 / rev4 / rev4.1 / rev5）

- 修订时间：2026-11-21（rev4.1 观测窗口 2026-11-20 20:00 → 2026-11-21 02:00）
- 修订对象：本目录（`system_debloat/`）下全部报告与机器可读数据；不涉及 `system` 镜像、APK、T5 代码或设备分区
- 修订触发：rev3 = ① 操作者指定六个 App 必须保留；② rev2 遗留的三个 P2 问题。
  rev3.1 = rev3 审查的三项小范围修订。rev4 = 10 个 B 类候选收益/风险重估。
  rev4.1 = OTA 六小时只读观测与证据表述修正。rev5 = B 类筛选七问 + A 类静态候选扩展 + 批次划分。
  rev5.1 = 桌面 18 个入口专项排查 + system 删除候选扩展
- 本轮**未执行**任何 `pm disable-user` / `pm enable` / `pm uninstall` / 镜像或 boot 写操作；
  设备 `pm list packages -d` 仍为空

## 000. rev5.1：桌面预装应用专项（2026-11-21）

| 项 | 内容 |
|---|---|
| 新增文件 | `desktop_app_audit.md`（18 个桌面入口映射 + 专项评估 + system 删除候选 + 第一批建议 + 收益汇总）、`tools/mkdocs8.py`（生成器）、`tools/test_desktop_audit.py`（14 条测试） |
| 设备只读取证 | `pm list packages -f`（67 个已安装包及 APK 路径）、`dumpsys package <pkg>` 的 `LAUNCHER` 命中、`ls -l` 系统 APK 体积；未禁用/未卸载/未清数据 |
| 识别结果 | 18 个入口：**确定 8 个**（aicare=爱家看护、albums=相册、children=儿童、iot=智能家居、settings=设置、camera、cook=菜谱、cmvideo=CCTV.新视听）、**较可信 2 个**（youku.iot=优酷、GenieMonitor=手势）、**未知 8 个**（旭慧生活、通话、人教数字课堂、购物、音乐、闹钟、蚂蚁森林、哔哩哔哩——67 包中无对应 APK，判定为 launcher/webapp 入口） |
| 分区结论 | 5 个入口是 `/data/app` 安装（camera、cook、cmvideo，以及 aicare/rtc/magisk 的覆盖版本）：删除它们**不释放 system 空间**，只能卸载（本轮不做） |
| 第一批删除 | **空**：system 内的桌面应用全部与语音/视频/手势/设备控制耦合；唯一低耦合的 `userdictionary` 仅 0.04 MB |
| 第一批禁用 | 沿用 rev5 的 6 个平台小组件（无进程、无引用、功能独立；**空间收益 0**） |
| 条件删除场景 | 手势 47.86 MB、优酷 45.06 MB、儿童 20.14 MB、相册 10.56 MB，合计 **123.62 MB**（整目录），均需先禁用验证 + 你确认放弃对应功能 |
| 未确认项 | 8 个入口的归属、`/data/app` 三个 APK 的大小（目录不可读）、label 字符串（未解析 resources.arsc） |

## 00. rev5：筛选与批次（2026-11-21）

| 项 | 内容 |
|---|---|
| 新增文件 | `pruning_priority.md`（统一优先级表 + 批次 + 禁止清单 + 下一阶段顺序）、`a_class_candidates.md`（扩展 A 类静态候选逐项分析）、`tools/screening.py`（筛选数据与批次）、`tools/mkdocs7.py`（两文件生成器）、`tools/test_screening.py`（18 条测试） |
| inventory 变更 | `app_inventory.json` / `.csv` 新增 `screening_tier` / `screening_batch` / `screening_note` 三个字段；`summary_stats.json` 新增 `screening` 块；**技术分类 A/B/C/D 未改动**（仍是 A=1、B=13、C=20、D=21） |
| B 类七问 | `b_class_priority_analysis.md` 新增 §0.1：10 个候选逐项回答“是否系统必要 / 原厂与 Framework 引用 / 其他依赖 / 禁用影响 / 可否单独 pm 禁用 / 是否优先 / 风险与证据” |
| 第一批 | 6 个平台小组件：`statementservice`、`bluetoothmidiservice`、`pacprocessor`、`vpndialogs`、`captiveportallogin`、`companiondevicemanager`（无进程、无 app 级引用、功能独立、风险低；**收益为 0，仅减少潜在拉起面**） |
| 第二批 | `osupdate`（唯一有实测占用：CPU 21.53% / PSS 16,557 kB，但风险最高）、`guide`、`storagemanager`、`mtp` |
| 静态删除候选 | `com.android.providers.userdictionary`（0.04 MB，AOSP 词典 Provider）——**唯一**给出静态删除建议的项 |
| 先禁用后评估 | `com.alibaba.spkey`、`com.alira.info`、`com.aliyun.uuid`、`com.yunos.tv.provision`（均 0 app 级引用，但用途不明） |
| 明令不删 | `ar.monitor`（47.86 MB，手势/CMCC 服务）、`GenieAicare`（/data/app 覆盖）、`arome` AMPE（12 处引用）；语音链路 14 个包、六个受保护 App |
| 诚实结论 | 本镜像中**没有**“明显无用的厂商推广/演示 App”；能进静态删除验证的只有 0.04 MB 的一项，其余要么用途不明，要么挂在语音/媒体链路上 |

## 0. rev4.1：OTA 只读观测与证据修正（2026-11-21）

| 项 | 内容 |
|---|---|
| 新增文件 | `ota_observation_report.md`（观测报告）、`ota_observation/samples.jsonl`（73 条原始样本）、`ota_observation/analysis.json`（聚合）、`ota_observation/sampler.log`、`tools/ota_observe.py`（采样器）、`tools/ota_analyze.py`（聚合器）、`tools/ota_observe.ps1`（等价 PowerShell 版）、`tools/test_ota_observation.py`（11 条测试） |
| 观测方式 | 每 300 s 一次，连续 73 次 / 21,600 s；`/proc/<pid>/stat` 的 `utime+stime` 差值算 CPU，`dumpsys meminfo` 取 PSS，`dumpsys activity services|alarm|power` + `logcat -d` 取服务/唤醒/日志；**全程只读** |
| CPU 结论 | 均值 **21.53%**、中位 21.09%、最小 17.85%、P90 24.59%；**72/72 区间 ≥10%**；lag1=−0.564 / lag2=+0.502，按小时均值 21.05%–22.68% → **持续负载，不是周期尖峰** |
| RAM 结论 | PSS n=73，min 12,636 / median **16,557** / max 19,687 kB；不据此推算“禁用后释放量” |
| 服务结论 | `UpdateService` 73/73 样本存在且 `startRequested=true`；PID 6667 全程未重启 |
| 唤醒结论 | `dumpsys alarm` 0/73、`dumpsys power` 0/73 → 无定时唤醒、无持锁 |
| 广播/日志 | `FOTA_UPDATE` / `RebootUpdate` **本次观测窗口未捕获到**（标记未知，静态引用仍成立）；捕获 1,204 行 `tv_osupdate` 日志，其中上传 776 行、失败 404 行，跨 7 个小时 → 上传失败重试循环（仅日志可见，未做代码级归因） |
| 证据表述修正 | ① `dumpsys activity broadcasts` 未见 `FOTA_UPDATE` 不再解释为“未使用”，统一为“未捕获 → 未知”；② 四条证据规则写入 `b_class_priority_analysis.md`（2.3 节前）；③ 清理 `optimization_plan.md` 中重复的 Guide 说明并修复被截断的观测表 |
| 判定 | V0 完成；按 rev4.1 第六节标准，前 5 条满足（连续 6 h、持续负载可量化、PSS 分布已测、风险已核对、恢复步骤明确），第 6 条无法在禁用前证明 → **可进入 V1 单包禁用验证，但需你明确接受“升级链路被切断”的功能取舍** |

## 1. rev4：B 类候选收益与风险（2026-11-20）

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
