# 04 · T3 P2 修正与验收报告（含 Android NDK 0 warning 编译证据）

> 结论：P2 复审提出的两项遗留已闭环 ——
> **CAPTURE 行的 JSON 路径转义已修**，**两套 Python 测试实跑通过**（42 + 148 断言），
> **Android NDK 编译 0 warning / 0 error**（`-Wall -Wextra`，无任何 `-Wno-*`），
> 且二进制可复现（两次独立编译 SHA256 相同）。
> 本轮未重跑真机 PCM 传输（按任务要求）。

---

## 1. 提交链

| 顺序 | 提交 | 内容 |
|---|---|---|
| 1 | `698e81a59ad417fe1ee9baffb7c6dcec24b131fa` | `feat: implement T3 device PCM UDS bridge`（T3 首次真机链路） |
| 2 | `f381d27f5372d1147de8000b92cb1a63689fb5d8` | `docs: record T3 code commit SHA in the device report` |
| 3 | `3745287ac71173165d5db303a5ac230985e110fe` | `fix: harden T3 capture verification and JSON output`（P2-1/2/3） |
| 4 | `b89d1af3743f1ad52cb5f7e88e70e3b4544f370c` | `fix: escape T3 capture status JSON path`（CAPTURE 行转义） |
| 5 | 本报告提交 | `docs: record T3 P2 acceptance evidence (NDK build + tests)` |

分支 `main`，未建分支、未开 PR、未 reset、未 force push。

本轮被测源码（`my-doc/03_uds_test/android_uds_test/dgram_server.c`，HEAD = `b89d1af3`）：

- 工作区 SHA256 `a574ff9b4d13d24289f7a37aab26725545efba59b985047f8bc7e479230bec61`（12,721 B）
- `git show HEAD:…` 同为 `a574ff9b…` → **编译的源码 == 已提交的源码**（`identical: True`）

---

## 2. 本轮修改清单

| 文件 | 改动 |
|---|---|
| `my-doc/03_uds_test/android_uds_test/dgram_server.c` | 新增 `print_capture()`，替换收尾处的 `printf("CAPTURE {…%s…}")` |
| `my-doc/03_uds_test/tests_c/ready_json_harness.c` | 新增 `--capture-stdin [FRAMES]` 入口（调用生产代码的 `print_capture()`） |
| `my-doc/03_uds_test/tests/ready_json_test.py` | 新增 `[capture]` / `[capture-zero]` / CAPTURE 反面对照段（+70 行） |
| `my-doc/03_uds_test/verify_capture.py` | （上一提交）尾部残帧纳入 PASS 判定 |
| `my-doc/04_device_t3/cap_audio_stats.py` | （上一提交）同样的完整性判定 + `integrity` 行 |
| `my-doc/03_uds_test/tests/capture_tools_test.py` | （上一提交）两脚本一致性测试 |
| `my-doc/03_uds_test/tests_c/compat/win32/sys/select.h` | （上一提交）本机 MinGW 编译 harness 的垫片，不参与设备构建 |

未修改：`pcm_bridge_draft.js`、PCM 帧格式/协议、CRC 算法、Hook 实现、UDS 传输逻辑、
ring buffer、T0/T1/T2 代码与日志、T3 真机历史日志与 capture 数据。

---

## 3. CAPTURE 行 JSON 修复

修改前（路径直接 `%s` 拼接，含 `"` 或 `\` 时不是合法 JSON）：

```c
printf("CAPTURE {\"file\":\"%s\",\"frames\":%llu,\"bytes\":%llu}\n",
       capture_path, (unsigned long long)S.captured,
       (unsigned long long)(S.captured * (uint64_t)TGZ2_MSG));
```

修改后（复用本文件已通过复审的 `json_write_string()`，分段输出，字段名与含义不变）：

```c
static void print_capture(FILE *f, const char *capture_path, uint64_t frames)
{
    fputs("CAPTURE {\"file\":", f);
    json_write_string_or_null(f, capture_path);
    fprintf(f, ",\"frames\":%llu,\"bytes\":%llu}\n",
            (unsigned long long)frames,
            (unsigned long long)(frames * (uint64_t)TGZ2_MSG));
}
```

调用点（落盘/关闭顺序、接收/CRC 逻辑未动）：

```c
if (cap) {
    fflush(cap);
    fclose(cap);
    print_capture(stdout, capture_path, S.captured);
}
```

实际输出（harness 调用同一份 `print_capture()`）：

```
CAPTURE {"file":"C:\\tmp\\capture.pcm","frames":252,"bytes":332640}
CAPTURE {"file":"/with space/cap a.pcm","frames":252,"bytes":332640}
CAPTURE {"file":"quote\"inside.pcm","frames":252,"bytes":332640}
CAPTURE {"file":"C:\\tmp\\back\\slash.pcm","frames":252,"bytes":332640}
```

READY 行（上一轮已通过复审）保持纯 JSON 对象不变：

```
{"type":"READY","role":"server","mode":"abstract","name":"tgz2_pcm","rcvbuf_req":8192,
 "rcvbuf_eff":16384,"max_age_ms":500,"capture":"quote\"inside.pcm",
 "payload_policy":"synthetic=regen-compare,real-pcm=crc-only"}
