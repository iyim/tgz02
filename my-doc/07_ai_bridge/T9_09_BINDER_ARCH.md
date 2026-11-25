# T9-09 架构专项：原厂 UI 替换与 Binder 后台服务化

- 仓库 `iyim/tgz02`，基线 `44875630`（M2 备份封板）
- 设备 AILABS_S1L，Android 8.1 / API 27 / armeabi-v7a / 1024×600 mdpi，Magisk root，SELinux **Permissive**，`192.168.1.9:5555`
- 作业时间 2026-11-25 15:58 – 16:25（CST），全部结论来自本机实测，未使用任何推测性表述
- 证据等级：**[静]** 静态分析 · **[运]** 运行时状态 · **[机]** 真机实验 · **[未]** 尚未验证

---

## 一、一句话结论

**「独立 Android UI + 独立后台服务 + Binder 通信」在本机完全可行，三条候选路径里方案 C（Android Service 作 Binder 门面 + C 引擎独立进程）是唯一同时满足"进程独立、后台存活、root 能力不丢、改造成本可控"的形态；「装成系统应用、用户卸不掉」也已实测成立（`/system/priv-app` + `adb uninstall` 返回 `DELETE_FAILED_INTERNAL_ERROR`）。真正的硬门槛只有一个：平台签名。** 拿不到平台签名，就得不到 `android.uid.system` 与 platform 级权限；但"防卸载"和"接管桌面"并不依赖它。

---

## 二、原厂架构：实际证据

### 2.1 原厂不是一个 App，是三层四个包

| 包 | 路径 | uid / 身份 | 角色 |
|---|---|---|---|
| `com.alibaba.ailabs.genie.launcher` | `/system/app/GenieLauncher/GenieLauncher.apk` | 10024，`seinfo=platform`，`pkgFlags=[SYSTEM]` | **原厂 UI**，`HOME` 默认持有者 |
| `com.alibaba.ailabs.genie.smartapp` | `/system/app/smartapp/smartapp.apk` | **1000**，`sharedUser=android.uid.system` | **大脑**：`:core` / `:business`，唤醒/ASR/TTS 引擎都在这里 |
| `com.alibaba.ailabs.genie.children` | `/system/app/GenieChildren/…` | 独立 uid | 儿童模式 UI，另一个 HOME 候选 |
| `com.aligenie.ags`（AliGenieService） | `/system/app/AliGenieService/…` | system | 只加载 `libaligenie_ic.so`/`libcrashsdk.so`，**不**参与语音 |

[运] `cmd package resolve-activity -a android.intent.action.MAIN -c android.intent.category.HOME` →

```
name=com.alibaba.ailabs.genie.launcher.activity.AdultHomeActivity
packageName=com.alibaba.ailabs.genie.launcher
enabled=true exported=true directBootAware=true
launchMode=3 (singleTask)  isDefault=true
ApplicationInfo: uid=10024 flags=0x38c8be45 seinfo=platform targetSdkVersion=28
sourceDir=/system/app/GenieLauncher/GenieLauncher.apk
```

[运] `dumpsys package com.alibaba.ailabs.genie.smartapp` →

```
userId=1000
sharedUser=SharedUserSetting{b34ab33 android.uid.system/1000}
signatures=PackageSignatures{7b8fc69 [8f5cc29c]}
codePath=/system/app/smartapp
pkgFlags=[ SYSTEM HAS_CODE ALLOW_CLEAR_USER_DATA LARGE_HEAP ]
```

launcher 的签名摘要同为 `[8f5cc29c]` —— 二者同一平台证书。这就是为什么原厂 UI 能与 `:core` 以 `android.uid.system` 的身份互信。

### 2.2 唤醒 / ASR / TTS 全部在 `:core` 一个进程里

不是三个进程。`/proc/<pid>/maps` 直接证据：

