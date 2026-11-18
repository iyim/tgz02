.class Lanet/channel/strategy/StrategyCollection;
.super Ljava/lang/Object;
.source "StrategyCollection.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MAX_AVAILABLE_PERIOD:J = 0xa4cb800L

.field private static final serialVersionUID:J = 0x14311d607e86c4e5L


# instance fields
.field volatile cname:Ljava/lang/String;

.field host:Ljava/lang/String;

.field isFixed:Z

.field private transient lastAmdcRequestSend:J

.field strategyList:Lanet/channel/strategy/StrategyList;

.field volatile ttl:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->strategyList:Lanet/channel/strategy/StrategyList;

    const-wide/16 v1, 0x0

    .line 20
    iput-wide v1, p0, Lanet/channel/strategy/StrategyCollection;->ttl:J

    .line 21
    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->cname:Ljava/lang/String;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lanet/channel/strategy/StrategyCollection;->isFixed:Z

    .line 24
    iput-wide v1, p0, Lanet/channel/strategy/StrategyCollection;->lastAmdcRequestSend:J

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->strategyList:Lanet/channel/strategy/StrategyList;

    const-wide/16 v1, 0x0

    .line 20
    iput-wide v1, p0, Lanet/channel/strategy/StrategyCollection;->ttl:J

    .line 21
    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->cname:Ljava/lang/String;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lanet/channel/strategy/StrategyCollection;->isFixed:Z

    .line 24
    iput-wide v1, p0, Lanet/channel/strategy/StrategyCollection;->lastAmdcRequestSend:J

    .line 30
    iput-object p1, p0, Lanet/channel/strategy/StrategyCollection;->host:Ljava/lang/String;

    .line 31
    invoke-static {p1}, Lanet/channel/strategy/dispatch/DispatchConstants;->isAmdcServerDomain(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lanet/channel/strategy/StrategyCollection;->isFixed:Z

    return-void
.end method


# virtual methods
.method public checkInit()V
    .locals 5

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lanet/channel/strategy/StrategyCollection;->ttl:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xa4cb800

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->strategyList:Lanet/channel/strategy/StrategyList;

    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->strategyList:Lanet/channel/strategy/StrategyList;

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {v0}, Lanet/channel/strategy/StrategyList;->checkInit()V

    :cond_1
    return-void
.end method

.method public isExpired()Z
    .locals 5

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lanet/channel/strategy/StrategyCollection;->ttl:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized notifyConnEvent(Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V
    .locals 5

    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->strategyList:Lanet/channel/strategy/StrategyList;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->strategyList:Lanet/channel/strategy/StrategyList;

    invoke-virtual {v0, p1, p2}, Lanet/channel/strategy/StrategyList;->notifyConnEvent(Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V

    .line 54
    iget-boolean p1, p2, Lanet/channel/strategy/ConnEvent;->isSuccess:Z

    if-nez p1, :cond_0

    .line 56
    iget-object p1, p0, Lanet/channel/strategy/StrategyCollection;->strategyList:Lanet/channel/strategy/StrategyList;

    invoke-virtual {p1}, Lanet/channel/strategy/StrategyList;->shouldRefresh()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 58
    iget-wide v0, p0, Lanet/channel/strategy/StrategyCollection;->lastAmdcRequestSend:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 59
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v0

    iget-object v1, p0, Lanet/channel/strategy/StrategyCollection;->host:Ljava/lang/String;

    invoke-interface {v0, v1}, Lanet/channel/strategy/IStrategyInstance;->forceRefreshStrategy(Ljava/lang/String;)V

    .line 60
    iput-wide p1, p0, Lanet/channel/strategy/StrategyCollection;->lastAmdcRequestSend:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized queryStrategyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lanet/channel/strategy/IConnStrategy;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 45
    :try_start_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->strategyList:Lanet/channel/strategy/StrategyList;

    if-nez v0, :cond_0

    .line 46
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 48
    :cond_0
    :try_start_1
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->strategyList:Lanet/channel/strategy/StrategyList;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyList;->getStrategyList()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "\nStrategyList = "

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanet/channel/strategy/StrategyCollection;->ttl:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 100
    iget-object v1, p0, Lanet/channel/strategy/StrategyCollection;->strategyList:Lanet/channel/strategy/StrategyList;

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v1}, Lanet/channel/strategy/StrategyList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 102
    :cond_0
    iget-object v1, p0, Lanet/channel/strategy/StrategyCollection;->cname:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v1, 0x5b

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanet/channel/strategy/StrategyCollection;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanet/channel/strategy/StrategyCollection;->cname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "[]"

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized update(Lanet/channel/strategy/StrategyResultParser$DnsInfo;)V
    .locals 6

    monitor-enter p0

    .line 72
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p1, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->ttl:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lanet/channel/strategy/StrategyCollection;->ttl:J

    .line 74
    iget-object v0, p1, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->host:Ljava/lang/String;

    iget-object v1, p0, Lanet/channel/strategy/StrategyCollection;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "StrategyCollection"

    const-string/jumbo v2, "update error!"

    const/4 v3, 0x4

    .line 75
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "host"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lanet/channel/strategy/StrategyCollection;->host:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "dnsInfo.host"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object p1, p1, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->host:Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-static {v0, v2, v1, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 79
    :cond_0
    :try_start_1
    iget-object v0, p1, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->cname:Ljava/lang/String;

    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->cname:Ljava/lang/String;

    .line 82
    iget-object v0, p1, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->ips:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->ips:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->aisleses:[Lanet/channel/strategy/StrategyResultParser$Aisles;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->aisleses:[Lanet/channel/strategy/StrategyResultParser$Aisles;

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p1, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->strategies:[Lanet/channel/strategy/StrategyResultParser$Strategy;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->strategies:[Lanet/channel/strategy/StrategyResultParser$Strategy;

    array-length v0, v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->strategyList:Lanet/channel/strategy/StrategyList;

    if-nez v0, :cond_3

    .line 90
    new-instance v0, Lanet/channel/strategy/StrategyList;

    invoke-direct {v0}, Lanet/channel/strategy/StrategyList;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->strategyList:Lanet/channel/strategy/StrategyList;

    .line 93
    :cond_3
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->strategyList:Lanet/channel/strategy/StrategyList;

    invoke-virtual {v0, p1}, Lanet/channel/strategy/StrategyList;->update(Lanet/channel/strategy/StrategyResultParser$DnsInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 85
    :cond_4
    :goto_0
    :try_start_2
    iput-object v1, p0, Lanet/channel/strategy/StrategyCollection;->strategyList:Lanet/channel/strategy/StrategyList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
