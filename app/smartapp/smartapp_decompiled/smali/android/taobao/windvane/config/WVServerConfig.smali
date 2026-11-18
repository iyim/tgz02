.class public Landroid/taobao/windvane/config/WVServerConfig;
.super Ljava/lang/Object;
.source "WVServerConfig.java"


# static fields
.field public static ALLOW_ACCESS_DOMAIN_PATTERN:Ljava/lang/String;

.field public static CACHE:Z

.field public static DOMAIN_PATTERN:Ljava/lang/String;

.field public static FORBIDDEN_DOMAIN_PATTERN:Ljava/lang/String;

.field public static LOG:Z

.field public static STATISTICS:Z

.field public static SUPPORT_DOWNLOAD_DOMAIN_PATTERN:Ljava/lang/String;

.field public static THIRD_PARTY_DOMAIN_PATTERN:Ljava/lang/String;

.field public static URL_FILTER:Z

.field public static allowAccessDomain:Ljava/util/regex/Pattern;

.field public static domainPat:Ljava/util/regex/Pattern;

.field public static forbiddenDomain:Ljava/util/regex/Pattern;

.field public static supportDownloadDomain:Ljava/util/regex/Pattern;

.field public static thirdPartyDomain:Ljava/util/regex/Pattern;

.field public static v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "WVURLCacheDefault"

    const-string/jumbo v1, "wv-data"

    .line 30
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/ConfigStorage;->getStringVal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/taobao/windvane/config/WVServerConfig;->updateGlobalConfig(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x1

    .line 37
    sput-boolean v0, Landroid/taobao/windvane/config/WVServerConfig;->CACHE:Z

    .line 40
    sput-boolean v0, Landroid/taobao/windvane/config/WVServerConfig;->URL_FILTER:Z

    const/4 v0, 0x0

    .line 43
    sput-boolean v0, Landroid/taobao/windvane/config/WVServerConfig;->LOG:Z

    .line 46
    sput-boolean v0, Landroid/taobao/windvane/config/WVServerConfig;->STATISTICS:Z

    const-string v0, "^https?:\\/\\/(([^/\\?#]+\\.)*((taobao|tmall|juhuasuan|xiami|amap|taobaocdn|alipay|etao|alibaba|aliyun|alimama|weibo|tanx|laiwang|alicdn|mmstat|yunos|alibaba-inc|alitrip|aliloan|kanbox|wirlesshare|dingtalk|alimei|cnzz|kuaidadi|autonavi|m\\.yintai|polyinno|spdyidea|h5util|h5tool|5945i|miaostreet|1688)\\.com|(tb|tbcdn|weibo|mashort|mybank|ba\\.ugame\\.uc|game\\.uc)\\.cn|(fastidea|juzone)\\.(me|cc)|lwurl\\.to|taobao\\.net|tdd\\.la|yao\\.95095\\.com|tmall\\.hk|ahd\\.so|atb\\.so|mshare\\.cc|juhs\\.me|xianyu\\.mobi)([\\?|#|/].*)?|go(/.*)?)$"

    .line 52
    sput-object v0, Landroid/taobao/windvane/config/WVServerConfig;->DOMAIN_PATTERN:Ljava/lang/String;

    const/4 v0, 0x0

    .line 53
    sput-object v0, Landroid/taobao/windvane/config/WVServerConfig;->domainPat:Ljava/util/regex/Pattern;

    const-string v1, ""

    .line 54
    sput-object v1, Landroid/taobao/windvane/config/WVServerConfig;->FORBIDDEN_DOMAIN_PATTERN:Ljava/lang/String;

    .line 55
    sput-object v0, Landroid/taobao/windvane/config/WVServerConfig;->forbiddenDomain:Ljava/util/regex/Pattern;

    const-string v2, "^((https?:)?\\/\\/([^/\\?#]+\\.)*((5317wan|guahao|wap\\.wandafilm|wrating|alipayobjects|(hft|\\w+app)\\.evergrande|jmt\\.wxcsgd|mpay\\.cx580|mt\\.locojoy|cpa1\\.locojoy|miiee|imaijia)\\.com|(h5\\.edaijia|beta\\.library\\.sh|web\\.chelaile\\.net|app3\\.shmzj\\.gov|bsfw\\.qingdao\\.gov|www\\.hzpolice\\.gov|www\\.sxgajj\\.gov|service\\.zjzwfw\\.gov|people\\.com|hbjg\\.premier-tech)\\.cn|(aliplay|ali\\.hk515)\\.net|tmall\\.pp\\.cc)([\\?|#|/|:].*)?)$"

    .line 56
    sput-object v2, Landroid/taobao/windvane/config/WVServerConfig;->THIRD_PARTY_DOMAIN_PATTERN:Ljava/lang/String;

    .line 57
    sput-object v0, Landroid/taobao/windvane/config/WVServerConfig;->thirdPartyDomain:Ljava/util/regex/Pattern;

    .line 58
    sput-object v1, Landroid/taobao/windvane/config/WVServerConfig;->SUPPORT_DOWNLOAD_DOMAIN_PATTERN:Ljava/lang/String;

    .line 59
    sput-object v0, Landroid/taobao/windvane/config/WVServerConfig;->supportDownloadDomain:Ljava/util/regex/Pattern;

    const-string v1, "https?:\\/\\/.*(g|img|gw)\\.alicdn\\.com\\/.*"

    .line 60
    sput-object v1, Landroid/taobao/windvane/config/WVServerConfig;->ALLOW_ACCESS_DOMAIN_PATTERN:Ljava/lang/String;

    .line 61
    sput-object v0, Landroid/taobao/windvane/config/WVServerConfig;->allowAccessDomain:Ljava/util/regex/Pattern;

    const-string v0, "0"

    .line 63
    sput-object v0, Landroid/taobao/windvane/config/WVServerConfig;->v:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static isAllowAccess(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "WVServerConfig"

    .line 237
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 241
    :cond_0
    sget-object v1, Landroid/taobao/windvane/config/WVServerConfig;->allowAccessDomain:Ljava/util/regex/Pattern;

    if-nez v1, :cond_2

    .line 242
    sget-object v1, Landroid/taobao/windvane/config/WVServerConfig;->ALLOW_ACCESS_DOMAIN_PATTERN:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    .line 243
    sput-object v1, Landroid/taobao/windvane/config/WVServerConfig;->ALLOW_ACCESS_DOMAIN_PATTERN:Ljava/lang/String;

    .line 246
    :cond_1
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/config/WVServerConfig;->ALLOW_ACCESS_DOMAIN_PATTERN:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Landroid/taobao/windvane/config/WVServerConfig;->allowAccessDomain:Ljava/util/regex/Pattern;

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compile pattern allowAccessDomain rule, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/taobao/windvane/config/WVServerConfig;->ALLOW_ACCESS_DOMAIN_PATTERN:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " PatternSyntaxException pattern:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/regex/PatternSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_2
    :goto_0
    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 254
    sget-object v0, Landroid/taobao/windvane/config/WVServerConfig;->allowAccessDomain:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 255
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    :cond_3
    return v2
.end method

.method public static isBlackUrl(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "WVServerConfig"

    .line 175
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 180
    :cond_0
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/taobao/windvane/config/GlobalConfig;->isUseGlobalUrlConfig()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v1, v1, Landroid/taobao/windvane/config/WVCommonConfigData;->useURLConfig:Z

    if-eqz v1, :cond_2

    .line 181
    invoke-static {}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->getInstance()Landroid/taobao/windvane/config/WVUrlMatchUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->isForbiddenOpen(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2

    .line 188
    :cond_2
    sget-object v1, Landroid/taobao/windvane/config/WVServerConfig;->forbiddenDomain:Ljava/util/regex/Pattern;

    if-nez v1, :cond_4

    .line 189
    sget-object v1, Landroid/taobao/windvane/config/WVServerConfig;->FORBIDDEN_DOMAIN_PATTERN:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ""

    .line 190
    sput-object v1, Landroid/taobao/windvane/config/WVServerConfig;->FORBIDDEN_DOMAIN_PATTERN:Ljava/lang/String;

    .line 193
    :cond_3
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/config/WVServerConfig;->FORBIDDEN_DOMAIN_PATTERN:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Landroid/taobao/windvane/config/WVServerConfig;->forbiddenDomain:Ljava/util/regex/Pattern;

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compile pattern black rule, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/taobao/windvane/config/WVServerConfig;->FORBIDDEN_DOMAIN_PATTERN:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " PatternSyntaxException pattern:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/regex/PatternSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_4
    :goto_0
    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 202
    sget-object v0, Landroid/taobao/windvane/config/WVServerConfig;->forbiddenDomain:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 203
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    :cond_5
    return v2
.end method

.method public static isBlackUrl(Ljava/lang/String;Landroid/taobao/windvane/webview/IWVWebView;)Z
    .locals 0

    .line 157
    invoke-interface {p1}, Landroid/taobao/windvane/webview/IWVWebView;->canUseUrlConfig()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 158
    invoke-static {}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->getInstance()Landroid/taobao/windvane/config/WVUrlMatchUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->isForbiddenOpen(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 164
    :cond_1
    invoke-static {p0}, Landroid/taobao/windvane/config/WVServerConfig;->isBlackUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSupportDownload(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "WVServerConfig"

    .line 211
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 214
    :cond_0
    sget-object v1, Landroid/taobao/windvane/config/WVServerConfig;->supportDownloadDomain:Ljava/util/regex/Pattern;

    if-nez v1, :cond_2

    .line 215
    sget-object v1, Landroid/taobao/windvane/config/WVServerConfig;->SUPPORT_DOWNLOAD_DOMAIN_PATTERN:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    .line 216
    sput-object v1, Landroid/taobao/windvane/config/WVServerConfig;->SUPPORT_DOWNLOAD_DOMAIN_PATTERN:Ljava/lang/String;

    .line 219
    :cond_1
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/config/WVServerConfig;->SUPPORT_DOWNLOAD_DOMAIN_PATTERN:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Landroid/taobao/windvane/config/WVServerConfig;->supportDownloadDomain:Ljava/util/regex/Pattern;

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compile pattern supportDownloadDomain rule, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/taobao/windvane/config/WVServerConfig;->SUPPORT_DOWNLOAD_DOMAIN_PATTERN:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " PatternSyntaxException pattern:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/regex/PatternSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_2
    :goto_0
    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 228
    sget-object v0, Landroid/taobao/windvane/config/WVServerConfig;->supportDownloadDomain:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 229
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    :cond_3
    return v2
.end method

.method public static isThirdPartyUrl(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "WVServerConfig"

    .line 120
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 125
    :cond_0
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/taobao/windvane/config/GlobalConfig;->isUseGlobalUrlConfig()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v1, v1, Landroid/taobao/windvane/config/WVCommonConfigData;->useURLConfig:Z

    if-eqz v1, :cond_2

    .line 126
    invoke-static {}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->getInstance()Landroid/taobao/windvane/config/WVUrlMatchUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->isAllowOpen(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2

    .line 133
    :cond_2
    sget-object v1, Landroid/taobao/windvane/config/WVServerConfig;->thirdPartyDomain:Ljava/util/regex/Pattern;

    if-nez v1, :cond_4

    .line 134
    sget-object v1, Landroid/taobao/windvane/config/WVServerConfig;->THIRD_PARTY_DOMAIN_PATTERN:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "^((https?:)?\\/\\/([^/\\?#]+\\.)*((5317wan|guahao|wap\\.wandafilm|wrating|alipayobjects|(hft|\\w+app)\\.evergrande|jmt\\.wxcsgd|mpay\\.cx580|mt\\.locojoy|cpa1\\.locojoy|miiee|imaijia)\\.com|(h5\\.edaijia|beta\\.library\\.sh|web\\.chelaile\\.net|app3\\.shmzj\\.gov|bsfw\\.qingdao\\.gov|www\\.hzpolice\\.gov|www\\.sxgajj\\.gov|service\\.zjzwfw\\.gov|people\\.com|hbjg\\.premier-tech)\\.cn|(aliplay|ali\\.hk515)\\.net|tmall\\.pp\\.cc)([\\?|#|/|:].*)?)$"

    .line 135
    sput-object v1, Landroid/taobao/windvane/config/WVServerConfig;->THIRD_PARTY_DOMAIN_PATTERN:Ljava/lang/String;

    .line 138
    :cond_3
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/config/WVServerConfig;->THIRD_PARTY_DOMAIN_PATTERN:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Landroid/taobao/windvane/config/WVServerConfig;->thirdPartyDomain:Ljava/util/regex/Pattern;

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compile pattern thirdPartyDomain rule, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/taobao/windvane/config/WVServerConfig;->THIRD_PARTY_DOMAIN_PATTERN:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " PatternSyntaxException pattern:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/regex/PatternSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_4
    :goto_0
    :try_start_1
    sget-object v0, Landroid/taobao/windvane/config/WVServerConfig;->thirdPartyDomain:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_5

    .line 147
    sget-object v0, Landroid/taobao/windvane/config/WVServerConfig;->thirdPartyDomain:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 148
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    :cond_5
    return v2
.end method

.method public static isThirdPartyUrl(Ljava/lang/String;Landroid/taobao/windvane/webview/IWVWebView;)Z
    .locals 0

    .line 108
    invoke-interface {p1}, Landroid/taobao/windvane/webview/IWVWebView;->canUseUrlConfig()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 109
    invoke-static {}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->getInstance()Landroid/taobao/windvane/config/WVUrlMatchUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->isAllowOpen(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 115
    :cond_1
    invoke-static {p0}, Landroid/taobao/windvane/config/WVServerConfig;->isThirdPartyUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isTrustedUrl(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "WVServerConfig"

    .line 75
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 78
    :cond_0
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/taobao/windvane/config/GlobalConfig;->isUseGlobalUrlConfig()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v1, v1, Landroid/taobao/windvane/config/WVCommonConfigData;->useURLConfig:Z

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 82
    :cond_1
    sget-object v1, Landroid/taobao/windvane/config/WVServerConfig;->domainPat:Ljava/util/regex/Pattern;

    if-nez v1, :cond_3

    .line 83
    sget-object v1, Landroid/taobao/windvane/config/WVServerConfig;->DOMAIN_PATTERN:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "^https?:\\/\\/(([^/\\?#]+\\.)*((taobao|tmall|juhuasuan|xiami|amap|taobaocdn|alipay|etao|alibaba|aliyun|alimama|weibo|tanx|laiwang|alicdn|mmstat|yunos|alibaba-inc|alitrip|aliloan|kanbox|wirlesshare|dingtalk|alimei|cnzz|kuaidadi|autonavi|m\\.yintai|polyinno|spdyidea|h5util|h5tool|5945i|miaostreet|1688)\\.com|(tb|tbcdn|weibo|mashort|mybank|ba\\.ugame\\.uc|game\\.uc)\\.cn|(fastidea|juzone)\\.(me|cc)|lwurl\\.to|taobao\\.net|tdd\\.la|yao\\.95095\\.com|tmall\\.hk|ahd\\.so|atb\\.so|mshare\\.cc|juhs\\.me|xianyu\\.mobi)([\\?|#|/].*)?|go(/.*)?)$"

    .line 84
    sput-object v1, Landroid/taobao/windvane/config/WVServerConfig;->DOMAIN_PATTERN:Ljava/lang/String;

    .line 87
    :cond_2
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/config/WVServerConfig;->DOMAIN_PATTERN:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Landroid/taobao/windvane/config/WVServerConfig;->domainPat:Ljava/util/regex/Pattern;

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compile pattern domainPat rule, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/taobao/windvane/config/WVServerConfig;->DOMAIN_PATTERN:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " PatternSyntaxException pattern:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/regex/PatternSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_3
    :goto_0
    :try_start_1
    sget-object v0, Landroid/taobao/windvane/config/WVServerConfig;->domainPat:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_4

    .line 97
    sget-object v0, Landroid/taobao/windvane/config/WVServerConfig;->domainPat:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 98
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    :cond_4
    return v2
.end method

.method public static isTrustedUrl(Ljava/lang/String;Landroid/taobao/windvane/webview/IWVWebView;)Z
    .locals 0

    .line 67
    invoke-interface {p1}, Landroid/taobao/windvane/webview/IWVWebView;->canUseUrlConfig()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 70
    :cond_0
    invoke-static {p0}, Landroid/taobao/windvane/config/WVServerConfig;->isTrustedUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static updateGlobalConfig(Ljava/lang/String;)Z
    .locals 4

    .line 266
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 270
    :cond_0
    new-instance v0, Landroid/taobao/windvane/connect/api/ApiResponse;

    invoke-direct {v0}, Landroid/taobao/windvane/connect/api/ApiResponse;-><init>()V

    .line 271
    invoke-virtual {v0, p0}, Landroid/taobao/windvane/connect/api/ApiResponse;->parseJsonResult(Ljava/lang/String;)Landroid/taobao/windvane/connect/api/ApiResponse;

    move-result-object p0

    iget-boolean p0, p0, Landroid/taobao/windvane/connect/api/ApiResponse;->success:Z

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 272
    iget-object p0, v0, Landroid/taobao/windvane/connect/api/ApiResponse;->data:Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    move-object p0, v2

    :goto_0
    if-eqz p0, :cond_5

    const-string v0, "lock"

    .line 275
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    sput-boolean v0, Landroid/taobao/windvane/config/WVServerConfig;->CACHE:Z

    const-string v0, "log"

    .line 276
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    sput-boolean v0, Landroid/taobao/windvane/config/WVServerConfig;->LOG:Z

    const-string/jumbo v0, "statistics"

    .line 277
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    sput-boolean v1, Landroid/taobao/windvane/config/WVServerConfig;->STATISTICS:Z

    const-string v0, "alidomain"

    .line 278
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Landroid/taobao/windvane/config/WVServerConfig;->DOMAIN_PATTERN:Ljava/lang/String;

    .line 279
    sput-object v2, Landroid/taobao/windvane/config/WVServerConfig;->domainPat:Ljava/util/regex/Pattern;

    return v3

    :cond_5
    return v1
.end method