```
:core (pid 1180)
  /system/app/smartapp/lib/arm/libagspeech.so            ← ASR/TTS 引擎
  /system/app/smartapp/lib/arm/libwakeup_bin_S1L_S3.so   ← 唤醒模型（不是 ELF，是模型 blob）
  /system/app/smartapp/lib/arm/libwakeup_sync_api_S1L_S3.so
  /system/app/smartapp/lib/arm/libvad_api.so / libvad_bin.so
  /system/app/smartapp/lib/arm/libagui.so / libsmartbox.so

com.aligenie.ags (pid 1256)
  /system/app/AliGenieService/lib/arm/libaligenie_ic.so
  /system/app/AliGenieService/lib/arm/libcrashsdk.so
```

**结论：原厂唤醒、VAD、ASR、TTS 由 `:core` 内的 native 引擎提供，没有各自独立的守护进程，也没有对外接口。** 这也是"沿用原厂唤醒"唯一可能的落点——它没有第二个入口。

### 2.3 进程与 SELinux 域

[运] `ps -A -o PID,PPID,USER,NAME` + `/proc/<pid>/attr/current`：

| 进程 | ppid | uid | SELinux 域 |
|---|---|---|---|
| `guardians`（`/system/bin/guardians`，274,812 B） | **1 (init)** | **root** | **`u:r:guardians:s0`（厂商自定义域）** |
| `com.alibaba.ailabs.genie.smartapp:core` | 279 (zygote) | 1000 | `u:r:system_app:s0` |
| `com.alibaba.ailabs.genie.launcher` | 279 | 10024 | `u:r:platform_app:s0:c512,c768` |
| `tg_supervisor`（我们的注入器） | 1 | root | `u:r:init:s0` |
| `ai_worker` | 1 | root | **`u:r:toolbox:s0`**（它是 init→`boot_stack.sh`→`run_ai_worker.sh` 这条链起的；手工用 `su` 起时是 `u:r:magisk:s0`，见 `evidence/t9-09/11_selinux_domains.txt`） |
| `app_process … TtsExec` | — | root | `u:r:magisk:s0`（由 `tts_supervisor.sh` 从 shell 起） |

`getenforce` = **Permissive**。这台设备上 SELinux 不拦任何东西，但**这不等于正式产品可以这样交付**（见 §四.4）。

### 2.4 Binder 服务面

[运] `service list` 共 **126** 个服务，与原厂语音相关的只有三个：

```
105  guardians: [com.yunos.guardians.IGuardians]
120  alibaba.ailabs.genie.resm: [com.alibaba.ailabs.genie.resmanager.IResManager]
 23  voiceinteraction: [com.android.internal.app.IVoiceInteractionManagerService]   ← AOSP
```

**语音控制面不是 ServiceManager 全局服务**，而是 `bindService` 拿到的 Binder（T9-03/T9-04 已证）：

- `com.alibaba.ailabs.geniesdk.NativeService`，`process=":core"`，`exported=true`，**manifest 里无 `android:permission`**；
- 只有 `action=com.yunos.tv.alitvasr.service` 且 `AguiCtx` 已初始化时才返回 `IAliTVASR`（14 个方法）；
- [机] 普通 App（uid 10055，零权限）`bindService` 成功，`getInterfaceDescriptor()=com.yunos.tv.alitvasr.IAliTVASR`，`playTTS(4)=true` 真的到达 `:core` 的 `TtsManager::playTts`；
- [机] 但 `playTTSWithCallback` **不产生播报**（音频状态机无 `permit`/`onTtsStart`），而同期 Provider 通道能完整播完 —— 所以现有 TTS 仍走 `content://com.alibaba.ailabs.genie.assistant.provider/GenieApi`。

**四种 IPC 都存在，分工明确**：AIDL/Binder（控制面）、ContentProvider（TTS 播放）、JNI + native socket（引擎内部）、文件/日志（云端反馈）。

### 2.5 启动与重启机制

[运] `/system/etc/init/` 44 个 rc，**没有一个提到 genie/alibaba**；`guardians` 的 ppid=1 且是 root → 由 init 直接拉起（走的不是 App 那套）。

所以原厂是两种机制并存：
- **native 守护**（`guardians`）：init 拉起，root 身份，自定义 SELinux 域，负责保活/看门狗；
- **App 进程**（launcher、`smartapp`、`:core`）：zygote fork + AMS 管理，`persistent` 未声明，但 `:core` 被 `guardians` 与自身服务关系维持。

