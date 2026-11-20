"""rev3 tests: user protection, executable lists, Magisk scope and data consistency.

The tests read the *generated* artefacts next to this directory, so they fail if a
report regeneration ever drops the protection rules.

Run:  python -m unittest test_protection -v
"""
import csv
import json
import os
import unittest

import protection

HERE = os.path.dirname(os.path.abspath(__file__))


def _find_rev():
    """Locate the report directory containing app_inventory.json.

    Works both in the scratch working copy (.../_analysis/debloat, with the generated
    files under .../system/system_debloat) and in the shipped copy
    (system_debloat/tools, with the files one level up).
    """
    candidates = [
        os.path.normpath(os.path.join(HERE, '..')),                      # shipped layout
        os.path.normpath(os.path.join(HERE, '..', '..', 'system', 'system_debloat')),
        r'D:\tgz02\OS\system\system_debloat',
    ]
    env = os.environ.get('DEBLOAT_DOC')
    if env:
        candidates.insert(0, env)
    for c in candidates:
        if os.path.isfile(os.path.join(c, 'app_inventory.json')):
            return c
    raise RuntimeError('cannot locate app_inventory.json; tried %s' % candidates)


REV = _find_rev()

SIX = {
    'com.dangbei1.tvlauncher': '当贝桌面',
    'bin.mt.plus': 'MT 管理器',
    'com.estrongs.android.pop': 'ES 文件管理器',
    'com.web1n.permissiondog': '权限狗',
    'com.shere.assistivetouch': 'EasyTouch',
    'com.topjohnwu.magisk': 'Magisk',
}


def load(name):
    with open(os.path.join(REV, name), encoding='utf-8-sig' if name.endswith('.csv') else 'utf-8') as f:
        if name.endswith('.csv'):
            return list(csv.DictReader(f))
        return json.load(f)


class TestProtectionTable(unittest.TestCase):
    def test_six_apps_registered(self):
        self.assertEqual(sorted(protection.USER_PROTECTED), sorted(SIX))
        for pkg, label in SIX.items():
            self.assertEqual(protection.USER_PROTECTED[pkg]['label'], label)
            self.assertTrue(protection.is_user_protected(pkg), pkg)

    def test_reason_text(self):
        for pkg in SIX:
            self.assertEqual(protection.protection_reason(pkg),
                             '用户明确指定保留，未经用户另行授权不得精简。')

    def test_mt_manager_is_out_of_image_not_inventoried(self):
        rows = {r['pkg'] for r in load('app_inventory.json')}
        self.assertNotIn('bin.mt.plus', rows)
        self.assertFalse(protection.USER_PROTECTED['bin.mt.plus']['in_system_image'])

    def test_magisk_related_paths(self):
        paths = protection.magisk_protected_paths()
        for p in ('app/magisk.apk', '/sbin/magisk32', '/sbin/magiskinit', '/sbin/magiskpolicy',
                  '/sbin/.magisk', '/data/adb'):
            self.assertIn(p, paths)
        # only the APK lives inside the system image
        inside = [c['path'] for c in protection.MAGISK_RELATED if c['in_system_image']]
        self.assertEqual(inside, ['app/magisk.apk'])

    def test_assert_guard(self):
        with self.assertRaises(AssertionError):
            protection.assert_no_protected(['com.estrongs.android.pop'], 'unit-test')
        with self.assertRaises(AssertionError):
            protection.assert_no_protected(['/sbin/magisk32'], 'unit-test')
        self.assertTrue(protection.assert_no_protected(['com.alibaba.genie.waft'], 'unit-test'))


