# T6-03 真机证据摘录（init.rc 托管 Supervisor，2026-11-21 16:43-16:54）

以下是本次在设备上实际观察到、并逐条复制下来的输出。原始出处：
- `init.svc.*` / `getprop` / `mountus` 输出：本次会话中 adb shell 的实际返回
- Supervisor 日志：`/data/local/tmp/t6/supervisor.log`（append-only，未改写）

## 1. 部署（16:44）

```
snapshot of /system/etc/init before deploy -> /data/local/tmp/t6/system_etc_init.before
deployed: /system/etc/init/tg_supervisor.rc
-rw-r--r-- 1 root root 2114 2026-11-21 16:48 /system/etc/init/tg_supervisor.rc
cdd947509c15b3b5facc0794529294ff94ab069ec1f0c20164fd27cfe414ec34  /system/etc/init/tg_supervisor.rc
/dev/block/mmcblk0p19 on /system type ext4 (ro,seclabel,relatime,data=ordered)
EXIT=0
```

（16:44 首次部署的是没有 `seclabel` 的版本，sha256 `e4ddf106…`；16:48 补上
`seclabel u:r:init:s0` 后重新部署，sha256 `cdd94750…`，上面的清单就是这个版本。）

## 2. 第一次失败：init 拒绝启动（16:45，没有 seclabel 的版本）

`setprop ctl.start tg_supervisor` 之后，dmesg 里出现：

```
[  189.239368] (0)[1:init]init: [PropSet]: pid:5625 uid:0 gid:0 ctl.start, tg_supervisor
[  189.240110] (0)[1:init]init: service tg_supervisor does not have a SELinux domain defined
```

`getprop init.svc.tg_supervisor` 为空，`pidof tg_supervisor` 为空，但 Android 正常开机、
其它服务全部正常 —— 这就是"服务起不来不影响系统"的一次真实记录（虽然当时是意外触发）。

## 3. 加上 seclabel 后重启（16:48）：init 自动拉起并完成注入

```
getprop init.svc.tg_supervisor = running
pidof tg_supervisor            = 280
pidof com.alibaba.ailabs.genie.smartapp:core = 1159
```

`/data/local/tmp/t6/supervisor.log` 新增（boot 时间 16:48，日志前 249 行是 T6-02 手动运行时留下的）：

```
2026-11-21 16:48:32.431 sup: start pid=280 target=com.alibaba.ailabs.genie.smartapp:core injector=/data/local/tmp/t6/tg_injector agent=/data/local/tmp/t6/libtg_hook.so interval=500ms retry=2000ms max=60000ms
2026-11-21 16:48:32.445 sup: pidfile=/data/local/tmp/t6/tg_supervisor.pid acquired (single instance)
2026-11-21 16:48:43.834 sup: target found: pid=1159 starttime=1555 argv_extra=1 cmdline=com.alibaba.ailabs.genie.smartapp:core
2026-11-21 16:48:43.867 sup: waiting: pid=1159 has not loaded libsmartbox.so yet
2026-11-21 16:48:44.419 sup: target ready: pid=1159 libsmartbox.so is mapped
2026-11-21 16:48:44.651 sup: check done: pid=1159 exit=0 hooked=-1 state=unknown
2026-11-21 16:48:44.651 sup: inject begin: pid=1159 attempt=1 injector=/data/local/tmp/t6/tg_injector
2026-11-21 16:48:44.973 sup: inject end: pid=1159 exit=0 hooked=1 elapsed=321ms ok
```

独立复核（直接跑 T6-01 Injector 的 `--check`）：

```
[inject] already_mapped=1 (/data/local/tmp/t6/libtg_hook.so)
[inject] hook_status=0 hooked=1
[inject] stats=state=0 hooked=1 sender=1 spawns=1 seen=0 final=0 queued=0 sent=0 acked=0 ...
[inject] RESULT check pid=1159 hooked=1
EXIT=0
```

## 4. ASR 文本进入 AI Bridge（16:50 左右）

桥接端启动后，播放 `s01` 刺激，`events.jsonl` 增加一条：

```
new events:
{"version":1,"event_id":"t6-…","event_type":"asr_final","pid":1159,…,"is_final":true,…}
```

## 5. 重启原厂核心进程（16:53）：新 PID 自动重新注入

```
core pid 1159 -> 5247
inj| [inject] RESULT ok pid=5247 already_mapped=0 check_only=0
2026-11-21 16:53:18.171 sup: inject end: pid=5247 exit=0 hooked=1 elapsed=672ms ok
```

同一 Supervisor 进程（pid 280）继续工作，旧 PID 被 `target gone` / `target changed` 记录。

## 6. 第二次重启（16:53:30）后仍然自动启动

`inject end: pid=<new> exit=0 hooked=1` 出现在重启之后的新日志段里，
并且独立 `--check` 在重启后的核心进程上返回 `hooked=1`。
（这一次 `getprop init.svc.tg_supervisor` 的读取正好撞上 adbd 抖动，读数丢失，
所以"init.svc=running"这一条只在 16:48 那次有完整记录。）

## 7. 停用（16:54:53）

```
disable:
disabled: /system/etc/init/tg_supervisor.rc -> /system/etc/init/tg_supervisor.rc.disabled
supervisor running: no
EXIT=0
```

停用脚本本身把服务停了、进程也没了；"重启后不再自动启动"那一步的读数因为下面的 adbd 故障没有拿到。

## 8. 之后 adbd 进入故障（17:02 起）

```
shell: error: closed
adb.exe : file_sync_client.cpp:477 protocol fault: failed to read stat response: No error
get-state: device          # 传输层还连着，但 shell / sync 服务全部失败
```

`adb reboot`、`adb kill-server/start-server`、`adb reconnect`、`adb tcpip 5555` 都无法恢复；
本机 2026-11-21 12:38–13:53 也发生过同样现象（约 75 分钟后自行恢复）。

设备因此停在一个中间状态：`/system/etc/init/tg_supervisor.rc` 已启用，
而 `/data/local/tmp/t6/tg_supervisor` 在故障演练里被改名成 `tg_supervisor.off`。
shell 一恢复就立刻执行的恢复动作见 `_analysis/t6/recover_t6_03.ps1`：

```
mv /data/local/tmp/t6/tg_supervisor.off /data/local/tmp/t6/tg_supervisor
su -c /data/local/tmp/t6/restore_rc.sh      # 删掉 rc，回到原厂启动行为
```
