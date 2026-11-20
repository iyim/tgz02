# 复现用脚本

这些脚本用于从**原始解包镜像**重新生成 `../app_inventory.*` 与报告中的表格。
脚本里写死了本机路径（`D:\tgz02\OS\system` 为解包后的 system 根，`D:\tgz02\OS\_analysis\debloat\out`
为输出目录），换机器时改 `axml.py` 之外的三个常量即可。

| 脚本 | 作用 |
|---|---|
| `axml.py` | 二进制 AndroidManifest（AXML）解析 + DEX 字符串表读取；自动判别 UTF-8 字符串池的单/双长度前缀 |
| `scan.py` | 遍历 `app/`、`priv-app/`（含散装 APK）→ 体积、组件、权限、vdex 字符串 → `out/apps.json` |
| `refs2.py` | 跨包引用（组件 / authority / 私有 action）、SDK 打包降噪、framework vdex 扫描 → `out/refs2.json` |
| `digest.py` | 生成逐包可读摘要 `out/digest.txt`（人工复核用） |
| `report.py` | 分类裁定 + `app_inventory.csv/json`、`summary_stats.json` |
| `mkdocs*.py` | 生成 `README.md` 与本目录其余报告 |
| `collect_baseline.sh` | 设备只读基线采集（meminfo / cpuinfo / power / alarm / services / pm） |

## 运行顺序

```bash
python scan.py      # ~5 min，含 vdex 字符串提取
python refs2.py     # ~4 min，含 framework vdex 扫描
python digest.py    # 可选，人工复核
python report.py    # 生成清单与统计
python mkdocs.py && python mkdocs2.py && python mkdocs3.py && python mkdocs4.py
```

依赖：Python 3.11，仅标准库。
