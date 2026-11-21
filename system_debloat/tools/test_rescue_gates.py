"""rev5.6 tests: rescue-capability corrections and the disable gate.

Covers the nine required checks:
  * USB vs TCP/IP ADB classification is never mixed up
  * both launchers are protected and never appear in A_candidate / B_disable
  * restore backups must correspond to the target package
  * whole-file XML restore is refused unconditionally
  * a temporary adb gap after reboot is not reported as a restore failure
  * restore requires state evidence before and after
  * no candidate is marked as allowed while Recovery is unverified
  * the six user-protected apps stay protected
"""
import json
import os
import re
import unittest

HERE = os.path.dirname(os.path.abspath(__file__))
DOC = os.path.normpath(os.path.join(HERE, '..'))
DB = os.path.join(DOC, 'device_baseline')
TOOLS = os.path.join(DOC, 'tools')

STATS = json.load(open(os.path.join(DOC, 'summary_stats.json'), encoding='utf-8'))
RESCUE = open(os.path.join(DB, 'rescue_capability.md'), encoding='utf-8').read()
RECOV = open(os.path.join(DB, 'recovery_plan.md'), encoding='utf-8').read()
LAUNCH = open(os.path.join(DB, 'launcher_and_boot.md'), encoding='utf-8').read()
CARDS = open(os.path.join(DB, 'candidate_operation_cards.md'), encoding='utf-8').read()
REVIEW = open(os.path.join(DB, 'rev54_55_state_review.md'), encoding='utf-8').read()

PROTECTED_SIX = ['com.dangbei1.tvlauncher', 'bin.mt.plus', 'com.estrongs.android.pop',
                 'com.web1n.permissiondog', 'com.shere.assistivetouch', 'com.topjohnwu.magisk']
LAUNCHERS = {
    'com.alibaba.ailabs.genie.launcher': 'com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity',
    'com.dangbei1.tvlauncher': 'com.dangbei1.tvlauncher/com.dangbei.launcher.ui.main.MainActivity',
}


def read_tool(name):
    with open(os.path.join(TOOLS, name), encoding='utf-8-sig') as fh:
        return fh.read()


class TestAdbTransportClassification(unittest.TestCase):
    def test_transport_helper_exists(self):
        t = read_tool('adb_transport.ps1')
        self.assertIn("'tcp'", t)
        self.assertIn("'usb'", t)
        self.assertIn("'unknown'", t)

    def test_tcp_serial_is_not_usb(self):
        t = read_tool('adb_transport.ps1')
        # the classifier must key on ':' before it ever looks at usb:
        self.assertRegex(t, r"if \(\$serial -match ':'")

    def test_rescue_doc_separates_transports(self):
        self.assertIn('192.168.1.9:5555', RESCUE)
        self.assertIn('TCP/IP', RESCUE)
        self.assertRegex(RESCUE, r'USB ADB 可用 \| \*\*unknown')

    def test_rescue_doc_does_not_call_tcp_usb(self):
        self.assertNotIn('USB ADB 可用 | **是**', RESCUE)
        self.assertNotIn('USB ADB：✅', RESCUE)

    def test_reboot_connectivity_marked_unknown(self):
        self.assertIn('unknown', RESCUE)
        for line in RESCUE.splitlines():
            if '重启后' in line:
                self.assertIn('unknown', line, line)

    def test_check_script_reports_both_channels(self):
        t = read_tool('check_device_state.ps1')
        self.assertIn('USB  在线设备数', t)
        self.assertIn('TCP  在线设备数', t)
        self.assertIn('USB 通道已验证', t)


class TestLauncherProtection(unittest.TestCase):
    def test_both_launchers_registered(self):
        crit = STATS['screening']['launcher_critical']
        self.assertEqual(set(crit), set(LAUNCHERS))

    def test_activities_are_exact(self):
        crit = STATS['screening']['launcher_critical']
        for pkg, comp in LAUNCHERS.items():
            self.assertEqual(crit[pkg]['activity'], comp)

    def test_launchers_not_delete_or_disable_candidates(self):
        e = STATS['executable_lists']
        for pkg in LAUNCHERS:
            self.assertNotIn(pkg, e['A_candidate'], pkg)
            self.assertNotIn(pkg, e['A_delete'], pkg)
            self.assertNotIn(pkg, e['B_disable'], pkg)
            self.assertNotIn(pkg, e['C_observe'], pkg)

    def test_launchers_in_a_forbidden_bucket(self):
        e = STATS['executable_lists']
        for pkg in LAUNCHERS:
            self.assertTrue(pkg in e['D_forbidden'] or pkg in e['protected_blocked'], pkg)

    def test_launcher_doc_states_protection(self):
        self.assertIn('D_forbidden', LAUNCH)
        self.assertIn('protected_blocked', LAUNCH)
        for comp in LAUNCHERS.values():
            self.assertIn(comp, LAUNCH)

    def test_user_and_system_protection_are_separate(self):
        self.assertIn('系统技术保护', LAUNCH)
        self.assertIn('用户保护', LAUNCH)


