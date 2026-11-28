# T9-28 证据目录说明

本目录只保留**可复跑脚本与派生结果**，原始事件文件不入库（可从设备重新拉取）。

## 1. 语料规模（E1）

```powershell
# 拉取设备上的事件文件（只读；events*.jsonl 由桥接端写入）
$dst = "system\my-doc\07_ai_bridge\evidence\t9-28\corpus"; New-Item -ItemType Directory -Force $dst | Out-Null
foreach ($f in @("events.jsonl","events.archive.jsonl","events.c1_after.jsonl","events.c2_after.jsonl",
                 "events.c3_after.jsonl","events.c4_after.jsonl","events.c6_after.jsonl")) {
    adb pull "/data/local/tmp/t5_bridge/work/$f" "$dst\$f"
}
python t9_28_corpus_stats.py
```

结论（2026-11-28）：1463 条 `asr_final`，去重后 **275** 条唯一话术，其中 8 条 ≤2 字。
→ T9-27 的"≥300 条标注语料"门槛今天达不到，故 T9-28 改成分层门槛
（见 `analysis/T9_28_TEST_MATRIX.md` §7）。

## 2. L1 对比实验（E3）

```powershell
$env:PYTHONIOENCODING="utf-8"
python t9_28_l1_experiment.py
```

三方法在 42 句人工标注验证集上的结果（写入 `L1_EXPERIMENT.txt`）：

| 方法 | 正确 | 弃权 | 误接管原厂 |
|---|---|---|---|
| M1 char bigram Dice（T9-27 原方案） | 23/42 = 54.8% | 28 | 0 |
| M2 结构化模板（触发族 + 槽位） | 36/42 = 85.7% | 13 | 0 |
| M3 模板 + Dice 仅补本地技能 | 38/42 = 90.5% | — | 0 |

注意：这是**设计验证集**，不是线上精度。它的用途是证明"哪种方法在哪种说法上会错"，
以及证明"补词可以让指标好看但不可持续"（脚本末段的过拟合演示）。

## 3. 文件清单

| 文件 | 内容 |
|---|---|
| `t9_28_corpus_stats.py` | 事件文件统计（只读） |
| `t9_28_l1_experiment.py` | L1 三方法对比实验（含 42 句标注集） |
| `L1_EXPERIMENT.txt` | 上述实验的原始输出（UTF-8） |
| `corpus_unique.txt` | 275 条去重真实话术，供人工标注（每行一句） |
| `corpus/` | **不入库**：原始 `events*.jsonl` 拉取目录（按 §1 重建） |
