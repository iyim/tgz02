# T6-03 交付报告：用原生 init.rc 托管 Supervisor

- 设备：CCH `AILABS_S1L`，Android 8.1（SDK 27），ARM32 `armeabi-v7a`，`192.168.1.9:5555`
- 目标链：开机 → init 读 `/system/etc/init/tg_supervisor.rc` → 拉起 `tg_supervisor` →
  发现 `com.alibaba.ailabs.genie.smartapp:core` → 调 T6-01 Injector 注入 `libtg_hook.so` →
  ASR 文本进入 T5 AI Bridge
- 复用的二进制：T6-02 的 `tg_supervisor`（sha256 `17dec6e0…`），**没有重新实现 Supervisor**，
  也没有改动 T6-01 的 Injector / Hook Agent

## 0. 当前状态（先说结论）

| 项目 | 状态 |
|---|---|
| 启动环境核查（init 导入链、分区、SELinux、/data 时机、文件属主） | **完成**，证据见 §1 |
| 独立 rc 文件 + 部署/停用/恢复脚本 | **完成**，见 `android/init_rc/` |
| 真机：init 在开机时拉起 Supervisor | **已验证**（`init.svc.tg_supervisor=running`，pid 280） |
| 真机：核心进程自动注入 + ASR 进桥接端 | **已验证**（`inject end … hooked=1 elapsed=321ms`，事件入库） |
| 真机：核心进程重启后自动重新注入 | **已验证**（1159 → 5247） |
| 真机：第二次重启后仍然自动启动 | **已验证**（重启后新日志段里 `inject end … hooked=1` + 独立 `--check` = 1） |
| 真机：停用 rc 后不再自启 / 故障演练 / 恢复验证 / 再启用 | **未完成**：设备 adbd 进入 `error: closed`（详见 §5） |

设备当前处于一个**中间态**（`tg_supervisor.rc` 已启用，二进制被改名成 `.off`），
恢复命令只有两行，已放进 `_analysis/t6/recover_t6_03.ps1`，adbd 一恢复就会自动执行：

```sh
mv /data/local/tmp/t6/tg_supervisor.off /data/local/tmp/t6/tg_supervisor
su -c /data/local/tmp/t6/restore_rc.sh
```

## 1. 启动环境核查（只查本任务需要的）

| 项 | 实测结果 | 依据 |
|---|---|---|
| init 的 rc 导入关系 | `/init.rc` 显式 import `/init.environ.rc`、`/init.usb.rc`、`/init.${ro.hardware}.rc`、`/vendor/etc/init/hw/init.${ro.hardware}.rc`、`/init.usb.configfs.rc`、`/init.${ro.zygote}.rc`、`/init.common.rc` | `grep import /init.rc` |
| 是否支持独立 rc 文件导入 | **支持**：init 二进制里有 `/system/etc/init`、`/vendor/etc/init`、`/odm/etc/init` 三个目录导入路径；`ro.boot.init_rc` 为空，所以走目录导入 | `strings /init`、`getprop ro.boot.init_rc` |
| 目录导入确实生效 | 目录里定义的 `logd / servicemanager / netd / surfaceflinger / installd / keystore / zygote / adbd` 全部 `init.svc.*=running` | `getprop init.svc.*` |
| `/data` 挂载与加密 | `/data` = ext4 `rw`，`ro.crypto.state=unencrypted` → 不存在解锁等待，`post-fs-data` 时 `ufs` 已可用 | `mount`、`getprop` |
| `/data/local/tmp/t6/` 启动时可用 | 目录 `root:root 0755`，二进制 `root:root 0755`，日志 `0644`；`/data` 挂载后即可见 | `ls -ld/-l` |
| 分区可写性 | `/system`、`/vendor` 都是 `by-name` ext4 **ro**；`/` rootfs ro；`/data`、`/cache` rw | `mount` |
| 启动校验 | `ro.boot.veritymode=enforcing`、`ro.boot.verifiedbootstate=orange`（已解锁）、**运行时没有 dm-verity 设备**（dmesg 无 verity 记录、`/system` 直接挂在 `mmcblk0p19`） | `getprop`、`dmesg`、`mount` |
| SELinux 实际模式 | `getenforce` = **Permissive**、`/sys/fs/selinux/enforce` = **0**、`ro.boot.selinux=disable`；当前 dmesg 无 `avc: denied` | 三项独立读取，不只信 prop |
| init service 可用配置 | 只用 8.1 支持的 `class / user / group / seclabel / disabled`；实测 `seclabel` 是**必需**的（见 §2） | 见 §2 |

