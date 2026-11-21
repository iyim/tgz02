# 桌面预装应用专项排查（rev5.2 修正版）

对象：用户截图中的 18 个桌面入口 + 整个 system 分区 APK 清单。

**rev5.2 的三处修正**

1. `ar.monitor`（GenieMonitor）**不再是删除候选**：包内 `VisionWakeUpService`（唤醒）+ `AVEControlProvider`
   （设备控制，smartapp 引用）使其不可整包精简，已与 `summary_stats.json:D_forbidden`、`a_class_candidates.md` 统一。
2. 8 个“未知入口”里 **7 个已用 launcher 卡片证据坐实**（bilibili/淘宝/天猫/waft 小程序/应用市场/联系人），
   只剩 **旭慧生活** 未知。
3. “是否存在独立 APK”改为按**是否已安装**判定：launcher 内置频道、小程序、死链卡片一律记“否”。

## 0. 证据与判定规则

| 项 | 来源 / 规则 |
|---|---|
| 已安装包与分区 | `desktop_package_index.json`（只读 `pm list packages -f` 快照：67 个包 = system 55 + data 9 + vendor 3） |
| 桌面图标能力 | `dumpsys package <pkg>` 的 `LAUNCHER` 命中（只读） |
| 卡片/小程序入口 | `GenieLauncher.apk` 内 `assets/page_apk_cache.json`、`page_apk_s4_cache.json`、`desktop.json`、`shopping.json` |
| 闹钟等技能入口 | `smartapp.apk` 内的 `res/layout/alarm_domain_*` 等资源 |
| 独立 APK 判定 | **包名必须在已安装集合中**；否则一律“否”，并给出卡片 targetUrl 作为反证 |
| 体积口径 | system 包取 `app_inventory.json`；`/data/app` 对 shell 不可读 → **未知** |

## 1. 桌面应用与包名映射表（18/18）

| 桌面名称 | 实际包名 | 分区 | APK 路径 | APK 大小 | 存在独立 APK | 证据等级 |
| 旭慧生活 | **未知（非独立 APK）** | —（非 APK） | — | — | 否 | 未知 |
| 通话 | **未知（非独立 APK）** | —（非 APK） | — | — | 否 | 较可信 |
| 人教数字课堂 | **未知（非独立 APK）** | —（非 APK） | — | — | 否 | 较可信 |
| 爱家看护 | `com.alibaba.ailabs.genie.aicare` | data | /data/app/com.alibaba.ailabs.genie.aicare-zsBAkMuEJlOe5ygOiDbDbw==/base.apk | 2.52 MB | 是 | 确定 |
| 购物 | **未知（非独立 APK）** | —（非 APK） | — | — | 否 | 较可信 |
| 音乐 | **未知（非独立 APK）** | —（非 APK） | — | — | 否 | 较可信 |
| 闹钟 | **未知（非独立 APK）** | —（非 APK） | — | — | 否 | 较可信 |
| 相册 | `com.alibaba.ailabs.genie.albums` | system | /system/app/GenieAlbums/GenieAlbums.apk | 1.01 MB | 是 | 确定 |
| 优酷 | `com.ailabs.youku.iot` | system | /system/app/AliVideoPlayer/AliVideoPlayer.apk | 10.98 MB | 是 | 确定 |
| 手势 | `com.alibaba.ailabs.ar.monitor` | system | /system/app/GenieMonitor/GenieMonitor.apk | 33.19 MB | 是 | 确定 |
| 菜谱 | `com.alibaba.ailabs.genie.cook` | data | /data/app/com.alibaba.ailabs.genie.cook-Y0W26Dha2xaf2E1WkY6NpA==/base.apk | 未知（/data/app 不可读） | 是 | 确定 |
| CCTV.新视听 | `cn.cmvideo.car.play` | data | /data/app/cn.cmvideo.car.play-ykAZIDU3kgd3zxegEua-EQ==/base.apk | 未知（/data/app 不可读） | 是 | 较可信 |
| 儿童 | `com.alibaba.ailabs.genie.children` | system | /system/app/GenieChildren/GenieChildren.apk | 9.97 MB | 是 | 确定 |
| 智能家居 | `com.alibaba.ailabs.genie.iot` | system | /system/app/GenieIoT/GenieIoT.apk | 12.23 MB | 是 | 确定 |
| 蚂蚁森林 | **未知（非独立 APK）** | —（非 APK） | — | — | 否 | 较可信 |
| 设置 | `com.android.settings` | system | /system/app/S1Settings/S1Settings.apk | 4.48 MB | 是 | 确定 |
| 相机 | `com.alibaba.ailabs.genie.camera` | data | /data/app/com.alibaba.ailabs.genie.camera-UeTOZTBElqLiL9Nv3eKTVg==/base.apk | 未知（/data/app 不可读） | 是 | 确定 |
| 哔哩哔哩 | **未知（非独立 APK）** | —（非 APK） | — | — | 否 | 较可信 |

