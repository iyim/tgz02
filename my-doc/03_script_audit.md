# 第三阶段附：既有脚本审查（问题清单与修改建议）

审计对象（第二阶段产物）：
`my-doc/capture_pcm.py`、`my-doc/analyze_pcm.py`、`my-doc/tgz02_probe.js`、`my-doc/02_runtime_pcm_verification.md`

审计方法：逐行读 + 用反汇编对账 + 在本机实跑（真机未参与）。
**原则：不为了"整理代码"改动任何已验证的 hook 偏移与 PCM 参数。** 见 §5 的"不改动清单"。

仓库事实先对齐：仓库根 = `D:\tgz02\OS\system`（`origin = github.com/iyim/tgz02`，分支 `main`），
所以文档里的 `my-doc/x` 就是 `system/my-doc/x`，两者一致。`_analysis/` **不在仓库内**（`git ls-files` 无记录）。

---

## 1. `capture_pcm.py`

先说结论：**核心逻辑是对的**。`args[2]` 取数据指针、`args[3]` 取长度，与本阶段反汇编完全吻合：

```
0xd4568  mov  r7, r3        ; r3 = len
0xd456c  cmp  r2, #0        ; r2 = data
0xd4574  cmp  r7, #1
```

（`r0=this, r1=type, r2=data, r3=len`，对应 Frida `args[1..3]`，`args[0]=this`。）
这条不是为了改动，是**把"为什么这么写"钉在证据上**，避免后续有人再怀疑一次。

| # | 位置 | 问题 | 影响 | 建议 |
|---|---|---|---|---|
| A1 | L22 `LIMIT = 8*1024*1024` | 超过 8 MB 后**静默停止发送**，但 `frames`/`meta` 继续累加 | 40 s 采 5 MB，约 64 s 就撞墙；长时间采集会得到"统计正常、数据截断"的假象 | 撞墙时 `send({t:'warn'})` 并打印；把上限做成 `--limit` 参数 |
| A2 | L31 `send({...}, buf)` | Frida 的消息队列**无界**，没有 in-flight 背压 | 宿主侧（USB/adb/Python）一慢，帧全堆在 `:core` 的 JS 堆里，内存涨、GC 压到音频线程 | JS 侧维护 in-flight 计数，超过 N 帧就丢并计数（与桥的设计一致） |
| A3 | L30 `readByteArray(len)` | 没有 `try/catch` | 万一指针非法/帧在复制途中被复用，`onEnter` 抛异常，这一帧丢且日志只有一行 `error` | 包 `try/catch`，异常计一帧 `readfail` |
| A4 | L21-24 | `base === null` 时只 `send` 不 `return`，下一行 `base.add()` 抛 TypeError | 脚本加载直接失败，看起来像"hook 没生效" | 加 `else` 分支，把 `Interceptor.attach` 整段包起来 |
| A5 | L89 `meta.write(...)` | 每帧写但不 `flush` | 被 kill/Ctrl+C 中断时 meta 可能是空文件，raw 缺尾巴，事后无法对齐 | 每 250 帧 `flush()` 一次 |
| A6 | L26-37 | 不校验 `len` | 固件若把通道数改成 2/8，仍会写进同一个文件，事后无法分辨 | `if (len % 8) return;` 并把 `lens` 直方图当断言用 |
| A7 | 02 文档 §12 L409 | 启动命令写的是 `-l 0.0.0.0:27042` | 与第三阶段安全要求（只监听 `127.0.0.1`、通过 `adb forward`）冲突 | 改成 `-l 127.0.0.1:27042`；`adb forward tcp:27042 tcp:27042` 不受影响 |

已核对**不是问题**的：`--pid 0` + 按进程名解析 pid（第二阶段踩过 pid 变化，这个修复是对的）；`session/script` 的 detach 顺序；结束时打印 `lens` 直方图。

---

## 2. `analyze_pcm.py`

| # | 位置 | 问题 | 影响 | 建议 |
|---|---|---|---|---|
| B1 | L8-9 | `IN`/`OUTDIR` 写死 `D:\tgz02\OS\_analysis\capture` | 换机器即失败；且该目录**不在仓库里**，与文档"本仓库脚本"的说法矛盾 | 改 `argparse`，默认值用脚本自身目录（`my-doc/`），可覆盖 |
| B2 | L104-107 | 仍然生成 `mix4.wav`（4 通道平均） | ch2/ch3 是噪声底，平均会把有效信号稀释 4 倍。第二阶段已明确"mix4 不要用"，但脚本还在产出，容易被后来人误用 | 默认不生成，加 `--mix` 开关；或改名 `mix4_diluted.wav` |
| B3 | L16 | 文件不存在直接抛栈 | 体验问题 | 友好报错并退出码 2 |
| B4 | L97 `astype('<i2')` | float → int16 是**截断**不是四舍五入 | 只影响 `mix4`，对 RMS/相关性统计无影响（1 LSB 量级） | 记录在案即可，不必改 |

