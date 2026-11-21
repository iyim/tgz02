# T6-03：用原生 init 托管 Supervisor

把已经在 T6-02 验收过的 `tg_supervisor` 交给 Android init 在开机时拉起。
Supervisor、Injector、Hook Agent 都不依赖 Magisk 模块、service.sh、Zygisk；
Magisk 只保留为 root 能力来源，不参与这条启动链。

## 1. 部署位置与导入机制

| 项 | 值 |
|---|---|
| rc 文件 | `/system/etc/init/tg_supervisor.rc`（**新增**，不改任何原厂文件） |
| 导入机制 | Android 8.1 的 init 在 `LoadBootScripts()` 里自动导入 `/system/etc/init`、`/vendor/etc/init`、`/odm/etc/init` 三个目录下的 `*.rc`（`strings /init` 能查到这三个路径）；本文件放进第一个目录即可，不需要改 `/init.rc` |
| 触发时机 | `on post-fs-data`（本机 `ro.crypto.state=unencrypted`，此时 `/data` 已挂载）＋ `on property:sys.boot_completed=1` 兜底 |
| 权限/属主 | `0644 root:root`（与目录里其它 rc 一致） |
| 二进制 | `/data/local/tmp/t6/tg_supervisor`（`0755 root:root`，T6-02 的构建产物，未改动） |
| 日志 | 继续写 `/data/local/tmp/t6/supervisor.log`（`--log` 参数），同时 init 会把服务状态记进 kmsg |

service 定义只用 Android 8.1 支持的选项：`class` / `user` / `group` / `seclabel` / `disabled`。
`restart_period`、`oom_score_adj` 之类新版本关键字没有使用（8.1 的解析器遇到不认识的选项会把整个文件判失败）。

### 为什么必须有 `seclabel`

没有 `seclabel` 时 init 直接拒绝启动（与 SELinux 是否 enforcing 无关，这是 init 的硬检查）：

```
init: service tg_supervisor does not have a SELinux domain defined
```

这里用 `u:r:init:s0`：每个 Android 都存在这个域，不依赖 Magisk 的 `su`/`magisk` 域。
本机运行时 SELinux 是 **Permissive**（`getenforce` = Permissive、`/sys/fs/selinux/enforce` = 0），
root + init 域足以让 Injector 去 ptrace 目标进程。

## 2. 启用 / 停用 / 恢复

设备端脚本（都在 `/data/local/tmp/t6/`，由测试脚本部署）：

```sh
su -c "/data/local/tmp/t6/deploy_rc.sh"    # 部署（可重复执行；内容相同则不动）
su -c "/data/local/tmp/t6/disable_rc.sh"   # 停用：改名成 tg_supervisor.rc.disabled
su -c "/data/local/tmp/t6/restore_rc.sh"   # 恢复：删掉 rc，回到出厂启动行为
su -c "/data/local/tmp/t6/status_rc.sh"    # 看 rc/服务/进程/日志
```

- **启用** = `deploy_rc.sh`（或在 `disable_rc.sh` 之后把 `.disabled` 改回 `.rc`），**下次开机会生效**（init 只在启动时解析 rc）。
- **停用** = `disable_rc.sh`：把文件改名成 `*.disabled`（init 只认 `*.rc`），同时 `ctl.stop` 掉当前实例。
- **恢复** = `restore_rc.sh`：删除这两个文件，`/system` 重新挂回只读。
  部署前脚本会把 `/system/etc/init` 的原始清单存到 `/data/local/tmp/t6/system_etc_init.before`，
  恢复后可以用它逐条比对（测试脚本就断言"条目数回到部署前"）。

`deploy_rc.sh` 的写流程：`mount -o remount,rw /system` → 写 `tg_supervisor.rc.tmp` →
`chown 0:0` / `chmod 0644` → `mv` 到目标名 → `sync` → `mount -o remount,ro /system` →
回读 `sha256sum` 与 `mount` 状态。中途任何一步失败都会先把 `/system` 挂回只读再退出。

## 3. 手动启停（T6-02 方式，保留）

init 托管与手动启停互不冲突：`disable_rc.sh` 之后仍然可以

```sh
su -c "/data/local/tmp/t6/run_supervisor.sh start|status|stop"
```

手动实例不在 init 管理之下（`init.svc.tg_supervisor` 不会变成 running），
但 Supervisor 自己的 PID 文件锁保证同一时刻只有一个实例。

## 4. 故障恢复

| 场景 | 行为 |
|---|---|
| Supervisor 起不来（二进制缺失/不可执行） | init 记录 `execve` 失败并继续启系统；Android 正常开机 |
| 注入失败 | Supervisor 只记日志并按 2 s→60 s 退避重试；目标进程不受影响 |
| 目标进程不存在 | Supervisor 只打 `target gone`，不退出 |
| 想彻底停掉自动启动 | `restore_rc.sh`，然后重启（或 `disable_rc.sh` + 重启） |
| 需要临时排查 | 先 `restore_rc.sh` 关掉托管，再用 `run_supervisor.sh start` 前台/手动跑 |

## 5. 已知限制

- 这个通道要往 `/system` 写一个文件（这是"通过现有 init 导入机制加载"的唯一入口）。
  本机 `ro.boot.verifiedbootstate=orange`（已解锁）、运行时没有 dm-verity 设备，
  所以写入不会触发校验；如果换成 verity 强校验的设备，这条路走不通，
  只能改 boot.img ramdisk 或（不推荐）用 Magisk overlay —— 两者都被本任务排除。
- Supervisor 二进制在 `/data/local/tmp/t6/`：如果这个目录被清掉，服务会起不来（不影响开机），
  需要重新部署二进制或先 `restore_rc.sh`。
- Android 8.1 的 init 没有 `restart_period`，服务异常退出后的重启间隔由 init 自身决定；
  测试里对"二进制缺失"这种人为故障做了实测（见报告）。
- `/data/local/tmp/t6/supervisor.log` 只追加不轮转。
