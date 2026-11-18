.class Lanet/channel/strategy/StrategyTable;
.super Ljava/lang/Object;
.source "StrategyTable.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/strategy/StrategyTable$HostLruCache;
    }
.end annotation


# static fields
.field private static final FRESH_TTL:I = 0x7530

.field private static final MAX_HOST_COUNT_IN_ONCE_UPDATE:I = 0x28

.field private static final MAX_HOST_SIZE:I = 0x100

.field private static final TAG:Ljava/lang/String; = "awcn.StrategyTable"

.field protected static comparator:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lanet/channel/strategy/StrategyCollection;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x53e32b30cbbba6ceL


# instance fields
.field protected volatile clientIp:Ljava/lang/String;

.field private volatile transient configVersion:I

.field enableQuic:Z

.field private hostStrategyMap:Lanet/channel/strategy/StrategyTable$HostLruCache;

.field ipv6BlackList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected transient isChanged:Z

.field protected uniqueId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lanet/channel/strategy/StrategyTable$1;

    invoke-direct {v0}, Lanet/channel/strategy/StrategyTable$1;-><init>()V

    sput-object v0, Lanet/channel/strategy/StrategyTable;->comparator:Ljava/util/Comparator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lanet/channel/strategy/StrategyTable;->enableQuic:Z

    .line 52
    iput-boolean v0, p0, Lanet/channel/strategy/StrategyTable;->isChanged:Z

    .line 91
    iput-object p1, p0, Lanet/channel/strategy/StrategyTable;->uniqueId:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lanet/channel/strategy/StrategyTable;->checkInit()V

    return-void
.end method

