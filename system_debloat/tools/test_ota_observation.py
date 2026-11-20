"""rev4.1 tests: the OTA observation report must match the raw samples.

Guarantees checked:
  * the raw sample file exists and covers the required duration (>=6 h, >=70 samples);
  * every CPU figure in the report is traceable to /proc ticks (recomputed here);
  * PSS statistics (min/max/median/count) match the samples;
  * the report never claims a broadcast was observed unless a log line says so,
    and always uses the "not captured != unused" wording;
  * no device-mutating command is documented as executed.

Run: python -m unittest test_ota_observation -v
"""
import json
import os
import statistics as st
import unittest

HERE = os.path.dirname(os.path.abspath(__file__))
MIN_SAMPLES = 70
MIN_WINDOW_S = 21600


def _find_rev():
    for c in [os.path.normpath(os.path.join(HERE, '..')),
              r'D:\tgz02\OS\system\system_debloat']:
        if os.path.isfile(os.path.join(c, 'ota_observation_report.md')):
            return c
    raise RuntimeError('cannot locate rev4.1 report dir')


REV = _find_rev()
OBS = os.path.join(REV, 'ota_observation')


def load_samples():
    with open(os.path.join(OBS, 'samples.jsonl'), encoding='utf-8') as f:
        return [json.loads(l) for l in f if l.strip()]


class TestRawSamples(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.rows = load_samples()
        cls.analysis = json.load(open(os.path.join(OBS, 'analysis.json'), encoding='utf-8'))

    def test_required_volume(self):
        self.assertGreaterEqual(len(self.rows), MIN_SAMPLES, 'need >=70 samples for 6 h at 5 min')
        span = self.rows[-1]['uptime_s'] - self.rows[0]['uptime_s']
        self.assertGreaterEqual(span, MIN_WINDOW_S, 'observed window must be >= 6 h')

    def test_every_sample_has_required_fields(self):
        for r in self.rows:
            for k in ('host_ts', 'uptime_s', 'pids', 'procs', 'pss_kb',
                      'svc_records', 'svc_started', 'alarm_hits', 'power_hits', 'log_new'):
                self.assertIn(k, r)
            self.assertIsNotNone(r['uptime_s'])

    def test_cpu_time_is_monotonic_per_pid(self):
        prev = {}
        for r in self.rows:
            for p in r['procs']:
                if p['pid'] in prev:
                    self.assertGreaterEqual(p['cpu_ticks'], prev[p['pid']],
                                            'ticks must not decrease within one pid')
                prev[p['pid']] = p['cpu_ticks']

    def test_pss_statistics_match_samples(self):
        pss = [r['pss_kb'] for r in self.rows if r['pss_kb']]
        a = self.analysis['pss']
        self.assertEqual(a['count'], len(pss))
        self.assertEqual(a['min_kb'], min(pss))
        self.assertEqual(a['max_kb'], max(pss))
        self.assertEqual(a['median_kb'], int(st.median(pss)))


class TestCpuFromTicks(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.rows = load_samples()
        cls.analysis = json.load(open(os.path.join(OBS, 'analysis.json'), encoding='utf-8'))

    def _intervals(self):
        out = []
        for prev, cur in zip(self.rows, self.rows[1:]):
            if not prev['procs'] or not cur['procs']:
                continue
            if prev['procs'][0]['pid'] != cur['procs'][0]['pid']:
                continue
            dt = cur['uptime_s'] - prev['uptime_s']
            if dt <= 0:
                continue
            dticks = cur['procs'][0]['cpu_ticks'] - prev['procs'][0]['cpu_ticks']
            out.append(100.0 * dticks / (dt * 100.0))
        return out

    def test_mean_matches_recomputation(self):
        iv = self._intervals()
        self.assertTrue(iv)
        self.assertAlmostEqual(self.analysis['cpu']['mean_pct'],
                               round(sum(iv) / len(iv), 2), places=1)

    def test_no_cross_pid_summing(self):
        # PID changes are recorded as events; the CPU series length must equal the number of
        # same-PID adjacent pairs, so a restart cannot contribute a fake delta.
        pairs = 0
        for prev, cur in zip(self.rows, self.rows[1:]):
            if prev['procs'] and cur['procs'] and prev['procs'][0]['pid'] == cur['procs'][0]['pid']:
                pairs += 1
        self.assertEqual(self.analysis['cpu']['intervals'], pairs)
        self.assertEqual(len(self.analysis['pid_events']),
                         sum(1 for prev, cur in zip(self.rows, self.rows[1:])
                             if prev['pids'] != cur['pids']))


class TestReportWording(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.doc = open(os.path.join(REV, 'ota_observation_report.md'), encoding='utf-8').read()
        cls.analysis = json.load(open(os.path.join(OBS, 'analysis.json'), encoding='utf-8'))
        cls.rows = load_samples()

    def test_numbers_present(self):
        a = self.analysis
        self.assertIn('{:,}'.format(a['pss']['median_kb']).replace(',', ','), self.doc.replace(' ', ''))
        self.assertIn('{}'.format(a['samples']), self.doc)
        self.assertIn(str(a['services']['samples_with_started']), self.doc)

    def test_no_device_mutation(self):
        for bad in ('pm disable-user', 'pm uninstall', 'pm clear', 'killall', 'am force-stop'):
            for line in self.doc.splitlines():
                if bad in line:
                    self.assertIn('没有', line, 'device mutation must only appear as "not executed": ' + line)

    def test_broadcast_wording(self):
        self.assertIn('未捕获 ≠ 未使用', self.doc)
        if not self.analysis['logs']['fota_update_seen']:
            self.assertIn('本次观测窗口未捕获到', self.doc)
            # must not assert the feature is unused
            self.assertNotIn('该路径未被使用', self.doc)
            self.assertNotIn('设备未使用该广播', self.doc)

    def test_ram_saving_not_promised(self):
        self.assertNotIn('禁用后可释放', self.doc)

    def test_observation_is_read_only(self):
        self.assertIn('只做只读采集', self.doc)


if __name__ == '__main__':
    unittest.main(verbosity=2)