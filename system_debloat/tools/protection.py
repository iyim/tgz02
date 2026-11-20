"""User protection rules (rev3).

The operator named six apps that must be kept. Protection is a user decision that
overrides any static-analysis conclusion: a protected package may keep its technical
class (A/B/C/D) but must never appear on an executable debloat list.

All package names below were resolved from the actual inventory in
`../app_inventory.json` (manifest package names), not from app display names.
"""

PROTECTION_REASON = '用户明确指定保留，未经用户另行授权不得精简。'

# ---------------------------------------------------------------- six protected apps
# key = exact Android package name observed in the image / on the device
USER_PROTECTED = {
    'com.dangbei1.tvlauncher': {
        'label': '当贝桌面',
        'dir': 'app/dangbei.apk',
        'in_system_image': True,
        'tech_class': 'B',
        'evidence': 'system/app/dangbei.apk，Manifest package=com.dangbei1.tvlauncher v3.3.6；'
                    '设备 pm path 指向 /system/app/dangbei.apk，非默认 HOME',
    },
    'bin.mt.plus': {
        'label': 'MT 管理器',
        'dir': None,
        'in_system_image': False,
        'tech_class': None,
        'evidence': '系统镜像 app/ 与 priv-app/ 内无该 APK（55 个包清单不含 bin.mt.plus）；'
                    '设备 pm path 显示 /data/app/bin.mt.plus-xXCsOzsoTVa2gpDlsM2gnw==/base.apk，'
                    '属用户侧安装（pm list packages -3），不在 system 分区精简范围内',
    },
    'com.estrongs.android.pop': {
        'label': 'ES 文件管理器',
        'dir': 'app/ES.apk',
        'in_system_image': True,
        'tech_class': 'A',
        'evidence': 'system/app/ES.apk，Manifest package=com.estrongs.android.pop v3.2.5.5；'
                    '静态分析为 A 类候选（0 条 app 级入向引用），但受用户保护，从删除清单移除',
    },
    'com.web1n.permissiondog': {
        'label': '权限狗',
        'dir': 'app/qxg.apk',
        'in_system_image': True,
        'tech_class': 'B',
        'evidence': 'system/app/qxg.apk，Manifest package=com.web1n.permissiondog v0.1.0.45；'
                    '设备 pm path 指向 /system/app/qxg.apk',
    },
    'com.shere.assistivetouch': {
        'label': 'EasyTouch',
        'dir': 'app/easytouch.apk',
        'in_system_image': True,
        'tech_class': 'B',
        'evidence': 'system/app/easytouch.apk，Manifest package=com.shere.assistivetouch v4.6.1；'
                    '设备 flags 含 PERSISTENT，pm path 指向 /system/app/easytouch.apk',
    },
    'com.topjohnwu.magisk': {
        'label': 'Magisk',
        'dir': 'app/magisk.apk',
        'in_system_image': True,
        'tech_class': 'C',
        'evidence': 'system/app/magisk.apk（Manifest v25.2）；设备加载版本 27.0，'
                    'codePath=/data/app/com.topjohnwu.magisk-EuMSu4VItaK3widDq122zw==（UPDATED_SYSTEM_APP）',
    },
}

# ---------------------------------------------------------------- Magisk related components
# Only what could be confirmed from the image and read-only device queries is recorded.
# Nothing about the boot-ramdisk patching internals is inferred.
MAGISK_RELATED = [
    {
        'kind': 'apk', 'path': 'app/magisk.apk', 'package': 'com.topjohnwu.magisk',
        'in_system_image': True, 'size_bytes': 11278270,
        'evidence': '镜像内唯一与 Magisk 相关的文件；Manifest v25.2，设备实际加载 /data/app 版本 27.0',
    },
    {
        'kind': 'runtime-binary', 'path': '/sbin/magisk32', 'package': None,
        'in_system_image': False, 'size_bytes': 195148,
        'evidence': '设备 /sbin 为 Magisk tmpfs 挂载（/proc/mounts: "magisk /sbin tmpfs ..."），'
                    '该二进制不在 system 分区内，属 boot ramdisk 侧',
    },
    {
        'kind': 'runtime-binary', 'path': '/sbin/magiskinit', 'package': None,
        'in_system_image': False, 'size_bytes': 200736,
        'evidence': '同上；/sbin 内 root:root，权限 750',
    },
    {
        'kind': 'runtime-binary', 'path': '/sbin/magiskpolicy', 'package': None,
        'in_system_image': False, 'size_bytes': 222004,
        'evidence': '同上；SELinux 策略注入工具',
    },
    {
        'kind': 'symlink', 'path': '/sbin/magisk', 'package': None,
        'in_system_image': False, 'size_bytes': None,
        'evidence': '/sbin/magisk -> ./magisk32',
    },
    {
        'kind': 'runtime-dir', 'path': '/sbin/.magisk', 'package': None,
        'in_system_image': False, 'size_bytes': None,
        'evidence': '设备存在但 shell 用户无权限（Permission denied）；内容未读取',
    },
    {
        'kind': 'data-dir', 'path': '/data/adb', 'package': None,
        'in_system_image': False, 'size_bytes': None,
        'evidence': '设备存在，shell 用户 Permission denied；内容未读取（无 root shell，未做提权）',
    },
]

# System-image paths that were checked and found to contain NO Magisk artifacts.
MAGISK_ABSENT_IN_IMAGE = [
    'system/bin/su', 'system/xbin/su',
    'system/xbin/magisk*', 'system/bin/magisk*',
    'system/etc/init/*.rc 中的 magisk 条目', 'build.prop 中的 magisk 属性',
]

MAGISK_FORBIDDEN_ACTIONS = [
    '删除或替换 app/magisk.apk',
    '修改 boot.img / boot ramdisk（含 magiskinit 补丁、init 配置）',
    '删除 /sbin/magisk*、/sbin/.magisk',
    '清理 /data/adb',
    '清理 Magisk 模块目录或 denylist 配置',
    '把 Magisk 组件当作第三方残留处理',
]


def is_user_protected(package):
    return package in USER_PROTECTED


def protection_of(package):
    return USER_PROTECTED.get(package)


def protection_reason(package):
    return PROTECTION_REASON if is_user_protected(package) else None


def protected_packages():
    return sorted(USER_PROTECTED)


def magisk_protected_paths():
    return [c['path'] for c in MAGISK_RELATED]


def is_magisk_related(path_or_package):
    if path_or_package in (None, ''):
        return False
    if path_or_package == 'com.topjohnwu.magisk':
        return True
    p = str(path_or_package).replace('\\', '/').lower()
    return 'magisk' in p


def assert_no_protected(targets, context=''):
    """Raise when a protected package/path reaches an executable list.

    `targets` may hold package names or paths; anything Magisk-related is rejected too.
    """
    bad = []
    for t in targets:
        if is_user_protected(t) or is_magisk_related(t):
            bad.append(t)
    if bad:
        raise AssertionError('protected target(s) in executable list %s: %s' % (context, bad))
    return True
