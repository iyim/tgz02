"""rev5.3 tests: the read-only device baseline must stay complete and self-consistent.

Checks
  * package_inventory covers every package the device reported, with no silent gaps
  * unknown fields are explicitly null / 'unknown', never invented
  * launcher baseline names the real default HOME and the fallback launchers
  * component inventory / dependency graph expose the documented fields
  * recovery plan matches the real partition list and never marks Recovery as verified
  * the three PowerShell scripts exist, keep the protected list, and never auto-disable
"""
import json
import os
import re
import unittest

HERE = os.path.dirname(os.path.abspath(__file__))
DOC = os.path.normpath(os.path.join(HERE, '..'))
DB = os.path.join(DOC, 'device_baseline')
RAW = os.path.join(DB, 'raw')

inv = json.load(open(os.path.join(DB, 'package_inventory.json'), encoding='utf-8'))
core = json.load(open(os.path.join(DB, 'core_components.json'), encoding='utf-8'))
comp = json.load(open(os.path.join(DB, 'component_inventory.json'), encoding='utf-8'))
deps = json.load(open(os.path.join(DB, 'dependency_graph.json'), encoding='utf-8'))

LAUNCH = open(os.path.join(DB, 'launcher_and_boot.md'), encoding='utf-8').read()
RESCUE = open(os.path.join(DB, 'rescue_capability.md'), encoding='utf-8').read()
RECOV = open(os.path.join(DB, 'recovery_plan.md'), encoding='utf-8').read()
CARDS = open(os.path.join(DB, 'candidate_operation_cards.md'), encoding='utf-8').read()
PKGMD = open(os.path.join(DB, 'package_inventory.md'), encoding='utf-8').read()

TOOLS = os.path.join(DOC, 'tools')
PROTECTED = ['com.dangbei1.tvlauncher', 'bin.mt.plus', 'com.estrongs.android.pop',
             'com.web1n.permissiondog', 'com.shere.assistivetouch', 'com.topjohnwu.magisk']


def pm_count(name):
    n = 0
    for line in open(os.path.join(RAW, name), encoding='utf-8', errors='replace'):
        if line.startswith('package:'):
            n += 1
    return n


class TestPackageInventory(unittest.TestCase):
    def test_every_device_package_present(self):
        self.assertEqual(inv['counts']['total'], pm_count('pm_list_f_i_U.txt'))
        self.assertEqual(len(inv['packages']), inv['counts']['total'])
        names = {p['package_name'] for p in inv['packages']}
        self.assertEqual(len(names), len(inv['packages']), 'duplicate package rows')

    def test_system_and_third_party_counts(self):
        self.assertEqual(inv['counts']['system'], pm_count('pm_system.txt'))
        self.assertEqual(inv['counts']['third_party'], pm_count('pm_thirdparty.txt'))
        self.assertEqual(inv['counts']['disabled'], pm_count('pm_disabled.txt'))
        self.assertEqual(inv['counts']['disabled'], 0)

    def test_required_fields_present(self):
        need = ('package_name', 'code_path', 'version_name', 'version_code', 'uid', 'installer',
                'is_system', 'is_privileged', 'enabled_state', 'user_state', 'apk_size',
                'directory_size', 'shared_uid', 'split_apks', 'label')
        for p in inv['packages']:
            for k in need:
                self.assertIn(k, p, '%s missing %s' % (p['package_name'], k))

    def test_label_is_unknown_not_guessed(self):
        for p in inv['packages']:
            self.assertIsNone(p['label'], p['package_name'])
            self.assertIn('unknown', p['label_note'])

    def test_sizes_are_numbers_or_explicit_null(self):
        for p in inv['packages']:
            if p['apk_size'] is not None:
                self.assertIsInstance(p['apk_size'], int)
                self.assertGreater(p['apk_size'], 0)
            if p['directory_size'] is not None:
                self.assertGreaterEqual(p['directory_size'], p['apk_size'] or 0)

    def test_data_app_not_counted_as_system(self):
        # an updated system app can live in /data and still be a system package (aicare),
        # so only the reverse direction is asserted.
        for p in inv['packages']:
            if not p['is_system']:
                self.assertTrue(p['code_path'].startswith('/data/'), p['package_name'])

    def test_privileged_only_from_priv_app(self):
        for p in inv['packages']:
            if p['is_privileged']:
                self.assertIn('/priv-app/', p['code_path'], p['package_name'])

    def test_markdown_has_unknown_section(self):
        self.assertIn('未知项', PKGMD)
        self.assertIn('label', PKGMD)


class TestLauncherBaseline(unittest.TestCase):
    def test_default_home_recorded(self):
        self.assertIn('com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity', LAUNCH)
        self.assertIn('com.alibaba.ailabs.genie.launcher', LAUNCH)

    def test_alternatives_recorded(self):
        for frag in ('com.dangbei1.tvlauncher/com.dangbei.launcher.ui.main.MainActivity',
                     'com.android.settings/.FallbackHome',
                     'com.alibaba.ailabs.genie.smartapp',
                     'BootHomeActivity'):
            self.assertIn(frag, LAUNCH, frag)

    def test_protected_app_named_as_backup_launcher(self):
        self.assertIn('当贝桌面', LAUNCH)
        self.assertIn('保护', LAUNCH)

    def test_adb_launch_and_recovery_documented(self):
        self.assertIn('am start -n com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity', LAUNCH)
        self.assertIn('set-home-activity', LAUNCH)
        self.assertIn('未验证', LAUNCH)


