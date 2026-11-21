# 候选操作卡（rev5.3）

**本轮只写卡，不执行任何命令。** 每张卡的“禁用命令”都指向**原子脚本模板**
（本固件 `pm disable-user` 已被裁剪，见 `../experiments/iot_disable_attempt.md`），
脚本必须先按 `../experiments/iot_disable_apply.sh` 的模式生成、校验备份、写入即重启。

通用前置（每张卡的第 9 项都要求重复一遍，不可跳过）：

1. `pm list packages -d` 必须为空；
2. 记录默认 HOME：`cmd package resolve-activity --brief -a android.intent.action.MAIN -c android.intent.category.HOME`；
3. 备份 `/data/system/users/0/package-restrictions.xml` → `/data/local/tmp/pr_orig_<pkg>.xml` 并记录 sha256；
4. `su -c id` 必须返回 `uid=0`；
5. 当贝桌面（`com.dangbei1.tvlauncher`）处于启用状态——它是备用桌面；
6. `netstat` 里 5555 在监听（无线 ADB 备用通道）。

六个保护 App（当贝桌面、MT 管理器、ES、权限狗、EasyTouch、Magisk）**不出现在任何卡片里**。

---

### 儿童模式（`com.alibaba.ailabs.genie.children`）

| 项 | 值 |
|---|---|
| 1 应用名称 | 儿童模式 |
| 2 包名 | `com.alibaba.ailabs.genie.children` |
| 3 APK 路径 | `/system/app/GenieChildren/GenieChildren.apk` |
| 4 版本 | 5.11.0.19（code 2101511019） |
| 5 当前启用状态 | DEFAULT（enabled=0），suspended=False |
| 6 组件 | 共 29 个；前 8：<br>`ChildModeSettingActivity`（activity，exported=no，actions=VIEW）<br>`AppSettingActivity`（activity，exported=no，actions=VIEW）<br>`ForbiddenTimeAddActivity`（activity，exported=no，actions=VIEW）<br>`EyeyieldSettingActivity`（activity，exported=no，actions=VIEW）<br>`AddTimeActivity`（activity，exported=no，actions=—）<br>`GenieTimePickerActivity`（activity，exported=no，actions=VIEW）<br>`WarningActivity`（activity，exported=no，actions=VIEW）<br>`PermissionActivity`（activity，exported=no，actions=—） |
| 7 依赖关系 | `ChildrenHomeActivity` ← `com.alibaba.ailabs.genie.guide`（component）<br>`ForbiddenTimeAddActivity` ← `com.alibaba.ailabs.genie.smartapp`（component）<br>`ChildrenHomeActivity` ← `com.alibaba.ailabs.genie.smartapp`（component）<br>`HomeActivity` ← `com.alibaba.ailabs.genie.smartapp`（component）<br>`ChildModeSettingActivity` ← `com.alibaba.ailabs.genie.smartapp`（component）<br>`AppSettingActivity` ← `com.alibaba.ailabs.genie.smartapp`（component）<br>`GenieTimePickerActivity` ← `com.alibaba.ailabs.genie.smartapp`（component）<br>`ForbiddenTimeAddActivity` ← `com.android.settings`（component）<br>`DataCenterReceiver` ← `com.android.settings`（component）<br>`GenieTimePickerActivity` ← `com.android.settings`（component）<br>`HomeActivity` ← `com.android.settings`（component）<br>`EyeyieldSettingActivity` ← `com.android.settings`（component）<br>`ChildModeSettingActivity` ← `com.android.settings`（component）<br>`ChildrenHomeActivity` ← `com.android.systemui`（component）<br>`HomeActivity` ← `com.android.systemui`（component）<br>`ChildInfoInputActivity` ← `com.android.systemui`（component） |
| 8 可能影响的功能 | 儿童模式界面/禁播时段/应用管控全部失效；smartapp 的 16 处儿童技能引用会报错 |
| 9 禁用前检查 | ① `pm list packages -d` 为空 ② 记录默认 HOME ③ 备份 `package-restrictions.xml` 并记 sha256 ④ `su -c id` = root ⑤ 当贝桌面处于启用 ⑥ 无线 5555 在监听 |
| 10 禁用命令 | 本固件 `pm disable-user` 被裁剪，须用原子脚本（写 XML + 立即重启）：<br>`adb shell su -c 'sh /data/local/tmp/<pkg>_disable_apply.sh'`<br>脚本模板见 `../experiments/iot_disable_apply.sh` |
| 11 恢复命令 | `adb shell su -c 'sh /data/local/tmp/<pkg>_disable_revert.sh'`<br>或 `adb shell su -c 'pm enable com.alibaba.ailabs.genie.children'`（`enable` 子命令存在，未实测） |
| 12 重启后检查 | `dumpsys package com.alibaba.ailabs.genie.children | grep -E 'enabled=|suspended='`、`ps -A | grep children`、`logcat -b crash -d`、`pm list packages -d` |
| 13 桌面异常恢复 | `am start -n com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity` → 不行则 `cmd package set-home-activity --user 0 com.dangbei1.tvlauncher/com.dangbei.launcher.ui.main.MainActivity` |
| 14 失败判据 | ① 重启后 system_server 未起（`adb devices` 无设备） ② 连续崩溃日志指向本包 ③ 桌面/语音回归失败且 15 分钟内无法恢复 |
| 15 是否允许进入下一阶段 | **有条件允许：需先完成“放弃儿童模式”确认，并单独授权** |

风险等级：中高；回滚难度：高：与 smartapp 强耦合，需回归语音。

### 相册（`com.alibaba.ailabs.genie.albums`）

