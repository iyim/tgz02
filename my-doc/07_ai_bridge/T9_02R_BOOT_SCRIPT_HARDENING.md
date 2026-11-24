# T9-02R 启动安全修正

- 仓库：`iyim/tgz02`，基线提交 `95d5d50865f26b81a513e9ce99307e81e375b616`
- 设备：TG-Z02 / AILABS_S1L，Android 8.1（SDK 27），`armeabi-v7a`，Magisk root
- 作业时间：2026-11-24 12:50 – 12:59（CST）
- 范围：只改两个启动脚本（`android/boot/deploy_boot_rc.sh`、`android/boot/boot_stack.sh`）和回滚脚本；**没有改任何语音功能代码**，`tg_stack.rc` 的启动架构保持原样

---

## 1. 审查发现与修法对照

| 编号 | 审查意见 | 修法 | 验证 |
|---|---|---|---|
| A1 | 备份失败不中止 | `mkdir`/`: >`/`cp`/`sha256sum` 每步都 `\|\| fail`，`fail` 直接 `exit 1`，且发生在任何 `rm` 之前 | 主机用例 2：备份目录不可建时退出码 1，旧文件与内容均未变，`/system` 从未变成可写 |
| A2 | 删除前未确认备份 | 备份完成后逐文件比较 `sha256(备份) == sha256(现网)`，不等则 `fail "backup verify failed … nothing was removed"` | 主机用例 1（哈希写入 `sha256.before`）、用例 2 |
| A3 | 无条件删除所有 `tg_*` | 改为白名单 `ALLOW_REPLACE="tg_supervisor.rc"`；目录里出现白名单之外、又不是 `tg_stack.rc` 的条目 → 直接中止并打印该条目名 | 主机用例 3：出现 `tg_weird.rc` 时退出码 1，目录原样 |
| A4 | 未明确列出可替换项 | 脚本头部与运行时都打印 `entries to replace: …`；白名单是唯一的删除来源 | 真机部署输出 |
| A5 | 安装失败不自动恢复 | 安装后比较 `sha256(安装结果) == sha256(源)`；不一致或 `cp`/`chmod` 失败 → `on_fail` 调 `restore_previous()` 把备份放回、删掉自己的 rc、`remount,ro` | 主机用例 4：目标位置被目录占用导致 `cp` 失败时，旧文件按原哈希恢复，`/system` 回只读 |
| A6 | 未检查 `/system` 已回只读 | `mount -o remount,ro` 后用 `mount` 输出判断 `(ro,`；不是只读则重试一次，仍不是则 `EXIT=2` 并提示“重启前人工检查” | 主机用例 1/4/5/6 均断言 `mount_state == ro` |
| A7 | 回滚脚本盲目覆盖 | 回滚**先校验** `$BAK/sha256.before` 里每个文件的 SHA256，任一缺失/不匹配 → 拒绝执行、不碰目录；恢复后再校验写入结果的哈希 | 主机用例 5（正常回滚）、用例 6（备份被篡改 → 退出码 1，目录未变，`/system` 未变成可写） |
| A8 | 保持已验收架构 | `tg_stack.rc` 内容未改（两个 supervisor + oneshot `tg_stack`）；部署脚本仍只替换那一个旧条目 | 真机：`init.svc.tg_hook_sup=running`、`tg_guard_sup=running`，`:core` 只映射 `libtg_hook.so` + `libtg_ttsguard_t8156.so` |

### B. `boot_stack.sh`：等待条件

| 编号 | 审查意见 | 修法 | 验证 |
|---|---|---|---|
| B1 | 只凭 `libtg_` 计数 ≥1 就继续 | 改为对**两条完整绝对路径**分别 `grep -F -c`：`/data/local/tmp/t8/libtg_hook.so` 与 `/data/local/tmp/t7/libtg_ttsguard_t8156.so`，两者都 ≥1 才继续 | 主机用例 7/8/9；真机 `injection ok: hook=3 guard=3` |
| B2 | 超时要记明确错误 | 超时日志逐行写明：缺哪个库、各自映射行数、pid、`/system` 日志位置、supervisor 日志位置 | 主机用例 8/9/10 |
| B3 | 超时不能启动 Worker 等 | 超时分支直接 `exit 1`，启动段落根本不会执行 | 主机用例 8/10 断言日志中不存在启动语句 |
| B4 | 保留进程与日志、不反复杀/重启 | 脚本全程不 `kill`、不重启 `:core`，只读 `/proc/<pid>/maps` 与 ps | 代码审查 + 真机日志 |
| B5 | 旧 guard 路径不应通过 | 用例 9 专门把 `t8155r` 放进 maps：旧“计数”写法会放行，新写法必须中止 | 主机用例 9 通过 |