统计：**已安装包 10 个**（其中 system 6：aicare/albums/children/iot/settings + youku.iot、ar.monitor；
data 4：camera/cook/cmvideo；共 10 项计入“是”），**非 APK 入口 8 个**（卡片/小程序/技能 UI，其中 1 个仍未知）。

## 2. 桌面应用专项评估表

| 桌面名称 | 涉及语音/音乐/视频/设备控制 | 删除影响 | A 类删除候选? | B 类禁用候选? |
| 旭慧生活 | 未知 | 未知 | 未知 | 未知 |
| 通话 | 通话/联系人（目标包 `com.alibaba.ailabs.genie.contacts` **未安装** → 卡片为死链） | 通话/联系人（目标包 `com.alibaba.ailabs.genie.contacts` **未安装** → 卡片为死链） | 未知（非 APK） | 未知 |
| 人教数字课堂 | 教育内容推广位（跳应用市场，目标包未安装） | 教育内容推广位（跳应用市场，目标包未安装） | 未知（非 APK） | 未知 |
| 爱家看护 | 看护/摄像头联动 | 看护/摄像头联动 | 不建议（prebuilt 删除会退化） | 可评估 |
| 购物 | 购物频道（H5 webview，跳淘宝/天猫） | 购物频道（H5 webview，跳淘宝/天猫） | 未知（非 APK） | 未知 |
| 音乐 | 原厂音乐链路（播放由 smartapp/AliVideoPlayer 承担） | 原厂音乐链路（播放由 smartapp/AliVideoPlayer 承担） | **禁止** | 禁止 |
| 闹钟 | 语音闹钟技能界面（smartapp 内置 domain） | 语音闹钟技能界面（smartapp 内置 domain） | 未知（非 APK） | 未知 |
| 相册 | 相册浏览、屏保取图、语音“看照片” | 相册浏览、屏保取图、语音“看照片” | 需产品确认 | 可验证（整包） |
| 优酷 | 原厂视频播放（点播/新闻/短视频/屏保） | 原厂视频播放（点播/新闻/短视频/屏保） | **必须保留**（视频链路） | 禁止 |
| 手势 | 手势/体感识别 + CMCC 媒体 + **视觉唤醒** + AVE 设备控制 Provider | 手势/体感识别 + CMCC 媒体 + **视觉唤醒** + AVE 设备控制 Provider | **必须保留整包** | 禁止（整包） |
| 菜谱 | 菜谱内容 | 菜谱内容 | 不涉及 system 空间 | 需卸载（本轮不做） |
| CCTV.新视听 | 第三方视频客户端 | 第三方视频客户端 | 不涉及 system 空间 | 需卸载（本轮不做） |
| 儿童 | 儿童模式（界面 + 禁播时段 + 管控其他应用） | 儿童模式（界面 + 禁播时段 + 管控其他应用） | 需产品确认（不得直接删） | 可验证（整包） |
| 智能家居 | 设备控制（IoT） | 设备控制（IoT） | **禁止** | **禁止** |
| 蚂蚁森林 | 支付宝小程序（Waft 容器） | 支付宝小程序（Waft 容器） | 未知（非 APK） | 未知 |
| 设置 | 系统设置 | 系统设置 | **禁止** | **禁止** |
| 相机 | 拍照/看护联动 | 拍照/看护联动 | 不涉及 system 空间 | 需卸载（本轮不做） |
| 哔哩哔哩 | 第三方视频（当前为死链卡片） | 第三方视频（当前为死链卡片） | 未知（非 APK） | 未知 |

