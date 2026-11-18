.class Lcom/uc/base/net/natives/NativeHttpConnectionMetrics;
.super Ljava/lang/Object;
.source "NativeHttpConnectionMetrics.java"


# instance fields
.field private mMetrics:Lcom/uc/base/net/metrics/IHttpConnectionMetrics;


# direct methods
.method public constructor <init>(Lcom/uc/base/net/metrics/IHttpConnectionMetrics;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/uc/base/net/natives/NativeHttpConnectionMetrics;->mMetrics:Lcom/uc/base/net/metrics/IHttpConnectionMetrics;

    return-void
.end method


# virtual methods
.method public getMetrics(ILjava/lang/String;I)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/uc/annotation/Invoker;
        type = .enum Lcom/uc/annotation/InvokeType;->Native:Lcom/uc/annotation/InvokeType;
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/uc/base/net/natives/NativeHttpConnectionMetrics;->mMetrics:Lcom/uc/base/net/metrics/IHttpConnectionMetrics;

    if-eqz v0, :cond_0

    .line 18
    invoke-static {p3}, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->fromInteger(I)Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lcom/uc/base/net/metrics/IHttpConnectionMetrics;->getMetrics(ILjava/lang/String;Lcom/uc/base/net/metrics/HttpConnectionMetricsType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public resetMetrics(ILjava/lang/String;)V
    .locals 1
    .annotation build Lcom/uc/annotation/Invoker;
        type = .enum Lcom/uc/annotation/InvokeType;->Native:Lcom/uc/annotation/InvokeType;
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/uc/base/net/natives/NativeHttpConnectionMetrics;->mMetrics:Lcom/uc/base/net/metrics/IHttpConnectionMetrics;

    if-eqz v0, :cond_0

    .line 26
    invoke-interface {v0, p1, p2}, Lcom/uc/base/net/metrics/IHttpConnectionMetrics;->resetMetrics(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
