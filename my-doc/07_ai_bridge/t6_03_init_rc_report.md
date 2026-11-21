# T6-03 交付报告：用原生 init.rc 托管 Supervisor

- 设备：CCH `AILABS_S1L`，Android 8.1（SDK 27），ARM32 `armeabi-v7a`，`192.168.1.9:5555`
- 目标链：开机 → init 读 `/system/etc/init/tg_supervisor.rc` → 拉起 `tg_supervisor` →
  发现 `com.alibaba.ailabs.genie.smartapp:core` → 调 T6-01 Injector 注入 `libtg_hook.so` →
  ASR 文本进入 T5 AI Bridge
- 复用 T6-02 的 `tg_supervisor`（sha256 `17dec6e0…`）与 T6-01 的 Injector / Hook Agent，
  **没有重新实现、也没有改动**这三个二进制
- 真机证据：`evidence/t6_03_init_rc_device.log`（**80 ASSERT OK / 0 ASSERT FAIL**，4 次真实重启）

## 1. 结论

一轮完整跑通（`tests/t6_03_init_rc_device.ps1`，18:29–18:35）：

| 验收项 | 结果 |
|---|---|
| 1 rc 语法与导入关系 | init 自动导入 `/system/etc/init`；`ro.boot.init_rc` 为空；部署后 `init.svc.tg_supervisor=running` |
| 2 Android 正常开机 | 4 次重启全部 `sys.boot_completed=1`（用 `boot_id` 变化确认是真实重启） |
| 3 init 成功启动 Supervisor | `init.svc.tg_supervisor=running`、`pidof tg_supervisor=280`、日志 `start pid=…` |
| 4 核心进程出现后自动注入 | `target ready` → `inject end … exit=0 hooked=1`（317 ms 级），独立 `--check` = `hooked=1` |
| 5 重启核心进程后自动重新注入 | 强杀 App → 新 PID 自动注入（`elapsed=672ms`），同一 Supervisor 进程 |
| 6 重启设备后仍自动启动 | 第 2 次、第 4 次重启后都再次 `init.svc=running` + 自动注入 |
| 7 停用 rc 后不再自动启动 | 把 rc 移出导入目录 + 重启：`init.svc.tg_supervisor` 为空、无进程、本次开机日志里没有 `start pid=` |
| 8 原厂 ASR/NLU/TTS | 启用态播放语音：原厂 `SessionManager/WakeupEngine/GenieAssistantUIManager` 19 行，事件 270 → 271 |
| 9 启动失败不阻断开机 | 二进制缺失演练：`init.svc=stopped`、`init.svc.logd=running`、`boot_id` 未变、核心进程存活 |

另外两条：Supervisor 被 init 托管时，T6-02 的手动 `run_supervisor.sh start/stop` 仍然可用
（停用 rc 后手动起停一次，注入照常、`stopped pid=1867` 正常退出）；删掉 rc 后
`/system/etc/init` 条目数回到部署前的 47。

## 2. 启动环境核查

| 项 | 实测结果 | 依据 |
|---|---|---|
| init 导入关系 | `/init.rc` import `/init.environ.rc`、`/init.usb.rc`、`/init.${ro.hardware}.rc`、`/vendor/etc/init/hw/init.${ro.hardware}.rc`、`/init.usb.configfs.rc`、`/init.${ro.zygote}.rc`、`/init.common.rc` | `grep import /init.rc` |
| 独立 rc 能否被导入 | 能：init 二进制含 `/system/etc/init`、`/vendor/etc/init`、`/odm/etc/init` 三个目录导入路径；`ro.boot.init_rc` 为空 → 走目录导入 | `strings /init`、`getprop` |
| 目录导入生效 | 该目录定义的 `logd/servicemanager/netd/surfaceflinger/installd/keystore/zygote/adbd` 全部 running | `getprop init.svc.*` |
| `/data` 与加密 | `/data` ext4 rw；`ro.crypto.state=unencrypted` → `post-fs-data` 即可用，无解锁等待 | `mount`、`getprop` |
| `/data/local/tmp/t6/` | 目录与二进制 `root:root 0755`，日志 `0644`；启动时可见 | `ls -l` |
| 分区 | `/` rootfs ro、`/system` `/vendor` by-name ext4 ro、`/data` `/cache` rw；`/odm/etc/init` 不存在 | `mount` |
| 启动校验 | `ro.boot.veritymode=enforcing`、`ro.boot.verifiedbootstate=orange`（已解锁）、运行时无 dm-verity 设备、`/system` 直挂 `mmcblk0p19` | `getprop`、`dmesg`、`mount` |
| SELinux | `getenforce=Permissive`、`/sys/fs/selinux/enforce=0`、`ro.boot.selinux=disable`；boot log 里 90 条 `avc: denied`（Permissive 仍审计），其中 8 条涉及本任务的二进制，**全部 `permissive=1`** | 三项独立读取 |
| init service 可用项 | 只用 8.1 支持的 `class/user/group/seclabel/disabled`；`seclabel` 是硬要求（§3） | 实测 |

## 3. 集成中发现并修掉的两个真问题

### 3.1 没有 `seclabel` 时 init 拒绝启动（P0）

```
init: [PropSet]: pid:5625 uid:0 gid:0 ctl.start, tg_supervisor
init: service tg_supervisor does not have a SELinux domain defined
```

init 启动 service 前必须先确定域，rc 没写 `seclabel`、系统也没有该服务名的
`service_contexts` 条目 → 直接拒绝（与是否 enforcing 无关）。修复：
`seclabel u:r:init:s0`（每个 Android 都有，不依赖 Magisk 的 `su`/`magisk` 域）。