class TestRestoreScriptGuards(unittest.TestCase):
    def setUp(self):
        self.t = read_tool('restore_last_disabled.ps1')

    def test_confirm_package_mandatory(self):
        self.assertIn('[Parameter(Mandatory = $true)][string]$ConfirmPackage', self.t)

    def test_whole_file_backup_refused(self):
        self.assertIn("'<package-restrictions'", self.t)
        self.assertIn('整文件', self.t)

    def test_backup_must_match_target(self):
        self.assertIn('elemMatch', self.t)
        self.assertIn('与目标', self.t)

    def test_sha256_required(self):
        self.assertIn('-ExpectedSha256', self.t)
        self.assertIn('Get-FileHash', self.t)

    def test_other_packages_must_not_change(self):
        self.assertIn('beforeOthers', self.t)
        self.assertIn('afterOthers', self.t)
        self.assertIn('不允许影响其他应用状态', self.t)

    def test_exit_zero_is_not_success(self):
        self.assertIn('退出码 0', self.t)
        self.assertIn('不代表恢复成功', self.t)
        self.assertIn('CHECK-OK', self.t)

    def test_modes_present(self):
        for mode in ('CheckOnly', 'Enable', 'XmlElementRestore'):
            self.assertIn(mode, self.t)

    def test_protected_apps_refused(self):
        for pkg in PROTECTED_SIX:
            self.assertIn(pkg, self.t)
        self.assertIn('REFUSED', self.t)

    def test_no_disable_commands(self):
        for frag in ('pm disable-user', 'pm uninstall', 'pm clear', 'fastboot flash'):
            self.assertNotIn(frag, self.t)


class TestRebootPhaseHandling(unittest.TestCase):
    def test_verify_launcher_waits_and_returns_12(self):
        t = read_tool('verify_launcher.ps1')
        self.assertIn('-WaitSeconds', t)
        self.assertIn('DEVICE-NOT-BACK', t)
        self.assertIn('exit 12', t)

    def test_recovery_plan_documents_not_back(self):
        self.assertIn('DEVICE-NOT-BACK', RECOV)
        self.assertIn('12', RECOV)

    def test_state_evidence_required(self):
        self.assertIn('恢复前', read_tool('restore_last_disabled.ps1'))
        self.assertIn('dumpsys package', RECOV)


class TestCandidateGate(unittest.TestCase):
    def test_gate_is_blocked(self):
        gate = STATS['screening']['stage_gate']
        self.assertFalse(gate['device_disable_allowed'])
        self.assertIn('BLOCKED', gate['verdict'])

    def test_gate_lists_conditions(self):
        gate = STATS['screening']['stage_gate']
        self.assertGreaterEqual(len(gate['blocking_reasons']), 5)
        self.assertGreaterEqual(len(gate['unblock_conditions']), 6)

    def test_every_card_is_blocked(self):
        self.assertGreaterEqual(CARDS.count('BLOCKED'), 18)
        self.assertNotIn('| 15 是否允许进入下一阶段 | **允许', CARDS)

    def test_cards_do_not_offer_executable_disable(self):
        self.assertNotIn('sh /data/local/tmp/<pkg>_disable_apply.sh', CARDS)
        self.assertIn('不提供可执行命令', CARDS)

    def test_gate_matches_recovery_status(self):
        # Recovery is unverified, therefore the gate must stay closed.
        self.assertIn('未验证', RESCUE)
        self.assertFalse(STATS['screening']['stage_gate']['device_disable_allowed'])


class TestUserProtection(unittest.TestCase):
    def test_six_protected_still_present(self):
        apps = STATS['user_protection']['apps']
        self.assertEqual(len(apps), 6)
        names = {(a['package'] if isinstance(a, dict) else a) for a in apps}
        for pkg in PROTECTED_SIX:
            self.assertIn(pkg, names)

    def test_no_protected_in_execution_buckets(self):
        e = STATS['executable_lists']
        for pkg in PROTECTED_SIX:
            for bucket in ('A_delete', 'B_disable', 'C_observe', 'D_forbidden'):
                self.assertNotIn(pkg, e[bucket], '%s in %s' % (pkg, bucket))


class TestExperimentSafety(unittest.TestCase):
    def test_apply_and_revert_are_refusal_stubs(self):
        for name in ('iot_disable_apply.sh', 'iot_disable_revert.sh'):
            t = open(os.path.join(DOC, 'experiments', name), encoding='utf-8').read()
            self.assertIn('exit 3', t, name)
            self.assertIn('REFUSED', t, name)
            self.assertNotIn('reboot', t.replace('#', ''), name)
            self.assertNotIn('cp /data/system', t.replace('#', ''), name)

    def test_state_review_records_rollback(self):
        self.assertIn('enabled=0', REVIEW)
        self.assertIn('suspended=false', REVIEW)
        self.assertIn('语义上等于原始状态', REVIEW)

    def test_state_review_lists_leftover_files(self):
        for frag in ('pr_orig.xml', 'pr_new.xml', 'iot_disable_apply.sh', 'iot_disable_revert.sh'):
            self.assertIn(frag, REVIEW)


if __name__ == '__main__':
    unittest.main(verbosity=2)