| 项 | 值 |
|---|---|
| 1 应用名称 | 相册 |
| 2 包名 | `com.alibaba.ailabs.genie.albums` |
| 3 APK 路径 | `/system/app/GenieAlbums/GenieAlbums.apk` |
| 4 版本 | 1.4.14（code 2100104014） |
| 5 当前启用状态 | DEFAULT（enabled=0），suspended=False |
| 6 组件 | 共 7 个；前 8：<br>`MainActivity`（activity，exported=no，actions=MAIN, VIEW）<br>`ImageBrowseActivity`（activity，exported=no，actions=—）<br>`BannerAnimationActivity`（activity，exported=no，actions=—）<br>`CmdDispatchService`（service，exported=no，actions=VIEW, VIEW）<br>`AnalyticsService`（service，exported=no，actions=—）<br>`AlbumContentProvider`（provider，exported=yes，actions=—）<br>`ProcessLifecycleOwnerInitializer`（provider，exported=no，actions=—） |
| 7 依赖关系 | `albumprovider` ← `com.alibaba.ailabs.genie.screensaver`（authority） |
| 8 可能影响的功能 | 相册浏览、屏保取图、语音“看照片”失效 |
| 9 禁用前检查 | ① `pm list packages -d` 为空 ② 记录默认 HOME ③ 备份 `package-restrictions.xml` 并记 sha256 ④ `su -c id` = root ⑤ 当贝桌面处于启用 ⑥ 无线 5555 在监听 |
| 10 禁用命令 | 本固件 `pm disable-user` 被裁剪，须用原子脚本（写 XML + 立即重启）：<br>`adb shell su -c 'sh /data/local/tmp/<pkg>_disable_apply.sh'`<br>脚本模板见 `../experiments/iot_disable_apply.sh` |
| 11 恢复命令 | `adb shell su -c 'sh /data/local/tmp/<pkg>_disable_revert.sh'`<br>或 `adb shell su -c 'pm enable com.alibaba.ailabs.genie.albums'`（`enable` 子命令存在，未实测） |
| 12 重启后检查 | `dumpsys package com.alibaba.ailabs.genie.albums | grep -E 'enabled=|suspended='`、`ps -A | grep albums`、`logcat -b crash -d`、`pm list packages -d` |
| 13 桌面异常恢复 | `am start -n com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity` → 不行则 `cmd package set-home-activity --user 0 com.dangbei1.tvlauncher/com.dangbei.launcher.ui.main.MainActivity` |
| 14 失败判据 | ① 重启后 system_server 未起（`adb devices` 无设备） ② 连续崩溃日志指向本包 ③ 桌面/语音回归失败且 15 分钟内无法恢复 |
| 15 是否允许进入下一阶段 | **有条件允许：需先确认屏保取图可放弃** |

风险等级：中；回滚难度：中：screensaver 引用其组件。

### AOSP 用户词典 Provider（`com.android.providers.userdictionary`）

| 项 | 值 |
|---|---|
| 1 应用名称 | AOSP 用户词典 Provider |
| 2 包名 | `com.android.providers.userdictionary` |
| 3 APK 路径 | `/system/app/UserDictionaryProvider/UserDictionaryProvider.apk` |
| 4 版本 | 8.1.0（code 27） |
| 5 当前启用状态 | DEFAULT（enabled=0），suspended=False |
| 6 组件 | 共 1 个；前 8：<br>`UserDictionaryProvider`（provider，exported=yes，actions=—） |
| 7 依赖关系 | 无 app 级入向引用（不等于无依赖） |
| 8 可能影响的功能 | 输入法用户词库不可用（本机无输入法场景，影响极低） |
| 9 禁用前检查 | ① `pm list packages -d` 为空 ② 记录默认 HOME ③ 备份 `package-restrictions.xml` 并记 sha256 ④ `su -c id` = root ⑤ 当贝桌面处于启用 ⑥ 无线 5555 在监听 |
| 10 禁用命令 | 本固件 `pm disable-user` 被裁剪，须用原子脚本（写 XML + 立即重启）：<br>`adb shell su -c 'sh /data/local/tmp/<pkg>_disable_apply.sh'`<br>脚本模板见 `../experiments/iot_disable_apply.sh` |
| 11 恢复命令 | `adb shell su -c 'sh /data/local/tmp/<pkg>_disable_revert.sh'`<br>或 `adb shell su -c 'pm enable com.android.providers.userdictionary'`（`enable` 子命令存在，未实测） |
| 12 重启后检查 | `dumpsys package com.android.providers.userdictionary | grep -E 'enabled=|suspended='`、`ps -A | grep userdictionary`、`logcat -b crash -d`、`pm list packages -d` |
| 13 桌面异常恢复 | `am start -n com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity` → 不行则 `cmd package set-home-activity --user 0 com.dangbei1.tvlauncher/com.dangbei.launcher.ui.main.MainActivity` |
| 14 失败判据 | ① 重启后 system_server 未起（`adb devices` 无设备） ② 连续崩溃日志指向本包 ③ 桌面/语音回归失败且 15 分钟内无法恢复 |
| 15 是否允许进入下一阶段 | **允许（最低风险，但收益仅 0.04 MB）** |

风险等级：低；回滚难度：低。

### UUID 注册（`com.aliyun.uuid`）

| 项 | 值 |
|---|---|
| 1 应用名称 | UUID 注册 |
| 2 包名 | `com.aliyun.uuid` |
| 3 APK 路径 | `/system/app/UUID/UUID.apk` |
| 4 版本 | 3.3.2（code 2100300302） |
| 5 当前启用状态 | DEFAULT（enabled=0），suspended=False |
| 6 组件 | 共 3 个；前 8：<br>`UUIDActivity`（activity，exported=no，actions=MAIN）<br>`RegistUUIDService`（service，exported=no，actions=REGIST_UUID_SERVICE）<br>`RegistUUIDReceiver`（receiver，exported=no，actions=BOOT_COMPLETED, TEST_BOOT_COMPLETED） |
| 7 依赖关系 | 无 app 级入向引用（不等于无依赖） |
| 8 可能影响的功能 | UUID 注册/上报中断，可能影响云端账号绑定 |
| 9 禁用前检查 | ① `pm list packages -d` 为空 ② 记录默认 HOME ③ 备份 `package-restrictions.xml` 并记 sha256 ④ `su -c id` = root ⑤ 当贝桌面处于启用 ⑥ 无线 5555 在监听 |
| 10 禁用命令 | 本固件 `pm disable-user` 被裁剪，须用原子脚本（写 XML + 立即重启）：<br>`adb shell su -c 'sh /data/local/tmp/<pkg>_disable_apply.sh'`<br>脚本模板见 `../experiments/iot_disable_apply.sh` |
| 11 恢复命令 | `adb shell su -c 'sh /data/local/tmp/<pkg>_disable_revert.sh'`<br>或 `adb shell su -c 'pm enable com.aliyun.uuid'`（`enable` 子命令存在，未实测） |
| 12 重启后检查 | `dumpsys package com.aliyun.uuid | grep -E 'enabled=|suspended='`、`ps -A | grep uuid`、`logcat -b crash -d`、`pm list packages -d` |
| 13 桌面异常恢复 | `am start -n com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity` → 不行则 `cmd package set-home-activity --user 0 com.dangbei1.tvlauncher/com.dangbei.launcher.ui.main.MainActivity` |
| 14 失败判据 | ① 重启后 system_server 未起（`adb devices` 无设备） ② 连续崩溃日志指向本包 ③ 桌面/语音回归失败且 15 分钟内无法恢复 |
| 15 是否允许进入下一阶段 | **允许先做“禁用观察”，不建议删除** |

