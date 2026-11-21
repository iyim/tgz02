"""rev5.2 tests: desktop audit + big4 review + cross-document consistency.

Focus of this revision:
  * GenieMonitor conclusion identical in every document (KEEP whole package);
  * 7 of the 8 previously-unknown desktop entries resolved via launcher card evidence,
    only 旭慧生活 remains unknown;
  * "independent APK" decided by installed-package membership, not by the label text;
  * version metadata says rev5.2 and the protected set is untouched.

Run: python -m unittest test_desktop_audit -v
"""
import json
import os
import unittest

HERE = os.path.dirname(os.path.abspath(__file__))

import screening

NAMES = ['旭慧生活', '通话', '人教数字课堂', '爱家看护', '购物', '音乐', '闹钟', '相册', '优酷',
         '手势', '菜谱', 'CCTV.新视听', '儿童', '智能家居', '蚂蚁森林', '设置', '相机', '哔哩哔哩']
INSTALLED_DESKTOP = ['com.alibaba.ailabs.genie.aicare', 'com.alibaba.ailabs.genie.albums',
                     'com.alibaba.ailabs.genie.children', 'com.alibaba.ailabs.genie.iot',
                     'com.android.settings', 'com.ailabs.youku.iot', 'com.alibaba.ailabs.ar.monitor',
                     'com.alibaba.ailabs.genie.cook', 'cn.cmvideo.car.play',
                     'com.alibaba.ailabs.genie.camera']
NON_APK = ['通话', '人教数字课堂', '购物', '音乐', '闹钟', '蚂蚁森林', '哔哩哔哩', '旭慧生活']


def _find_rev():
    for c in [os.path.normpath(os.path.join(HERE, '..')), r'D:\tgz02\OS\system\system_debloat']:
        if os.path.isfile(os.path.join(c, 'big4_component_review.md')):
            return c
    raise RuntimeError('cannot locate rev5.2 report dir')


REV = _find_rev()
DOC = open(os.path.join(REV, 'desktop_app_audit.md'), encoding='utf-8').read()
BIG4 = open(os.path.join(REV, 'big4_component_review.md'), encoding='utf-8').read()
ACLASS = open(os.path.join(REV, 'a_class_candidates.md'), encoding='utf-8').read()
PRIO = open(os.path.join(REV, 'pruning_priority.md'), encoding='utf-8').read()
ROWS = {r['pkg']: r for r in json.load(open(os.path.join(REV, 'app_inventory.json'), encoding='utf-8'))}
STATS = json.load(open(os.path.join(REV, 'summary_stats.json'), encoding='utf-8'))
IDX = json.load(open(os.path.join(REV, 'desktop_package_index.json'), encoding='utf-8'))
INSTALLED = {p['package'] for p in IDX['packages']}


class TestMapping(unittest.TestCase):
    def test_eighteen_names(self):
        for n in NAMES:
            self.assertIn(n, DOC, n)

    def test_installed_packages_resolved(self):
        for p in INSTALLED_DESKTOP:
            self.assertIn(p, INSTALLED, p)
            self.assertIn(p, DOC, p)

    def test_only_one_unknown_left(self):
        self.assertIn('只剩 **旭慧生活** 未知', DOC)
        for name in NON_APK[1:]:
            self.assertNotIn(name + '\n\n| 项目 | 内容 |\n|---|---|\n| 桌面显示名称 | ' + name +
                             ' |\n| 实际包名 | **未知（非独立 APK）** |\n| 分区 | —（非 APK） |\n| APK 路径 | — |\n| APK 文件大小 | — |\n| 是否存在独立 APK | 否 |\n| 静态证据（卡片/组件） | — |',
                             DOC, name)

    def test_card_evidence_present(self):
        for frag in ('bilibili://tv.danmaku.bili', 'waft://open', 'shop258155498.m.taobao.com',
                     'miguvideo4pad://', 'genie.contacts', 'geniemarket'):
            self.assertIn(frag, DOC, frag)


