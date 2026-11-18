.class public Lcom/uc/base/net/metrics/HttpConnectionMetrics;
.super Ljava/lang/Object;
.source "HttpConnectionMetrics.java"

# interfaces
.implements Lcom/uc/base/net/metrics/IHttpConnectionMetrics;


# static fields
.field static mMetricsBusiness:Lcom/uc/base/net/metrics/HttpConnectionMetricsBase;

.field static mMetricsGlobal:Lcom/uc/base/net/metrics/HttpConnectionMetricsBase;


# instance fields
.field mConnectionMetrics:Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsGlobal;

    invoke-direct {v0}, Lcom/uc/base/net/metrics/HttpConnectionMetricsGlobal;-><init>()V

    sput-object v0, Lcom/uc/base/net/metrics/HttpConnectionMetrics;->mMetricsGlobal:Lcom/uc/base/net/metrics/HttpConnectionMetricsBase;

    .line 6
    new-instance v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsBusiness;

    invoke-direct {v0}, Lcom/uc/base/net/metrics/HttpConnectionMetricsBusiness;-><init>()V

    sput-object v0, Lcom/uc/base/net/metrics/HttpConnectionMetrics;->mMetricsBusiness:Lcom/uc/base/net/metrics/HttpConnectionMetricsBase;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetrics;->mConnectionMetrics:Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;

    .line 9
    iput-object p1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetrics;->mConnectionMetrics:Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;

    return-void
.end method


# virtual methods
.method public clone()Lcom/uc/base/net/metrics/IHttpConnectionMetrics;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/uc/base/net/metrics/HttpConnectionMetrics;->mConnectionMetrics:Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;

    invoke-virtual {v0}, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->clone()Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/uc/base/net/metrics/HttpConnectionMetrics;

    invoke-direct {v1, v0}, Lcom/uc/base/net/metrics/HttpConnectionMetrics;-><init>(Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;)V

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/uc/base/net/metrics/HttpConnectionMetrics;->clone()Lcom/uc/base/net/metrics/IHttpConnectionMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getMetrics(ILjava/lang/String;Lcom/uc/base/net/metrics/HttpConnectionMetricsType;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 15
    sget-object p1, Lcom/uc/base/net/metrics/HttpConnectionMetrics;->mMetricsGlobal:Lcom/uc/base/net/metrics/HttpConnectionMetricsBase;

    invoke-virtual {p1, v0, p3}, Lcom/uc/base/net/metrics/HttpConnectionMetricsBase;->getMetrics(Ljava/lang/String;Lcom/uc/base/net/metrics/HttpConnectionMetricsType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 18
    sget-object p1, Lcom/uc/base/net/metrics/HttpConnectionMetrics;->mMetricsBusiness:Lcom/uc/base/net/metrics/HttpConnectionMetricsBase;

    invoke-virtual {p1, p2, p3}, Lcom/uc/base/net/metrics/HttpConnectionMetricsBase;->getMetrics(Ljava/lang/String;Lcom/uc/base/net/metrics/HttpConnectionMetricsType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 21
    iget-object p1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetrics;->mConnectionMetrics:Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;

    invoke-virtual {p1, p3}, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->getMetrics(Lcom/uc/base/net/metrics/HttpConnectionMetricsType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method public resetMetrics(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 30
    sget-object p1, Lcom/uc/base/net/metrics/HttpConnectionMetrics;->mMetricsGlobal:Lcom/uc/base/net/metrics/HttpConnectionMetricsBase;

    invoke-virtual {p1, p2}, Lcom/uc/base/net/metrics/HttpConnectionMetricsBase;->resetMetrics(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 33
    sget-object p1, Lcom/uc/base/net/metrics/HttpConnectionMetrics;->mMetricsBusiness:Lcom/uc/base/net/metrics/HttpConnectionMetricsBase;

    invoke-virtual {p1, p2}, Lcom/uc/base/net/metrics/HttpConnectionMetricsBase;->resetMetrics(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 36
    iget-object p1, p0, Lcom/uc/base/net/metrics/HttpConnectionMetrics;->mConnectionMetrics:Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;

    invoke-virtual {p1, p2}, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->resetMetrics(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
