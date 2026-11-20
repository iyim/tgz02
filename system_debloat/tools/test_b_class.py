"""rev4 tests: the B-class priority document must match the data and claim nothing extra.

Checks:
  * the analysed set equals `executable_lists.B_disable` (10 packages, no drift);
  * every candidate has a section and appears in the ranking table;
  * no user-protected package is proposed as a candidate;
  * the document keeps the three guard-rails (APK size != RAM, single CPU snapshot,
    no inbound reference != safe) and the OTA section answers the required questions;
  * the plan no longer offers a disable command for the 7 zero-benefit components.

Run: python -m unittest test_b_class -v
"""
import csv
import json
import os
import re
import unittest

HERE = os.path.dirname(os.path.abspath(__file__))

CANDIDATES = [
    'com.alibaba.ailabs.genie.osupdate',
    'com.alibaba.ailabs.genie.guide',
    'com.android.bluetoothmidiservice',
    'com.android.captiveportallogin',
    'com.android.companiondevicemanager',
    'com.android.pacprocessor',
    'com.android.mtp',
    'com.android.statementservice',
    'com.android.storagemanager',
    'com.android.vpndialogs',
]

PROTECTED = [
    'com.dangbei1.tvlauncher', 'bin.mt.plus', 'com.estrongs.android.pop',
    'com.web1n.permissiondog', 'com.shere.assistivetouch', 'com.topjohnwu.magisk',
]

NO_BENEFIT = ['com.android.mtp', 'com.android.statementservice', 'com.android.pacprocessor',
              'com.android.vpndialogs', 'com.android.companiondevicemanager',
              'com.android.bluetoothmidiservice', 'com.android.captiveportallogin']


def _find_rev():
    candidates = [os.path.normpath(os.path.join(HERE, '..')),
                  r'D:\tgz02\OS\system\system_debloat']
    env = os.environ.get('DEBLOAT_DOC')
    if env:
        candidates.insert(0, env)
    for c in candidates:
        if os.path.isfile(os.path.join(c, 'b_class_priority_analysis.md')) and \
           os.path.isfile(os.path.join(c, 'summary_stats.json')):
            return c
    raise RuntimeError('cannot locate rev4 report dir; tried %s' % candidates)


REV = _find_rev()


def load_json(name):
    with open(os.path.join(REV, name), encoding='utf-8') as f:
        return json.load(f)


class TestCandidateSet(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.stats = load_json('summary_stats.json')
        cls.rows = {r['pkg']: r for r in load_json('app_inventory.json')}
        with open(os.path.join(REV, 'b_class_priority_analysis.md'), encoding='utf-8') as f:
            cls.doc = f.read()

    def test_set_matches_executable_list(self):
        self.assertEqual(sorted(self.stats['executable_lists']['B_disable']), sorted(CANDIDATES))

    def test_every_candidate_has_section(self):
        for p in CANDIDATES:
            self.assertIn('### ' + p, self.doc, p)

    def test_every_candidate_in_ranking_table(self):
        table = [l for l in self.doc.splitlines() if l.startswith('| `com.')]
        self.assertTrue(table)
        joined = '\n'.join(table)
        for p in CANDIDATES:
            self.assertIn('`' + p + '`', joined, p)

    def test_protected_packages_absent(self):
        for p in PROTECTED:
            self.assertNotIn(p, self.doc, p)

    def test_sizes_come_from_inventory(self):
        for p in CANDIDATES:
            r = self.rows[p]
            self.assertIn(str(r['total_mb']), self.doc, p)


class TestGuardRails(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        with open(os.path.join(REV, 'b_class_priority_analysis.md'), encoding='utf-8') as f:
            cls.doc = f.read()

    def test_apk_size_not_ram(self):
        self.assertIn('APK 大小 ≠ RAM 收益', self.doc)

    def test_single_cpu_snapshot(self):
        self.assertIn('单次 CPU 快照 ≠ 长期占用', self.doc)
        self.assertIn('343', self.doc)

    def test_no_reference_not_safe(self):
        self.assertIn('无入向引用 ≠ 安全', self.doc)

    def test_only_ota_has_measurement(self):
        # the doc must state that only OTA has a measured PSS
        self.assertIn('16,011', self.doc)
        # and must not present the others as measured
        for p in NO_BENEFIT:
            section = self.doc.split('### ' + p, 1)[1].split('### ', 1)[0]
            self.assertIn('无证据', section, p)

    def test_ota_questions_answered(self):
        ota = self.doc.split('## 2. OTA 专项', 1)[1].split('## 3.', 1)[0]
        for key in ('持续运行', '测量窗口', 'FOTA_UPDATE', 'pm enable', '优先验证'):
            self.assertIn(key, ota, key)


class TestNoBenefitGroupHasNoCommand(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        with open(os.path.join(REV, 'b_class_priority_analysis.md'), encoding='utf-8') as f:
            cls.doc = f.read()
        with open(os.path.join(REV, 'optimization_plan.md'), encoding='utf-8') as f:
            cls.plan = f.read()

    def test_no_disable_command_for_zero_benefit_in_plan(self):
        for p in NO_BENEFIT:
            self.assertNotIn('pm disable-user --user 0 ' + p, self.plan, p)

    def test_plan_references_rev4_order(self):
        self.assertIn('b_class_priority_analysis.md', self.plan)
        self.assertIn('V0', self.plan)


if __name__ == '__main__':
    unittest.main(verbosity=2)
