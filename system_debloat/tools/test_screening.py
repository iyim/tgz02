"""rev5 tests: screening data, batches, and the two new reports.

Guarantees:
  * every executable B-class package has all seven authored answers;
  * static candidates are real inventory rows, non-protected, and carry all eight fields;
  * no batch contains a user-protected package or a protected voice/UI package;
  * inventory screening fields agree with summary_stats.screening;
  * the reports exist, name every candidate, and never claim RAM or space savings from
    disabling (disable == 0 space) or promise a measured saving that was not measured.

Run: python -m unittest test_screening -v
"""
import json
import os
import unittest

HERE = os.path.dirname(os.path.abspath(__file__))

import screening

PROTECTED = screening.PROTECTED_SIX
CHAIN = screening.PROTECTED_CHAIN
B_KEYS = ('role', 'necessary', 'refs', 'dependents', 'impact', 'pm_disable', 'priority', 'risk', 'evidence')
STATIC_KEYS = ('dir', 'apk_mb', 'total_mb', 'role', 'direct', 'indirect', 'impact',
               'vendor_refs', 'risk', 'verdict')


def _find_rev():
    for c in [os.path.normpath(os.path.join(HERE, '..')), r'D:\tgz02\OS\system\system_debloat']:
        if os.path.isfile(os.path.join(c, 'pruning_priority.md')):
            return c
    raise RuntimeError('cannot locate rev5 report dir')


REV = _find_rev()


def load(name):
    with open(os.path.join(REV, name), encoding='utf-8') as f:
        return json.load(f) if name.endswith('.json') else f.read()


class TestBAnswers(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.stats = load('summary_stats.json')
        cls.rows = {r['pkg']: r for r in load('app_inventory.json')}

    def test_covers_exactly_executable_b(self):
        self.assertEqual(sorted(screening.B_ANSWERS), sorted(self.stats['executable_lists']['B_disable']))
        self.assertEqual(len(screening.B_ANSWERS), 10)

    def test_all_fields_present(self):
        for pkg, a in screening.B_ANSWERS.items():
            for k in B_KEYS:
                self.assertTrue(a.get(k), '%s missing %s' % (pkg, k))

    def test_risk_values_are_rated(self):
        for pkg, a in screening.B_ANSWERS.items():
            self.assertIn(a['risk'], ('低', '低-中', '中', '高'), pkg)

    def test_batches_partition_executable_b(self):
        batch1, batch2 = screening.BATCH1, screening.BATCH2
        self.assertEqual(sorted(batch1 + batch2), sorted(self.stats['executable_lists']['B_disable']))
        self.assertEqual(set(batch1) & set(batch2), set())

    def test_inventory_fields_match(self):
        for pkg, tier in [(p, 1) for p in screening.BATCH1] + [(p, 2) for p in screening.BATCH2]:
            self.assertEqual(self.rows[pkg]['screening_tier'], tier, pkg)
            self.assertTrue(self.rows[pkg]['screening_batch'])


class TestStaticCandidates(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.rows = {r['pkg']: r for r in load('app_inventory.json')}

    def test_candidates_exist_in_inventory(self):
        for pkg, c in screening.STATIC_CANDIDATES.items():
            self.assertIn(pkg, self.rows)
            for k in STATIC_KEYS:
                self.assertTrue(c.get(k), '%s missing %s' % (pkg, k))

    def test_sizes_match_inventory(self):
        for pkg, c in screening.STATIC_CANDIDATES.items():
            self.assertEqual(c['dir'], self.rows[pkg]['dir'])
            self.assertAlmostEqual(float(c['total_mb']), float(self.rows[pkg]['total_mb']), places=2)

    def test_never_protected(self):
        for pkg in screening.STATIC_CANDIDATES:
            self.assertNotIn(pkg, PROTECTED)
            self.assertFalse(self.rows[pkg]['user_protected'])
            self.assertNotIn(pkg, CHAIN)

    def test_verify_first_has_no_static_delete(self):
        self.assertEqual(set(screening.VERIFY_FIRST) & set(screening.STATIC_DELETE), set())
        for pkg in screening.VERIFY_FIRST:
            self.assertIn('禁用', screening.STATIC_CANDIDATES[pkg]['verdict'])


class TestBatchesSafety(unittest.TestCase):
    def test_no_protected_in_any_batch(self):
        for group in (screening.BATCH1, screening.BATCH2, screening.STATIC_DELETE,
                      screening.VERIFY_FIRST):
            for pkg in group:
                self.assertNotIn(pkg, PROTECTED, pkg)
                self.assertNotIn(pkg, CHAIN, pkg)

    def test_forbidden_notes_are_not_batches(self):
        for pkg in screening.FORBIDDEN_NOTE:
            for group in (screening.BATCH1, screening.BATCH2, screening.STATIC_DELETE):
                self.assertNotIn(pkg, group, pkg)

    def test_summary_block_matches_module(self):
        sc = load('summary_stats.json')['screening']
        self.assertEqual(sc['batch1_low_risk_disable'], screening.BATCH1)
        self.assertEqual(sc['batch2_verify_disable'], screening.BATCH2)
        self.assertEqual(sc['static_delete_candidates'], screening.STATIC_DELETE)
        self.assertEqual(sc['disable_first_then_review'], screening.VERIFY_FIRST)
        self.assertEqual(sorted(sc['extended_static_candidates']), sorted(screening.STATIC_CANDIDATES))


class TestReports(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.prio = load('pruning_priority.md')
        cls.aclass = load('a_class_candidates.md')
        cls.bdoc = load('b_class_priority_analysis.md')

    def test_priority_doc_lists_every_candidate(self):
        for pkg in screening.BATCH1 + screening.BATCH2 + screening.STATIC_DELETE + screening.VERIFY_FIRST:
            self.assertIn(pkg, self.prio, pkg)

    def test_priority_doc_has_batches_and_forbidden(self):
        for key in ('第一批', '第二批', '静态删除候选', '明确禁止精简', '下一阶段可进入设备验证'):
            self.assertIn(key, self.prio, key)

    def test_aclass_doc_lists_all_eight_fields(self):
        for heading in ('包名 / APK 路径', 'APK 文件大小', '直接依赖', '间接依赖',
                        '删除后可能影响', '是否有原厂组件调用', '删除风险', '是否值得进入后续验证'):
            self.assertIn(heading, self.aclass, heading)

    def test_no_space_claim_from_disabling(self):
        self.assertIn('禁用不释放', self.prio)
        for line in self.prio.splitlines():
            if '禁用后释放' in line:
                self.assertIn('不承诺', line, line)

    def test_bdoc_has_seven_question_matrix(self):
        self.assertIn('七个必答问题', self.bdoc)
        for pkg in screening.B_ANSWERS:
            self.assertIn(pkg, self.bdoc, pkg)

    def test_no_device_commands_claimed_as_run(self):
        # A command may appear only as a table cell or an explicit proposal sentence,
        # never as "we ran it".
        for doc in (self.prio, self.aclass):
            for bad in ('pm disable-user', 'pm uninstall'):
                for line in doc.splitlines():
                    if bad in line:
                        ok = ('|' in line) or ('没有' in line) or ('验证' in line) or ('可' in line)
                        self.assertTrue(ok, 'unexpected command line: ' + line)


if __name__ == '__main__':
    unittest.main(verbosity=2)