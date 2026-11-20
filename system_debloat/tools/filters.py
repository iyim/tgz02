"""Shared evidence filters for the TG-Z02 debloat analysis.

Kept in one module so that report.py, edges.py and the doc generators cannot drift
apart, and so the filtering rules can be unit tested (see test_filters.py).

Background: the first revision of report.py wrote

    x['token'].split('.')[0] in ('com.android', 'media', 'settings')

which never matches `com.android.providers.*` (split('.')[0] == 'com'), so AOSP provider
authorities leaked into the "strong inbound reference" column. This module replaces that
expression with explicit exact-match and prefix rules.
"""

# ---------------------------------------------------------------- SDK noise
# Class/action namespaces that are vendored copies of third-party SDKs. A match on these
# says nothing about a dependency between two preinstalled apps.
SDK_PREFIX = (
    'com.xiaomi.', 'com.taobao.', 'org.android.agoo', 'com.google.android.gms',
    'com.google.firebase', 'mtopsdk.', 'anetwork.', 'com.uc.', 'com.amap.',
    'com.alipay.mobile.', 'com.taobao.accs', 'org.eclipse.paho', 'com.talkingdata.',
    'com.huawei.', 'com.baidu.', 'com.sina.', 'com.tencent.', 'com.umeng.',
)

# ---------------------------------------------------------------- platform providers
# Bare authority names used by AOSP packages (declared without a package prefix).
PLATFORM_AUTHORITIES_EXACT = frozenset({
    'media', 'downloads', 'settings', 'telephony', 'mms-sms', 'call_log',
    'user_dictionary', 'contacts', 'calendar', 'icc', 'sms', 'mms',
    'com.android.contacts', 'com.android.calendar', 'com.android.settings',
    'com.android.providers.contacts', 'com.android.providers.media',
    'com.android.providers.downloads', 'com.android.providers.settings',
    'com.android.providers.telephony', 'com.android.providers.calendar',
    'com.android.providers.userdictionary', 'com.android.providers.contacts.calllog',
})

# Authorities that live under these package prefixes are always platform providers.
# Matching is boundary-aware: the authority must equal the prefix or continue with '.'
# so that look-alikes such as `com.android.settingshelper.provider` are NOT swallowed.
# (rev3: the rev2 implementation used bare str.startswith, which misclassified them.)
PLATFORM_AUTHORITY_PREFIXES = (
    'com.android.providers',
    'com.android.contacts',
    'com.android.calllogbackup',
    'com.android.calendar',
    'com.android.settings',
)


def is_platform_authority(authority):
    """True when the authority belongs to an AOSP platform provider.

    Rules:
      * exact match against PLATFORM_AUTHORITIES_EXACT, or
      * equal to a prefix in PLATFORM_AUTHORITY_PREFIXES, or starts with "<prefix>."

    >>> is_platform_authority('com.android.providers.media')
    True
    >>> is_platform_authority('media')
    True
    >>> is_platform_authority('com.android.settingshelper.provider')
    False
    >>> is_platform_authority('com.alibaba.ailabs.ave.controlProvider')
    False
    """
    if not authority:
        return False
    a = authority.strip().lower()
    if a in PLATFORM_AUTHORITIES_EXACT:
        return True
    for p in PLATFORM_AUTHORITY_PREFIXES:
        if a == p or a.startswith(p + '.'):
            return True
    return False


def is_sdk_noise(token):
    """True when the token belongs to a vendored third-party SDK namespace."""
    return token.startswith(SDK_PREFIX)


def classify_evidence(kind, token, ambiguous=False):
    """Bucket one cross-package evidence row.

    Returns one of: 'platform_provider', 'sdk_noise', 'ambiguous', 'app'.
    'app' is the only class that counts as a dependency signal between two preinstalled apps.
    """
    if kind == 'authority' and is_platform_authority(token):
        return 'platform_provider'
    if is_sdk_noise(token):
        return 'sdk_noise'
    if ambiguous:
        return 'ambiguous'
    return 'app'


def is_app_level_evidence(kind, token):
    """True for evidence that should count as an app-to-app dependency (strong column)."""
    if kind not in ('component', 'authority', 'action'):
        return False
    return classify_evidence(kind, token) == 'app'
