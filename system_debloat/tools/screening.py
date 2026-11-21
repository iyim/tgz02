"""rev5 screening data: B-class answers, extended A-class static candidates, batches.

Everything here is authored from evidence already in the repository:
  * app_inventory.json      - sizes, components, permissions, PSS, dir
  * dependency_edges.csv    - app-level inbound references (denoised)
  * framework vdex scan     - platform-side citations (class/action names)
  * b_class_priority_analysis.md / ota_observation_report.md - runtime facts

Rules:
  * a package is never called "unused" because a scan found no reference;
  * sizes are storage facts, never RAM;
  * "disable" never frees system space and "delete" is never the first step;
  * the six user-protected apps and the factory voice chain are out of scope.
"""

# ---------------------------------------------------------------- B-class: seven answers
# keys: necessary / refs / dependents / impact / pm_disable / priority / risk
B_ANSWERS = {
    'com.alibaba.ailabs.genie.osupdate': dict(
        role='OTA/FOTA 升级代理（system uid、persistent）',
        necessary='否：不是 Android 运行必需组件，但承担厂商升级链路',
        refs='是：S1Settings→`front.UpdateActivity` + `FOTA_UPDATE`（2 处，静态）；framework→`front.RebootUpdateActivity`',
        dependents='无 App 反向依赖；但设置页“系统更新”入口依赖它',
        impact='设置页系统更新不可用、FOTA 广播无人接收、framework 重启升级流程失效',
        pm_disable='可以（`pm disable-user`）；恢复需 `pm enable` + 重启一次（persistent）',
        priority='第二批（有实测 CPU 收益，但兼容风险最高）',
        risk='高',
        evidence='rev4.1 六小时观测：均值 21.53% CPU、PSS 中位 16,557 kB、UpdateService 73/73 常驻；'
                 'system uid + INSTALL_PACKAGES/REBOOT/MASTER_CLEAR',
    ),
    'com.alibaba.ailabs.genie.guide': dict(
        role='首次开机引导 / 网络与账号设置向导（system uid）',
        necessary='否：一次性向导，设备已过引导阶段',
        refs='无 app 级入向引用；framework 0 命中',
        dependents='无；但恢复出厂后首启流程依赖它',
        impact='首次开机引导、Wi-Fi 添加、扫码/账号绑定入口不可用',
        pm_disable='可以（`pm disable-user`）；恢复出厂前须 `pm enable`',
        priority='第二批（存储驱动：5.42 MB 需删除才释放）',
        risk='中',
        evidence='Manifest：8 Activity + Provider `SecondInstaller`；快照无进程；`NETWORK_SETUP_WIZARD` 权限',
    ),
    'com.android.bluetoothmidiservice': dict(
        role='BLE-MIDI 服务',
        necessary='否：AOSP 可选外设服务',
        refs='framework 按类名绑定：`com.android.bluetoothmidiservice.BluetoothMidiService`（2 处命中）',
        dependents='无',
        impact='仅 BLE-MIDI 外设；本机无 MIDI 设备记录',
        pm_disable='可以',
        priority='第一批（低风险、功能独立）',
        risk='低',
        evidence='1 个 Service、无进程、无 app 级引用；framework 明确点名该类',
    ),
    'com.android.captiveportallogin': dict(
        role='强制门户登录页（酒店/机场 Wi-Fi）',
        necessary='否：按需拉起的 UI',
        refs='framework 按 action `android.net.conn.CAPTIVE_PORTAL` 拉起；vdex 0 命中',
        dependents='无',
        impact='需要网页认证的 Wi-Fi 无法完成登录（普通 Wi-Fi 不受影响）',
        pm_disable='可以',
        priority='第一批（低风险、功能独立）',
        risk='低',
        evidence='1 个 Activity、无进程、无 app 级引用',
    ),
    'com.android.companiondevicemanager': dict(
        role='伴生设备配对（BLE 配对引导）',
        necessary='否：AOSP 可选',
        refs='framework 包名命中 1 处；导出 `DeviceDiscoveryService`',
        dependents='无',
        impact='伴生设备（手表/耳机类）配对入口不可用',
        pm_disable='可以',
        priority='第一批（低风险、功能独立）',
        risk='低',
        evidence='2 个组件、无进程、无 app 级引用',
    ),
    'com.android.pacprocessor': dict(
        role='PAC 代理脚本解析服务',
        necessary='否：仅在配置 PAC 代理时需要',
        refs='framework 按类名绑定：`com.android.pacprocessor.PacService`（2 处命中）',
        dependents='无',
        impact='PAC 代理不可用（不使用 PAC 则无影响）',
        pm_disable='可以',
        priority='第一批（低风险、功能独立）',
        risk='低',
        evidence='1 个导出 Service、无进程、无 app 级引用',
    ),
    'com.android.mtp': dict(
        role='MTP / 文档提供者（USB 连 PC 传文件）',
        necessary='否：AOSP 可选，但设备常用功能',
        refs='framework 按组件名绑定 `MtpDocumentsProvider`（DOCUMENTS_PROVIDER）；USB_ATTACHED 接收器',
        dependents='无 app 级引用',
        impact='USB 连 PC 后无法浏览文件（只能用 adb 传）',
        pm_disable='可以',
        priority='第二批（功能影响明确，需你确认不用 USB 传输）',
        risk='低-中',
        evidence='4 个组件（含导出 Provider + USB 接收器）、无进程',
    ),
    'com.android.statementservice': dict(
        role='App Links 数字资产校验',
        necessary='否：仅在安装/验证 App Links 时被绑定',
        refs='PackageManager 按 action `INTENT_FILTER_NEEDS_VERIFICATION` 绑定；vdex 0 命中',
        dependents='无',
        impact='http/https 深度链接校验失效（已装应用内跳转一般不受影响）',
        pm_disable='可以',
        priority='第一批（低风险、功能独立）',
        risk='低',
        evidence='2 个组件、无进程、无 app 级引用',
    ),
    'com.android.storagemanager': dict(
        role='存储管理 UI（低存储告警 / 清理建议）',
        necessary='否：AOSP 可选 UI',
        refs='无 app 级引用；vdex 0 命中',
        dependents='无',
        impact='低存储告警与“释放空间”入口不可用',
        pm_disable='可以',
        priority='第二批（存储驱动：2.32 MB 需删除才释放）',
        risk='低',
        evidence='BOOT_COMPLETED 接收器（开机会被拉起一次，未测量）、JobService、2 Activity；无进程',
    ),
    'com.android.vpndialogs': dict(
        role='VPN 授权 / 管理对话框',
        necessary='否：按需拉起的 UI',
        refs='framework 按类名绑定 `com.android.vpndialogs.ManageDialog`（2 处命中）',
        dependents='无',
        impact='VPN 客户端首次连接无法弹出授权（不使用 VPN 则无影响）',
        pm_disable='可以',
        priority='第一批（低风险、功能独立）',
        risk='低',
        evidence='2 个 Activity、无进程、无 app 级引用',
    ),
}