---

## 2. 主机测试（真实脚本 + 桩）

`tests/t9_02r_boot_scripts_test.sh`（Git Bash / MSYS）：把真脚本跑在假 `/system/etc/init`、假 `/proc` 上，`mount`/`chown`/`sync`/`setprop`/`getprop` 用桩记录调用，**不接触设备**。

```
T9-02R boot script tests: 41 passed, 0 failed
```

用例清单：

1. 正常部署：旧条目被替换、安装哈希一致、备份存在且哈希入库、`/system` 留在 `ro`、`boot_stack.sh` 可执行
2. 备份失败：退出码 1、旧条目内容不变、什么都没装、`/system` 从未可写、错误信息含 “nothing was removed”
3. 目录里有白名单之外的 `tg_weird.rc`：退出码 1、目录原样、错误点名该条目
4. 安装失败：`cp` 撞目录 → 自动恢复旧条目（哈希一致）+ `/system` 回 `ro` + 日志出现 “restoring the previous boot entries”
5. 正常回滚：旧条目恢复、`tg_stack.rc` 移除、恢复后哈希与备份一致
6. 回滚遇到被篡改的备份：拒绝执行、目录原样、`/system` 未变成可写
7. `boot_stack`：两条库都在 → `injection ok: hook=1 guard=1`，继续启动
8. 只有 hook → `injection incomplete`，并点名缺 `libtg_ttsguard_t8156.so`，**不启动**
9. 映射的是旧 `libtg_ttsguard_t8155r.so` → 直接中止（这是审查指出“计数写法”会误判的场景）
10. `:core` 一直没出现 → `not found within …`，**不启动**

---

## 3. 真机验证

| 步骤 | 结果 |
|---|---|
| 三个脚本 `sh -n`（设备 mksh） | 全部 `SYNTAX_OK` |
| 用新脚本重跑部署（幂等） | `entries to replace: (none)`，`tg_stack.rc` 哈希 `190f611c…`，`boot_stack.sh` 更新为 `6f72f3f8…`，`/system` 回只读，`EXIT=0` |
| 重启后 `boot_stack.log` | `core=1178 after 0s` → `injection ok: hook=3 guard=3` → bridge 1602 / tts 2373+2388 / worker 2580 / tap 2695 → `boot_stack done` |
| 重启后注入组合 | `:core` 1178 只有 `/data/local/tmp/t8/libtg_hook.so` 与 `/data/local/tmp/t7/libtg_ttsguard_t8156.so` |
| 重启后语音链路 | `12:54:38 route=native intent=volume` → `12:54:39 CONFIRMED by factory session=1972763 (+206 ms)` |

无人干预的完整启动日志（节选）：

```
[12:53:31] === boot_stack start pid=1155 (T9-02R) ===
[12:53:31] need in :core: /data/local/tmp/t8/libtg_hook.so AND /data/local/tmp/t7/libtg_ttsguard_t8156.so
[12:53:32] core=1178 after 0s
[12:53:34] injection ok: hook=3 guard=3 mapping lines in pid=1178
[12:53:36] bridge: started: pid=1602 …
[12:53:53] tts:    started: supervisor=2373 executor=2388
[12:53:55] worker: started: pid=2580 …
[12:53:57] tap:    tap started: pid=2695 …
[12:54:00] === boot_stack done ===
```

---

## 4. 变更清单

| 文件 | 变更 |
|---|---|
| `android/boot/deploy_boot_rc.sh` | 白名单 + 备份校验 + 安装校验 + 失败自动恢复 + 只读校验 + 全程 remount 兜底 |
| `android/boot/boot_stack.sh` | 两条完整库路径的映射检查；超时只报错不启动；不杀进程、不重启 `:core` |
| `android/boot/rollback_boot_rc.sh` | 回滚前校验备份哈希，拒绝覆盖被篡改/缺失的备份 |
| `tests/t9_02r_boot_scripts_test.sh` | 新增 41 项主机测试 |
| `evidence/t9-02r/…` | 主机测试日志、设备部署日志、重启后启动日志、链路验证 |

## 5. 未解决 / 边界

1. 脚本仍假设 `/system` 可 `remount,rw`（本机成立）；若某次 remount 失败，脚本会在删除任何条目之前退出，这一点已有守护。
2. `deploy_boot_rc.sh` 的白名单只有 `tg_supervisor.rc`；将来若要替换别的启动项，必须显式加进白名单（有意为之）。
3. 主机测试用桩模拟 `mount`，不能覆盖真实分区行为；真机验证以 §3 的日志为准。