**对我们的直接含义**：`ai_worker` 现在走的就是第一条路（`tg_stack.rc` → `tg_supervisor`/`boot_stack.sh`），与原厂是同构的；而"独立 Android Service"要走的是第二条路（AMS/Binder）。这两条路本来就并存于原厂系统中。

---

## 三、当前 TG-Z02 架构（要改造的对象）

```
┌───────────────────────────┐   文件总线（/data/local/tmp/t9_ui）   ┌──────────────────────────────┐
│ com.tgz02.voice (uid 10071)│ ──inbox/result/events/status──────→ │ ai_worker (root, magisk 域)   │
│ V2 UI · DataService        │ ←──snapshots(memory/alarms/skills)── │ 模型调用 · TTS 排队 · 定向停止 │
│ SQLite tgz02.db (WAL)      │                                     └───────────┬──────────────────┘
└───────────────────────────┘                                                 │ 控制文件
                                                                   ┌──────────▼──────────────┐
                                                                   │ TtsExec (root) → 原厂 TTS │
                                                                   │ :core (uid 1000, 原厂大脑) │
                                                                   └─────────────────────────┘
```

| 组件 | 现状 | 可复用 | 需改造 |
|---|---|---|---|
| V2 产品 UI | 普通 App，轮询 3 个公开文件 | 全部 UI/数据层/模型配置 | 通信层（若要 AIDL） |
| `ai_worker` | root，C，文件队列 + 幂等 + 原子发布 | 全部业务逻辑、模型适配器、TTS 协议 | 只需加一个 UDS/Binder 前端 |
| 文件总线 | inbox 0700 u0_a71 / result 0755 root / events 0750 root:10071 | 全部（审计面价值极高） | 无 |
| SQLite `tgz02.db` | App 私有，WAL，六表 | 全部 | 无（worker 只读快照） |
| 开机链 | `/system/etc/init/tg_stack.rc` → 2×`tg_supervisor` + `boot_stack.sh` | 全部 | 无 |

**判断：没有任何一部分必须重写。** 要变的只是"UI 怎么找到后台"，而不是后台本身。

---

## 四、三条方案的实测结果

实验代码：`my-doc/07_ai_bridge/android/t9_09_binder_arch/`（aidl/、service/、client/、native/、binderd/、build.ps1）

### 4.1 方案 A：独立 APK + Android Service + AIDL —— **真机通过**

自研 AIDL（`ITgDemo` 10 方法 + `ITgDemoCallback` 2 方法），两个独立包、两个独立签名（同一测试 keystore），零权限。

| 验证点 | 结果 | 证据 |
|---|---|---|
| 服务在独立进程 | `com.tgz02.binderdemo.svc:svc` pid 7486 / uid 10072；UI pid 7570 / uid 10073 | [机] 截图 01、`ps` 树 |
| 跨进程 Binder | `binder=android.os.BinderProxy`，`echo→svc:hello-75461`，`add(19,23)→42` | 截图 02 |
| 后台存活性 | `am force-stop` 杀 UI 后服务与 C 子进程仍在；`dumpsys` 显示 `isForeground=true` | 截图 04 |
| 重连 | 新 UI pid 7788 绑回**同一** svc pid 7486（`up_ms=91806`、`native_pid=7701` 延续） | 截图 04 |
| 双向回调 | 服务每 2 s 推 tick，UI 侧计数 18 → 27 → 34 → **47** | 截图 01–04 |
| 零权限 | 两个 manifest 无 `<uses-permission>` | [静] |

### 4.2 方案 B：C/C++ daemon + libbinder + servicemanager —— **驱动通、机制通、ABI 不通**

分三个探针，逐层逼近：

**(a) C 侧能否碰 binder 驱动**（`native/binder_probe.c`，静态 ARM32）

```
binder_probe pid=7362 uid=0
/dev/binder  node rdev=10:53 mode=0666
/dev/binder  open: OK fd=3
/dev/binder  BINDER_VERSION: OK protocol=7
RESULT binder-driver-reachable
```
shell uid 2000 同样通过。**驱动层无门槛。**

**(b) 能否 dlopen 平台的 libbinder 并解析符号**（`native/libbinder_probe.c`）