# ---------------------------------------------------------------- extended A-class static candidates
# keys: dir / apk_mb / total_mb / role / direct / indirect / impact / vendor_refs / risk / verdict
STATIC_CANDIDATES = {
    'com.alibaba.spkey': dict(
        dir='app/AliSpKey', apk_mb=0.10, total_mb=0.13,
        role='安全密钥服务（AliSpKey，system uid）',
        direct='无 app 级入向引用',
        indirect='无 App 引用；framework 0 命中；无 BOOT、无进程',
        impact='未知：若语音/支付链路通过未公开 action 使用它，禁用后相关能力可能静默失效',
        vendor_refs='静态扫描未发现；**不能据此认定未使用**',
        risk='中（业务用途不明，0 引用≠无用）',
        verdict='进入待验证（先禁用观察，不做静态删除）',
    ),
    'com.alira.info': dict(
        dir='app/raShow', apk_mb=0.01, total_mb=0.79,
        role='`raService` + `DreamerReceiver`（`com.alira.info.raService.dream`），system uid',
        direct='无 app 级入向引用',
        indirect='framework 0 命中；无 BOOT、无进程；持有 SYSTEM_ALERT_WINDOW / WRITE_SECURE_SETTINGS',
        impact='未知：名称与组件形态提示“推荐/展示”类能力，但未取得代码级证据',
        vendor_refs='静态扫描未发现；**不能据此认定未使用**',
        risk='中（业务用途不明）',
        verdict='进入待验证（禁用观察），不作为第一批删除',
    ),
    'com.aliyun.uuid': dict(
        dir='app/UUID', apk_mb=0.53, total_mb=2.73,
        role='设备 UUID 注册（`RegistUUIDService` + BOOT 接收器，system uid）',
        direct='无 app 级入向引用',
        indirect='framework 包名命中 1 处；BOOT_COMPLETED 接收器；无进程',
        impact='厂商云侧设备注册/统计可能失效；若语音技能依赖设备 UUID，可能出现账号相关异常',
        vendor_refs='framework 只出现包名（未命名具体类/action）',
        risk='中（注册类服务，影响面偏云侧但无法排除本地调用）',
        verdict='进入待验证（禁用观察），不作为第一批删除',
    ),
    'com.yunos.tv.provision': dict(
        dir='priv-app/AliProvision', apk_mb=0.01, total_mb=0.03,
        role='阿里 TV 开通/授权（`com.yunos.intent.clearance`，priv-app）',
        direct='无 app 级入向引用',
        indirect='framework 包名命中 1 处；无 BOOT、无进程',
        impact='开通/清关类流程可能不可用；日常使用无表现',
        vendor_refs='framework 只出现包名',
        risk='低-中（priv-app + 一次性流程）',
        verdict='进入待验证（禁用观察）',
    ),
    'com.android.providers.userdictionary': dict(
        dir='app/UserDictionaryProvider', apk_mb=0.01, total_mb=0.04,
        role='用户词典 Provider（AOSP，`content://user_dictionary`）',
        direct='无 app 级入向引用',
        indirect='framework 0 命中；无 BOOT、无进程',
        impact='输入法无法读写自定义词库（本机输入法为 GooglePinyin 之外的方案时无影响）',
        vendor_refs='无',
        risk='低（AOSP 标准件，但收益仅 0.04 MB）',
        verdict='可进入静态删除验证（收益极小，优先级低）',
    ),
}