风险等级：中；回滚难度：中：BOOT_COMPLETED 接收器。

### raService（`com.alira.info`）

| 项 | 值 |
|---|---|
| 1 应用名称 | raService |
| 2 包名 | `com.alira.info` |
| 3 APK 路径 | `/system/app/raShow/raShow.apk` |
| 4 版本 | 1.10（code 10） |
| 5 当前启用状态 | DEFAULT（enabled=0），suspended=False |
| 6 组件 | 共 2 个；前 8：<br>`raService`（service，exported=no，actions=raService）<br>`DreamerReceiver`（receiver，exported=no，actions=dream） |
| 7 依赖关系 | 无 app 级入向引用（不等于无依赖） |
| 8 可能影响的功能 | raService 用途未确认 |
| 9 禁用前检查 | ① `pm list packages -d` 为空 ② 记录默认 HOME ③ 备份 `package-restrictions.xml` 并记 sha256 ④ `su -c id` = root ⑤ 当贝桌面处于启用 ⑥ 无线 5555 在监听 |
| 10 禁用命令 | 本固件 `pm disable-user` 被裁剪，须用原子脚本（写 XML + 立即重启）：<br>`adb shell su -c 'sh /data/local/tmp/<pkg>_disable_apply.sh'`<br>脚本模板见 `../experiments/iot_disable_apply.sh` |
| 11 恢复命令 | `adb shell su -c 'sh /data/local/tmp/<pkg>_disable_revert.sh'`<br>或 `adb shell su -c 'pm enable com.alira.info'`（`enable` 子命令存在，未实测） |
| 12 重启后检查 | `dumpsys package com.alira.info | grep -E 'enabled=|suspended='`、`ps -A | grep info`、`logcat -b crash -d`、`pm list packages -d` |
| 13 桌面异常恢复 | `am start -n com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity` → 不行则 `cmd package set-home-activity --user 0 com.dangbei1.tvlauncher/com.dangbei.launcher.ui.main.MainActivity` |
| 14 失败判据 | ① 重启后 system_server 未起（`adb devices` 无设备） ② 连续崩溃日志指向本包 ③ 桌面/语音回归失败且 15 分钟内无法恢复 |
| 15 是否允许进入下一阶段 | **允许先做“禁用观察”（用途未确认）** |

风险等级：低；回滚难度：低：0.79 MB，证据不足。

### SpKey（`com.alibaba.spkey`）

| 项 | 值 |
|---|---|
| 1 应用名称 | SpKey |
| 2 包名 | `com.alibaba.spkey` |
| 3 APK 路径 | `/system/app/AliSpKey/AliSpKey.apk` |
| 4 版本 | 1.0.01（code 2100100001） |
| 5 当前启用状态 | DEFAULT（enabled=0），suspended=False |
| 6 组件 | 共 2 个；前 8：<br>`MainActivity`（activity，exported=no，actions=MAIN）<br>`SpService`（service，exported=yes，actions=SpService） |
| 7 依赖关系 | 无 app 级入向引用（不等于无依赖） |
| 8 可能影响的功能 | SpKey 相关校验可能失败（用途未确认） |
| 9 禁用前检查 | ① `pm list packages -d` 为空 ② 记录默认 HOME ③ 备份 `package-restrictions.xml` 并记 sha256 ④ `su -c id` = root ⑤ 当贝桌面处于启用 ⑥ 无线 5555 在监听 |
| 10 禁用命令 | 本固件 `pm disable-user` 被裁剪，须用原子脚本（写 XML + 立即重启）：<br>`adb shell su -c 'sh /data/local/tmp/<pkg>_disable_apply.sh'`<br>脚本模板见 `../experiments/iot_disable_apply.sh` |
| 11 恢复命令 | `adb shell su -c 'sh /data/local/tmp/<pkg>_disable_revert.sh'`<br>或 `adb shell su -c 'pm enable com.alibaba.spkey'`（`enable` 子命令存在，未实测） |
| 12 重启后检查 | `dumpsys package com.alibaba.spkey | grep -E 'enabled=|suspended='`、`ps -A | grep spkey`、`logcat -b crash -d`、`pm list packages -d` |
| 13 桌面异常恢复 | `am start -n com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity` → 不行则 `cmd package set-home-activity --user 0 com.dangbei1.tvlauncher/com.dangbei.launcher.ui.main.MainActivity` |
| 14 失败判据 | ① 重启后 system_server 未起（`adb devices` 无设备） ② 连续崩溃日志指向本包 ③ 桌面/语音回归失败且 15 分钟内无法恢复 |
| 15 是否允许进入下一阶段 | **允许先做“禁用观察”（用途未确认）** |

风险等级：低；回滚难度：低：仅 0.13 MB，证据不足。

### 开通/清关（`com.yunos.tv.provision`）