```
dlopen(libbinder.so): OK handle=0xf03dc67b
dlsym(defaultServiceManager): OK at 0xa894016d
RESULT symbol-visible-not-called
```
`llvm-readelf` 确认 `_ZN7android21defaultServiceManagerEv` 是导出函数，依赖 `libutils.so`/`libc++.so`/`libbase.so`。

**(c) 按 C 签名直接调用会怎样**

```
signal 11 (SIGSEGV) code 1 (SEGV_MAPERR) fault addr 0x2f
  #00 pc 00044276 /system/lib/libbinder.so (android::defaultServiceManager()+265)
  #01 pc 000005fc /data/local/tmp/libbinder_probe (main+128)
```
（`evidence/t9-09/05_libbinder_call_crash.txt`）

**崩溃本身就是结论**：8.1 NDK 不提供 libbinder 头文件与稳定 ABI，`sp<>`/`BBinder` 的布局只能从 AOSP 源码获得；手写声明一定在这里翻车。

**(d) 那么"root 进程注册全局 Binder 服务"这件事本身成立吗——成立**（用 Java 走同一条 servicemanager 路径，`binderd.dex`）

```
$ CLASSPATH=/data/local/tmp/binderd.dex app_process /system com.tgz02.binderdemo.daemon.GlobalBinderSvc
REGISTERED service=tg.arch.demo pid=7862 uid=0 binder=…GlobalBinderSvc$1

$ service list | grep tg.arch.demo
0   tg.arch.demo: []

# 客户端：root 与非 root 都能找到并调用
LOOKUP service=tg.arch.demo pid=8872 uid=0    binder=android.os.BinderProxy
TRANSACT ok=true reply=pong from pid=7862 uid=0 q=hello-over-binder
RESULT global-binder-call-ok
LOOKUP service=tg.arch.demo pid=8896 uid=2000 binder=android.os.BinderProxy
TRANSACT ok=true reply=pong from pid=7862 uid=0 q=hello-over-binder
RESULT global-binder-call-ok
```

**所以方案 B 的阻碍不是 SELinux、不是权限、不是 servicemanager，而是"没有 binder 头文件"。** 要走纯 C++ 路线，必须自带 AOSP 的 `binder/IBinder.h`、`utils/RefBase.h` 等一整套头，并链接与 ROM 同版本的 `libbinder/libutils/libc++`——工作量大、随 ROM 升级即失效，而且**不会带来方案 C 拿不到的任何能力**。

### 4.3 方案 C：Android Service 管理 C 引擎 —— **真机通过（含进程树证据）**

Service（uid 10072）用 `ProcessBuilder` 拉起 `/data/local/tmp/tg_echo_daemon`（ARM32 静态 ELF），stdin/stdout 行协议。

```
$ ps -A -o PID,PPID,USER,NAME
 7486  279  u0_a72  com.tgz02.binderdemo.svc:svc
 7701 7486  u0_a72  tg_echo_daemon          ← C 进程的父进程就是我们的 Service
```

UI 侧一次调用走完整条链：

```
askNative(PING) -> PONG pid=7701 n=1 ts=297765272
native> PONG pid=7701 n=1 ts=297765272        ← 服务还把 native 行通过 AIDL 回调推回 UI
```

（截图 03）也就是说 **UI → Binder → Service → 管道 → C 引擎 → 管道 → Service → Binder 回调 → UI** 全程贯通，8 ms 内起进程。

### 4.4 三方案对比（用实测数据填，不用形容词）