# ---------------------------------------------------------------- batches
BATCH1 = [  # 低风险、功能独立
    'com.android.statementservice',
    'com.android.bluetoothmidiservice',
    'com.android.pacprocessor',
    'com.android.vpndialogs',
    'com.android.captiveportallogin',
    'com.android.companiondevicemanager',
]

BATCH2 = [  # 需验证 / 需你确认功能取舍
    'com.alibaba.ailabs.genie.osupdate',
    'com.alibaba.ailabs.genie.guide',
    'com.android.storagemanager',
    'com.android.mtp',
]

STATIC_DELETE = [
    'com.android.providers.userdictionary',
]

VERIFY_FIRST = [  # 先禁用观察，确认无影响后才谈删除
    'com.aliyun.uuid',
    'com.alira.info',
    'com.alibaba.spkey',
    'com.yunos.tv.provision',
]

FORBIDDEN_NOTE = {
    'com.alibaba.ailabs.ar.monitor':
        '47.86 MB（`app/GenieMonitor`）：服务含 `geniegesture` / `genieallinone` / CMCC 媒体，'
        '被 smartapp 引用且 framework 命中；**手势/体感是否在用未验证** → 只能作为“待验证禁用”候选，不得静态删除',
    'com.alibaba.ailabs.genie.aicare':
        '18.50 MB：`/data/app` 覆盖的系统 prebuilt（4.0.26→4.0.62），删除会让包退化为普通应用 → 不删',
    'com.alipay.arome.app':
        '87.18 MB：12 处 app 级引用（小程序/H5 容器），禁用它等于关闭小程序能力 → 需产品决策',
}

PROTECTED_CHAIN = [
    'com.alibaba.ailabs.genie.smartapp', 'com.aligenie.ags', 'com.alibaba.ailabs.genie.iot',
    'com.alibaba.ailabs.genie.launcher', 'com.android.systemui', 'com.android.settings',
    'com.android.webview', 'com.alibaba.ailabs.genie.rtc', 'com.ailabs.youku.iot',
    'com.alibaba.ailabs.genie.children', 'com.alibaba.genie.waft',
    'com.alibaba.ailabs.genie.browser', 'com.alibaba.ailabs.genie.albums',
    'com.alibaba.ailabs.genie.screensaver',
]

PROTECTED_SIX = [
    'com.dangbei1.tvlauncher', 'bin.mt.plus', 'com.estrongs.android.pop',
    'com.web1n.permissiondog', 'com.shere.assistivetouch', 'com.topjohnwu.magisk',
]


def answer(pkg):
    return B_ANSWERS.get(pkg)


def batch_of(pkg):
    if pkg in BATCH1:
        return 1
    if pkg in BATCH2:
        return 2
    if pkg in STATIC_DELETE:
        return 3
    if pkg in VERIFY_FIRST:
        return 4
    return None


def screening_fields(pkg):
    """Fields merged into app_inventory.json / .csv (rev5)."""
    if pkg in B_ANSWERS:
        return {'screening_tier': batch_of(pkg),
                'screening_batch': {1: '第一批低风险禁用', 2: '第二批待验证禁用'}.get(batch_of(pkg), ''),
                'screening_note': B_ANSWERS[pkg]['priority']}
    if pkg in STATIC_CANDIDATES:
        return {'screening_tier': batch_of(pkg),
                'screening_batch': {3: '静态删除候选', 4: '先禁用后评估'}.get(batch_of(pkg), ''),
                'screening_note': STATIC_CANDIDATES[pkg]['verdict']}
    return {'screening_tier': None, 'screening_batch': '', 'screening_note': ''}