```

---

## 4. 测试执行证据（实际运行，不是推断）

环境：`Microsoft Windows 10 专业版 build 19045` / `Python 3.11.9` / `node v24.22.0` / `gcc (tdm64-1) 10.3.0`。
命令行在仓库根目录 `D:\tgz02\OS\system` 下执行。

### 4.1 capture 校验工具（残帧）

```
$ python my-doc/03_uds_test/tests/capture_tools_test.py
[full3] size=3960  verify_rc=0  audio_rc=0
[plus1] size=3961  verify_rc=1  audio_rc=2
[plus1319] size=5279  verify_rc=1  audio_rc=2
[empty] size=0  verify_rc=1  audio_rc=1
[multi8] size=10560  verify_rc=0  audio_rc=0
[consistency] 汇总
  ok   consistency full3 (3960 B): verify=0 audio=0
  ok   consistency plus1 (3961 B): verify=1 audio=2
  ok   consistency plus1319 (5279 B): verify=1 audio=2
  ok   consistency empty (0 B): verify=1 audio=1
  ok   consistency multi8 (10560 B): verify=0 audio=0
  ok   consistency plus660 (4620 B): verify=1 audio=2
  ok   consistency tiny100 (100 B): verify=1 audio=1
=== 42 passed, 0 failed ===        (exit code 0)
```

### 4.2 READY + CAPTURE JSON

```
$ python my-doc/03_uds_test/tests/ready_json_test.py
[null] 未指定 --capture
[paths] 5 种 capture 路径
[capture] 5 种 capture 路径
[capture-zero] frames=0
[negative] 旧写法（不加引号/不转义）确实不是合法 JSON
=== 148 passed, 0 failed ===      (exit code 0)
```

新增 CAPTURE 断言（全部经 `json.loads()` 实解析）：

| 用例 | 断言 |
|---|---|
| `/data/local/tmp/capture.pcm` | 前缀 `CAPTURE `；`file` 原样往返；`frames==252`；`bytes==332640`；两者 `isinstance(int)` 且非 `bool` |
| 含空格路径 | 同上，空格不被破坏 |
| 含双引号路径 | 输出 `"quote\"inside.pcm"`，解析后与原串完全相等 |
| 含反斜杠路径 | 输出 `"C:\\tmp\\back\\slash.pcm"`，解析后与原串完全相等 |
| 含 `\t` / `\x01` | 输出 `\t` / `\u0001`，解析后与原串完全相等 |
| `frames=0` | `frames==0`、`bytes==0`，仍是 JSON 数字 |
| 字段集合 | 严格等于 `{file, frames, bytes}` |
| 反面对照 | 旧写法 `{"file":"quote"inside.pcm",…}` 的 `json.loads` 抛 `ValueError` |

harness 通过 `#define main dgram_server_main` + `#include "../android_uds_test/dgram_server.c"`
调用生产实现，没有第二份转义代码。

### 4.3 README 记录的其它统一测试命令

```
$ node --check my-doc/03_uds_test/pcm_bridge_draft.js          -> exit 0
$ node my-doc/03_uds_test/tests/bridge_unit_test.js            -> === 201 passed, 0 failed ===
$ node my-doc/03_uds_test/tests/probe_detach_test.js           -> === 91 passed, 0 failed ===
$ python my-doc/03_uds_test/crc_crosscheck/run_crosscheck.py   -> RESULT: PASS
                                                                  Math.imul 18/18 与 C 一致；
                                                                  普通乘法 17/18 不一致（imul 必需）
$ python -m py_compile verify_capture.py cap_audio_stats.py tests/*.py -> exit 0
```

---

## 5. Android NDK 编译验收（本轮核心）

| 项 | 值 |
|---|---|
| NDK 根目录 | `D:\tgz02\OS\_analysis\tools\android-ndk-r21e`（`Pkg.Revision = 21.4.7075529`） |
| 编译器 | `…\toolchains\llvm\prebuilt\windows-x86_64\bin\armv7a-linux-androideabi26-clang.cmd` |
| 版本 | `Android (7019983 based on r365631c3) clang version 9.0.9` / `Target: armv7a-unknown-linux-android26` |
| 完整命令 | `armv7a-linux-androideabi26-clang -O2 -Wall -Wextra -static -o out/dgram_server.exe dgram_server.c` |
| 退出码 | `0` |
| 编译输出 | **0 行**（stdout + stderr 均无内容） |
| warning | **0**（`': warning:'` 匹配 0 条） |
| error | **0**（`': error:'` 匹配 0 条） |
| 警告抑制 | **未使用任何 `-Wno-*`**；构建参数只有 `-O2 -Wall -Wextra -static` |
| 产物 | `out/dgram_server.exe`，3,407,804 B |
| 产物 SHA256 | `42e3bd66c73ff95c9c2a99811bd0da17754d6128a3602dc0d050b56ad8c17287` |
| ELF 头 | `Class: ELF32` / `Type: EXEC` / `Machine: ARM`（armeabi-v7a，静态链接） |

**可复现性**：提交前编译（`15:08:15`）与提交后删除旧二进制再编（`15:10:47`）两次独立构建，
输出 SHA256 完全相同（`42e3bd66…`），说明源码未在两次之间变动，0 warning 也不是偶发。

说明：`tests_c/` 下的 Windows harness 使用平台兼容参数
（`-Wno-incompatible-pointer-types -Wno-pointer-sign -I tests_c/compat/win32 -lws2_32`）
只为在本机跑 JSON 测试，**不作为 Android 编译验收**；上表才是设备侧验收。

---

## 6. Git diff 检查

- 提交前 `git status --porcelain` 只列出本任务需要的文件；`git diff --cached --stat` 与 `git show --stat HEAD` 一致。
- `dgram_server.c` 的 diff 只有两处：新增 `print_capture()`、把旧 `printf` 换成 `print_capture(stdout, capture_path, S.captured)`。
- `ready_json_test.py` 只新增 CAPTURE 段与反面对照，原 READY 断言未删改。
- `ready_json_harness.c` 只新增 `--capture-stdin` 分支，原 `--null` / `--stdin` 保持不变。
- 生成物未入库：`out/` 与 `*.exe` 按 `.gitignore` 忽略，临时产物（`_ready_json_harness.exe`、`__pycache__/`）已删除。

---

## 7. 未验证 / 限制

1. 本轮**没有重跑真机 PCM 传输**（任务要求）。上一轮 T3 真机结论不受影响，但设备上现存的
   `dgram_server` 仍是旧二进制（旧 READY 前缀形态）；下次上机需重新 push 本轮的 `out/dgram_server.exe`。
2. `CAPTURE` 行仍以 `CAPTURE ` 作为行前缀（与旧格式一致），其后的对象才是 JSON；
   如需整行纯 JSON，需要改名格式，属协议变更，本轮不做。
3. `verify_capture.py` / `cap_audio_stats.py` 只校验"完整性 + CRC + 序号"，不判断音频内容是否为语音。
4. NDK 编译验收只覆盖编译（0 warning）与 ELF 架构，不覆盖设备运行时行为。

---

## 8. 复现命令

```powershell
cd D:\tgz02\OS\system

# 1) Python 测试
python my-doc\03_uds_test\tests\capture_tools_test.py
python my-doc\03_uds_test\tests\ready_json_test.py

# 2) 其它统一测试
node --check my-doc\03_uds_test\pcm_bridge_draft.js
node my-doc\03_uds_test\tests\bridge_unit_test.js
node my-doc\03_uds_test\tests\probe_detach_test.js
python my-doc\03_uds_test\crc_crosscheck\run_crosscheck.py

# 3) Android NDK 编译（0 warning 验收）
$cc = "D:\tgz02\OS\_analysis\tools\android-ndk-r21e\toolchains\llvm\prebuilt\windows-x86_64\bin\armv7a-linux-androideabi26-clang.cmd"
cd my-doc\03_uds_test\android_uds_test
& $cc -O2 -Wall -Wextra -static -o out\dgram_server.exe dgram_server.c
Get-FileHash out\dgram_server.exe -Algorithm SHA256   # 42e3bd66…
```