## 3. 逐个详情

### 旭慧生活

| 项目 | 内容 |
|---|---|
| 桌面显示名称 | 旭慧生活 |
| 实际包名 | **未知（非独立 APK）** |
| 分区 | —（非 APK） |
| APK 路径 | — |
| APK 文件大小 | — |
| 是否存在独立 APK | 否 |
| 静态证据（卡片/组件） | launcher assets 与全部 APK 的 assets/res 中均无该名称命中 |
| 涉及语音/音乐/视频/设备控制/硬件 | 未知 |
| 删除后可能影响 | 未知 |
| A 类静态删除 | **未知** |
| B 类禁用验证 | **未知** |
| 证据等级 | 未知 —— 仅剩此一项未确认：本地无任何静态证据。缺的证据是 launcher 云端卡片配置（运行时拉取）或运行时 dumpsys 记录 |
### 通话

| 项目 | 内容 |
|---|---|
| 桌面显示名称 | 通话 |
| 实际包名 | **未知（非独立 APK）** |
| 分区 | —（非 APK） |
| APK 路径 | — |
| APK 文件大小 | — |
| 是否存在独立 APK | 否 |
| 静态证据（卡片/组件） | launcher 卡片：`targetUrl=genie://com.alibaba.ailabs.genie.contacts/page/home?...&pkg=com.alibaba.ailabs.genie.contacts` |
| 涉及语音/音乐/视频/设备控制/硬件 | 通话/联系人（目标包 `com.alibaba.ailabs.genie.contacts` **未安装** → 卡片为死链） |
| 删除后可能影响 | 通话/联系人（目标包 `com.alibaba.ailabs.genie.contacts` **未安装** → 卡片为死链） |
| A 类静态删除 | **未知（非 APK）** |
| B 类禁用验证 | **未知** |
| 证据等级 | 较可信 —— 卡片证据明确；但目标应用不在 67 个已安装包内，点击当前不可用 |
### 人教数字课堂

| 项目 | 内容 |
|---|---|
| 桌面显示名称 | 人教数字课堂 |
| 实际包名 | **未知（非独立 APK）** |
| 分区 | —（非 APK） |
| APK 路径 | — |
| APK 文件大小 | — |
| 是否存在独立 APK | 否 |
| 静态证据（卡片/组件） | launcher 卡片：`bizType=MINIAPP`，`targetUrl=market://com.alibaba.ailabs.geniemarket/main` |
| 涉及语音/音乐/视频/设备控制/硬件 | 教育内容推广位（跳应用市场，目标包未安装） |
| 删除后可能影响 | 教育内容推广位（跳应用市场，目标包未安装） |
| A 类静态删除 | **未知（非 APK）** |
| B 类禁用验证 | **未知** |
| 证据等级 | 较可信 —— 属 launcher 推荐/推广卡，不是应用 |
### 爱家看护

