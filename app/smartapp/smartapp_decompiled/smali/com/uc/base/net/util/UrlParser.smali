.class public Lcom/uc/base/net/util/UrlParser;
.super Ljava/lang/Object;
.source "UrlParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/base/net/util/UrlParser$IDNBUGHOLDER;
    }
.end annotation


# static fields
.field private static final COUNTRY_CODE_TLDS:[Ljava/lang/String;

.field public static final DOMAIN_NAME:Ljava/util/regex/Pattern;

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final GENERIC_TLDS:[Ljava/lang/String;

.field private static final INFRASTRUCTURE_TLDS:[Ljava/lang/String;

.field public static final IP_ADDRESS_V4:Ljava/util/regex/Pattern;

.field private static final LOCAL_TLDS:[Ljava/lang/String;

.field private static final MATCH_GROUP_AUTHORITY:I = 0x2

.field private static final MATCH_GROUP_HOST:I = 0x3

.field private static final MATCH_GROUP_PATH:I = 0x5

.field private static final MATCH_GROUP_PORT:I = 0x4

.field private static final MATCH_GROUP_SCHEME:I = 0x1

.field public static final SPECIAL_SCHEME:Ljava/util/regex/Pattern;

.field public static final SPECIAL_SCHEME_WITHOUT_SLASH:Ljava/util/regex/Pattern;

.field public static final TOP_LEVEL_DOMAIN_STR_SIMPLIFIED:Ljava/lang/String; = "(([a-zA-Z]{2,}+)|(\u0434\u0435\u0442\u0438|\u043c\u043e\u043d|\u043c\u043e\u0441\u043a\u0432\u0430|\u043e\u043d\u043b\u0430\u0439\u043d|\u043e\u0440\u0433|\u0440\u0444|\u0441\u0430\u0439\u0442|\u0441\u0440\u0431|\u0443\u043a\u0440|\u049b\u0430\u0437|\u0627\u0644\u0627\u0631\u062f\u0646|\u0627\u0644\u062c\u0632\u0627\u0626\u0631|\u0627\u0644\u0633\u0639\u0648\u062f\u064a\u0629|\u0627\u0644\u0645\u063a\u0631\u0628|\u0627\u0645\u0627\u0631\u0627\u062a|\u0627\u06cc\u0631\u0627\u0646|\u0628\u0627\u0632\u0627\u0631|\u0628\u06be\u0627\u0631\u062a|\u062a\u0648\u0646\u0633|\u0633\u0648\u0631\u064a\u0629|\u0634\u0628\u0643\u0629|\u0639\u0645\u0627\u0646|\u0641\u0644\u0633\u0637\u064a\u0646|\u0642\u0637\u0631|\u0645\u0635\u0631|\u0645\u0644\u064a\u0633\u064a\u0627|\u0645\u0648\u0642\u0639|\u092d\u093e\u0930\u0924|\u0938\u0902\u0917\u0920\u0928|\u09ad\u09be\u09b0\u09a4|\u0a2d\u0a3e\u0a30\u0a24|\u0aad\u0abe\u0ab0\u0aa4|\u0b87\u0ba8\u0bcd\u0ba4\u0bbf\u0baf\u0bbe|\u0b87\u0bb2\u0b99\u0bcd\u0b95\u0bc8|\u0b9a\u0bbf\u0b99\u0bcd\u0b95\u0baa\u0bcd\u0baa\u0bc2\u0bb0\u0bcd|\u0c2d\u0c3e\u0c30\u0c24\u0c4d|\u0dbd\u0d82\u0d9a\u0dcf|\u0e44\u0e17\u0e22|\u307f\u3093\u306a|\u4e16\u754c|\u4e2d\u4fe1|\u4e2d\u56fd|\u4e2d\u570b|\u4e2d\u6587\u7f51|\u4f01\u4e1a|\u4f5b\u5c71|\u516c\u53f8|\u516c\u76ca|\u53f0\u6e7e|\u53f0\u7063|\u5546\u57ce|\u5546\u6807|\u5728\u7ebf|\u5e7f\u4e1c|\u6211\u7231\u4f60|\u624b\u673a|\u653f\u52a1|\u65b0\u52a0\u5761|\u673a\u6784|\u6e38\u620f|\u79fb\u52a8|\u7ec4\u7ec7\u673a\u6784|\u7f51\u5740|\u7f51\u7edc|\u96c6\u56e2|\u9999\u6e2f|\uc0bc\uc131|\ud55c\uad6d|xn\\-\\-1qqw23a|xn\\-\\-3bst00m|xn\\-\\-3ds443g|xn\\-\\-3e0b707e|xn\\-\\-45brj9c|xn\\-\\-4gbrim|xn\\-\\-55qw42g|xn\\-\\-55qx5d|xn\\-\\-6frz82g|xn\\-\\-6qq986b3xl|xn\\-\\-80adxhks|xn\\-\\-80ao21a|xn\\-\\-80asehdb|xn\\-\\-80aswg|xn\\-\\-90a3ac|xn\\-\\-c1avg|xn\\-\\-cg4bki|xn\\-\\-clchc0ea0b2g2a9gcd|xn\\-\\-czr694b|xn\\-\\-czru2d|xn\\-\\-d1acj3b|xn\\-\\-fiq228c5hs|xn\\-\\-fiq64b|xn\\-\\-fiqs8s|xn\\-\\-fiqz9s|xn\\-\\-fpcrj9c3d|xn\\-\\-fzc2c9e2c|xn\\-\\-gecrj9c|xn\\-\\-h2brj9c|xn\\-\\-i1b6b1a6a2e|xn\\-\\-io0a7i|xn\\-\\-j1amh|xn\\-\\-j6w193g|xn\\-\\-kprw13d|xn\\-\\-kpry57d|xn\\-\\-kput3i|xn\\-\\-l1acc|xn\\-\\-lgbbat1ad8j|xn\\-\\-mgb9awbf|xn\\-\\-mgba3a4f16a|xn\\-\\-mgbaam7a8h|xn\\-\\-mgbab2bd|xn\\-\\-mgbayh7gpa|xn\\-\\-mgbbh1a71e|xn\\-\\-mgbc0a9azcg|xn\\-\\-mgberp4a5d4ar|xn\\-\\-mgbx4cd0ab|xn\\-\\-ngbc5azd|xn\\-\\-nqv7f|xn\\-\\-nqv7fs00ema|xn\\-\\-o3cw4h|xn\\-\\-ogbpf8fl|xn\\-\\-p1ai|xn\\-\\-pgbs0dh|xn\\-\\-q9jyb4c|xn\\-\\-rhqv96g|xn\\-\\-s9brj9c|xn\\-\\-ses554g|xn\\-\\-unup4y|xn\\-\\-vhquv|xn\\-\\-wgbh1c|xn\\-\\-wgbl6a|xn\\-\\-xhq521b|xn\\-\\-xkc2al3hye2a|xn\\-\\-xkc2dl3a5ee0h|xn\\-\\-yfro4i67o|xn\\-\\-ygbi2ammx|xn\\-\\-zfr164b))"

.field public static final URL:Ljava/util/regex/Pattern;

.field private static volatile countryCodeTLDsMinus:[Ljava/lang/String;

.field private static volatile countryCodeTLDsPlus:[Ljava/lang/String;

.field private static volatile genericTLDsMinus:[Ljava/lang/String;

.field private static volatile genericTLDsPlus:[Ljava/lang/String;


# instance fields
.field private mAuthInfo:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mIsSpecialScheme:Z

.field private mOriginalUrl:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mPort:I

.field private mScheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/4 v0, 0x0

    .line 46
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/uc/base/net/util/UrlParser;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    const/4 v1, 0x2

    .line 81
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const-string v4, "(([a-zA-Z]{2,}+)|(\u0434\u0435\u0442\u0438|\u043c\u043e\u043d|\u043c\u043e\u0441\u043a\u0432\u0430|\u043e\u043d\u043b\u0430\u0439\u043d|\u043e\u0440\u0433|\u0440\u0444|\u0441\u0430\u0439\u0442|\u0441\u0440\u0431|\u0443\u043a\u0440|\u049b\u0430\u0437|\u0627\u0644\u0627\u0631\u062f\u0646|\u0627\u0644\u062c\u0632\u0627\u0626\u0631|\u0627\u0644\u0633\u0639\u0648\u062f\u064a\u0629|\u0627\u0644\u0645\u063a\u0631\u0628|\u0627\u0645\u0627\u0631\u0627\u062a|\u0627\u06cc\u0631\u0627\u0646|\u0628\u0627\u0632\u0627\u0631|\u0628\u06be\u0627\u0631\u062a|\u062a\u0648\u0646\u0633|\u0633\u0648\u0631\u064a\u0629|\u0634\u0628\u0643\u0629|\u0639\u0645\u0627\u0646|\u0641\u0644\u0633\u0637\u064a\u0646|\u0642\u0637\u0631|\u0645\u0635\u0631|\u0645\u0644\u064a\u0633\u064a\u0627|\u0645\u0648\u0642\u0639|\u092d\u093e\u0930\u0924|\u0938\u0902\u0917\u0920\u0928|\u09ad\u09be\u09b0\u09a4|\u0a2d\u0a3e\u0a30\u0a24|\u0aad\u0abe\u0ab0\u0aa4|\u0b87\u0ba8\u0bcd\u0ba4\u0bbf\u0baf\u0bbe|\u0b87\u0bb2\u0b99\u0bcd\u0b95\u0bc8|\u0b9a\u0bbf\u0b99\u0bcd\u0b95\u0baa\u0bcd\u0baa\u0bc2\u0bb0\u0bcd|\u0c2d\u0c3e\u0c30\u0c24\u0c4d|\u0dbd\u0d82\u0d9a\u0dcf|\u0e44\u0e17\u0e22|\u307f\u3093\u306a|\u4e16\u754c|\u4e2d\u4fe1|\u4e2d\u56fd|\u4e2d\u570b|\u4e2d\u6587\u7f51|\u4f01\u4e1a|\u4f5b\u5c71|\u516c\u53f8|\u516c\u76ca|\u53f0\u6e7e|\u53f0\u7063|\u5546\u57ce|\u5546\u6807|\u5728\u7ebf|\u5e7f\u4e1c|\u6211\u7231\u4f60|\u624b\u673a|\u653f\u52a1|\u65b0\u52a0\u5761|\u673a\u6784|\u6e38\u620f|\u79fb\u52a8|\u7ec4\u7ec7\u673a\u6784|\u7f51\u5740|\u7f51\u7edc|\u96c6\u56e2|\u9999\u6e2f|\uc0bc\uc131|\ud55c\uad6d|xn\\-\\-1qqw23a|xn\\-\\-3bst00m|xn\\-\\-3ds443g|xn\\-\\-3e0b707e|xn\\-\\-45brj9c|xn\\-\\-4gbrim|xn\\-\\-55qw42g|xn\\-\\-55qx5d|xn\\-\\-6frz82g|xn\\-\\-6qq986b3xl|xn\\-\\-80adxhks|xn\\-\\-80ao21a|xn\\-\\-80asehdb|xn\\-\\-80aswg|xn\\-\\-90a3ac|xn\\-\\-c1avg|xn\\-\\-cg4bki|xn\\-\\-clchc0ea0b2g2a9gcd|xn\\-\\-czr694b|xn\\-\\-czru2d|xn\\-\\-d1acj3b|xn\\-\\-fiq228c5hs|xn\\-\\-fiq64b|xn\\-\\-fiqs8s|xn\\-\\-fiqz9s|xn\\-\\-fpcrj9c3d|xn\\-\\-fzc2c9e2c|xn\\-\\-gecrj9c|xn\\-\\-h2brj9c|xn\\-\\-i1b6b1a6a2e|xn\\-\\-io0a7i|xn\\-\\-j1amh|xn\\-\\-j6w193g|xn\\-\\-kprw13d|xn\\-\\-kpry57d|xn\\-\\-kput3i|xn\\-\\-l1acc|xn\\-\\-lgbbat1ad8j|xn\\-\\-mgb9awbf|xn\\-\\-mgba3a4f16a|xn\\-\\-mgbaam7a8h|xn\\-\\-mgbab2bd|xn\\-\\-mgbayh7gpa|xn\\-\\-mgbbh1a71e|xn\\-\\-mgbc0a9azcg|xn\\-\\-mgberp4a5d4ar|xn\\-\\-mgbx4cd0ab|xn\\-\\-ngbc5azd|xn\\-\\-nqv7f|xn\\-\\-nqv7fs00ema|xn\\-\\-o3cw4h|xn\\-\\-ogbpf8fl|xn\\-\\-p1ai|xn\\-\\-pgbs0dh|xn\\-\\-q9jyb4c|xn\\-\\-rhqv96g|xn\\-\\-s9brj9c|xn\\-\\-ses554g|xn\\-\\-unup4y|xn\\-\\-vhquv|xn\\-\\-wgbh1c|xn\\-\\-wgbl6a|xn\\-\\-xhq521b|xn\\-\\-xkc2al3hye2a|xn\\-\\-xkc2dl3a5ee0h|xn\\-\\-yfro4i67o|xn\\-\\-ygbi2ammx|xn\\-\\-zfr164b))"

    aput-object v4, v2, v3

    const-string v4, "^((?:(?!-)[%1$s-]++(?<!-)|[%1$s]++)\\.)++%2$s$"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lcom/uc/base/net/util/UrlParser;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    const-string v2, "^((25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9]))$"

    .line 87
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lcom/uc/base/net/util/UrlParser;->IP_ADDRESS_V4:Ljava/util/regex/Pattern;

    const-string v2, "^((http|https|ftp|file|content|data|wtai|ed2k|flashget|thunder|market|uc)\\:\\/\\/)"

    .line 93
    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lcom/uc/base/net/util/UrlParser;->SPECIAL_SCHEME:Ljava/util/regex/Pattern;

    const-string v2, "^((sms|smsto|mms|mmsto|tel|about|ucd|ext)\\:)"

    .line 97
    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lcom/uc/base/net/util/UrlParser;->SPECIAL_SCHEME_WITHOUT_SLASH:Ljava/util/regex/Pattern;

    const-string v2, "(?:(http|https|file|.*)\\:\\/\\/)?(?:([-A-Za-z0-9$_.+!*\'(),;?&=]+(?:\\:[-A-Za-z0-9$_.+!*\'(),;?&=]+)?)@)?([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef%_-][a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef%_\\.-]*|\\[[0-9a-fA-F:\\.]+\\])?(?:\\:([0-9]*))?(\\/?[^#]*)?.*"

    .line 101
    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lcom/uc/base/net/util/UrlParser;->URL:Ljava/util/regex/Pattern;

    const-string v2, "arpa"

    .line 447
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/uc/base/net/util/UrlParser;->INFRASTRUCTURE_TLDS:[Ljava/lang/String;

    const/16 v2, 0x4d2

    .line 452
    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "aaa"

    aput-object v4, v2, v0

    const-string v4, "aarp"

    aput-object v4, v2, v3

    const-string v4, "abarth"

    aput-object v4, v2, v1

    const/4 v4, 0x3

    const-string v5, "abb"

    aput-object v5, v2, v4

    const/4 v5, 0x4

    const-string v6, "abbott"

    aput-object v6, v2, v5

    const/4 v6, 0x5

    const-string v7, "abbvie"

    aput-object v7, v2, v6

    const/4 v7, 0x6

    const-string v8, "abc"

    aput-object v8, v2, v7

    const/4 v8, 0x7

    const-string v9, "able"

    aput-object v9, v2, v8

    const/16 v9, 0x8

    const-string v10, "abogado"

    aput-object v10, v2, v9

    const/16 v10, 0x9

    const-string v11, "abudhabi"

    aput-object v11, v2, v10

    const/16 v11, 0xa

    const-string v12, "academy"

    aput-object v12, v2, v11

    const/16 v12, 0xb

    const-string v13, "accenture"

    aput-object v13, v2, v12

    const/16 v13, 0xc

    const-string v14, "accountant"

    aput-object v14, v2, v13

    const/16 v14, 0xd

    const-string v15, "accountants"

    aput-object v15, v2, v14

    const/16 v15, 0xe

    const-string v16, "aco"

    aput-object v16, v2, v15

    const/16 v16, 0xf

    const-string v17, "active"

    aput-object v17, v2, v16

    const/16 v16, 0x10

    const-string v17, "actor"

    aput-object v17, v2, v16

    const/16 v16, 0x11

    const-string v17, "adac"

    aput-object v17, v2, v16

    const/16 v16, 0x12

    const-string v17, "ads"

    aput-object v17, v2, v16

    const/16 v16, 0x13

    const-string v17, "adult"

    aput-object v17, v2, v16

    const/16 v16, 0x14

    const-string v17, "aeg"

    aput-object v17, v2, v16

    const/16 v16, 0x15

    const-string v17, "aero"

    aput-object v17, v2, v16

    const/16 v16, 0x16

    const-string v17, "aetna"

    aput-object v17, v2, v16

    const/16 v16, 0x17

    const-string v17, "afamilycompany"

    aput-object v17, v2, v16

    const/16 v16, 0x18

    const-string v17, "afl"

    aput-object v17, v2, v16

    const/16 v16, 0x19

    const-string v17, "agakhan"

    aput-object v17, v2, v16

    const/16 v16, 0x1a

    const-string v17, "agency"

    aput-object v17, v2, v16

    const/16 v16, 0x1b

    const-string v17, "aig"

    aput-object v17, v2, v16

    const/16 v16, 0x1c

    const-string v17, "aigo"

    aput-object v17, v2, v16

    const/16 v16, 0x1d

    const-string v17, "airbus"

    aput-object v17, v2, v16

    const/16 v16, 0x1e

    const-string v17, "airforce"

    aput-object v17, v2, v16

    const/16 v16, 0x1f

    const-string v17, "airtel"

    aput-object v17, v2, v16

    const/16 v16, 0x20

    const-string v17, "akdn"

    aput-object v17, v2, v16

    const/16 v16, 0x21

    const-string v17, "alfaromeo"

    aput-object v17, v2, v16

    const/16 v16, 0x22

    const-string v17, "alibaba"

    aput-object v17, v2, v16

    const/16 v16, 0x23

    const-string v17, "alipay"

    aput-object v17, v2, v16

    const/16 v16, 0x24

    const-string v17, "allfinanz"

    aput-object v17, v2, v16

    const/16 v16, 0x25

    const-string v17, "allstate"

    aput-object v17, v2, v16

    const/16 v16, 0x26

    const-string v17, "ally"

    aput-object v17, v2, v16

    const/16 v16, 0x27

    const-string v17, "alsace"

    aput-object v17, v2, v16

    const/16 v16, 0x28

    const-string v17, "alstom"

    aput-object v17, v2, v16

    const/16 v16, 0x29

    const-string v17, "americanexpress"

    aput-object v17, v2, v16

    const/16 v16, 0x2a

    const-string v17, "americanfamily"

    aput-object v17, v2, v16

    const/16 v16, 0x2b

    const-string v17, "amex"

    aput-object v17, v2, v16

    const/16 v16, 0x2c

    const-string v17, "amfam"

    aput-object v17, v2, v16

    const/16 v16, 0x2d

    const-string v17, "amica"

    aput-object v17, v2, v16

    const/16 v16, 0x2e

    const-string v17, "amsterdam"

    aput-object v17, v2, v16

    const/16 v16, 0x2f

    const-string v17, "analytics"

    aput-object v17, v2, v16

    const/16 v16, 0x30

    const-string v17, "android"

    aput-object v17, v2, v16

    const/16 v16, 0x31

    const-string v17, "anquan"

    aput-object v17, v2, v16

    const/16 v16, 0x32

    const-string v17, "anz"

    aput-object v17, v2, v16

    const/16 v16, 0x33

    const-string v17, "aol"

    aput-object v17, v2, v16

    const/16 v16, 0x34

    const-string v17, "apartments"

    aput-object v17, v2, v16

    const/16 v16, 0x35

    const-string v17, "app"

    aput-object v17, v2, v16

    const/16 v16, 0x36

    const-string v17, "apple"

    aput-object v17, v2, v16

    const/16 v16, 0x37

    const-string v17, "aquarelle"

    aput-object v17, v2, v16

    const/16 v16, 0x38

    const-string v17, "aramco"

    aput-object v17, v2, v16

    const/16 v16, 0x39

    const-string v17, "archi"

    aput-object v17, v2, v16

    const/16 v16, 0x3a

    const-string v17, "army"

    aput-object v17, v2, v16

    const/16 v16, 0x3b

    const-string v17, "art"

    aput-object v17, v2, v16

    const/16 v16, 0x3c

    const-string v17, "arte"

    aput-object v17, v2, v16

    const/16 v16, 0x3d

    const-string v17, "asda"

    aput-object v17, v2, v16

    const/16 v16, 0x3e

    const-string v17, "asia"

    aput-object v17, v2, v16

    const/16 v16, 0x3f

    const-string v17, "associates"

    aput-object v17, v2, v16

    const/16 v16, 0x40

    const-string v17, "athleta"

    aput-object v17, v2, v16

    const/16 v16, 0x41

    const-string v17, "attorney"

    aput-object v17, v2, v16

    const/16 v16, 0x42

    const-string v17, "auction"

    aput-object v17, v2, v16

    const/16 v16, 0x43

    const-string v17, "audi"

    aput-object v17, v2, v16

    const/16 v16, 0x44

    const-string v17, "audible"

    aput-object v17, v2, v16

    const/16 v16, 0x45

    const-string v17, "audio"

    aput-object v17, v2, v16

    const/16 v16, 0x46

    const-string v17, "auspost"

    aput-object v17, v2, v16

    const/16 v16, 0x47

    const-string v17, "author"

    aput-object v17, v2, v16

    const/16 v16, 0x48

    const-string v17, "auto"

    aput-object v17, v2, v16

    const/16 v16, 0x49

    const-string v17, "autos"

    aput-object v17, v2, v16

    const/16 v16, 0x4a

    const-string v17, "avianca"

    aput-object v17, v2, v16

    const/16 v16, 0x4b

    const-string v17, "aws"

    aput-object v17, v2, v16

    const/16 v16, 0x4c

    const-string v17, "axa"

    aput-object v17, v2, v16

    const/16 v16, 0x4d

    const-string v17, "azure"

    aput-object v17, v2, v16

    const/16 v16, 0x4e

    const-string v17, "baby"

    aput-object v17, v2, v16

    const/16 v16, 0x4f

    const-string v17, "baidu"

    aput-object v17, v2, v16

    const/16 v16, 0x50

    const-string v17, "banamex"

    aput-object v17, v2, v16

    const/16 v16, 0x51

    const-string v17, "bananarepublic"

    aput-object v17, v2, v16

    const/16 v16, 0x52

    const-string v17, "band"

    aput-object v17, v2, v16

    const/16 v16, 0x53

    const-string v17, "bank"

    aput-object v17, v2, v16

    const/16 v16, 0x54

    const-string v17, "bar"

    aput-object v17, v2, v16

    const/16 v16, 0x55

    const-string v17, "barcelona"

    aput-object v17, v2, v16

    const/16 v16, 0x56

    const-string v17, "barclaycard"

    aput-object v17, v2, v16

    const/16 v16, 0x57

    const-string v17, "barclays"

    aput-object v17, v2, v16

    const/16 v16, 0x58

    const-string v17, "barefoot"

    aput-object v17, v2, v16

    const/16 v16, 0x59

    const-string v17, "bargains"

    aput-object v17, v2, v16

    const/16 v16, 0x5a

    const-string v17, "baseball"

    aput-object v17, v2, v16

    const/16 v16, 0x5b

    const-string v17, "basketball"

    aput-object v17, v2, v16

    const/16 v16, 0x5c

    const-string v17, "bauhaus"

    aput-object v17, v2, v16

    const/16 v16, 0x5d

    const-string v17, "bayern"

    aput-object v17, v2, v16

    const/16 v16, 0x5e

    const-string v17, "bbc"

    aput-object v17, v2, v16

    const/16 v16, 0x5f

    const-string v17, "bbt"

    aput-object v17, v2, v16

    const/16 v16, 0x60

    const-string v17, "bbva"

    aput-object v17, v2, v16

    const/16 v16, 0x61

    const-string v17, "bcg"

    aput-object v17, v2, v16

    const/16 v16, 0x62

    const-string v17, "bcn"

    aput-object v17, v2, v16

    const/16 v16, 0x63

    const-string v17, "beats"

    aput-object v17, v2, v16

    const/16 v16, 0x64

    const-string v17, "beauty"

    aput-object v17, v2, v16

    const/16 v16, 0x65

    const-string v17, "beer"

    aput-object v17, v2, v16

    const/16 v16, 0x66

    const-string v17, "bentley"

    aput-object v17, v2, v16

    const/16 v16, 0x67

    const-string v17, "berlin"

    aput-object v17, v2, v16

    const/16 v16, 0x68

    const-string v17, "best"

    aput-object v17, v2, v16

    const/16 v16, 0x69

    const-string v17, "bestbuy"

    aput-object v17, v2, v16

    const/16 v16, 0x6a

    const-string v17, "bet"

    aput-object v17, v2, v16

    const/16 v16, 0x6b

    const-string v17, "bharti"

    aput-object v17, v2, v16

    const/16 v16, 0x6c

    const-string v17, "bible"

    aput-object v17, v2, v16

    const/16 v16, 0x6d

    const-string v17, "bid"

    aput-object v17, v2, v16

    const/16 v16, 0x6e

    const-string v17, "bike"

    aput-object v17, v2, v16

    const/16 v16, 0x6f

    const-string v17, "bing"

    aput-object v17, v2, v16

    const/16 v16, 0x70

    const-string v17, "bingo"

    aput-object v17, v2, v16

    const/16 v16, 0x71

    const-string v17, "bio"

    aput-object v17, v2, v16

    const/16 v16, 0x72

    const-string v17, "biz"

    aput-object v17, v2, v16

    const/16 v16, 0x73

    const-string v17, "black"

    aput-object v17, v2, v16

    const/16 v16, 0x74

    const-string v17, "blackfriday"

    aput-object v17, v2, v16

    const/16 v16, 0x75

    const-string v17, "blanco"

    aput-object v17, v2, v16

    const/16 v16, 0x76

    const-string v17, "blockbuster"

    aput-object v17, v2, v16

    const/16 v16, 0x77

    const-string v17, "blog"

    aput-object v17, v2, v16

    const/16 v16, 0x78

    const-string v17, "bloomberg"

    aput-object v17, v2, v16

    const/16 v16, 0x79

    const-string v17, "blue"

    aput-object v17, v2, v16

    const/16 v16, 0x7a

    const-string v17, "bms"

    aput-object v17, v2, v16

    const/16 v16, 0x7b

    const-string v17, "bmw"

    aput-object v17, v2, v16

    const/16 v16, 0x7c

    const-string v17, "bnl"

    aput-object v17, v2, v16

    const/16 v16, 0x7d

    const-string v17, "bnpparibas"

    aput-object v17, v2, v16

    const/16 v16, 0x7e

    const-string v17, "boats"

    aput-object v17, v2, v16

    const/16 v16, 0x7f

    const-string v17, "boehringer"

    aput-object v17, v2, v16

    const/16 v16, 0x80

    const-string v17, "bofa"

    aput-object v17, v2, v16

    const/16 v16, 0x81

    const-string v17, "bom"

    aput-object v17, v2, v16

    const/16 v16, 0x82

    const-string v17, "bond"

    aput-object v17, v2, v16

    const/16 v16, 0x83

    const-string v17, "boo"

    aput-object v17, v2, v16

    const/16 v16, 0x84

    const-string v17, "book"

    aput-object v17, v2, v16

    const/16 v16, 0x85

    const-string v17, "booking"

    aput-object v17, v2, v16

    const/16 v16, 0x86

    const-string v17, "boots"

    aput-object v17, v2, v16

    const/16 v16, 0x87

    const-string v17, "bosch"

    aput-object v17, v2, v16

    const/16 v16, 0x88

    const-string v17, "bostik"

    aput-object v17, v2, v16

    const/16 v16, 0x89

    const-string v17, "boston"

    aput-object v17, v2, v16

    const/16 v16, 0x8a

    const-string v17, "bot"

    aput-object v17, v2, v16

    const/16 v16, 0x8b

    const-string v17, "boutique"

    aput-object v17, v2, v16

    const/16 v16, 0x8c

    const-string v17, "box"

    aput-object v17, v2, v16

    const/16 v16, 0x8d

    const-string v17, "bradesco"

    aput-object v17, v2, v16

    const/16 v16, 0x8e

    const-string v17, "bridgestone"

    aput-object v17, v2, v16

    const/16 v16, 0x8f

    const-string v17, "broadway"

    aput-object v17, v2, v16

    const/16 v16, 0x90

    const-string v17, "broker"

    aput-object v17, v2, v16

    const/16 v16, 0x91

    const-string v17, "brother"

    aput-object v17, v2, v16

    const/16 v16, 0x92

    const-string v17, "brussels"

    aput-object v17, v2, v16

    const/16 v16, 0x93

    const-string v17, "budapest"

    aput-object v17, v2, v16

    const/16 v16, 0x94

    const-string v17, "bugatti"

    aput-object v17, v2, v16

    const/16 v16, 0x95

    const-string v17, "build"

    aput-object v17, v2, v16

    const/16 v16, 0x96

    const-string v17, "builders"

    aput-object v17, v2, v16

    const/16 v16, 0x97

    const-string v17, "business"

    aput-object v17, v2, v16

    const/16 v16, 0x98

    const-string v17, "buy"

    aput-object v17, v2, v16

    const/16 v16, 0x99

    const-string v17, "buzz"

    aput-object v17, v2, v16

    const/16 v16, 0x9a

    const-string v17, "bzh"

    aput-object v17, v2, v16

    const/16 v16, 0x9b

    const-string v17, "cab"

    aput-object v17, v2, v16

    const/16 v16, 0x9c

    const-string v17, "cafe"

    aput-object v17, v2, v16

    const/16 v16, 0x9d

    const-string v17, "cal"

    aput-object v17, v2, v16

    const/16 v16, 0x9e

    const-string v17, "call"

    aput-object v17, v2, v16

    const/16 v16, 0x9f

    const-string v17, "calvinklein"

    aput-object v17, v2, v16

    const/16 v16, 0xa0

    const-string v17, "cam"

    aput-object v17, v2, v16

    const/16 v16, 0xa1

    const-string v17, "camera"

    aput-object v17, v2, v16

    const/16 v16, 0xa2

    const-string v17, "camp"

    aput-object v17, v2, v16

    const/16 v16, 0xa3

    const-string v17, "cancerresearch"

    aput-object v17, v2, v16

    const/16 v16, 0xa4

    const-string v17, "canon"

    aput-object v17, v2, v16

    const/16 v16, 0xa5

    const-string v17, "capetown"

    aput-object v17, v2, v16

    const/16 v16, 0xa6

    const-string v17, "capital"

    aput-object v17, v2, v16

    const/16 v16, 0xa7

    const-string v17, "capitalone"

    aput-object v17, v2, v16

    const/16 v16, 0xa8

    const-string v17, "car"

    aput-object v17, v2, v16

    const/16 v16, 0xa9

    const-string v17, "caravan"

    aput-object v17, v2, v16

    const/16 v16, 0xaa

    const-string v17, "cards"

    aput-object v17, v2, v16

    const/16 v16, 0xab

    const-string v17, "care"

    aput-object v17, v2, v16

    const/16 v16, 0xac

    const-string v17, "career"

    aput-object v17, v2, v16

    const/16 v16, 0xad

    const-string v17, "careers"

    aput-object v17, v2, v16

    const/16 v16, 0xae

    const-string v17, "cars"

    aput-object v17, v2, v16

    const/16 v16, 0xaf

    const-string v17, "cartier"

    aput-object v17, v2, v16

    const/16 v16, 0xb0

    const-string v17, "casa"

    aput-object v17, v2, v16

    const/16 v16, 0xb1

    const-string v17, "case"

    aput-object v17, v2, v16

    const/16 v16, 0xb2

    const-string v17, "caseih"

    aput-object v17, v2, v16

    const/16 v16, 0xb3

    const-string v17, "cash"

    aput-object v17, v2, v16

    const/16 v16, 0xb4

    const-string v17, "casino"

    aput-object v17, v2, v16

    const/16 v16, 0xb5

    const-string v17, "cat"

    aput-object v17, v2, v16

    const/16 v16, 0xb6

    const-string v17, "catering"

    aput-object v17, v2, v16

    const/16 v16, 0xb7

    const-string v17, "catholic"

    aput-object v17, v2, v16

    const/16 v16, 0xb8

    const-string v17, "cba"

    aput-object v17, v2, v16

    const/16 v16, 0xb9

    const-string v17, "cbn"

    aput-object v17, v2, v16

    const/16 v16, 0xba

    const-string v17, "cbre"

    aput-object v17, v2, v16

    const/16 v16, 0xbb

    const-string v17, "cbs"

    aput-object v17, v2, v16

    const/16 v16, 0xbc

    const-string v17, "ceb"

    aput-object v17, v2, v16

    const/16 v16, 0xbd

    const-string v17, "center"

    aput-object v17, v2, v16

    const/16 v16, 0xbe

    const-string v17, "ceo"

    aput-object v17, v2, v16

    const/16 v16, 0xbf

    const-string v17, "cern"

    aput-object v17, v2, v16

    const/16 v16, 0xc0

    const-string v17, "cfa"

    aput-object v17, v2, v16

    const/16 v16, 0xc1

    const-string v17, "cfd"

    aput-object v17, v2, v16

    const/16 v16, 0xc2

    const-string v17, "chanel"

    aput-object v17, v2, v16

    const/16 v16, 0xc3

    const-string v17, "channel"

    aput-object v17, v2, v16

    const/16 v16, 0xc4

    const-string v17, "chase"

    aput-object v17, v2, v16

    const/16 v16, 0xc5

    const-string v17, "chat"

    aput-object v17, v2, v16

    const/16 v16, 0xc6

    const-string v17, "cheap"

    aput-object v17, v2, v16

    const/16 v16, 0xc7

    const-string v17, "chintai"

    aput-object v17, v2, v16

    const/16 v16, 0xc8

    const-string v17, "chloe"

    aput-object v17, v2, v16

    const/16 v16, 0xc9

    const-string v17, "christmas"

    aput-object v17, v2, v16

    const/16 v16, 0xca

    const-string v17, "chrome"

    aput-object v17, v2, v16

    const/16 v16, 0xcb

    const-string v17, "chrysler"

    aput-object v17, v2, v16

    const/16 v16, 0xcc

    const-string v17, "church"

    aput-object v17, v2, v16

    const/16 v16, 0xcd

    const-string v17, "cipriani"

    aput-object v17, v2, v16

    const/16 v16, 0xce

    const-string v17, "circle"

    aput-object v17, v2, v16

    const/16 v16, 0xcf

    const-string v17, "cisco"

    aput-object v17, v2, v16

    const/16 v16, 0xd0

    const-string v17, "citadel"

    aput-object v17, v2, v16

    const/16 v16, 0xd1

    const-string v17, "citi"

    aput-object v17, v2, v16

    const/16 v16, 0xd2

    const-string v17, "citic"

    aput-object v17, v2, v16

    const/16 v16, 0xd3

    const-string v17, "city"

    aput-object v17, v2, v16

    const/16 v16, 0xd4

    const-string v17, "cityeats"

    aput-object v17, v2, v16

    const/16 v16, 0xd5

    const-string v17, "claims"

    aput-object v17, v2, v16

    const/16 v16, 0xd6

    const-string v17, "cleaning"

    aput-object v17, v2, v16

    const/16 v16, 0xd7

    const-string v17, "click"

    aput-object v17, v2, v16

    const/16 v16, 0xd8

    const-string v17, "clinic"

    aput-object v17, v2, v16

    const/16 v16, 0xd9

    const-string v17, "clinique"

    aput-object v17, v2, v16

    const/16 v16, 0xda

    const-string v17, "clothing"

    aput-object v17, v2, v16

    const/16 v16, 0xdb

    const-string v17, "cloud"

    aput-object v17, v2, v16

    const/16 v16, 0xdc

    const-string v17, "club"

    aput-object v17, v2, v16

    const/16 v16, 0xdd

    const-string v17, "clubmed"

    aput-object v17, v2, v16

    const/16 v16, 0xde

    const-string v17, "coach"

    aput-object v17, v2, v16

    const/16 v16, 0xdf

    const-string v17, "codes"

    aput-object v17, v2, v16

    const/16 v16, 0xe0

    const-string v17, "coffee"

    aput-object v17, v2, v16

    const/16 v16, 0xe1

    const-string v17, "college"

    aput-object v17, v2, v16

    const/16 v16, 0xe2

    const-string v17, "cologne"

    aput-object v17, v2, v16

    const/16 v16, 0xe3

    const-string v17, "com"

    aput-object v17, v2, v16

    const/16 v16, 0xe4

    const-string v17, "comcast"

    aput-object v17, v2, v16

    const/16 v16, 0xe5

    const-string v17, "commbank"

    aput-object v17, v2, v16

    const/16 v16, 0xe6

    const-string v17, "community"

    aput-object v17, v2, v16

    const/16 v16, 0xe7

    const-string v17, "company"

    aput-object v17, v2, v16

    const/16 v16, 0xe8

    const-string v17, "compare"

    aput-object v17, v2, v16

    const/16 v16, 0xe9

    const-string v17, "computer"

    aput-object v17, v2, v16

    const/16 v16, 0xea

    const-string v17, "comsec"

    aput-object v17, v2, v16

    const/16 v16, 0xeb

    const-string v17, "condos"

    aput-object v17, v2, v16

    const/16 v16, 0xec

    const-string v17, "construction"

    aput-object v17, v2, v16

    const/16 v16, 0xed

    const-string v17, "consulting"

    aput-object v17, v2, v16

    const/16 v16, 0xee

    const-string v17, "contact"

    aput-object v17, v2, v16

    const/16 v16, 0xef

    const-string v17, "contractors"

    aput-object v17, v2, v16

    const/16 v16, 0xf0

    const-string v17, "cooking"

    aput-object v17, v2, v16

    const/16 v16, 0xf1

    const-string v17, "cookingchannel"

    aput-object v17, v2, v16

    const/16 v16, 0xf2

    const-string v17, "cool"

    aput-object v17, v2, v16

    const/16 v16, 0xf3

    const-string v17, "coop"

    aput-object v17, v2, v16

    const/16 v16, 0xf4

    const-string v17, "corsica"

    aput-object v17, v2, v16

    const/16 v16, 0xf5

    const-string v17, "country"

    aput-object v17, v2, v16

    const/16 v16, 0xf6

    const-string v17, "coupon"

    aput-object v17, v2, v16

    const/16 v16, 0xf7

    const-string v17, "coupons"

    aput-object v17, v2, v16

    const/16 v16, 0xf8

    const-string v17, "courses"

    aput-object v17, v2, v16

    const/16 v16, 0xf9

    const-string v17, "credit"

    aput-object v17, v2, v16

    const/16 v16, 0xfa

    const-string v17, "creditcard"

    aput-object v17, v2, v16

    const/16 v16, 0xfb

    const-string v17, "creditunion"

    aput-object v17, v2, v16

    const/16 v16, 0xfc

    const-string v17, "cricket"

    aput-object v17, v2, v16

    const/16 v16, 0xfd

    const-string v17, "crown"

    aput-object v17, v2, v16

    const/16 v16, 0xfe

    const-string v17, "crs"

    aput-object v17, v2, v16

    const/16 v16, 0xff

    const-string v17, "cruise"

    aput-object v17, v2, v16

    const/16 v16, 0x100

    const-string v17, "cruises"

    aput-object v17, v2, v16

    const/16 v16, 0x101

    const-string v17, "csc"

    aput-object v17, v2, v16

    const/16 v16, 0x102

    const-string v17, "cuisinella"

    aput-object v17, v2, v16

    const/16 v16, 0x103

    const-string v17, "cymru"

    aput-object v17, v2, v16

    const/16 v16, 0x104

    const-string v17, "cyou"

    aput-object v17, v2, v16

    const/16 v16, 0x105

    const-string v17, "dabur"

    aput-object v17, v2, v16

    const/16 v16, 0x106

    const-string v17, "dad"

    aput-object v17, v2, v16

    const/16 v16, 0x107

    const-string v17, "dance"

    aput-object v17, v2, v16

    const/16 v16, 0x108

    const-string v17, "data"

    aput-object v17, v2, v16

    const/16 v16, 0x109

    const-string v17, "date"

    aput-object v17, v2, v16

    const/16 v16, 0x10a

    const-string v17, "dating"

    aput-object v17, v2, v16

    const/16 v16, 0x10b

    const-string v17, "datsun"

    aput-object v17, v2, v16

    const/16 v16, 0x10c

    const-string v17, "day"

    aput-object v17, v2, v16

    const/16 v16, 0x10d

    const-string v17, "dclk"

    aput-object v17, v2, v16

    const/16 v16, 0x10e

    const-string v17, "dds"

    aput-object v17, v2, v16

    const/16 v16, 0x10f

    const-string v17, "deal"

    aput-object v17, v2, v16

    const/16 v16, 0x110

    const-string v17, "dealer"

    aput-object v17, v2, v16

    const/16 v16, 0x111

    const-string v17, "deals"

    aput-object v17, v2, v16

    const/16 v16, 0x112

    const-string v17, "degree"

    aput-object v17, v2, v16

    const/16 v16, 0x113

    const-string v17, "delivery"

    aput-object v17, v2, v16

    const/16 v16, 0x114

    const-string v17, "dell"

    aput-object v17, v2, v16

    const/16 v16, 0x115

    const-string v17, "deloitte"

    aput-object v17, v2, v16

    const/16 v16, 0x116

    const-string v17, "delta"

    aput-object v17, v2, v16

    const/16 v16, 0x117

    const-string v17, "democrat"

    aput-object v17, v2, v16

    const/16 v16, 0x118

    const-string v17, "dental"

    aput-object v17, v2, v16

    const/16 v16, 0x119

    const-string v17, "dentist"

    aput-object v17, v2, v16

    const/16 v16, 0x11a

    const-string v17, "desi"

    aput-object v17, v2, v16

    const/16 v16, 0x11b

    const-string v17, "design"

    aput-object v17, v2, v16

    const/16 v16, 0x11c

    const-string v17, "dev"

    aput-object v17, v2, v16

    const/16 v16, 0x11d

    const-string v17, "dhl"

    aput-object v17, v2, v16

    const/16 v16, 0x11e

    const-string v17, "diamonds"

    aput-object v17, v2, v16

    const/16 v16, 0x11f

    const-string v17, "diet"

    aput-object v17, v2, v16

    const/16 v16, 0x120

    const-string v17, "digital"

    aput-object v17, v2, v16

    const/16 v16, 0x121

    const-string v17, "direct"

    aput-object v17, v2, v16

    const/16 v16, 0x122

    const-string v17, "directory"

    aput-object v17, v2, v16

    const/16 v16, 0x123

    const-string v17, "discount"

    aput-object v17, v2, v16

    const/16 v16, 0x124

    const-string v17, "discover"

    aput-object v17, v2, v16

    const/16 v16, 0x125

    const-string v17, "dish"

    aput-object v17, v2, v16

    const/16 v16, 0x126

    const-string v17, "diy"

    aput-object v17, v2, v16

    const/16 v16, 0x127

    const-string v17, "dnp"

    aput-object v17, v2, v16

    const/16 v16, 0x128

    const-string v17, "docs"

    aput-object v17, v2, v16

    const/16 v16, 0x129

    const-string v17, "doctor"

    aput-object v17, v2, v16

    const/16 v16, 0x12a

    const-string v17, "dodge"

    aput-object v17, v2, v16

    const/16 v16, 0x12b

    const-string v17, "dog"

    aput-object v17, v2, v16

    const/16 v16, 0x12c

    const-string v17, "doha"

    aput-object v17, v2, v16

    const/16 v16, 0x12d

    const-string v17, "domains"

    aput-object v17, v2, v16

    const/16 v16, 0x12e

    const-string v17, "dot"

    aput-object v17, v2, v16

    const/16 v16, 0x12f

    const-string v17, "download"

    aput-object v17, v2, v16

    const/16 v16, 0x130

    const-string v17, "drive"

    aput-object v17, v2, v16

    const/16 v16, 0x131

    const-string v17, "dtv"

    aput-object v17, v2, v16

    const/16 v16, 0x132

    const-string v17, "dubai"

    aput-object v17, v2, v16

    const/16 v16, 0x133

    const-string v17, "duck"

    aput-object v17, v2, v16

    const/16 v16, 0x134

    const-string v17, "dunlop"

    aput-object v17, v2, v16

    const/16 v16, 0x135

    const-string v17, "duns"

    aput-object v17, v2, v16

    const/16 v16, 0x136

    const-string v17, "dupont"

    aput-object v17, v2, v16

    const/16 v16, 0x137

    const-string v17, "durban"

    aput-object v17, v2, v16

    const/16 v16, 0x138

    const-string v17, "dvag"

    aput-object v17, v2, v16

    const/16 v16, 0x139

    const-string v17, "dvr"

    aput-object v17, v2, v16

    const/16 v16, 0x13a

    const-string v17, "earth"

    aput-object v17, v2, v16

    const/16 v16, 0x13b

    const-string v17, "eat"

    aput-object v17, v2, v16

    const/16 v16, 0x13c

    const-string v17, "eco"

    aput-object v17, v2, v16

    const/16 v16, 0x13d

    const-string v17, "edeka"

    aput-object v17, v2, v16

    const/16 v16, 0x13e

    const-string v17, "edu"

    aput-object v17, v2, v16

    const/16 v16, 0x13f

    const-string v17, "education"

    aput-object v17, v2, v16

    const/16 v16, 0x140

    const-string v17, "email"

    aput-object v17, v2, v16

    const/16 v16, 0x141

    const-string v17, "emerck"

    aput-object v17, v2, v16

    const/16 v16, 0x142

    const-string v17, "energy"

    aput-object v17, v2, v16

    const/16 v16, 0x143

    const-string v17, "engineer"

    aput-object v17, v2, v16

    const/16 v16, 0x144

    const-string v17, "engineering"

    aput-object v17, v2, v16

    const/16 v16, 0x145

    const-string v17, "enterprises"

    aput-object v17, v2, v16

    const/16 v16, 0x146

    const-string v17, "epost"

    aput-object v17, v2, v16

    const/16 v16, 0x147

    const-string v17, "epson"

    aput-object v17, v2, v16

    const/16 v16, 0x148

    const-string v17, "equipment"

    aput-object v17, v2, v16

    const/16 v16, 0x149

    const-string v17, "ericsson"

    aput-object v17, v2, v16

    const/16 v16, 0x14a

    const-string v17, "erni"

    aput-object v17, v2, v16

    const/16 v16, 0x14b

    const-string v17, "esq"

    aput-object v17, v2, v16

    const/16 v16, 0x14c

    const-string v17, "estate"

    aput-object v17, v2, v16

    const/16 v16, 0x14d

    const-string v17, "esurance"

    aput-object v17, v2, v16

    const/16 v16, 0x14e

    const-string v17, "eurovision"

    aput-object v17, v2, v16

    const/16 v16, 0x14f

    const-string v17, "eus"

    aput-object v17, v2, v16

    const/16 v16, 0x150

    const-string v17, "events"

    aput-object v17, v2, v16

    const/16 v16, 0x151

    const-string v17, "everbank"

    aput-object v17, v2, v16

    const/16 v16, 0x152

    const-string v17, "exchange"

    aput-object v17, v2, v16

    const/16 v16, 0x153

    const-string v17, "expert"

    aput-object v17, v2, v16

    const/16 v16, 0x154

    const-string v17, "exposed"

    aput-object v17, v2, v16

    const/16 v16, 0x155

    const-string v17, "express"

    aput-object v17, v2, v16

    const/16 v16, 0x156

    const-string v17, "extraspace"

    aput-object v17, v2, v16

    const/16 v16, 0x157

    const-string v17, "fage"

    aput-object v17, v2, v16

    const/16 v16, 0x158

    const-string v17, "fail"

    aput-object v17, v2, v16

    const/16 v16, 0x159

    const-string v17, "fairwinds"

    aput-object v17, v2, v16

    const/16 v16, 0x15a

    const-string v17, "faith"

    aput-object v17, v2, v16

    const/16 v16, 0x15b

    const-string v17, "family"

    aput-object v17, v2, v16

    const/16 v16, 0x15c

    const-string v17, "fan"

    aput-object v17, v2, v16

    const/16 v16, 0x15d

    const-string v17, "fans"

    aput-object v17, v2, v16

    const/16 v16, 0x15e

    const-string v17, "farm"

    aput-object v17, v2, v16

    const/16 v16, 0x15f

    const-string v17, "farmers"

    aput-object v17, v2, v16

    const/16 v16, 0x160

    const-string v17, "fashion"

    aput-object v17, v2, v16

    const/16 v16, 0x161

    const-string v17, "fast"

    aput-object v17, v2, v16

    const/16 v16, 0x162

    const-string v17, "fedex"

    aput-object v17, v2, v16

    const/16 v16, 0x163

    const-string v17, "feedback"

    aput-object v17, v2, v16

    const/16 v16, 0x164

    const-string v17, "ferrari"

    aput-object v17, v2, v16

    const/16 v16, 0x165

    const-string v17, "ferrero"

    aput-object v17, v2, v16

    const/16 v16, 0x166

    const-string v17, "fiat"

    aput-object v17, v2, v16

    const/16 v16, 0x167

    const-string v17, "fidelity"

    aput-object v17, v2, v16

    const/16 v16, 0x168

    const-string v17, "fido"

    aput-object v17, v2, v16

    const/16 v16, 0x169

    const-string v17, "film"

    aput-object v17, v2, v16

    const/16 v16, 0x16a

    const-string v17, "final"

    aput-object v17, v2, v16

    const/16 v16, 0x16b

    const-string v17, "finance"

    aput-object v17, v2, v16

    const/16 v16, 0x16c

    const-string v17, "financial"

    aput-object v17, v2, v16

    const/16 v16, 0x16d

    const-string v17, "fire"

    aput-object v17, v2, v16

    const/16 v16, 0x16e

    const-string v17, "firestone"

    aput-object v17, v2, v16

    const/16 v16, 0x16f

    const-string v17, "firmdale"

    aput-object v17, v2, v16

    const/16 v16, 0x170

    const-string v17, "fish"

    aput-object v17, v2, v16

    const/16 v16, 0x171

    const-string v17, "fishing"

    aput-object v17, v2, v16

    const/16 v16, 0x172

    const-string v17, "fit"

    aput-object v17, v2, v16

    const/16 v16, 0x173

    const-string v17, "fitness"

    aput-object v17, v2, v16

    const/16 v16, 0x174

    const-string v17, "flickr"

    aput-object v17, v2, v16

    const/16 v16, 0x175

    const-string v17, "flights"

    aput-object v17, v2, v16

    const/16 v16, 0x176

    const-string v17, "flir"

    aput-object v17, v2, v16

    const/16 v16, 0x177

    const-string v17, "florist"

    aput-object v17, v2, v16

    const/16 v16, 0x178

    const-string v17, "flowers"

    aput-object v17, v2, v16

    const/16 v16, 0x179

    const-string v17, "fly"

    aput-object v17, v2, v16

    const/16 v16, 0x17a

    const-string v17, "foo"

    aput-object v17, v2, v16

    const/16 v16, 0x17b

    const-string v17, "food"

    aput-object v17, v2, v16

    const/16 v16, 0x17c

    const-string v17, "foodnetwork"

    aput-object v17, v2, v16

    const/16 v16, 0x17d

    const-string v17, "football"

    aput-object v17, v2, v16

    const/16 v16, 0x17e

    const-string v17, "ford"

    aput-object v17, v2, v16

    const/16 v16, 0x17f

    const-string v17, "forex"

    aput-object v17, v2, v16

    const/16 v16, 0x180

    const-string v17, "forsale"

    aput-object v17, v2, v16

    const/16 v16, 0x181

    const-string v17, "forum"

    aput-object v17, v2, v16

    const/16 v16, 0x182

    const-string v17, "foundation"

    aput-object v17, v2, v16

    const/16 v16, 0x183

    const-string v17, "fox"

    aput-object v17, v2, v16

    const/16 v16, 0x184

    const-string v17, "free"

    aput-object v17, v2, v16

    const/16 v16, 0x185

    const-string v17, "fresenius"

    aput-object v17, v2, v16

    const/16 v16, 0x186

    const-string v17, "frl"

    aput-object v17, v2, v16

    const/16 v16, 0x187

    const-string v17, "frogans"

    aput-object v17, v2, v16

    const/16 v16, 0x188

    const-string v17, "frontdoor"

    aput-object v17, v2, v16

    const/16 v16, 0x189

    const-string v17, "frontier"

    aput-object v17, v2, v16

    const/16 v16, 0x18a

    const-string v17, "ftr"

    aput-object v17, v2, v16

    const/16 v16, 0x18b

    const-string v17, "fujitsu"

    aput-object v17, v2, v16

    const/16 v16, 0x18c

    const-string v17, "fujixerox"

    aput-object v17, v2, v16

    const/16 v16, 0x18d

    const-string v17, "fun"

    aput-object v17, v2, v16

    const/16 v16, 0x18e

    const-string v17, "fund"

    aput-object v17, v2, v16

    const/16 v16, 0x18f

    const-string v17, "furniture"

    aput-object v17, v2, v16

    const/16 v16, 0x190

    const-string v17, "futbol"

    aput-object v17, v2, v16

    const/16 v16, 0x191

    const-string v17, "fyi"

    aput-object v17, v2, v16

    const/16 v16, 0x192

    const-string v17, "gal"

    aput-object v17, v2, v16

    const/16 v16, 0x193

    const-string v17, "gallery"

    aput-object v17, v2, v16

    const/16 v16, 0x194

    const-string v17, "gallo"

    aput-object v17, v2, v16

    const/16 v16, 0x195

    const-string v17, "gallup"

    aput-object v17, v2, v16

    const/16 v16, 0x196

    const-string v17, "game"

    aput-object v17, v2, v16

    const/16 v16, 0x197

    const-string v17, "games"

    aput-object v17, v2, v16

    const/16 v16, 0x198

    const-string v17, "gap"

    aput-object v17, v2, v16

    const/16 v16, 0x199

    const-string v17, "garden"

    aput-object v17, v2, v16

    const/16 v16, 0x19a

    const-string v17, "gbiz"

    aput-object v17, v2, v16

    const/16 v16, 0x19b

    const-string v17, "gdn"

    aput-object v17, v2, v16

    const/16 v16, 0x19c

    const-string v17, "gea"

    aput-object v17, v2, v16

    const/16 v16, 0x19d

    const-string v17, "gent"

    aput-object v17, v2, v16

    const/16 v16, 0x19e

    const-string v17, "genting"

    aput-object v17, v2, v16

    const/16 v16, 0x19f

    const-string v17, "george"

    aput-object v17, v2, v16

    const/16 v16, 0x1a0

    const-string v17, "ggee"

    aput-object v17, v2, v16

    const/16 v16, 0x1a1

    const-string v17, "gift"

    aput-object v17, v2, v16

    const/16 v16, 0x1a2

    const-string v17, "gifts"

    aput-object v17, v2, v16

    const/16 v16, 0x1a3

    const-string v17, "gives"

    aput-object v17, v2, v16

    const/16 v16, 0x1a4

    const-string v17, "giving"

    aput-object v17, v2, v16

    const/16 v16, 0x1a5

    const-string v17, "glade"

    aput-object v17, v2, v16

    const/16 v16, 0x1a6

    const-string v17, "glass"

    aput-object v17, v2, v16

    const/16 v16, 0x1a7

    const-string v17, "gle"

    aput-object v17, v2, v16

    const/16 v16, 0x1a8

    const-string v17, "global"

    aput-object v17, v2, v16

    const/16 v16, 0x1a9

    const-string v17, "globo"

    aput-object v17, v2, v16

    const/16 v16, 0x1aa

    const-string v17, "gmail"

    aput-object v17, v2, v16

    const/16 v16, 0x1ab

    const-string v17, "gmbh"

    aput-object v17, v2, v16

    const/16 v16, 0x1ac

    const-string v17, "gmo"

    aput-object v17, v2, v16

    const/16 v16, 0x1ad

    const-string v17, "gmx"

    aput-object v17, v2, v16

    const/16 v16, 0x1ae

    const-string v17, "godaddy"

    aput-object v17, v2, v16

    const/16 v16, 0x1af

    const-string v17, "gold"

    aput-object v17, v2, v16

    const/16 v16, 0x1b0

    const-string v17, "goldpoint"

    aput-object v17, v2, v16

    const/16 v16, 0x1b1

    const-string v17, "golf"

    aput-object v17, v2, v16

    const/16 v16, 0x1b2

    const-string v17, "goo"

    aput-object v17, v2, v16

    const/16 v16, 0x1b3

    const-string v17, "goodhands"

    aput-object v17, v2, v16

    const/16 v16, 0x1b4

    const-string v17, "goodyear"

    aput-object v17, v2, v16

    const/16 v16, 0x1b5

    const-string v17, "goog"

    aput-object v17, v2, v16

    const/16 v16, 0x1b6

    const-string v17, "google"

    aput-object v17, v2, v16

    const/16 v16, 0x1b7

    const-string v17, "gop"

    aput-object v17, v2, v16

    const/16 v16, 0x1b8

    const-string v17, "got"

    aput-object v17, v2, v16

    const/16 v16, 0x1b9

    const-string v17, "gov"

    aput-object v17, v2, v16

    const/16 v16, 0x1ba

    const-string v17, "grainger"

    aput-object v17, v2, v16

    const/16 v16, 0x1bb

    const-string v17, "graphics"

    aput-object v17, v2, v16

    const/16 v16, 0x1bc

    const-string v17, "gratis"

    aput-object v17, v2, v16

    const/16 v16, 0x1bd

    const-string v17, "green"

    aput-object v17, v2, v16

    const/16 v16, 0x1be

    const-string v17, "gripe"

    aput-object v17, v2, v16

    const/16 v16, 0x1bf

    const-string v17, "group"

    aput-object v17, v2, v16

    const/16 v16, 0x1c0

    const-string v17, "guardian"

    aput-object v17, v2, v16

    const/16 v16, 0x1c1

    const-string v17, "gucci"

    aput-object v17, v2, v16

    const/16 v16, 0x1c2

    const-string v17, "guge"

    aput-object v17, v2, v16

    const/16 v16, 0x1c3

    const-string v17, "guide"

    aput-object v17, v2, v16

    const/16 v16, 0x1c4

    const-string v17, "guitars"

    aput-object v17, v2, v16

    const/16 v16, 0x1c5

    const-string v17, "guru"

    aput-object v17, v2, v16

    const/16 v16, 0x1c6

    const-string v17, "hair"

    aput-object v17, v2, v16

    const/16 v16, 0x1c7

    const-string v17, "hamburg"

    aput-object v17, v2, v16

    const/16 v16, 0x1c8

    const-string v17, "hangout"

    aput-object v17, v2, v16

    const/16 v16, 0x1c9

    const-string v17, "haus"

    aput-object v17, v2, v16

    const/16 v16, 0x1ca

    const-string v17, "hbo"

    aput-object v17, v2, v16

    const/16 v16, 0x1cb

    const-string v17, "hdfc"

    aput-object v17, v2, v16

    const/16 v16, 0x1cc

    const-string v17, "hdfcbank"

    aput-object v17, v2, v16

    const/16 v16, 0x1cd

    const-string v17, "health"

    aput-object v17, v2, v16

    const/16 v16, 0x1ce

    const-string v17, "healthcare"

    aput-object v17, v2, v16

    const/16 v16, 0x1cf

    const-string v17, "help"

    aput-object v17, v2, v16

    const/16 v16, 0x1d0

    const-string v17, "helsinki"

    aput-object v17, v2, v16

    const/16 v16, 0x1d1

    const-string v17, "here"

    aput-object v17, v2, v16

    const/16 v16, 0x1d2

    const-string v17, "hermes"

    aput-object v17, v2, v16

    const/16 v16, 0x1d3

    const-string v17, "hgtv"

    aput-object v17, v2, v16

    const/16 v16, 0x1d4

    const-string v17, "hiphop"

    aput-object v17, v2, v16

    const/16 v16, 0x1d5

    const-string v17, "hisamitsu"

    aput-object v17, v2, v16

    const/16 v16, 0x1d6

    const-string v17, "hitachi"

    aput-object v17, v2, v16

    const/16 v16, 0x1d7

    const-string v17, "hiv"

    aput-object v17, v2, v16

    const/16 v16, 0x1d8

    const-string v17, "hkt"

    aput-object v17, v2, v16

    const/16 v16, 0x1d9

    const-string v17, "hockey"

    aput-object v17, v2, v16

    const/16 v16, 0x1da

    const-string v17, "holdings"

    aput-object v17, v2, v16

    const/16 v16, 0x1db

    const-string v17, "holiday"

    aput-object v17, v2, v16

    const/16 v16, 0x1dc

    const-string v17, "homedepot"

    aput-object v17, v2, v16

    const/16 v16, 0x1dd

    const-string v17, "homegoods"

    aput-object v17, v2, v16

    const/16 v16, 0x1de

    const-string v17, "homes"

    aput-object v17, v2, v16

    const/16 v16, 0x1df

    const-string v17, "homesense"

    aput-object v17, v2, v16

    const/16 v16, 0x1e0

    const-string v17, "honda"

    aput-object v17, v2, v16

    const/16 v16, 0x1e1

    const-string v17, "honeywell"

    aput-object v17, v2, v16

    const/16 v16, 0x1e2

    const-string v17, "horse"

    aput-object v17, v2, v16

    const/16 v16, 0x1e3

    const-string v17, "hospital"

    aput-object v17, v2, v16

    const/16 v16, 0x1e4

    const-string v17, "host"

    aput-object v17, v2, v16

    const/16 v16, 0x1e5

    const-string v17, "hosting"

    aput-object v17, v2, v16

    const/16 v16, 0x1e6

    const-string v17, "hot"

    aput-object v17, v2, v16

    const/16 v16, 0x1e7

    const-string v17, "hoteles"

    aput-object v17, v2, v16

    const/16 v16, 0x1e8

    const-string v17, "hotmail"

    aput-object v17, v2, v16

    const/16 v16, 0x1e9

    const-string v17, "house"

    aput-object v17, v2, v16

    const/16 v16, 0x1ea

    const-string v17, "how"

    aput-object v17, v2, v16

    const/16 v16, 0x1eb

    const-string v17, "hsbc"

    aput-object v17, v2, v16

    const/16 v16, 0x1ec

    const-string v17, "htc"

    aput-object v17, v2, v16

    const/16 v16, 0x1ed

    const-string v17, "hughes"

    aput-object v17, v2, v16

    const/16 v16, 0x1ee

    const-string v17, "hyatt"

    aput-object v17, v2, v16

    const/16 v16, 0x1ef

    const-string v17, "hyundai"

    aput-object v17, v2, v16

    const/16 v16, 0x1f0

    const-string v17, "ibm"

    aput-object v17, v2, v16

    const/16 v16, 0x1f1

    const-string v17, "icbc"

    aput-object v17, v2, v16

    const/16 v16, 0x1f2

    const-string v17, "ice"

    aput-object v17, v2, v16

    const/16 v16, 0x1f3

    const-string v17, "icu"

    aput-object v17, v2, v16

    const/16 v16, 0x1f4

    const-string v17, "ieee"

    aput-object v17, v2, v16

    const/16 v16, 0x1f5

    const-string v17, "ifm"

    aput-object v17, v2, v16

    const/16 v16, 0x1f6

    const-string v17, "ikano"

    aput-object v17, v2, v16

    const/16 v16, 0x1f7

    const-string v17, "imamat"

    aput-object v17, v2, v16

    const/16 v16, 0x1f8

    const-string v17, "imdb"

    aput-object v17, v2, v16

    const/16 v16, 0x1f9

    const-string v17, "immo"

    aput-object v17, v2, v16

    const/16 v16, 0x1fa

    const-string v17, "immobilien"

    aput-object v17, v2, v16

    const/16 v16, 0x1fb

    const-string v17, "industries"

    aput-object v17, v2, v16

    const/16 v16, 0x1fc

    const-string v17, "infiniti"

    aput-object v17, v2, v16

    const/16 v16, 0x1fd

    const-string v17, "info"

    aput-object v17, v2, v16

    const/16 v16, 0x1fe

    const-string v17, "ing"

    aput-object v17, v2, v16

    const/16 v16, 0x1ff

    const-string v17, "ink"

    aput-object v17, v2, v16

    const/16 v16, 0x200

    const-string v17, "institute"

    aput-object v17, v2, v16

    const/16 v16, 0x201

    const-string v17, "insurance"

    aput-object v17, v2, v16

    const/16 v16, 0x202

    const-string v17, "insure"

    aput-object v17, v2, v16

    const/16 v16, 0x203

    const-string v17, "int"

    aput-object v17, v2, v16

    const/16 v16, 0x204

    const-string v17, "intel"

    aput-object v17, v2, v16

    const/16 v16, 0x205

    const-string v17, "international"

    aput-object v17, v2, v16

    const/16 v16, 0x206

    const-string v17, "intuit"

    aput-object v17, v2, v16

    const/16 v16, 0x207

    const-string v17, "investments"

    aput-object v17, v2, v16

    const/16 v16, 0x208

    const-string v17, "ipiranga"

    aput-object v17, v2, v16

    const/16 v16, 0x209

    const-string v17, "irish"

    aput-object v17, v2, v16

    const/16 v16, 0x20a

    const-string v17, "iselect"

    aput-object v17, v2, v16

    const/16 v16, 0x20b

    const-string v17, "ismaili"

    aput-object v17, v2, v16

    const/16 v16, 0x20c

    const-string v17, "ist"

    aput-object v17, v2, v16

    const/16 v16, 0x20d

    const-string v17, "istanbul"

    aput-object v17, v2, v16

    const/16 v16, 0x20e

    const-string v17, "itau"

    aput-object v17, v2, v16

    const/16 v16, 0x20f

    const-string v17, "itv"

    aput-object v17, v2, v16

    const/16 v16, 0x210

    const-string v17, "iveco"

    aput-object v17, v2, v16

    const/16 v16, 0x211

    const-string v17, "iwc"

    aput-object v17, v2, v16

    const/16 v16, 0x212

    const-string v17, "jaguar"

    aput-object v17, v2, v16

    const/16 v16, 0x213

    const-string v17, "java"

    aput-object v17, v2, v16

    const/16 v16, 0x214

    const-string v17, "jcb"

    aput-object v17, v2, v16

    const/16 v16, 0x215

    const-string v17, "jcp"

    aput-object v17, v2, v16

    const/16 v16, 0x216

    const-string v17, "jeep"

    aput-object v17, v2, v16

    const/16 v16, 0x217

    const-string v17, "jetzt"

    aput-object v17, v2, v16

    const/16 v16, 0x218

    const-string v17, "jewelry"

    aput-object v17, v2, v16

    const/16 v16, 0x219

    const-string v17, "jio"

    aput-object v17, v2, v16

    const/16 v16, 0x21a

    const-string v17, "jlc"

    aput-object v17, v2, v16

    const/16 v16, 0x21b

    const-string v17, "jll"

    aput-object v17, v2, v16

    const/16 v16, 0x21c

    const-string v17, "jmp"

    aput-object v17, v2, v16

    const/16 v16, 0x21d

    const-string v17, "jnj"

    aput-object v17, v2, v16

    const/16 v16, 0x21e

    const-string v17, "jobs"

    aput-object v17, v2, v16

    const/16 v16, 0x21f

    const-string v17, "joburg"

    aput-object v17, v2, v16

    const/16 v16, 0x220

    const-string v17, "jot"

    aput-object v17, v2, v16

    const/16 v16, 0x221

    const-string v17, "joy"

    aput-object v17, v2, v16

    const/16 v16, 0x222

    const-string v17, "jpmorgan"

    aput-object v17, v2, v16

    const/16 v16, 0x223

    const-string v17, "jprs"

    aput-object v17, v2, v16

    const/16 v16, 0x224

    const-string v17, "juegos"

    aput-object v17, v2, v16

    const/16 v16, 0x225

    const-string v17, "juniper"

    aput-object v17, v2, v16

    const/16 v16, 0x226

    const-string v17, "kaufen"

    aput-object v17, v2, v16

    const/16 v16, 0x227

    const-string v17, "kddi"

    aput-object v17, v2, v16

    const/16 v16, 0x228

    const-string v17, "kerryhotels"

    aput-object v17, v2, v16

    const/16 v16, 0x229

    const-string v17, "kerrylogistics"

    aput-object v17, v2, v16

    const/16 v16, 0x22a

    const-string v17, "kerryproperties"

    aput-object v17, v2, v16

    const/16 v16, 0x22b

    const-string v17, "kfh"

    aput-object v17, v2, v16

    const/16 v16, 0x22c

    const-string v17, "kia"

    aput-object v17, v2, v16

    const/16 v16, 0x22d

    const-string v17, "kim"

    aput-object v17, v2, v16

    const/16 v16, 0x22e

    const-string v17, "kinder"

    aput-object v17, v2, v16

    const/16 v16, 0x22f

    const-string v17, "kindle"

    aput-object v17, v2, v16

    const/16 v16, 0x230

    const-string v17, "kitchen"

    aput-object v17, v2, v16

    const/16 v16, 0x231

    const-string v17, "kiwi"

    aput-object v17, v2, v16

    const/16 v16, 0x232

    const-string v17, "koeln"

    aput-object v17, v2, v16

    const/16 v16, 0x233

    const-string v17, "komatsu"

    aput-object v17, v2, v16

    const/16 v16, 0x234

    const-string v17, "kosher"

    aput-object v17, v2, v16

    const/16 v16, 0x235

    const-string v17, "kpmg"

    aput-object v17, v2, v16

    const/16 v16, 0x236

    const-string v17, "kpn"

    aput-object v17, v2, v16

    const/16 v16, 0x237

    const-string v17, "krd"

    aput-object v17, v2, v16

    const/16 v16, 0x238

    const-string v17, "kred"

    aput-object v17, v2, v16

    const/16 v16, 0x239

    const-string v17, "kuokgroup"

    aput-object v17, v2, v16

    const/16 v16, 0x23a

    const-string v17, "kyoto"

    aput-object v17, v2, v16

    const/16 v16, 0x23b

    const-string v17, "lacaixa"

    aput-object v17, v2, v16

    const/16 v16, 0x23c

    const-string v17, "ladbrokes"

    aput-object v17, v2, v16

    const/16 v16, 0x23d

    const-string v17, "lamborghini"

    aput-object v17, v2, v16

    const/16 v16, 0x23e

    const-string v17, "lamer"

    aput-object v17, v2, v16

    const/16 v16, 0x23f

    const-string v17, "lancaster"

    aput-object v17, v2, v16

    const/16 v16, 0x240

    const-string v17, "lancia"

    aput-object v17, v2, v16

    const/16 v16, 0x241

    const-string v17, "lancome"

    aput-object v17, v2, v16

    const/16 v16, 0x242

    const-string v17, "land"

    aput-object v17, v2, v16

    const/16 v16, 0x243

    const-string v17, "landrover"

    aput-object v17, v2, v16

    const/16 v16, 0x244

    const-string v17, "lanxess"

    aput-object v17, v2, v16

    const/16 v16, 0x245

    const-string v17, "lasalle"

    aput-object v17, v2, v16

    const/16 v16, 0x246

    const-string v17, "lat"

    aput-object v17, v2, v16

    const/16 v16, 0x247

    const-string v17, "latino"

    aput-object v17, v2, v16

    const/16 v16, 0x248

    const-string v17, "latrobe"

    aput-object v17, v2, v16

    const/16 v16, 0x249

    const-string v17, "law"

    aput-object v17, v2, v16

    const/16 v16, 0x24a

    const-string v17, "lawyer"

    aput-object v17, v2, v16

    const/16 v16, 0x24b

    const-string v17, "lds"

    aput-object v17, v2, v16

    const/16 v16, 0x24c

    const-string v17, "lease"

    aput-object v17, v2, v16

    const/16 v16, 0x24d

    const-string v17, "leclerc"

    aput-object v17, v2, v16

    const/16 v16, 0x24e

    const-string v17, "lefrak"

    aput-object v17, v2, v16

    const/16 v16, 0x24f

    const-string v17, "legal"

    aput-object v17, v2, v16

    const/16 v16, 0x250

    const-string v17, "lego"

    aput-object v17, v2, v16

    const/16 v16, 0x251

    const-string v17, "lexus"

    aput-object v17, v2, v16

    const/16 v16, 0x252

    const-string v17, "lgbt"

    aput-object v17, v2, v16

    const/16 v16, 0x253

    const-string v17, "liaison"

    aput-object v17, v2, v16

    const/16 v16, 0x254

    const-string v17, "lidl"

    aput-object v17, v2, v16

    const/16 v16, 0x255

    const-string v17, "life"

    aput-object v17, v2, v16

    const/16 v16, 0x256

    const-string v17, "lifeinsurance"

    aput-object v17, v2, v16

    const/16 v16, 0x257

    const-string v17, "lifestyle"

    aput-object v17, v2, v16

    const/16 v16, 0x258

    const-string v17, "lighting"

    aput-object v17, v2, v16

    const/16 v16, 0x259

    const-string v17, "like"

    aput-object v17, v2, v16

    const/16 v16, 0x25a

    const-string v17, "lilly"

    aput-object v17, v2, v16

    const/16 v16, 0x25b

    const-string v17, "limited"

    aput-object v17, v2, v16

    const/16 v16, 0x25c

    const-string v17, "limo"

    aput-object v17, v2, v16

    const/16 v16, 0x25d

    const-string v17, "lincoln"

    aput-object v17, v2, v16

    const/16 v16, 0x25e

    const-string v17, "linde"

    aput-object v17, v2, v16

    const/16 v16, 0x25f

    const-string v17, "link"

    aput-object v17, v2, v16

    const/16 v16, 0x260

    const-string v17, "lipsy"

    aput-object v17, v2, v16

    const/16 v16, 0x261

    const-string v17, "live"

    aput-object v17, v2, v16

    const/16 v16, 0x262

    const-string v17, "living"

    aput-object v17, v2, v16

    const/16 v16, 0x263

    const-string v17, "lixil"

    aput-object v17, v2, v16

    const/16 v16, 0x264

    const-string v17, "loan"

    aput-object v17, v2, v16

    const/16 v16, 0x265

    const-string v17, "loans"

    aput-object v17, v2, v16

    const/16 v16, 0x266

    const-string v17, "locker"

    aput-object v17, v2, v16

    const/16 v16, 0x267

    const-string v17, "locus"

    aput-object v17, v2, v16

    const/16 v16, 0x268

    const-string v17, "loft"

    aput-object v17, v2, v16

    const/16 v16, 0x269

    const-string v17, "lol"

    aput-object v17, v2, v16

    const/16 v16, 0x26a

    const-string v17, "london"

    aput-object v17, v2, v16

    const/16 v16, 0x26b

    const-string v17, "lotte"

    aput-object v17, v2, v16

    const/16 v16, 0x26c

    const-string v17, "lotto"

    aput-object v17, v2, v16

    const/16 v16, 0x26d

    const-string v17, "love"

    aput-object v17, v2, v16

    const/16 v16, 0x26e

    const-string v17, "lpl"

    aput-object v17, v2, v16

    const/16 v16, 0x26f

    const-string v17, "lplfinancial"

    aput-object v17, v2, v16

    const/16 v16, 0x270

    const-string v17, "ltd"

    aput-object v17, v2, v16

    const/16 v16, 0x271

    const-string v17, "ltda"

    aput-object v17, v2, v16

    const/16 v16, 0x272

    const-string v17, "lundbeck"

    aput-object v17, v2, v16

    const/16 v16, 0x273

    const-string v17, "lupin"

    aput-object v17, v2, v16

    const/16 v16, 0x274

    const-string v17, "luxe"

    aput-object v17, v2, v16

    const/16 v16, 0x275

    const-string v17, "luxury"

    aput-object v17, v2, v16

    const/16 v16, 0x276

    const-string v17, "macys"

    aput-object v17, v2, v16

    const/16 v16, 0x277

    const-string v17, "madrid"

    aput-object v17, v2, v16

    const/16 v16, 0x278

    const-string v17, "maif"

    aput-object v17, v2, v16

    const/16 v16, 0x279

    const-string v17, "maison"

    aput-object v17, v2, v16

    const/16 v16, 0x27a

    const-string v17, "makeup"

    aput-object v17, v2, v16

    const/16 v16, 0x27b

    const-string v17, "man"

    aput-object v17, v2, v16

    const/16 v16, 0x27c

    const-string v17, "management"

    aput-object v17, v2, v16

    const/16 v16, 0x27d

    const-string v17, "mango"

    aput-object v17, v2, v16

    const/16 v16, 0x27e

    const-string v17, "market"

    aput-object v17, v2, v16

    const/16 v16, 0x27f

    const-string v17, "marketing"

    aput-object v17, v2, v16

    const/16 v16, 0x280

    const-string v17, "markets"

    aput-object v17, v2, v16

    const/16 v16, 0x281

    const-string v17, "marriott"

    aput-object v17, v2, v16

    const/16 v16, 0x282

    const-string v17, "marshalls"

    aput-object v17, v2, v16

    const/16 v16, 0x283

    const-string v17, "maserati"

    aput-object v17, v2, v16

    const/16 v16, 0x284

    const-string v17, "mattel"

    aput-object v17, v2, v16

    const/16 v16, 0x285

    const-string v17, "mba"

    aput-object v17, v2, v16

    const/16 v16, 0x286

    const-string v17, "mcd"

    aput-object v17, v2, v16

    const/16 v16, 0x287

    const-string v17, "mcdonalds"

    aput-object v17, v2, v16

    const/16 v16, 0x288

    const-string v17, "mckinsey"

    aput-object v17, v2, v16

    const/16 v16, 0x289

    const-string v17, "med"

    aput-object v17, v2, v16

    const/16 v16, 0x28a

    const-string v17, "media"

    aput-object v17, v2, v16

    const/16 v16, 0x28b

    const-string v17, "meet"

    aput-object v17, v2, v16

    const/16 v16, 0x28c

    const-string v17, "melbourne"

    aput-object v17, v2, v16

    const/16 v16, 0x28d

    const-string v17, "meme"

    aput-object v17, v2, v16

    const/16 v16, 0x28e

    const-string v17, "memorial"

    aput-object v17, v2, v16

    const/16 v16, 0x28f

    const-string v17, "men"

    aput-object v17, v2, v16

    const/16 v16, 0x290

    const-string v17, "menu"

    aput-object v17, v2, v16

    const/16 v16, 0x291

    const-string v17, "meo"

    aput-object v17, v2, v16

    const/16 v16, 0x292

    const-string v17, "metlife"

    aput-object v17, v2, v16

    const/16 v16, 0x293

    const-string v17, "miami"

    aput-object v17, v2, v16

    const/16 v16, 0x294

    const-string v17, "microsoft"

    aput-object v17, v2, v16

    const/16 v16, 0x295

    const-string v17, "mil"

    aput-object v17, v2, v16

    const/16 v16, 0x296

    const-string v17, "mini"

    aput-object v17, v2, v16

    const/16 v16, 0x297

    const-string v17, "mint"

    aput-object v17, v2, v16

    const/16 v16, 0x298

    const-string v17, "mit"

    aput-object v17, v2, v16

    const/16 v16, 0x299

    const-string v17, "mitsubishi"

    aput-object v17, v2, v16

    const/16 v16, 0x29a

    const-string v17, "mlb"

    aput-object v17, v2, v16

    const/16 v16, 0x29b

    const-string v17, "mls"

    aput-object v17, v2, v16

    const/16 v16, 0x29c

    const-string v17, "mma"

    aput-object v17, v2, v16

    const/16 v16, 0x29d

    const-string v17, "mobi"

    aput-object v17, v2, v16

    const/16 v16, 0x29e

    const-string v17, "mobile"

    aput-object v17, v2, v16

    const/16 v16, 0x29f

    const-string v17, "mobily"

    aput-object v17, v2, v16

    const/16 v16, 0x2a0

    const-string v17, "moda"

    aput-object v17, v2, v16

    const/16 v16, 0x2a1

    const-string v17, "moe"

    aput-object v17, v2, v16

    const/16 v16, 0x2a2

    const-string v17, "moi"

    aput-object v17, v2, v16

    const/16 v16, 0x2a3

    const-string v17, "mom"

    aput-object v17, v2, v16

    const/16 v16, 0x2a4

    const-string v17, "monash"

    aput-object v17, v2, v16

    const/16 v16, 0x2a5

    const-string v17, "money"

    aput-object v17, v2, v16

    const/16 v16, 0x2a6

    const-string v17, "monster"

    aput-object v17, v2, v16

    const/16 v16, 0x2a7

    const-string v17, "montblanc"

    aput-object v17, v2, v16

    const/16 v16, 0x2a8

    const-string v17, "mopar"

    aput-object v17, v2, v16

    const/16 v16, 0x2a9

    const-string v17, "mormon"

    aput-object v17, v2, v16

    const/16 v16, 0x2aa

    const-string v17, "mortgage"

    aput-object v17, v2, v16

    const/16 v16, 0x2ab

    const-string v17, "moscow"

    aput-object v17, v2, v16

    const/16 v16, 0x2ac

    const-string v17, "moto"

    aput-object v17, v2, v16

    const/16 v16, 0x2ad

    const-string v17, "motorcycles"

    aput-object v17, v2, v16

    const/16 v16, 0x2ae

    const-string v17, "mov"

    aput-object v17, v2, v16

    const/16 v16, 0x2af

    const-string v17, "movie"

    aput-object v17, v2, v16

    const/16 v16, 0x2b0

    const-string v17, "movistar"

    aput-object v17, v2, v16

    const/16 v16, 0x2b1

    const-string v17, "msd"

    aput-object v17, v2, v16

    const/16 v16, 0x2b2

    const-string v17, "mtn"

    aput-object v17, v2, v16

    const/16 v16, 0x2b3

    const-string v17, "mtpc"

    aput-object v17, v2, v16

    const/16 v16, 0x2b4

    const-string v17, "mtr"

    aput-object v17, v2, v16

    const/16 v16, 0x2b5

    const-string v17, "museum"

    aput-object v17, v2, v16

    const/16 v16, 0x2b6

    const-string v17, "mutual"

    aput-object v17, v2, v16

    const/16 v16, 0x2b7

    const-string v17, "nab"

    aput-object v17, v2, v16

    const/16 v16, 0x2b8

    const-string v17, "nadex"

    aput-object v17, v2, v16

    const/16 v16, 0x2b9

    const-string v17, "nagoya"

    aput-object v17, v2, v16

    const/16 v16, 0x2ba

    const-string v17, "name"

    aput-object v17, v2, v16

    const/16 v16, 0x2bb

    const-string v17, "nationwide"

    aput-object v17, v2, v16

    const/16 v16, 0x2bc

    const-string v17, "natura"

    aput-object v17, v2, v16

    const/16 v16, 0x2bd

    const-string v17, "navy"

    aput-object v17, v2, v16

    const/16 v16, 0x2be

    const-string v17, "nba"

    aput-object v17, v2, v16

    const/16 v16, 0x2bf

    const-string v17, "nec"

    aput-object v17, v2, v16

    const/16 v16, 0x2c0

    const-string v17, "net"

    aput-object v17, v2, v16

    const/16 v16, 0x2c1

    const-string v17, "netbank"

    aput-object v17, v2, v16

    const/16 v16, 0x2c2

    const-string v17, "netflix"

    aput-object v17, v2, v16

    const/16 v16, 0x2c3

    const-string v17, "network"

    aput-object v17, v2, v16

    const/16 v16, 0x2c4

    const-string v17, "neustar"

    aput-object v17, v2, v16

    const/16 v16, 0x2c5

    const-string v17, "new"

    aput-object v17, v2, v16

    const/16 v16, 0x2c6

    const-string v17, "newholland"

    aput-object v17, v2, v16

    const/16 v16, 0x2c7

    const-string v17, "news"

    aput-object v17, v2, v16

    const/16 v16, 0x2c8

    const-string v17, "next"

    aput-object v17, v2, v16

    const/16 v16, 0x2c9

    const-string v17, "nextdirect"

    aput-object v17, v2, v16

    const/16 v16, 0x2ca

    const-string v17, "nexus"

    aput-object v17, v2, v16

    const/16 v16, 0x2cb

    const-string v17, "nfl"

    aput-object v17, v2, v16

    const/16 v16, 0x2cc

    const-string v17, "ngo"

    aput-object v17, v2, v16

    const/16 v16, 0x2cd

    const-string v17, "nhk"

    aput-object v17, v2, v16

    const/16 v16, 0x2ce

    const-string v17, "nico"

    aput-object v17, v2, v16

    const/16 v16, 0x2cf

    const-string v17, "nike"

    aput-object v17, v2, v16

    const/16 v16, 0x2d0

    const-string v17, "nikon"

    aput-object v17, v2, v16

    const/16 v16, 0x2d1

    const-string v17, "ninja"

    aput-object v17, v2, v16

    const/16 v16, 0x2d2

    const-string v17, "nissan"

    aput-object v17, v2, v16

    const/16 v16, 0x2d3

    const-string v17, "nissay"

    aput-object v17, v2, v16

    const/16 v16, 0x2d4

    const-string v17, "nokia"

    aput-object v17, v2, v16

    const/16 v16, 0x2d5

    const-string v17, "northwesternmutual"

    aput-object v17, v2, v16

    const/16 v16, 0x2d6

    const-string v17, "norton"

    aput-object v17, v2, v16

    const/16 v16, 0x2d7

    const-string v17, "now"

    aput-object v17, v2, v16

    const/16 v16, 0x2d8

    const-string v17, "nowruz"

    aput-object v17, v2, v16

    const/16 v16, 0x2d9

    const-string v17, "nowtv"

    aput-object v17, v2, v16

    const/16 v16, 0x2da

    const-string v17, "nra"

    aput-object v17, v2, v16

    const/16 v16, 0x2db

    const-string v17, "nrw"

    aput-object v17, v2, v16

    const/16 v16, 0x2dc

    const-string v17, "ntt"

    aput-object v17, v2, v16

    const/16 v16, 0x2dd

    const-string v17, "nyc"

    aput-object v17, v2, v16

    const/16 v16, 0x2de

    const-string v17, "obi"

    aput-object v17, v2, v16

    const/16 v16, 0x2df

    const-string v17, "observer"

    aput-object v17, v2, v16

    const/16 v16, 0x2e0

    const-string v17, "off"

    aput-object v17, v2, v16

    const/16 v16, 0x2e1

    const-string v17, "office"

    aput-object v17, v2, v16

    const/16 v16, 0x2e2

    const-string v17, "okinawa"

    aput-object v17, v2, v16

    const/16 v16, 0x2e3

    const-string v17, "olayan"

    aput-object v17, v2, v16

    const/16 v16, 0x2e4

    const-string v17, "olayangroup"

    aput-object v17, v2, v16

    const/16 v16, 0x2e5

    const-string v17, "oldnavy"

    aput-object v17, v2, v16

    const/16 v16, 0x2e6

    const-string v17, "ollo"

    aput-object v17, v2, v16

    const/16 v16, 0x2e7

    const-string v17, "omega"

    aput-object v17, v2, v16

    const/16 v16, 0x2e8

    const-string v17, "one"

    aput-object v17, v2, v16

    const/16 v16, 0x2e9

    const-string v17, "ong"

    aput-object v17, v2, v16

    const/16 v16, 0x2ea

    const-string v17, "onl"

    aput-object v17, v2, v16

    const/16 v16, 0x2eb

    const-string v17, "online"

    aput-object v17, v2, v16

    const/16 v16, 0x2ec

    const-string v17, "onyourside"

    aput-object v17, v2, v16

    const/16 v16, 0x2ed

    const-string v17, "ooo"

    aput-object v17, v2, v16

    const/16 v16, 0x2ee

    const-string v17, "open"

    aput-object v17, v2, v16

    const/16 v16, 0x2ef

    const-string v17, "oracle"

    aput-object v17, v2, v16

    const/16 v16, 0x2f0

    const-string v17, "orange"

    aput-object v17, v2, v16

    const/16 v16, 0x2f1

    const-string v17, "org"

    aput-object v17, v2, v16

    const/16 v16, 0x2f2

    const-string v17, "organic"

    aput-object v17, v2, v16

    const/16 v16, 0x2f3

    const-string v17, "orientexpress"

    aput-object v17, v2, v16

    const/16 v16, 0x2f4

    const-string v17, "origins"

    aput-object v17, v2, v16

    const/16 v16, 0x2f5

    const-string v17, "osaka"

    aput-object v17, v2, v16

    const/16 v16, 0x2f6

    const-string v17, "otsuka"

    aput-object v17, v2, v16

    const/16 v16, 0x2f7

    const-string v17, "ott"

    aput-object v17, v2, v16

    const/16 v16, 0x2f8

    const-string v17, "ovh"

    aput-object v17, v2, v16

    const/16 v16, 0x2f9

    const-string v17, "page"

    aput-object v17, v2, v16

    const/16 v16, 0x2fa

    const-string v17, "pamperedchef"

    aput-object v17, v2, v16

    const/16 v16, 0x2fb

    const-string v17, "panasonic"

    aput-object v17, v2, v16

    const/16 v16, 0x2fc

    const-string v17, "panerai"

    aput-object v17, v2, v16

    const/16 v16, 0x2fd

    const-string v17, "paris"

    aput-object v17, v2, v16

    const/16 v16, 0x2fe

    const-string v17, "pars"

    aput-object v17, v2, v16

    const/16 v16, 0x2ff

    const-string v17, "partners"

    aput-object v17, v2, v16

    const/16 v16, 0x300

    const-string v17, "parts"

    aput-object v17, v2, v16

    const/16 v16, 0x301

    const-string v17, "party"

    aput-object v17, v2, v16

    const/16 v16, 0x302

    const-string v17, "passagens"

    aput-object v17, v2, v16

    const/16 v16, 0x303

    const-string v17, "pay"

    aput-object v17, v2, v16

    const/16 v16, 0x304

    const-string v17, "pccw"

    aput-object v17, v2, v16

    const/16 v16, 0x305

    const-string v17, "pet"

    aput-object v17, v2, v16

    const/16 v16, 0x306

    const-string v17, "pfizer"

    aput-object v17, v2, v16

    const/16 v16, 0x307

    const-string v17, "pharmacy"

    aput-object v17, v2, v16

    const/16 v16, 0x308

    const-string v17, "philips"

    aput-object v17, v2, v16

    const/16 v16, 0x309

    const-string v17, "phone"

    aput-object v17, v2, v16

    const/16 v16, 0x30a

    const-string v17, "photo"

    aput-object v17, v2, v16

    const/16 v16, 0x30b

    const-string v17, "photography"

    aput-object v17, v2, v16

    const/16 v16, 0x30c

    const-string v17, "photos"

    aput-object v17, v2, v16

    const/16 v16, 0x30d

    const-string v17, "physio"

    aput-object v17, v2, v16

    const/16 v16, 0x30e

    const-string v17, "piaget"

    aput-object v17, v2, v16

    const/16 v16, 0x30f

    const-string v17, "pics"

    aput-object v17, v2, v16

    const/16 v16, 0x310

    const-string v17, "pictet"

    aput-object v17, v2, v16

    const/16 v16, 0x311

    const-string v17, "pictures"

    aput-object v17, v2, v16

    const/16 v16, 0x312

    const-string v17, "pid"

    aput-object v17, v2, v16

    const/16 v16, 0x313

    const-string v17, "pin"

    aput-object v17, v2, v16

    const/16 v16, 0x314

    const-string v17, "ping"

    aput-object v17, v2, v16

    const/16 v16, 0x315

    const-string v17, "pink"

    aput-object v17, v2, v16

    const/16 v16, 0x316

    const-string v17, "pioneer"

    aput-object v17, v2, v16

    const/16 v16, 0x317

    const-string v17, "pizza"

    aput-object v17, v2, v16

    const/16 v16, 0x318

    const-string v17, "place"

    aput-object v17, v2, v16

    const/16 v16, 0x319

    const-string v17, "play"

    aput-object v17, v2, v16

    const/16 v16, 0x31a

    const-string v17, "playstation"

    aput-object v17, v2, v16

    const/16 v16, 0x31b

    const-string v17, "plumbing"

    aput-object v17, v2, v16

    const/16 v16, 0x31c

    const-string v17, "plus"

    aput-object v17, v2, v16

    const/16 v16, 0x31d

    const-string v17, "pnc"

    aput-object v17, v2, v16

    const/16 v16, 0x31e

    const-string v17, "pohl"

    aput-object v17, v2, v16

    const/16 v16, 0x31f

    const-string v17, "poker"

    aput-object v17, v2, v16

    const/16 v16, 0x320

    const-string v17, "politie"

    aput-object v17, v2, v16

    const/16 v16, 0x321

    const-string v17, "porn"

    aput-object v17, v2, v16

    const/16 v16, 0x322

    const-string v17, "post"

    aput-object v17, v2, v16

    const/16 v16, 0x323

    const-string v17, "pramerica"

    aput-object v17, v2, v16

    const/16 v16, 0x324

    const-string v17, "praxi"

    aput-object v17, v2, v16

    const/16 v16, 0x325

    const-string v17, "press"

    aput-object v17, v2, v16

    const/16 v16, 0x326

    const-string v17, "prime"

    aput-object v17, v2, v16

    const/16 v16, 0x327

    const-string v17, "pro"

    aput-object v17, v2, v16

    const/16 v16, 0x328

    const-string v17, "prod"

    aput-object v17, v2, v16

    const/16 v16, 0x329

    const-string v17, "productions"

    aput-object v17, v2, v16

    const/16 v16, 0x32a

    const-string v17, "prof"

    aput-object v17, v2, v16

    const/16 v16, 0x32b

    const-string v17, "progressive"

    aput-object v17, v2, v16

    const/16 v16, 0x32c

    const-string v17, "promo"

    aput-object v17, v2, v16

    const/16 v16, 0x32d

    const-string v17, "properties"

    aput-object v17, v2, v16

    const/16 v16, 0x32e

    const-string v17, "property"

    aput-object v17, v2, v16

    const/16 v16, 0x32f

    const-string v17, "protection"

    aput-object v17, v2, v16

    const/16 v16, 0x330

    const-string v17, "pru"

    aput-object v17, v2, v16

    const/16 v16, 0x331

    const-string v17, "prudential"

    aput-object v17, v2, v16

    const/16 v16, 0x332

    const-string v17, "pub"

    aput-object v17, v2, v16

    const/16 v16, 0x333

    const-string/jumbo v17, "pwc"

    aput-object v17, v2, v16

    const/16 v16, 0x334

    const-string/jumbo v17, "qpon"

    aput-object v17, v2, v16

    const/16 v16, 0x335

    const-string/jumbo v17, "quebec"

    aput-object v17, v2, v16

    const/16 v16, 0x336

    const-string/jumbo v17, "quest"

    aput-object v17, v2, v16

    const/16 v16, 0x337

    const-string/jumbo v17, "qvc"

    aput-object v17, v2, v16

    const/16 v16, 0x338

    const-string/jumbo v17, "racing"

    aput-object v17, v2, v16

    const/16 v16, 0x339

    const-string/jumbo v17, "radio"

    aput-object v17, v2, v16

    const/16 v16, 0x33a

    const-string/jumbo v17, "raid"

    aput-object v17, v2, v16

    const/16 v16, 0x33b

    const-string/jumbo v17, "read"

    aput-object v17, v2, v16

    const/16 v16, 0x33c

    const-string/jumbo v17, "realestate"

    aput-object v17, v2, v16

    const/16 v16, 0x33d

    const-string/jumbo v17, "realtor"

    aput-object v17, v2, v16

    const/16 v16, 0x33e

    const-string/jumbo v17, "realty"

    aput-object v17, v2, v16

    const/16 v16, 0x33f

    const-string/jumbo v17, "recipes"

    aput-object v17, v2, v16

    const/16 v16, 0x340

    const-string/jumbo v17, "red"

    aput-object v17, v2, v16

    const/16 v16, 0x341

    const-string/jumbo v17, "redstone"

    aput-object v17, v2, v16

    const/16 v16, 0x342

    const-string/jumbo v17, "redumbrella"

    aput-object v17, v2, v16

    const/16 v16, 0x343

    const-string/jumbo v17, "rehab"

    aput-object v17, v2, v16

    const/16 v16, 0x344

    const-string/jumbo v17, "reise"

    aput-object v17, v2, v16

    const/16 v16, 0x345

    const-string/jumbo v17, "reisen"

    aput-object v17, v2, v16

    const/16 v16, 0x346

    const-string/jumbo v17, "reit"

    aput-object v17, v2, v16

    const/16 v16, 0x347

    const-string/jumbo v17, "reliance"

    aput-object v17, v2, v16

    const/16 v16, 0x348

    const-string/jumbo v17, "ren"

    aput-object v17, v2, v16

    const/16 v16, 0x349

    const-string/jumbo v17, "rent"

    aput-object v17, v2, v16

    const/16 v16, 0x34a

    const-string/jumbo v17, "rentals"

    aput-object v17, v2, v16

    const/16 v16, 0x34b

    const-string/jumbo v17, "repair"

    aput-object v17, v2, v16

    const/16 v16, 0x34c

    const-string/jumbo v17, "report"

    aput-object v17, v2, v16

    const/16 v16, 0x34d

    const-string/jumbo v17, "republican"

    aput-object v17, v2, v16

    const/16 v16, 0x34e

    const-string/jumbo v17, "rest"

    aput-object v17, v2, v16

    const/16 v16, 0x34f

    const-string/jumbo v17, "restaurant"

    aput-object v17, v2, v16

    const/16 v16, 0x350

    const-string/jumbo v17, "review"

    aput-object v17, v2, v16

    const/16 v16, 0x351

    const-string/jumbo v17, "reviews"

    aput-object v17, v2, v16

    const/16 v16, 0x352

    const-string/jumbo v17, "rexroth"

    aput-object v17, v2, v16

    const/16 v16, 0x353

    const-string/jumbo v17, "rich"

    aput-object v17, v2, v16

    const/16 v16, 0x354

    const-string/jumbo v17, "richardli"

    aput-object v17, v2, v16

    const/16 v16, 0x355

    const-string/jumbo v17, "ricoh"

    aput-object v17, v2, v16

    const/16 v16, 0x356

    const-string/jumbo v17, "rightathome"

    aput-object v17, v2, v16

    const/16 v16, 0x357

    const-string/jumbo v17, "ril"

    aput-object v17, v2, v16

    const/16 v16, 0x358

    const-string/jumbo v17, "rio"

    aput-object v17, v2, v16

    const/16 v16, 0x359

    const-string/jumbo v17, "rip"

    aput-object v17, v2, v16

    const/16 v16, 0x35a

    const-string/jumbo v17, "rmit"

    aput-object v17, v2, v16

    const/16 v16, 0x35b

    const-string/jumbo v17, "rocher"

    aput-object v17, v2, v16

    const/16 v16, 0x35c

    const-string/jumbo v17, "rocks"

    aput-object v17, v2, v16

    const/16 v16, 0x35d

    const-string/jumbo v17, "rodeo"

    aput-object v17, v2, v16

    const/16 v16, 0x35e

    const-string/jumbo v17, "rogers"

    aput-object v17, v2, v16

    const/16 v16, 0x35f

    const-string/jumbo v17, "room"

    aput-object v17, v2, v16

    const/16 v16, 0x360

    const-string/jumbo v17, "rsvp"

    aput-object v17, v2, v16

    const/16 v16, 0x361

    const-string/jumbo v17, "ruhr"

    aput-object v17, v2, v16

    const/16 v16, 0x362

    const-string/jumbo v17, "run"

    aput-object v17, v2, v16

    const/16 v16, 0x363

    const-string/jumbo v17, "rwe"

    aput-object v17, v2, v16

    const/16 v16, 0x364

    const-string/jumbo v17, "ryukyu"

    aput-object v17, v2, v16

    const/16 v16, 0x365

    const-string/jumbo v17, "saarland"

    aput-object v17, v2, v16

    const/16 v16, 0x366

    const-string/jumbo v17, "safe"

    aput-object v17, v2, v16

    const/16 v16, 0x367

    const-string/jumbo v17, "safety"

    aput-object v17, v2, v16

    const/16 v16, 0x368

    const-string/jumbo v17, "sakura"

    aput-object v17, v2, v16

    const/16 v16, 0x369

    const-string/jumbo v17, "sale"

    aput-object v17, v2, v16

    const/16 v16, 0x36a

    const-string/jumbo v17, "salon"

    aput-object v17, v2, v16

    const/16 v16, 0x36b

    const-string/jumbo v17, "samsclub"

    aput-object v17, v2, v16

    const/16 v16, 0x36c

    const-string/jumbo v17, "samsung"

    aput-object v17, v2, v16

    const/16 v16, 0x36d

    const-string/jumbo v17, "sandvik"

    aput-object v17, v2, v16

    const/16 v16, 0x36e

    const-string/jumbo v17, "sandvikcoromant"

    aput-object v17, v2, v16

    const/16 v16, 0x36f

    const-string/jumbo v17, "sanofi"

    aput-object v17, v2, v16

    const/16 v16, 0x370

    const-string/jumbo v17, "sap"

    aput-object v17, v2, v16

    const/16 v16, 0x371

    const-string/jumbo v17, "sapo"

    aput-object v17, v2, v16

    const/16 v16, 0x372

    const-string/jumbo v17, "sarl"

    aput-object v17, v2, v16

    const/16 v16, 0x373

    const-string/jumbo v17, "sas"

    aput-object v17, v2, v16

    const/16 v16, 0x374

    const-string/jumbo v17, "save"

    aput-object v17, v2, v16

    const/16 v16, 0x375

    const-string/jumbo v17, "saxo"

    aput-object v17, v2, v16

    const/16 v16, 0x376

    const-string/jumbo v17, "sbi"

    aput-object v17, v2, v16

    const/16 v16, 0x377

    const-string/jumbo v17, "sbs"

    aput-object v17, v2, v16

    const/16 v16, 0x378

    const-string/jumbo v17, "sca"

    aput-object v17, v2, v16

    const/16 v16, 0x379

    const-string/jumbo v17, "scb"

    aput-object v17, v2, v16

    const/16 v16, 0x37a

    const-string/jumbo v17, "schaeffler"

    aput-object v17, v2, v16

    const/16 v16, 0x37b

    const-string/jumbo v17, "schmidt"

    aput-object v17, v2, v16

    const/16 v16, 0x37c

    const-string/jumbo v17, "scholarships"

    aput-object v17, v2, v16

    const/16 v16, 0x37d

    const-string/jumbo v17, "school"

    aput-object v17, v2, v16

    const/16 v16, 0x37e

    const-string/jumbo v17, "schule"

    aput-object v17, v2, v16

    const/16 v16, 0x37f

    const-string/jumbo v17, "schwarz"

    aput-object v17, v2, v16

    const/16 v16, 0x380

    const-string/jumbo v17, "science"

    aput-object v17, v2, v16

    const/16 v16, 0x381

    const-string/jumbo v17, "scjohnson"

    aput-object v17, v2, v16

    const/16 v16, 0x382

    const-string/jumbo v17, "scor"

    aput-object v17, v2, v16

    const/16 v16, 0x383

    const-string/jumbo v17, "scot"

    aput-object v17, v2, v16

    const/16 v16, 0x384

    const-string/jumbo v17, "seat"

    aput-object v17, v2, v16

    const/16 v16, 0x385

    const-string/jumbo v17, "secure"

    aput-object v17, v2, v16

    const/16 v16, 0x386

    const-string/jumbo v17, "security"

    aput-object v17, v2, v16

    const/16 v16, 0x387

    const-string/jumbo v17, "seek"

    aput-object v17, v2, v16

    const/16 v16, 0x388

    const-string/jumbo v17, "select"

    aput-object v17, v2, v16

    const/16 v16, 0x389

    const-string/jumbo v17, "sener"

    aput-object v17, v2, v16

    const/16 v16, 0x38a

    const-string/jumbo v17, "services"

    aput-object v17, v2, v16

    const/16 v16, 0x38b

    const-string/jumbo v17, "ses"

    aput-object v17, v2, v16

    const/16 v16, 0x38c

    const-string/jumbo v17, "seven"

    aput-object v17, v2, v16

    const/16 v16, 0x38d

    const-string/jumbo v17, "sew"

    aput-object v17, v2, v16

    const/16 v16, 0x38e

    const-string/jumbo v17, "sex"

    aput-object v17, v2, v16

    const/16 v16, 0x38f

    const-string/jumbo v17, "sexy"

    aput-object v17, v2, v16

    const/16 v16, 0x390

    const-string/jumbo v17, "sfr"

    aput-object v17, v2, v16

    const/16 v16, 0x391

    const-string/jumbo v17, "shangrila"

    aput-object v17, v2, v16

    const/16 v16, 0x392

    const-string/jumbo v17, "sharp"

    aput-object v17, v2, v16

    const/16 v16, 0x393

    const-string/jumbo v17, "shaw"

    aput-object v17, v2, v16

    const/16 v16, 0x394

    const-string/jumbo v17, "shell"

    aput-object v17, v2, v16

    const/16 v16, 0x395

    const-string/jumbo v17, "shia"

    aput-object v17, v2, v16

    const/16 v16, 0x396

    const-string/jumbo v17, "shiksha"

    aput-object v17, v2, v16

    const/16 v16, 0x397

    const-string/jumbo v17, "shoes"

    aput-object v17, v2, v16

    const/16 v16, 0x398

    const-string/jumbo v17, "shop"

    aput-object v17, v2, v16

    const/16 v16, 0x399

    const-string/jumbo v17, "shopping"

    aput-object v17, v2, v16

    const/16 v16, 0x39a

    const-string/jumbo v17, "shouji"

    aput-object v17, v2, v16

    const/16 v16, 0x39b

    const-string/jumbo v17, "show"

    aput-object v17, v2, v16

    const/16 v16, 0x39c

    const-string/jumbo v17, "showtime"

    aput-object v17, v2, v16

    const/16 v16, 0x39d

    const-string/jumbo v17, "shriram"

    aput-object v17, v2, v16

    const/16 v16, 0x39e

    const-string/jumbo v17, "silk"

    aput-object v17, v2, v16

    const/16 v16, 0x39f

    const-string/jumbo v17, "sina"

    aput-object v17, v2, v16

    const/16 v16, 0x3a0

    const-string/jumbo v17, "singles"

    aput-object v17, v2, v16

    const/16 v16, 0x3a1

    const-string/jumbo v17, "site"

    aput-object v17, v2, v16

    const/16 v16, 0x3a2

    const-string/jumbo v17, "ski"

    aput-object v17, v2, v16

    const/16 v16, 0x3a3

    const-string/jumbo v17, "skin"

    aput-object v17, v2, v16

    const/16 v16, 0x3a4

    const-string/jumbo v17, "sky"

    aput-object v17, v2, v16

    const/16 v16, 0x3a5

    const-string/jumbo v17, "skype"

    aput-object v17, v2, v16

    const/16 v16, 0x3a6

    const-string/jumbo v17, "sling"

    aput-object v17, v2, v16

    const/16 v16, 0x3a7

    const-string/jumbo v17, "smart"

    aput-object v17, v2, v16

    const/16 v16, 0x3a8

    const-string/jumbo v17, "smile"

    aput-object v17, v2, v16

    const/16 v16, 0x3a9

    const-string/jumbo v17, "sncf"

    aput-object v17, v2, v16

    const/16 v16, 0x3aa

    const-string/jumbo v17, "soccer"

    aput-object v17, v2, v16

    const/16 v16, 0x3ab

    const-string/jumbo v17, "social"

    aput-object v17, v2, v16

    const/16 v16, 0x3ac

    const-string/jumbo v17, "softbank"

    aput-object v17, v2, v16

    const/16 v16, 0x3ad

    const-string/jumbo v17, "software"

    aput-object v17, v2, v16

    const/16 v16, 0x3ae

    const-string/jumbo v17, "sohu"

    aput-object v17, v2, v16

    const/16 v16, 0x3af

    const-string/jumbo v17, "solar"

    aput-object v17, v2, v16

    const/16 v16, 0x3b0

    const-string/jumbo v17, "solutions"

    aput-object v17, v2, v16

    const/16 v16, 0x3b1

    const-string/jumbo v17, "song"

    aput-object v17, v2, v16

    const/16 v16, 0x3b2

    const-string/jumbo v17, "sony"

    aput-object v17, v2, v16

    const/16 v16, 0x3b3

    const-string/jumbo v17, "soy"

    aput-object v17, v2, v16

    const/16 v16, 0x3b4

    const-string/jumbo v17, "space"

    aput-object v17, v2, v16

    const/16 v16, 0x3b5

    const-string/jumbo v17, "spiegel"

    aput-object v17, v2, v16

    const/16 v16, 0x3b6

    const-string/jumbo v17, "spot"

    aput-object v17, v2, v16

    const/16 v16, 0x3b7

    const-string/jumbo v17, "spreadbetting"

    aput-object v17, v2, v16

    const/16 v16, 0x3b8

    const-string/jumbo v17, "srl"

    aput-object v17, v2, v16

    const/16 v16, 0x3b9

    const-string/jumbo v17, "srt"

    aput-object v17, v2, v16

    const/16 v16, 0x3ba

    const-string/jumbo v17, "stada"

    aput-object v17, v2, v16

    const/16 v16, 0x3bb

    const-string/jumbo v17, "staples"

    aput-object v17, v2, v16

    const/16 v16, 0x3bc

    const-string/jumbo v17, "star"

    aput-object v17, v2, v16

    const/16 v16, 0x3bd

    const-string/jumbo v17, "starhub"

    aput-object v17, v2, v16

    const/16 v16, 0x3be

    const-string/jumbo v17, "statebank"

    aput-object v17, v2, v16

    const/16 v16, 0x3bf

    const-string/jumbo v17, "statefarm"

    aput-object v17, v2, v16

    const/16 v16, 0x3c0

    const-string/jumbo v17, "statoil"

    aput-object v17, v2, v16

    const/16 v16, 0x3c1

    const-string/jumbo v17, "stc"

    aput-object v17, v2, v16

    const/16 v16, 0x3c2

    const-string/jumbo v17, "stcgroup"

    aput-object v17, v2, v16

    const/16 v16, 0x3c3

    const-string/jumbo v17, "stockholm"

    aput-object v17, v2, v16

    const/16 v16, 0x3c4

    const-string/jumbo v17, "storage"

    aput-object v17, v2, v16

    const/16 v16, 0x3c5

    const-string/jumbo v17, "store"

    aput-object v17, v2, v16

    const/16 v16, 0x3c6

    const-string/jumbo v17, "stream"

    aput-object v17, v2, v16

    const/16 v16, 0x3c7

    const-string/jumbo v17, "studio"

    aput-object v17, v2, v16

    const/16 v16, 0x3c8

    const-string/jumbo v17, "study"

    aput-object v17, v2, v16

    const/16 v16, 0x3c9

    const-string/jumbo v17, "style"

    aput-object v17, v2, v16

    const/16 v16, 0x3ca

    const-string/jumbo v17, "sucks"

    aput-object v17, v2, v16

    const/16 v16, 0x3cb

    const-string/jumbo v17, "supplies"

    aput-object v17, v2, v16

    const/16 v16, 0x3cc

    const-string/jumbo v17, "supply"

    aput-object v17, v2, v16

    const/16 v16, 0x3cd

    const-string/jumbo v17, "support"

    aput-object v17, v2, v16

    const/16 v16, 0x3ce

    const-string/jumbo v17, "surf"

    aput-object v17, v2, v16

    const/16 v16, 0x3cf

    const-string/jumbo v17, "surgery"

    aput-object v17, v2, v16

    const/16 v16, 0x3d0

    const-string/jumbo v17, "suzuki"

    aput-object v17, v2, v16

    const/16 v16, 0x3d1

    const-string/jumbo v17, "swatch"

    aput-object v17, v2, v16

    const/16 v16, 0x3d2

    const-string/jumbo v17, "swiftcover"

    aput-object v17, v2, v16

    const/16 v16, 0x3d3

    const-string/jumbo v17, "swiss"

    aput-object v17, v2, v16

    const/16 v16, 0x3d4

    const-string/jumbo v17, "sydney"

    aput-object v17, v2, v16

    const/16 v16, 0x3d5

    const-string/jumbo v17, "symantec"

    aput-object v17, v2, v16

    const/16 v16, 0x3d6

    const-string/jumbo v17, "systems"

    aput-object v17, v2, v16

    const/16 v16, 0x3d7

    const-string/jumbo v17, "tab"

    aput-object v17, v2, v16

    const/16 v16, 0x3d8

    const-string/jumbo v17, "taipei"

    aput-object v17, v2, v16

    const/16 v16, 0x3d9

    const-string/jumbo v17, "talk"

    aput-object v17, v2, v16

    const/16 v16, 0x3da

    const-string/jumbo v17, "taobao"

    aput-object v17, v2, v16

    const/16 v16, 0x3db

    const-string/jumbo v17, "target"

    aput-object v17, v2, v16

    const/16 v16, 0x3dc

    const-string/jumbo v17, "tatamotors"

    aput-object v17, v2, v16

    const/16 v16, 0x3dd

    const-string/jumbo v17, "tatar"

    aput-object v17, v2, v16

    const/16 v16, 0x3de

    const-string/jumbo v17, "tattoo"

    aput-object v17, v2, v16

    const/16 v16, 0x3df

    const-string/jumbo v17, "tax"

    aput-object v17, v2, v16

    const/16 v16, 0x3e0

    const-string/jumbo v17, "taxi"

    aput-object v17, v2, v16

    const/16 v16, 0x3e1

    const-string/jumbo v17, "tci"

    aput-object v17, v2, v16

    const/16 v16, 0x3e2

    const-string/jumbo v17, "tdk"

    aput-object v17, v2, v16

    const/16 v16, 0x3e3

    const-string/jumbo v17, "team"

    aput-object v17, v2, v16

    const/16 v16, 0x3e4

    const-string/jumbo v17, "tech"

    aput-object v17, v2, v16

    const/16 v16, 0x3e5

    const-string/jumbo v17, "technology"

    aput-object v17, v2, v16

    const/16 v16, 0x3e6

    const-string/jumbo v17, "tel"

    aput-object v17, v2, v16

    const/16 v16, 0x3e7

    const-string/jumbo v17, "telecity"

    aput-object v17, v2, v16

    const/16 v16, 0x3e8

    const-string/jumbo v17, "telefonica"

    aput-object v17, v2, v16

    const/16 v16, 0x3e9

    const-string/jumbo v17, "temasek"

    aput-object v17, v2, v16

    const/16 v16, 0x3ea

    const-string/jumbo v17, "tennis"

    aput-object v17, v2, v16

    const/16 v16, 0x3eb

    const-string/jumbo v17, "teva"

    aput-object v17, v2, v16

    const/16 v16, 0x3ec

    const-string/jumbo v17, "thd"

    aput-object v17, v2, v16

    const/16 v16, 0x3ed

    const-string/jumbo v17, "theater"

    aput-object v17, v2, v16

    const/16 v16, 0x3ee

    const-string/jumbo v17, "theatre"

    aput-object v17, v2, v16

    const/16 v16, 0x3ef

    const-string/jumbo v17, "tiaa"

    aput-object v17, v2, v16

    const/16 v16, 0x3f0

    const-string/jumbo v17, "tickets"

    aput-object v17, v2, v16

    const/16 v16, 0x3f1

    const-string/jumbo v17, "tienda"

    aput-object v17, v2, v16

    const/16 v16, 0x3f2

    const-string/jumbo v17, "tiffany"

    aput-object v17, v2, v16

    const/16 v16, 0x3f3

    const-string/jumbo v17, "tips"

    aput-object v17, v2, v16

    const/16 v16, 0x3f4

    const-string/jumbo v17, "tires"

    aput-object v17, v2, v16

    const/16 v16, 0x3f5

    const-string/jumbo v17, "tirol"

    aput-object v17, v2, v16

    const/16 v16, 0x3f6

    const-string/jumbo v17, "tjmaxx"

    aput-object v17, v2, v16

    const/16 v16, 0x3f7

    const-string/jumbo v17, "tjx"

    aput-object v17, v2, v16

    const/16 v16, 0x3f8

    const-string/jumbo v17, "tkmaxx"

    aput-object v17, v2, v16

    const/16 v16, 0x3f9

    const-string/jumbo v17, "tmall"

    aput-object v17, v2, v16

    const/16 v16, 0x3fa

    const-string/jumbo v17, "today"

    aput-object v17, v2, v16

    const/16 v16, 0x3fb

    const-string/jumbo v17, "tokyo"

    aput-object v17, v2, v16

    const/16 v16, 0x3fc

    const-string/jumbo v17, "tools"

    aput-object v17, v2, v16

    const/16 v16, 0x3fd

    const-string/jumbo v17, "top"

    aput-object v17, v2, v16

    const/16 v16, 0x3fe

    const-string/jumbo v17, "toray"

    aput-object v17, v2, v16

    const/16 v16, 0x3ff

    const-string/jumbo v17, "toshiba"

    aput-object v17, v2, v16

    const/16 v16, 0x400

    const-string/jumbo v17, "total"

    aput-object v17, v2, v16

    const/16 v16, 0x401

    const-string/jumbo v17, "tours"

    aput-object v17, v2, v16

    const/16 v16, 0x402

    const-string/jumbo v17, "town"

    aput-object v17, v2, v16

    const/16 v16, 0x403

    const-string/jumbo v17, "toyota"

    aput-object v17, v2, v16

    const/16 v16, 0x404

    const-string/jumbo v17, "toys"

    aput-object v17, v2, v16

    const/16 v16, 0x405

    const-string/jumbo v17, "trade"

    aput-object v17, v2, v16

    const/16 v16, 0x406

    const-string/jumbo v17, "trading"

    aput-object v17, v2, v16

    const/16 v16, 0x407

    const-string/jumbo v17, "training"

    aput-object v17, v2, v16

    const/16 v16, 0x408

    const-string/jumbo v17, "travel"

    aput-object v17, v2, v16

    const/16 v16, 0x409

    const-string/jumbo v17, "travelchannel"

    aput-object v17, v2, v16

    const/16 v16, 0x40a

    const-string/jumbo v17, "travelers"

    aput-object v17, v2, v16

    const/16 v16, 0x40b

    const-string/jumbo v17, "travelersinsurance"

    aput-object v17, v2, v16

    const/16 v16, 0x40c

    const-string/jumbo v17, "trust"

    aput-object v17, v2, v16

    const/16 v16, 0x40d

    const-string/jumbo v17, "trv"

    aput-object v17, v2, v16

    const/16 v16, 0x40e

    const-string/jumbo v17, "tube"

    aput-object v17, v2, v16

    const/16 v16, 0x40f

    const-string/jumbo v17, "tui"

    aput-object v17, v2, v16

    const/16 v16, 0x410

    const-string/jumbo v17, "tunes"

    aput-object v17, v2, v16

    const/16 v16, 0x411

    const-string/jumbo v17, "tushu"

    aput-object v17, v2, v16

    const/16 v16, 0x412

    const-string/jumbo v17, "tvs"

    aput-object v17, v2, v16

    const/16 v16, 0x413

    const-string/jumbo v17, "ubank"

    aput-object v17, v2, v16

    const/16 v16, 0x414

    const-string/jumbo v17, "ubs"

    aput-object v17, v2, v16

    const/16 v16, 0x415

    const-string/jumbo v17, "uconnect"

    aput-object v17, v2, v16

    const/16 v16, 0x416

    const-string/jumbo v17, "unicom"

    aput-object v17, v2, v16

    const/16 v16, 0x417

    const-string/jumbo v17, "university"

    aput-object v17, v2, v16

    const/16 v16, 0x418

    const-string/jumbo v17, "uno"

    aput-object v17, v2, v16

    const/16 v16, 0x419

    const-string/jumbo v17, "uol"

    aput-object v17, v2, v16

    const/16 v16, 0x41a

    const-string/jumbo v17, "ups"

    aput-object v17, v2, v16

    const/16 v16, 0x41b

    const-string/jumbo v17, "vacations"

    aput-object v17, v2, v16

    const/16 v16, 0x41c

    const-string/jumbo v17, "vana"

    aput-object v17, v2, v16

    const/16 v16, 0x41d

    const-string/jumbo v17, "vanguard"

    aput-object v17, v2, v16

    const/16 v16, 0x41e

    const-string/jumbo v17, "vegas"

    aput-object v17, v2, v16

    const/16 v16, 0x41f

    const-string/jumbo v17, "ventures"

    aput-object v17, v2, v16

    const/16 v16, 0x420

    const-string/jumbo v17, "verisign"

    aput-object v17, v2, v16

    const/16 v16, 0x421

    const-string/jumbo v17, "versicherung"

    aput-object v17, v2, v16

    const/16 v16, 0x422

    const-string/jumbo v17, "vet"

    aput-object v17, v2, v16

    const/16 v16, 0x423

    const-string/jumbo v17, "viajes"

    aput-object v17, v2, v16

    const/16 v16, 0x424

    const-string/jumbo v17, "video"

    aput-object v17, v2, v16

    const/16 v16, 0x425

    const-string/jumbo v17, "vig"

    aput-object v17, v2, v16

    const/16 v16, 0x426

    const-string/jumbo v17, "viking"

    aput-object v17, v2, v16

    const/16 v16, 0x427

    const-string/jumbo v17, "villas"

    aput-object v17, v2, v16

    const/16 v16, 0x428

    const-string/jumbo v17, "vin"

    aput-object v17, v2, v16

    const/16 v16, 0x429

    const-string/jumbo v17, "vip"

    aput-object v17, v2, v16

    const/16 v16, 0x42a

    const-string/jumbo v17, "virgin"

    aput-object v17, v2, v16

    const/16 v16, 0x42b

    const-string/jumbo v17, "visa"

    aput-object v17, v2, v16

    const/16 v16, 0x42c

    const-string/jumbo v17, "vision"

    aput-object v17, v2, v16

    const/16 v16, 0x42d

    const-string/jumbo v17, "vista"

    aput-object v17, v2, v16

    const/16 v16, 0x42e

    const-string/jumbo v17, "vistaprint"

    aput-object v17, v2, v16

    const/16 v16, 0x42f

    const-string/jumbo v17, "viva"

    aput-object v17, v2, v16

    const/16 v16, 0x430

    const-string/jumbo v17, "vivo"

    aput-object v17, v2, v16

    const/16 v16, 0x431

    const-string/jumbo v17, "vlaanderen"

    aput-object v17, v2, v16

    const/16 v16, 0x432

    const-string/jumbo v17, "vodka"

    aput-object v17, v2, v16

    const/16 v16, 0x433

    const-string/jumbo v17, "volkswagen"

    aput-object v17, v2, v16

    const/16 v16, 0x434

    const-string/jumbo v17, "volvo"

    aput-object v17, v2, v16

    const/16 v16, 0x435

    const-string/jumbo v17, "vote"

    aput-object v17, v2, v16

    const/16 v16, 0x436

    const-string/jumbo v17, "voting"

    aput-object v17, v2, v16

    const/16 v16, 0x437

    const-string/jumbo v17, "voto"

    aput-object v17, v2, v16

    const/16 v16, 0x438

    const-string/jumbo v17, "voyage"

    aput-object v17, v2, v16

    const/16 v16, 0x439

    const-string/jumbo v17, "vuelos"

    aput-object v17, v2, v16

    const/16 v16, 0x43a

    const-string/jumbo v17, "wales"

    aput-object v17, v2, v16

    const/16 v16, 0x43b

    const-string/jumbo v17, "walmart"

    aput-object v17, v2, v16

    const/16 v16, 0x43c

    const-string/jumbo v17, "walter"

    aput-object v17, v2, v16

    const/16 v16, 0x43d

    const-string/jumbo v17, "wang"

    aput-object v17, v2, v16

    const/16 v16, 0x43e

    const-string/jumbo v17, "wanggou"

    aput-object v17, v2, v16

    const/16 v16, 0x43f

    const-string/jumbo v17, "warman"

    aput-object v17, v2, v16

    const/16 v16, 0x440

    const-string/jumbo v17, "watch"

    aput-object v17, v2, v16

    const/16 v16, 0x441

    const-string/jumbo v17, "watches"

    aput-object v17, v2, v16

    const/16 v16, 0x442

    const-string/jumbo v17, "weather"

    aput-object v17, v2, v16

    const/16 v16, 0x443

    const-string/jumbo v17, "weatherchannel"

    aput-object v17, v2, v16

    const/16 v16, 0x444

    const-string/jumbo v17, "webcam"

    aput-object v17, v2, v16

    const/16 v16, 0x445

    const-string/jumbo v17, "weber"

    aput-object v17, v2, v16

    const/16 v16, 0x446

    const-string/jumbo v17, "website"

    aput-object v17, v2, v16

    const/16 v16, 0x447

    const-string/jumbo v17, "wed"

    aput-object v17, v2, v16

    const/16 v16, 0x448

    const-string/jumbo v17, "wedding"

    aput-object v17, v2, v16

    const/16 v16, 0x449

    const-string/jumbo v17, "weibo"

    aput-object v17, v2, v16

    const/16 v16, 0x44a

    const-string/jumbo v17, "weir"

    aput-object v17, v2, v16

    const/16 v16, 0x44b

    const-string/jumbo v17, "whoswho"

    aput-object v17, v2, v16

    const/16 v16, 0x44c

    const-string/jumbo v17, "wien"

    aput-object v17, v2, v16

    const/16 v16, 0x44d

    const-string/jumbo v17, "wiki"

    aput-object v17, v2, v16

    const/16 v16, 0x44e

    const-string/jumbo v17, "williamhill"

    aput-object v17, v2, v16

    const/16 v16, 0x44f

    const-string/jumbo v17, "win"

    aput-object v17, v2, v16

    const/16 v16, 0x450

    const-string/jumbo v17, "windows"

    aput-object v17, v2, v16

    const/16 v16, 0x451

    const-string/jumbo v17, "wine"

    aput-object v17, v2, v16

    const/16 v16, 0x452

    const-string/jumbo v17, "winners"

    aput-object v17, v2, v16

    const/16 v16, 0x453

    const-string/jumbo v17, "wme"

    aput-object v17, v2, v16

    const/16 v16, 0x454

    const-string/jumbo v17, "wolterskluwer"

    aput-object v17, v2, v16

    const/16 v16, 0x455

    const-string/jumbo v17, "woodside"

    aput-object v17, v2, v16

    const/16 v16, 0x456

    const-string/jumbo v17, "work"

    aput-object v17, v2, v16

    const/16 v16, 0x457

    const-string/jumbo v17, "works"

    aput-object v17, v2, v16

    const/16 v16, 0x458

    const-string/jumbo v17, "world"

    aput-object v17, v2, v16

    const/16 v16, 0x459

    const-string/jumbo v17, "wow"

    aput-object v17, v2, v16

    const/16 v16, 0x45a

    const-string/jumbo v17, "wtc"

    aput-object v17, v2, v16

    const/16 v16, 0x45b

    const-string/jumbo v17, "wtf"

    aput-object v17, v2, v16

    const/16 v16, 0x45c

    const-string/jumbo v17, "xbox"

    aput-object v17, v2, v16

    const/16 v16, 0x45d

    const-string/jumbo v17, "xerox"

    aput-object v17, v2, v16

    const/16 v16, 0x45e

    const-string/jumbo v17, "xfinity"

    aput-object v17, v2, v16

    const/16 v16, 0x45f

    const-string/jumbo v17, "xihuan"

    aput-object v17, v2, v16

    const/16 v16, 0x460

    const-string/jumbo v17, "xin"

    aput-object v17, v2, v16

    const/16 v16, 0x461

    const-string/jumbo v17, "xn--11b4c3d"

    aput-object v17, v2, v16

    const/16 v16, 0x462

    const-string/jumbo v17, "xn--1ck2e1b"

    aput-object v17, v2, v16

    const/16 v16, 0x463

    const-string/jumbo v17, "xn--1qqw23a"

    aput-object v17, v2, v16

    const/16 v16, 0x464

    const-string/jumbo v17, "xn--30rr7y"

    aput-object v17, v2, v16

    const/16 v16, 0x465

    const-string/jumbo v17, "xn--3bst00m"

    aput-object v17, v2, v16

    const/16 v16, 0x466

    const-string/jumbo v17, "xn--3ds443g"

    aput-object v17, v2, v16

    const/16 v16, 0x467

    const-string/jumbo v17, "xn--3oq18vl8pn36a"

    aput-object v17, v2, v16

    const/16 v16, 0x468

    const-string/jumbo v17, "xn--3pxu8k"

    aput-object v17, v2, v16

    const/16 v16, 0x469

    const-string/jumbo v17, "xn--42c2d9a"

    aput-object v17, v2, v16

    const/16 v16, 0x46a

    const-string/jumbo v17, "xn--45q11c"

    aput-object v17, v2, v16

    const/16 v16, 0x46b

    const-string/jumbo v17, "xn--4gbrim"

    aput-object v17, v2, v16

    const/16 v16, 0x46c

    const-string/jumbo v17, "xn--55qw42g"

    aput-object v17, v2, v16

    const/16 v16, 0x46d

    const-string/jumbo v17, "xn--55qx5d"

    aput-object v17, v2, v16

    const/16 v16, 0x46e

    const-string/jumbo v17, "xn--5su34j936bgsg"

    aput-object v17, v2, v16

    const/16 v16, 0x46f

    const-string/jumbo v17, "xn--5tzm5g"

    aput-object v17, v2, v16

    const/16 v16, 0x470

    const-string/jumbo v17, "xn--6frz82g"

    aput-object v17, v2, v16

    const/16 v16, 0x471

    const-string/jumbo v17, "xn--6qq986b3xl"

    aput-object v17, v2, v16

    const/16 v16, 0x472

    const-string/jumbo v17, "xn--80adxhks"

    aput-object v17, v2, v16

    const/16 v16, 0x473

    const-string/jumbo v17, "xn--80aqecdr1a"

    aput-object v17, v2, v16

    const/16 v16, 0x474

    const-string/jumbo v17, "xn--80asehdb"

    aput-object v17, v2, v16

    const/16 v16, 0x475

    const-string/jumbo v17, "xn--80aswg"

    aput-object v17, v2, v16

    const/16 v16, 0x476

    const-string/jumbo v17, "xn--8y0a063a"

    aput-object v17, v2, v16

    const/16 v16, 0x477

    const-string/jumbo v17, "xn--90ae"

    aput-object v17, v2, v16

    const/16 v16, 0x478

    const-string/jumbo v17, "xn--9dbq2a"

    aput-object v17, v2, v16

    const/16 v16, 0x479

    const-string/jumbo v17, "xn--9et52u"

    aput-object v17, v2, v16

    const/16 v16, 0x47a

    const-string/jumbo v17, "xn--9krt00a"

    aput-object v17, v2, v16

    const/16 v16, 0x47b

    const-string/jumbo v17, "xn--b4w605ferd"

    aput-object v17, v2, v16

    const/16 v16, 0x47c

    const-string/jumbo v17, "xn--bck1b9a5dre4c"

    aput-object v17, v2, v16

    const/16 v16, 0x47d

    const-string/jumbo v17, "xn--c1avg"

    aput-object v17, v2, v16

    const/16 v16, 0x47e

    const-string/jumbo v17, "xn--c2br7g"

    aput-object v17, v2, v16

    const/16 v16, 0x47f

    const-string/jumbo v17, "xn--cck2b3b"

    aput-object v17, v2, v16

    const/16 v16, 0x480

    const-string/jumbo v17, "xn--cg4bki"

    aput-object v17, v2, v16

    const/16 v16, 0x481

    const-string/jumbo v17, "xn--czr694b"

    aput-object v17, v2, v16

    const/16 v16, 0x482

    const-string/jumbo v17, "xn--czrs0t"

    aput-object v17, v2, v16

    const/16 v16, 0x483

    const-string/jumbo v17, "xn--czru2d"

    aput-object v17, v2, v16

    const/16 v16, 0x484

    const-string/jumbo v17, "xn--d1acj3b"

    aput-object v17, v2, v16

    const/16 v16, 0x485

    const-string/jumbo v17, "xn--eckvdtc9d"

    aput-object v17, v2, v16

    const/16 v16, 0x486

    const-string/jumbo v17, "xn--efvy88h"

    aput-object v17, v2, v16

    const/16 v16, 0x487

    const-string/jumbo v17, "xn--estv75g"

    aput-object v17, v2, v16

    const/16 v16, 0x488

    const-string/jumbo v17, "xn--fct429k"

    aput-object v17, v2, v16

    const/16 v16, 0x489

    const-string/jumbo v17, "xn--fhbei"

    aput-object v17, v2, v16

    const/16 v16, 0x48a

    const-string/jumbo v17, "xn--fiq228c5hs"

    aput-object v17, v2, v16

    const/16 v16, 0x48b

    const-string/jumbo v17, "xn--fiq64b"

    aput-object v17, v2, v16

    const/16 v16, 0x48c

    const-string/jumbo v17, "xn--fjq720a"

    aput-object v17, v2, v16

    const/16 v16, 0x48d

    const-string/jumbo v17, "xn--flw351e"

    aput-object v17, v2, v16

    const/16 v16, 0x48e

    const-string/jumbo v17, "xn--fzys8d69uvgm"

    aput-object v17, v2, v16

    const/16 v16, 0x48f

    const-string/jumbo v17, "xn--g2xx48c"

    aput-object v17, v2, v16

    const/16 v16, 0x490

    const-string/jumbo v17, "xn--gckr3f0f"

    aput-object v17, v2, v16

    const/16 v16, 0x491

    const-string/jumbo v17, "xn--gk3at1e"

    aput-object v17, v2, v16

    const/16 v16, 0x492

    const-string/jumbo v17, "xn--hxt814e"

    aput-object v17, v2, v16

    const/16 v16, 0x493

    const-string/jumbo v17, "xn--i1b6b1a6a2e"

    aput-object v17, v2, v16

    const/16 v16, 0x494

    const-string/jumbo v17, "xn--imr513n"

    aput-object v17, v2, v16

    const/16 v16, 0x495

    const-string/jumbo v17, "xn--io0a7i"

    aput-object v17, v2, v16

    const/16 v16, 0x496

    const-string/jumbo v17, "xn--j1aef"

    aput-object v17, v2, v16

    const/16 v16, 0x497

    const-string/jumbo v17, "xn--jlq61u9w7b"

    aput-object v17, v2, v16

    const/16 v16, 0x498

    const-string/jumbo v17, "xn--jvr189m"

    aput-object v17, v2, v16

    const/16 v16, 0x499

    const-string/jumbo v17, "xn--kcrx77d1x4a"

    aput-object v17, v2, v16

    const/16 v16, 0x49a

    const-string/jumbo v17, "xn--kpu716f"

    aput-object v17, v2, v16

    const/16 v16, 0x49b

    const-string/jumbo v17, "xn--kput3i"

    aput-object v17, v2, v16

    const/16 v16, 0x49c

    const-string/jumbo v17, "xn--mgba3a3ejt"

    aput-object v17, v2, v16

    const/16 v16, 0x49d

    const-string/jumbo v17, "xn--mgba7c0bbn0a"

    aput-object v17, v2, v16

    const/16 v16, 0x49e

    const-string/jumbo v17, "xn--mgbab2bd"

    aput-object v17, v2, v16

    const/16 v16, 0x49f

    const-string/jumbo v17, "xn--mgbb9fbpob"

    aput-object v17, v2, v16

    const/16 v16, 0x4a0

    const-string/jumbo v17, "xn--mgbca7dzdo"

    aput-object v17, v2, v16

    const/16 v16, 0x4a1

    const-string/jumbo v17, "xn--mgbi4ecexp"

    aput-object v17, v2, v16

    const/16 v16, 0x4a2

    const-string/jumbo v17, "xn--mgbt3dhd"

    aput-object v17, v2, v16

    const/16 v16, 0x4a3

    const-string/jumbo v17, "xn--mk1bu44c"

    aput-object v17, v2, v16

    const/16 v16, 0x4a4

    const-string/jumbo v17, "xn--mxtq1m"

    aput-object v17, v2, v16

    const/16 v16, 0x4a5

    const-string/jumbo v17, "xn--ngbc5azd"

    aput-object v17, v2, v16

    const/16 v16, 0x4a6

    const-string/jumbo v17, "xn--ngbe9e0a"

    aput-object v17, v2, v16

    const/16 v16, 0x4a7

    const-string/jumbo v17, "xn--nqv7f"

    aput-object v17, v2, v16

    const/16 v16, 0x4a8

    const-string/jumbo v17, "xn--nqv7fs00ema"

    aput-object v17, v2, v16

    const/16 v16, 0x4a9

    const-string/jumbo v17, "xn--nyqy26a"

    aput-object v17, v2, v16

    const/16 v16, 0x4aa

    const-string/jumbo v17, "xn--p1acf"

    aput-object v17, v2, v16

    const/16 v16, 0x4ab

    const-string/jumbo v17, "xn--pbt977c"

    aput-object v17, v2, v16

    const/16 v16, 0x4ac

    const-string/jumbo v17, "xn--pssy2u"

    aput-object v17, v2, v16

    const/16 v16, 0x4ad

    const-string/jumbo v17, "xn--q9jyb4c"

    aput-object v17, v2, v16

    const/16 v16, 0x4ae

    const-string/jumbo v17, "xn--qcka1pmc"

    aput-object v17, v2, v16

    const/16 v16, 0x4af

    const-string/jumbo v17, "xn--rhqv96g"

    aput-object v17, v2, v16

    const/16 v16, 0x4b0

    const-string/jumbo v17, "xn--rovu88b"

    aput-object v17, v2, v16

    const/16 v16, 0x4b1

    const-string/jumbo v17, "xn--ses554g"

    aput-object v17, v2, v16

    const/16 v16, 0x4b2

    const-string/jumbo v17, "xn--t60b56a"

    aput-object v17, v2, v16

    const/16 v16, 0x4b3

    const-string/jumbo v17, "xn--tckwe"

    aput-object v17, v2, v16

    const/16 v16, 0x4b4

    const-string/jumbo v17, "xn--tiq49xqyj"

    aput-object v17, v2, v16

    const/16 v16, 0x4b5

    const-string/jumbo v17, "xn--unup4y"

    aput-object v17, v2, v16

    const/16 v16, 0x4b6

    const-string/jumbo v17, "xn--vermgensberater-ctb"

    aput-object v17, v2, v16

    const/16 v16, 0x4b7

    const-string/jumbo v17, "xn--vermgensberatung-pwb"

    aput-object v17, v2, v16

    const/16 v16, 0x4b8

    const-string/jumbo v17, "xn--vhquv"

    aput-object v17, v2, v16

    const/16 v16, 0x4b9

    const-string/jumbo v17, "xn--vuq861b"

    aput-object v17, v2, v16

    const/16 v16, 0x4ba

    const-string/jumbo v17, "xn--w4r85el8fhu5dnra"

    aput-object v17, v2, v16

    const/16 v16, 0x4bb

    const-string/jumbo v17, "xn--w4rs40l"

    aput-object v17, v2, v16

    const/16 v16, 0x4bc

    const-string/jumbo v17, "xn--xhq521b"

    aput-object v17, v2, v16

    const/16 v16, 0x4bd

    const-string/jumbo v17, "xn--zfr164b"

    aput-object v17, v2, v16

    const/16 v16, 0x4be

    const-string/jumbo v17, "xperia"

    aput-object v17, v2, v16

    const/16 v16, 0x4bf

    const-string/jumbo v17, "xxx"

    aput-object v17, v2, v16

    const/16 v16, 0x4c0

    const-string/jumbo v17, "xyz"

    aput-object v17, v2, v16

    const/16 v16, 0x4c1

    const-string/jumbo v17, "yachts"

    aput-object v17, v2, v16

    const/16 v16, 0x4c2

    const-string/jumbo v17, "yahoo"

    aput-object v17, v2, v16

    const/16 v16, 0x4c3

    const-string/jumbo v17, "yamaxun"

    aput-object v17, v2, v16

    const/16 v16, 0x4c4

    const-string/jumbo v17, "yandex"

    aput-object v17, v2, v16

    const/16 v16, 0x4c5

    const-string/jumbo v17, "yodobashi"

    aput-object v17, v2, v16

    const/16 v16, 0x4c6

    const-string/jumbo v17, "yoga"

    aput-object v17, v2, v16

    const/16 v16, 0x4c7

    const-string/jumbo v17, "yokohama"

    aput-object v17, v2, v16

    const/16 v16, 0x4c8

    const-string/jumbo v17, "you"

    aput-object v17, v2, v16

    const/16 v16, 0x4c9

    const-string/jumbo v17, "youtube"

    aput-object v17, v2, v16

    const/16 v16, 0x4ca

    const-string/jumbo v17, "yun"

    aput-object v17, v2, v16

    const/16 v16, 0x4cb

    const-string/jumbo v17, "zappos"

    aput-object v17, v2, v16

    const/16 v16, 0x4cc

    const-string/jumbo v17, "zara"

    aput-object v17, v2, v16

    const/16 v16, 0x4cd

    const-string/jumbo v17, "zero"

    aput-object v17, v2, v16

    const/16 v16, 0x4ce

    const-string/jumbo v17, "zip"

    aput-object v17, v2, v16

    const/16 v16, 0x4cf

    const-string/jumbo v17, "zippo"

    aput-object v17, v2, v16

    const/16 v16, 0x4d0

    const-string/jumbo v17, "zone"

    aput-object v17, v2, v16

    const/16 v16, 0x4d1

    const-string/jumbo v17, "zuerich"

    aput-object v17, v2, v16

    sput-object v2, Lcom/uc/base/net/util/UrlParser;->GENERIC_TLDS:[Ljava/lang/String;

    const/16 v2, 0x125

    .line 1695
    new-array v2, v2, [Ljava/lang/String;

    const-string v16, "ac"

    aput-object v16, v2, v0

    const-string v0, "ad"

    aput-object v0, v2, v3

    const-string v0, "ae"

    aput-object v0, v2, v1

    const-string v0, "af"

    aput-object v0, v2, v4

    const-string v0, "ag"

    aput-object v0, v2, v5

    const-string v0, "ai"

    aput-object v0, v2, v6

    const-string v0, "al"

    aput-object v0, v2, v7

    const-string v0, "am"

    aput-object v0, v2, v8

    const-string v0, "ao"

    aput-object v0, v2, v9

    const-string v0, "aq"

    aput-object v0, v2, v10

    const-string v0, "ar"

    aput-object v0, v2, v11

    const-string v0, "as"

    aput-object v0, v2, v12

    const-string v0, "at"

    aput-object v0, v2, v13

    const-string v0, "au"

    aput-object v0, v2, v14

    const-string v0, "aw"

    aput-object v0, v2, v15

    const/16 v0, 0xf

    const-string v1, "ax"

    aput-object v1, v2, v0

    const/16 v0, 0x10

    const-string v1, "az"

    aput-object v1, v2, v0

    const/16 v0, 0x11

    const-string v1, "ba"

    aput-object v1, v2, v0

    const/16 v0, 0x12

    const-string v1, "bb"

    aput-object v1, v2, v0

    const/16 v0, 0x13

    const-string v1, "bd"

    aput-object v1, v2, v0

    const/16 v0, 0x14

    const-string v1, "be"

    aput-object v1, v2, v0

    const/16 v0, 0x15

    const-string v1, "bf"

    aput-object v1, v2, v0

    const/16 v0, 0x16

    const-string v1, "bg"

    aput-object v1, v2, v0

    const/16 v0, 0x17

    const-string v1, "bh"

    aput-object v1, v2, v0

    const/16 v0, 0x18

    const-string v1, "bi"

    aput-object v1, v2, v0

    const/16 v0, 0x19

    const-string v1, "bj"

    aput-object v1, v2, v0

    const/16 v0, 0x1a

    const-string v1, "bm"

    aput-object v1, v2, v0

    const/16 v0, 0x1b

    const-string v1, "bn"

    aput-object v1, v2, v0

    const/16 v0, 0x1c

    const-string v1, "bo"

    aput-object v1, v2, v0

    const/16 v0, 0x1d

    const-string v1, "br"

    aput-object v1, v2, v0

    const/16 v0, 0x1e

    const-string v1, "bs"

    aput-object v1, v2, v0

    const/16 v0, 0x1f

    const-string v1, "bt"

    aput-object v1, v2, v0

    const/16 v0, 0x20

    const-string v1, "bv"

    aput-object v1, v2, v0

    const/16 v0, 0x21

    const-string v1, "bw"

    aput-object v1, v2, v0

    const/16 v0, 0x22

    const-string v1, "by"

    aput-object v1, v2, v0

    const/16 v0, 0x23

    const-string v1, "bz"

    aput-object v1, v2, v0

    const/16 v0, 0x24

    const-string v1, "ca"

    aput-object v1, v2, v0

    const/16 v0, 0x25

    const-string v1, "cc"

    aput-object v1, v2, v0

    const/16 v0, 0x26

    const-string v1, "cd"

    aput-object v1, v2, v0

    const/16 v0, 0x27

    const-string v1, "cf"

    aput-object v1, v2, v0

    const/16 v0, 0x28

    const-string v1, "cg"

    aput-object v1, v2, v0

    const/16 v0, 0x29

    const-string v1, "ch"

    aput-object v1, v2, v0

    const/16 v0, 0x2a

    const-string v1, "ci"

    aput-object v1, v2, v0

    const/16 v0, 0x2b

    const-string v1, "ck"

    aput-object v1, v2, v0

    const/16 v0, 0x2c

    const-string v1, "cl"

    aput-object v1, v2, v0

    const/16 v0, 0x2d

    const-string v1, "cm"

    aput-object v1, v2, v0

    const/16 v0, 0x2e

    const-string v1, "cn"

    aput-object v1, v2, v0

    const/16 v0, 0x2f

    const-string v1, "co"

    aput-object v1, v2, v0

    const/16 v0, 0x30

    const-string v1, "cr"

    aput-object v1, v2, v0

    const/16 v0, 0x31

    const-string v1, "cu"

    aput-object v1, v2, v0

    const/16 v0, 0x32

    const-string v1, "cv"

    aput-object v1, v2, v0

    const/16 v0, 0x33

    const-string v1, "cw"

    aput-object v1, v2, v0

    const/16 v0, 0x34

    const-string v1, "cx"

    aput-object v1, v2, v0

    const/16 v0, 0x35

    const-string v1, "cy"

    aput-object v1, v2, v0

    const/16 v0, 0x36

    const-string v1, "cz"

    aput-object v1, v2, v0

    const/16 v0, 0x37

    const-string v1, "de"

    aput-object v1, v2, v0

    const/16 v0, 0x38

    const-string v1, "dj"

    aput-object v1, v2, v0

    const/16 v0, 0x39

    const-string v1, "dk"

    aput-object v1, v2, v0

    const/16 v0, 0x3a

    const-string v1, "dm"

    aput-object v1, v2, v0

    const/16 v0, 0x3b

    const-string v1, "do"

    aput-object v1, v2, v0

    const/16 v0, 0x3c

    const-string v1, "dz"

    aput-object v1, v2, v0

    const/16 v0, 0x3d

    const-string v1, "ec"

    aput-object v1, v2, v0

    const/16 v0, 0x3e

    const-string v1, "ee"

    aput-object v1, v2, v0

    const/16 v0, 0x3f

    const-string v1, "eg"

    aput-object v1, v2, v0

    const/16 v0, 0x40

    const-string v1, "er"

    aput-object v1, v2, v0

    const/16 v0, 0x41

    const-string v1, "es"

    aput-object v1, v2, v0

    const/16 v0, 0x42

    const-string v1, "et"

    aput-object v1, v2, v0

    const/16 v0, 0x43

    const-string v1, "eu"

    aput-object v1, v2, v0

    const/16 v0, 0x44

    const-string v1, "fi"

    aput-object v1, v2, v0

    const/16 v0, 0x45

    const-string v1, "fj"

    aput-object v1, v2, v0

    const/16 v0, 0x46

    const-string v1, "fk"

    aput-object v1, v2, v0

    const/16 v0, 0x47

    const-string v1, "fm"

    aput-object v1, v2, v0

    const/16 v0, 0x48

    const-string v1, "fo"

    aput-object v1, v2, v0

    const/16 v0, 0x49

    const-string v1, "fr"

    aput-object v1, v2, v0

    const/16 v0, 0x4a

    const-string v1, "ga"

    aput-object v1, v2, v0

    const/16 v0, 0x4b

    const-string v1, "gb"

    aput-object v1, v2, v0

    const/16 v0, 0x4c

    const-string v1, "gd"

    aput-object v1, v2, v0

    const/16 v0, 0x4d

    const-string v1, "ge"

    aput-object v1, v2, v0

    const/16 v0, 0x4e

    const-string v1, "gf"

    aput-object v1, v2, v0

    const/16 v0, 0x4f

    const-string v1, "gg"

    aput-object v1, v2, v0

    const/16 v0, 0x50

    const-string v1, "gh"

    aput-object v1, v2, v0

    const/16 v0, 0x51

    const-string v1, "gi"

    aput-object v1, v2, v0

    const/16 v0, 0x52

    const-string v1, "gl"

    aput-object v1, v2, v0

    const/16 v0, 0x53

    const-string v1, "gm"

    aput-object v1, v2, v0

    const/16 v0, 0x54

    const-string v1, "gn"

    aput-object v1, v2, v0

    const/16 v0, 0x55

    const-string v1, "gp"

    aput-object v1, v2, v0

    const/16 v0, 0x56

    const-string v1, "gq"

    aput-object v1, v2, v0

    const/16 v0, 0x57

    const-string v1, "gr"

    aput-object v1, v2, v0

    const/16 v0, 0x58

    const-string v1, "gs"

    aput-object v1, v2, v0

    const/16 v0, 0x59

    const-string v1, "gt"

    aput-object v1, v2, v0

    const/16 v0, 0x5a

    const-string v1, "gu"

    aput-object v1, v2, v0

    const/16 v0, 0x5b

    const-string v1, "gw"

    aput-object v1, v2, v0

    const/16 v0, 0x5c

    const-string v1, "gy"

    aput-object v1, v2, v0

    const/16 v0, 0x5d

    const-string v1, "hk"

    aput-object v1, v2, v0

    const/16 v0, 0x5e

    const-string v1, "hm"

    aput-object v1, v2, v0

    const/16 v0, 0x5f

    const-string v1, "hn"

    aput-object v1, v2, v0

    const/16 v0, 0x60

    const-string v1, "hr"

    aput-object v1, v2, v0

    const/16 v0, 0x61

    const-string v1, "ht"

    aput-object v1, v2, v0

    const/16 v0, 0x62

    const-string v1, "hu"

    aput-object v1, v2, v0

    const/16 v0, 0x63

    const-string v1, "id"

    aput-object v1, v2, v0

    const/16 v0, 0x64

    const-string v1, "ie"

    aput-object v1, v2, v0

    const/16 v0, 0x65

    const-string v1, "il"

    aput-object v1, v2, v0

    const/16 v0, 0x66

    const-string v1, "im"

    aput-object v1, v2, v0

    const/16 v0, 0x67

    const-string v1, "in"

    aput-object v1, v2, v0

    const/16 v0, 0x68

    const-string v1, "io"

    aput-object v1, v2, v0

    const/16 v0, 0x69

    const-string v1, "iq"

    aput-object v1, v2, v0

    const/16 v0, 0x6a

    const-string v1, "ir"

    aput-object v1, v2, v0

    const/16 v0, 0x6b

    const-string v1, "is"

    aput-object v1, v2, v0

    const/16 v0, 0x6c

    const-string v1, "it"

    aput-object v1, v2, v0

    const/16 v0, 0x6d

    const-string v1, "je"

    aput-object v1, v2, v0

    const/16 v0, 0x6e

    const-string v1, "jm"

    aput-object v1, v2, v0

    const/16 v0, 0x6f

    const-string v1, "jo"

    aput-object v1, v2, v0

    const/16 v0, 0x70

    const-string v1, "jp"

    aput-object v1, v2, v0

    const/16 v0, 0x71

    const-string v1, "ke"

    aput-object v1, v2, v0

    const/16 v0, 0x72

    const-string v1, "kg"

    aput-object v1, v2, v0

    const/16 v0, 0x73

    const-string v1, "kh"

    aput-object v1, v2, v0

    const/16 v0, 0x74

    const-string v1, "ki"

    aput-object v1, v2, v0

    const/16 v0, 0x75

    const-string v1, "km"

    aput-object v1, v2, v0

    const/16 v0, 0x76

    const-string v1, "kn"

    aput-object v1, v2, v0

    const/16 v0, 0x77

    const-string v1, "kp"

    aput-object v1, v2, v0

    const/16 v0, 0x78

    const-string v1, "kr"

    aput-object v1, v2, v0

    const/16 v0, 0x79

    const-string v1, "kw"

    aput-object v1, v2, v0

    const/16 v0, 0x7a

    const-string v1, "ky"

    aput-object v1, v2, v0

    const/16 v0, 0x7b

    const-string v1, "kz"

    aput-object v1, v2, v0

    const/16 v0, 0x7c

    const-string v1, "la"

    aput-object v1, v2, v0

    const/16 v0, 0x7d

    const-string v1, "lb"

    aput-object v1, v2, v0

    const/16 v0, 0x7e

    const-string v1, "lc"

    aput-object v1, v2, v0

    const/16 v0, 0x7f

    const-string v1, "li"

    aput-object v1, v2, v0

    const/16 v0, 0x80

    const-string v1, "lk"

    aput-object v1, v2, v0

    const/16 v0, 0x81

    const-string v1, "lr"

    aput-object v1, v2, v0

    const/16 v0, 0x82

    const-string v1, "ls"

    aput-object v1, v2, v0

    const/16 v0, 0x83

    const-string v1, "lt"

    aput-object v1, v2, v0

    const/16 v0, 0x84

    const-string v1, "lu"

    aput-object v1, v2, v0

    const/16 v0, 0x85

    const-string v1, "lv"

    aput-object v1, v2, v0

    const/16 v0, 0x86

    const-string v1, "ly"

    aput-object v1, v2, v0

    const/16 v0, 0x87

    const-string v1, "ma"

    aput-object v1, v2, v0

    const/16 v0, 0x88

    const-string v1, "mc"

    aput-object v1, v2, v0

    const/16 v0, 0x89

    const-string v1, "md"

    aput-object v1, v2, v0

    const/16 v0, 0x8a

    const-string v1, "me"

    aput-object v1, v2, v0

    const/16 v0, 0x8b

    const-string v1, "mg"

    aput-object v1, v2, v0

    const/16 v0, 0x8c

    const-string v1, "mh"

    aput-object v1, v2, v0

    const/16 v0, 0x8d

    const-string v1, "mk"

    aput-object v1, v2, v0

    const/16 v0, 0x8e

    const-string v1, "ml"

    aput-object v1, v2, v0

    const/16 v0, 0x8f

    const-string v1, "mm"

    aput-object v1, v2, v0

    const/16 v0, 0x90

    const-string v1, "mn"

    aput-object v1, v2, v0

    const/16 v0, 0x91

    const-string v1, "mo"

    aput-object v1, v2, v0

    const/16 v0, 0x92

    const-string v1, "mp"

    aput-object v1, v2, v0

    const/16 v0, 0x93

    const-string v1, "mq"

    aput-object v1, v2, v0

    const/16 v0, 0x94

    const-string v1, "mr"

    aput-object v1, v2, v0

    const/16 v0, 0x95

    const-string v1, "ms"

    aput-object v1, v2, v0

    const/16 v0, 0x96

    const-string v1, "mt"

    aput-object v1, v2, v0

    const/16 v0, 0x97

    const-string v1, "mu"

    aput-object v1, v2, v0

    const/16 v0, 0x98

    const-string v1, "mv"

    aput-object v1, v2, v0

    const/16 v0, 0x99

    const-string v1, "mw"

    aput-object v1, v2, v0

    const/16 v0, 0x9a

    const-string v1, "mx"

    aput-object v1, v2, v0

    const/16 v0, 0x9b

    const-string v1, "my"

    aput-object v1, v2, v0

    const/16 v0, 0x9c

    const-string v1, "mz"

    aput-object v1, v2, v0

    const/16 v0, 0x9d

    const-string v1, "na"

    aput-object v1, v2, v0

    const/16 v0, 0x9e

    const-string v1, "nc"

    aput-object v1, v2, v0

    const/16 v0, 0x9f

    const-string v1, "ne"

    aput-object v1, v2, v0

    const/16 v0, 0xa0

    const-string v1, "nf"

    aput-object v1, v2, v0

    const/16 v0, 0xa1

    const-string v1, "ng"

    aput-object v1, v2, v0

    const/16 v0, 0xa2

    const-string v1, "ni"

    aput-object v1, v2, v0

    const/16 v0, 0xa3

    const-string v1, "nl"

    aput-object v1, v2, v0

    const/16 v0, 0xa4

    const-string v1, "no"

    aput-object v1, v2, v0

    const/16 v0, 0xa5

    const-string v1, "np"

    aput-object v1, v2, v0

    const/16 v0, 0xa6

    const-string v1, "nr"

    aput-object v1, v2, v0

    const/16 v0, 0xa7

    const-string v1, "nu"

    aput-object v1, v2, v0

    const/16 v0, 0xa8

    const-string v1, "nz"

    aput-object v1, v2, v0

    const/16 v0, 0xa9

    const-string v1, "om"

    aput-object v1, v2, v0

    const/16 v0, 0xaa

    const-string v1, "pa"

    aput-object v1, v2, v0

    const/16 v0, 0xab

    const-string v1, "pe"

    aput-object v1, v2, v0

    const/16 v0, 0xac

    const-string v1, "pf"

    aput-object v1, v2, v0

    const/16 v0, 0xad

    const-string v1, "pg"

    aput-object v1, v2, v0

    const/16 v0, 0xae

    const-string v1, "ph"

    aput-object v1, v2, v0

    const/16 v0, 0xaf

    const-string v1, "pk"

    aput-object v1, v2, v0

    const/16 v0, 0xb0

    const-string v1, "pl"

    aput-object v1, v2, v0

    const/16 v0, 0xb1

    const-string v1, "pm"

    aput-object v1, v2, v0

    const/16 v0, 0xb2

    const-string v1, "pn"

    aput-object v1, v2, v0

    const/16 v0, 0xb3

    const-string v1, "pr"

    aput-object v1, v2, v0

    const/16 v0, 0xb4

    const-string v1, "ps"

    aput-object v1, v2, v0

    const/16 v0, 0xb5

    const-string v1, "pt"

    aput-object v1, v2, v0

    const/16 v0, 0xb6

    const-string/jumbo v1, "pw"

    aput-object v1, v2, v0

    const/16 v0, 0xb7

    const-string/jumbo v1, "py"

    aput-object v1, v2, v0

    const/16 v0, 0xb8

    const-string/jumbo v1, "qa"

    aput-object v1, v2, v0

    const/16 v0, 0xb9

    const-string/jumbo v1, "re"

    aput-object v1, v2, v0

    const/16 v0, 0xba

    const-string/jumbo v1, "ro"

    aput-object v1, v2, v0

    const/16 v0, 0xbb

    const-string/jumbo v1, "rs"

    aput-object v1, v2, v0

    const/16 v0, 0xbc

    const-string/jumbo v1, "ru"

    aput-object v1, v2, v0

    const/16 v0, 0xbd

    const-string/jumbo v1, "rw"

    aput-object v1, v2, v0

    const/16 v0, 0xbe

    const-string/jumbo v1, "sa"

    aput-object v1, v2, v0

    const/16 v0, 0xbf

    const-string/jumbo v1, "sb"

    aput-object v1, v2, v0

    const/16 v0, 0xc0

    const-string/jumbo v1, "sc"

    aput-object v1, v2, v0

    const/16 v0, 0xc1

    const-string/jumbo v1, "sd"

    aput-object v1, v2, v0

    const/16 v0, 0xc2

    const-string/jumbo v1, "se"

    aput-object v1, v2, v0

    const/16 v0, 0xc3

    const-string/jumbo v1, "sg"

    aput-object v1, v2, v0

    const/16 v0, 0xc4

    const-string/jumbo v1, "sh"

    aput-object v1, v2, v0

    const/16 v0, 0xc5

    const-string/jumbo v1, "si"

    aput-object v1, v2, v0

    const/16 v0, 0xc6

    const-string/jumbo v1, "sj"

    aput-object v1, v2, v0

    const/16 v0, 0xc7

    const-string/jumbo v1, "sk"

    aput-object v1, v2, v0

    const/16 v0, 0xc8

    const-string/jumbo v1, "sl"

    aput-object v1, v2, v0

    const/16 v0, 0xc9

    const-string/jumbo v1, "sm"

    aput-object v1, v2, v0

    const/16 v0, 0xca

    const-string/jumbo v1, "sn"

    aput-object v1, v2, v0

    const/16 v0, 0xcb

    const-string/jumbo v1, "so"

    aput-object v1, v2, v0

    const/16 v0, 0xcc

    const-string/jumbo v1, "sr"

    aput-object v1, v2, v0

    const/16 v0, 0xcd

    const-string/jumbo v1, "st"

    aput-object v1, v2, v0

    const/16 v0, 0xce

    const-string/jumbo v1, "su"

    aput-object v1, v2, v0

    const/16 v0, 0xcf

    const-string/jumbo v1, "sv"

    aput-object v1, v2, v0

    const/16 v0, 0xd0

    const-string/jumbo v1, "sx"

    aput-object v1, v2, v0

    const/16 v0, 0xd1

    const-string/jumbo v1, "sy"

    aput-object v1, v2, v0

    const/16 v0, 0xd2

    const-string/jumbo v1, "sz"

    aput-object v1, v2, v0

    const/16 v0, 0xd3

    const-string/jumbo v1, "tc"

    aput-object v1, v2, v0

    const/16 v0, 0xd4

    const-string/jumbo v1, "td"

    aput-object v1, v2, v0

    const/16 v0, 0xd5

    const-string/jumbo v1, "tf"

    aput-object v1, v2, v0

    const/16 v0, 0xd6

    const-string/jumbo v1, "tg"

    aput-object v1, v2, v0

    const/16 v0, 0xd7

    const-string/jumbo v1, "th"

    aput-object v1, v2, v0

    const/16 v0, 0xd8

    const-string/jumbo v1, "tj"

    aput-object v1, v2, v0

    const/16 v0, 0xd9

    const-string/jumbo v1, "tk"

    aput-object v1, v2, v0

    const/16 v0, 0xda

    const-string/jumbo v1, "tl"

    aput-object v1, v2, v0

    const/16 v0, 0xdb

    const-string/jumbo v1, "tm"

    aput-object v1, v2, v0

    const/16 v0, 0xdc

    const-string/jumbo v1, "tn"

    aput-object v1, v2, v0

    const/16 v0, 0xdd

    const-string/jumbo v1, "to"

    aput-object v1, v2, v0

    const/16 v0, 0xde

    const-string/jumbo v1, "tr"

    aput-object v1, v2, v0

    const/16 v0, 0xdf

    const-string/jumbo v1, "tt"

    aput-object v1, v2, v0

    const/16 v0, 0xe0

    const-string/jumbo v1, "tv"

    aput-object v1, v2, v0

    const/16 v0, 0xe1

    const-string/jumbo v1, "tw"

    aput-object v1, v2, v0

    const/16 v0, 0xe2

    const-string/jumbo v1, "tz"

    aput-object v1, v2, v0

    const/16 v0, 0xe3

    const-string/jumbo v1, "ua"

    aput-object v1, v2, v0

    const/16 v0, 0xe4

    const-string/jumbo v1, "ug"

    aput-object v1, v2, v0

    const/16 v0, 0xe5

    const-string/jumbo v1, "uk"

    aput-object v1, v2, v0

    const/16 v0, 0xe6

    const-string/jumbo v1, "us"

    aput-object v1, v2, v0

    const/16 v0, 0xe7

    const-string/jumbo v1, "uy"

    aput-object v1, v2, v0

    const/16 v0, 0xe8

    const-string/jumbo v1, "uz"

    aput-object v1, v2, v0

    const/16 v0, 0xe9

    const-string/jumbo v1, "va"

    aput-object v1, v2, v0

    const/16 v0, 0xea

    const-string/jumbo v1, "vc"

    aput-object v1, v2, v0

    const/16 v0, 0xeb

    const-string/jumbo v1, "ve"

    aput-object v1, v2, v0

    const/16 v0, 0xec

    const-string/jumbo v1, "vg"

    aput-object v1, v2, v0

    const/16 v0, 0xed

    const-string/jumbo v1, "vi"

    aput-object v1, v2, v0

    const/16 v0, 0xee

    const-string/jumbo v1, "vn"

    aput-object v1, v2, v0

    const/16 v0, 0xef

    const-string/jumbo v1, "vu"

    aput-object v1, v2, v0

    const/16 v0, 0xf0

    const-string/jumbo v1, "wf"

    aput-object v1, v2, v0

    const/16 v0, 0xf1

    const-string/jumbo v1, "ws"

    aput-object v1, v2, v0

    const/16 v0, 0xf2

    const-string/jumbo v1, "xn--3e0b707e"

    aput-object v1, v2, v0

    const/16 v0, 0xf3

    const-string/jumbo v1, "xn--45brj9c"

    aput-object v1, v2, v0

    const/16 v0, 0xf4

    const-string/jumbo v1, "xn--54b7fta0cc"

    aput-object v1, v2, v0

    const/16 v0, 0xf5

    const-string/jumbo v1, "xn--80ao21a"

    aput-object v1, v2, v0

    const/16 v0, 0xf6

    const-string/jumbo v1, "xn--90a3ac"

    aput-object v1, v2, v0

    const/16 v0, 0xf7

    const-string/jumbo v1, "xn--90ais"

    aput-object v1, v2, v0

    const/16 v0, 0xf8

    const-string/jumbo v1, "xn--clchc0ea0b2g2a9gcd"

    aput-object v1, v2, v0

    const/16 v0, 0xf9

    const-string/jumbo v1, "xn--d1alf"

    aput-object v1, v2, v0

    const/16 v0, 0xfa

    const-string/jumbo v1, "xn--e1a4c"

    aput-object v1, v2, v0

    const/16 v0, 0xfb

    const-string/jumbo v1, "xn--fiqs8s"

    aput-object v1, v2, v0

    const/16 v0, 0xfc

    const-string/jumbo v1, "xn--fiqz9s"

    aput-object v1, v2, v0

    const/16 v0, 0xfd

    const-string/jumbo v1, "xn--fpcrj9c3d"

    aput-object v1, v2, v0

    const/16 v0, 0xfe

    const-string/jumbo v1, "xn--fzc2c9e2c"

    aput-object v1, v2, v0

    const/16 v0, 0xff

    const-string/jumbo v1, "xn--gecrj9c"

    aput-object v1, v2, v0

    const/16 v0, 0x100

    const-string/jumbo v1, "xn--h2brj9c"

    aput-object v1, v2, v0

    const/16 v0, 0x101

    const-string/jumbo v1, "xn--j1amh"

    aput-object v1, v2, v0

    const/16 v0, 0x102

    const-string/jumbo v1, "xn--j6w193g"

    aput-object v1, v2, v0

    const/16 v0, 0x103

    const-string/jumbo v1, "xn--kprw13d"

    aput-object v1, v2, v0

    const/16 v0, 0x104

    const-string/jumbo v1, "xn--kpry57d"

    aput-object v1, v2, v0

    const/16 v0, 0x105

    const-string/jumbo v1, "xn--l1acc"

    aput-object v1, v2, v0

    const/16 v0, 0x106

    const-string/jumbo v1, "xn--lgbbat1ad8j"

    aput-object v1, v2, v0

    const/16 v0, 0x107

    const-string/jumbo v1, "xn--mgb9awbf"

    aput-object v1, v2, v0

    const/16 v0, 0x108

    const-string/jumbo v1, "xn--mgba3a4f16a"

    aput-object v1, v2, v0

    const/16 v0, 0x109

    const-string/jumbo v1, "xn--mgbaam7a8h"

    aput-object v1, v2, v0

    const/16 v0, 0x10a

    const-string/jumbo v1, "xn--mgbayh7gpa"

    aput-object v1, v2, v0

    const/16 v0, 0x10b

    const-string/jumbo v1, "xn--mgbbh1a71e"

    aput-object v1, v2, v0

    const/16 v0, 0x10c

    const-string/jumbo v1, "xn--mgbc0a9azcg"

    aput-object v1, v2, v0

    const/16 v0, 0x10d

    const-string/jumbo v1, "xn--mgberp4a5d4ar"

    aput-object v1, v2, v0

    const/16 v0, 0x10e

    const-string/jumbo v1, "xn--mgbpl2fh"

    aput-object v1, v2, v0

    const/16 v0, 0x10f

    const-string/jumbo v1, "xn--mgbtx2b"

    aput-object v1, v2, v0

    const/16 v0, 0x110

    const-string/jumbo v1, "xn--mgbx4cd0ab"

    aput-object v1, v2, v0

    const/16 v0, 0x111

    const-string/jumbo v1, "xn--mix891f"

    aput-object v1, v2, v0

    const/16 v0, 0x112

    const-string/jumbo v1, "xn--node"

    aput-object v1, v2, v0

    const/16 v0, 0x113

    const-string/jumbo v1, "xn--o3cw4h"

    aput-object v1, v2, v0

    const/16 v0, 0x114

    const-string/jumbo v1, "xn--ogbpf8fl"

    aput-object v1, v2, v0

    const/16 v0, 0x115

    const-string/jumbo v1, "xn--p1ai"

    aput-object v1, v2, v0

    const/16 v0, 0x116

    const-string/jumbo v1, "xn--pgbs0dh"

    aput-object v1, v2, v0

    const/16 v0, 0x117

    const-string/jumbo v1, "xn--qxam"

    aput-object v1, v2, v0

    const/16 v0, 0x118

    const-string/jumbo v1, "xn--s9brj9c"

    aput-object v1, v2, v0

    const/16 v0, 0x119

    const-string/jumbo v1, "xn--wgbh1c"

    aput-object v1, v2, v0

    const/16 v0, 0x11a

    const-string/jumbo v1, "xn--wgbl6a"

    aput-object v1, v2, v0

    const/16 v0, 0x11b

    const-string/jumbo v1, "xn--xkc2al3hye2a"

    aput-object v1, v2, v0

    const/16 v0, 0x11c

    const-string/jumbo v1, "xn--xkc2dl3a5ee0h"

    aput-object v1, v2, v0

    const/16 v0, 0x11d

    const-string/jumbo v1, "xn--y9a3aq"

    aput-object v1, v2, v0

    const/16 v0, 0x11e

    const-string/jumbo v1, "xn--yfro4i67o"

    aput-object v1, v2, v0

    const/16 v0, 0x11f

    const-string/jumbo v1, "xn--ygbi2ammx"

    aput-object v1, v2, v0

    const/16 v0, 0x120

    const-string/jumbo v1, "ye"

    aput-object v1, v2, v0

    const/16 v0, 0x121

    const-string/jumbo v1, "yt"

    aput-object v1, v2, v0

    const/16 v0, 0x122

    const-string/jumbo v1, "za"

    aput-object v1, v2, v0

    const/16 v0, 0x123

    const-string/jumbo v1, "zm"

    aput-object v1, v2, v0

    const/16 v0, 0x124

    const-string/jumbo v1, "zw"

    aput-object v1, v2, v0

    sput-object v2, Lcom/uc/base/net/util/UrlParser;->COUNTRY_CODE_TLDS:[Ljava/lang/String;

    const-string v0, "localdomain"

    const-string v1, "localhost"

    .line 1994
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/base/net/util/UrlParser;->LOCAL_TLDS:[Ljava/lang/String;

    .line 2005
    sget-object v0, Lcom/uc/base/net/util/UrlParser;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    sput-object v0, Lcom/uc/base/net/util/UrlParser;->countryCodeTLDsPlus:[Ljava/lang/String;

    .line 2008
    sput-object v0, Lcom/uc/base/net/util/UrlParser;->genericTLDsPlus:[Ljava/lang/String;

    .line 2011
    sput-object v0, Lcom/uc/base/net/util/UrlParser;->countryCodeTLDsMinus:[Ljava/lang/String;

    .line 2014
    sput-object v0, Lcom/uc/base/net/util/UrlParser;->genericTLDsMinus:[Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "Bad port"

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_d

    const/16 v1, 0x3002

    const/16 v2, 0x2e

    .line 115
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\.{2,}"

    const-string v2, "\\."

    .line 116
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    .line 118
    iput-object v1, p0, Lcom/uc/base/net/util/UrlParser;->mScheme:Ljava/lang/String;

    .line 119
    iput-object v1, p0, Lcom/uc/base/net/util/UrlParser;->mHost:Ljava/lang/String;

    const/4 v2, -0x1

    .line 120
    iput v2, p0, Lcom/uc/base/net/util/UrlParser;->mPort:I

    const-string v3, "/"

    .line 121
    iput-object v3, p0, Lcom/uc/base/net/util/UrlParser;->mPath:Ljava/lang/String;

    .line 122
    iput-object v1, p0, Lcom/uc/base/net/util/UrlParser;->mAuthInfo:Ljava/lang/String;

    .line 124
    invoke-static {p1}, Lcom/uc/base/net/util/UrlParser;->isSpecialScheme(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 125
    iput-boolean v5, p0, Lcom/uc/base/net/util/UrlParser;->mIsSpecialScheme:Z

    .line 126
    iput-object p1, p0, Lcom/uc/base/net/util/UrlParser;->mOriginalUrl:Ljava/lang/String;

    .line 129
    :cond_0
    sget-object v4, Lcom/uc/base/net/util/UrlParser;->URL:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 132
    invoke-virtual {p1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 134
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/uc/base/net/util/UrlParser;->mScheme:Ljava/lang/String;

    :cond_1
    const/4 v4, 0x2

    .line 136
    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 138
    iput-object v4, p0, Lcom/uc/base/net/util/UrlParser;->mAuthInfo:Ljava/lang/String;

    :cond_2
    const/4 v4, 0x3

    .line 140
    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 142
    iput-object v4, p0, Lcom/uc/base/net/util/UrlParser;->mHost:Ljava/lang/String;

    :cond_3
    const/4 v4, 0x4

    .line 144
    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 145
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 148
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/uc/base/net/util/UrlParser;->mPort:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    iget v4, p0, Lcom/uc/base/net/util/UrlParser;->mPort:I

    if-ltz v4, :cond_4

    goto :goto_0

    .line 153
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    const/4 v0, 0x5

    .line 156
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 157
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2f

    if-ne v0, v4, :cond_6

    .line 162
    iput-object p1, p0, Lcom/uc/base/net/util/UrlParser;->mPath:Ljava/lang/String;

    goto :goto_1

    .line 164
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uc/base/net/util/UrlParser;->mPath:Ljava/lang/String;

    .line 176
    :cond_7
    :goto_1
    iget p1, p0, Lcom/uc/base/net/util/UrlParser;->mPort:I

    const-string v0, "https"

    const/16 v3, 0x1bb

    if-ne p1, v3, :cond_8

    iget-object p1, p0, Lcom/uc/base/net/util/UrlParser;->mScheme:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 177
    iput-object v0, p0, Lcom/uc/base/net/util/UrlParser;->mScheme:Ljava/lang/String;

    goto :goto_2

    .line 178
    :cond_8
    iget p1, p0, Lcom/uc/base/net/util/UrlParser;->mPort:I

    if-ne p1, v2, :cond_a

    .line 179
    iget-object p1, p0, Lcom/uc/base/net/util/UrlParser;->mScheme:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 180
    iput v3, p0, Lcom/uc/base/net/util/UrlParser;->mPort:I

    goto :goto_2

    :cond_9
    const/16 p1, 0x50

    .line 182
    iput p1, p0, Lcom/uc/base/net/util/UrlParser;->mPort:I

    .line 185
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/uc/base/net/util/UrlParser;->mScheme:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "http"

    .line 186
    iput-object p1, p0, Lcom/uc/base/net/util/UrlParser;->mScheme:Ljava/lang/String;

    :cond_b
    return-void

    .line 170
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad address"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_d
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private static arrayContains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 2090
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static chompLeadingDot(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "."

    .line 425
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 426
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getTld(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "\\."

    .line 360
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 361
    array-length v1, p0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 362
    array-length v0, p0

    sub-int/2addr v0, v2

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    return-object v0
.end method

.method private static isOnlyASCII(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2074
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2075
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7f

    if-le v3, v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static isSpecialScheme(Ljava/lang/String;)Z
    .locals 1

    .line 243
    invoke-static {p0}, Lcom/uc/base/net/util/UrlParser;->isSpecialSchemeWithoutSlash(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/uc/base/net/util/UrlParser;->isSpecialSchemeWithSlash(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isSpecialSchemeWithSlash(Ljava/lang/String;)Z
    .locals 1

    .line 248
    :try_start_0
    sget-object v0, Lcom/uc/base/net/util/UrlParser;->SPECIAL_SCHEME:Ljava/util/regex/Pattern;

    .line 249
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 250
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSpecialSchemeWithoutSlash(Ljava/lang/String;)Z
    .locals 1

    .line 260
    :try_start_0
    sget-object v0, Lcom/uc/base/net/util/UrlParser;->SPECIAL_SCHEME_WITHOUT_SLASH:Ljava/util/regex/Pattern;

    .line 261
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 262
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isValidCountryCodeTld(Ljava/lang/String;)Z
    .locals 1

    .line 419
    invoke-static {p0}, Lcom/uc/base/net/util/UrlParser;->unicodeToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/base/net/util/UrlParser;->chompLeadingDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 420
    sget-object v0, Lcom/uc/base/net/util/UrlParser;->COUNTRY_CODE_TLDS:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/uc/base/net/util/UrlParser;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/uc/base/net/util/UrlParser;->countryCodeTLDsPlus:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/uc/base/net/util/UrlParser;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/uc/base/net/util/UrlParser;->countryCodeTLDsMinus:[Ljava/lang/String;

    .line 421
    invoke-static {v0, p0}, Lcom/uc/base/net/util/UrlParser;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidDomain(Ljava/lang/String;)Z
    .locals 1

    .line 229
    :try_start_0
    sget-object v0, Lcom/uc/base/net/util/UrlParser;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    .line 230
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 231
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 237
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isValidGenericTld(Ljava/lang/String;)Z
    .locals 1

    .line 406
    invoke-static {p0}, Lcom/uc/base/net/util/UrlParser;->unicodeToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/base/net/util/UrlParser;->chompLeadingDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 407
    sget-object v0, Lcom/uc/base/net/util/UrlParser;->GENERIC_TLDS:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/uc/base/net/util/UrlParser;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/uc/base/net/util/UrlParser;->genericTLDsPlus:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/uc/base/net/util/UrlParser;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/uc/base/net/util/UrlParser;->genericTLDsMinus:[Ljava/lang/String;

    .line 408
    invoke-static {v0, p0}, Lcom/uc/base/net/util/UrlParser;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidIP(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 223
    invoke-static {}, Lcom/uc/base/net/util/InetAddressValidator;->getInstance()Lcom/uc/base/net/util/InetAddressValidator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uc/base/net/util/InetAddressValidator;->isValid(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isValidInfrastructureTld(Ljava/lang/String;)Z
    .locals 1

    .line 394
    invoke-static {p0}, Lcom/uc/base/net/util/UrlParser;->unicodeToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/base/net/util/UrlParser;->chompLeadingDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 395
    sget-object v0, Lcom/uc/base/net/util/UrlParser;->INFRASTRUCTURE_TLDS:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/uc/base/net/util/UrlParser;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isValidTld(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 379
    :cond_0
    invoke-static {p0}, Lcom/uc/base/net/util/UrlParser;->unicodeToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 381
    invoke-static {p0}, Lcom/uc/base/net/util/UrlParser;->isValidInfrastructureTld(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 382
    invoke-static {p0}, Lcom/uc/base/net/util/UrlParser;->isValidGenericTld(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 383
    invoke-static {p0}, Lcom/uc/base/net/util/UrlParser;->isValidCountryCodeTld(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private static merge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x1bb

    if-eq p3, v0, :cond_0

    const-string v0, "https"

    .line 292
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x50

    if-eq p3, v0, :cond_2

    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_2
    const-string p3, ""

    .line 295
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 298
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "://"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static unicodeToASCII(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2026
    invoke-static {p0}, Lcom/uc/base/net/util/UrlParser;->isOnlyASCII(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2030
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/uc/base/net/util/Punycode;->getPunyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2031
    invoke-static {}, Lcom/uc/base/net/util/UrlParser$IDNBUGHOLDER;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 2034
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    return-object p0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 2043
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_3

    const/16 v2, 0x3002

    if-eq v1, v2, :cond_3

    const v2, 0xff0e

    if-eq v1, v2, :cond_3

    const v2, 0xff61

    if-eq v1, v2, :cond_3

    return-object v0

    .line 2049
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method


# virtual methods
.method public getAuthInfo()Ljava/lang/String;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/uc/base/net/util/UrlParser;->mAuthInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/uc/base/net/util/UrlParser;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/uc/base/net/util/UrlParser;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 332
    iget v0, p0, Lcom/uc/base/net/util/UrlParser;->mPort:I

    return v0
.end method

.method public getPunyCode()Ljava/lang/String;
    .locals 5

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/uc/base/net/util/UrlParser;->mHost:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/base/net/util/Punycode;->getPunyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 283
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 284
    iget-object v0, p0, Lcom/uc/base/net/util/UrlParser;->mHost:Ljava/lang/String;

    .line 286
    :goto_0
    iget-object v1, p0, Lcom/uc/base/net/util/UrlParser;->mScheme:Ljava/lang/String;

    iget-object v2, p0, Lcom/uc/base/net/util/UrlParser;->mAuthInfo:Ljava/lang/String;

    iget v3, p0, Lcom/uc/base/net/util/UrlParser;->mPort:I

    iget-object v4, p0, Lcom/uc/base/net/util/UrlParser;->mPath:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/uc/base/net/util/UrlParser;->merge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/uc/base/net/util/UrlParser;->mScheme:Ljava/lang/String;

    return-object v0
.end method

.method public isDomainWellFormed()Z
    .locals 4

    .line 191
    iget-boolean v0, p0, Lcom/uc/base/net/util/UrlParser;->mIsSpecialScheme:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/uc/base/net/util/UrlParser;->mHost:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/uc/base/net/util/UrlParser;->mHost:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/uc/base/net/util/UrlParser;->mHost:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/base/net/util/UrlParser;->isValidDomain(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/uc/base/net/util/UrlParser;->mHost:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/base/net/util/UrlParser;->isValidIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    :goto_0
    return v2
.end method

.method public isDomainWellFormedByLTD()Z
    .locals 4

    .line 207
    iget-boolean v0, p0, Lcom/uc/base/net/util/UrlParser;->mIsSpecialScheme:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/uc/base/net/util/UrlParser;->mHost:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/uc/base/net/util/UrlParser;->mHost:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/uc/base/net/util/UrlParser;->isValidTld()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/uc/base/net/util/UrlParser;->mHost:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/base/net/util/UrlParser;->isValidIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    :goto_0
    return v2
.end method

.method public isPunyDomain()Z
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/uc/base/net/util/UrlParser;->mHost:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/base/net/util/Util;->containsChinese(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/base/net/util/UrlParser;->mHost:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/base/net/util/UrlParser;->isValidDomain(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isValidTld()Z
    .locals 1

    .line 353
    invoke-virtual {p0}, Lcom/uc/base/net/util/UrlParser;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/base/net/util/UrlParser;->getTld(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/base/net/util/UrlParser;->isValidTld(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/uc/base/net/util/UrlParser;->mAuthInfo:Ljava/lang/String;

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/uc/base/net/util/UrlParser;->mHost:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/uc/base/net/util/UrlParser;->mPath:Ljava/lang/String;

    return-void
.end method

.method public setPort(I)V
    .locals 0

    .line 328
    iput p1, p0, Lcom/uc/base/net/util/UrlParser;->mPort:I

    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/uc/base/net/util/UrlParser;->mScheme:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 304
    iget-boolean v0, p0, Lcom/uc/base/net/util/UrlParser;->mIsSpecialScheme:Z

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/uc/base/net/util/UrlParser;->mOriginalUrl:Ljava/lang/String;

    return-object v0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/uc/base/net/util/UrlParser;->mScheme:Ljava/lang/String;

    iget-object v1, p0, Lcom/uc/base/net/util/UrlParser;->mAuthInfo:Ljava/lang/String;

    iget-object v2, p0, Lcom/uc/base/net/util/UrlParser;->mHost:Ljava/lang/String;

    iget v3, p0, Lcom/uc/base/net/util/UrlParser;->mPort:I

    iget-object v4, p0, Lcom/uc/base/net/util/UrlParser;->mPath:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/uc/base/net/util/UrlParser;->merge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
