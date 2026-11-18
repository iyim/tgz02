.class Lcom/uc/base/net/metrics/HttpConnectionMetricsGlobal;
.super Lcom/uc/base/net/metrics/HttpConnectionMetricsBase;
.source "HttpConnectionMetricsGlobal.java"


# instance fields
.field private final mMetricsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/uc/base/net/metrics/HttpConnectionMetricsType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/uc/base/net/metrics/HttpConnectionMetricsBase;-><init>()V

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsGlobal;->mMetricsCache:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addMetrics(Ljava/lang/String;Lcom/uc/base/net/metrics/HttpConnectionMetricsType;J)V
    .locals 2

    .line 30
    iget-object p1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsGlobal;->mMetricsCache:Ljava/util/HashMap;

    monitor-enter p1

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsGlobal;->mMetricsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/base/net/util/Util;->StringToLong(Ljava/lang/String;)J

    move-result-wide v0

    add-long/2addr v0, p3

    .line 32
    iget-object p3, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsGlobal;->mMetricsCache:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public addMetrics(Ljava/lang/String;Lcom/uc/base/net/metrics/HttpConnectionMetricsType;Ljava/lang/String;)V
    .locals 2

    .line 22
    iget-object p1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsGlobal;->mMetricsCache:Ljava/util/HashMap;

    monitor-enter p1

    .line 23
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsGlobal;->mMetricsCache:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 24
    iget-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsGlobal;->mMetricsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public getMetrics(Ljava/lang/String;Lcom/uc/base/net/metrics/HttpConnectionMetricsType;)Ljava/lang/String;
    .locals 1

    .line 55
    iget-object p1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsGlobal;->mMetricsCache:Ljava/util/HashMap;

    monitor-enter p1

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsGlobal;->mMetricsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    monitor-exit p1

    return-object p2

    :catchall_0
    move-exception p2

    .line 57
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public getReceivedBytesCount(Ljava/lang/String;)J
    .locals 2

    .line 75
    iget-object p1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsGlobal;->mMetricsCache:Ljava/util/HashMap;

    monitor-enter p1

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsGlobal;->mMetricsCache:Ljava/util/HashMap;

    sget-object v1, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_RECEIVED_BYTES_COUNT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/base/net/util/Util;->StringToLong(Ljava/lang/String;)J

    move-result-wide v0

    monitor-exit p1

    return-wide v0

    :catchall_0
    move-exception v0

    .line 77
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRequestCount(Ljava/lang/String;)J
    .locals 2

    .line 85
    iget-object p1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsGlobal;->mMetricsCache:Ljava/util/HashMap;

    monitor-enter p1

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsGlobal;->mMetricsCache:Ljava/util/HashMap;

    sget-object v1, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_REQUEST_COUNT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/base/net/util/Util;->StringToLong(Ljava/lang/String;)J

    move-result-wide v0

    monitor-exit p1

    return-wide v0

    :catchall_0
    move-exception v0

    .line 87
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getResponseCount(Ljava/lang/String;)J
    .locals 2

    .line 95
    iget-object p1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsGlobal;->mMetricsCache:Ljava/util/HashMap;

    monitor-enter p1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsGlobal;->mMetricsCache:Ljava/util/HashMap;

    sget-object v1, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_RESPONSE_COUNT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/base/net/util/Util;->StringToLong(Ljava/lang/String;)J

    move-result-wide v0

    monitor-exit p1

    return-wide v0

    :catchall_0
    move-exception v0

    .line 97
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSentBytesCount(Ljava/lang/String;)J
    .locals 2

    .line 65
    iget-object p1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsGlobal;->mMetricsCache:Ljava/util/HashMap;

    monitor-enter p1

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsGlobal;->mMetricsCache:Ljava/util/HashMap;

    sget-object v1, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_SENT_BYTES_COUNT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/base/net/util/Util;->StringToLong(Ljava/lang/String;)J

    move-result-wide v0

    monitor-exit p1

    return-wide v0

    :catchall_0
    move-exception v0

    .line 67
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public increaseMetrics(Ljava/lang/String;Lcom/uc/base/net/metrics/HttpConnectionMetricsType;)V
    .locals 5

    .line 15
    iget-object p1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsGlobal;->mMetricsCache:Ljava/util/HashMap;

    monitor-enter p1

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsGlobal;->mMetricsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/base/net/util/Util;->StringToLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 17
    iget-object v2, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsGlobal;->mMetricsCache:Ljava/util/HashMap;

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public resetMetrics(Ljava/lang/String;)V
    .locals 1

    .line 43
    iget-object p1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsGlobal;->mMetricsCache:Ljava/util/HashMap;

    monitor-enter p1

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsGlobal;->mMetricsCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 45
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMetrics(Ljava/lang/String;Lcom/uc/base/net/metrics/HttpConnectionMetricsType;Ljava/lang/String;)V
    .locals 1

    .line 37
    iget-object p1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsGlobal;->mMetricsCache:Ljava/util/HashMap;

    monitor-enter p1

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsGlobal;->mMetricsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
