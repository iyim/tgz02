.class public Lanet/channel/SessionCenter;
.super Ljava/lang/Object;
.source "SessionCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/SessionCenter$InnerListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "awcn.SessionCenter"

.field static instancesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lanet/channel/Config;",
            "Lanet/channel/SessionCenter;",
            ">;"
        }
    .end annotation
.end field

.field private static mInit:Z


# instance fields
.field final accsSessionManager:Lanet/channel/AccsSessionManager;

.field final attributeManager:Lanet/channel/SessionAttributeManager;

.field config:Lanet/channel/Config;

.field context:Landroid/content/Context;

.field final innerListener:Lanet/channel/SessionCenter$InnerListener;

.field seqNum:Ljava/lang/String;

.field final sessionPool:Lanet/channel/SessionPool;

.field final srCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lanet/channel/SessionRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lanet/channel/SessionCenter;->instancesMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 55
    sput-boolean v0, Lanet/channel/SessionCenter;->mInit:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Lanet/channel/Config;)V
    .locals 2

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lanet/channel/SessionPool;

    invoke-direct {v0}, Lanet/channel/SessionPool;-><init>()V

    iput-object v0, p0, Lanet/channel/SessionCenter;->sessionPool:Lanet/channel/SessionPool;

    .line 62
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lanet/channel/SessionCenter;->srCache:Landroid/util/LruCache;

    .line 63
    new-instance v0, Lanet/channel/SessionAttributeManager;

    invoke-direct {v0}, Lanet/channel/SessionAttributeManager;-><init>()V

    iput-object v0, p0, Lanet/channel/SessionCenter;->attributeManager:Lanet/channel/SessionAttributeManager;

    .line 65
    new-instance v0, Lanet/channel/SessionCenter$InnerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lanet/channel/SessionCenter$InnerListener;-><init>(Lanet/channel/SessionCenter;Lanet/channel/SessionCenter$1;)V

    iput-object v0, p0, Lanet/channel/SessionCenter;->innerListener:Lanet/channel/SessionCenter$InnerListener;

    .line 131
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/SessionCenter;->context:Landroid/content/Context;

    .line 132
    iput-object p1, p0, Lanet/channel/SessionCenter;->config:Lanet/channel/Config;

    .line 133
    invoke-virtual {p1}, Lanet/channel/Config;->getAppkey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lanet/channel/SessionCenter;->innerListener:Lanet/channel/SessionCenter$InnerListener;

    invoke-virtual {v0}, Lanet/channel/SessionCenter$InnerListener;->registerAll()V

    .line 135
    new-instance v0, Lanet/channel/AccsSessionManager;

    invoke-direct {v0, p0}, Lanet/channel/AccsSessionManager;-><init>(Lanet/channel/SessionCenter;)V

    iput-object v0, p0, Lanet/channel/SessionCenter;->accsSessionManager:Lanet/channel/AccsSessionManager;

    .line 137
    invoke-virtual {p1}, Lanet/channel/Config;->getAppkey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[default]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p1}, Lanet/channel/Config;->getSecurity()Lanet/channel/security/ISecurity;

    move-result-object v0

    .line 139
    invoke-virtual {p1}, Lanet/channel/Config;->getAppkey()Ljava/lang/String;

    move-result-object p1

    .line 140
    new-instance v1, Lanet/channel/SessionCenter$1;

    invoke-direct {v1, p0, p1, v0}, Lanet/channel/SessionCenter$1;-><init>(Lanet/channel/SessionCenter;Ljava/lang/String;Lanet/channel/security/ISecurity;)V

    invoke-static {v1}, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->setSign(Lanet/channel/strategy/dispatch/IAmdcSign;)V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lanet/channel/SessionCenter;Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lanet/channel/SessionCenter;->checkStrategy(Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 50
    sget-boolean v0, Lanet/channel/SessionCenter;->mInit:Z

    return v0
.end method

.method public static checkAndStartAccsSession()V
    .locals 2

    .line 376
    sget-object v0, Lanet/channel/SessionCenter;->instancesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/SessionCenter;

    .line 377
    iget-object v1, v1, Lanet/channel/SessionCenter;->accsSessionManager:Lanet/channel/AccsSessionManager;

    invoke-virtual {v1}, Lanet/channel/AccsSessionManager;->checkAndStartSession()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkStrategy(Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;)V
    .locals 4

    const/4 v0, 0x0

    .line 467
    :try_start_0
    iget-object p1, p1, Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;->dnsInfo:[Lanet/channel/strategy/StrategyResultParser$DnsInfo;

    const/4 v1, 0x0

    .line 468
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 469
    aget-object v2, p1, v1

    .line 470
    iget-boolean v3, v2, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->effectNow:Z

    if-eqz v3, :cond_0

    .line 471
    invoke-direct {p0, v2}, Lanet/channel/SessionCenter;->handleEffectNow(Lanet/channel/strategy/StrategyResultParser$DnsInfo;)V

    .line 473
    :cond_0
    iget-object v3, v2, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->unit:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 474
    invoke-direct {p0, v2}, Lanet/channel/SessionCenter;->handleUnitChange(Lanet/channel/strategy/StrategyResultParser$DnsInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 478
    iget-object v1, p0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "awcn.SessionCenter"

    const-string v3, "checkStrategy failed"

    invoke-static {v2, v3, v1, p1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static declared-synchronized getInstance()Lanet/channel/SessionCenter;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lanet/channel/SessionCenter;

    monitor-enter v0

    .line 233
    :try_start_0
    sget-boolean v1, Lanet/channel/SessionCenter;->mInit:Z

    if-nez v1, :cond_0

    .line 234
    invoke-static {}, Lanet/channel/util/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 236
    invoke-static {v1}, Lanet/channel/SessionCenter;->init(Landroid/content/Context;)V

    :cond_0
    const/4 v1, 0x0

    .line 241
    sget-object v2, Lanet/channel/SessionCenter;->instancesMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 242
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lanet/channel/SessionCenter;

    .line 243
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lanet/channel/Config;->DEFAULT_CONFIG:Lanet/channel/Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v4, :cond_1

    .line 244
    monitor-exit v0

    return-object v3

    :cond_1
    move-object v1, v3

    goto :goto_0

    .line 247
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Lanet/channel/Config;)Lanet/channel/SessionCenter;
    .locals 3

    const-class v0, Lanet/channel/SessionCenter;

    monitor-enter v0

    if-eqz p0, :cond_2

    .line 212
    :try_start_0
    sget-boolean v1, Lanet/channel/SessionCenter;->mInit:Z

    if-nez v1, :cond_0

    .line 213
    invoke-static {}, Lanet/channel/util/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 215
    invoke-static {v1}, Lanet/channel/SessionCenter;->init(Landroid/content/Context;)V

    .line 219
    :cond_0
    sget-object v1, Lanet/channel/SessionCenter;->instancesMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/SessionCenter;

    if-nez v1, :cond_1

    .line 221
    new-instance v1, Lanet/channel/SessionCenter;

    invoke-direct {v1, p0}, Lanet/channel/SessionCenter;-><init>(Lanet/channel/Config;)V

    .line 222
    sget-object v2, Lanet/channel/SessionCenter;->instancesMap:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 209
    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "config is null!"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lanet/channel/SessionCenter;
    .locals 2

    const-class v0, Lanet/channel/SessionCenter;

    monitor-enter v0

    .line 200
    :try_start_0
    invoke-static {p0}, Lanet/channel/Config;->getConfigByTag(Ljava/lang/String;)Lanet/channel/Config;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 204
    invoke-static {p0}, Lanet/channel/SessionCenter;->getInstance(Lanet/channel/Config;)Lanet/channel/SessionCenter;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 202
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "tag not exist!"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getSessionRequestByUrl(Lanet/channel/util/HttpUrl;)Lanet/channel/SessionRequest;
    .locals 2

    .line 386
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v0

    invoke-virtual {p1}, Lanet/channel/util/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lanet/channel/strategy/IStrategyInstance;->getCNameByHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 387
    invoke-virtual {p1}, Lanet/channel/util/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    .line 388
    :cond_0
    invoke-virtual {p1}, Lanet/channel/util/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v1

    .line 389
    invoke-virtual {p1}, Lanet/channel/util/HttpUrl;->isSchemeLocked()Z

    move-result p1

    if-nez p1, :cond_1

    .line 390
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lanet/channel/strategy/IStrategyInstance;->getSchemeByHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string p1, "://"

    .line 393
    invoke-static {v1, p1, v0}, Lanet/channel/util/StringUtils;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 394
    invoke-virtual {p0, p1}, Lanet/channel/SessionCenter;->getSessionRequest(Ljava/lang/String;)Lanet/channel/SessionRequest;

    move-result-object p1

    return-object p1
.end method

.method private handleEffectNow(Lanet/channel/strategy/StrategyResultParser$DnsInfo;)V
    .locals 12

    .line 493
    iget-object v0, p0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "host"

    aput-object v4, v2, v3

    iget-object v4, p1, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->host:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string v4, "awcn.SessionCenter"

    const-string v6, "find effectNow"

    invoke-static {v4, v6, v0, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    iget-object v0, p1, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->aisleses:[Lanet/channel/strategy/StrategyResultParser$Aisles;

    .line 495
    iget-object v2, p1, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->ips:[Ljava/lang/String;

    .line 497
    iget-object v6, p0, Lanet/channel/SessionCenter;->sessionPool:Lanet/channel/SessionPool;

    iget-object v7, p1, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->safeAisles:Ljava/lang/String;

    iget-object p1, p1, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->host:Ljava/lang/String;

    invoke-static {v7, p1}, Lanet/channel/util/StringUtils;->buildKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lanet/channel/SessionCenter;->getSessionRequest(Ljava/lang/String;)Lanet/channel/SessionRequest;

    move-result-object p1

    invoke-virtual {v6, p1}, Lanet/channel/SessionPool;->getSessions(Lanet/channel/SessionRequest;)Ljava/util/List;

    move-result-object p1

    .line 498
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lanet/channel/Session;

    .line 499
    invoke-virtual {v6}, Lanet/channel/Session;->getConnType()Lanet/channel/entity/ConnType;

    move-result-object v7

    invoke-virtual {v7}, Lanet/channel/entity/ConnType;->isHttpType()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 504
    :goto_1
    array-length v8, v2

    if-ge v7, v8, :cond_3

    .line 505
    invoke-virtual {v6}, Lanet/channel/Session;->getIp()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v2, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_2
    const/4 v8, 0x3

    const/4 v9, 0x4

    if-nez v7, :cond_5

    .line 512
    invoke-static {v1}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 513
    iget-object v7, v6, Lanet/channel/Session;->mSeq:Ljava/lang/String;

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "session ip"

    aput-object v10, v9, v3

    invoke-virtual {v6}, Lanet/channel/Session;->getIp()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    const-string v10, "ips"

    aput-object v10, v9, v1

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    const-string v8, "ip not match"

    invoke-static {v4, v8, v7, v9}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 515
    :cond_4
    invoke-virtual {v6, v5}, Lanet/channel/Session;->close(Z)V

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    .line 520
    :goto_3
    array-length v10, v0

    if-ge v7, v10, :cond_7

    .line 521
    invoke-virtual {v6}, Lanet/channel/Session;->getPort()I

    move-result v10

    aget-object v11, v0, v7

    iget v11, v11, Lanet/channel/strategy/StrategyResultParser$Aisles;->port:I

    if-ne v10, v11, :cond_6

    invoke-virtual {v6}, Lanet/channel/Session;->getConnType()Lanet/channel/entity/ConnType;

    move-result-object v10

    aget-object v11, v0, v7

    invoke-static {v11}, Lanet/channel/strategy/ConnProtocol;->valueOf(Lanet/channel/strategy/StrategyResultParser$Aisles;)Lanet/channel/strategy/ConnProtocol;

    move-result-object v11

    invoke-static {v11}, Lanet/channel/entity/ConnType;->valueOf(Lanet/channel/strategy/ConnProtocol;)Lanet/channel/entity/ConnType;

    move-result-object v11

    invoke-virtual {v10, v11}, Lanet/channel/entity/ConnType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v7, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    :goto_4
    if-nez v7, :cond_0

    .line 528
    invoke-static {v1}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 529
    iget-object v7, v6, Lanet/channel/Session;->mSeq:Ljava/lang/String;

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "port"

    aput-object v11, v10, v3

    invoke-virtual {v6}, Lanet/channel/Session;->getPort()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    const-string v11, "connType"

    aput-object v11, v10, v1

    invoke-virtual {v6}, Lanet/channel/Session;->getConnType()Lanet/channel/entity/ConnType;

    move-result-object v11

    aput-object v11, v10, v8

    const-string v8, "aisle"

    aput-object v8, v10, v9

    const/4 v8, 0x5

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v10, v8

    const-string v8, "aisle not match"

    invoke-static {v4, v8, v7, v10}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    :cond_8
    invoke-virtual {v6, v5}, Lanet/channel/Session;->close(Z)V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private handleUnitChange(Lanet/channel/strategy/StrategyResultParser$DnsInfo;)V
    .locals 7

    .line 483
    iget-object v0, p0, Lanet/channel/SessionCenter;->sessionPool:Lanet/channel/SessionPool;

    iget-object v1, p1, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->safeAisles:Ljava/lang/String;

    iget-object v2, p1, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->host:Ljava/lang/String;

    invoke-static {v1, v2}, Lanet/channel/util/StringUtils;->buildKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lanet/channel/SessionCenter;->getSessionRequest(Ljava/lang/String;)Lanet/channel/SessionRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanet/channel/SessionPool;->getSessions(Lanet/channel/SessionRequest;)Ljava/util/List;

    move-result-object v0

    .line 484
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/Session;

    .line 485
    iget-object v2, v1, Lanet/channel/Session;->unit:Ljava/lang/String;

    iget-object v3, p1, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->unit:Ljava/lang/String;

    invoke-static {v2, v3}, Lanet/channel/util/StringUtils;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 486
    iget-object v2, v1, Lanet/channel/Session;->mSeq:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "session unit"

    aput-object v5, v3, v4

    iget-object v4, v1, Lanet/channel/Session;->unit:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    const-string/jumbo v6, "unit"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    iget-object v6, p1, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->unit:Ljava/lang/String;

    aput-object v6, v3, v4

    const-string v4, "awcn.SessionCenter"

    const-string/jumbo v6, "unit change"

    invoke-static {v4, v6, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    invoke-virtual {v1, v5}, Lanet/channel/Session;->close(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 5

    const-class v0, Lanet/channel/SessionCenter;

    monitor-enter v0

    if-eqz p0, :cond_3

    .line 72
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lanet/channel/GlobalAppRuntimeInfo;->setContext(Landroid/content/Context;)V

    .line 73
    sget-boolean v1, Lanet/channel/SessionCenter;->mInit:Z

    if-nez v1, :cond_2

    .line 74
    sget-object v1, Lanet/channel/SessionCenter;->instancesMap:Ljava/util/Map;

    sget-object v2, Lanet/channel/Config;->DEFAULT_CONFIG:Lanet/channel/Config;

    new-instance v3, Lanet/channel/SessionCenter;

    sget-object v4, Lanet/channel/Config;->DEFAULT_CONFIG:Lanet/channel/Config;

    invoke-direct {v3, v4}, Lanet/channel/SessionCenter;-><init>(Lanet/channel/Config;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {}, Lanet/channel/util/AppLifecycle;->initialize()V

    .line 76
    invoke-static {p0}, Lanet/channel/status/NetworkStatusHelper;->startListener(Landroid/content/Context;)V

    .line 77
    invoke-static {}, Lanet/channel/AwcnConfig;->isTbNextLaunch()Z

    move-result p0

    if-nez p0, :cond_0

    .line 78
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object p0

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p0, v1}, Lanet/channel/strategy/IStrategyInstance;->initialize(Landroid/content/Context;)V

    .line 80
    :cond_0
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isTargetProcess()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 81
    invoke-static {}, Lanet/channel/detect/NetworkDetector;->registerListener()V

    .line 82
    invoke-static {}, Lanet/channel/quic/QuicConnectionDetector;->registerListener()V

    :cond_1
    const/4 p0, 0x1

    .line 84
    sput-boolean p0, Lanet/channel/SessionCenter;->mInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_3
    :try_start_1
    const-string p0, "awcn.SessionCenter"

    const-string v1, "context is null!"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 69
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "init failed. context is null"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lanet/channel/Config;)V
    .locals 3

    const-class v0, Lanet/channel/SessionCenter;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    .line 122
    :try_start_0
    invoke-static {p0}, Lanet/channel/SessionCenter;->init(Landroid/content/Context;)V

    .line 124
    sget-object p0, Lanet/channel/SessionCenter;->instancesMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 125
    new-instance p0, Lanet/channel/SessionCenter;

    invoke-direct {p0, p1}, Lanet/channel/SessionCenter;-><init>(Lanet/channel/Config;)V

    .line 126
    sget-object v1, Lanet/channel/SessionCenter;->instancesMap:Ljava/util/Map;

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_0
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_1
    :try_start_1
    const-string p0, "awcn.SessionCenter"

    const-string p1, "paramter config is null!"

    .line 118
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v2, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "init failed. config is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string p0, "awcn.SessionCenter"

    const-string p1, "context is null!"

    .line 113
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v2, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "init failed. context is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lanet/channel/SessionCenter;

    monitor-enter v0

    .line 94
    :try_start_0
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lanet/channel/SessionCenter;->init(Landroid/content/Context;Ljava/lang/String;Lanet/channel/entity/ENV;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Lanet/channel/entity/ENV;)V
    .locals 2

    const-class v0, Lanet/channel/SessionCenter;

    monitor-enter v0

    if-eqz p0, :cond_1

    .line 103
    :try_start_0
    invoke-static {p1, p2}, Lanet/channel/Config;->getConfig(Ljava/lang/String;Lanet/channel/entity/ENV;)Lanet/channel/Config;

    move-result-object v1

    if-nez v1, :cond_0

    .line 105
    new-instance v1, Lanet/channel/Config$Builder;

    invoke-direct {v1}, Lanet/channel/Config$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lanet/channel/Config$Builder;->setAppkey(Ljava/lang/String;)Lanet/channel/Config$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lanet/channel/Config$Builder;->setEnv(Lanet/channel/entity/ENV;)Lanet/channel/Config$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lanet/channel/Config$Builder;->build()Lanet/channel/Config;

    move-result-object v1

    .line 108
    :cond_0
    invoke-static {p0, v1}, Lanet/channel/SessionCenter;->init(Landroid/content/Context;Lanet/channel/Config;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    :try_start_1
    const-string p0, "awcn.SessionCenter"

    const-string p1, "context is null!"

    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 99
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "init failed. context is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized switchEnvironment(Lanet/channel/entity/ENV;)V
    .locals 12

    const-class v0, Lanet/channel/SessionCenter;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 170
    :try_start_0
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, p0, :cond_1

    const-string v3, "awcn.SessionCenter"

    const-string/jumbo v6, "switch env"

    const/4 v7, 0x4

    .line 171
    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "old"

    aput-object v8, v7, v2

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v8

    aput-object v8, v7, v5

    const-string v8, "new"

    aput-object v8, v7, v4

    const/4 v8, 0x3

    aput-object p0, v7, v8

    invoke-static {v3, v6, v1, v7}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    invoke-static {p0}, Lanet/channel/GlobalAppRuntimeInfo;->setEnv(Lanet/channel/entity/ENV;)V

    .line 174
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v3

    invoke-interface {v3}, Lanet/channel/strategy/IStrategyInstance;->switchEnv()V

    .line 175
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v6, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;

    sget-object v7, Lorg/android/spdy/SpdySessionKind;->NONE_SESSION:Lorg/android/spdy/SpdySessionKind;

    invoke-static {v3, v6, v7}, Lorg/android/spdy/SpdyAgent;->getInstance(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lorg/android/spdy/SpdyAgent;

    move-result-object v3

    .line 176
    sget-object v6, Lanet/channel/entity/ENV;->TEST:Lanet/channel/entity/ENV;

    if-ne p0, v6, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v3, v6}, Lorg/android/spdy/SpdyAgent;->switchAccsServer(I)V

    .line 179
    :cond_1
    sget-object v3, Lanet/channel/SessionCenter;->instancesMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 180
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 181
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lanet/channel/SessionCenter;

    .line 182
    iget-object v7, v6, Lanet/channel/SessionCenter;->config:Lanet/channel/Config;

    invoke-virtual {v7}, Lanet/channel/Config;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v7

    if-eq v7, p0, :cond_2

    const-string v7, "awcn.SessionCenter"

    const-string/jumbo v8, "remove instance"

    .line 183
    iget-object v9, v6, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v10, v4, [Ljava/lang/Object;

    const-string v11, "ENVIRONMENT"

    aput-object v11, v10, v2

    iget-object v11, v6, Lanet/channel/SessionCenter;->config:Lanet/channel/Config;

    invoke-virtual {v11}, Lanet/channel/Config;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v7, v8, v9, v10}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    iget-object v7, v6, Lanet/channel/SessionCenter;->accsSessionManager:Lanet/channel/AccsSessionManager;

    invoke-virtual {v7, v2}, Lanet/channel/AccsSessionManager;->forceCloseSession(Z)V

    .line 185
    iget-object v6, v6, Lanet/channel/SessionCenter;->innerListener:Lanet/channel/SessionCenter$InnerListener;

    invoke-virtual {v6}, Lanet/channel/SessionCenter$InnerListener;->unRegisterAll()V

    .line 186
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string v3, "awcn.SessionCenter"

    const-string/jumbo v4, "switch env error."

    .line 190
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v1, p0, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :cond_3
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public asyncGet(Lanet/channel/util/HttpUrl;IJLanet/channel/SessionGetCallback;)V
    .locals 3

    if-eqz p5, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_1

    .line 348
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lanet/channel/SessionCenter;->getInternal(Lanet/channel/util/HttpUrl;IJLanet/channel/SessionGetCallback;)Lanet/channel/Session;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 350
    invoke-interface {p5, p1}, Lanet/channel/SessionGetCallback;->onSessionGetSuccess(Lanet/channel/Session;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    :catch_0
    invoke-interface {p5}, Lanet/channel/SessionGetCallback;->onSessionGetFail()V

    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string/jumbo p2, "timeout must > 0"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 342
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cb is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public enterBackground()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 454
    invoke-static {}, Lanet/channel/util/AppLifecycle;->onBackground()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public enterForeground()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 462
    invoke-static {}, Lanet/channel/util/AppLifecycle;->onForeground()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public forceRecreateAccsSession()V
    .locals 2

    .line 382
    iget-object v0, p0, Lanet/channel/SessionCenter;->accsSessionManager:Lanet/channel/AccsSessionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lanet/channel/AccsSessionManager;->forceCloseSession(Z)V

    return-void
.end method

.method public get(Lanet/channel/util/HttpUrl;IJ)Lanet/channel/Session;
    .locals 16

    move-object/from16 v7, p0

    const-string v8, "[Get]"

    const-string/jumbo v9, "url"

    const-string v10, "awcn.SessionCenter"

    const/4 v6, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    .line 316
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lanet/channel/SessionCenter;->getInternal(Lanet/channel/util/HttpUrl;IJLanet/channel/SessionGetCallback;)Lanet/channel/Session;

    move-result-object v12
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lanet/channel/NoAvailStrategyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v2, v15, [Ljava/lang/Object;

    aput-object v9, v2, v14

    invoke-virtual/range {p1 .. p1}, Lanet/channel/util/HttpUrl;->urlString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v13

    invoke-static {v10, v0, v1, v12, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lanet/channel/NoAvailStrategyException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v12, v2, v14

    aput-object v9, v2, v13

    invoke-virtual/range {p1 .. p1}, Lanet/channel/util/HttpUrl;->urlString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v15

    invoke-static {v10, v0, v1, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 324
    iget-object v0, v7, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "errMsg"

    aput-object v3, v2, v14

    invoke-virtual {v1}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v13

    aput-object v9, v2, v15

    invoke-virtual/range {p1 .. p1}, Lanet/channel/util/HttpUrl;->urlString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v11

    const-string v1, "[Get]connect exception"

    invoke-static {v10, v1, v0, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 321
    iget-object v0, v7, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v2, v15, [Ljava/lang/Object;

    aput-object v9, v2, v14

    invoke-virtual/range {p1 .. p1}, Lanet/channel/util/HttpUrl;->urlString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v13

    const-string v3, "[Get]timeout exception"

    invoke-static {v10, v3, v0, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 318
    iget-object v0, v7, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v2, v15, [Ljava/lang/Object;

    aput-object v9, v2, v14

    aput-object p1, v2, v13

    const-string v3, "[Get]param url is invalid"

    invoke-static {v10, v3, v0, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-object v12
.end method

.method public get(Lanet/channel/util/HttpUrl;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 307
    sget-object v0, Lanet/channel/entity/ConnType$TypeLevel;->SPDY:Lanet/channel/entity/ConnType$TypeLevel;

    if-ne p2, v0, :cond_0

    sget p2, Lanet/channel/entity/SessionType;->LONG_LINK:I

    goto :goto_0

    :cond_0
    sget p2, Lanet/channel/entity/SessionType;->SHORT_LINK:I

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lanet/channel/SessionCenter;->get(Lanet/channel/util/HttpUrl;IJ)Lanet/channel/Session;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;J)Lanet/channel/Session;
    .locals 1

    .line 295
    invoke-static {p1}, Lanet/channel/util/HttpUrl;->parse(Ljava/lang/String;)Lanet/channel/util/HttpUrl;

    move-result-object p1

    sget v0, Lanet/channel/entity/SessionType;->ALL:I

    invoke-virtual {p0, p1, v0, p2, p3}, Lanet/channel/SessionCenter;->get(Lanet/channel/util/HttpUrl;IJ)Lanet/channel/Session;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 300
    invoke-static {p1}, Lanet/channel/util/HttpUrl;->parse(Ljava/lang/String;)Lanet/channel/util/HttpUrl;

    move-result-object p1

    sget-object v0, Lanet/channel/entity/ConnType$TypeLevel;->SPDY:Lanet/channel/entity/ConnType$TypeLevel;

    if-ne p2, v0, :cond_0

    sget p2, Lanet/channel/entity/SessionType;->LONG_LINK:I

    goto :goto_0

    :cond_0
    sget p2, Lanet/channel/entity/SessionType;->SHORT_LINK:I

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lanet/channel/SessionCenter;->get(Lanet/channel/util/HttpUrl;IJ)Lanet/channel/Session;

    move-result-object p1

    return-object p1
.end method

.method protected getInternal(Lanet/channel/util/HttpUrl;IJLanet/channel/SessionGetCallback;)Lanet/channel/Session;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    move v8, p2

    move-wide/from16 v9, p3

    .line 398
    sget-boolean v1, Lanet/channel/SessionCenter;->mInit:Z

    const/4 v2, 0x0

    const-string v3, "awcn.SessionCenter"

    if-eqz v1, :cond_a

    if-eqz p1, :cond_9

    .line 407
    iget-object v1, v0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "u"

    aput-object v5, v4, v2

    invoke-virtual {p1}, Lanet/channel/util/HttpUrl;->urlString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    const-string/jumbo v7, "sessionType"

    aput-object v7, v4, v5

    const/4 v7, 0x3

    sget v11, Lanet/channel/entity/SessionType;->LONG_LINK:I

    if-ne v8, v11, :cond_0

    const-string v11, "LongLink"

    goto :goto_0

    :cond_0
    const-string v11, "ShortLink"

    :goto_0
    aput-object v11, v4, v7

    const/4 v7, 0x4

    const-string/jumbo v11, "timeout"

    aput-object v11, v4, v7

    const/4 v7, 0x5

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v4, v7

    const-string v7, "getInternal"

    invoke-static {v3, v7, v1, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    invoke-direct {p0, p1}, Lanet/channel/SessionCenter;->getSessionRequestByUrl(Lanet/channel/util/HttpUrl;)Lanet/channel/SessionRequest;

    move-result-object v11

    .line 411
    iget-object v1, v0, Lanet/channel/SessionCenter;->sessionPool:Lanet/channel/SessionPool;

    invoke-virtual {v1, v11, p2}, Lanet/channel/SessionPool;->getSession(Lanet/channel/SessionRequest;I)Lanet/channel/Session;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 414
    iget-object v1, v0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    const-string/jumbo v5, "session"

    aput-object v5, v4, v2

    aput-object v12, v4, v6

    const-string v2, "get internal hit cache session"

    invoke-static {v3, v2, v1, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 416
    :cond_1
    iget-object v1, v0, Lanet/channel/SessionCenter;->config:Lanet/channel/Config;

    sget-object v4, Lanet/channel/Config;->DEFAULT_CONFIG:Lanet/channel/Config;

    if-ne v1, v4, :cond_3

    sget v1, Lanet/channel/entity/SessionType;->SHORT_LINK:I

    if-eq v8, v1, :cond_3

    if-eqz p5, :cond_2

    .line 419
    invoke-interface/range {p5 .. p5}, Lanet/channel/SessionGetCallback;->onSessionGetFail()V

    :cond_2
    const/4 v1, 0x0

    return-object v1

    .line 424
    :cond_3
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Lanet/channel/entity/SessionType;->LONG_LINK:I

    if-ne v8, v1, :cond_5

    invoke-static {}, Lanet/channel/AwcnConfig;->isAccsSessionCreateForbiddenInBg()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 427
    iget-object v1, v0, Lanet/channel/SessionCenter;->attributeManager:Lanet/channel/SessionAttributeManager;

    invoke-virtual {p1}, Lanet/channel/util/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lanet/channel/SessionAttributeManager;->getSessionInfo(Ljava/lang/String;)Lanet/channel/SessionInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 428
    iget-boolean v1, v1, Lanet/channel/SessionInfo;->isAccs:Z

    if-nez v1, :cond_4

    goto :goto_1

    .line 429
    :cond_4
    iget-object v1, v0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "app background, forbid to create accs session"

    invoke-static {v3, v4, v1, v2}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 430
    new-instance v1, Ljava/net/ConnectException;

    const-string v2, "accs session connecting forbidden in background"

    invoke-direct {v1, v2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 433
    :cond_5
    :goto_1
    iget-object v2, v0, Lanet/channel/SessionCenter;->context:Landroid/content/Context;

    iget-object v1, v0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    invoke-static {v1}, Lanet/channel/util/SessionSeq;->createSequenceNo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v11

    move v3, p2

    move-object/from16 v5, p5

    move-wide/from16 v6, p3

    invoke-virtual/range {v1 .. v7}, Lanet/channel/SessionRequest;->start(Landroid/content/Context;ILjava/lang/String;Lanet/channel/SessionGetCallback;J)V

    if-nez p5, :cond_8

    const-wide/16 v1, 0x0

    cmp-long v3, v9, v1

    if-lez v3, :cond_8

    .line 434
    sget v1, Lanet/channel/entity/SessionType;->ALL:I

    if-eq v8, v1, :cond_6

    invoke-virtual {v11}, Lanet/channel/SessionRequest;->getConnectingType()I

    move-result v1

    if-ne v1, v8, :cond_8

    .line 437
    :cond_6
    invoke-virtual {v11, v9, v10}, Lanet/channel/SessionRequest;->await(J)V

    .line 438
    iget-object v1, v0, Lanet/channel/SessionCenter;->sessionPool:Lanet/channel/SessionPool;

    invoke-virtual {v1, v11, p2}, Lanet/channel/SessionPool;->getSession(Lanet/channel/SessionRequest;I)Lanet/channel/Session;

    move-result-object v12

    if-eqz v12, :cond_7

    goto :goto_2

    .line 440
    :cond_7
    new-instance v1, Ljava/net/ConnectException;

    const-string/jumbo v2, "session connecting failed or timeout"

    invoke-direct {v1, v2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    :goto_2
    return-object v12

    .line 404
    :cond_9
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "httpUrl is null"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 399
    :cond_a
    iget-object v1, v0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "getInternal not inited!"

    invoke-static {v3, v4, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getInternal not inited"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getSessionRequest(Ljava/lang/String;)Lanet/channel/SessionRequest;
    .locals 3

    .line 538
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 543
    :cond_0
    iget-object v0, p0, Lanet/channel/SessionCenter;->srCache:Landroid/util/LruCache;

    monitor-enter v0

    .line 544
    :try_start_0
    iget-object v1, p0, Lanet/channel/SessionCenter;->srCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/SessionRequest;

    if-nez v1, :cond_1

    .line 546
    new-instance v1, Lanet/channel/SessionRequest;

    invoke-direct {v1, p1, p0}, Lanet/channel/SessionRequest;-><init>(Ljava/lang/String;Lanet/channel/SessionCenter;)V

    .line 547
    iget-object v2, p0, Lanet/channel/SessionCenter;->srCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getThrowsException(Lanet/channel/util/HttpUrl;IJ)Lanet/channel/Session;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    .line 276
    invoke-virtual/range {v0 .. v5}, Lanet/channel/SessionCenter;->getInternal(Lanet/channel/util/HttpUrl;IJLanet/channel/SessionGetCallback;)Lanet/channel/Session;

    move-result-object p1

    return-object p1
.end method

.method public getThrowsException(Lanet/channel/util/HttpUrl;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 281
    sget-object v0, Lanet/channel/entity/ConnType$TypeLevel;->SPDY:Lanet/channel/entity/ConnType$TypeLevel;

    if-ne p2, v0, :cond_0

    sget p2, Lanet/channel/entity/SessionType;->LONG_LINK:I

    goto :goto_0

    :cond_0
    sget p2, Lanet/channel/entity/SessionType;->SHORT_LINK:I

    :goto_0
    move v2, p2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lanet/channel/SessionCenter;->getInternal(Lanet/channel/util/HttpUrl;IJLanet/channel/SessionGetCallback;)Lanet/channel/Session;

    move-result-object p1

    return-object p1
.end method

.method public getThrowsException(Ljava/lang/String;J)Lanet/channel/Session;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 264
    invoke-static {p1}, Lanet/channel/util/HttpUrl;->parse(Ljava/lang/String;)Lanet/channel/util/HttpUrl;

    move-result-object v1

    sget v2, Lanet/channel/entity/SessionType;->ALL:I

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v3, p2

    invoke-virtual/range {v0 .. v5}, Lanet/channel/SessionCenter;->getInternal(Lanet/channel/util/HttpUrl;IJLanet/channel/SessionGetCallback;)Lanet/channel/Session;

    move-result-object p1

    return-object p1
.end method

.method public getThrowsException(Ljava/lang/String;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 269
    invoke-static {p1}, Lanet/channel/util/HttpUrl;->parse(Ljava/lang/String;)Lanet/channel/util/HttpUrl;

    move-result-object v1

    sget-object p1, Lanet/channel/entity/ConnType$TypeLevel;->SPDY:Lanet/channel/entity/ConnType$TypeLevel;

    if-ne p2, p1, :cond_0

    sget p1, Lanet/channel/entity/SessionType;->LONG_LINK:I

    goto :goto_0

    :cond_0
    sget p1, Lanet/channel/entity/SessionType;->SHORT_LINK:I

    :goto_0
    move v2, p1

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lanet/channel/SessionCenter;->getInternal(Lanet/channel/util/HttpUrl;IJLanet/channel/SessionGetCallback;)Lanet/channel/Session;

    move-result-object p1

    return-object p1
.end method

.method public registerPublicKey(Ljava/lang/String;I)V
    .locals 1

    .line 372
    iget-object v0, p0, Lanet/channel/SessionCenter;->attributeManager:Lanet/channel/SessionAttributeManager;

    invoke-virtual {v0, p1, p2}, Lanet/channel/SessionAttributeManager;->registerPublicKey(Ljava/lang/String;I)V

    return-void
.end method

.method public registerSessionInfo(Lanet/channel/SessionInfo;)V
    .locals 1

    .line 358
    iget-object v0, p0, Lanet/channel/SessionCenter;->attributeManager:Lanet/channel/SessionAttributeManager;

    invoke-virtual {v0, p1}, Lanet/channel/SessionAttributeManager;->registerSessionInfo(Lanet/channel/SessionInfo;)V

    .line 359
    iget-boolean p1, p1, Lanet/channel/SessionInfo;->isKeepAlive:Z

    if-eqz p1, :cond_0

    .line 360
    iget-object p1, p0, Lanet/channel/SessionCenter;->accsSessionManager:Lanet/channel/AccsSessionManager;

    invoke-virtual {p1}, Lanet/channel/AccsSessionManager;->checkAndStartSession()V

    :cond_0
    return-void
.end method

.method public declared-synchronized switchEnv(Lanet/channel/entity/ENV;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 165
    :try_start_0
    invoke-static {p1}, Lanet/channel/SessionCenter;->switchEnvironment(Lanet/channel/entity/ENV;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unregisterSessionInfo(Ljava/lang/String;)V
    .locals 1

    .line 365
    iget-object v0, p0, Lanet/channel/SessionCenter;->attributeManager:Lanet/channel/SessionAttributeManager;

    invoke-virtual {v0, p1}, Lanet/channel/SessionAttributeManager;->unregisterSessionInfo(Ljava/lang/String;)Lanet/channel/SessionInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 366
    iget-boolean p1, p1, Lanet/channel/SessionInfo;->isKeepAlive:Z

    if-eqz p1, :cond_0

    .line 367
    iget-object p1, p0, Lanet/channel/SessionCenter;->accsSessionManager:Lanet/channel/AccsSessionManager;

    invoke-virtual {p1}, Lanet/channel/AccsSessionManager;->checkAndStartSession()V

    :cond_0
    return-void
.end method