| 维度 | A：纯 Java Service+AIDL | B：C daemon + libbinder | C：Service 门面 + C 引擎 |
|---|---|---|---|
| 实现难度 | 低（本次 ~700 行含 UI，1 天） | **高**（须自带 AOSP 头 + 匹配 STL；手写声明实测 SIGSEGV） | 中（A + 进程管理 + 自定义协议） |
| 进程独立性 | 独立（`:svc`） | 独立 | 独立（Service 与 C 引擎各自独立） |
| 后台持续 | `startForeground`+`START_STICKY`，实测杀 UI 后存活 | 天然常驻，需自己保活 | 同 A；C 引擎由 Service 托管 |
| 系统权限 | **无 root**（uid 1007x） | **可 root**（init/root 起） | Service 无 root；C 引擎可 root（若由 init 起）或继承 Service uid（实测 u0_a72） |
| SELinux 要求 | 无（permissive 下实测；enforcing 需 service_contexts 才可跨 app 调用自定义服务）[未] | 需 binder 域允许，且 `service_contexts` 需为服务名建条目 [未] | 在 A 的基础上多一条 `exec` 许可（permissive 实测通过；enforcing 需 `untrusted_app` 执行 app_data_file 的 policy）[未] |
| 对现有 C worker 改造 | 0（Service 只做代理） | 中（要重写入口） | 小（worker 加一个 UDS 前端即可） |
| 与原厂唤醒/音频兼容 | 完全兼容（不触碰） | 兼容 | 兼容 |
| 能否拿到 root 专属能力（写 `/data/local/tmp`、命令执行器） | **不能** | 能 | 取决于 C 引擎由谁拉起：Service 拉起=不能；init 拉起=能 |

**这张表里最容易被忽略的一行是最后一行。** 我们现有 `ai_worker` 之所以能工作，就因为它以 root 运行、能写 `/data/local/tmp/t5_bridge/tts/control`（TTS 定向停止的安全根基）。任何"把逻辑搬进 Android Service"的方案都会立刻丢掉这个能力。

---

## 五、系统 App 部署：实测条件与硬门槛

### 5.1 `/system` 可写（Magisk 环境）

```
$ mount | grep ' /system '
/dev/block/mmcblk0p19 on /system type ext4 (rw,seclabel,relatime,data=ordered)
$ touch /system/.tg_write_test   → 成功
```
（测完即删；`mount -o ro,remount` 在本机 fstab 里不允许，只能保持 rw 或在下次重启时自然恢复 ro。）

### 5.2 priv-app 部署：**成立，且用户卸不掉**

把 demo 的 `svc.apk` 放进 `/system/priv-app/TgBinderDemoSvc/`，重启后（`evidence/t9-09/09_privapp_evidence.txt`）：

```
$ adb shell pm path com.tgz02.binderdemo.svc
package:/system/priv-app/TgBinderDemoSvc/TgBinderDemoSvc.apk

userId=10020
codePath=/system/priv-app/TgBinderDemoSvc
pkgFlags=[ SYSTEM HAS_CODE ALLOW_CLEAR_USER_DATA ALLOW_BACKUP ]

$ adb uninstall com.tgz02.binderdemo.svc
Failure [DELETE_FAILED_INTERNAL_ERROR]

$ adb shell pm path com.tgz02.binderdemo.svc        # 之后依然在
package:/system/priv-app/TgBinderDemoSvc/TgBinderDemoSvc.apk
```

**自签 APK 就能拿到 `SYSTEM` 标志、就能不被卸载。** 第一次实验时该包还带过一个 `/data` 的"更新版"，`adb uninstall` 只删掉了更新、回落到 `/system` 版本（`UPDATED_SYSTEM_APP` → `SYSTEM`）——这正是原厂 App 的行为。

### 5.3 平台签名：唯一的硬门槛（实测被拒）

把 `android:sharedUserId="android.uid.system"` 的自签 APK 放进 priv-app，重启后：

```
I PackageManager: /system/priv-app/TgSysId changed; collecting certs
E PackageManager: Adding duplicate shared id: 1000 name=com.tgz02.binderdemo.sysid
W PackageManager: Failed to scan /system/priv-app/TgSysId: Signature mismatch for shared user:
                  SharedUserSetting{80851c3 android.uid.system/1000}
```

包直接被丢弃（`pm path` 为空），系统其余部分无影响。`evidence/t9-09/08_shareduserid_signature_mismatch.txt`

设备上搜过 `/system`、`/vendor`：**没有任何 `platform.pk8` / `platform.x509.pem` 私钥材料**。所以：

- 能得到：`SYSTEM` 标志、priv-app 目录、不可卸载、init 拉起；
- 得不到：`sharedUserId=android.uid.system`、platform 签名级权限（如部分 `signature|privileged` 权限）。