附带证据价值：这一次重启 Android 完全正常、其它服务全在跑，只是我们的服务没起来 ——
也就是"服务起不来不影响开机"的真实样本。

### 3.2 这台 init 解析目录里的**每个普通文件**，不看 `.rc` 后缀（P1）

第一版"停用"是把 `tg_supervisor.rc` 改名成 `tg_supervisor.rc.disabled`。重启后
`init.svc.tg_supervisor` 仍然是 `running`，Supervisor 日志里也确实出现了一条新的
`start pid=279`（新的一次开机）——说明改名根本没停用。`strings /init` 里也没有
`.rc` 后缀过滤的痕迹。修复：

- **停用 = 把 rc 移出 `/system/etc/init`**（留档到 `/data/local/tmp/t6/tg_supervisor.rc.disabled`）；
- 部署时先清掉目录里所有 `tg_supervisor*` 残留，并且**不在目录里写临时文件**；
- 恢复时删掉目录里的 `tg_supervisor*` 和 `/data` 里的留档。

修完复测：停用后重启 `init.svc.tg_supervisor` 为空、没有进程、该次开机日志里没有
`start pid=`；恢复后目录条目数回到 47。

### 3.3 附带发现（记录，不阻断）

boot log 里有 `avc: denied { sys_ptrace } … scontext=u:r:init:s0 … permissive=1`：
以 init 域运行、靠 Permissive 放行才拿到 ptrace 能力（`capability=19`）。
本机是 Permissive，所以注入正常；**换到 enforcing 的设备需要在策略里补
`allow init self:capability sys_ptrace;`**（或用专门的域）。

## 4. 交付内容

| 文件 | 说明 |
|---|---|
| `android/init_rc/tg_supervisor.rc` | 独立 rc：`service tg_supervisor …` + `on post-fs-data` / `on property:sys.boot_completed=1` |
| `android/init_rc/deploy_rc.sh` | 部署：清理残留 → remount rw → 覆盖写 → chown/chmod → sync → remount ro → 回读 sha256 |
| `android/init_rc/disable_rc.sh` | 停用：把 rc 移出导入目录（留档到 /data）+ `ctl.stop` + 兜底 kill |
| `android/init_rc/restore_rc.sh` | 恢复：删除目录里的 `tg_supervisor*` 与 /data 留档，回到出厂启动行为 |
| `android/init_rc/status_rc.sh` | 打印 rc / 服务 / 进程 / 日志尾部 |
| `android/init_rc/README.md` | 部署位置、导入机制、权限属主、启用/停用/恢复、故障恢复、已知限制 |
| `tests/t6_03_init_rc_device.ps1` | 真机验收 P0–P7（4 次真实重启，靠 `boot_id` 判定） |
| `evidence/t6_03_init_rc_device.log` | 本次 80/0 的完整日志 |
| `evidence/t6_03_init_boot_evidence.md` | 首次打通时的原始输出摘录（含 16:45 那次失败样本） |
| `evidence/t6_03_init_rc_partial_adb_outage.log` | 17:02 adbd 故障期间的日志（逐条注明是链路错误） |

rc 关键内容：

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
部署完 `/system` 立刻挂回 `ro`；部署前目录清单存到 `/data/local/tmp/t6/system_etc_init.before`。

## 5. 故障演练与恢复（本次实测）

| 场景 | 实测 |
|---|---|
| 二进制缺失（演练） | 临时改名 + `ctl.start`：`init.svc.tg_supervisor=stopped`；`init.svc.logd=running`；`boot_id` 未变（没有被拉着重启）；核心进程存活；5 s 内 init 日志里提到 `tg_supervisor` 的只有 17 行（不是风暴）；改回二进制后 `ctl.start` 立即恢复 running |
| 停用 rc | 重启后 `init.svc` 为空、无进程、日志无 `start pid=`；T6-02 手动 `start/stop` 仍然可用 |
| 恢复出厂行为 | 目录条目 48 → 47，`/system` 回到 ro，`ls /system/etc/init` 里没有 `tg_supervisor*` |
| 重新启用 | `deploy_rc.sh` + 重启：`init.svc=running`、自动注入、`--check`=`hooked=1` |

## 6. 已知限制

1. **要往 `/system` 写一个文件**：这是"通过现有 init 导入机制加载独立 rc"的唯一入口
   （`/`、`/system`、`/vendor` 全 ro，`/odm/etc/init` 不存在）。本机
   `verifiedbootstate=orange`（已解锁）、运行时无 dm-verity，写入不影响启动校验；
   verity 强校验的设备上这条路走不通，只能改 boot.img ramdisk 或用 Magisk overlay（本任务都排除）。
   新增的只有这一个 rc，`restore_rc.sh` 删掉即回到出厂行为。
2. **enforcing 设备需要补策略**（§3.3 的 `sys_ptrace`）；本机 Permissive 才能直接跑。
3. **Android 8.1 没有 `restart_period`**：服务异常退出后的重启节奏由 init 决定，
   rc 里无法限速；实测"缺二进制"时 5 s 内 17 条日志，未构成风暴。
4. **依赖 `/data/local/tmp/t6/`**：该目录被清掉后服务起不来（不影响开机），
   需要重新部署二进制或先 `restore_rc.sh`。
5. **本机 adbd 偶发不可用**：17:02–18:07 期间 `shell/sync` 全部 `error: closed`（12:38 也发生过一次）。
   测试脚本已加固：每阶段前 `WaitShell 90`、读取带重试、重启用 `boot_id` 判定、
   断链时写 `ABORT` 而不是记一堆假失败。
6. `/data/local/tmp/t6/supervisor.log` 只追加不轮转。
