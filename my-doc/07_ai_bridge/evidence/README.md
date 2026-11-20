# T5-06A / T5-06B 证据（主机测试 + 真机实测原始输出）

所有真机文件都是 TG-Z02 上 `adb shell` 的直接输出，未做美化；T5-06A 时间：2026-11-20 16:20–16:35，
T5-06B 时间：2026-11-20 16:54–17:03。探针与测试脚本都是**一次性夹具**（见 `tools/`、
`../tests/`、`../android/`），不属于生产代码，也没有改动设备文件/系统分区。

## T5-06B（独立 AI Worker）

| 文件 | 产生方式 | 关键内容 |
|---|---|---|
| `ndk_build.log` | `android/build.ps1`（NDK r21e，API 26，`-O2 -Wall -Wextra -fPIE -pie`） | 零警告；产物 93408 B / sha256 `2cbd1f86…`；`ELF32 / ARM / Type: DYN`；`INTERP /system/bin/linker`；`NEEDED libc.so` |
| `host_unit_test.log` | `tests/run_host_tests.ps1` → `worker_unit_test.exe` | **215 checks / 0 failed**（解析、拒收、seq、状态、游标、Provider、状态文件） |
| `host_integration_test.log` | 同上 → `worker_integration_test.py`（真起进程） | **14/14 PASS**：只读消费、半行、非法行、去重、缺口、崩溃续跑、截断、重建、状态损坏、Provider 失败、超长、双实例、3000 条内存恒定 |
| `device_smoke.log` | `_analysis/t506b/d1_smoke.ps1`、`d2_voice.ps1`、`d4_factory.ps1` | 推送/启动/历史 102 条消费（`gaps=0, seq_resets=11`）/事件文件 sha256 不变/真实语音 2 条自动消费/原厂 TTS 正常 |
| `recovery_test.log` | `_analysis/t506b/d3_recovery.ps1` | `kill -9` → 陈旧锁接管 → 断点续跑；真实 UDS 注入 1 条被消费；双实例 rc=3；SIGINT 优雅停止；重启幂等 |

### T5-06B P1/P2 修复（内核锁 / Provider 重试 / 落盘失败 / 半行超长 / 删除重建）

| 文件 | 产生方式 | 关键内容 |
|---|---|---|
| `host_lock_stress.log` | `tests/worker_lock_stress_test.py --rounds 100 --procs 20` | 100 轮全部"恰好 1 个持锁 + 19 个 rc=3 + kill -9 后立刻可拿锁"，逐轮打印 `lock_pid` |
| `host_provider_retry.log` | `worker_integration_test.py --only i11` | 前 2 次失败第三次成功（只计成功一次）；永久失败→stuck 不跳过；失败期间 kill -9 后仍可恢复 |
| `host_state_fault.log` | `worker_integration_test.py --only i17` | create/write/fsync/rename/dirfsync 五种注入：全部 rc=5、`processed<=1`、磁盘进度未前进 |
| `host_reader_half_oversize.log` | `worker_integration_test.py --only i15` | 8500 B 半行先等待，补 `\n` 后才跳过整行，邻居记录正常 |
| `host_file_recreate.log` | `worker_integration_test.py --only i16` | 运行中删除→重建（先短后长）全部按 `(dev,ino)` 识别并从 0 重读 |
| `device_p1p2_fix.log` | `_analysis/t506b/d5_fix.ps1` | 真机：Provider 重试/stuck 恢复；真实故障（tmp 是目录 / 目标是目录）→ rc=5 且未继续消费 |

### T5-06B P2 补充修复（数字字段窄化与范围校验）

| 文件 | 产生方式 | 关键内容 |
|---|---|---|
| `ndk_build.log` | `_analysis/t506b/n1_ndk_build.ps1`（NDK r21e，API 26） | 两个产物（本轮重建）：`ai_worker` 106796 B / sha256 `85d931ef…`，`worker_unit_test` 173040 B / sha256 `f74eccf4…`；均 `ELF32/ARM/DYN` + `NEEDED libc.so`；**0 warning、0 error** |
| `device_numeric_fix.log` | `_analysis/t506b/n2_device.ps1` | 真机：**ARM32 单元测试 284/284 PASS**（`abi: 32-bit long, ULONG_MAX=4294967295`）；历史 111 行全消费（`invalid=0`、`offset=34119=size`、sha256 前后一致）；窄化拒收 4 行（`bad_seq`×2 / `bad_version` / `bad_type:text_bytes`）+ 1 行合法 |
| `device_p2p2_inode_reuse.log` | 同上 + 基线 `f3c9f3bf` 的旧单元测试二进制 | 旁证：同目录删除重建后 `st_dev:st_ino` 完全相同（inode 复用）；基线 `f3c9f3bf` 在真机 **257/1 failed**，本轮 **284/0** → 该失败早于本轮存在 |
| `host_unit_test.log` | `tests/run_host_tests.ps1` | **401 checks / 0 failed**（窄化/范围/一致性/前缀指纹/迁移/故障注入 + 本轮 `test_reader_prefix_atomic()`；Windows LLP64 的 `long` 也是 32 位，与 ARM32 同一分支） |
| `host_integration_test.log` | 同上（真起进程） | **27/27 PASS**，Mock Provider，无网络 |

### T5-06B P2-2 补充修复（events.jsonl 前缀指纹 / inode 复用）

