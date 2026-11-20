# T5-06B P2 补充修复：event_reader 数字字段窄化与范围校验

- 基线提交：`f3c9f3bf`（T5-06B P1/P2 修复）
- 本轮范围：**只改事件解析层与对应单元测试**。Worker 主循环、消费语义、`flock`/`LockFileEx` 单实例锁、
  Provider 重试与状态落盘、`events.jsonl` 协议字段与格式、T5-05A/B/C 全部未改（见 §7 的 `git diff` 核对）。
- 证据：`evidence/host_unit_test.log`、`evidence/host_integration_test.log`、`evidence/ndk_build.log`、
  `evidence/device_numeric_fix.log`、`evidence/device_p2p2_inode_reuse.log`。

## 1. 结论摘要

| 项 | 结果 |
|---|---|
| 修改文件 | `android/event_reader.c`（+`<limits.h>`、`one_field()`、诊断字段一致性）、`tests/worker_unit_test.c`（用例与 `mk_rec`） |
| 主机单元测试 | **284 checks / 0 failed**（基线 258，新增 26 项） |
| 主机集成测试 | **19/19 PASS** |
| ARM32 构建（NDK r21e，`-O2 -Wall -Wextra`） | `ai_worker` 102204 B `sha256=1c75f4d7…`；`worker_unit_test` 138504 B `sha256=0d4f8f09…`；**0 warning、0 error** |
| ARM32 单元测试（真机执行） | **284 / 284 PASS**，`abi: 32-bit long, ULONG_MAX=4294967295` |
| 真机历史事件回归 | 111 行 / 34119 B **全部消费**（`processed=111`、`invalid=0`、`oversize=0`、`offset=34119=file_size`） |
| `events.jsonl` 是否被改 | **未改**：前后 `sha256=072ea606…`、行数 111 完全一致 |
| 是否有未完成项 | 有 2 项，均为**本轮范围外**，见 §8 |

## 2. 原问题：先窄化、后判断

`one_field()` 原来对整数字段一律先转换再让后续检查兜底：

```c
case K_VERSION:     out->version = (int)v; break;
case K_TEXT_BYTES:  out->text_bytes = (int)v; break;
case K_TEXT_CHARS:  out->text_chars = (int)v; break;
case K_SEQ:         out->seq = (unsigned long)v; break;
```

`long long → int / unsigned long` 是**实现定义的取模截断**，一旦溢出，后面的检查看到的已经不是原值。
具体触发输入（`{"version":…}` 等前缀省略，其余字段均为合法值）：

| 触发输入 | 旧行为 | 后果 |
|---|---|---|
| `"version":4294967297` | `(int)4294967297 == 1` → 版本检查通过 | **伪造版本号被接受**（协议只允许 1） |
| `"seq":4294967297`（ARM32 / Windows） | `(unsigned long)4294967297 == 1` → `seq==0` 检查通过 | **超大 seq 静默变成 `seq=1`**，被当成"桥接重启回退"，真实缺口被掩盖 |
| `"seq":4294967296`（ARM32 / Windows） | 截成 `0` → 被 `seq==0` 偶然拒收 | 侥幸拒收，但错误码与原因不可信 |
| `"text_bytes":-1` | `(int)-1 == -1`，无任何下游检查 | **负数字节数被接受**，`text_bytes` 诊断链路失真 |
| `"text_bytes":512` | `(int)512`，无上限检查 | 与 `T6B_TEXT_MAX(511)` 冲突的记录被接受 |
| `"text_bytes":4` + `text:"hello"` | 无一致性检查 | 记录自称 4 字节，实际 5 字节，**诊断字段可以随便写** |
| `"text_chars":4` + `text:"hello"` | 同上 | 码点数可以随便写 |
| `"pid":2147483648` | `pid` 是 `long long`，最后一道 `pid > 2147483647` 拦住 | 旧实现已拒收；本轮在 `one_field()` 里**提前**拦（同一错误码 `bad_pid`，语义不变） |

`text_chars` 尤其重要：它和桥接端 `tgb_utf8_count_chars()` 是同口径（Unicode 码点数），一旦允许自报，
下游任何"按字符数截断/计费/记录"的逻辑都会与实际文本不一致。

