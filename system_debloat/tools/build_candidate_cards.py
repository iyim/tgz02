"""Generate device_baseline/candidate_operation_cards.md (rev5.3).

Every card is data-driven from package_inventory.json / component_inventory.json /
dependency_edges.csv, with hand-authored risk text. No device command is executed here;
the cards only contain commands for a later, separately authorised stage.
"""
import csv
import json
import os
import sys

DOC = r'D:\tgz02\OS\system\system_debloat'
DB = os.path.join(DOC, 'device_baseline')

pkgs = {p['package_name']: p for p in json.load(open(os.path.join(DB, 'package_inventory.json'), encoding='utf-8'))['packages']}
comps = {p['package']: p for p in json.load(open(os.path.join(DB, 'component_inventory.json'), encoding='utf-8'))['packages']}
edges = list(csv.DictReader(open(os.path.join(DOC, 'dependency_edges.csv'), encoding='utf-8-sig')))

sys.path.insert(0, os.path.join(DOC, 'tools'))
import screening

NAME = {
    'com.alibaba.ailabs.genie.children': '儿童模式',
    'com.alibaba.ailabs.genie.albums': '相册',
    'com.android.providers.userdictionary': 'AOSP 用户词典 Provider',
    'com.alibaba.spkey': 'SpKey',
    'com.alira.info': 'raService',
    'com.aliyun.uuid': 'UUID 注册',
    'com.yunos.tv.provision': '开通/清关',
    'com.ailabs.emode': '工厂 MMI / 老化模式',
    'com.android.statementservice': 'App Links 断言服务',
    'com.android.bluetoothmidiservice': '蓝牙 MIDI',
    'com.android.pacprocessor': 'PAC 代理脚本',
    'com.android.vpndialogs': 'VPN 授权对话框',
    'com.android.captiveportallogin': '强制门户登录页',
    'com.android.companiondevicemanager': '伴随设备管理',
    'com.alibaba.ailabs.genie.osupdate': '系统升级',
    'com.alibaba.ailabs.genie.guide': '使用引导',
    'com.android.storagemanager': '存储管理器',
    'com.android.mtp': 'MTP 文件传输',
}

RISK = {
    'com.alibaba.ailabs.genie.children': ('儿童模式界面/禁播时段/应用管控全部失效；smartapp 的 16 处儿童技能引用会报错',
                                          '中高', '高：与 smartapp 强耦合，需回归语音'),
    'com.alibaba.ailabs.genie.albums': ('相册浏览、屏保取图、语音“看照片”失效', '中', '中：screensaver 引用其组件'),
    'com.android.providers.userdictionary': ('输入法用户词库不可用（本机无输入法场景，影响极低）', '低', '低'),
    'com.alibaba.spkey': ('SpKey 相关校验可能失败（用途未确认）', '低', '低：仅 0.13 MB，证据不足'),
    'com.alira.info': ('raService 用途未确认', '低', '低：0.79 MB，证据不足'),
    'com.aliyun.uuid': ('UUID 注册/上报中断，可能影响云端账号绑定', '中', '中：BOOT_COMPLETED 接收器'),
    'com.yunos.tv.provision': ('开通/清关流程异常（如重置后无法重新开通）', '中', '中：0.03 MB，收益极低'),
    'com.ailabs.emode': ('工厂测试/老化模式不可用，影响返修与产线复测', '中', '低：不影响日常使用'),
    'com.android.statementservice': ('App Links 校验失败，第三方链接可能改为弹选择框', '低', '低'),
    'com.android.bluetoothmidiservice': ('蓝牙 MIDI 设备不可用（无此场景）', '低', '低'),
    'com.android.pacprocessor': ('PAC 代理脚本不生效（无此场景）', '低', '低'),
    'com.android.vpndialogs': ('VPN 授权对话框缺失，无法确认 VPN 连接', '低', '低'),
    'com.android.captiveportallogin': ('公共 Wi-Fi 强制门户登录页不可用', '低', '低'),
    'com.android.companiondevicemanager': ('伴随设备（手表/耳机）配对管理缺失', '低', '低'),
    'com.alibaba.ailabs.genie.osupdate': ('OTA 升级入口失效；实测其进程常驻 CPU 21.5%、PSS 16.5 MB', '中', '中：见 OTA 报告'),
    'com.alibaba.ailabs.genie.guide': ('首次使用引导缺失', '低', '低'),
    'com.android.storagemanager': ('存储清理界面缺失（可用第三方替代）', '低', '低'),
    'com.android.mtp': ('USB 连接电脑不再以 MTP 方式暴露文件', '低', '低：会影响刷机取文件'),
}


def refs(pkg):
    out = []
    for e in edges:
        if e['target_package'] == pkg and e['evidence_class'] == 'app':
            out.append('`%s` ← `%s`（%s）' % (e['token'].split('.')[-1], e['source_package'], e['kind']))
    return out


