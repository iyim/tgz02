.class Lanet/channel/strategy/StrategyConfig;
.super Ljava/lang/Object;
.source "StrategyConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NO_RESULT:Ljava/lang/String; = "No_Result"

.field private static final serialVersionUID:J = -0x6c39d67633fe8c1bL


# instance fields
.field private transient holder:Lanet/channel/strategy/StrategyInfoHolder;

.field private schemeMap:Lanet/channel/strategy/utils/SerialLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lanet/channel/strategy/utils/SerialLruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unitMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lanet/channel/strategy/StrategyConfig;->schemeMap:Lanet/channel/strategy/utils/SerialLruCache;

    .line 23
    iput-object v0, p0, Lanet/channel/strategy/StrategyConfig;->unitMap:Ljava/util/Map;

    .line 24
    iput-object v0, p0, Lanet/channel/strategy/StrategyConfig;->holder:Lanet/channel/strategy/StrategyInfoHolder;

    return-void
.end method


# virtual methods
.method checkInit()V
    .locals 2

    .line 34
    iget-object v0, p0, Lanet/channel/strategy/StrategyConfig;->schemeMap:Lanet/channel/strategy/utils/SerialLruCache;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lanet/channel/strategy/utils/SerialLruCache;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lanet/channel/strategy/utils/SerialLruCache;-><init>(I)V

    iput-object v0, p0, Lanet/channel/strategy/StrategyConfig;->schemeMap:Lanet/channel/strategy/utils/SerialLruCache;

    .line 37
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyConfig;->unitMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyConfig;->unitMap:Ljava/util/Map;

    :cond_1
    return-void
.end method