| 项目 | 内容 |
|---|---|
| 桌面显示名称 | 爱家看护 |
| 实际包名 | `com.alibaba.ailabs.genie.aicare` |
| 分区 | data |
| APK 路径 | `/data/app/com.alibaba.ailabs.genie.aicare-zsBAkMuEJlOe5ygOiDbDbw==/base.apk` |
| APK 文件大小 | 2.52 MB |
| 是否存在独立 APK | 是 |
| 静态证据（卡片/组件） | system prebuilt + /data 覆盖（4.0.26 → 4.0.62），launcher 组件 1 个 |
| 涉及语音/音乐/视频/设备控制/硬件 | 看护/摄像头联动 |
| 删除后可能影响 | 看护/摄像头联动 |
| A 类静态删除 | **不建议（prebuilt 删除会退化）** |
| B 类禁用验证 | **可评估** |
| 证据等级 | 确定 —— 包名、路径、分区、launcher 组件均有证据 |
### 购物

| 项目 | 内容 |
|---|---|
| 桌面显示名称 | 购物 |
| 实际包名 | **未知（非独立 APK）** |
| 分区 | —（非 APK） |
| APK 路径 | — |
| APK 文件大小 | — |
| 是否存在独立 APK | 否 |
| 静态证据（卡片/组件） | launcher 卡片：`genie://…/webviewPage?h5_url=https://shop258155498.m.taobao.com`、`pages.tmall.com/…` |
| 涉及语音/音乐/视频/设备控制/硬件 | 购物频道（H5 webview，跳淘宝/天猫） |
| 删除后可能影响 | 购物频道（H5 webview，跳淘宝/天猫） |
| A 类静态删除 | **未知（非 APK）** |
| B 类禁用验证 | **未知** |
| 证据等级 | 较可信 —— rev5.2 修正：launcher 内置频道**不再**被当作独立 APK |
### 音乐

| 项目 | 内容 |
|---|---|
| 桌面显示名称 | 音乐 |
| 实际包名 | **未知（非独立 APK）** |
| 分区 | —（非 APK） |
| APK 路径 | — |
| APK 文件大小 | — |
| 是否存在独立 APK | 否 |
| 静态证据（卡片/组件） | launcher 音乐频道资源（`assets/audio_history.json`、`favourite_tabs.json`、`tabs.json`） |
| 涉及语音/音乐/视频/设备控制/硬件 | 原厂音乐链路（播放由 smartapp/AliVideoPlayer 承担） |
| 删除后可能影响 | 原厂音乐链路（播放由 smartapp/AliVideoPlayer 承担） |
| A 类静态删除 | ****禁止**** |
| B 类禁用验证 | **禁止** |
| 证据等级 | 较可信 —— 音乐是频道 + 原厂播放链路，不是独立 APK；§六 保护 |
### 闹钟

| 项目 | 内容 |
|---|---|
| 桌面显示名称 | 闹钟 |
| 实际包名 | **未知（非独立 APK）** |
| 分区 | —（非 APK） |
| APK 路径 | — |
| APK 文件大小 | — |
| 是否存在独立 APK | 否 |
| 静态证据（卡片/组件） | smartapp 资源含 `activity_alarm_list.xml`、`alarm_domain_alarm_ring_*` 等闹钟域布局 |
| 涉及语音/音乐/视频/设备控制/硬件 | 语音闹钟技能界面（smartapp 内置 domain） |
| 删除后可能影响 | 语音闹钟技能界面（smartapp 内置 domain） |
| A 类静态删除 | **未知（非 APK）** |
| B 类禁用验证 | **未知** |
| 证据等级 | 较可信 —— 属 smartapp 技能 UI，不是独立应用；动它等于动语音链路 |
### 相册

