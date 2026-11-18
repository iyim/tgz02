.class public Lcom/taobao/tao/image/ImageInitBusinss;
.super Ljava/lang/Object;
.source "ImageInitBusinss.java"


# static fields
.field public static final ALI_CDN_DOMAIN:Ljava/lang/String; = "aliCdnDomain"

.field public static final CDN_10000_HEIGHT:Ljava/lang/String; = "cdn10000Height"

.field public static final CDN_10000_WIDTH:Ljava/lang/String; = "cdn10000Width"

.field public static final CDN_IMAGE_SIZE:Ljava/lang/String; = "cdnImageSizes"

.field public static final CONVERT_EXCLUDE_PATH:Ljava/lang/String; = "domainConvertExcludePath"

.field public static final DOMAIN_DEST:Ljava/lang/String; = "domainDest"

.field public static final DOMAIN_SWITCH:Ljava/lang/String; = "domainSwitch"

.field public static final EXACT_EXCLUDE_DOMAIN:Ljava/lang/String; = "exactExcludeDomain"

.field public static final FUZZY_EXCLUDE_PATH:Ljava/lang/String; = "fuzzyExcludePath"

.field public static final GLOBAL_SWITCH:Ljava/lang/String; = "globalSwitch"

.field public static final HEIF_BUSINESS_WHITE_LIST:Ljava/lang/String; = "heifBizWhiteList"

.field public static final HEIF_IMAGE_DOMAIN:Ljava/lang/String; = "heifImageDomain"

.field public static final IMAGE_CONFIG:Ljava/lang/String; = "android_image_strategy_config"

.field public static final IMAGE_STRATEGY:Ljava/lang/String; = "image_strategy"

.field public static final LEVEL_MODEL_SIZES:Ljava/lang/String; = "levelModelImageSizes"

.field public static final LEVEL_MODEL_XZSIZES:Ljava/lang/String; = "levelModelXZImageSizes"

.field public static final LEVEL_RATIO:Ljava/lang/String; = "levelRatio"

.field public static final MODULES:Ljava/lang/String; = "modules"

.field public static final OSS_CDN_DOMAIN:Ljava/lang/String; = "ossCdnDomain"

.field public static final OSS_FUZZY_EXCLUDE:Ljava/lang/String; = "ossFuzzyExclude"

.field public static final STRICT_ALI_CDN_DOMAIN:Ljava/lang/String; = "strictCDNDomainWL"

.field public static final STRICT_CONVERT_EXCLUDE_PATH:Ljava/lang/String; = "strictDomainConvertBL"

.field public static final STRICT_EXACT_EXCLUDE_DOMAIN:Ljava/lang/String; = "strictExactDomainBL"

.field public static final XZ_CDN_IMAGE_SIZE:Ljava/lang/String; = "xzcdnImageSizes"

.field private static defaultConfig:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/taobao/tao/image/ImageInitBusinss;


# instance fields
.field private mImageExtendedSupport:Lcom/taobao/tao/image/IImageExtendedSupport;

