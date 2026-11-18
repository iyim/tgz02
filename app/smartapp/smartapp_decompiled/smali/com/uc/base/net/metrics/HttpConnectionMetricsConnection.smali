.class public Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;
.super Lcom/uc/base/net/metrics/HttpConnectionMetricsBase;
.source "HttpConnectionMetricsConnection.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uc/base/net/metrics/HttpConnectionMetricsListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMetricsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/uc/base/net/metrics/HttpConnectionMetricsType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/uc/base/net/metrics/HttpConnectionMetricsBase;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->mMetricsCache:Ljava/util/HashMap;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->mListeners:Ljava/util/List;

    .line 17
    iput-object p1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->mTag:Ljava/lang/String;

    .line 19
    invoke-static {}, Lcom/uc/base/net/metrics/HttpConnectionMetricsConfig;->getMetricsLevel()I

    move-result p1

    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_0

    .line 22
    sget-object v0, Lcom/uc/base/net/metrics/HttpConnectionMetrics;->mMetricsBusiness:Lcom/uc/base/net/metrics/HttpConnectionMetricsBase;

    invoke-direct {p0, v0}, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->addListener(Lcom/uc/base/net/metrics/HttpConnectionMetricsListener;)V

    :cond_0
    and-int/lit8 p1, p1, 0x4

    if-lez p1, :cond_1

    .line 26
    sget-object p1, Lcom/uc/base/net/metrics/HttpConnectionMetrics;->mMetricsGlobal:Lcom/uc/base/net/metrics/HttpConnectionMetricsBase;

    invoke-direct {p0, p1}, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->addListener(Lcom/uc/base/net/metrics/HttpConnectionMetricsListener;)V

    :cond_1
    return-void
.end method

.method private addListener(Lcom/uc/base/net/metrics/HttpConnectionMetricsListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private removeListener(Lcom/uc/base/net/metrics/HttpConnectionMetricsListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addMetrics(Lcom/uc/base/net/metrics/HttpConnectionMetricsType;J)V
    .locals 3

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->addMetrics(Ljava/lang/String;Lcom/uc/base/net/metrics/HttpConnectionMetricsType;J)V

    .line 57
    iget-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 58
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uc/base/net/metrics/HttpConnectionMetricsListener;

    if-eqz v1, :cond_0

    .line 61
    iget-object v2, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->mTag:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/uc/base/net/metrics/HttpConnectionMetricsListener;->addMetrics(Ljava/lang/String;Lcom/uc/base/net/metrics/HttpConnectionMetricsType;J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addMetrics(Lcom/uc/base/net/metrics/HttpConnectionMetricsType;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, v0, p1, p2}, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->addMetrics(Ljava/lang/String;Lcom/uc/base/net/metrics/HttpConnectionMetricsType;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 70
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uc/base/net/metrics/HttpConnectionMetricsListener;

    if-eqz v1, :cond_0

    .line 73
    iget-object v2, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->mTag:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/uc/base/net/metrics/HttpConnectionMetricsListener;->addMetrics(Ljava/lang/String;Lcom/uc/base/net/metrics/HttpConnectionMetricsType;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addMetrics(Ljava/lang/String;Lcom/uc/base/net/metrics/HttpConnectionMetricsType;J)V
    .locals 2

    .line 155
    iget-object p1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->mMetricsCache:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/uc/base/net/util/Util;->StringToLong(Ljava/lang/String;)J

    move-result-wide v0

    add-long/2addr v0, p3

    .line 156
    iget-object p1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->mMetricsCache:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addMetrics(Ljava/lang/String;Lcom/uc/base/net/metrics/HttpConnectionMetricsType;Ljava/lang/String;)V
    .locals 1

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->mMetricsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 150
    iget-object p3, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->mMetricsCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clone()Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;
    .locals 3

    .line 166
    new-instance v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;

    iget-object v1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->mTag:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;-><init>(Ljava/lang/String;)V

    .line 167
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->mMetricsCache:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->mMetricsCache:Ljava/util/HashMap;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->clone()Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;

    move-result-object v0

    return-object v0
.end method

.method public getMetrics(Lcom/uc/base/net/metrics/HttpConnectionMetricsType;)Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->mMetricsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getMetrics(Ljava/lang/String;Lcom/uc/base/net/metrics/HttpConnectionMetricsType;)Ljava/lang/String;
    .locals 0

    .line 101
    invoke-virtual {p0, p2}, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->getMetrics(Lcom/uc/base/net/metrics/HttpConnectionMetricsType;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getReceivedBytesCount(Ljava/lang/String;)J
    .locals 2

    .line 117
    iget-object p1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->mMetricsCache:Ljava/util/HashMap;

    sget-object v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_RECEIVED_BYTES_COUNT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/uc/base/net/util/Util;->StringToLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequestCount(Ljava/lang/String;)J
    .locals 2

    .line 125
    iget-object p1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->mMetricsCache:Ljava/util/HashMap;

    sget-object v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_REQUEST_COUNT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/uc/base/net/util/Util;->StringToLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getResponseCount(Ljava/lang/String;)J
    .locals 2

    .line 133
    iget-object p1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->mMetricsCache:Ljava/util/HashMap;

    sget-object v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_RESPONSE_COUNT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/uc/base/net/util/Util;->StringToLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSentBytesCount(Ljava/lang/String;)J
    .locals 2

    .line 109
    iget-object p1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->mMetricsCache:Ljava/util/HashMap;

    sget-object v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_SENT_BYTES_COUNT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/uc/base/net/util/Util;->StringToLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public increaseMetrics(Lcom/uc/base/net/metrics/HttpConnectionMetricsType;)V
    .locals 3

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0, p1}, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->increaseMetrics(Ljava/lang/String;Lcom/uc/base/net/metrics/HttpConnectionMetricsType;)V

    .line 45
    iget-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 46
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uc/base/net/metrics/HttpConnectionMetricsListener;

    if-eqz v1, :cond_0

    .line 49
    iget-object v2, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->mTag:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/uc/base/net/metrics/HttpConnectionMetricsListener;->increaseMetrics(Ljava/lang/String;Lcom/uc/base/net/metrics/HttpConnectionMetricsType;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public increaseMetrics(Ljava/lang/String;Lcom/uc/base/net/metrics/HttpConnectionMetricsType;)V
    .locals 4

    .line 143
    iget-object p1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->mMetricsCache:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/uc/base/net/util/Util;->StringToLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 144
    iget-object p1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->mMetricsCache:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resetMetrics(Ljava/lang/String;)V
    .locals 0

    .line 138
    iget-object p1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->mMetricsCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public setMetrics(Lcom/uc/base/net/metrics/HttpConnectionMetricsType;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, v0, p1, p2}, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->setMetrics(Ljava/lang/String;Lcom/uc/base/net/metrics/HttpConnectionMetricsType;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 82
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uc/base/net/metrics/HttpConnectionMetricsListener;

    if-eqz v1, :cond_0

    .line 85
    iget-object v2, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->mTag:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/uc/base/net/metrics/HttpConnectionMetricsListener;->setMetrics(Ljava/lang/String;Lcom/uc/base/net/metrics/HttpConnectionMetricsType;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setMetrics(Ljava/lang/String;Lcom/uc/base/net/metrics/HttpConnectionMetricsType;Ljava/lang/String;)V
    .locals 0

    .line 161
    iget-object p1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->mMetricsCache:Ljava/util/HashMap;

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
