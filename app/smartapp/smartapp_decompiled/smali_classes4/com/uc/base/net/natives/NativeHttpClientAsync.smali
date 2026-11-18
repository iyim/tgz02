.class Lcom/uc/base/net/natives/NativeHttpClientAsync;
.super Ljava/lang/Object;
.source "NativeHttpClientAsync.java"


# instance fields
.field private mEventListener:Lcom/uc/base/net/natives/NativeHttpEventListener;

.field private mImpl:Lcom/uc/base/net/IHttpClientAsync;


# direct methods
.method public constructor <init>(Lcom/uc/base/net/natives/NativeHttpEventListener;)V
    .locals 1
    .annotation build Lcom/uc/annotation/Invoker;
        type = .enum Lcom/uc/annotation/InvokeType;->Native:Lcom/uc/annotation/InvokeType;
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/uc/base/net/HttpClientAsync;

    invoke-direct {v0, p1}, Lcom/uc/base/net/HttpClientAsync;-><init>(Lcom/uc/base/net/IHttpEventListener;)V

    iput-object v0, p0, Lcom/uc/base/net/natives/NativeHttpClientAsync;->mImpl:Lcom/uc/base/net/IHttpClientAsync;

    .line 31
    iput-object p1, p0, Lcom/uc/base/net/natives/NativeHttpClientAsync;->mEventListener:Lcom/uc/base/net/natives/NativeHttpEventListener;

    return-void
.end method