| 项 | 值 |
|---|---|
| 1 应用名称 | 开通/清关 |
| 2 包名 | `com.yunos.tv.provision` |
| 3 APK 路径 | `/system/priv-app/AliProvision/AliProvision.apk` |
| 4 版本 | 1.2.3（code 2100100203） |
| 5 当前启用状态 | DEFAULT（enabled=0），suspended=False |
| 6 组件 | 共 2 个；前 8：<br>`DefaultActivity`（activity，exported=no，actions=MAIN）<br>`DevicePassport`（activity，exported=no，actions=MAIN, clearance） |
| 7 依赖关系 | 无 app 级入向引用（不等于无依赖） |
| 8 可能影响的功能 | 开通/清关流程异常（如重置后无法重新开通） |
| 9 禁用前检查 | ① `pm list packages -d` 为空 ② 记录默认 HOME ③ 备份 `package-restrictions.xml` 并记 sha256 ④ `su -c id` = root ⑤ 当贝桌面处于启用 ⑥ 无线 5555 在监听 |
| 10 禁用命令 | 本固件 `pm disable-user` 被裁剪，须用原子脚本（写 XML + 立即重启）：<br>`adb shell su -c 'sh /data/local/tmp/<pkg>_disable_apply.sh'`<br>脚本模板见 `../experiments/iot_disable_apply.sh` |
| 11 恢复命令 | `adb shell su -c 'sh /data/local/tmp/<pkg>_disable_revert.sh'`<br>或 `adb shell su -c 'pm enable com.yunos.tv.provision'`（`enable` 子命令存在，未实测） |
| 12 重启后检查 | `dumpsys package com.yunos.tv.provision | grep -E 'enabled=|suspended='`、`ps -A | grep provision`、`logcat -b crash -d`、`pm list packages -d` |
| 13 桌面异常恢复 | `am start -n com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity` → 不行则 `cmd package set-home-activity --user 0 com.dangbei1.tvlauncher/com.dangbei.launcher.ui.main.MainActivity` |
| 14 失败判据 | ① 重启后 system_server 未起（`adb devices` 无设备） ② 连续崩溃日志指向本包 ③ 桌面/语音回归失败且 15 分钟内无法恢复 |
| 15 是否允许进入下一阶段 | **允许但收益极低（0.03 MB）** |

风险等级：中；回滚难度：中：0.03 MB，收益极低。

### 工厂 MMI / 老化模式（`com.ailabs.emode`）

| 项 | 值 |
|---|---|
| 1 应用名称 | 工厂 MMI / 老化模式 |
| 2 包名 | `com.ailabs.emode` |
| 3 APK 路径 | `/system/app/Emode/Emode.apk` |
| 4 版本 | 1.0.30（code 2100100030） |
| 5 当前启用状态 | DEFAULT（enabled=0），suspended=False |
| 6 组件 | 共 83 个；前 8：<br>`BaseActivity`（activity，exported=no，actions=—）<br>`EmodeSubmenu`（activity，exported=no，actions=—）<br>`BoardMMI`（activity，exported=no，actions=—）<br>`AutoDetect`（activity，exported=no，actions=—）<br>`VibratorBacklightTest`（activity，exported=no，actions=—）<br>`VibratorTest`（activity，exported=no，actions=—）<br>`BacklightTest`（activity，exported=no，actions=—）<br>`BTTest`（activity，exported=no，actions=—） |
| 7 依赖关系 | `test1` ← `com.android.settings`（action）<br>`test1` ← `com.yunos.tv.provision`（action） |
| 8 可能影响的功能 | 工厂测试/老化模式不可用，影响返修与产线复测 |
| 9 禁用前检查 | ① `pm list packages -d` 为空 ② 记录默认 HOME ③ 备份 `package-restrictions.xml` 并记 sha256 ④ `su -c id` = root ⑤ 当贝桌面处于启用 ⑥ 无线 5555 在监听 |
| 10 禁用命令 | 本固件 `pm disable-user` 被裁剪，须用原子脚本（写 XML + 立即重启）：<br>`adb shell su -c 'sh /data/local/tmp/<pkg>_disable_apply.sh'`<br>脚本模板见 `../experiments/iot_disable_apply.sh` |
| 11 恢复命令 | `adb shell su -c 'sh /data/local/tmp/<pkg>_disable_revert.sh'`<br>或 `adb shell su -c 'pm enable com.ailabs.emode'`（`enable` 子命令存在，未实测） |
| 12 重启后检查 | `dumpsys package com.ailabs.emode | grep -E 'enabled=|suspended='`、`ps -A | grep emode`、`logcat -b crash -d`、`pm list packages -d` |
| 13 桌面异常恢复 | `am start -n com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity` → 不行则 `cmd package set-home-activity --user 0 com.dangbei1.tvlauncher/com.dangbei.launcher.ui.main.MainActivity` |
| 14 失败判据 | ① 重启后 system_server 未起（`adb devices` 无设备） ② 连续崩溃日志指向本包 ③ 桌面/语音回归失败且 15 分钟内无法恢复 |
| 15 是否允许进入下一阶段 | **不建议（影响返修），仅记录** |

风险等级：中；回滚难度：低：不影响日常使用。

### App Links 断言服务（`com.android.statementservice`）

| 项 | 值 |
|---|---|
| 1 应用名称 | App Links 断言服务 |
| 2 包名 | `com.android.statementservice` |
| 3 APK 路径 | `/system/priv-app/StatementService/StatementService.apk` |
| 4 版本 | 1.0（code 1） |
| 5 当前启用状态 | DEFAULT（enabled=0），suspended=False |
| 6 组件 | 共 2 个；前 8：<br>`DirectStatementService`（service，exported=no，actions=CHECK_ACTION）<br>`IntentFilterVerificationReceiver`（receiver，exported=no，actions=INTENT_FILTER_NEEDS_VERIFICATION） |
| 7 依赖关系 | 无 app 级入向引用（不等于无依赖） |
| 8 可能影响的功能 | App Links 校验失败，第三方链接可能改为弹选择框 |
| 9 禁用前检查 | ① `pm list packages -d` 为空 ② 记录默认 HOME ③ 备份 `package-restrictions.xml` 并记 sha256 ④ `su -c id` = root ⑤ 当贝桌面处于启用 ⑥ 无线 5555 在监听 |
| 10 禁用命令 | 本固件 `pm disable-user` 被裁剪，须用原子脚本（写 XML + 立即重启）：<br>`adb shell su -c 'sh /data/local/tmp/<pkg>_disable_apply.sh'`<br>脚本模板见 `../experiments/iot_disable_apply.sh` |
| 11 恢复命令 | `adb shell su -c 'sh /data/local/tmp/<pkg>_disable_revert.sh'`<br>或 `adb shell su -c 'pm enable com.android.statementservice'`（`enable` 子命令存在，未实测） |
| 12 重启后检查 | `dumpsys package com.android.statementservice | grep -E 'enabled=|suspended='`、`ps -A | grep statementservice`、`logcat -b crash -d`、`pm list packages -d` |
| 13 桌面异常恢复 | `am start -n com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity` → 不行则 `cmd package set-home-activity --user 0 com.dangbei1.tvlauncher/com.dangbei.launcher.ui.main.MainActivity` |
| 14 失败判据 | ① 重启后 system_server 未起（`adb devices` 无设备） ② 连续崩溃日志指向本包 ③ 桌面/语音回归失败且 15 分钟内无法恢复 |
| 15 是否允许进入下一阶段 | **允许（B 类第一批）** |

