"""rev5.1 tests: desktop audit document must match inventory and device evidence.

Checks:
  * all 18 desktop names appear in the mapping table, each with a package or 未知;
  * system-partition candidates exist in the inventory and their sizes match;
  * packages marked /data/app are never counted into system space;
  * the first-batch delete section stays empty and no voice-chain package appears in it;
  * the conditional scenario total equals the sum of the four directory sizes;
  * no RAM saving is promised from disabling.

Run: python -m unittest test_desktop_audit -v
"""
import json
import os
import re
import unittest

HERE = os.path.dirname(os.path.abspath(__file__))

import screening

NAMES = ['旭慧生活', '通话', '人教数字课堂', '爱家看护', '购物', '音乐', '闹钟', '相册', '优酷',
         '手势', '菜谱', 'CCTV.新视听', '儿童', '智能家居', '蚂蚁森林', '设置', '相机', '哔哩哔哩']
SYS_CANDIDATES = ['com.alibaba.ailabs.ar.monitor', 'com.ailabs.youku.iot',
                  'com.alibaba.ailabs.genie.children', 'com.alibaba.ailabs.genie.albums',
                  'com.ailabs.emode', 'com.aliyun.uuid', 'com.alira.info',
                  'com.alibaba.spkey', 'com.yunos.tv.provision',
                  'com.android.providers.userdictionary']
DATA_APPS = ['com.alibaba.ailabs.genie.camera', 'com.alibaba.ailabs.genie.cook', 'cn.cmvideo.car.play']


def _find_rev():
    for c in [os.path.normpath(os.path.join(HERE, '..')), r'D:\tgz02\OS\system\system_debloat']:
        if os.path.isfile(os.path.join(c, 'desktop_app_audit.md')):
            return c
    raise RuntimeError('cannot locate rev5.1 report dir')


REV = _find_rev()
DOC = open(os.path.join(REV, 'desktop_app_audit.md'), encoding='utf-8').read()
ROWS = {r['pkg']: r for r in json.load(open(os.path.join(REV, 'app_inventory.json'), encoding='utf-8'))}


class TestMapping(unittest.TestCase):
    def test_eighteen_names_present(self):
        for n in NAMES:
            self.assertIn(n, DOC, n)

    def test_mapping_table_rows(self):
        table = DOC.split('## 1. 桌面应用与包名映射表', 1)[1].split('## 2.', 1)[0]
        rows = [l for l in table.splitlines() if l.startswith('| ') and '---' not in l]
        self.assertGreaterEqual(len(rows) - 1, 18, 'expected header + 18 rows')

    def test_unknown_is_marked_not_guessed(self):
        self.assertIn('**未知**', DOC)
        # 8 entries have no installed package; the doc must say so explicitly
        self.assertIn('未知 8 个', DOC)

    def test_confirmed_packages(self):
        for p in ('com.alibaba.ailabs.genie.aicare', 'com.alibaba.ailabs.genie.albums',
                  'com.alibaba.ailabs.genie.children', 'com.alibaba.ailabs.genie.iot',
                  'com.android.settings'):
            self.assertIn(p, DOC, p)


class TestSystemCandidates(unittest.TestCase):
    def test_candidates_exist_and_sizes_match(self):
        for p in SYS_CANDIDATES:
            self.assertIn(p, ROWS)
            self.assertIn(p, DOC)
            self.assertIn(str(ROWS[p]['total_mb']), DOC, p)

    def test_data_apps_not_counted_in_system_space(self):
        for p in DATA_APPS:
            self.assertIn(p, DOC)
        self.assertIn('不涉及 system 空间', DOC)
        section = DOC.split('## 8.', 1)[1].split('## 9.')[0].lower()
        self.assertNotIn('camera', section)
        self.assertNotIn('cook', section)
        self.assertNotIn('cmvideo', section)

    def test_conditional_total(self):
        four = ['com.alibaba.ailabs.ar.monitor', 'com.ailabs.youku.iot',
                'com.alibaba.ailabs.genie.children', 'com.alibaba.ailabs.genie.albums']
        expected = round(sum(float(ROWS[p]['total_mb']) for p in four), 2)
        self.assertIn('%.2f' % expected, DOC)


class TestBatches(unittest.TestCase):
    def test_first_delete_is_empty(self):
        sec = DOC.split('### 6.1 第一批建议删除', 1)[1].split('### 6.2', 1)[0]
        self.assertIn('**空。**', sec)

    def test_no_voice_chain_in_delete_sections(self):
        sec = DOC.split('## 6. 第一批建议', 1)[1].split('### 6.2', 1)[0]
        for pkg in screening.PROTECTED_CHAIN + screening.PROTECTED_SIX:
            self.assertNotIn(pkg, sec, pkg)

    def test_first_disable_matches_screening(self):
        sec = DOC.split('### 6.2 第一批建议禁用验证', 1)[1].split('### 6.3', 1)[0]
        for pkg in screening.BATCH1:
            self.assertIn(pkg, sec, pkg)

    def test_forbidden_list_has_protected(self):
        sec = DOC.split('## 7. 明确禁止删除的组件', 1)[1].split('## 8.', 1)[0]
        for pkg in screening.PROTECTED_SIX:
            self.assertIn(pkg, sec, pkg)


class TestNoOverclaim(unittest.TestCase):
    def test_disable_frees_no_space(self):
        self.assertIn('第一批禁用可释放 system 空间', DOC)
        line = [l for l in DOC.splitlines() if '第一批禁用可释放 system 空间' in l][0]
        self.assertIn('0 MB', line)

    def test_no_ram_saving_claim(self):
        for bad in ('节省 RAM', '释放 RAM', '减少 RAM 占用 '):
            self.assertNotIn(bad, DOC)

    def test_unknown_sizes_declared(self):
        self.assertIn('大小未知', DOC)


if __name__ == '__main__':
    unittest.main(verbosity=2)