| 文件 | 产生方式 | 关键内容 |
|---|---|---|
| `device_p22_prefix_fingerprint.log` | `_analysis/t506b/n3_device_p22.ps1`（内含 `p22_c.sh`/`p22_h.sh` 两个设备端脚本） | 真机 9 段：inode 复用实证（`45846:86205` 前后相同）；停机期换文件 → `prefix_mismatch`、从 `p22-b1` 重读；运行期删除→重建更长 → `ABSENT_OK/SWAP_OK/REPLACED_OK`、`invalid=0`；更短替换；同前缀追加保留偏移；v1 状态迁移（`legacy_rescans=1`、1 条有界重复）；`read/fold` 故障 → `rc=6`；4 次真追加 `resets=replacements=truncations=0`；真实桥接文件 sha256 不变 |
| `host_recreate_longer.log` | `worker_integration_test.py --only i18` | 运行期重建更长：新文件 3 条从第一条读起，状态 `prefix_hash` 等于独立算出的 FNV-1a |
| `host_prefix_same.log` | `--only i21` | 截至旧偏移字节相同 → 偏移保留、只处理追加的 2 条、`identity_resets=0` |
| `host_legacy_state.log` | `--only i22` | v1 → v2 迁移：从 0 重扫、`recent_ids` 抑制 1 条重复、状态写入 16 位十六进制指纹 |
| `host_prefix_fault.log` | `--only i23` | `T6B_FAULT_PREFIX=read` → `rc=6`；`=fold` → `rc=6`、`processed=0`、偏移不动 |
| `host_append_no_reset.log` | `--only i24` | 4 次追加 `resets/replacements/truncations` 全 0，增量指纹等于整段重算 |

### T5-06B P2-2 复审 P1（指纹提交原子性）

| 文件 | 产生方式 | 关键内容 |
|---|---|---|
| `device_p22_atomic_fold.log` | `_analysis/t506b/n4_device_atomic.ps1`（真机 TG-Z02，Mock Provider） | 5 段：真机 ARM32 单元 **401/401 PASS**；先正常消费第 1 条得到 `offset=285 / prefix_hash=dcbe3ddf0f0b22f7`；追加 70297 B 超长行后注入 `T6B_FAULT_PREFIX=fold_partial` → `prefix fold failed mid-way (4381/70297)`、`rc=6`、落盘 `offset` 与 `prefix_hash` **与故障前逐字节相同**；重启 `resets=0`、超长行重试提交、第 3 条处理一次；再重启为 no-op；真实桥接文件 sha256 不变 |
| `host_prefix_atomic.log` | `worker_integration_test.py --only i25` | 中途失败 → `rc=6`、状态文件 `offset=250` 与其 `prefix_hash` 仍成对（等于外部独立算出的 `[0,250)` 指纹）、`exit_reason=identity_hash_failed`、`processed_total=2` |

## T5-06A 探针证据

T5-06A 探针的原始输出见下表。

| 文件 | 产生方式 | 关键内容 |
|---|---|---|
| `device_facts.txt` | `uname -a` / `getprop` / `ls -l` 系统库 / `curl --version` / `openssl version` / CA 目录 / `ip addr`、`ip route` / vendor 库 | 设备指纹、四个系统库的实际存在与大小、135 张系统 CA、wlan0 与默认路由 |
| `device_probe.txt` | `adb shell /data/local/tmp/t5d_probe`（**动态链接**，源码 `tools/t5d_probe.c`） | `dlopen` libssl/libcrypto/libjson-c/libcurl/liblog 及各符号可用性；到 5 个域名的 TCP 443 可达性与 DNS 解析结果 |
| `device_probe_static.txt` | 同一份源码加 `-static` 编译后再跑 | 证明**全静态进程不能 dlopen**：`libdl.a is a stub --- use libdl.so instead` |
| `device_curl_probe.txt` | `adb shell /data/local/tmp/t5d_curlprobe https://www.baidu.com/`（源码 `tools/t5d_curlprobe.c`） | 运行时 `dlopen("libcurl.so")` 做 HTTPS GET：`result=0 http_status=200 bytes=17143`，证明 native ARM32 的 TLS+CA 校验可用 |
| `device_http_probe.txt` | `sh /data/local/tmp/t5d_http.sh`（`tools/t5d_http.sh`） | **不带任何凭据**打各家 OpenAI 兼容路径：DeepSeek / 百炼 / Ark 的 401 与错误 JSON 原文；OpenAI `000`（超时） |
| `ndk_check.txt` | 主机侧枚举 NDK r21e 的 sysroot 与产物属性 | sysroot 无 openssl/curl/json 头与库；`android/out/tgb_bridge` 为 `ELF32/ARM/EXEC` 且**无 `.dynamic`** |

## 复现命令

```powershell
# 编译（NDK r21e，API 26）
$cc = "D:\tgz02\OS\_analysis\tools\android-ndk-r21e\toolchains\llvm\prebuilt\windows-x86_64\bin\armv7a-linux-androideabi26-clang.cmd"
& $cc -O2 -Wall -o t5d_probe        tools\t5d_probe.c          # 动态链接
& $cc -O2 -Wall -static -o t5d_probe_static tools\t5d_probe.c  # 静态对照
& $cc -O2 -Wall -o t5d_curlprobe    tools\t5d_curlprobe.c

# 推设备并运行
adb push t5d_probe t5d_probe_static t5d_curlprobe t5d_http.sh /data/local/tmp/
adb shell 'chmod 755 /data/local/tmp/t5d_*'
adb shell '/data/local/tmp/t5d_probe'
adb shell '/data/local/tmp/t5d_probe_static'
adb shell '/data/local/tmp/t5d_curlprobe https://www.baidu.com/'
adb shell 'sh /data/local/tmp/t5d_http.sh'
```

## 边界说明

- `device_http_probe.txt` 里的请求**没有** `Authorization` 头，命中 401 属预期；**没有**产生任何计费调用。
- 所有探针只读设备状态；没有写 `/system`、没有改原厂 APK/SO、没有安装任何 APK。
- 探针二进制留在 `/data/local/tmp`（可随时删除），不参与 T5-05A/B/C 的运行路径。