风险等级：低；回滚难度：低。

### 蓝牙 MIDI（`com.android.bluetoothmidiservice`）

| 项 | 值 |
|---|---|
| 1 应用名称 | 蓝牙 MIDI |
| 2 包名 | `com.android.bluetoothmidiservice` |
| 3 APK 路径 | `/system/app/BluetoothMidiService/BluetoothMidiService.apk` |
| 4 版本 | 8.1.0（code 27） |
| 5 当前启用状态 | DEFAULT（enabled=0），suspended=False |
| 6 组件 | 共 1 个；前 8：<br>`BluetoothMidiService`（service，exported=no，actions=BluetoothMidiService） |
| 7 依赖关系 | 无 app 级入向引用（不等于无依赖） |
| 8 可能影响的功能 | 蓝牙 MIDI 设备不可用（无此场景） |
| 9 禁用前检查 | ① `pm list packages -d` 为空 ② 记录默认 HOME ③ 备份 `package-restrictions.xml` 并记 sha256 ④ `su -c id` = root ⑤ 当贝桌面处于启用 ⑥ 无线 5555 在监听 |
| 10 禁用命令 | 本固件 `pm disable-user` 被裁剪，须用原子脚本（写 XML + 立即重启）：<br>`adb shell su -c 'sh /data/local/tmp/<pkg>_disable_apply.sh'`<br>脚本模板见 `../experiments/iot_disable_apply.sh` |
| 11 恢复命令 | `adb shell su -c 'sh /data/local/tmp/<pkg>_disable_revert.sh'`<br>或 `adb shell su -c 'pm enable com.android.bluetoothmidiservice'`（`enable` 子命令存在，未实测） |
| 12 重启后检查 | `dumpsys package com.android.bluetoothmidiservice | grep -E 'enabled=|suspended='`、`ps -A | grep bluetoothmidiservice`、`logcat -b crash -d`、`pm list packages -d` |
| 13 桌面异常恢复 | `am start -n com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity` → 不行则 `cmd package set-home-activity --user 0 com.dangbei1.tvlauncher/com.dangbei.launcher.ui.main.MainActivity` |
| 14 失败判据 | ① 重启后 system_server 未起（`adb devices` 无设备） ② 连续崩溃日志指向本包 ③ 桌面/语音回归失败且 15 分钟内无法恢复 |
| 15 是否允许进入下一阶段 | **允许（B 类第一批）** |

风险等级：低；回滚难度：低。

### PAC 代理脚本（`com.android.pacprocessor`）

| 项 | 值 |
|---|---|
| 1 应用名称 | PAC 代理脚本 |
| 2 包名 | `com.android.pacprocessor` |
| 3 APK 路径 | `/system/app/PacProcessor/PacProcessor.apk` |
| 4 版本 | 8.1.0（code 27） |
| 5 当前启用状态 | DEFAULT（enabled=0），suspended=False |
| 6 组件 | 共 1 个；前 8：<br>`PacService`（service，exported=yes，actions=—） |
| 7 依赖关系 | 无 app 级入向引用（不等于无依赖） |
| 8 可能影响的功能 | PAC 代理脚本不生效（无此场景） |
| 9 禁用前检查 | ① `pm list packages -d` 为空 ② 记录默认 HOME ③ 备份 `package-restrictions.xml` 并记 sha256 ④ `su -c id` = root ⑤ 当贝桌面处于启用 ⑥ 无线 5555 在监听 |
| 10 禁用命令 | 本固件 `pm disable-user` 被裁剪，须用原子脚本（写 XML + 立即重启）：<br>`adb shell su -c 'sh /data/local/tmp/<pkg>_disable_apply.sh'`<br>脚本模板见 `../experiments/iot_disable_apply.sh` |
| 11 恢复命令 | `adb shell su -c 'sh /data/local/tmp/<pkg>_disable_revert.sh'`<br>或 `adb shell su -c 'pm enable com.android.pacprocessor'`（`enable` 子命令存在，未实测） |
| 12 重启后检查 | `dumpsys package com.android.pacprocessor | grep -E 'enabled=|suspended='`、`ps -A | grep pacprocessor`、`logcat -b crash -d`、`pm list packages -d` |
| 13 桌面异常恢复 | `am start -n com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity` → 不行则 `cmd package set-home-activity --user 0 com.dangbei1.tvlauncher/com.dangbei.launcher.ui.main.MainActivity` |
| 14 失败判据 | ① 重启后 system_server 未起（`adb devices` 无设备） ② 连续崩溃日志指向本包 ③ 桌面/语音回归失败且 15 分钟内无法恢复 |
| 15 是否允许进入下一阶段 | **允许（B 类第一批）** |

风险等级：低；回滚难度：低。

### VPN 授权对话框（`com.android.vpndialogs`）

