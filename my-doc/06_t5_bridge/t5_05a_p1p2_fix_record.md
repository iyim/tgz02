# T5-05A P1/P2 修复记录：整数安全与落盘持久性

审查基线：`451ff25c`（实现）+ `cc89576b`（文档同步）。
本轮只改三处 + 补测试，不重设计 Bridge；协议字段、帧头、CRC、SOCK_STREAM、
ACK 语义、去重键与 FIFO 容量、T3/T4 生产代码、原厂任何文件均未改动。

## 1. 修改清单

| 文件 | 修改 | 对应问题 |
|---|---|---|
| `android/tgb_event.c` | `jint()` 改为**乘加前**检查 `v > (TGB_LL_MAX_SAFE - digit) / 10`，重写写法与注释；JSON 整数语法（负号/前导零/`-0`）与 2^53 上限保持不变 | P1-a |
| `android/tgb_store.c` | `tgb_store_repair()`：`ftruncate` 之后必须 `t5_sync()`，失败即 `-1`；错误信息区分 `repair truncate failed` / `repair fsync failed` / `repair fsync after truncate(0) failed`；所有失败分支先 `TGB_CLOSE` 再返回，并保留 `errno`；尾部 4 KB 块回扫与"整个文件无换行符则清空"的逻辑保持不变 | P2 |
| `android/tgb_store.c` | 新增静态 `tgb_sync_directory()`；`tgb_store_open()` 在文件打开成功之后、返回 0 之前调用它，失败则关闭刚打开的 fd 并返回 `-1`（不允许带着"目录项可能未落盘"的状态启动并 ACK stored）。Windows 主机分支直接返回 0（无等价目录同步接口） | P1-b |
| `tests/tgb_unit_test.c` | 新增 `U-INT` 组 16 条断言 + `U-S33..S40` 8 条断言（目录同步不破坏主机测试、失败可见、跨 4 KB 的尾部回扫） | 测试 |

`t5_util.c` 未改（`t5_sync()`/`t5_write_all()` 语义不变，T5 WAV store 不受影响）。

## 2. 关于 P1-a 的前提：实际代码里的"有符号溢出"无法复现（如实报告）

审查意见认为旧实现"先乘加后检查，存在有符号整数溢出"。按代码逐轮推导：

```
每轮：v = v * 10 + digit;  if (v > 2^53) reject;
```

上一轮的检查已经把 `v` 钳制在 `2^53 = 9007199254740992`，所以本轮乘加的最大值是
`9007199254740992 * 10 + 9 = 90071992547409929 ≈ 9.01e16`，
而 `LLONG_MAX = 9.223e18` —— 还差约 **100 倍**，不会溢出。实测也如此：

| 实现 | 编译选项 | 30 位整数输入 | 结果 |
|---|---|---|---|
| A 修复后（乘加前检查） | `-O0 -ftrapv` | `999…999`（30 位） | 全部 155 断言通过，未触发 trap |
| B 修复前（乘加后检查） | `-O0 -ftrapv` | 同上 | 全部 155 断言通过，未触发 trap |
| C 反面对照：**去掉每位检查**，只在循环后检查 | `-O0 -ftrapv` | 同上 | 在 U-I9（30 位正整数）处 **abort（exit=3）**，即有符号溢出被 `-ftrapv` 捕获 |

（`-ftrapv` 是等价探测：TDM-GCC 10.3.0 没有 `libubsan`，`-fsanitize=undefined` 链接失败。）

结论：
- **修复按要求实施了**，而且确实是更好的写法：不变量变成局部的"乘加前检查"，
  不再依赖"乘加后必须立刻检查"这个隐式约定；C 证明一旦这个约定被破坏就会真的溢出。
- **A 与 B 的接受/拒绝集合完全一致**（U-I6/U-I8 的 2^53 边界用例两版都过），
  因此本次修复没有改变对外行为。
- 需要审查者知悉：这条 P1-a 的**前提描述与实际代码不符**（不是溢出，而是"依赖检查位置"的脆弱写法）。

## 3. 关于 P1-b（目录 fsync）：TG-Z02 实测支持

`tgb_store_open()` 现在会对工作目录执行 `open(dir, O_RDONLY|O_DIRECTORY)` + `fsync` + `close`。

真机（TG-Z02 / Android 8.1 / SDK 27）：