class TestIndependentApkLogic(unittest.TestCase):
    def test_shopping_is_not_an_apk(self):
        row = [l for l in DOC.splitlines() if l.startswith('| 购物 |')][0]
        self.assertIn('**未知（非独立 APK）**', row)
        self.assertIn('| 否 |', row)

    def test_installed_rows_say_yes(self):
        for pkg in ('com.alibaba.ailabs.genie.albums', 'com.alibaba.ailabs.ar.monitor'):
            row = [l for l in DOC.splitlines() if '| `' + pkg + '` |' in l][0]
            self.assertIn('| 是 |', row)

    def test_partition_matches_index(self):
        for pkg in ('com.alibaba.ailabs.genie.cook', 'com.alibaba.ailabs.genie.albums'):
            part = [p['partition'] for p in IDX['packages'] if p['package'] == pkg][0]
            self.assertIn(part, DOC)


class TestMonitorConsistency(unittest.TestCase):
    def test_all_documents_agree_no_delete(self):
        for name, doc in (('desktop', DOC), ('a_class', ACLASS), ('pruning', PRIO), ('big4', BIG4)):
            self.assertIn('禁用验证', doc, name)
            self.assertTrue(('不可删除' in doc) or ('不可整包删除' in doc), name)

    def test_no_document_offers_delete(self):
        for name, doc in (('desktop', DOC), ('a_class', ACLASS), ('pruning', PRIO)):
            self.assertNotIn('验证禁用后删除', doc, name)

    def test_summary_keeps_monitor_forbidden(self):
        self.assertIn('com.alibaba.ailabs.ar.monitor', STATS['executable_lists']['D_forbidden'])
        self.assertNotIn('com.alibaba.ailabs.ar.monitor', STATS['executable_lists']['A_candidate'])
        note = STATS['screening']['forbidden_notes']['com.alibaba.ailabs.ar.monitor']
        self.assertIn('不可删除', note)
        self.assertIn('可整包禁用验证', note)

    def test_component_breakdown_present(self):
        for comp in ('GenieGestureService', 'VisionWakeUpService', 'CMCCMediaService',
                     'AwesomeService', 'AVEControlProvider'):
            self.assertIn(comp, BIG4, comp)


class TestSpaceAccounting(unittest.TestCase):
    def test_conditional_total(self):
        expected = round(sum(float(ROWS[p]['total_mb']) for p in
                             ('com.alibaba.ailabs.genie.children', 'com.alibaba.ailabs.genie.albums')), 2)
        self.assertTrue(('%.2f' % expected) in DOC or ('%g' % expected) in DOC)

    def test_monitor_reclaim_is_conditional(self):
        self.assertIn('33.19 | 14.67 | 0.00 | 47.86 | **可整包禁用验证', BIG4)
        row = [l for l in BIG4.splitlines() if 'ar.monitor' in l and '47.86' in l][0]
        self.assertIn('47.86', row)

    def test_disable_frees_no_space(self):
        line = [l for l in DOC.splitlines() if '第一批禁用释放 system 空间' in l][0]
        self.assertIn('0 MB', line)

    def test_no_ram_overclaim(self):
        for bad in ('节省 RAM', '释放 RAM'):
            self.assertNotIn(bad, DOC)
        self.assertIn('无证据', DOC)


class TestMetadata(unittest.TestCase):
    def test_revision_is_5_2(self):
        self.assertEqual(STATS['revision']['current'], 'rev5.2 (2026-11-21)')
        self.assertEqual(STATS['screening']['rev'], 'rev5.2')

    def test_all_buckets_present(self):
        for k in ('A_candidate', 'A_delete', 'B_disable', 'C_observe', 'D_forbidden',
                  'protected_blocked'):
            self.assertIn(k, STATS['executable_lists'])
        self.assertEqual(len(STATS['executable_lists']['protected_blocked']), 5)
        self.assertEqual(len(STATS['user_protection']['apps']), 6)

    def test_protected_six_still_protected(self):
        for pkg in screening.PROTECTED_SIX:
            if pkg in ROWS:
                self.assertTrue(ROWS[pkg]['user_protected'], pkg)

    def test_batches_unchanged(self):
        self.assertEqual(sorted(STATS['screening']['batch1_low_risk_disable']), sorted(screening.BATCH1))
        self.assertEqual(sorted(STATS['screening']['batch2_verify_disable']), sorted(screening.BATCH2))


if __name__ == '__main__':
    unittest.main(verbosity=2)