| 项 | 值 |
|---|---|
| 1 应用名称 | VPN 授权对话框 |
| 2 包名 | `com.android.vpndialogs` |
| 3 APK 路径 | `/system/priv-app/VpnDialogs/VpnDialogs.apk` |
| 4 版本 | 8.1.0（code 27） |
| 5 当前启用状态 | DEFAULT（enabled=0），suspended=False |
| 6 组件 | 共 2 个；前 8：<br>`ConfirmDialog`（activity，exported=no，actions=MAIN）<br>`ManageDialog`（activity，exported=no，actions=MAIN） |
| 7 依赖关系 | 无 app 级入向引用（不等于无依赖） |
| 8 可能影响的功能 | VPN 授权对话框缺失，无法确认 VPN 连接 |
| 9 禁用前检查 | ① `pm list packages -d` 为空 ② 记录默认 HOME ③ 备份 `package-restrictions.xml` 并记 sha256 ④ `su -c id` = root ⑤ 当贝桌面处于启用 ⑥ 无线 5555 在监听 |
| 10 禁用命令 | 本固件 `pm disable-user` 被裁剪，须用原子脚本（写 XML + 立即重启）：<br>`adb shell su -c 'sh /data/local/tmp/<pkg>_disable_apply.sh'`<br>脚本模板见 `../experiments/iot_disable_apply.sh` |
| 11 恢复命令 | `adb shell su -c 'sh /data/local/tmp/<pkg>_disable_revert.sh'`<br>或 `adb shell su -c 'pm enable com.android.vpndialogs'`（`enable` 子命令存在，未实测） |
| 12 重启后检查 | `dumpsys package com.android.vpndialogs | grep -E 'enabled=|suspended='`、`ps -A | grep vpndialogs`、`logcat -b crash -d`、`pm list packages -d` |
| 13 桌面异常恢复 | `am start -n com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity` → 不行则 `cmd package set-home-activity --user 0 com.dangbei1.tvlauncher/com.dangbei.launcher.ui.main.MainActivity` |
| 14 失败判据 | ① 重启后 system_server 未起（`adb devices` 无设备） ② 连续崩溃日志指向本包 ③ 桌面/语音回归失败且 15 分钟内无法恢复 |
| 15 是否允许进入下一阶段 | **允许（B 类第一批）** |

风险等级：低；回滚难度：低。

### 强制门户登录页（`com.android.captiveportallogin`）

| 项 | 值 |
|---|---|
| 1 应用名称 | 强制门户登录页 |
| 2 包名 | `com.android.captiveportallogin` |
| 3 APK 路径 | `/system/app/CaptivePortalLogin/CaptivePortalLogin.apk` |
| 4 版本 | 8.1.0（code 27） |
| 5 当前启用状态 | DEFAULT（enabled=0），suspended=False |
| 6 组件 | 共 1 个；前 8：<br>`CaptivePortalLoginActivity`（activity，exported=no，actions=CAPTIVE_PORTAL） |
| 7 依赖关系 | 无 app 级入向引用（不等于无依赖） |
| 8 可能影响的功能 | 公共 Wi-Fi 强制门户登录页不可用 |
| 9 禁用前检查 | ① `pm list packages -d` 为空 ② 记录默认 HOME ③ 备份 `package-restrictions.xml` 并记 sha256 ④ `su -c id` = root ⑤ 当贝桌面处于启用 ⑥ 无线 5555 在监听 |
| 10 禁用命令 | 本固件 `pm disable-user` 被裁剪，须用原子脚本（写 XML + 立即重启）：<br>`adb shell su -c 'sh /data/local/tmp/<pkg>_disable_apply.sh'`<br>脚本模板见 `../experiments/iot_disable_apply.sh` |
| 11 恢复命令 | `adb shell su -c 'sh /data/local/tmp/<pkg>_disable_revert.sh'`<br>或 `adb shell su -c 'pm enable com.android.captiveportallogin'`（`enable` 子命令存在，未实测） |
| 12 重启后检查 | `dumpsys package com.android.captiveportallogin | grep -E 'enabled=|suspended='`、`ps -A | grep captiveportallogin`、`logcat -b crash -d`、`pm list packages -d` |
| 13 桌面异常恢复 | `am start -n com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity` → 不行则 `cmd package set-home-activity --user 0 com.dangbei1.tvlauncher/com.dangbei.launcher.ui.main.MainActivity` |
| 14 失败判据 | ① 重启后 system_server 未起（`adb devices` 无设备） ② 连续崩溃日志指向本包 ③ 桌面/语音回归失败且 15 分钟内无法恢复 |
| 15 是否允许进入下一阶段 | **允许（B 类第一批）** |

风险等级：低；回滚难度：低。

### 伴随设备管理（`com.android.companiondevicemanager`）

| 项 | 值 |
|---|---|
| 1 应用名称 | 伴随设备管理 |
| 2 包名 | `com.android.companiondevicemanager` |
| 3 APK 路径 | `/system/app/CompanionDeviceManager/CompanionDeviceManager.apk` |
| 4 版本 | 8.1.0（code 27） |
| 5 当前启用状态 | DEFAULT（enabled=0），suspended=False |
| 6 组件 | 共 2 个；前 8：<br>`DeviceChooserActivity`（activity，exported=no，actions=START_DISCOVERY）<br>`DeviceDiscoveryService`（service，exported=yes，actions=—） |
| 7 依赖关系 | 无 app 级入向引用（不等于无依赖） |
| 8 可能影响的功能 | 伴随设备（手表/耳机）配对管理缺失 |
| 9 禁用前检查 | ① `pm list packages -d` 为空 ② 记录默认 HOME ③ 备份 `package-restrictions.xml` 并记 sha256 ④ `su -c id` = root ⑤ 当贝桌面处于启用 ⑥ 无线 5555 在监听 |
| 10 禁用命令 | 本固件 `pm disable-user` 被裁剪，须用原子脚本（写 XML + 立即重启）：<br>`adb shell su -c 'sh /data/local/tmp/<pkg>_disable_apply.sh'`<br>脚本模板见 `../experiments/iot_disable_apply.sh` |
| 11 恢复命令 | `adb shell su -c 'sh /data/local/tmp/<pkg>_disable_revert.sh'`<br>或 `adb shell su -c 'pm enable com.android.companiondevicemanager'`（`enable` 子命令存在，未实测） |
| 12 重启后检查 | `dumpsys package com.android.companiondevicemanager | grep -E 'enabled=|suspended='`、`ps -A | grep companiondevicemanager`、`logcat -b crash -d`、`pm list packages -d` |
| 13 桌面异常恢复 | `am start -n com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity` → 不行则 `cmd package set-home-activity --user 0 com.dangbei1.tvlauncher/com.dangbei.launcher.ui.main.MainActivity` |
| 14 失败判据 | ① 重启后 system_server 未起（`adb devices` 无设备） ② 连续崩溃日志指向本包 ③ 桌面/语音回归失败且 15 分钟内无法恢复 |
| 15 是否允许进入下一阶段 | **允许（B 类第一批）** |