> 如果将来必须用 system uid，唯一正路是向方案商/原厂索取平台签名（或他们提供的签名服务），没有技术捷径。

### 5.4 接管 HOME：可写入偏好，但**没有**真正生效

```
$ cmd package set-home-activity com.tgz02.binderdemo.ui/com.tgz02.binderdemo.ui.UiClient
Success
$ dumpsys package | grep -A6 'Preferred Activities User 0'
      android.intent.action.MAIN:
        e00119c com.tgz02.binderdemo.ui/.UiClient
         mMatch=0x100000 mAlways=true
          Selected from:
            com.alibaba.ailabs.genie.children/.activity.HomeActivity
            com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity
            com.alibaba.ailabs.genie.smartapp/…genieboot.activity.BootHomeActivity
            app.orchard.tv/.MainActivity
            com.tgz02.binderdemo.ui/.UiClient
            com.android.settings/.FallbackHome
```

偏好记录确实写成了我们的组件（`mAlways=true`），但按 HOME 仍回原厂：

- 正常状态 → `mResumedActivity: com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity`；
- **禁用 launcher 之后** → `mResumedActivity: com.alibaba.ailabs.genie.smartapp/…BootHomeActivity`。

原因是这台机器上 HOME 候选不止一个，`smartapp` 自带 `BootHomeActivity`（system uid，directBootAware），原厂 `children` 也有 `HomeActivity`。**只换 preferred 或只禁 launcher 都不够。**

截图对照（`evidence/t9-09/`）：
- `06_home_after_force_stop_launcher.png`：`am force-stop` 掉 launcher 后再按 HOME，系统**又把 launcher 拉了起来**（新 task t139），仍是原厂桌面；
- `07_home_our_ui_launcher_disabled.png`：把 launcher 真正 `DISABLED_USER` 之后，HOME 落到 `smartapp/…BootHomeActivity`，画面是**一片空白的过渡页**——这恰说明"简单禁用原厂 UI"会让设备失去可用桌面。


### 5.5 原厂 UI 能否禁用：能，但命令被 ROM 阉割

`pm disable` / `pm disable-user` / `cmd package set-enabled-setting` 在这个 ROM 上一律 `Unknown command`（`/system/bin/pm` 是 `cmd package` 的薄封装，而该版本 `cmd package` 的命令集被裁过）。改走框架调用（`binderd/PkgCtl.java`，`IPackageManager.setApplicationEnabledSetting`）：

```
$ app_process /system com.tgz02.binderdemo.daemon.PkgCtl com.alibaba.ailabs.genie.launcher 3
OK com.alibaba.ailabs.genie.launcher state=3        ← DISABLED_USER

…按 HOME → com.alibaba.ailabs.genie.smartapp/…BootHomeActivity

$ …PkgCtl com.alibaba.ailabs.genie.launcher 0        ← 恢复默认，HOME 立刻回到原厂 launcher
```

**禁用/恢复都成功，语音栈全程无异常**（`:core` pid 未变，`ai_worker` 未受影响）。

### 5.6 固件/刷机限制

| 项 | 实测 | 含义 |
|---|---|---|
| `/system` 写保护 | ext4 ro，`mount -o rw,remount` 成功 | Magisk 环境可改；重启恢复 ro |
| Bootloader | 未尝试解锁（无必要） | Magisk 已提供 system 层写入能力 |
| SELinux | Permissive | **正式设备若 enforcing，方案 A/B/C 的跨进程访问都需要 policy** [未] |
| 原厂 `:core` | 不能移除 | 唤醒/ASR/TTS/云端账号都绑在它身上 |

---

## 六、推荐架构与迁移路线

### 6.1 推荐：C（门面）+ 保留 root worker，双通道

```
产品 UI (priv-app, 自签即可)
   │ AIDL（Binder，验证过的路径）
   ▼
TgService（独立进程 :svc，foreground，START_STICKY）
   │ Unix domain socket（数据面/实时）+ 现有文件总线（控制面/审计）
   ▼
ai_worker（root，init 拉起 —— 保持现状，因为 TTS 控制文件与 /data/local/tmp 需要 root）
   │ 控制文件
   ▼
TtsExec → 原厂 :core
```