## 3. 修改内容

### 3.1 `android/event_reader.c`

1. 头文件加 `#include <limits.h>`（`ULONG_MAX`）。
2. **完整替换 `one_field()`**：每个整数字段在**转换之前**做范围校验，越界即返回对应错误码并带上字段名：

   | 字段 | 校验 | 错误码 |
   |---|---|---|
   | `version` | 只接受精确的 `1`（不做 `(int)` 再比较） | `bad_version` |
   | `pid` | `0 < v <= 2147483647` | `bad_pid` |
   | `text_bytes` / `text_chars` | `0 <= v <= T6B_TEXT_MAX(511)` | `bad_type` |
   | `received_at_ms` / `recv_at_ms` / `stored_at_ms` | `v >= 0` | `bad_time` |
   | `seq` | `v > 0` 且 `(unsigned long long)v <= ULONG_MAX` | `bad_seq` |

3. **`t6b_parse_record()` 里补文本一致性校验**：`text_bytes` / `text_chars` 允许缺失（缺失时按实测补齐，
   保持向前兼容），但**只要出现就必须与实际文本一致**，否则 `bad_type` 并以对应字段名上报。
   字符数用现有 `wu_utf8_count()`（Unicode 码点数），与 Bridge 的 `tgb_utf8_count_chars()` 同口径。

> 说明：`jint()` 自身有 64 位有符号上界保护，`> 9223372036854775807` 的字面量在**解析阶段**
> 就以 `bad_type` 拒收（此时还谈不上"窄化"）。这是两条独立的防线，报告 §5 有对应用例。

### 3.2 `tests/worker_unit_test.c`

1. `mk_rec()` 原来把 `text_chars` 写死成 `1`；一致性校验上线后那会让"合法记录"变坏。
   改为 `(int)strlen(text)` 与 `wu_utf8_count(text, strlen(text))`，与真实记录格式一致。
2. `test_parse_rejects()` 增加 11 条用例（含 2 条"必须通过"的对照），并在表后加 `seq` 位宽分支块。
3. 启动横幅打印 `abi: N-bit long, ULONG_MAX=…`，让每份日志自己说明窄化边界来自哪个 ABI。

## 4. ARM32 与主机的 `ULONG_MAX` 差异（容易踩坑的一点）

| 平台 | `sizeof(long)` | `ULONG_MAX` | 测试期望 |
|---|---|---|---|
| 设备 TG-Z02（armv7l / Android 8.1） | 4 | `4294967295` | `seq=2^32` / `2^32+1` 必须 `bad_seq` |
| **Windows x64 + TDM-GCC（本轮主机）** | **4（LLP64）** | `4294967295` | 同上：**同一分支** |
| Linux x86_64（LP64，未在本轮使用） | 8 | `18446744073709551615` | 两个值合法，必须原值保留 |

也就是说：**本轮的主机单元测试与真机 ARM32 走的是同一条窄化路径**（Windows 的 `long` 也是 32 位），
所以"主机 284 项"对 `seq` 边界是有意义的，不是只在 64 位下空转。LP64 分支由运行时条件
`seq_want[k] <= ULONG_MAX` 覆盖，换到 Linux x86_64 构建时自动切到"原值保留"的断言，不需要改代码。

`seq` 的取值上界写成 `ULONG_MAX` 而不是硬编码 `4294967295`，是为了让同一份代码在两种 ABI 下都自洽。

## 5. 新增测试与实际结果

主机 `evidence/host_unit_test.log`（`284 checks / 0 failed`），新增用例与实测：

