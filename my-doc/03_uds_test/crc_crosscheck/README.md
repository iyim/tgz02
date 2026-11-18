# crc_crosscheck — JS / C 的 FNV-1a 一致性测试

协议里的 `crc` 是接收端判断帧完整性的唯一依据。JS 端（Frida）与 C 端（`tgz2_frame.h`）
必须**逐字节**算出同一个值，否则每一帧都会被接收端判为损坏。

## 为什么需要这个测试

JS 的 `*` 是 IEEE-754 double。`h * 16777619` 最大约 7.2×10¹⁶，**超过 2⁵³**，低位被舍入，
与 C 的 `uint32` 回绕乘法不一致。必须用 `Math.imul()`。

本目录不靠"看代码觉得对"，而是让两侧算同一批字节然后逐条比对。

## 文件

| 文件 | 作用 |
|---|---|
| `gen_cases.py` | 生成 `cases.bin`：18 个固定缓冲区（真实 ch0、全零、全 FF、负数、INT16 边界、奇数长度…） |
| `crc_c.c` | C 侧：`#include "../tgz2_frame.h"`，直接调用 `tgz2_fnv1a()` |
| `crc_test.js` | JS 侧：**从 `../pcm_bridge_draft.js` 用 `FNV-BEGIN/END` 标记抽取 FNV 代码**后执行（测的就是发布代码） |
| `run_crosscheck.py` | 编译 + 运行两侧 + 逐行比对 + 跑反面对照 |
| `cases.bin` | 两侧共享的字节级输入（生成物） |
| `crosscheck_result.json` | 机读结果（`pass` / `mismatch` / `naive_diverged`） |

## 跑

```powershell
python run_crosscheck.py
```

判据：

| 项 | 期望 |
|---|---|
| `Math.imul` 版 vs C | **18/18 完全一致** |
| 普通 `*` 版 vs C（反面对照） | 应大面积不一致（实测 17/18） |

反面对照存在的意义：证明这条修正不是风格问题，而是会导致**全帧被拒**的功能性缺陷。

## 注意

- `cases.bin` 里第一个用例 `real_ch0` 取自 `../../pcm_talk.raw`（第二阶段真机采集）。
  该文件缺失时会跳过此用例并打印警告，其余 17 个用例仍然有效。
- 抽出的代码块除 `fnvStep`/`fnv2` 外不含任何 Frida API，因此可以在 node 里直接跑。
