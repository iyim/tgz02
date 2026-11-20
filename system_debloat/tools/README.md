# 复现用脚本

本目录位于 `system_debloat/tools/`（仓库根 = 解包后的 system 分区根目录）。

这些脚本用于从**原始解包镜像**重新生成 `../app_inventory.*` 与 `../` 下各报告中的表格。
脚本里写死了本机路径（`D:\tgz02\OS\system` 为解包后的 system 根，`D:\tgz02\OS\system\system_debloat`
为输出目录），换机器时改各脚本顶部的 `ROOT` / `DOC` / `OUT` 常量即可。

> 注意：`system_debloat/` 是纯文档目录，系统不会读取它；但**重新打包 `system.img` 前需把它从打包树中排除**，
> 否则它会被打进 `/system/system_debloat`。详见 `../README.md` 第 0 节。

| 脚本 | 作用 |
|---|---|
| `axml.py` | 二进制 AndroidManifest（AXML）解析 + DEX 字符串表读取；自动判别 UTF-8 字符串池的单/双长度前缀 |
| `filters.py` | **证据过滤规则**：`is_platform_authority()` 精确 + 边界感知前缀匹配（rev3 修正）、`is_sdk_noise()`、`classify_evidence()` |
| `protection.py` | **用户保护规则（rev3 新增）**：六个受保护 App、Magisk 相关组件清单、`assert_no_protected()` 强制拦截 |
| `test_filters.py` | 过滤规则单元测试（12 条，含 rev3 的 `com.android.settingshelper.provider` 边界用例） |
| `test_protection.py` | **保护与数据一致性测试（rev3 新增）**：保护清单、执行清单、Magisk 范围、统计一致性、旧目录引用检查 |
| `scan.py` | 遍历 `app/`、`priv-app/`（含散装 APK）→ 体积、组件、权限、vdex 字符串 → `out/apps.json` |
| `refs2.py` | 跨包引用（组件 / authority / 私有 action）、SDK 打包降噪、framework vdex 扫描 → `out/refs2.json` |
| `digest.py` | 生成逐包可读摘要 `out/digest.txt`（人工复核用） |
| `edges.py` | 生成 `dependency_edges.csv`（每条边带 `evidence_class`） |
| `report.py` | 分类裁定 + 保护过滤 + `app_inventory.csv/json`、`summary_stats.json`、`user_protected.json` |
| `mkdocs*.py` | 生成 `README.md` 与本目录其余报告 |
| `collect_baseline.sh` | 设备只读基线采集（meminfo / cpuinfo / power / alarm / services / pm） |
| `ota_observe.py` | **rev4.1** OTA 六小时只读采样器（`/proc/<pid>/stat` 增量、PSS、services、alarm、power、logcat），每样本一行 JSON |
| `ota_observe.ps1` | 同上功能的 PowerShell 版（无 Python 环境时可用） |
| `ota_analyze.py` | **rev4.1** 观测聚合器：ticks 差值算 CPU%、PSS min/max/median/count、PID 变更事件、自相关、按小时曲线、日志构成 |
| `test_ota_observation.py` | **rev4.1** 观测报告与原始样本的一致性测试（11 条） |

## 运行顺序

```bash
python -m unittest discover -v   # 先跑测试：filters + protection
python scan.py      # ~5 min，含 vdex 字符串提取
python refs2.py     # ~4 min，含 framework vdex 扫描
python digest.py    # 可选，人工复核
python report.py    # 生成清单、统计、保护清单
python edges.py     # 生成依赖边 CSV
python mkdocs.py && python mkdocs2.py && python mkdocs3.py && python mkdocs4.py
```

依赖：Python 3.11，仅标准库。

## 过滤规则（rev2 修复）

rev1 的 `report.py` 用 `x['token'].split('.')[0] in ('com.android', 'media', 'settings')` 排除平台 Provider，
`com.android.providers.media` 的 `split('.')[0]` 是 `com`，因此**永远匹配不上**，AOSP Provider 被算成
“应用级依赖”。rev2 改为 `filters.is_platform_authority()`：精确集合 + `com.android.providers.` 等前缀匹配，
并用 `test_filters.py` 锁定行为（含一条专门复现该 bug 的回归用例）。修复后：

- `dependency_edges.csv` 中 `platform_provider` 从 110 条增加到 132 条，`app` 从 219 条降为 197 条；
- 不再有任何 `com.android.providers.*` 被标成 `app` 级证据；
- 包数与总体积不变（55 个 / 526.72 MB）。