.method public constructor <init>(Lcom/uc/base/net/natives/NativeHttpEventListener;Landroid/os/Looper;)V
    .locals 1
    .annotation build Lcom/uc/annotation/Invoker;
        type = .enum Lcom/uc/annotation/InvokeType;->Native:Lcom/uc/annotation/InvokeType;
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/uc/base/net/HttpClientAsync;

    invoke-direct {v0, p1, p2}, Lcom/uc/base/net/HttpClientAsync;-><init>(Lcom/uc/base/net/IHttpEventListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/uc/base/net/natives/NativeHttpClientAsync;->mImpl:Lcom/uc/base/net/IHttpClientAsync;

    .line 37
    iput-object p1, p0, Lcom/uc/base/net/natives/NativeHttpClientAsync;->mEventListener:Lcom/uc/base/net/natives/NativeHttpEventListener;

    return-void
.end method


# virtual methods
.method public cancel(Lcom/uc/base/net/natives/NativeRequest;)V
    .locals 1
    .annotation build Lcom/uc/annotation/Invoker;
        type = .enum Lcom/uc/annotation/InvokeType;->Native:Lcom/uc/annotation/InvokeType;
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/uc/base/net/natives/NativeHttpClientAsync;->mEventListener:Lcom/uc/base/net/natives/NativeHttpEventListener;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/uc/base/net/natives/NativeHttpEventListener;->cancel()V

    .line 84
    :cond_0
    invoke-virtual {p1}, Lcom/uc/base/net/natives/NativeRequest;->getRequest()Lcom/uc/base/net/IRequest;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 86
    iget-object v0, p0, Lcom/uc/base/net/natives/NativeHttpClientAsync;->mImpl:Lcom/uc/base/net/IHttpClientAsync;

    invoke-interface {v0, p1}, Lcom/uc/base/net/IHttpClientAsync;->cancel(Lcom/uc/base/net/IRequest;)V

    :cond_1
    return-void
.end method

.method public getMetrics()Lcom/uc/base/net/natives/NativeHttpConnectionMetrics;
    .locals 2
    .annotation build Lcom/uc/annotation/Invoker;
        type = .enum Lcom/uc/annotation/InvokeType;->Native:Lcom/uc/annotation/InvokeType;
    .end annotation

    .line 92
    new-instance v0, Lcom/uc/base/net/natives/NativeHttpConnectionMetrics;

    iget-object v1, p0, Lcom/uc/base/net/natives/NativeHttpClientAsync;->mImpl:Lcom/uc/base/net/IHttpClientAsync;

    invoke-interface {v1}, Lcom/uc/base/net/IHttpClientAsync;->getHttpConnectionMetrics()Lcom/uc/base/net/metrics/IHttpConnectionMetrics;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/uc/base/net/natives/NativeHttpConnectionMetrics;-><init>(Lcom/uc/base/net/metrics/IHttpConnectionMetrics;)V

    return-object v0
.end method

.method public getNativeRequest(Ljava/lang/String;)Lcom/uc/base/net/natives/NativeRequest;
    .locals 2
    .annotation build Lcom/uc/annotation/Invoker;
        type = .enum Lcom/uc/annotation/InvokeType;->Native:Lcom/uc/annotation/InvokeType;
    .end annotation

    .line 42
    new-instance v0, Lcom/uc/base/net/natives/NativeRequest;

    iget-object v1, p0, Lcom/uc/base/net/natives/NativeHttpClientAsync;->mImpl:Lcom/uc/base/net/IHttpClientAsync;

    invoke-interface {v1, p1}, Lcom/uc/base/net/IHttpClientAsync;->getRequest(Ljava/lang/String;)Lcom/uc/base/net/IRequest;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/uc/base/net/natives/NativeRequest;-><init>(Lcom/uc/base/net/IRequest;)V

    return-object v0
.end method

.method public sendRequest(Lcom/uc/base/net/natives/NativeRequest;)V
    .locals 1
    .annotation build Lcom/uc/annotation/Invoker;
        type = .enum Lcom/uc/annotation/InvokeType;->Native:Lcom/uc/annotation/InvokeType;
    .end annotation

    .line 48
    invoke-virtual {p1}, Lcom/uc/base/net/natives/NativeRequest;->getRequest()Lcom/uc/base/net/IRequest;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/uc/base/net/natives/NativeHttpClientAsync;->mImpl:Lcom/uc/base/net/IHttpClientAsync;

    invoke-interface {v0, p1}, Lcom/uc/base/net/IHttpClientAsync;->sendRequest(Lcom/uc/base/net/IRequest;)V

    :cond_0
    return-void
.end method

.method public sendRequest(Lcom/uc/base/net/natives/NativeRequest;Z)V
    .locals 1
    .annotation build Lcom/uc/annotation/Invoker;
        type = .enum Lcom/uc/annotation/InvokeType;->Native:Lcom/uc/annotation/InvokeType;
    .end annotation

    .line 56
    invoke-virtual {p1}, Lcom/uc/base/net/natives/NativeRequest;->getRequest()Lcom/uc/base/net/IRequest;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/uc/base/net/natives/NativeHttpClientAsync;->mImpl:Lcom/uc/base/net/IHttpClientAsync;

    invoke-interface {v0, p1, p2}, Lcom/uc/base/net/IHttpClientAsync;->sendRequest(Lcom/uc/base/net/IRequest;Z)V

    :cond_0
    return-void
.end method

.method public setAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/uc/annotation/Invoker;
        type = .enum Lcom/uc/annotation/InvokeType;->Native:Lcom/uc/annotation/InvokeType;
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/uc/base/net/natives/NativeHttpClientAsync;->mImpl:Lcom/uc/base/net/IHttpClientAsync;

    invoke-interface {v0, p1, p2}, Lcom/uc/base/net/IHttpClientAsync;->setAuth(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setConnectionTimeout(I)V
    .locals 1
    .annotation build Lcom/uc/annotation/Invoker;
        type = .enum Lcom/uc/annotation/InvokeType;->Native:Lcom/uc/annotation/InvokeType;
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/uc/base/net/natives/NativeHttpClientAsync;->mImpl:Lcom/uc/base/net/IHttpClientAsync;

    invoke-interface {v0, p1}, Lcom/uc/base/net/IHttpClientAsync;->setConnectionTimeout(I)V

    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 1
    .annotation build Lcom/uc/annotation/Invoker;
        type = .enum Lcom/uc/annotation/InvokeType;->Native:Lcom/uc/annotation/InvokeType;
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/uc/base/net/natives/NativeHttpClientAsync;->mImpl:Lcom/uc/base/net/IHttpClientAsync;

    invoke-interface {v0, p1}, Lcom/uc/base/net/IHttpClientAsync;->setSocketTimeout(I)V

    return-void
.end method