class TestCoreAndComponents(unittest.TestCase):
    def test_voice_chain_mapped(self):
        pkgs = {f['package'] for f in core['functions']}
        for p in ('com.aligenie.ags', 'com.alibaba.ailabs.genie.smartapp'):
            self.assertIn(p, pkgs)

    def test_native_libs_attributed(self):
        md = open(os.path.join(DB, 'core_components.md'), encoding='utf-8').read()
        for lib in ('libsmartbox.so', 'libaceAsr.so', 'libvad_api.so', 'libwakeup_bin_S1.so',
                    'libaligenie_ic.so'):
            self.assertIn(lib, md, lib)

    def test_components_have_required_fields(self):
        for p in comp['packages']:
            for c in p['components']:
                for k in ('kind', 'name', 'exported', 'permission', 'intent_actions'):
                    self.assertIn(k, c)

    def test_component_total_matches(self):
        for p in comp['packages']:
            self.assertEqual(p['component_total'], len(p['components']), p['package'])

    def test_data_only_package_is_flagged(self):
        for p in comp['packages']:
            if not p['in_image']:
                self.assertIn('unknown', p['note'])


class TestDependencyGraph(unittest.TestCase):
    def test_edges_have_fields(self):
        for e in deps['edges'][:50]:
            for k in ('source_package', 'target_package', 'target_component',
                      'dependency_type', 'evidence', 'confidence', 'impact_if_disabled'):
                self.assertIn(k, e)
        self.assertEqual(deps['edge_count'], len(deps['edges']))
        self.assertGreater(deps['edge_count'], 0)

    def test_no_sdk_noise(self):
        for e in deps['edges']:
            self.assertNotIn('sdk_noise', e['dependency_type'])

    def test_confidence_is_labelled(self):
        allowed = {'high', 'low', 'unknown'}
        for e in deps['edges']:
            self.assertIn(e['confidence'], allowed)


class TestRescueAndRecovery(unittest.TestCase):
    def test_adb_facts(self):
        self.assertIn('ro.adb.secure=1', RESCUE)
        self.assertIn('5555', RESCUE)
        self.assertIn('uid=0', RESCUE)

    def test_recovery_is_not_claimed_verified(self):
        self.assertIn('未验证', RESCUE)
        self.assertNotIn('Recovery ADB 可用', RESCUE)
        # every recovery-ADB row must be marked unverified
        for line in RESCUE.splitlines():
            if 'Recovery' in line and 'ADB' in line and '|' in line:
                self.assertTrue(('未验证' in line) or ('未' in line), line)

    def test_partition_table_matches_backups(self):
        raw = open(os.path.join(RAW, 'backup_hashes.txt'), encoding='utf-8-sig').read()
        backups = {ln.split('|')[0].lstrip('\ufeff'): int(ln.split('|')[1]) for ln in raw.strip().splitlines()}
        self.assertEqual(len(backups), 23)
        for name, size in backups.items():
            self.assertIn('ori/' + name, RECOV)
        self.assertIn('1,023,410,176', RECOV)
        self.assertIn('preloader', RECOV.lower())

    def test_no_direct_flash_command(self):
        self.assertIn('不列出可直接执行的刷写命令', RECOV)


class TestCandidateCards(unittest.TestCase):
    def test_card_count_and_fields(self):
        self.assertGreaterEqual(CARDS.count('\n### '), 18)
        for field in ('1 应用名称', '2 包名', '3 APK 路径', '4 版本', '5 当前启用状态', '6 组件',
                      '7 依赖关系', '8 可能影响的功能', '9 禁用前检查', '10 禁用命令', '11 恢复命令',
                      '12 重启后检查', '13 桌面异常恢复', '14 失败判据', '15 是否允许进入下一阶段'):
            self.assertIn(field, CARDS, field)

    def test_protected_apps_absent(self):
        for pkg in PROTECTED:
            self.assertNotIn('### ' + pkg, CARDS)
            self.assertNotIn('(`%s`)' % pkg, CARDS)

    def test_cards_do_not_claim_execution(self):
        self.assertIn('本轮只写卡，不执行任何命令', CARDS)


class TestScripts(unittest.TestCase):
    def _read(self, name):
        with open(os.path.join(TOOLS, name), encoding='utf-8-sig') as fh:
            return fh.read()

    def test_scripts_exist(self):
        for name in ('check_device_state.ps1', 'restore_last_disabled.ps1', 'verify_launcher.ps1'):
            self.assertTrue(os.path.isfile(os.path.join(TOOLS, name)), name)

    def test_restore_requires_confirmation(self):
        t = self._read('restore_last_disabled.ps1')
        self.assertIn('[Parameter(Mandatory = $true)][string]$ConfirmPackage', t)
        self.assertIn('$PROTECTED', t)
        for pkg in PROTECTED:
            self.assertIn(pkg, t, pkg)

    def test_no_auto_disable_or_wipe(self):
        banned = ('pm disable-user', 'pm disable ', 'pm uninstall', 'pm clear',
                  'fastboot flash', 'fastboot erase', 'fastboot -w')
        for name in ('check_device_state.ps1', 'restore_last_disabled.ps1', 'verify_launcher.ps1'):
            t = self._read(name)
            for frag in banned:
                self.assertNotIn(frag, t, '%s contains %s' % (name, frag))

    def test_restore_handles_adb_offline(self):
        t = self._read('restore_last_disabled.ps1')
        self.assertIn('adb 没有处于 device 状态的设备', t)

    def test_restore_has_restrictions_path(self):
        t = self._read('restore_last_disabled.ps1')
        self.assertIn('-ViaRestrictions', t)
        self.assertIn('package-restrictions.xml', t)


if __name__ == '__main__':
    unittest.main(verbosity=2)