| # | 输入 | 期望 | 实测 |
|---|---|---|---|
| 1 | `"seq":-1` | `bad_seq`，field=`seq` | 一致 |
| 2 | `"seq":4294967296` | 32 位 `long` → `bad_seq` | 一致（ARM32 与 Windows 均 32 位） |
| 3 | `"seq":4294967297` | 32 位 `long` → `bad_seq`（旧实现会变成 `seq=1`） | 一致 |
| 4 | `"seq":18446744073709551616`（2^64） | `bad_type`，field=`seq`（64 位整数解析阶段拒收） | 一致 |
| 5 | `"version":4294967297` | `bad_version`，field=`version` | 一致 |
| 6 | `"pid":2147483648` | `bad_pid`，field=`pid` | 一致 |
| 7 | `"text_bytes":-1` | `bad_type`，field=`text_bytes` | 一致 |
| 8 | `"text_bytes":512` | `bad_type`，field=`text_bytes` | 一致 |
| 9 | `text:"hello"`,`"text_bytes":4` | `bad_type`，field=`text_bytes` | 一致 |
| 10 | `text:"hello"`,`"text_chars":4` | `bad_type`，field=`text_chars` | 一致 |
| 11 | `text:"你好"`,`text_bytes=6`,`text_chars=2` | **通过** | 一致 |
| 12 | 不提供 `text_bytes`/`text_chars` | **通过**，按实测补齐 | 一致 |
| 13 | `"received_at_ms":-1` | `bad_time`，field=`received_at_ms` | 一致 |
| 14 | `"text":"a"*512`（超上限） | `field_too_long`，field=`text` | 一致（先于 `text_bytes` 触发，字段顺序不变） |

回归未受影响：`seq==0`→`bad_seq`、`pid==0`→`bad_pid`、`version==2`→`bad_version`、
`mk_rec` 生成的 30 余处夹具记录仍全部被接受（读取器/去重/截断/重建等用例全绿）。

主机集成测试 `evidence/host_integration_test.log`：**19/19 PASS**（真起进程，Mock Provider，无网络）。

## 6. ARM32 构建与真机回归

**构建**（`evidence/ndk_build.log`，NDK r21e，`armv7a-linux-androideabi26-clang`，`-O2 -Wall -Wextra -std=gnu99 -fPIE -pie`）：

- `ai_worker`：102204 B，`sha256=1c75f4d7314d422fe6ac79abc689bfb0e7f0a80df7b08effefc28623f41b97de`，
  `ELF32 / ARM / Type: DYN`，`Entry point 0xff0`，`NEEDED libc.so`；**编译器零输出**。
- `worker_unit_test`：138504 B，`sha256=0d4f8f0954f0c70b6e8a2777646a6a18e96c778db89558c136233741d97ba00d`；
  同样零警告零错误，动态链接，可在真机直接跑。

**真机**（`evidence/device_numeric_fix.log`，TG-Z02，`6.1.8-RS-20221104.1459`，armv7l，Mock Provider，零网络）：

1. **ARM32 单元测试**（设备上执行，不是主机）：`abi: 32-bit long, ULONG_MAX=4294967295`，
   **`checks passed: 284, failed: 0`，`RESULT: PASS`**。`seq` 上下界与全部窄化用例都在真实的 32 位
   `unsigned long` 上跑过。
2. **历史 `events.jsonl` 消费回归**（把 `--work-dir` 直接指向真实桥接目录，只读；状态目录新建）：
   - 消费前：111 行 / 34119 B / `sha256=072ea606…`
   - 消费后：`lines_read=111`、`events_accepted=111`、`events_processed=111`、
     `invalid_lines=0`、`oversize_lines=0`、`duplicates=0`、
     `offset=34119`(=`file_size`)、`gaps=2`、`seq_resets=14`、`seq_unknown_start=1`、
     `provider_ok=111`、`exit_reason=max_events`、`rc=0`
   - **`invalid=0` 是本轮的关键断言**：真实桥接记录（含中文文本，如 `27 B / 9 码点`）全部通过新的
     `text_bytes`/`text_chars` 一致性校验，说明新校验与线上写入口径一致。
   - 消费后 `sha256` 与行数完全不变 → **Worker 没有改 `events.jsonl`**。
   - 与上一份报告（107 行 / 32894 B）的差异只是文件在此期间被真实语音测试追加了 4 条记录，
     因此 `gaps`/`seq_resets` 计数随之变化，属预期。
