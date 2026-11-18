.class public Lanetwork/channel/config/NetworkConfigCenter;
.super Ljava/lang/Object;
.source "NetworkConfigCenter.java"


# static fields
.field private static final ALLOW_ALL_PATH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CACHE_FLAG:Ljava/lang/String; = "Cache.Flag"

.field private static final SERVICE_OPTIMIZE:Ljava/lang/String; = "SERVICE_POTIMIZE"

.field private static final TAG:Ljava/lang/String; = "anet.NetworkConfigCenter"

.field private static volatile bgForbidRequestThreshold:I = 0x0

.field private static volatile bizWhiteList:Ljava/util/concurrent/CopyOnWriteArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile cacheFlag:J = 0x0L

.field private static volatile degradeListMap:Ljava/util/concurrent/ConcurrentHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile iRemoteConfig:Lanetwork/channel/config/IRemoteConfig; = null

.field private static volatile isAllowHttpIpRetry:Z = false

.field private static volatile isBgRequestForbidden:Z = false

.field private static volatile isBindServiceOptimize:Z = false

.field private static volatile isGetSessionAsyncEnable:Z = false

.field private static volatile isHttpCacheEnable:Z = true

.field private static volatile isHttpSessionEnable:Z = true

.field private static volatile isRemoteNetworkServiceEnable:Z = true

.field private static volatile isRequestDelayRetryForNoNetwork:Z = false

.field private static volatile isResponseBufferEnable:Z = false

.field private static volatile isSSLEnabled:Z = true

.field private static volatile isSpdyEnabled:Z = true

.field private static volatile monitorRequestList:Ljava/util/concurrent/CopyOnWriteArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile requestStatisticSampleRate:I = 0x0

.field private static volatile serviceBindWaitTime:I = 0x5