## 2. 集成过程中发现并修掉的 P0

**现象**：rc 部署后重启，`getprop init.svc.tg_supervisor` 为空，`pidof` 为空，服务根本没起来。
`setprop ctl.start tg_supervisor` 之后 dmesg 给出原因：

```
init: [PropSet]: pid:5625 uid:0 gid:0 ctl.start, tg_supervisor
init: service tg_supervisor does not have a SELinux domain defined
```

**原因**：init 在启动 service 前必须先确定它的 SELinux 域；rc 里没有 `seclabel`、
系统 `service_contexts` 里也没有这个服务名 → init 直接拒绝启动。这个检查与 SELinux
是否 enforcing **无关**（本机是 Permissive 也照样拒绝）。

**修复**：在 service 里加 `seclabel u:r:init:s0`（每个 Android 都存在的域，不依赖 Magisk 的
`su`/`magisk` 域）。加上之后同一个 rc 立刻能被 init 拉起（§3）。

这个 P0 也顺带提供了"服务起不来不影响开机"的真实样本：那一次重启 Android 完全正常、
其它 init 服务全在跑，只是我们的服务没起来。

## 3. 交付内容

| 文件 | 说明 |
|---|---|
| `android/init_rc/tg_supervisor.rc` | 独立 rc：`service tg_supervisor …` + `on post-fs-data` / `on property:sys.boot_completed=1` 触发 |
| `android/init_rc/deploy_rc.sh` | 部署：remount rw → 写 tmp → chown/chmod → mv → sync → remount ro → 回读 sha256 |
| `android/init_rc/disable_rc.sh` | 停用：改名成 `*.disabled`（init 只认 `*.rc`）+ `ctl.stop` + 兜底 kill |
| `android/init_rc/restore_rc.sh` | 恢复：删掉 rc（含 `.disabled` 残留）+ 停服务，回到原厂启动行为 |
| `android/init_rc/status_rc.sh` | 一次性打印 rc / 服务 / 进程 / 日志尾部 |
| `android/init_rc/README.md` | 部署位置、导入机制、权限属主、启用/停用/恢复、故障恢复、已知限制 |
| `tests/t6_03_init_rc_device.ps1` | 真机增量验收（P0–P7，含 4 次重启） |
| `evidence/t6_03_init_boot_evidence.md` | 本次真机观察到的原始输出摘录 |
| `evidence/t6_03_init_rc_partial_adb_outage.log` | 那次运行的原样日志（后半段是 adbd 故障，逐条注明） |

rc 全文（关键部分）：

```
service tg_supervisor /data/local/tmp/t6/tg_supervisor --pidfile /data/local/tmp/t6/tg_supervisor.pid --log /data/local/tmp/t6/supervisor.log
    class late_start
    user root
    group root system
    seclabel u:r:init:s0
    disabled

on post-fs-data
    start tg_supervisor

on property:sys.boot_completed=1
    start tg_supervisor
```

部署结果：`/system/etc/init/tg_supervisor.rc`，`0644 root:root`，sha256 `cdd94750…`，
`/system` 部署完立刻挂回 `ro`；部署前该目录清单存到 `/data/local/tmp/t6/system_etc_init.before`。

## 4. 真机已验证的部分