| 项目 | 内容 |
|---|---|
| 桌面显示名称 | 相册 |
| 实际包名 | `com.alibaba.ailabs.genie.albums` |
| 分区 | system |
| APK 路径 | `/system/app/GenieAlbums/GenieAlbums.apk` |
| APK 文件大小 | 1.01 MB |
| 是否存在独立 APK | 是 |
| 静态证据（卡片/组件） | system/app，launcher MainActivity，screensaver 组件引用 |
| 涉及语音/音乐/视频/设备控制/硬件 | 相册浏览、屏保取图、语音“看照片” |
| 删除后可能影响 | 相册浏览、屏保取图、语音“看照片” |
| A 类静态删除 | **需产品确认** |
| B 类禁用验证 | **可验证（整包）** |
| 证据等级 | 确定 —— APK 1.01 MB，但 oat 9.54 MB，整目录 10.56 MB |
### 优酷

| 项目 | 内容 |
|---|---|
| 桌面显示名称 | 优酷 |
| 实际包名 | `com.ailabs.youku.iot` |
| 分区 | system |
| APK 路径 | `/system/app/AliVideoPlayer/AliVideoPlayer.apk` |
| APK 文件大小 | 10.98 MB |
| 是否存在独立 APK | 是 |
| 静态证据（卡片/组件） | launcher 内容卡 `source=youku_news`；播放组件被 smartapp 引用 |
| 涉及语音/音乐/视频/设备控制/硬件 | 原厂视频播放（点播/新闻/短视频/屏保） |
| 删除后可能影响 | 原厂视频播放（点播/新闻/短视频/屏保） |
| A 类静态删除 | ****必须保留**（视频链路）** |
| B 类禁用验证 | **禁止** |
| 证据等级 | 确定 —— rev5.2 撤销“可删除”：它是原厂视频实现，详见 big4_component_review.md |
### 手势

| 项目 | 内容 |
|---|---|
| 桌面显示名称 | 手势 |
| 实际包名 | `com.alibaba.ailabs.ar.monitor` |
| 分区 | system |
| APK 路径 | `/system/app/GenieMonitor/GenieMonitor.apk` |
| APK 文件大小 | 33.19 MB |
| 是否存在独立 APK | 是 |
| 静态证据（卡片/组件） | 包内 `GenieGestureService`（`android.intent.action.geniegesture`），无 launcher 组件 |
| 涉及语音/音乐/视频/设备控制/硬件 | 手势/体感识别 + CMCC 媒体 + **视觉唤醒** + AVE 设备控制 Provider |
| 删除后可能影响 | 手势/体感识别 + CMCC 媒体 + **视觉唤醒** + AVE 设备控制 Provider |
| A 类静态删除 | ****必须保留整包**** |
| B 类禁用验证 | **禁止（整包）** |
| 证据等级 | 确定 —— rev5.2 统一结论：同包含唤醒与控制组件，解耦未证明；组件级只可评估 `GenieGestureService` |
### 菜谱

| 项目 | 内容 |
|---|---|
| 桌面显示名称 | 菜谱 |
| 实际包名 | `com.alibaba.ailabs.genie.cook` |
| 分区 | data |
| APK 路径 | `/data/app/com.alibaba.ailabs.genie.cook-Y0W26Dha2xaf2E1WkY6NpA==/base.apk` |
| APK 文件大小 | 未知（/data/app 不可读） |
| 是否存在独立 APK | 是 |
| 静态证据（卡片/组件） | /data/app 安装（launcher 组件 1 个） |
| 涉及语音/音乐/视频/设备控制/硬件 | 菜谱内容 |
| 删除后可能影响 | 菜谱内容 |
| A 类静态删除 | **不涉及 system 空间** |
| B 类禁用验证 | **需卸载（本轮不做）** |
| 证据等级 | 确定 —— APK 大小未知：/data/app 对 shell 不可读 |
### CCTV.新视听