```
$ mount | grep -m1 ' /data '
/dev/block/mmcblk0p22 on /data type ext4 (rw,seclabel,nosuid,nodev,noatime,discard,
noauto_da_alloc,resuid=10010,resgid=1065,data=ordered)

$ rm -rf /data/local/tmp/t5_bridge/work && mkdir -p …/work     # 全新目录：events.jsonl 本次首次创建
$ sh run_bridge.sh start
started: pid=17813 …
{"type":"READY","pid":17813,"events_stored":0,"replay_lines":0,…}
```

`READY` 出现即证明 `tgb_store_open()` 返回 0，也就是**目录 fsync 成功**（ext4 支持目录 fsync；
若失败进程会带 `[tgb] store open failed: fsync directory … failed errno=N` 退出）。
本次 `store_errors = 0`、`store_failed = false`。

## 4. 新增/更新的测试与结果

| 组 | 断言 | 覆盖 |
|---|---|---|
| `U-INT`（新增） | 16 | 正整数、负整数（未知字段）、`pid=-5` 语义拒绝、`2^53` 接受、`2^53+1` 拒绝、30 位正/负整数拒绝、未知字段内超长整数拒绝、前导零（`01`/`-01`）拒绝、`-0` 解析成 0 后被范围检查拒绝、单个 `0` |
| `U-STORE`（新增 8 条） | 8 | 工作目录不存在时 `open` 失败且带错误信息、新目录 `open` 成功（目录同步不破坏主机测试）、40 条（> 4 KB）后尾部半条仍需正确截断（跨多个 4 KB 块回扫）、修复后回放 40 条 0 坏行 |
| `U-STORE`（原有） | 32 | 追加/回放/尾部修复/故障注入/只读 fd 写失败（**保留未删**） |

结果：

```
unit:        155 passed, 0 failed      （原 131，新增 24）
integration: 153 通过 / 0 失败          （15 用例，27.9 s，行为与修复前一致）
ARM32 NDK:   -O2 -Wall -Wextra -static，0 警告 0 错误
             tgb_bridge 3,553,180 B  sha256=3d902529efb5594700ae209d7102b1af6605041df066fe55dbddb07ab78d048d
```

真机复验（`evidence/device_smoke_t505a_p1p2.log`）：

```
启动（全新目录）  READY pid=17813, replay_lines=0
写入              basic / cjk_escaped / dup / empty_sid / bad_utf8 / text_too_long / batch×10
停止              STATS final: frames=17 stored=13 duplicate=1 rejected=3 frame_errors=0
                  store_errors=0 client_overflow=0 store_failed=false
重启              READY pid=17865, replay_lines=13, dedup_size=13
重复 event_id     evt-basic-1 → duplicate(dup_count=1)
                  evt-dup-1×2 → duplicate(dup_count=2,3)
停止后文件        wc -l = 13，末行完整以 '\n' 结尾
```

副作用检查：`/data/local/tmp/t4/segments`、`/data/local/tmp/t5/work` 时间戳未变（11-19），
原厂 `com.alibaba.ailabs.genie.smartapp` 进程仍在，`tgb_bridge` 只写 `/data/local/tmp/t5_bridge/`。

## 5. 证据文件

- `evidence/host_unit_t505a.log`（155 断言，含 U-INT / 新 U-STORE）
- `evidence/host_it_t505a.log`（15 用例 / 153 断言）
- `evidence/host_it_t505a_results.json`
- `evidence/host_trapv_t505a.log`（`-ftrapv` A/B/C 三组对照，见 §2）
- `evidence/ndk_build_t505a.log`
- `evidence/device_smoke_t505a_p1p2.log`
- 复现脚本：`tests/run_ub_probe.ps1`（三组对照）+ `tests/ub_variant.py`（生成 old / nocheck 变体源码）

## 6. 仍未解决 / 需要审查者知悉

1. **P1-a 的前提不成立**（§2）：旧代码不会溢出；修复后行为不变，但写法更稳。
   如果审查者希望保留"修了一个真实溢出"的表述，需要改写为"消除对检查位置的隐式依赖"。
2. **Windows 上目录 fsync 被跳过**（没有等价且稳定接口）。这意味着主机测试无法覆盖
   "目录项落盘"这一条；该条只在 Android（ext4）上被真机验证过。这条差异已写进 README §8。
3. **目录 fsync 失败路径没有真机负例**：设备上无法制造 ext4 目录 fsync 失败。
   代码层面保证失败返回 -1 并带 errno，但只有单测覆盖"open 失败"这一相邻分支（U-S33/S34）。
4. 其余历史限制（去重表 8192、无轮转、单线程 fsync、无鉴权等）不变，见 README §8。