风险等级：低；回滚难度：低。

### 系统升级（`com.alibaba.ailabs.genie.osupdate`）

| 项 | 值 |
|---|---|
| 1 应用名称 | 系统升级 |
| 2 包名 | `com.alibaba.ailabs.genie.osupdate` |
| 3 APK 路径 | `/system/app/Osupdate/Osupdate.apk` |
| 4 版本 | 9.0.1.0（code 2100900010） |
| 5 当前启用状态 | DEFAULT（enabled=0），suspended=False |
| 6 组件 | 共 6 个；前 8：<br>`UpdateActivity`（activity，exported=no，actions=VIEW, MAIN）<br>`RebootUpdateActivity`（activity，exported=no，actions=MAIN）<br>`TestActivity`（activity，exported=no，actions=—）<br>`UpdateService`（service，exported=yes，actions=IUpdateService）<br>`UpdateBroadcastReceiver`（receiver，exported=yes，actions=BOOT_COMPLETED, FOTA_UPDATE）<br>`AppConfigInfoProvider`（provider，exported=yes，actions=—） |
| 7 依赖关系 | `FOTA_UPDATE` ← `com.alibaba.ailabs.genie.smartapp`（action）<br>`FOTA_UPDATE` ← `com.android.settings`（action）<br>`UpdateActivity` ← `com.android.settings`（component） |
| 8 可能影响的功能 | OTA 升级入口失效；实测其进程常驻 CPU 21.5%、PSS 16.5 MB |
| 9 禁用前检查 | ① `pm list packages -d` 为空 ② 记录默认 HOME ③ 备份 `package-restrictions.xml` 并记 sha256 ④ `su -c id` = root ⑤ 当贝桌面处于启用 ⑥ 无线 5555 在监听 |
| 10 禁用命令 | 本固件 `pm disable-user` 被裁剪，须用原子脚本（写 XML + 立即重启）：<br>`adb shell su -c 'sh /data/local/tmp/<pkg>_disable_apply.sh'`<br>脚本模板见 `../experiments/iot_disable_apply.sh` |
| 11 恢复命令 | `adb shell su -c 'sh /data/local/tmp/<pkg>_disable_revert.sh'`<br>或 `adb shell su -c 'pm enable com.alibaba.ailabs.genie.osupdate'`（`enable` 子命令存在，未实测） |
| 12 重启后检查 | `dumpsys package com.alibaba.ailabs.genie.osupdate | grep -E 'enabled=|suspended='`、`ps -A | grep osupdate`、`logcat -b crash -d`、`pm list packages -d` |
| 13 桌面异常恢复 | `am start -n com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity` → 不行则 `cmd package set-home-activity --user 0 com.dangbei1.tvlauncher/com.dangbei.launcher.ui.main.MainActivity` |
| 14 失败判据 | ① 重启后 system_server 未起（`adb devices` 无设备） ② 连续崩溃日志指向本包 ③ 桌面/语音回归失败且 15 分钟内无法恢复 |
| 15 是否允许进入下一阶段 | **允许（B 类第二批，需验证 OTA 后果）** |

风险等级：中；回滚难度：中：见 OTA 报告。

### 使用引导（`com.alibaba.ailabs.genie.guide`）

| 项 | 值 |
|---|---|
| 1 应用名称 | 使用引导 |
| 2 包名 | `com.alibaba.ailabs.genie.guide` |
| 3 APK 路径 | `/system/app/Guide/Guide.apk` |
| 4 版本 | 1.1.0.118（code 118） |
| 5 当前启用状态 | DEFAULT（enabled=0），suspended=False |
| 6 组件 | 共 10 个；前 8：<br>`WelcomeActivity`（activity，exported=no，actions=MAIN）<br>`ContractActivity`（activity，exported=no，actions=WEB_VIEW）<br>`BindAccountActivity`（activity，exported=no，actions=—）<br>`VideoActivity`（activity，exported=no，actions=VIEW）<br>`WifiListActivity`（activity，exported=no，actions=—）<br>`InputPasswordActivity`（activity，exported=no，actions=—）<br>`AddNetWorkActivity`（activity，exported=no，actions=—）<br>`WVWebViewActivity`（activity，exported=no，actions=VIEW） |
| 7 依赖关系 | 无 app 级入向引用（不等于无依赖） |
| 8 可能影响的功能 | 首次使用引导缺失 |
| 9 禁用前检查 | ① `pm list packages -d` 为空 ② 记录默认 HOME ③ 备份 `package-restrictions.xml` 并记 sha256 ④ `su -c id` = root ⑤ 当贝桌面处于启用 ⑥ 无线 5555 在监听 |
| 10 禁用命令 | 本固件 `pm disable-user` 被裁剪，须用原子脚本（写 XML + 立即重启）：<br>`adb shell su -c 'sh /data/local/tmp/<pkg>_disable_apply.sh'`<br>脚本模板见 `../experiments/iot_disable_apply.sh` |
| 11 恢复命令 | `adb shell su -c 'sh /data/local/tmp/<pkg>_disable_revert.sh'`<br>或 `adb shell su -c 'pm enable com.alibaba.ailabs.genie.guide'`（`enable` 子命令存在，未实测） |
| 12 重启后检查 | `dumpsys package com.alibaba.ailabs.genie.guide | grep -E 'enabled=|suspended='`、`ps -A | grep guide`、`logcat -b crash -d`、`pm list packages -d` |
| 13 桌面异常恢复 | `am start -n com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity` → 不行则 `cmd package set-home-activity --user 0 com.dangbei1.tvlauncher/com.dangbei.launcher.ui.main.MainActivity` |
| 14 失败判据 | ① 重启后 system_server 未起（`adb devices` 无设备） ② 连续崩溃日志指向本包 ③ 桌面/语音回归失败且 15 分钟内无法恢复 |
| 15 是否允许进入下一阶段 | **允许（B 类第二批）** |

风险等级：低；回滚难度：低。

### 存储管理器（`com.android.storagemanager`）