| 项目 | 内容 |
|---|---|
| 桌面显示名称 | CCTV.新视听 |
| 实际包名 | `cn.cmvideo.car.play` |
| 分区 | data |
| APK 路径 | `/data/app/cn.cmvideo.car.play-ykAZIDU3kgd3zxegEua-EQ==/base.apk` |
| APK 文件大小 | 未知（/data/app 不可读） |
| 是否存在独立 APK | 是 |
| 静态证据（卡片/组件） | /data/app；launcher 卡片 `miguvideo4pad://miguvideo4pad?pkg=cn.cmvideo.car.play` |
| 涉及语音/音乐/视频/设备控制/硬件 | 第三方视频客户端 |
| 删除后可能影响 | 第三方视频客户端 |
| A 类静态删除 | **不涉及 system 空间** |
| B 类禁用验证 | **需卸载（本轮不做）** |
| 证据等级 | 较可信 —— 包名 + 卡片双向印证；APK 大小未知 |
### 儿童

| 项目 | 内容 |
|---|---|
| 桌面显示名称 | 儿童 |
| 实际包名 | `com.alibaba.ailabs.genie.children` |
| 分区 | system |
| APK 路径 | `/system/app/GenieChildren/GenieChildren.apk` |
| APK 文件大小 | 9.97 MB |
| 是否存在独立 APK | 是 |
| 静态证据（卡片/组件） | system/app，launcher HomeActivity，smartapp 16 处引用 |
| 涉及语音/音乐/视频/设备控制/硬件 | 儿童模式（界面 + 禁播时段 + 管控其他应用） |
| 删除后可能影响 | 儿童模式（界面 + 禁播时段 + 管控其他应用） |
| A 类静态删除 | **需产品确认（不得直接删）** |
| B 类禁用验证 | **可验证（整包）** |
| 证据等级 | 确定 —— 可回收 20.14 MB，见 big4_component_review.md |
### 智能家居

| 项目 | 内容 |
|---|---|
| 桌面显示名称 | 智能家居 |
| 实际包名 | `com.alibaba.ailabs.genie.iot` |
| 分区 | system |
| APK 路径 | `/system/app/GenieIoT/GenieIoT.apk` |
| APK 文件大小 | 12.23 MB |
| 是否存在独立 APK | 是 |
| 静态证据（卡片/组件） | system/app，launcher，smartapp `HouseService` 引用，快照 PSS 22,416 kB |
| 涉及语音/音乐/视频/设备控制/硬件 | 设备控制（IoT） |
| 删除后可能影响 | 设备控制（IoT） |
| A 类静态删除 | ****禁止**** |
| B 类禁用验证 | ****禁止**** |
| 证据等级 | 确定 —— 属设备控制链路，§六 保护 |
### 蚂蚁森林

| 项目 | 内容 |
|---|---|
| 桌面显示名称 | 蚂蚁森林 |
| 实际包名 | **未知（非独立 APK）** |
| 分区 | —（非 APK） |
| APK 路径 | — |
| APK 文件大小 | — |
| 是否存在独立 APK | 否 |
| 静态证据（卡片/组件） | launcher 卡片：`bizType=MINIAPP`，`targetUrl=waft://open?genieAppId=…&code=ant_forest&path=pages/index/index` |
| 涉及语音/音乐/视频/设备控制/硬件 | 支付宝小程序（Waft 容器） |
| 删除后可能影响 | 支付宝小程序（Waft 容器） |
| A 类静态删除 | **未知（非 APK）** |
| B 类禁用验证 | **未知** |
| 证据等级 | 较可信 —— 明确是小程序，不是安装包 |
### 设置

| 项目 | 内容 |
|---|---|
| 桌面显示名称 | 设置 |
| 实际包名 | `com.android.settings` |
| 分区 | system |
| APK 路径 | `/system/app/S1Settings/S1Settings.apk` |
| APK 文件大小 | 4.48 MB |
| 是否存在独立 APK | 是 |
| 静态证据（卡片/组件） | system/app/S1Settings，launcher 组件，framework 强依赖 |
| 涉及语音/音乐/视频/设备控制/硬件 | 系统设置 |
| 删除后可能影响 | 系统设置 |
| A 类静态删除 | ****禁止**** |
| B 类禁用验证 | ****禁止**** |
| 证据等级 | 确定 —— §六 保护 |
### 相机