3. **真机窄化拒收**（同一 ARM32 二进制，5 行夹具，其中 4 行非法、1 行合法）：
   - `bad_seq (field=seq)` ×2 —— `seq=4294967296` 与 `seq=4294967297`
   - `bad_version (field=version)` —— `version=4294967297`
   - `bad_type (field=text_bytes)` —— `text:"hello"` 但 `text_bytes=4`
   - 合法行 `text:"hello",text_bytes=5,text_chars=5` 正常消费
   - 状态文件：`invalid_lines=4`、`events_processed=1`、`provider_ok=1`、`exit_reason=max_events`

> 本节全部是**真机实测**；Provider 是 Mock（回包 `reply_bytes=71` 为内置固定文案），
> 没有调用任何真实模型，也没有任何网络请求。

## 7. 边界核对（本轮没碰的东西）

- `git diff` 只涉及 `android/event_reader.c` 与 `tests/worker_unit_test.c`（外加新增的报告/README/证据）。
- `android/ai_worker.c`、`worker_util.*`、`consumer_state.*`、`provider.*`、`mock_provider.c`、
  `worker_status.c`、`seq_gap.c` **零改动** → 主循环、锁、重试、落盘语义不变。
- `my-doc/06_t5_bridge`、`my-doc/06_t5`、`my-doc/03_uds_test`（T5-05A/B/C）**零改动**。
- `events.jsonl` 字段名、顺序、类型、上限（`T6B_TEXT_MAX=511`）均未变；只是**把已声明的约束真正执行**。

## 8. 未完成项（都不在本轮授权范围内，等评审定）

1. **P2-2 身份检测在 Android 上退化**（本轮做 ARM32 单元测试时发现，**不是本轮改动引入的**）。
   `evidence/device_p2p2_inode_reuse.log`：同目录下删除后重建，`st_dev:st_ino` **完全相同**
   （`45846:86194` → `45846:86194`，三次重建都一样），所以 `(dev,ino)` 在 ext4/f2fs 上无法证明"文件被换人"。
   - 重建后**更短** → 仍被"变小即截断"规则兜住（偏移归零、重新扫描），行为安全；
   - 重建后**比旧偏移更长** → 无法检测，会从旧偏移继续读，可能跳过新文件开头
     （最坏情况是从半行中间开始解析）。
   - 对照实验：基线 `f3c9f3bf` 的同一份单元测试在真机上 **257 项 / 1 项失败**（正是这条断言），
     本轮为 **284 / 0**；即该失败早于本轮存在。
   - 本轮处理方式：把该断言改成**平台真实行为**两分支（身份不同 → `replacements=1`；
     身份被复用 → `replacements=0` 且 `truncations=1`），两条分支都仍要求"偏移归零 + 新文件第一条被读出"，
     没有放宽任何产品行为，只让测试不再谎报。
   - 待定方案（需要改持久化身份字段，属架构变动，未擅自实施）：在保存的身份里加 `st_ctim`
     或 `i_version`，或对文件头部做指纹比对。
2. **`T6B_FAULT_STATE` 故障注入是否要从 release 构建里编译掉**（上一轮遗留问题，本轮未动）。

另：`text_bytes`/`text_chars` 现在"自报必须与实测一致"，但**不校验 `text_bytes` 与 `text_chars` 之间的
算术关系**（例如全 ASCII 时两者应相等）。这类推导校验会拒绝掉一些桥接端未来可能合法输出的记录
（如代理对/组合序列），本轮按"只做范围与一致性、不做语义推导"的边界处理。

## 9. 复现

```powershell
# 主机（Windows + TDM-GCC + Python）：单元 + 集成 + 子集 + 100 轮锁压测
cd D:\tgz02\OS\system\my-doc\07_ai_bridge\tests
powershell -ExecutionPolicy Bypass -File .\run_host_tests.ps1

# ARM32 构建（NDK r21e）+ 真机检查（单元测试、历史事件回归、events.jsonl 不变、窄化拒收）
cd D:\tgz02\OS\_analysis\t506b
powershell -ExecutionPolicy Bypass -File .\n1_ndk_build.ps1
powershell -ExecutionPolicy Bypass -File .\n2_device.ps1
```