.field private mStrategySupport:Lcom/taobao/tao/image/IImageStrategySupport;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/tao/image/ImageInitBusinss;->defaultConfig:Ljava/util/HashMap;

    .line 51
    sget-object v0, Lcom/taobao/tao/image/ImageInitBusinss;->defaultConfig:Ljava/util/HashMap;

    const-string v1, "1"

    const-string v2, "globalSwitch"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/taobao/tao/image/ImageInitBusinss;->defaultConfig:Ljava/util/HashMap;

    const-string v2, "domainSwitch"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/taobao/tao/image/ImageInitBusinss;->defaultConfig:Ljava/util/HashMap;

    const-string v1, "modules"

    const-string v2, "default,search,detail,shop,weitao,weapp,weappsharpen,bala,home,tbchannel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/taobao/tao/image/ImageInitBusinss;->defaultConfig:Ljava/util/HashMap;

    const-string v1, "default"

    const-string v2, "{ \"highNetQ\": \"q90\", \"lowNetQ\": \"q75\", \"highNetSharpen\": \"\", \"lowNetSharpen\": \"\", \"highNetScale\": \"1\", \"lowNetScale\": \"1\", \"useWebP\": 1 }"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/taobao/tao/image/ImageInitBusinss;->defaultConfig:Ljava/util/HashMap;

    const-string v1, "{ \"highNetQ\": \"q90\", \"lowNetQ\": \"q50\", \"highNetSharpen\": \"\", \"lowNetSharpen\": \"s150\", \"highNetScale\": \"1\", \"lowNetScale\": \"1\", \"useWebP\": 1 }"

    const-string v2, "search"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/taobao/tao/image/ImageInitBusinss;->defaultConfig:Ljava/util/HashMap;

    const-string v2, "detail"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/taobao/tao/image/ImageInitBusinss;->defaultConfig:Ljava/util/HashMap;

    const-string v2, "{ \"highNetQ\": \"q75\", \"lowNetQ\": \"q50\", \"highNetSharpen\": \"s150\", \"lowNetSharpen\": \"s150\", \"highNetScale\": \"1\", \"lowNetScale\": \"1\", \"useWebP\": 1 }"

    const-string v3, "shop"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/taobao/tao/image/ImageInitBusinss;->defaultConfig:Ljava/util/HashMap;

    const-string v3, "weitao"

    const-string v4, "{ \"highNetQ\": \"q90\", \"lowNetQ\": \"q75\", \"highNetSharpen\": \"s110\", \"lowNetSharpen\": \"s110\", \"highNetScale\": \"1\", \"lowNetScale\": \"1\", \"useWebP\": 1 }"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/taobao/tao/image/ImageInitBusinss;->defaultConfig:Ljava/util/HashMap;

    const-string v3, "{ \"highNetQ\": \"q90\", \"lowNetQ\": \"q50\", \"highNetSharpen\": \"\", \"lowNetSharpen\": \"\", \"highNetScale\": \"1\", \"lowNetScale\": \"1\", \"useWebP\": 1 }"

    const-string v4, "weapp"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/taobao/tao/image/ImageInitBusinss;->defaultConfig:Ljava/util/HashMap;

    const-string v4, "weappsharpen"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/taobao/tao/image/ImageInitBusinss;->defaultConfig:Ljava/util/HashMap;

    const-string v2, "bala"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/taobao/tao/image/ImageInitBusinss;->defaultConfig:Ljava/util/HashMap;

    const-string v1, "home"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/taobao/tao/image/ImageInitBusinss;->defaultConfig:Ljava/util/HashMap;

    const-string v1, "tbchannel"

    const-string v2, "{ \"highNetQ\": \"q50\", \"lowNetQ\": \"q30\", \"highNetSharpen\": \"s150\", \"lowNetSharpen\": \"s150\", \"highNetScale\": \"1\", \"lowNetScale\": \"1\", \"useWebP\": 1 }"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 89
    sput-object v0, Lcom/taobao/tao/image/ImageInitBusinss;->sInstance:Lcom/taobao/tao/image/ImageInitBusinss;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/taobao/tao/image/IImageStrategySupport;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p2, p0, Lcom/taobao/tao/image/ImageInitBusinss;->mStrategySupport:Lcom/taobao/tao/image/IImageStrategySupport;

    .line 109
    invoke-static {}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy;->getInstance()Lcom/taobao/tao/util/TaobaoImageUrlStrategy;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy;->initDip(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 110
    new-array p1, p1, [Ljava/lang/Object;

    iget-object p2, p0, Lcom/taobao/tao/image/ImageInitBusinss;->mStrategySupport:Lcom/taobao/tao/image/IImageStrategySupport;

    invoke-interface {p2}, Lcom/taobao/tao/image/IImageStrategySupport;->isSupportWebP()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "STRATEGY.ALL"

    const-string v0, "construct ImageInitBusinss with IImageStrategySupport(webp support:%b)"

    invoke-static {p2, v0, p1}, Lcom/taobao/tao/image/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private ary2ServiceImageSwitchArr([Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;",
            ">;"
        }
    .end annotation

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 209
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 210
    aget-object v2, p1, v1

    .line 211
    iget-object v3, p0, Lcom/taobao/tao/image/ImageInitBusinss;->mStrategySupport:Lcom/taobao/tao/image/IImageStrategySupport;

    sget-object v4, Lcom/taobao/tao/image/ImageInitBusinss;->defaultConfig:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "android_image_strategy_config"

    invoke-interface {v3, v5, v2, v4}, Lcom/taobao/tao/image/IImageStrategySupport;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    .line 217
    :try_start_0
    invoke-static {v3}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 219
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-nez v4, :cond_1

    goto :goto_2

    .line 225
    :cond_1
    new-instance v3, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;

    invoke-direct {v3}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;-><init>()V

    .line 226
    invoke-virtual {v3, v2}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->setAreaName(Ljava/lang/String;)V

    const-string v5, "useWebP"

    .line 227
    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/taobao/tao/image/ImageInitBusinss;->str2Boolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->setUseWebp(Z)V

    const-string v5, "highNetQ"

    .line 229
    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->setHighNetQ(Ljava/lang/String;)V

    const-string v5, "lowNetQ"

    .line 230
    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->setLowNetQ(Ljava/lang/String;)V

    const-string v5, "highNetSharpen"

    .line 232
    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->setHighNetSharpen(Ljava/lang/String;)V

    const-string v5, "lowNetSharpen"

    .line 233
    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->setLowNetSharpen(Ljava/lang/String;)V

    const-string v5, "highNetScale"

    .line 235
    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/taobao/tao/image/ImageInitBusinss;->str2Double(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->setHighNetScale(D)V

    const-string v5, "lowNetScale"

    .line 236
    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/taobao/tao/image/ImageInitBusinss;->str2Double(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->setLowNetScale(D)V

    const-string v5, "useCdnSizes"

    .line 238
    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/taobao/tao/image/ImageInitBusinss;->str2Boolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->useCdnSizes(Z)V

    .line 240
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-object v0
.end method

.method public static getInstance()Lcom/taobao/tao/image/ImageInitBusinss;
    .locals 1

    .line 92
    sget-object v0, Lcom/taobao/tao/image/ImageInitBusinss;->sInstance:Lcom/taobao/tao/image/ImageInitBusinss;

    return-object v0
.end method

.method public static newInstance(Landroid/app/Application;Lcom/taobao/tao/image/IImageStrategySupport;)Lcom/taobao/tao/image/ImageInitBusinss;
    .locals 1

    .line 97
    sget-object v0, Lcom/taobao/tao/image/ImageInitBusinss;->sInstance:Lcom/taobao/tao/image/ImageInitBusinss;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/taobao/tao/image/ImageInitBusinss;

    invoke-direct {v0, p0, p1}, Lcom/taobao/tao/image/ImageInitBusinss;-><init>(Landroid/app/Application;Lcom/taobao/tao/image/IImageStrategySupport;)V

    sput-object v0, Lcom/taobao/tao/image/ImageInitBusinss;->sInstance:Lcom/taobao/tao/image/ImageInitBusinss;

    .line 100
    :cond_0
    sget-object p0, Lcom/taobao/tao/image/ImageInitBusinss;->sInstance:Lcom/taobao/tao/image/ImageInitBusinss;

    return-object p0
.end method

.method public static setMinLogLevel(I)V
    .locals 0

    .line 104
    invoke-static {p0}, Lcom/taobao/tao/image/Logger;->setMinLogLevel(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private str2Boolean(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "true"

    .line 266
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private str2Double(Ljava/lang/String;)D
    .locals 2

    .line 283
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method private str2Number(Ljava/lang/String;)I
    .locals 0

    .line 275
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method private string2IntArray(Ljava/lang/String;)[I
    .locals 3

    .line 246
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, ","

    .line 249
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 250
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 251
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 252
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lcom/taobao/tao/image/ImageInitBusinss;->str2Number(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private string2StrArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 259
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, ","

    .line 262
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getImageExtendedSupport()Lcom/taobao/tao/image/IImageExtendedSupport;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/taobao/tao/image/ImageInitBusinss;->mImageExtendedSupport:Lcom/taobao/tao/image/IImageExtendedSupport;

    return-object v0
.end method

.method public getStrategySupport()Lcom/taobao/tao/image/IImageStrategySupport;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/taobao/tao/image/ImageInitBusinss;->mStrategySupport:Lcom/taobao/tao/image/IImageStrategySupport;

    return-object v0
.end method

.method public declared-synchronized notifyConfigsChange()V
    .locals 46
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v0, v1, Lcom/taobao/tao/image/ImageInitBusinss;->mStrategySupport:Lcom/taobao/tao/image/IImageStrategySupport;

    const-string v2, "android_image_strategy_config"

    const-string v3, "cdnImageSizes"

    const-string v4, ""

    invoke-interface {v0, v2, v3, v4}, Lcom/taobao/tao/image/IImageStrategySupport;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    iget-object v2, v1, Lcom/taobao/tao/image/ImageInitBusinss;->mStrategySupport:Lcom/taobao/tao/image/IImageStrategySupport;

    const-string v3, "android_image_strategy_config"

    const-string v4, "cdn10000Width"

    const-string v5, ""

    invoke-interface {v2, v3, v4, v5}, Lcom/taobao/tao/image/IImageStrategySupport;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    iget-object v3, v1, Lcom/taobao/tao/image/ImageInitBusinss;->mStrategySupport:Lcom/taobao/tao/image/IImageStrategySupport;

    const-string v4, "android_image_strategy_config"

    const-string v5, "cdn10000Height"

    const-string v6, ""

    invoke-interface {v3, v4, v5, v6}, Lcom/taobao/tao/image/IImageStrategySupport;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    iget-object v4, v1, Lcom/taobao/tao/image/ImageInitBusinss;->mStrategySupport:Lcom/taobao/tao/image/IImageStrategySupport;

    const-string v5, "android_image_strategy_config"

    const-string v6, "xzcdnImageSizes"

    const-string v7, ""

    invoke-interface {v4, v5, v6, v7}, Lcom/taobao/tao/image/IImageStrategySupport;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 134
    iget-object v5, v1, Lcom/taobao/tao/image/ImageInitBusinss;->mStrategySupport:Lcom/taobao/tao/image/IImageStrategySupport;

    const-string v6, "android_image_strategy_config"

    const-string v7, "levelModelImageSizes"

    const-string v8, ""

    invoke-interface {v5, v6, v7, v8}, Lcom/taobao/tao/image/IImageStrategySupport;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 135
    iget-object v6, v1, Lcom/taobao/tao/image/ImageInitBusinss;->mStrategySupport:Lcom/taobao/tao/image/IImageStrategySupport;

    const-string v7, "android_image_strategy_config"

    const-string v8, "levelModelXZImageSizes"

    const-string v9, ""

    invoke-interface {v6, v7, v8, v9}, Lcom/taobao/tao/image/IImageStrategySupport;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 136
    iget-object v7, v1, Lcom/taobao/tao/image/ImageInitBusinss;->mStrategySupport:Lcom/taobao/tao/image/IImageStrategySupport;

    const-string v8, "android_image_strategy_config"

    const-string v9, "domainDest"

    const-string v10, ""

    invoke-interface {v7, v8, v9, v10}, Lcom/taobao/tao/image/IImageStrategySupport;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 137
    iget-object v8, v1, Lcom/taobao/tao/image/ImageInitBusinss;->mStrategySupport:Lcom/taobao/tao/image/IImageStrategySupport;

    const-string v9, "android_image_strategy_config"

    const-string v10, "aliCdnDomain"

    const-string v11, ""

    invoke-interface {v8, v9, v10, v11}, Lcom/taobao/tao/image/IImageStrategySupport;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 138
    iget-object v9, v1, Lcom/taobao/tao/image/ImageInitBusinss;->mStrategySupport:Lcom/taobao/tao/image/IImageStrategySupport;

    const-string v10, "android_image_strategy_config"

    const-string v11, "ossCdnDomain"

    const-string v12, ""

    invoke-interface {v9, v10, v11, v12}, Lcom/taobao/tao/image/IImageStrategySupport;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 139
    iget-object v10, v1, Lcom/taobao/tao/image/ImageInitBusinss;->mStrategySupport:Lcom/taobao/tao/image/IImageStrategySupport;

    const-string v11, "android_image_strategy_config"

    const-string v12, "exactExcludeDomain"

    const-string v13, ""

    invoke-interface {v10, v11, v12, v13}, Lcom/taobao/tao/image/IImageStrategySupport;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 140
    iget-object v11, v1, Lcom/taobao/tao/image/ImageInitBusinss;->mStrategySupport:Lcom/taobao/tao/image/IImageStrategySupport;

    const-string v12, "android_image_strategy_config"

    const-string v13, "fuzzyExcludePath"

    const-string v14, ""

    invoke-interface {v11, v12, v13, v14}, Lcom/taobao/tao/image/IImageStrategySupport;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 141
    iget-object v11, v1, Lcom/taobao/tao/image/ImageInitBusinss;->mStrategySupport:Lcom/taobao/tao/image/IImageStrategySupport;

    const-string v12, "android_image_strategy_config"

    const-string v13, "ossFuzzyExclude"

    const-string v14, ""

    invoke-interface {v11, v12, v13, v14}, Lcom/taobao/tao/image/IImageStrategySupport;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 142
    iget-object v11, v1, Lcom/taobao/tao/image/ImageInitBusinss;->mStrategySupport:Lcom/taobao/tao/image/IImageStrategySupport;

    const-string v12, "android_image_strategy_config"

    const-string v13, "domainConvertExcludePath"

    move-object/from16 v16, v14

    const-string v14, ""

    invoke-interface {v11, v12, v13, v14}, Lcom/taobao/tao/image/IImageStrategySupport;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 143
    iget-object v11, v1, Lcom/taobao/tao/image/ImageInitBusinss;->mStrategySupport:Lcom/taobao/tao/image/IImageStrategySupport;

    const-string v12, "android_image_strategy_config"

    const-string v13, "levelRatio"

    move-object/from16 v30, v9

    const-string v9, ""

    invoke-interface {v11, v12, v13, v9}, Lcom/taobao/tao/image/IImageStrategySupport;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 144
    iget-object v11, v1, Lcom/taobao/tao/image/ImageInitBusinss;->mStrategySupport:Lcom/taobao/tao/image/IImageStrategySupport;

    const-string v12, "android_image_strategy_config"

    const-string v13, "domainSwitch"

    move-object/from16 v31, v9

    sget-object v9, Lcom/taobao/tao/image/ImageInitBusinss;->defaultConfig:Ljava/util/HashMap;

    move-object/from16 v32, v7

    const-string v7, "domainSwitch"

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v11, v12, v13, v7}, Lcom/taobao/tao/image/IImageStrategySupport;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 145
    iget-object v9, v1, Lcom/taobao/tao/image/ImageInitBusinss;->mStrategySupport:Lcom/taobao/tao/image/IImageStrategySupport;

    const-string v11, "android_image_strategy_config"

    const-string v12, "globalSwitch"

    sget-object v13, Lcom/taobao/tao/image/ImageInitBusinss;->defaultConfig:Ljava/util/HashMap;

    move-object/from16 v33, v7

    const-string v7, "globalSwitch"

    invoke-virtual {v13, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v9, v11, v12, v7}, Lcom/taobao/tao/image/IImageStrategySupport;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 146
    iget-object v9, v1, Lcom/taobao/tao/image/ImageInitBusinss;->mStrategySupport:Lcom/taobao/tao/image/IImageStrategySupport;

    const-string v11, "android_image_strategy_config"

    const-string v12, "heifImageDomain"

    const-string v13, ""

    invoke-interface {v9, v11, v12, v13}, Lcom/taobao/tao/image/IImageStrategySupport;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 147
    iget-object v11, v1, Lcom/taobao/tao/image/ImageInitBusinss;->mStrategySupport:Lcom/taobao/tao/image/IImageStrategySupport;

    const-string v12, "android_image_strategy_config"

    const-string v13, "heifBizWhiteList"

    move-object/from16 v34, v9

    const-string v9, ""

    invoke-interface {v11, v12, v13, v9}, Lcom/taobao/tao/image/IImageStrategySupport;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 148
    iget-object v11, v1, Lcom/taobao/tao/image/ImageInitBusinss;->mStrategySupport:Lcom/taobao/tao/image/IImageStrategySupport;

    const-string v12, "android_image_strategy_config"

    const-string v13, "modules"

    move-object/from16 v35, v7

    sget-object v7, Lcom/taobao/tao/image/ImageInitBusinss;->defaultConfig:Ljava/util/HashMap;

    move-object/from16 v17, v15

    const-string v15, "modules"

    invoke-virtual {v7, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v11, v12, v13, v7}, Lcom/taobao/tao/image/IImageStrategySupport;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 150
    iget-object v11, v1, Lcom/taobao/tao/image/ImageInitBusinss;->mStrategySupport:Lcom/taobao/tao/image/IImageStrategySupport;

    const-string v12, "android_image_strategy_config"

    const-string v13, "strictCDNDomainWL"

    const-string v15, ""

    invoke-interface {v11, v12, v13, v15}, Lcom/taobao/tao/image/IImageStrategySupport;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 151
    iget-object v11, v1, Lcom/taobao/tao/image/ImageInitBusinss;->mStrategySupport:Lcom/taobao/tao/image/IImageStrategySupport;

    const-string v12, "android_image_strategy_config"

    const-string v13, "strictExactDomainBL"

    move-object/from16 v18, v15

    const-string v15, ""

    invoke-interface {v11, v12, v13, v15}, Lcom/taobao/tao/image/IImageStrategySupport;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 152
    iget-object v11, v1, Lcom/taobao/tao/image/ImageInitBusinss;->mStrategySupport:Lcom/taobao/tao/image/IImageStrategySupport;

    const-string v12, "android_image_strategy_config"

    const-string v13, "strictDomainConvertBL"

    move-object/from16 v19, v15

    const-string v15, ""

    invoke-interface {v11, v12, v13, v15}, Lcom/taobao/tao/image/IImageStrategySupport;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 153
    invoke-direct {v1, v7}, Lcom/taobao/tao/image/ImageInitBusinss;->string2StrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 155
    invoke-static {}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy;->getInstance()Lcom/taobao/tao/util/TaobaoImageUrlStrategy;

    move-result-object v12

    .line 156
    invoke-direct {v1, v0}, Lcom/taobao/tao/image/ImageInitBusinss;->string2IntArray(Ljava/lang/String;)[I

    move-result-object v13

    .line 157
    invoke-direct {v1, v2}, Lcom/taobao/tao/image/ImageInitBusinss;->string2IntArray(Ljava/lang/String;)[I

    move-result-object v20

    .line 158
    invoke-direct {v1, v3}, Lcom/taobao/tao/image/ImageInitBusinss;->string2IntArray(Ljava/lang/String;)[I

    move-result-object v21

    .line 159
    invoke-direct {v1, v4}, Lcom/taobao/tao/image/ImageInitBusinss;->string2IntArray(Ljava/lang/String;)[I

    move-result-object v22

    .line 160
    invoke-direct {v1, v5}, Lcom/taobao/tao/image/ImageInitBusinss;->string2IntArray(Ljava/lang/String;)[I

    move-result-object v23

    .line 161
    invoke-direct {v1, v6}, Lcom/taobao/tao/image/ImageInitBusinss;->string2IntArray(Ljava/lang/String;)[I

    move-result-object v24

    .line 162
    invoke-direct {v1, v11}, Lcom/taobao/tao/image/ImageInitBusinss;->ary2ServiceImageSwitchArr([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v25

    .line 165
    invoke-direct {v1, v9}, Lcom/taobao/tao/image/ImageInitBusinss;->string2IntArray(Ljava/lang/String;)[I

    move-result-object v26

    .line 166
    invoke-direct {v1, v14}, Lcom/taobao/tao/image/ImageInitBusinss;->string2StrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 167
    invoke-direct {v1, v8}, Lcom/taobao/tao/image/ImageInitBusinss;->string2StrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 168
    invoke-direct {v1, v10}, Lcom/taobao/tao/image/ImageInitBusinss;->string2StrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    move-object/from16 v11, v17

    .line 169
    invoke-direct {v1, v11}, Lcom/taobao/tao/image/ImageInitBusinss;->string2StrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v37

    move-object/from16 v38, v7

    move-object/from16 v7, v35

    .line 170
    invoke-direct {v1, v7}, Lcom/taobao/tao/image/ImageInitBusinss;->str2Boolean(Ljava/lang/String;)Z

    move-result v35

    move-object/from16 v39, v10

    move-object/from16 v10, v33

    .line 171
    invoke-direct {v1, v10}, Lcom/taobao/tao/image/ImageInitBusinss;->str2Boolean(Ljava/lang/String;)Z

    move-result v33

    const/16 v29, 0x1

    move-object/from16 v17, v11

    move-object v11, v12

    move-object v12, v13

    move-object/from16 v13, v20

    move-object/from16 v40, v8

    move-object/from16 v41, v14

    move-object/from16 v8, v16

    move-object/from16 v14, v21

    move-object/from16 v43, v7

    move-object/from16 v45, v9

    move-object/from16 v44, v10

    move-object v9, v15

    move-object/from16 v42, v17

    move-object/from16 v7, v18

    move-object/from16 v10, v19

    move-object/from16 v15, v22

    move-object/from16 v16, v23

    move-object/from16 v17, v24

    move-object/from16 v18, v25

    move-object/from16 v19, v32

    move-object/from16 v20, v34

    move-object/from16 v21, v26

    move-object/from16 v22, v27

    move-object/from16 v23, v28

    move-object/from16 v24, v36

    move-object/from16 v25, v37

    move/from16 v26, v35

    move/from16 v27, v33

    move-object/from16 v28, v31

    .line 155
    invoke-virtual/range {v11 .. v29}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy;->initImageUrlStrategy([I[I[I[I[I[ILjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;[I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZLjava/lang/String;Z)V

    .line 174
    invoke-static {}, Lcom/taobao/tao/util/OssImageUrlStrategy;->getInstance()Lcom/taobao/tao/util/OssImageUrlStrategy;

    move-result-object v11

    move-object/from16 v12, v30

    invoke-direct {v1, v12}, Lcom/taobao/tao/image/ImageInitBusinss;->string2StrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v8}, Lcom/taobao/tao/image/ImageInitBusinss;->string2StrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Lcom/taobao/tao/util/OssImageUrlStrategy;->setupConfigs([Ljava/lang/String;[Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy;->getInstance()Lcom/taobao/tao/util/TaobaoImageUrlStrategy;

    move-result-object v11

    invoke-direct {v1, v7}, Lcom/taobao/tao/image/ImageInitBusinss;->string2StrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy;->updateStrictCDNDomainWhiteList([Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy;->getInstance()Lcom/taobao/tao/util/TaobaoImageUrlStrategy;

    move-result-object v11

    invoke-direct {v1, v10}, Lcom/taobao/tao/image/ImageInitBusinss;->string2StrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy;->updateStrictCDNDomainBlackList([Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy;->getInstance()Lcom/taobao/tao/util/TaobaoImageUrlStrategy;

    move-result-object v11

    invoke-direct {v1, v9}, Lcom/taobao/tao/image/ImageInitBusinss;->string2StrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy;->updateStrictConvergenceBlackList([Ljava/lang/String;)V

    const-string v11, "STRATEGY.ALL"

    const-string v13, "orange notify(%s) update\ncdnImageSize:%s\ncdn10000Width:%s\ncdn10000Height:%s\nxzCdnSize:%s\nlevelModelSizes:%s\nlevelModelXzSizes:%s\ndomainDest:%s\nheifDomain:%s\nheifBizWL:%s\ndomainSwitch:%s\nglobalSwitch:%s\naliCdnDomain:%s\nexactExcludePath:%s\nfuzzyExcludePath:%s\nconvertExcludePath:%s\nmodules:%s\nlevelRatio:%s\nossCdnDomains:%s\nossFuzzyExcludes:%s\nstrictCDNDomainWL:%s\nstrictExactDomainBL:%s\nstrictDomainConvertBL:%s"

    const/16 v14, 0x17

    .line 178
    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "android_image_strategy_config"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v0, v14, v15

    const/4 v0, 0x2

    aput-object v2, v14, v0

    const/4 v0, 0x3

    aput-object v3, v14, v0

    const/4 v0, 0x4

    aput-object v4, v14, v0

    const/4 v0, 0x5

    aput-object v5, v14, v0

    const/4 v0, 0x6

    aput-object v6, v14, v0

    const/4 v0, 0x7

    aput-object v32, v14, v0

    const/16 v0, 0x8

    aput-object v34, v14, v0

    const/16 v0, 0x9

    aput-object v45, v14, v0

    const/16 v0, 0xa

    aput-object v44, v14, v0

    const/16 v0, 0xb

    aput-object v43, v14, v0

    const/16 v0, 0xc

    aput-object v40, v14, v0

    const/16 v0, 0xd

    aput-object v39, v14, v0

    const/16 v0, 0xe

    aput-object v42, v14, v0

    const/16 v0, 0xf

    aput-object v41, v14, v0

    const/16 v0, 0x10

    aput-object v38, v14, v0

    const/16 v0, 0x11

    aput-object v31, v14, v0

    const/16 v0, 0x12

    aput-object v12, v14, v0

    const/16 v0, 0x13

    aput-object v8, v14, v0

    const/16 v0, 0x14

    aput-object v7, v14, v0

    const/16 v0, 0x15

    aput-object v10, v14, v0

    const/16 v0, 0x16

    aput-object v9, v14, v0

    invoke-static {v11, v13, v14}, Lcom/taobao/tao/image/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setImageExtendedSupport(Lcom/taobao/tao/image/IImageExtendedSupport;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/taobao/tao/image/ImageInitBusinss;->mImageExtendedSupport:Lcom/taobao/tao/image/IImageExtendedSupport;

    return-void
.end method