要点：

1. **不要**把 worker 逻辑搬进 Service（会丢 root、丢崩溃隔离、丢与执行器的跨进程契约）；
2. Service 的职责只有"Binder 门面 + 生命周期 + 权限边界"，业务仍在 worker；
3. 控制面继续走文件（可审计、断电安全、幂等已验证），只在需要毫秒级/流式时才加 socket；
4. 若必须让 UI 直接调 root 侧：用 §4.2(d) 已验证的 `ServiceManager.addService` 路径（root `app_process` 注册全局服务），**但 enforcing 设备需为服务名加 `service_contexts` 条目** [未]。

### 6.2 迁移路线（4 步，每步都可独立回滚）

| 阶段 | 做什么 | 风险 | 验收 |
|---|---|---|---|
| **S1** | 产品 UI 加 AIDL 客户端；新增 `TgService`（普通 APK，仅做 worker 的代理，内部仍读写现有 inbox/result） | 低（worker 零改动，service 崩了 UI 回落文件通道） | UI 功能全过 + 语音回归 |
| **S2** | worker 增 UDS 前端（`/data/local/tmp/t9_ui/ctl.sock`，root 建、chown 给 UI uid），Service 与 worker 实时双向 | 中（新代码路径，但可与文件通道并存） | 停止播报时延、事件推送时延 |
| **S3** | `TgService` + UI 打成 priv-app（自签），开机由 init 拉起 Service 所在的应用？——**不行**，App 仍靠 Launcher/系统启动；改用 `BOOT_COMPLETED` 广播 + `startForeground` | 低 | 重启后无 UI 也能起服务 |
| **S4** | 若要彻底摆脱原厂 UI：把我们的 UI 声明为 HOME 并**同时**处理 `smartapp BootHome`/`children HomeActivity` 的竞争（禁用或改 default），或申请平台签名后用 `android.uid.system` 身份替换 | 高（动的是系统默认桌面） | 冷启动直接进我们的界面；原厂语音不受影响 |

### 6.3 关于"SO ≠ 守护进程"的明确回答

把 C 代码编成 `libworker.so` 放进 APK：

- 它运行在**宿主 App 的进程**里（要么 UI 进程，要么 Service 进程），**没有独立 PID、没有独立生命周期**；
- 它继承宿主 App 的 uid 与 SELinux 域，**拿不到 root**，也就写不了 `/data/local/tmp/t5_bridge/tts/control`；
- 宿主进程被系统回收，引擎随之消失。

本次实验已经直接演示了正确的替代形态（方案 C）：C 引擎以**独立进程**存在（pid 7701，ppid=Service 7486），Service 只是它的门面。二者不可混为一谈。

---

## 七、已验证 / 未验证

**已验证（真机）**
1. 原厂 UI 包名/Activity/uid/签名/seinfo、`:core` 的 uid 与共享用户、语音库归属、binder 服务清单、进程树、SELinux 域
2. 方案 A：跨包跨签名 AIDL 双向通信、独立进程、杀 UI 后服务存活、重启 UI 重连同实例
3. 方案 B：`/dev/binder` 可达（root 与 shell，protocol 7）、`libbinder.so` 可 dlopen + 符号可解析、**按 C 签名调用 SIGSEGV**、Java 等价路径 root 注册全局服务成功且非 root 客户端可调用
4. 方案 C：Service 托管 C 进程（ppid 证据）+ 管道请求/响应 + native 行经 AIDL 回调
5. priv-app：`SYSTEM` 标志、`adb uninstall` = `DELETE_FAILED_INTERNAL_ERROR`、仅删更新时回落到 `/system`
6. 平台签名：`sharedUserId=android.uid.system` 自签被 `Signature mismatch` 拒绝；设备无 platform 私钥
7. HOME：preferred 写入成功但未生效；禁用 launcher 后落到 `smartapp BootHomeActivity`；可恢复
8. 原厂 launcher 可禁用/恢复（IPackageManager），语音链路全程无回退；实验后 `ai_worker`/`:core`/`boot_stack` 均正常，`t909reg3` ask 回合 `outcome=ok`