def card(pkg, stage_ok, extra_note=''):
    p = pkgs.get(pkg, {})
    c = comps.get(pkg, {})
    name = NAME.get(pkg, pkg)
    impact, risk, rollback = RISK.get(pkg, ('未知', '未知', '未知'))
    comp_lines = []
    for comp in (c.get('components') or [])[:8]:
        comp_lines.append('`%s`（%s，exported=%s，actions=%s）'
                          % (comp['name'].split('.')[-1], comp['kind'],
                             'yes' if comp['exported'] else 'no',
                             ', '.join(a.split('.')[-1] for a in comp['intent_actions'][:2]) or '—'))
    r = refs(pkg)
    return f"""### {name}（`{pkg}`）

| 项 | 值 |
|---|---|
| 1 应用名称 | {name} |
| 2 包名 | `{pkg}` |
| 3 APK 路径 | `{p.get('code_path')}` |
| 4 版本 | {p.get('version_name')}（code {p.get('version_code')}） |
| 5 当前启用状态 | {p.get('enabled_state_name')}（enabled={p.get('enabled_state')}），suspended={p.get('user_state', {}).get('0', {}).get('suspended')} |
| 6 组件 | 共 {c.get('component_total', 'unknown')} 个；前 8：<br>{'<br>'.join(comp_lines) if comp_lines else 'unknown（不在镜像 inventory）'} |
| 7 依赖关系 | {('<br>'.join(r) if r else '无 app 级入向引用（不等于无依赖）')} |
| 8 可能影响的功能 | {impact} |
| 9 禁用前检查 | ① `pm list packages -d` 为空 ② 记录默认 HOME ③ 备份 `package-restrictions.xml` 并记 sha256 ④ `su -c id` = root ⑤ 当贝桌面处于启用 ⑥ 无线 5555 在监听 |
| 10 禁用命令 | 本固件 `pm disable-user` 被裁剪，须用原子脚本（写 XML + 立即重启）：<br>`adb shell su -c 'sh /data/local/tmp/<pkg>_disable_apply.sh'`<br>脚本模板见 `../experiments/iot_disable_apply.sh` |
| 11 恢复命令 | `adb shell su -c 'sh /data/local/tmp/<pkg>_disable_revert.sh'`<br>或 `adb shell su -c 'pm enable {pkg}'`（`enable` 子命令存在，未实测） |
| 12 重启后检查 | `dumpsys package {pkg} | grep -E 'enabled=|suspended='`、`ps -A | grep {pkg.split('.')[-1]}`、`logcat -b crash -d`、`pm list packages -d` |
| 13 桌面异常恢复 | `am start -n com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity` → 不行则 `cmd package set-home-activity --user 0 com.dangbei1.tvlauncher/com.dangbei.launcher.ui.main.MainActivity` |
| 14 失败判据 | ① 重启后 system_server 未起（`adb devices` 无设备） ② 连续崩溃日志指向本包 ③ 桌面/语音回归失败且 15 分钟内无法恢复 |
| 15 是否允许进入下一阶段 | **{stage_ok}** |

风险等级：{risk}；回滚难度：{rollback}。{extra_note}
"""


ORDER = [
    ('com.alibaba.ailabs.genie.children', '有条件允许：需先完成“放弃儿童模式”确认，并单独授权'),
    ('com.alibaba.ailabs.genie.albums', '有条件允许：需先确认屏保取图可放弃'),
    ('com.android.providers.userdictionary', '允许（最低风险，但收益仅 0.04 MB）'),
    ('com.aliyun.uuid', '允许先做“禁用观察”，不建议删除'),
    ('com.alira.info', '允许先做“禁用观察”（用途未确认）'),
    ('com.alibaba.spkey', '允许先做“禁用观察”（用途未确认）'),
    ('com.yunos.tv.provision', '允许但收益极低（0.03 MB）'),
    ('com.ailabs.emode', '不建议（影响返修），仅记录'),
    ('com.android.statementservice', '允许（B 类第一批）'),
    ('com.android.bluetoothmidiservice', '允许（B 类第一批）'),
    ('com.android.pacprocessor', '允许（B 类第一批）'),
    ('com.android.vpndialogs', '允许（B 类第一批）'),
    ('com.android.captiveportallogin', '允许（B 类第一批）'),
    ('com.android.companiondevicemanager', '允许（B 类第一批）'),
    ('com.alibaba.ailabs.genie.osupdate', '允许（B 类第二批，需验证 OTA 后果）'),
    ('com.alibaba.ailabs.genie.guide', '允许（B 类第二批）'),
    ('com.android.storagemanager', '允许（B 类第二批）'),
    ('com.android.mtp', '允许（B 类第二批，注意会影响 USB 取文件）'),
]

cards = '\n'.join(card(p, ok) for p, ok in ORDER)

md = f"""# 候选操作卡（rev5.3）

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

{cards}

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
"""
open(os.path.join(DB, 'candidate_operation_cards.md'), 'w', encoding='utf-8').write(md)
print('candidate_operation_cards.md written', len(md))