| 项目 | 内容 |
|---|---|
| 桌面显示名称 | 相机 |
| 实际包名 | `com.alibaba.ailabs.genie.camera` |
| 分区 | data |
| APK 路径 | `/data/app/com.alibaba.ailabs.genie.camera-UeTOZTBElqLiL9Nv3eKTVg==/base.apk` |
| APK 文件大小 | 未知（/data/app 不可读） |
| 是否存在独立 APK | 是 |
| 静态证据（卡片/组件） | /data/app 安装（launcher 组件 1 个） |
| 涉及语音/音乐/视频/设备控制/硬件 | 拍照/看护联动 |
| 删除后可能影响 | 拍照/看护联动 |
| A 类静态删除 | **不涉及 system 空间** |
| B 类禁用验证 | **需卸载（本轮不做）** |
| 证据等级 | 确定 —— APK 大小未知 |
### 哔哩哔哩

| 项目 | 内容 |
|---|---|
| 桌面显示名称 | 哔哩哔哩 |
| 实际包名 | **未知（非独立 APK）** |
| 分区 | —（非 APK） |
| APK 路径 | — |
| APK 文件大小 | — |
| 是否存在独立 APK | 否 |
| 静态证据（卡片/组件） | launcher 卡片：`bizType=NATIVE`，`targetUrl=bilibili://tv.danmaku.bili`（`tv.danmaku.bili` **未安装**） |
| 涉及语音/音乐/视频/设备控制/硬件 | 第三方视频（当前为死链卡片） |
| 删除后可能影响 | 第三方视频（当前为死链卡片） |
| A 类静态删除 | **未知（非 APK）** |
| B 类禁用验证 | **未知** |
| 证据等级 | 较可信 —— 卡片指向未安装的第三方包，点击不可用 |

## 4. system 分区删除候选（有真实 APK/目录体积）

| 包 | 目录 | APK MB | lib MB | oat MB | 整目录 MB | 结论 | 可回收 MB |
|---|---|---|---|---|---|---|---|
| `com.alibaba.ailabs.ar.monitor` | `app/GenieMonitor` | 33.19 | 14.67 | 0.00 | 47.86 | 必须保留 | 0.0 |
| `com.ailabs.youku.iot` | `app/AliVideoPlayer` | 10.98 | 21.28 | 12.80 | 45.06 | 必须保留 | 0.0 |
| `com.alibaba.ailabs.genie.children` | `app/GenieChildren` | 9.97 | 2.76 | 7.40 | 20.14 | 待功能确认 | 20.14 |
| `com.alibaba.ailabs.genie.albums` | `app/GenieAlbums` | 1.01 | 0.00 | 9.54 | 10.56 | 待功能确认 | 10.56 |
| `com.ailabs.emode` | `app/Emode` | 6.11 | 0.00 | 4.53 | 10.64 | 不建议删除 | 10.64 |
| `com.aliyun.uuid` | `app/UUID` | 0.53 | 0.00 | 2.21 | 2.73 | 先禁用 | 2.73 |
| `com.alira.info` | `app/raShow` | 0.01 | 0.00 | 0.78 | 0.79 | 先禁用 | 0.79 |
| `com.alibaba.spkey` | `app/AliSpKey` | 0.10 | 0.00 | 0.03 | 0.13 | 先禁用 | 0.13 |
| `com.yunos.tv.provision` | `priv-app/AliProvision` | 0.01 | 0.00 | 0.03 | 0.03 | 先禁用 | 0.03 |
| `com.android.providers.userdictionary` | `app/UserDictionaryProvider` | 0.01 | 0.00 | 0.03 | 0.04 | 可静态删除 | 0.04 |

## 5. 第一批建议

### 5.1 第一批建议删除（system 分区）