.method private checkInitHost()V
    .locals 6

    .line 298
    :try_start_0
    invoke-static {}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;

    move-result-object v0

    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->uniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lanet/channel/strategy/dispatch/HttpDispatcher;->isInitHostsChanged(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 300
    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->hostStrategyMap:Lanet/channel/strategy/StrategyTable$HostLruCache;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :try_start_1
    invoke-static {}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInitHosts()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 302
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->hostStrategyMap:Lanet/channel/strategy/StrategyTable$HostLruCache;

    invoke-virtual {v4, v3}, Lanet/channel/strategy/StrategyTable$HostLruCache;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 303
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->hostStrategyMap:Lanet/channel/strategy/StrategyTable$HostLruCache;

    new-instance v5, Lanet/channel/strategy/StrategyCollection;

    invoke-direct {v5, v3}, Lanet/channel/strategy/StrategyCollection;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v5}, Lanet/channel/strategy/StrategyTable$HostLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 305
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 307
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 310
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 312
    :try_start_2
    invoke-direct {p0, v0}, Lanet/channel/strategy/StrategyTable;->sendAmdcRequest(Ljava/util/Set;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 310
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 316
    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->uniqueId:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "awcn.StrategyTable"

    const-string v4, "checkInitHost failed"

    invoke-static {v3, v4, v1, v0, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private fillUpdateHosts(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 279
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lanet/channel/strategy/StrategyTable;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 280
    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->hostStrategyMap:Lanet/channel/strategy/StrategyTable$HostLruCache;

    monitor-enter v1

    .line 281
    :try_start_0
    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->hostStrategyMap:Lanet/channel/strategy/StrategyTable$HostLruCache;

    invoke-virtual {v2}, Lanet/channel/strategy/StrategyTable$HostLruCache;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 282
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 284
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 285
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lanet/channel/strategy/StrategyCollection;

    .line 287
    invoke-virtual {v3}, Lanet/channel/strategy/StrategyCollection;->isExpired()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    const/16 v5, 0x28

    if-ge v4, v5, :cond_0

    const-wide/16 v4, 0x7530

    add-long/2addr v4, v1

    .line 288
    iput-wide v4, v3, Lanet/channel/strategy/StrategyCollection;->ttl:J

    .line 289
    iget-object v3, v3, Lanet/channel/strategy/StrategyCollection;->host:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 282
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private initStrategy()V
    .locals 4

    .line 96
    invoke-static {}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;

    move-result-object v0

    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->uniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lanet/channel/strategy/dispatch/HttpDispatcher;->isInitHostsChanged(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-static {}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInitHosts()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->hostStrategyMap:Lanet/channel/strategy/StrategyTable$HostLruCache;

    new-instance v3, Lanet/channel/strategy/StrategyCollection;

    invoke-direct {v3, v1}, Lanet/channel/strategy/StrategyCollection;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lanet/channel/strategy/StrategyTable$HostLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendAmdcRequest(Ljava/lang/String;)V
    .locals 1

    .line 222
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 223
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-direct {p0, v0}, Lanet/channel/strategy/StrategyTable;->sendAmdcRequest(Ljava/util/Set;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private sendAmdcRequest(Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 247
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 251
    :cond_0
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-wide v0, Lanet/channel/util/AppLifecycle;->lastEnterBackgroundTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    :cond_1
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 252
    :cond_2
    iget-object p1, p0, Lanet/channel/strategy/StrategyTable;->uniqueId:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "awcn.StrategyTable"

    const-string v2, "app in background or no network"

    invoke-static {v1, v2, p1, v0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 256
    :cond_3
    invoke-static {}, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->getAmdcLimitLevel()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    return-void

    .line 261
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 262
    iget-object v3, p0, Lanet/channel/strategy/StrategyTable;->hostStrategyMap:Lanet/channel/strategy/StrategyTable$HostLruCache;

    monitor-enter v3

    .line 263
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 264
    iget-object v6, p0, Lanet/channel/strategy/StrategyTable;->hostStrategyMap:Lanet/channel/strategy/StrategyTable$HostLruCache;

    invoke-virtual {v6, v5}, Lanet/channel/strategy/StrategyTable$HostLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lanet/channel/strategy/StrategyCollection;

    if-eqz v5, :cond_5

    const-wide/16 v6, 0x7530

    add-long/2addr v6, v1

    .line 266
    iput-wide v6, v5, Lanet/channel/strategy/StrategyCollection;->ttl:J

    goto :goto_0

    .line 269
    :cond_6
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_7

    .line 272
    invoke-direct {p0, p1}, Lanet/channel/strategy/StrategyTable;->fillUpdateHosts(Ljava/util/Set;)V

    .line 275
    :cond_7
    invoke-static {}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;

    move-result-object v0

    iget v1, p0, Lanet/channel/strategy/StrategyTable;->configVersion:I

    invoke-virtual {v0, p1, v1}, Lanet/channel/strategy/dispatch/HttpDispatcher;->sendAmdcRequest(Ljava/util/Set;I)V

    return-void

    :catchall_0
    move-exception p1

    .line 269
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_8
    :goto_1
    return-void
.end method


# virtual methods
.method protected checkInit()V
    .locals 5

    .line 106
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->hostStrategyMap:Lanet/channel/strategy/StrategyTable$HostLruCache;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lanet/channel/strategy/StrategyTable$HostLruCache;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lanet/channel/strategy/StrategyTable$HostLruCache;-><init>(I)V

    iput-object v0, p0, Lanet/channel/strategy/StrategyTable;->hostStrategyMap:Lanet/channel/strategy/StrategyTable$HostLruCache;

    .line 108
    invoke-direct {p0}, Lanet/channel/strategy/StrategyTable;->initStrategy()V

    .line 110
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->hostStrategyMap:Lanet/channel/strategy/StrategyTable$HostLruCache;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyTable$HostLruCache;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/StrategyCollection;

    .line 111
    invoke-virtual {v1}, Lanet/channel/strategy/StrategyCollection;->checkInit()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 114
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "size"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->hostStrategyMap:Lanet/channel/strategy/StrategyTable$HostLruCache;

    invoke-virtual {v4}, Lanet/channel/strategy/StrategyTable$HostLruCache;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "awcn.StrategyTable"

    const-string/jumbo v4, "strategy map"

    invoke-static {v3, v4, v0, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isTargetProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    :goto_1
    iput v2, p0, Lanet/channel/strategy/StrategyTable;->configVersion:I

    .line 118
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->ipv6BlackList:Ljava/util/Map;

    if-nez v0, :cond_3

    .line 119
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyTable;->ipv6BlackList:Ljava/util/Map;

    :cond_3
    return-void
.end method

.method public getCnameByHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 153
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->hostStrategyMap:Lanet/channel/strategy/StrategyTable$HostLruCache;

    monitor-enter v0

    .line 154
    :try_start_0
    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->hostStrategyMap:Lanet/channel/strategy/StrategyTable$HostLruCache;

    invoke-virtual {v2, p1}, Lanet/channel/strategy/StrategyTable$HostLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/strategy/StrategyCollection;

    .line 155
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 156
    invoke-virtual {v2}, Lanet/channel/strategy/StrategyCollection;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->getAmdcLimitLevel()I

    move-result v0

    if-nez v0, :cond_1

    .line 157
    invoke-direct {p0, p1}, Lanet/channel/strategy/StrategyTable;->sendAmdcRequest(Ljava/lang/String;)V

    :cond_1
    if-eqz v2, :cond_2

    .line 160
    iget-object v1, v2, Lanet/channel/strategy/StrategyCollection;->cname:Ljava/lang/String;

    :cond_2
    return-object v1

    :catchall_0
    move-exception p1

    .line 155
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method isHostInIpv6BlackList(Ljava/lang/String;J)Z
    .locals 4

    .line 349
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->ipv6BlackList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 352
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    cmp-long v0, v2, p2

    if-gez v0, :cond_1

    .line 353
    iget-object p2, p0, Lanet/channel/strategy/StrategyTable;->ipv6BlackList:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method notifyConnEvent(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V
    .locals 9

    const/4 v0, 0x1

    .line 324
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    .line 325
    new-array v1, v1, [Ljava/lang/Object;

    const-string v7, "Host"

    aput-object v7, v1, v5

    aput-object p1, v1, v0

    const-string v7, "IConnStrategy"

    aput-object v7, v1, v4

    aput-object p2, v1, v3

    const-string v7, "ConnEvent"

    aput-object v7, v1, v2

    const/4 v7, 0x5

    aput-object p3, v1, v7

    const-string v7, "awcn.StrategyTable"

    const-string v8, "[notifyConnEvent]"

    invoke-static {v7, v8, v6, v1}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    :cond_0
    invoke-interface {p2}, Lanet/channel/strategy/IConnStrategy;->getProtocol()Lanet/channel/strategy/ConnProtocol;

    move-result-object v1

    iget-object v1, v1, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    const-string/jumbo v7, "quic"

    .line 329
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "quicplain"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 330
    :cond_1
    iget-boolean v1, p3, Lanet/channel/strategy/ConnEvent;->isSuccess:Z

    iput-boolean v1, p0, Lanet/channel/strategy/StrategyTable;->enableQuic:Z

    .line 331
    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v7, "uniqueId"

    aput-object v7, v1, v5

    iget-object v7, p0, Lanet/channel/strategy/StrategyTable;->uniqueId:Ljava/lang/String;

    aput-object v7, v1, v0

    const-string v7, "enable"

    aput-object v7, v1, v4

    iget-boolean v7, p3, Lanet/channel/strategy/ConnEvent;->isSuccess:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v1, v3

    const-string v7, "awcn.StrategyTable"

    const-string v8, "enbale quic"

    invoke-static {v7, v8, v6, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    :cond_2
    iget-boolean v1, p3, Lanet/channel/strategy/ConnEvent;->isSuccess:Z

    if-nez v1, :cond_3

    invoke-interface {p2}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lanet/channel/strategy/utils/Utils;->isIPV6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 335
    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->ipv6BlackList:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v1, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "uniqueId"

    aput-object v2, v1, v5

    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->uniqueId:Ljava/lang/String;

    aput-object v2, v1, v0

    const-string v0, "host"

    aput-object v0, v1, v4

    aput-object p1, v1, v3

    const-string v0, "awcn.StrategyTable"

    const-string v2, "disable ipv6"

    invoke-static {v0, v2, v6, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    :cond_3
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->hostStrategyMap:Lanet/channel/strategy/StrategyTable$HostLruCache;

    monitor-enter v0

    .line 341
    :try_start_0
    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->hostStrategyMap:Lanet/channel/strategy/StrategyTable$HostLruCache;

    invoke-virtual {v1, p1}, Lanet/channel/strategy/StrategyTable$HostLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanet/channel/strategy/StrategyCollection;

    .line 342
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    .line 344
    invoke-virtual {p1, p2, p3}, Lanet/channel/strategy/StrategyCollection;->notifyConnEvent(Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 342
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public queryByHost(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lanet/channel/strategy/IConnStrategy;",
            ">;"
        }
    .end annotation

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lanet/channel/strategy/utils/Utils;->checkHostValidAndNotIp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    invoke-direct {p0}, Lanet/channel/strategy/StrategyTable;->checkInitHost()V

    .line 135
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->hostStrategyMap:Lanet/channel/strategy/StrategyTable$HostLruCache;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->hostStrategyMap:Lanet/channel/strategy/StrategyTable$HostLruCache;

    invoke-virtual {v1, p1}, Lanet/channel/strategy/StrategyTable$HostLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/StrategyCollection;

    if-nez v1, :cond_1

    .line 138
    new-instance v1, Lanet/channel/strategy/StrategyCollection;

    invoke-direct {v1, p1}, Lanet/channel/strategy/StrategyCollection;-><init>(Ljava/lang/String;)V

    .line 139
    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->hostStrategyMap:Lanet/channel/strategy/StrategyTable$HostLruCache;

    invoke-virtual {v2, p1, v1}, Lanet/channel/strategy/StrategyTable$HostLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    iget-wide v2, v1, Lanet/channel/strategy/StrategyCollection;->ttl:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lanet/channel/strategy/StrategyCollection;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->getAmdcLimitLevel()I

    move-result v0

    if-nez v0, :cond_3

    .line 143
    :cond_2
    invoke-direct {p0, p1}, Lanet/channel/strategy/StrategyTable;->sendAmdcRequest(Ljava/lang/String;)V

    .line 145
    :cond_3
    invoke-virtual {v1}, Lanet/channel/strategy/StrategyCollection;->queryStrategyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 141
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 129
    :cond_4
    :goto_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method protected sendAmdcRequest(Ljava/lang/String;Z)V
    .locals 6

    .line 228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->hostStrategyMap:Lanet/channel/strategy/StrategyTable$HostLruCache;

    monitor-enter v0

    .line 234
    :try_start_0
    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->hostStrategyMap:Lanet/channel/strategy/StrategyTable$HostLruCache;

    invoke-virtual {v1, p1}, Lanet/channel/strategy/StrategyTable$HostLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/StrategyCollection;

    if-nez v1, :cond_1

    .line 236
    new-instance v1, Lanet/channel/strategy/StrategyCollection;

    invoke-direct {v1, p1}, Lanet/channel/strategy/StrategyCollection;-><init>(Ljava/lang/String;)V

    .line 237
    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->hostStrategyMap:Lanet/channel/strategy/StrategyTable$HostLruCache;

    invoke-virtual {v2, p1, v1}, Lanet/channel/strategy/StrategyTable$HostLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_2

    .line 241
    iget-wide v2, v1, Lanet/channel/strategy/StrategyCollection;->ttl:J

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-eqz p2, :cond_2

    invoke-virtual {v1}, Lanet/channel/strategy/StrategyCollection;->isExpired()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->getAmdcLimitLevel()I

    move-result p2

    if-nez p2, :cond_3

    .line 242
    :cond_2
    invoke-direct {p0, p1}, Lanet/channel/strategy/StrategyTable;->sendAmdcRequest(Ljava/lang/String;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 239
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public update(Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;)V
    .locals 7

    .line 168
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->uniqueId:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "awcn.StrategyTable"

    const-string/jumbo v4, "update strategyTable with httpDns response"

    invoke-static {v3, v4, v0, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    :try_start_0
    iget-object v0, p1, Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;->clientIp:Ljava/lang/String;

    iput-object v0, p0, Lanet/channel/strategy/StrategyTable;->clientIp:Ljava/lang/String;

    .line 171
    iget v0, p1, Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;->configVersion:I

    iput v0, p0, Lanet/channel/strategy/StrategyTable;->configVersion:I

    .line 172
    iget-object p1, p1, Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;->dnsInfo:[Lanet/channel/strategy/StrategyResultParser$DnsInfo;

    if-nez p1, :cond_0

    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->hostStrategyMap:Lanet/channel/strategy/StrategyTable$HostLruCache;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .line 178
    :goto_0
    :try_start_1
    array-length v3, p1

    if-ge v2, v3, :cond_5

    .line 179
    aget-object v3, p1, v2

    if-eqz v3, :cond_4

    .line 180
    iget-object v4, v3, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->host:Ljava/lang/String;

    if-nez v4, :cond_1

    goto :goto_1

    .line 184
    :cond_1
    iget-boolean v4, v3, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->clear:Z

    if-eqz v4, :cond_2

    .line 185
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->hostStrategyMap:Lanet/channel/strategy/StrategyTable$HostLruCache;

    iget-object v3, v3, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->host:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lanet/channel/strategy/StrategyTable$HostLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 189
    :cond_2
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->hostStrategyMap:Lanet/channel/strategy/StrategyTable$HostLruCache;

    iget-object v5, v3, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->host:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lanet/channel/strategy/StrategyTable$HostLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lanet/channel/strategy/StrategyCollection;

    if-nez v4, :cond_3

    .line 191
    new-instance v4, Lanet/channel/strategy/StrategyCollection;

    iget-object v5, v3, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->host:Ljava/lang/String;

    invoke-direct {v4, v5}, Lanet/channel/strategy/StrategyCollection;-><init>(Ljava/lang/String;)V

    .line 192
    iget-object v5, p0, Lanet/channel/strategy/StrategyTable;->hostStrategyMap:Lanet/channel/strategy/StrategyTable$HostLruCache;

    iget-object v6, v3, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->host:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lanet/channel/strategy/StrategyTable$HostLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_3
    invoke-virtual {v4, v3}, Lanet/channel/strategy/StrategyCollection;->update(Lanet/channel/strategy/StrategyResultParser$DnsInfo;)V

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    :cond_5
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 199
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->uniqueId:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "awcn.StrategyTable"

    const-string v4, "fail to update strategyTable"

    invoke-static {v3, v4, v0, p1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_2
    const/4 p1, 0x1

    .line 202
    iput-boolean p1, p0, Lanet/channel/strategy/StrategyTable;->isChanged:Z

    .line 204
    invoke-static {p1}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 205
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "uniqueId : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->uniqueId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n-------------------------domains:------------------------------------"

    .line 206
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "awcn.StrategyTable"

    invoke-static {v4, v0, v3, v2}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->hostStrategyMap:Lanet/channel/strategy/StrategyTable$HostLruCache;

    monitor-enter v0

    .line 209
    :try_start_3
    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->hostStrategyMap:Lanet/channel/strategy/StrategyTable$HostLruCache;

    invoke-virtual {v2}, Lanet/channel/strategy/StrategyTable$HostLruCache;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 210
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 211
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lanet/channel/strategy/StrategyCollection;

    invoke-virtual {v4}, Lanet/channel/strategy/StrategyCollection;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "awcn.StrategyTable"

    .line 212
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4, v5, v3, v6}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 214
    :cond_6
    monitor-exit v0

    goto :goto_4

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_7
    :goto_4
    return-void
.end method
