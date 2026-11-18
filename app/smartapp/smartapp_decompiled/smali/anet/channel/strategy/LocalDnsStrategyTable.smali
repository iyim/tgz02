.class Lanet/channel/strategy/LocalDnsStrategyTable;
.super Ljava/lang/Object;
.source "LocalDnsStrategyTable.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "awcn.LocalDnsStrategyTable"


# instance fields
.field final localStrategyMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lanet/channel/strategy/IPConnStrategy;",
            ">;>;"
        }
    .end annotation
.end field

.field final lockObjMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/LocalDnsStrategyTable;->localStrategyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/LocalDnsStrategyTable;->lockObjMap:Ljava/util/HashMap;

    return-void
.end method

.method private startLocalDnsLookup(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 109
    new-instance v0, Lanet/channel/strategy/LocalDnsStrategyTable$1;

    invoke-direct {v0, p0, p1, p2}, Lanet/channel/strategy/LocalDnsStrategyTable$1;-><init>(Lanet/channel/strategy/LocalDnsStrategyTable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lanet/channel/strategy/utils/AmdcThreadPoolExecutor;->submitTask(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method notifyConnEvent(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V
    .locals 2

    .line 90
    iget-boolean p3, p3, Lanet/channel/strategy/ConnEvent;->isSuccess:Z

    if-nez p3, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_1

    .line 94
    :cond_0
    iget-object p3, p0, Lanet/channel/strategy/LocalDnsStrategyTable;->localStrategyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-eqz p3, :cond_3

    .line 95
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq p3, v0, :cond_3

    .line 96
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 97
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p2, :cond_1

    .line 99
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 102
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 103
    iget-object p2, p0, Lanet/channel/strategy/LocalDnsStrategyTable;->localStrategyMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object p3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p2, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method

.method queryByHost(Ljava/lang/String;)Ljava/util/List;
    .locals 9

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Lanet/channel/strategy/utils/Utils;->checkHostValidAndNotIp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lanet/channel/strategy/dispatch/DispatchConstants;->getAmdcServerDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x1

    .line 40
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 41
    new-array v1, v3, [Ljava/lang/Object;

    const-string v5, "host"

    aput-object v5, v1, v2

    aput-object p1, v1, v0

    const-string v5, "awcn.LocalDnsStrategyTable"

    const-string/jumbo v6, "try resolve ip with local dns"

    invoke-static {v5, v6, v4, v1}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    :cond_1
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 45
    iget-object v5, p0, Lanet/channel/strategy/LocalDnsStrategyTable;->localStrategyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 47
    iget-object v5, p0, Lanet/channel/strategy/LocalDnsStrategyTable;->lockObjMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 48
    :try_start_0
    iget-object v6, p0, Lanet/channel/strategy/LocalDnsStrategyTable;->lockObjMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 49
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 50
    iget-object v7, p0, Lanet/channel/strategy/LocalDnsStrategyTable;->lockObjMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-direct {p0, p1, v6}, Lanet/channel/strategy/LocalDnsStrategyTable;->startLocalDnsLookup(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    :cond_2
    iget-object v6, p0, Lanet/channel/strategy/LocalDnsStrategyTable;->lockObjMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 55
    :goto_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v6, :cond_3

    .line 58
    :try_start_1
    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v7, 0x1f4

    .line 59
    :try_start_2
    invoke-virtual {v6, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 60
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    nop

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 55
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    .line 66
    :cond_3
    :goto_1
    iget-object v5, p0, Lanet/channel/strategy/LocalDnsStrategyTable;->localStrategyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_4

    .line 67
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq p1, v5, :cond_4

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 70
    :cond_4
    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v5, "strategyList"

    aput-object v5, v3, v2

    aput-object p1, v3, v0

    const-string p1, "awcn.LocalDnsStrategyTable"

    const-string v0, "get local strategy"

    invoke-static {p1, v0, v4, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 37
    :cond_5
    :goto_2
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method setProtocolForHost(Ljava/lang/String;Lanet/channel/strategy/ConnProtocol;)V
    .locals 10

    .line 75
    iget-object v0, p0, Lanet/channel/strategy/LocalDnsStrategyTable;->localStrategyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_5

    .line 76
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 77
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/IPConnStrategy;

    .line 78
    invoke-virtual {v1}, Lanet/channel/strategy/IPConnStrategy;->getProtocol()Lanet/channel/strategy/ConnProtocol;

    move-result-object v1

    invoke-virtual {v1, p2}, Lanet/channel/strategy/ConnProtocol;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 82
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/IPConnStrategy;

    invoke-virtual {v1}, Lanet/channel/strategy/IPConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v2

    .line 83
    iget-object v1, p2, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    const-string v3, "https"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v9, 0x1

    if-nez v1, :cond_3

    iget-object v1, p2, Lanet/channel/strategy/ConnProtocol;->publicKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_4

    const/16 v1, 0x50

    const/16 v3, 0x50

    goto :goto_2

    :cond_4
    const/16 v1, 0x1bb

    const/16 v3, 0x1bb

    :goto_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const v8, 0xafc8

    move-object v4, p2

    .line 84
    invoke-static/range {v2 .. v8}, Lanet/channel/strategy/IPConnStrategy;->create(Ljava/lang/String;ILanet/channel/strategy/ConnProtocol;IIII)Lanet/channel/strategy/IPConnStrategy;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    const/4 v1, 0x2

    .line 85
    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "strategyList"

    aput-object v2, v1, v0

    aput-object p1, v1, v9

    const-string p1, "awcn.LocalDnsStrategyTable"

    const-string/jumbo v0, "setProtocolForHost"

    invoke-static {p1, v0, p2, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return-void
.end method