| 项 | 值 |
|---|---|
| 1 应用名称 | 存储管理器 |
| 2 包名 | `com.android.storagemanager` |
| 3 APK 路径 | `/system/priv-app/StorageManager/StorageManager.apk` |
| 4 版本 | 8.1.0（code 27） |
| 5 当前启用状态 | DEFAULT（enabled=0），suspended=False |
| 6 组件 | 共 5 个；前 8：<br>`DeletionHelperActivity`（activity，exported=no，actions=MANAGE_STORAGE）<br>`WarningDialogActivity`（activity，exported=no，actions=—）<br>`AutomaticStorageManagementJobService`（service，exported=no，actions=—）<br>`AutomaticStorageBroadcastReceiver`（receiver，exported=no，actions=BOOT_COMPLETED）<br>`NotificationController`（receiver，exported=no，actions=DISMISS, ACTIVATE） |
| 7 依赖关系 | 无 app 级入向引用（不等于无依赖） |
| 8 可能影响的功能 | 存储清理界面缺失（可用第三方替代） |
| 9 禁用前检查 | ① `pm list packages -d` 为空 ② 记录默认 HOME ③ 备份 `package-restrictions.xml` 并记 sha256 ④ `su -c id` = root ⑤ 当贝桌面处于启用 ⑥ 无线 5555 在监听 |
| 10 禁用命令 | 本固件 `pm disable-user` 被裁剪，须用原子脚本（写 XML + 立即重启）：<br>`adb shell su -c 'sh /data/local/tmp/<pkg>_disable_apply.sh'`<br>脚本模板见 `../experiments/iot_disable_apply.sh` |
| 11 恢复命令 | `adb shell su -c 'sh /data/local/tmp/<pkg>_disable_revert.sh'`<br>或 `adb shell su -c 'pm enable com.android.storagemanager'`（`enable` 子命令存在，未实测） |
| 12 重启后检查 | `dumpsys package com.android.storagemanager | grep -E 'enabled=|suspended='`、`ps -A | grep storagemanager`、`logcat -b crash -d`、`pm list packages -d` |
| 13 桌面异常恢复 | `am start -n com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity` → 不行则 `cmd package set-home-activity --user 0 com.dangbei1.tvlauncher/com.dangbei.launcher.ui.main.MainActivity` |
| 14 失败判据 | ① 重启后 system_server 未起（`adb devices` 无设备） ② 连续崩溃日志指向本包 ③ 桌面/语音回归失败且 15 分钟内无法恢复 |
| 15 是否允许进入下一阶段 | **允许（B 类第二批）** |

风险等级：低；回滚难度：低。

### MTP 文件传输（`com.android.mtp`）

| 项 | 值 |
|---|---|
| 1 应用名称 | MTP 文件传输 |
| 2 包名 | `com.android.mtp` |
| 3 APK 路径 | `/system/priv-app/MtpDocumentsProvider/MtpDocumentsProvider.apk` |
| 4 版本 | 8.1.0（code 27） |
| 5 当前启用状态 | DEFAULT（enabled=0），suspended=False |
| 6 组件 | 共 4 个；前 8：<br>`ReceiverActivity`（activity，exported=no，actions=USB_DEVICE_ATTACHED）<br>`MtpDocumentsService`（service，exported=no，actions=—）<br>`UsbIntentReceiver`（receiver，exported=yes，actions=USB_DEVICE_ATTACHED, USB_DEVICE_DETACHED）<br>`MtpDocumentsProvider`（provider，exported=yes，actions=DOCUMENTS_PROVIDER） |
| 7 依赖关系 | 无 app 级入向引用（不等于无依赖） |
| 8 可能影响的功能 | USB 连接电脑不再以 MTP 方式暴露文件 |
| 9 禁用前检查 | ① `pm list packages -d` 为空 ② 记录默认 HOME ③ 备份 `package-restrictions.xml` 并记 sha256 ④ `su -c id` = root ⑤ 当贝桌面处于启用 ⑥ 无线 5555 在监听 |
| 10 禁用命令 | 本固件 `pm disable-user` 被裁剪，须用原子脚本（写 XML + 立即重启）：<br>`adb shell su -c 'sh /data/local/tmp/<pkg>_disable_apply.sh'`<br>脚本模板见 `../experiments/iot_disable_apply.sh` |
| 11 恢复命令 | `adb shell su -c 'sh /data/local/tmp/<pkg>_disable_revert.sh'`<br>或 `adb shell su -c 'pm enable com.android.mtp'`（`enable` 子命令存在，未实测） |
| 12 重启后检查 | `dumpsys package com.android.mtp | grep -E 'enabled=|suspended='`、`ps -A | grep mtp`、`logcat -b crash -d`、`pm list packages -d` |
| 13 桌面异常恢复 | `am start -n com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity` → 不行则 `cmd package set-home-activity --user 0 com.dangbei1.tvlauncher/com.dangbei.launcher.ui.main.MainActivity` |
| 14 失败判据 | ① 重启后 system_server 未起（`adb devices` 无设备） ② 连续崩溃日志指向本包 ③ 桌面/语音回归失败且 15 分钟内无法恢复 |
| 15 是否允许进入下一阶段 | **允许（B 类第二批，注意会影响 USB 取文件）** |

风险等级：低；回滚难度：低：会影响刷机取文件。


---

## 统一失败判据与止损

| 现象 | 处理 |
|---|---|
| 重启后 `adb devices` 为空 | 换无线 `adb connect <ip>:5555`；仍不行 → Recovery（未验证）→ 分区回刷（缺 scatter） |
| 桌面不出来 | `am start -n com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity`，再切当贝 |
| 语音助理崩溃循环 | 立刻 revert 脚本 + 重启 |
| `logcat -b crash` 出现本包相关 FATAL | revert，不再继续同族候选 |

## 尚未具备进入下一阶段的前置条件

1. **原子禁用脚本只验证过 iot 模板**，其它包需要逐个生成并 `sh -n` 校验（本轮未做，避免留下未校验脚本）。
2. **`pm enable` 未实测**——恢复主路径是“还原 XML + 重启”，`pm enable` 只能作为备选。
3. **Recovery ADB 未验证**，因此“最坏情况”仍依赖分区回刷，而回刷缺 scatter。