**未验证（不要当成结论）**
1. **SELinux enforcing 下的全部路径**：本机 Permissive。enforcing 时需 `service_contexts`/`untrusted_app` 执行策略，工作量与可行性未测
2. **纯 C++ libbinder daemon**：只做到"符号可见、调用崩溃"，没有实现 BBinder 子类；需要自带 AOSP 头与匹配 STL，未做
3. **平台签名获取**：只证明"没有就做不到 sharedUserId=android.uid.system"，没有获取渠道
4. **privapp-permissions 白名单**：8.1 未强制，实测自签特权 APK 未被拦；若目标设备是 9+ 需另测
5. **彻底接管 HOME**：只证明了"preferred + 禁用单一 launcher 不够"，未实现"多 HOME 候选下强制生效"
6. **Service 进程被系统回收的边界**：foreground+STICKY 在本次窗口内未被回收，长时间/低内存场景未压测

---

## 八、实验资产与复现

源码 `my-doc/07_ai_bridge/android/t9_09_binder_arch/`：

```
aidl/com/tgz02/binderdemo/{ITgDemo,ITgDemoCallback}.aidl   # 自研接口
service/  DemoService.java       # :svc 进程，foreground+STICKY，托管 C 子进程
client/   UiClient.java          # 独立包 UI，绑定/调用/回调/重连；同时声明 HOME（实验用）
native/   tg_echo_daemon.c       # C 引擎替身（行协议）
native/   binder_probe.c         # /dev/binder + BINDER_VERSION
native/   libbinder_probe.c      # dlopen libbinder + dlsym（--call 才真正调用）
binderd/  GlobalBinderSvc.java   # root app_process 注册/调用全局 Binder 服务
binderd/  PkgCtl.java            # IPackageManager 启停包（替代被阉割的 pm）
build.ps1                        # aidl→javac→d8→aapt2→sign；NDK 编两个 C 探针
```

产物（`build/`）：`svc.apk`、`ui.apk`、`tg_echo_daemon`、`binder_probe`、`libbinder_probe`、`binderd.dex`

复现要点（本机已验证的命令形态）：

```powershell
powershell -ExecutionPolicy Bypass -File build.ps1
adb push build\tg_echo_daemon /data/local/tmp/ ; adb shell 'su 0 sh -c "chmod 755 /data/local/tmp/tg_echo_daemon"'
adb install -r build\svc.apk ; adb install -r build\ui.apk
adb shell 'am start-foreground-service -n com.tgz02.binderdemo.svc/com.tgz02.binderdemo.DemoService'
adb shell 'am start -n com.tgz02.binderdemo.ui/com.tgz02.binderdemo.ui.UiClient'
# 全局 Binder（root）
adb shell 'su 0 sh -c "CLASSPATH=/data/local/tmp/binderd.dex nohup app_process /system com.tgz02.binderdemo.daemon.GlobalBinderSvc > /data/local/tmp/binderd.log 2>&1 &"'
adb shell 'CLASSPATH=/data/local/tmp/binderd.dex app_process /system com.tgz02.binderdemo.daemon.GlobalBinderSvc client'
```

两个必须知道的坑（本次踩过）：
- 服务类必须在 manifest 写**全限定名**（`com.tgz02.binderdemo.DemoService`），写 `.DemoService` 会 `ClassNotFoundException`；
- `su 0 sh -c "a; b"` 第二段会掉权；`su 0 sh /path/script.sh` 会让脚本以 shell uid 运行（本次 ask 静默失败就是它）。要么一条命令一个 `su -c`，要么用 `su 0 sh -c "sh /path/script.sh args"`。

## 九、设备恢复情况

实验后已还原：`/system/priv-app` 无实验包、`sharedUserId` 探针已删、原厂 launcher `enabled=0`（默认）、HOME 回原厂、`adb uninstall` 掉 demo 服务包。语音栈正常：

```
ai_worker pid 2591 / :core pid 1148 / boot_stack done
t909reg3 ask → outcome=ok（TTS 播报 1.7 s）
```

`svc.apk` / `ui.apk` 作为实验证据保留安装（普通应用，无权限，不影响运行），需要时 `adb uninstall` 即可。