.field private static volatile urlWhiteListMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lanetwork/channel/config/NetworkConfigCenter;->ALLOW_ALL_PATH:Ljava/util/List;

    const/16 v0, 0x2710

    .line 51
    sput v0, Lanetwork/channel/config/NetworkConfigCenter;->requestStatisticSampleRate:I

    const/4 v0, 0x1

    .line 52
    sput-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->isResponseBufferEnable:Z

    const/4 v1, 0x0

    .line 53
    sput-boolean v1, Lanetwork/channel/config/NetworkConfigCenter;->isGetSessionAsyncEnable:Z

    const v2, 0xea60

    .line 54
    sput v2, Lanetwork/channel/config/NetworkConfigCenter;->bgForbidRequestThreshold:I

    const/4 v2, 0x0

    .line 55
    sput-object v2, Lanetwork/channel/config/NetworkConfigCenter;->monitorRequestList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 56
    sput-object v2, Lanetwork/channel/config/NetworkConfigCenter;->degradeListMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    sput-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->isRequestDelayRetryForNoNetwork:Z

    .line 58
    sput-boolean v1, Lanetwork/channel/config/NetworkConfigCenter;->isBindServiceOptimize:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static enableNetworkSdkOptimizeTest(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 457
    invoke-static {p0}, Lanetwork/channel/config/NetworkConfigCenter;->setGetSessionAsyncEnable(Z)V

    const/16 p0, 0x10

    .line 458
    invoke-static {p0}, Lanet/channel/thread/ThreadPoolExecutorFactory;->setNormalExecutorPoolSize(I)V

    const-string p0, "[{\"host\":\"trade-acs.m.taobao.com\", \"protocol\":\"http2\", \"rtt\":\"0rtt\", \"publicKey\": \"acs\", \"isKeepAlive\":true}]"

    .line 460
    invoke-static {p0}, Lanet/channel/AwcnConfig;->registerPresetSessions(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 462
    invoke-static {p0}, Lanetwork/channel/config/NetworkConfigCenter;->setGetSessionAsyncEnable(Z)V

    const/4 p0, 0x6

    .line 463
    invoke-static {p0}, Lanet/channel/thread/ThreadPoolExecutorFactory;->setNormalExecutorPoolSize(I)V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getBgForbidRequestThreshold()I
    .locals 1

    .line 322
    sget v0, Lanetwork/channel/config/NetworkConfigCenter;->bgForbidRequestThreshold:I

    return v0
.end method

.method public static getRequestStatisticSampleRate()I
    .locals 1

    .line 268
    sget v0, Lanetwork/channel/config/NetworkConfigCenter;->requestStatisticSampleRate:I

    return v0
.end method

.method public static getServiceBindWaitTime()I
    .locals 1

    .line 98
    sget v0, Lanetwork/channel/config/NetworkConfigCenter;->serviceBindWaitTime:I

    return v0
.end method

.method public static init()V
    .locals 4

    .line 64
    invoke-static {}, Lanetwork/channel/http/NetworkSdkSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Cache.Flag"

    const-wide/16 v2, 0x0

    .line 65
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lanetwork/channel/config/NetworkConfigCenter;->cacheFlag:J

    const-string v1, "SERVICE_POTIMIZE"

    const/4 v2, 0x0

    .line 66
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->isBindServiceOptimize:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static isAllowHttpIpRetry()Z
    .locals 1

    .line 127
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->isHttpSessionEnable:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->isAllowHttpIpRetry:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isBgRequestForbidden()Z
    .locals 1

    .line 276
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->isBgRequestForbidden:Z

    return v0
.end method

.method public static isBindServiceOptimize()Z
    .locals 1

    .line 476
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->isBindServiceOptimize:Z

    return v0
.end method

.method public static isBizInWhiteList(Ljava/lang/String;)Z
    .locals 3

    .line 250
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 253
    :cond_0
    sget-object v0, Lanetwork/channel/config/NetworkConfigCenter;->bizWhiteList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 254
    sget-object v2, Lanetwork/channel/config/NetworkConfigCenter;->bizWhiteList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v2, :cond_1

    return v1

    .line 258
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 259
    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public static isGetSessionAsyncEnable()Z
    .locals 1

    .line 314
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->isGetSessionAsyncEnable:Z

    return v0
.end method

.method public static isHttpCacheEnable()Z
    .locals 1

    .line 135
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->isHttpCacheEnable:Z

    return v0
.end method

.method public static isHttpSessionEnable()Z
    .locals 1

    .line 119
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->isHttpSessionEnable:Z

    return v0
.end method

.method public static isRemoteNetworkServiceEnable()Z
    .locals 1

    .line 105
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->isRemoteNetworkServiceEnable:Z

    return v0
.end method

.method public static isRequestDelayRetryForNoNetwork()Z
    .locals 1

    .line 468
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->isRequestDelayRetryForNoNetwork:Z

    return v0
.end method

.method public static isRequestInMonitorList(Lanet/channel/statist/RequestStatistic;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 366
    :cond_0
    sget-object v1, Lanetwork/channel/config/NetworkConfigCenter;->monitorRequestList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v1, :cond_1

    return v0

    .line 370
    :cond_1
    iget-object v2, p0, Lanet/channel/statist/RequestStatistic;->host:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    .line 373
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 374
    iget-object v3, p0, Lanet/channel/statist/RequestStatistic;->host:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_4
    return v0
.end method

.method public static isResponseBufferEnable()Z
    .locals 1

    .line 306
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->isResponseBufferEnable:Z

    return v0
.end method

.method public static isSSLEnabled()Z
    .locals 1

    .line 73
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->isSSLEnabled:Z

    return v0
.end method

.method public static isSpdyEnabled()Z
    .locals 1

    .line 80
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->isSpdyEnabled:Z

    return v0
.end method

.method public static isUrlInDegradeList(Lanet/channel/util/HttpUrl;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 431
    :cond_0
    sget-object v1, Lanetwork/channel/config/NetworkConfigCenter;->degradeListMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_1

    return v0

    .line 436
    :cond_1
    invoke-virtual {p0}, Lanet/channel/util/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_2

    return v0

    .line 439
    :cond_2
    sget-object v2, Lanetwork/channel/config/NetworkConfigCenter;->ALLOW_ALL_PATH:Ljava/util/List;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    return v3

    .line 442
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 443
    invoke-virtual {p0}, Lanet/channel/util/HttpUrl;->path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v3

    :cond_5
    return v0
.end method

.method public static isUrlInWhiteList(Lanet/channel/util/HttpUrl;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 229
    :cond_0
    sget-object v1, Lanetwork/channel/config/NetworkConfigCenter;->urlWhiteListMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_1

    return v0

    .line 234
    :cond_1
    invoke-virtual {p0}, Lanet/channel/util/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_2

    return v0

    .line 237
    :cond_2
    sget-object v2, Lanetwork/channel/config/NetworkConfigCenter;->ALLOW_ALL_PATH:Ljava/util/List;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    return v3

    .line 240
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 241
    invoke-virtual {p0}, Lanet/channel/util/HttpUrl;->path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v3

    :cond_5
    return v0
.end method

.method public static setAllowHttpIpRetry(Z)V
    .locals 0

    .line 131
    sput-boolean p0, Lanetwork/channel/config/NetworkConfigCenter;->isAllowHttpIpRetry:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setAmdcPresetHosts(Ljava/lang/String;)V
    .locals 6

    .line 284
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isTargetProcess()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 289
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p0

    .line 291
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p0, :cond_2

    .line 294
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 295
    invoke-static {v4}, Lanet/channel/strategy/utils/Utils;->checkHostValidAndNotIp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 296
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 299
    :cond_2
    invoke-static {}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;

    move-result-object p0

    invoke-virtual {p0, v2}, Lanet/channel/strategy/dispatch/HttpDispatcher;->addHosts(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const/4 v1, 0x0

    .line 301
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "anet.NetworkConfigCenter"

    const-string v3, "parse hosts failed"

    invoke-static {v2, v3, v1, p0, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public static setBgForbidRequestThreshold(I)V
    .locals 0

    .line 326
    sput p0, Lanetwork/channel/config/NetworkConfigCenter;->bgForbidRequestThreshold:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setBgRequestForbidden(Z)V
    .locals 0

    .line 280
    sput-boolean p0, Lanetwork/channel/config/NetworkConfigCenter;->isBgRequestForbidden:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setBindServiceOptimize(Z)V
    .locals 2

    .line 480
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->isBindServiceOptimize:Z

    if-ne p0, v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 483
    :cond_0
    sput-boolean p0, Lanetwork/channel/config/NetworkConfigCenter;->isBindServiceOptimize:Z

    .line 484
    invoke-static {}, Lanetwork/channel/http/NetworkSdkSetting;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 485
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->isBindServiceOptimize:Z

    const-string v1, "SERVICE_POTIMIZE"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 486
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setCacheFlag(J)V
    .locals 5

    .line 143
    sget-wide v0, Lanetwork/channel/config/NetworkConfigCenter;->cacheFlag:J

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 144
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "old"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-wide v3, Lanetwork/channel/config/NetworkConfigCenter;->cacheFlag:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "new"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "anet.NetworkConfigCenter"

    const-string/jumbo v3, "set cache flag"

    invoke-static {v2, v3, v0, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    sput-wide p0, Lanetwork/channel/config/NetworkConfigCenter;->cacheFlag:J

    .line 146
    invoke-static {}, Lanetwork/channel/http/NetworkSdkSetting;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 147
    sget-wide v0, Lanetwork/channel/config/NetworkConfigCenter;->cacheFlag:J

    const-string p1, "Cache.Flag"

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 148
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 149
    invoke-static {}, Lanetwork/channel/cache/CacheManager;->clearAllCache()V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setDegradeRequestList(Ljava/lang/String;)V
    .locals 12

    const/4 v0, 0x2

    .line 383
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v1

    const-string v2, "anet.NetworkConfigCenter"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 384
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Degrade List"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string/jumbo v1, "setDegradeRequestList"

    invoke-static {v2, v1, v4, v0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    sput-object v4, Lanetwork/channel/config/NetworkConfigCenter;->degradeListMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void

    .line 392
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 394
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 396
    :catch_0
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 397
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 398
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v7, "*"

    .line 400
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 401
    sget-object v6, Lanetwork/channel/config/NetworkConfigCenter;->ALLOW_ALL_PATH:Ljava/util/List;

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 402
    :cond_3
    instance-of v7, v6, Lorg/json/JSONArray;

    if-eqz v7, :cond_2

    .line 403
    nop

    nop

    .line 404
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 405
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v7, :cond_5

    .line 407
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 408
    instance-of v11, v10, Ljava/lang/String;

    if-eqz v11, :cond_4

    .line 409
    nop

    nop

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 412
    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 413
    invoke-virtual {v0, v5, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 421
    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "parse jsonObject failed"

    invoke-static {v2, v3, v4, p0, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 423
    :cond_6
    sput-object v0, Lanetwork/channel/config/NetworkConfigCenter;->degradeListMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static setGetSessionAsyncEnable(Z)V
    .locals 0

    .line 318
    sput-boolean p0, Lanetwork/channel/config/NetworkConfigCenter;->isGetSessionAsyncEnable:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setHttpCacheEnable(Z)V
    .locals 0

    .line 139
    sput-boolean p0, Lanetwork/channel/config/NetworkConfigCenter;->isHttpCacheEnable:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setHttpSessionEnable(Z)V
    .locals 0

    .line 123
    sput-boolean p0, Lanetwork/channel/config/NetworkConfigCenter;->isHttpSessionEnable:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setHttpsValidationEnabled(Z)V
    .locals 0

    if-nez p0, :cond_0

    .line 85
    sget-object p0, Lanet/channel/util/HttpSslUtil;->ALLOW_ALL_HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {p0}, Lanet/channel/util/HttpSslUtil;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 86
    sget-object p0, Lanet/channel/util/HttpSslUtil;->TRUST_ALL_SSL_SOCKET_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {p0}, Lanet/channel/util/HttpSslUtil;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 88
    invoke-static {p0}, Lanet/channel/util/HttpSslUtil;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 89
    invoke-static {p0}, Lanet/channel/util/HttpSslUtil;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setMonitorRequestList(Ljava/lang/String;)V
    .locals 7

    .line 334
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 335
    sput-object v1, Lanetwork/channel/config/NetworkConfigCenter;->monitorRequestList:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    const/4 v0, 0x0

    .line 339
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "host"

    .line 340
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 341
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 342
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 345
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 346
    invoke-static {v5}, Lanet/channel/strategy/utils/Utils;->checkHostValidAndNotIp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 347
    invoke-virtual {v3, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 350
    :cond_2
    sput-object v3, Lanetwork/channel/config/NetworkConfigCenter;->monitorRequestList:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 352
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "anet.NetworkConfigCenter"

    const-string v3, "parse hosts failed"

    invoke-static {v2, v3, v1, p0, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public static setRemoteConfig(Lanetwork/channel/config/IRemoteConfig;)V
    .locals 1

    .line 109
    sget-object v0, Lanetwork/channel/config/NetworkConfigCenter;->iRemoteConfig:Lanetwork/channel/config/IRemoteConfig;

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lanetwork/channel/config/NetworkConfigCenter;->iRemoteConfig:Lanetwork/channel/config/IRemoteConfig;

    invoke-interface {v0}, Lanetwork/channel/config/IRemoteConfig;->unRegister()V

    :cond_0
    if-eqz p0, :cond_1

    .line 113
    invoke-interface {p0}, Lanetwork/channel/config/IRemoteConfig;->register()V

    .line 115
    :cond_1
    sput-object p0, Lanetwork/channel/config/NetworkConfigCenter;->iRemoteConfig:Lanetwork/channel/config/IRemoteConfig;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setRemoteNetworkServiceEnable(Z)V
    .locals 0

    .line 102
    sput-boolean p0, Lanetwork/channel/config/NetworkConfigCenter;->isRemoteNetworkServiceEnable:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setRequestDelayRetryForNoNetwork(Z)V
    .locals 0

    .line 472
    sput-boolean p0, Lanetwork/channel/config/NetworkConfigCenter;->isRequestDelayRetryForNoNetwork:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setRequestStatisticSampleRate(I)V
    .locals 0

    .line 272
    sput p0, Lanetwork/channel/config/NetworkConfigCenter;->requestStatisticSampleRate:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setResponseBufferEnable(Z)V
    .locals 0

    .line 310
    sput-boolean p0, Lanetwork/channel/config/NetworkConfigCenter;->isResponseBufferEnable:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setSSLEnabled(Z)V
    .locals 0

    .line 70
    sput-boolean p0, Lanetwork/channel/config/NetworkConfigCenter;->isSSLEnabled:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setServiceBindWaitTime(I)V
    .locals 0

    .line 94
    sput p0, Lanetwork/channel/config/NetworkConfigCenter;->serviceBindWaitTime:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setSpdyEnabled(Z)V
    .locals 0

    .line 77
    sput-boolean p0, Lanetwork/channel/config/NetworkConfigCenter;->isSpdyEnabled:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static updateBizWhiteList(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x2

    .line 198
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v1

    const-string v2, "anet.NetworkConfigCenter"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 199
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "White List"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string/jumbo v1, "updateRequestWhiteList"

    invoke-static {v2, v1, v4, v0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    sput-object v4, Lanetwork/channel/config/NetworkConfigCenter;->bizWhiteList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void

    .line 207
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p0

    .line 209
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, p0, :cond_3

    .line 212
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 213
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 214
    invoke-virtual {v1, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 217
    :cond_3
    sput-object v1, Lanetwork/channel/config/NetworkConfigCenter;->bizWhiteList:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 219
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "parse bizId failed"

    invoke-static {v2, v1, v4, p0, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public static updateWhiteListMap(Ljava/lang/String;)V
    .locals 12

    const/4 v0, 0x2

    .line 154
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v1

    const-string v2, "anet.NetworkConfigCenter"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 155
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "White List"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string/jumbo v1, "updateWhiteUrlList"

    invoke-static {v2, v1, v4, v0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    sput-object v4, Lanetwork/channel/config/NetworkConfigCenter;->urlWhiteListMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void

    .line 163
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 165
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 167
    :catch_0
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 168
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 169
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v7, "*"

    .line 171
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 172
    sget-object v6, Lanetwork/channel/config/NetworkConfigCenter;->ALLOW_ALL_PATH:Ljava/util/List;

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 173
    :cond_3
    instance-of v7, v6, Lorg/json/JSONArray;

    if-eqz v7, :cond_2

    .line 174
    nop

    nop

    .line 175
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 176
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v7, :cond_5

    .line 178
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 179
    instance-of v11, v10, Ljava/lang/String;

    if-eqz v11, :cond_4

    .line 180
    nop

    nop

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 183
    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 184
    invoke-virtual {v0, v5, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 192
    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "parse jsonObject failed"

    invoke-static {v2, v3, v4, p0, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 194
    :cond_6
    sput-object v0, Lanetwork/channel/config/NetworkConfigCenter;->urlWhiteListMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method
