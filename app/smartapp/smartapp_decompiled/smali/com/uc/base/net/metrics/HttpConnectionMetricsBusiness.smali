.class Lcom/uc/base/net/metrics/HttpConnectionMetricsBusiness;
.super Lcom/uc/base/net/metrics/HttpConnectionMetricsBase;
.source "HttpConnectionMetricsBusiness.java"


# instance fields
.field private final mMetricsCache:Lcom/uc/base/net/util/DoubleKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uc/base/net/util/DoubleKeyMap<",
            "Ljava/lang/String;",
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

    .line 7
    new-instance v0, Lcom/uc/base/net/util/DoubleKeyMap;

    invoke-direct {v0}, Lcom/uc/base/net/util/DoubleKeyMap;-><init>()V

    iput-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsBusiness;->mMetricsCache:Lcom/uc/base/net/util/DoubleKeyMap;

    return-void
.end method


# virtual methods
.method public addMetrics(Ljava/lang/String;Lcom/uc/base/net/metrics/HttpConnectionMetricsType;J)V
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsBusiness;->mMetricsCache:Lcom/uc/base/net/util/DoubleKeyMap;

    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsBusiness;->mMetricsCache:Lcom/uc/base/net/util/DoubleKeyMap;

    invoke-virtual {v1, p1, p2}, Lcom/uc/base/net/util/DoubleKeyMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/uc/base/net/util/Util;->StringToLong(Ljava/lang/String;)J

    move-result-wide v1

    add-long/2addr v1, p3

    .line 32
    iget-object p3, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsBusiness;->mMetricsCache:Lcom/uc/base/net/util/DoubleKeyMap;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p1, p2, p4}, Lcom/uc/base/net/util/DoubleKeyMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addMetrics(Ljava/lang/String;Lcom/uc/base/net/metrics/HttpConnectionMetricsType;Ljava/lang/String;)V
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsBusiness;->mMetricsCache:Lcom/uc/base/net/util/DoubleKeyMap;

    monitor-enter v0

    .line 23
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsBusiness;->mMetricsCache:Lcom/uc/base/net/util/DoubleKeyMap;

    invoke-virtual {v2, p1, p2}, Lcom/uc/base/net/util/DoubleKeyMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 24
    iget-object v1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsBusiness;->mMetricsCache:Lcom/uc/base/net/util/DoubleKeyMap;

    invoke-virtual {v1, p1, p2, p3}, Lcom/uc/base/net/util/DoubleKeyMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getMetrics(Ljava/lang/String;Lcom/uc/base/net/metrics/HttpConnectionMetricsType;)Ljava/lang/String;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsBusiness;->mMetricsCache:Lcom/uc/base/net/util/DoubleKeyMap;

    monitor-enter v0

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsBusiness;->mMetricsCache:Lcom/uc/base/net/util/DoubleKeyMap;

    invoke-virtual {v1, p1, p2}, Lcom/uc/base/net/util/DoubleKeyMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 58
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getReceivedBytesCount(Ljava/lang/String;)J
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsBusiness;->mMetricsCache:Lcom/uc/base/net/util/DoubleKeyMap;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsBusiness;->mMetricsCache:Lcom/uc/base/net/util/DoubleKeyMap;

    sget-object v2, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_RECEIVED_BYTES_COUNT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    invoke-virtual {v1, p1, v2}, Lcom/uc/base/net/util/DoubleKeyMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/uc/base/net/util/Util;->StringToLong(Ljava/lang/String;)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p1

    .line 78
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getRequestCount(Ljava/lang/String;)J
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsBusiness;->mMetricsCache:Lcom/uc/base/net/util/DoubleKeyMap;

    monitor-enter v0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsBusiness;->mMetricsCache:Lcom/uc/base/net/util/DoubleKeyMap;

    sget-object v2, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_REQUEST_COUNT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    invoke-virtual {v1, p1, v2}, Lcom/uc/base/net/util/DoubleKeyMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/uc/base/net/util/Util;->StringToLong(Ljava/lang/String;)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p1

    .line 88
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getResponseCount(Ljava/lang/String;)J
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsBusiness;->mMetricsCache:Lcom/uc/base/net/util/DoubleKeyMap;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsBusiness;->mMetricsCache:Lcom/uc/base/net/util/DoubleKeyMap;

    sget-object v2, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_RESPONSE_COUNT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    invoke-virtual {v1, p1, v2}, Lcom/uc/base/net/util/DoubleKeyMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/uc/base/net/util/Util;->StringToLong(Ljava/lang/String;)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p1

    .line 98
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getSentBytesCount(Ljava/lang/String;)J
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsBusiness;->mMetricsCache:Lcom/uc/base/net/util/DoubleKeyMap;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsBusiness;->mMetricsCache:Lcom/uc/base/net/util/DoubleKeyMap;

    sget-object v2, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_SENT_BYTES_COUNT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    invoke-virtual {v1, p1, v2}, Lcom/uc/base/net/util/DoubleKeyMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/uc/base/net/util/Util;->StringToLong(Ljava/lang/String;)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p1

    .line 68
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public increaseMetrics(Ljava/lang/String;Lcom/uc/base/net/metrics/HttpConnectionMetricsType;)V
    .locals 6

    .line 15
    iget-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsBusiness;->mMetricsCache:Lcom/uc/base/net/util/DoubleKeyMap;

    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsBusiness;->mMetricsCache:Lcom/uc/base/net/util/DoubleKeyMap;

    invoke-virtual {v1, p1, p2}, Lcom/uc/base/net/util/DoubleKeyMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/uc/base/net/util/Util;->StringToLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 17
    iget-object v3, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsBusiness;->mMetricsCache:Lcom/uc/base/net/util/DoubleKeyMap;

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p1, p2, v1}, Lcom/uc/base/net/util/DoubleKeyMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public resetMetrics(Ljava/lang/String;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsBusiness;->mMetricsCache:Lcom/uc/base/net/util/DoubleKeyMap;

    monitor-enter v0

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsBusiness;->mMetricsCache:Lcom/uc/base/net/util/DoubleKeyMap;

    invoke-virtual {v1, p1}, Lcom/uc/base/net/util/DoubleKeyMap;->clear(Ljava/lang/Object;)V

    .line 45
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMetrics(Ljava/lang/String;Lcom/uc/base/net/metrics/HttpConnectionMetricsType;Ljava/lang/String;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsBusiness;->mMetricsCache:Lcom/uc/base/net/util/DoubleKeyMap;

    monitor-enter v0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsBusiness;->mMetricsCache:Lcom/uc/base/net/util/DoubleKeyMap;

    invoke-virtual {v1, p1, p2, p3}, Lcom/uc/base/net/util/DoubleKeyMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