class TestExecutableLists(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.stats = load('summary_stats.json')
        cls.lists = cls.stats['executable_lists']
        cls.rows = {r['pkg']: r for r in load('app_inventory.json')}
        cls.csv_rows = {r['package']: r for r in load('app_inventory.csv')}

    def test_no_protected_package_on_any_executable_list(self):
        for bucket in ('A_delete', 'B_disable', 'C_observe', 'D_forbidden'):
            for pkg in self.lists[bucket]:
                self.assertFalse(protection.is_user_protected(pkg),
                                 '%s leaked into %s' % (pkg, bucket))

    def test_protected_bucket_holds_the_five_image_apps(self):
        self.assertEqual(sorted(self.lists['protected_blocked']),
                         sorted(p for p in SIX if protection.USER_PROTECTED[p]['in_system_image']))

    def test_delete_list_is_empty(self):
        self.assertEqual(self.lists['A_delete'], [])

    def test_dangbei_easytouch_permissiondog_not_disableable(self):
        for pkg in ('com.dangbei1.tvlauncher', 'com.shere.assistivetouch',
                    'com.web1n.permissiondog'):
            self.assertNotIn(pkg, self.lists['B_disable'], pkg)
            self.assertEqual(self.rows[pkg]['cls'], 'B', 'technical class must be preserved')
            self.assertTrue(self.rows[pkg]['user_protected'])

    def test_es_keeps_class_A_but_is_blocked(self):
        es = self.rows['com.estrongs.android.pop']
        self.assertEqual(es['cls'], 'A', 'rev3 keeps the technical classification')
        self.assertTrue(es['user_protected'])
        self.assertIn('受用户保护', es['exec_action'])
        self.assertNotIn('com.estrongs.android.pop', self.lists['A_delete'])

    def test_magisk_not_on_any_list(self):
        self.assertNotIn('com.topjohnwu.magisk', self.lists['C_observe'])
        self.assertNotIn('com.topjohnwu.magisk', self.lists['B_disable'])
        self.assertIn('com.topjohnwu.magisk', self.lists['protected_blocked'])

    def test_csv_matches_json_protection_flags(self):
        for pkg in SIX:
            if pkg not in self.csv_rows:
                continue
            self.assertEqual(self.csv_rows[pkg]['user_protected'], 'True')
            self.assertEqual(self.csv_rows[pkg]['protection_reason'],
                             '用户明确指定保留，未经用户另行授权不得精简。')
            self.assertIn('受用户保护', self.csv_rows[pkg]['exec_action'])

    def test_field_present_on_every_row(self):
        for pkg, r in self.rows.items():
            for k in ('class_label', 'user_protected', 'exec_action'):
                self.assertIn(k, r, pkg)
            if r['user_protected']:
                self.assertTrue(r['protection_reason'])
            else:
                self.assertIsNone(r['protection_reason'])


class TestStatsConsistency(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.rows = load('app_inventory.json')
        cls.stats = load('summary_stats.json')
        cls.csv = load('app_inventory.csv')
        cls.edges = load('dependency_edges.csv')

    def test_counts(self):
        self.assertEqual(len(self.rows), self.stats['packages'])
        self.assertEqual(len(self.csv), self.stats['packages'])
        self.assertEqual(len(self.rows), 55)

    def test_total_mb(self):
        total = round(sum(float(r['total_mb']) for r in self.rows), 2)
        self.assertAlmostEqual(total, self.stats['total_mb'], places=2)
        self.assertAlmostEqual(total, round(sum(v['total_mb'] for v in
                                               self.stats['by_class'].values()), 2), places=2)

    def test_class_counts_match(self):
        for k in 'ABCD':
            n_rows = sum(1 for r in self.rows if r['cls'] == k)
            n_csv = sum(1 for r in self.csv if r['class'] == k)
            self.assertEqual(n_rows, self.stats['by_class'][k]['packages'], k)
            self.assertEqual(n_csv, self.stats['by_class'][k]['packages'], k)
        self.assertEqual(sum(v['packages'] for v in self.stats['by_class'].values()), 55)

    def test_protection_block_matches_apps(self):
        apps = self.stats['user_protection']['apps']
        self.assertEqual(len(apps), 6)
        self.assertEqual(sorted(a['package'] for a in apps), sorted(SIX))
        for a in apps:
            self.assertTrue(a['user_protected'])
            self.assertEqual(a['protection_reason'],
                             '用户明确指定保留，未经用户另行授权不得精简。')

    def test_class_labels_do_not_claim_verified_deletion(self):
        for r in self.rows:
            if r['cls'] == 'A':
                self.assertIn('尚未完成真机动态验证', r['class_label'])
                self.assertNotIn('可以删除', r['class_label'])
            # no row may be described as "safe to delete"
            self.assertNotIn('安全删除', r['exec_action'])

    def test_edges_file_intact(self):
        self.assertTrue(self.edges)
        classes = {r['evidence_class'] for r in self.edges}
        self.assertTrue(classes <= {'app', 'sdk_noise', 'platform_provider', 'ambiguous'})


class TestLegacyPathsRemoved(unittest.TestCase):
    def test_no_legacy_directory_reference(self):
        bad = []
        for name in os.listdir(REV):
            if not (name.endswith('.md') or name.endswith('.json') or name.endswith('.csv')):
                continue
            with open(os.path.join(REV, name), encoding='utf-8-sig', errors='replace') as f:
                text = f.read()
            if 'my-doc' in text:
                bad.append(name)
        self.assertEqual(bad, [])


if __name__ == '__main__':
    unittest.main(verbosity=2)
