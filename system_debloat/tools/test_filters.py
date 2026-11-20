"""Unit tests for the evidence filters.

Run:  python -m unittest test_filters -v      (from this directory)
"""
import unittest

import filters


class TestPlatformAuthority(unittest.TestCase):
    def test_aosp_provider_authorities(self):
        for a in ('com.android.providers.media',
                  'com.android.providers.settings',
                  'com.android.providers.contacts',
                  'com.android.providers.downloads',
                  'com.android.providers.calendar',
                  'com.android.providers.telephony',
                  'com.android.providers.userdictionary'):
            self.assertTrue(filters.is_platform_authority(a), a)

    def test_bare_authorities(self):
        for a in ('media', 'settings', 'downloads', 'contacts', 'calendar',
                  'telephony', 'mms-sms', 'call_log', 'user_dictionary'):
            self.assertTrue(filters.is_platform_authority(a), a)

    def test_regression_split_bug(self):
        """The old `token.split('.')[0] in (...)` check returned False for every AOSP entry."""
        a = 'com.android.providers.media'
        self.assertNotIn(a.split('.')[0], ('com.android', 'media', 'settings'))
        self.assertTrue(filters.is_platform_authority(a))

    def test_prefix_only_authority(self):
        # per-document sub-authority, only matched by the prefix rule
        self.assertTrue(filters.is_platform_authority('com.android.providers.downloads.documents'))
        self.assertTrue(filters.is_platform_authority('com.android.providers.media.documents'))

    def test_third_party_authorities_are_not_platform(self):
        for a in ('com.alibaba.ailabs.ave.controlProvider',
                  'com.alibaba.ailabs.genie.smartapp.DatacenterProvider',
                  'com.estrongs.android.pop.fileshare',
                  'com.alipay.arome.app.configprovider',
                  'com.shere.assistivetouch.provider'):
            self.assertFalse(filters.is_platform_authority(a), a)

    def test_empty_and_case(self):
        self.assertFalse(filters.is_platform_authority(''))
        self.assertFalse(filters.is_platform_authority(None))
        self.assertTrue(filters.is_platform_authority('  MEDIA  '))


class TestAuthorityBoundary(unittest.TestCase):
    """rev3 / P2-3: prefix matching must respect a '.' boundary."""

    def test_similar_third_party_authority_is_not_platform(self):
        self.assertFalse(
            filters.is_platform_authority(
                "com.android.settingshelper.provider"
            )
        )

    def test_prefix_lookalikes_are_not_platform(self):
        for a in ('com.android.settingshelper.provider',
                  'com.android.settingsproxy',
                  'com.android.providersx.foo',
                  'com.android.contactssync',
                  'com.android.calendarsync',
                  'com.android.calllogbackupx'):
            self.assertFalse(filters.is_platform_authority(a), a)

    def test_sub_namespace_still_matches(self):
        for a in ('com.android.providers.downloads.documents',
                  'com.android.providers.media.documents',
                  'com.android.providers.settings',
                  'com.android.providers',
                  'com.android.settings'):
            self.assertTrue(filters.is_platform_authority(a), a)

    def test_required_platform_authorities_still_match(self):
        # the exact list required by the review
        for a in ('media', 'settings', 'com.android.providers.settings',
                  'com.android.providers.media', 'com.android.providers.contacts'):
            self.assertTrue(filters.is_platform_authority(a), a)


class TestEvidenceClass(unittest.TestCase):
    def test_classify(self):
        self.assertEqual(filters.classify_evidence('authority', 'media'), 'platform_provider')
        self.assertEqual(filters.classify_evidence('authority', 'com.android.providers.media'),
                         'platform_provider')
        self.assertEqual(filters.classify_evidence('component', 'com.xiaomi.push.service.XMPushService'),
                         'sdk_noise')
        self.assertEqual(filters.classify_evidence('action', 'mtopsdk.xstate.action'), 'sdk_noise')
        self.assertEqual(filters.classify_evidence('action', 'com.alibaba.genie.waft.server', ambiguous=True),
                         'ambiguous')
        self.assertEqual(filters.classify_evidence('component', 'com.alibaba.genie.waft.gcs.GenieRegistryInstaller'),
                         'app')

    def test_app_level_only(self):
        self.assertTrue(filters.is_app_level_evidence('authority', 'com.aligenie.ic.icProvider'))
        self.assertFalse(filters.is_app_level_evidence('authority', 'com.android.providers.media'))
        self.assertFalse(filters.is_app_level_evidence('pkg_weak', 'com.android.settings'))
        self.assertFalse(filters.is_app_level_evidence('action', 'com.huawei.intent.action.PUSH'))


if __name__ == '__main__':
    unittest.main(verbosity=2)