| 验收项 | 结果 |
|---|---|
| 2 Android 正常开机 | 两次重启都 `sys.boot_completed=1`，app/zygote/其它服务正常 |
| 3 init 成功启动 Supervisor | `init.svc.tg_supervisor=running`，`pidof tg_supervisor=280`，日志 `start pid=280` |
| 4 核心进程出现后自动注入 | `target found pid=1159` → `target ready` → `inject end … exit=0 hooked=1 elapsed=321ms`；独立 `--check` = `hooked=1` |
| 5 重启核心进程后自动重新注入 | 1159 → 5247，`inject end: pid=5247 … hooked=1 elapsed=672ms`，同一 Supervisor 进程 |
| 6 重启设备后仍自动启动 | 第二次重启后的新日志段里 `inject end … hooked=1`，独立 `--check` = 1 |
| 原厂 ASR/NLU/TTS + 桥接 | 播放 `s01` 后 `events.jsonl` 增加带 `t6-` 前缀的 `asr_final`，`is_final:true` |
| 9 服务起不来不阻断开机 | 见 §2 那次（没有 seclabel 的 rc）——Android 正常开机，只有我们的服务没起来 |

## 5. 未完成项与原因（P1：设备 adbd）

从 16:53 起，这台设备的 adbd 反复返回 `error: closed`（`get-state` 仍是 `device`，
但 `shell` / `sync` / `exec-out` / `root` 全部失败）：

```
shell: error: closed
adb.exe : file_sync_client.cpp:477 protocol fault: failed to read stat response
```

已尝试且无效：`adb kill-server/start-server`、`adb connect`、`adb reconnect`、
`adb tcpip 5555`、`adb reboot`（共 3 次）。本机 2026-11-21 12:38–13:53 也出现过同样现象，
约 75 分钟后自行恢复。

因此以下四项**没有完成**，我不会把它们标成通过：

| 验收项 | 状态 |
|---|---|
| 7 停用 rc 后不再自动启动 | 停用动作本身成功（文件已改名、服务已停），"重启后不自启"的读数被 adbd 故障吞掉 |
| 故障演练（init 启动失败不影响系统） | 已在脚本里改成**不重启**的版本（临时改名二进制 → `ctl.start` → 观察 → 立刻恢复），但设备 shell 断开，没能执行 |
| 恢复 rc 并核对 `/system/etc/init` 回到部署前清单 | 脚本已就绪，未执行 |
| 重新部署后再重启验证 | 未执行 |
| 10 原厂 ASR/NLU/TTS（启用状态下） | 注入期间已经跑通一次（§4），启用态的最终复核未做 |

设备当前中间态与恢复命令见 §0；`_analysis/t6/recover_t6_03.ps1` 会在 adbd 恢复后
自动执行"改回二进制 + 删 rc"，避免设备停在"服务一直起不来"的状态。

## 6. 风险与后续

1. **写 `/system` 这条路**：这是"通过现有 init 导入机制加载独立 rc"的唯一入口
   （`/`、`/system`、`/vendor` 全 ro，`/odm/etc/init` 不存在）。
   本机 `verifiedbootstate=orange`（已解锁）、运行时无 dm-verity，所以写入不影响启动校验；
   换到 verity 强校验设备就只能改 boot.img ramdisk 或用 Magisk overlay（本任务都排除）。
   新增的只有一个 rc 文件，`restore_rc.sh` 删掉即回到原厂行为。
2. **8.1 没有 `restart_period`**：服务异常退出后的重启节奏由 init 决定，无法在 rc 里限速。
   本次最后一次设备写入恰好把二进制改名后重启过，因此"缺二进制时 init 的重试频率"
   这一点只有部分观察（见 §5），需要在 adbd 恢复后补测。
3. **二进制在 `/data/local/tmp/t6/`**：该目录被清理后服务起不来（不影响开机），
   需要重新部署二进制或先 `restore_rc.sh`。
4. **adbd 稳定性**是本机既有的环境问题（两次故障：12:38 与本次），
   建议后续给设备的测试流程加"adb 抖动重试 + 断链不误判"的保护（本轮已把
   测试脚本的读取全部包进重试，并在重启后等待 `shell` 真正可用）。
5. **是否把 rc 留在设备上**由操作者决定：现在（§0）恢复成原厂状态更安全，
   需要启用时执行 `deploy_rc.sh` 后重启。