统计口径复核（没错）：`x.reshape(frames, SPF, CH)` 与 `mono_all = x.reshape(frames*SPF, CH)` 对交错 4 通道是正确的；
`FRAME_BYTES=5120 / CH=4 / SPF=640` 与真机实测一致；能量窗口 0.5 s、活动阈值 `max(200, p30*3)` 合理。

---

## 3. `tgz02_probe.js`

这个必须改，理由不是"整洁"，而是**它给出的结论是错的**：

| # | 位置 | 问题 | 影响 | 建议 |
|---|---|---|---|---|
| C1 | L46 `off('libsmartbox.so', 0xea8c4)` | `0xea8c4` 是从不被调用的兄弟 thunk（第二阶段已用三重证据确认：listener vtable `0x8c3f3e1c` → `vtable[+8]=0x1ebe24` → `0xea8f4`） | 探针恒报 `onRecordData=0`，会**再次**把人带到"链路中断"的错误结论上 | 三处同时计数：`feed@0xd455c`（权威）、`thunk@0xea8f4`（对照）、`0xea8c4`（守卫，期望恒 0） |
| C2 | L51 `args[2].toInt32()` | 当成长度用，但**入口不同布局不同**：`feed` 入口长度在 `args[3]`；thunk 入口 `args[2]` 是数据指针 | 统计出来的"字节数"是垃圾值 | 每个 hook 用各自的参数下标 |
| C3 | 全文 | 不校验模块基址/符号 | 换固件后偏移一变，探针静默全 0，与"没调用"无法区分 | 先 `Module.findExportByName('libsmartbox.so','_ZN14AGSpeechEngine4feedEjPKvi')`，再与 `0xd455c` 对账，不符就明确报错 |

**偏移本身一个都不动**：`0xd455c` 仍是唯一权威入口（`0xea8f4` 只是它的另一条来路）。

---

## 4. 路径与仓库一致性

| 项 | 结论 |
|---|---|
| `my-doc/02_runtime_pcm_verification.md` 等文档路径 | ✅ 与仓库一致（仓库根 `system/`） |
| `my-doc/capture_pcm.py` / `analyze_pcm.py` / `tgz02_probe.js` | ✅ 已入库，且与 `_analysis/frida/` 下副本 **SHA256 完全相同**（三份都验过） |
| 02 文档 §7.2 / §12 里写的 `_analysis/frida/*.py` | ⚠️ 措辞与事实不符：`_analysis/` 是本地草稿区，不入库。应统一写成 `my-doc/` |
| `my-doc/pcm_talk.raw`（5.1 MB）、`ch0.wav`（1.3 MB） | ⚠️ 已入库，仓库会持续变大。`ch1~ch3.wav` / `mix4.wav` 是可再生物，不入库（`python analyze_pcm.py [--mix]` 随时重造），02 文档里"样本文件"那行说的是**生成物**。后续建议 Git LFS，或改成"采样片段 + 生成脚本" |
| 03 阶段新产物 | 全部放在 `my-doc/03_uds_test/` 与 `my-doc/03_*.md`，🔧 未提交（等指令） |

---

## 5. 不改动清单（明确声明）

以下每一项都**保持原样**，本次审查不碰：

- hook 偏移：`feed 0xd455c`、`thunk 0xea8f4`、`thunk 0xea8c4`、`wake 0xd45f0`、`WakeupEngineWrapper::feed 0xe1c90`、`read 0x55e0`…
- PCM 参数：`16000 Hz / 4 ch / 16 bit / 5120 B / 40 ms / 25 fps / ch0 1280 B`
- 进程名、线程名、listener 指针与 vtable 结论
- 第二阶段的三份文档正文（除了 A7 那条命令的监听地址）

---

## 6. 本次实际改动（清单，便于核对）

| 文件 | 改动 | 是否触碰偏移/参数 |
|---|---|---|
| `my-doc/tgz02_probe.js` | 改为三处计数（feed 权威 / thunk 对照 / 0xea8c4 守卫）+ 符号对账 + 各自正确的参数下标 | ❌ 未触碰 |
| `my-doc/capture_pcm.py` | `--limit` 参数化 + 撞墙告警 + `try/catch` + 模块缺失时早退 + meta 定期 flush + len 过滤 | ❌ 未触碰 |
| `my-doc/analyze_pcm.py` | argparse + 默认相对路径 + `mix4` 改开关 + 缺失文件友好报错 | ❌ 未触碰 |
| `my-doc/02_runtime_pcm_verification.md` | 仅把 `-l 0.0.0.0:27042` 改为 `-l 127.0.0.1:27042` | ❌ 未触碰 |

改完的三个脚本都做过**行为等价性检查**：`analyze_pcm.py` 对 `pcm_talk.raw` 的输出（通道 RMS/峰值、相互相关、活动区间、WAV 尺寸）与改前逐项一致 —— 见 `03_pcm_bridge_test.md` §7。
