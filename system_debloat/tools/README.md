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
| `filters.py` | **证据过滤规则（rev2 新增）**：`is_platform_authority()` 精确/前缀匹配 AOSP Provider authority、`is_sdk_noise()`、`classify_evidence()` |
| `test_filters.py` | **过滤规则单元测试（rev2 新增）**，覆盖 `com.android.providers.media/settings/contacts`、`media`、`settings` 与第三方 authority |
| `scan.py` | 遍历 `app/`、`priv-app/`（含散装 APK）→ 体积、组件、权限、vdex 字符串 → `out/apps.json` |
| `refs2.py` | 跨包引用（组件 / authority / 私有 action）、SDK 打包降噪、framework vdex 扫描 → `out/refs2.json` |
| `digest.py` | 生成逐包可读摘要 `out/digest.txt`（人工复核用） |
| `edges.py` | 生成 `dependency_edges.csv`（每条边带 `evidence_class`） |
| `report.py` | 分类裁定 + `app_inventory.csv/json`、`summary_stats.json`（内存指标口径在此定义） |
| `mkdocs*.py` | 生成 `README.md` 与本目录其余报告 |
| `collect_baseline.sh` | 设备只读基线采集（meminfo / cpuinfo / power / alarm / services / pm） |

## 运行顺序

```bash
python -m unittest test_filters -v      # 0.0s，先跑过滤规则测试
python scan.py      # ~5 min，含 vdex 字符串提取
python refs2.py     # ~4 min，含 framework vdex 扫描
python digest.py    # 可选，人工复核
python report.py    # 生成清单与统计
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
