.class Lcom/uc/base/net/natives/NativeHttpClientSync;
.super Ljava/lang/Object;
.source "NativeHttpClientSync.java"


# instance fields
.field private mImpl:Lcom/uc/base/net/HttpClientSync;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation build Lcom/uc/annotation/Invoker;
        type = .enum Lcom/uc/annotation/InvokeType;->Native:Lcom/uc/annotation/InvokeType;
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/uc/base/net/HttpClientSync;

    invoke-direct {v0}, Lcom/uc/base/net/HttpClientSync;-><init>()V

    iput-object v0, p0, Lcom/uc/base/net/natives/NativeHttpClientSync;->mImpl:Lcom/uc/base/net/HttpClientSync;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation build Lcom/uc/annotation/Invoker;
        type = .enum Lcom/uc/annotation/InvokeType;->Native:Lcom/uc/annotation/InvokeType;
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/uc/base/net/natives/NativeHttpClientSync;->mImpl:Lcom/uc/base/net/HttpClientSync;

    invoke-virtual {v0}, Lcom/uc/base/net/HttpClientSync;->close()V

    return-void
.end method

.method public errorCode()I
    .locals 1
    .annotation build Lcom/uc/annotation/Invoker;
        type = .enum Lcom/uc/annotation/InvokeType;->Native:Lcom/uc/annotation/InvokeType;
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/uc/base/net/natives/NativeHttpClientSync;->mImpl:Lcom/uc/base/net/HttpClientSync;

    invoke-virtual {v0}, Lcom/uc/base/net/HttpClientSync;->errorCode()I

    move-result v0

    return v0
.end method

.method public followRedirects(Z)V
    .locals 1
    .annotation build Lcom/uc/annotation/Invoker;
        type = .enum Lcom/uc/annotation/InvokeType;->Native:Lcom/uc/annotation/InvokeType;
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/uc/base/net/natives/NativeHttpClientSync;->mImpl:Lcom/uc/base/net/HttpClientSync;

    invoke-virtual {v0, p1}, Lcom/uc/base/net/HttpClientSync;->followRedirects(Z)V

    return-void
.end method

.method public getMetrics()Lcom/uc/base/net/natives/NativeHttpConnectionMetrics;
    .locals 2
    .annotation build Lcom/uc/annotation/Invoker;
        type = .enum Lcom/uc/annotation/InvokeType;->Native:Lcom/uc/annotation/InvokeType;
    .end annotation

    .line 78
    new-instance v0, Lcom/uc/base/net/natives/NativeHttpConnectionMetrics;

    iget-object v1, p0, Lcom/uc/base/net/natives/NativeHttpClientSync;->mImpl:Lcom/uc/base/net/HttpClientSync;

    invoke-virtual {v1}, Lcom/uc/base/net/HttpClientSync;->getHttpConnectionMetrics()Lcom/uc/base/net/metrics/IHttpConnectionMetrics;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/uc/base/net/natives/NativeHttpConnectionMetrics;-><init>(Lcom/uc/base/net/metrics/IHttpConnectionMetrics;)V

    return-object v0
.end method

.method public getNativeRequest(Ljava/lang/String;)Lcom/uc/base/net/natives/NativeRequest;
    .locals 2
    .annotation build Lcom/uc/annotation/Invoker;
        type = .enum Lcom/uc/annotation/InvokeType;->Native:Lcom/uc/annotation/InvokeType;
    .end annotation

    .line 33
    new-instance v0, Lcom/uc/base/net/natives/NativeRequest;

    iget-object v1, p0, Lcom/uc/base/net/natives/NativeHttpClientSync;->mImpl:Lcom/uc/base/net/HttpClientSync;

    invoke-virtual {v1, p1}, Lcom/uc/base/net/HttpClientSync;->getRequest(Ljava/lang/String;)Lcom/uc/base/net/IRequest;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/uc/base/net/natives/NativeRequest;-><init>(Lcom/uc/base/net/IRequest;)V

    return-object v0
.end method

.method public sendRequest(Lcom/uc/base/net/natives/NativeRequest;)Lcom/uc/base/net/natives/NativeResponse;
    .locals 1
    .annotation build Lcom/uc/annotation/Invoker;
        type = .enum Lcom/uc/annotation/InvokeType;->Native:Lcom/uc/annotation/InvokeType;
    .end annotation

    .line 63
    invoke-virtual {p1}, Lcom/uc/base/net/natives/NativeRequest;->getRequest()Lcom/uc/base/net/IRequest;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/uc/base/net/natives/NativeHttpClientSync;->mImpl:Lcom/uc/base/net/HttpClientSync;

    invoke-virtual {v0, p1}, Lcom/uc/base/net/HttpClientSync;->sendRequest(Lcom/uc/base/net/IRequest;)Lcom/uc/base/net/IResponse;

    move-result-object p1

    .line 66
    new-instance v0, Lcom/uc/base/net/natives/NativeResponse;

    invoke-direct {v0, p1}, Lcom/uc/base/net/natives/NativeResponse;-><init>(Lcom/uc/base/net/IResponse;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/uc/annotation/Invoker;
        type = .enum Lcom/uc/annotation/InvokeType;->Native:Lcom/uc/annotation/InvokeType;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/uc/base/net/natives/NativeHttpClientSync;->mImpl:Lcom/uc/base/net/HttpClientSync;

    invoke-virtual {v0, p1, p2}, Lcom/uc/base/net/HttpClientSync;->setAuth(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setConnectionTimeout(I)V
    .locals 1
    .annotation build Lcom/uc/annotation/Invoker;
        type = .enum Lcom/uc/annotation/InvokeType;->Native:Lcom/uc/annotation/InvokeType;
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/uc/base/net/natives/NativeHttpClientSync;->mImpl:Lcom/uc/base/net/HttpClientSync;

    invoke-virtual {v0, p1}, Lcom/uc/base/net/HttpClientSync;->setConnectionTimeout(I)V

    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 1
    .annotation build Lcom/uc/annotation/Invoker;
        type = .enum Lcom/uc/annotation/InvokeType;->Native:Lcom/uc/annotation/InvokeType;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/uc/base/net/natives/NativeHttpClientSync;->mImpl:Lcom/uc/base/net/HttpClientSync;

    invoke-virtual {v0, p1}, Lcom/uc/base/net/HttpClientSync;->setSocketTimeout(I)V

    return-void
.end method