**空。** 桌面可见的 system 应用全部与语音/视频/手势/设备控制耦合，本轮复核后连
`ar.monitor` 也退出候选；唯一低耦合的 `userdictionary` 只有 0.04 MB，且需先做用户态卸载验证。

### 5.2 第一批建议禁用验证（可逆）

- `com.android.statementservice`（0.08 MB）
- `com.android.bluetoothmidiservice`（0.04 MB）
- `com.android.pacprocessor`（0.03 MB）
- `com.android.vpndialogs`（0.04 MB）
- `com.android.captiveportallogin`（0.05 MB）
- `com.android.companiondevicemanager`（0.05 MB）

### 5.3 条件删除场景（功能确认 + 禁用验证后）

| 候选 | 需放弃的功能 | 整目录可回收 |
|---|---|---|
| `com.alibaba.ailabs.genie.children` | 儿童模式 | 20.14 MB |
| `com.alibaba.ailabs.genie.albums` | 相册 / 屏保取图 | 10.56 MB |
| 合计 | — | **30.7 MB** |

> rev5.1 曾把 `ar.monitor`（47.86 MB）与 `youku.iot`（45.06 MB）列入此表，rev5.2 已撤销：
> 前者含唤醒与设备控制组件，后者是原厂视频实现。

## 6. 明确禁止删除

- `com.alibaba.ailabs.genie.smartapp`（87.89 MB，D 类）
- `com.aligenie.ags`（2.32 MB，D 类）
- `com.alibaba.ailabs.genie.iot`（16.88 MB，D 类）
- `com.alibaba.ailabs.genie.launcher`（20.48 MB，D 类）
- `com.android.systemui`（6.19 MB，D 类）
- `com.android.settings`（10.08 MB，D 类）
- `com.android.webview`（52.00 MB，D 类）
- `com.alibaba.ailabs.genie.rtc`（9.05 MB，C 类）
- `com.ailabs.youku.iot`（45.06 MB，C 类）
- `com.alibaba.ailabs.genie.children`（20.14 MB，C 类）
- `com.alibaba.genie.waft`（5.56 MB，C 类）
- `com.alibaba.ailabs.genie.browser`（12.96 MB，C 类）
- `com.alibaba.ailabs.genie.albums`（10.56 MB，C 类）
- `com.alibaba.ailabs.genie.screensaver`（6.67 MB，C 类）
- `com.dangbei1.tvlauncher`（8.77）
- `bin.mt.plus`（设备侧）
- `com.estrongs.android.pop`（4.60）
- `com.web1n.permissiondog`（1.37）
- `com.shere.assistivetouch`（4.38）
- `com.topjohnwu.magisk`（10.76）

## 7. 收益汇总

| 口径 | 数值 | 说明 |
|---|---|---|
| 第一批禁用释放 system 空间 | **0 MB** | 禁用不改分区 |
| 唯一低风险静态删除 | **0.04 MB** | `userdictionary`，需卸载验证 |
| 条件删除上限 | **30.7 MB** | 儿童 20.14 + 相册 10.56 |
| `ar.monitor` / `youku.iot` | **0 MB** | 必须保留整包 |
| RAM / CPU 收益 | **无证据** | 桌面相关包快照均无进程；唯一实测项是 OTA（非桌面） |

## 8. 未解决

1. **旭慧生活**仍未知：launcher 云端卡片（运行时拉取）或运行时 `dumpsys` 才能确认；本地无静态命中。
2. `com.alibaba.ailabs.genie.contacts`、`tv.danmaku.bili`、`com.alibaba.ailabs.geniemarket` 三个卡片目标**均未安装**
   → “通话”“哔哩哔哩”“人教数字课堂”当前是死链/推广位，点击行为未实测。
3. `/data/app` 三个 APK 的大小未知（目录不可读）。
4. label 字符串仍未从 `resources.arsc` 直接读取；映射依据是包名 + launcher 组件 + 卡片 targetUrl。