.method getSafeAislesByHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-static {p1}, Lanet/channel/strategy/utils/Utils;->checkHostValidAndNotIp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 105
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyConfig;->schemeMap:Lanet/channel/strategy/utils/SerialLruCache;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v2, p0, Lanet/channel/strategy/StrategyConfig;->schemeMap:Lanet/channel/strategy/utils/SerialLruCache;

    invoke-virtual {v2, p1}, Lanet/channel/strategy/utils/SerialLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    .line 108
    iget-object v3, p0, Lanet/channel/strategy/StrategyConfig;->schemeMap:Lanet/channel/strategy/utils/SerialLruCache;

    const-string v4, "No_Result"

    invoke-virtual {v3, p1, v4}, Lanet/channel/strategy/utils/SerialLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    .line 113
    iget-object v0, p0, Lanet/channel/strategy/StrategyConfig;->holder:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyInfoHolder;->getCurrStrategyTable()Lanet/channel/strategy/StrategyTable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lanet/channel/strategy/StrategyTable;->sendAmdcRequest(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string p1, "No_Result"

    .line 114
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    move-object v1, v2

    :goto_1
    return-object v1

    :catchall_0
    move-exception p1

    .line 110
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    :goto_2
    return-object v1
.end method

.method getUnitByHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 129
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyConfig;->unitMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method setHolder(Lanet/channel/strategy/StrategyInfoHolder;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lanet/channel/strategy/StrategyConfig;->holder:Lanet/channel/strategy/StrategyInfoHolder;

    return-void
.end method

.method update(Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;)V
    .locals 8

    .line 43
    iget-object v0, p1, Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;->dnsInfo:[Lanet/channel/strategy/StrategyResultParser$DnsInfo;

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v1

    const/4 v2, 0x0

    .line 50
    :goto_0
    :try_start_0
    iget-object v4, p1, Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;->dnsInfo:[Lanet/channel/strategy/StrategyResultParser$DnsInfo;

    array-length v4, v4

    if-ge v2, v4, :cond_6

    .line 51
    iget-object v4, p1, Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;->dnsInfo:[Lanet/channel/strategy/StrategyResultParser$DnsInfo;

    aget-object v4, v4, v2

    .line 52
    iget-boolean v5, v4, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->clear:Z

    if-eqz v5, :cond_1

    .line 53
    iget-object v5, p0, Lanet/channel/strategy/StrategyConfig;->schemeMap:Lanet/channel/strategy/utils/SerialLruCache;

    iget-object v4, v4, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->host:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lanet/channel/strategy/utils/SerialLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 57
    :cond_1
    iget-object v5, v4, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->cname:Ljava/lang/String;

    if-eqz v5, :cond_3

    if-nez v3, :cond_2

    .line 59
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 61
    :cond_2
    iget-object v5, v4, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->host:Ljava/lang/String;

    iget-object v4, v4, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->cname:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const-string v5, "http"

    .line 66
    iget-object v6, v4, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->safeAisles:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "https"

    iget-object v6, v4, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->safeAisles:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 68
    iget-object v5, p0, Lanet/channel/strategy/StrategyConfig;->schemeMap:Lanet/channel/strategy/utils/SerialLruCache;

    iget-object v6, v4, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->host:Ljava/lang/String;

    const-string v7, "No_Result"

    invoke-virtual {v5, v6, v7}, Lanet/channel/strategy/utils/SerialLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 70
    :cond_4
    iget-object v5, p0, Lanet/channel/strategy/StrategyConfig;->schemeMap:Lanet/channel/strategy/utils/SerialLruCache;

    iget-object v6, v4, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->host:Ljava/lang/String;

    iget-object v7, v4, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->safeAisles:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lanet/channel/strategy/utils/SerialLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :goto_1
    iget-object v5, v4, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->unit:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 75
    iget-object v5, p0, Lanet/channel/strategy/StrategyConfig;->unitMap:Ljava/util/Map;

    iget-object v6, v4, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->host:Ljava/lang/String;

    iget-object v4, v4, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->unit:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 77
    :cond_5
    iget-object v5, p0, Lanet/channel/strategy/StrategyConfig;->unitMap:Ljava/util/Map;

    iget-object v4, v4, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->host:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    if-eqz v3, :cond_8

    .line 83
    invoke-virtual {v3}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 84
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 85
    iget-object v4, p0, Lanet/channel/strategy/StrategyConfig;->schemeMap:Lanet/channel/strategy/utils/SerialLruCache;

    invoke-virtual {v4, v3}, Lanet/channel/strategy/utils/SerialLruCache;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 86
    iget-object v4, p0, Lanet/channel/strategy/StrategyConfig;->schemeMap:Lanet/channel/strategy/utils/SerialLruCache;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iget-object v5, p0, Lanet/channel/strategy/StrategyConfig;->schemeMap:Lanet/channel/strategy/utils/SerialLruCache;

    invoke-virtual {v5, v3}, Lanet/channel/strategy/utils/SerialLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lanet/channel/strategy/utils/SerialLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 88
    :cond_7
    iget-object v3, p0, Lanet/channel/strategy/StrategyConfig;->schemeMap:Lanet/channel/strategy/utils/SerialLruCache;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v4, "No_Result"

    invoke-virtual {v3, v2, v4}, Lanet/channel/strategy/utils/SerialLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 92
    :cond_8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 93
    invoke-static {p1}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x2

    .line 94
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "SchemeMap"

    aput-object v4, v3, v0

    iget-object v4, p0, Lanet/channel/strategy/StrategyConfig;->schemeMap:Lanet/channel/strategy/utils/SerialLruCache;

    invoke-virtual {v4}, Lanet/channel/strategy/utils/SerialLruCache;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    const-string v4, "awcn.StrategyConfig"

    const-string v5, ""

    invoke-static {v4, v5, v1, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "UnitMap"

    aput-object v3, v2, v0

    iget-object v0, p0, Lanet/channel/strategy/StrategyConfig;->unitMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "awcn.StrategyConfig"

    const-string v0, ""

    invoke-static {p1, v0, v1, v2}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    return-void

    :catchall_0
    move-exception p1

    .line 92
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method
