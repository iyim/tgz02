.class public Lcom/uc/base/net/HttpClientAsync;
.super Ljava/lang/Object;
.source "HttpClientAsync.java"

# interfaces
.implements Lcom/uc/base/net/IHttpClientAsync;


# instance fields
.field private mImpl:Lcom/uc/base/net/IHttpClientAsync;


# direct methods
.method public constructor <init>(Lcom/uc/base/net/IHttpEventListener;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/uc/base/net/NetworkManager;->getInstance()Lcom/uc/base/net/NetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/base/net/NetworkManager;->getNetClientDelegate()Lcom/uc/base/net/INetClientDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/uc/base/net/INetClientDelegate;->createAsyncClient(Lcom/uc/base/net/IHttpEventListener;)Lcom/uc/base/net/IHttpClientAsync;

    move-result-object p1

    iput-object p1, p0, Lcom/uc/base/net/HttpClientAsync;->mImpl:Lcom/uc/base/net/IHttpClientAsync;

    return-void
.end method

.method public constructor <init>(Lcom/uc/base/net/IHttpEventListener;Landroid/os/Looper;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Lcom/uc/base/net/NetworkManager;->getInstance()Lcom/uc/base/net/NetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/base/net/NetworkManager;->getNetClientDelegate()Lcom/uc/base/net/INetClientDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/uc/base/net/INetClientDelegate;->createAsyncClient(Lcom/uc/base/net/IHttpEventListener;Landroid/os/Looper;)Lcom/uc/base/net/IHttpClientAsync;

    move-result-object p1

    iput-object p1, p0, Lcom/uc/base/net/HttpClientAsync;->mImpl:Lcom/uc/base/net/IHttpClientAsync;

    return-void
.end method


# virtual methods
.method public cancel(Lcom/uc/base/net/IRequest;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/uc/base/net/HttpClientAsync;->mImpl:Lcom/uc/base/net/IHttpClientAsync;

    invoke-interface {v0, p1}, Lcom/uc/base/net/IHttpClientAsync;->cancel(Lcom/uc/base/net/IRequest;)V

    return-void
.end method

.method public getDataDecompressEventListener()Lcom/uc/base/net/IDataDecompressEventListener;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/uc/base/net/HttpClientAsync;->mImpl:Lcom/uc/base/net/IHttpClientAsync;

    invoke-interface {v0}, Lcom/uc/base/net/IHttpClientAsync;->getDataDecompressEventListener()Lcom/uc/base/net/IDataDecompressEventListener;

    move-result-object v0

    return-object v0
.end method

.method public getHttpConnectionMetrics()Lcom/uc/base/net/metrics/IHttpConnectionMetrics;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/uc/base/net/HttpClientAsync;->mImpl:Lcom/uc/base/net/IHttpClientAsync;

    invoke-interface {v0}, Lcom/uc/base/net/IHttpClientAsync;->getHttpConnectionMetrics()Lcom/uc/base/net/metrics/IHttpConnectionMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getRequest(Ljava/lang/String;)Lcom/uc/base/net/IRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/uc/base/net/HttpClientAsync;->mImpl:Lcom/uc/base/net/IHttpClientAsync;

    invoke-interface {v0, p1}, Lcom/uc/base/net/IHttpClientAsync;->getRequest(Ljava/lang/String;)Lcom/uc/base/net/IRequest;

    move-result-object p1

    return-object p1
.end method

.method public sendRequest(Lcom/uc/base/net/IRequest;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/uc/base/net/HttpClientAsync;->mImpl:Lcom/uc/base/net/IHttpClientAsync;

    invoke-interface {v0, p1}, Lcom/uc/base/net/IHttpClientAsync;->sendRequest(Lcom/uc/base/net/IRequest;)V

    return-void
.end method

.method public sendRequest(Lcom/uc/base/net/IRequest;Z)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/uc/base/net/HttpClientAsync;->mImpl:Lcom/uc/base/net/IHttpClientAsync;

    invoke-interface {v0, p1, p2}, Lcom/uc/base/net/IHttpClientAsync;->sendRequest(Lcom/uc/base/net/IRequest;Z)V

    return-void
.end method

.method public setAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/uc/base/net/HttpClientAsync;->mImpl:Lcom/uc/base/net/IHttpClientAsync;

    invoke-interface {v0, p1, p2}, Lcom/uc/base/net/IHttpClientAsync;->setAuth(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAutoRetryWhenZstdFailed(Z)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/uc/base/net/HttpClientAsync;->mImpl:Lcom/uc/base/net/IHttpClientAsync;

    invoke-interface {v0, p1}, Lcom/uc/base/net/IHttpClientAsync;->setAutoRetryWhenZstdFailed(Z)V

    return-void
.end method

.method public setConnectionTimeout(I)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/uc/base/net/HttpClientAsync;->mImpl:Lcom/uc/base/net/IHttpClientAsync;

    invoke-interface {v0, p1}, Lcom/uc/base/net/IHttpClientAsync;->setConnectionTimeout(I)V

    return-void
.end method

.method public setDataDecompressEventListener(Lcom/uc/base/net/IDataDecompressEventListener;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/uc/base/net/HttpClientAsync;->mImpl:Lcom/uc/base/net/IHttpClientAsync;

    invoke-interface {v0, p1}, Lcom/uc/base/net/IHttpClientAsync;->setDataDecompressEventListener(Lcom/uc/base/net/IDataDecompressEventListener;)V

    return-void
.end method

.method public setMetricsTAG(Ljava/lang/String;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/uc/base/net/HttpClientAsync;->mImpl:Lcom/uc/base/net/IHttpClientAsync;

    invoke-interface {v0, p1}, Lcom/uc/base/net/IHttpClientAsync;->setMetricsTAG(Ljava/lang/String;)V

    return-void
.end method

.method public setProxy(Ljava/lang/String;I)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/uc/base/net/HttpClientAsync;->mImpl:Lcom/uc/base/net/IHttpClientAsync;

    invoke-interface {v0, p1, p2}, Lcom/uc/base/net/IHttpClientAsync;->setProxy(Ljava/lang/String;I)V

    return-void
.end method

.method public setRequestTimeout(I)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/uc/base/net/HttpClientAsync;->mImpl:Lcom/uc/base/net/IHttpClientAsync;

    invoke-interface {v0, p1}, Lcom/uc/base/net/IHttpClientAsync;->setRequestTimeout(I)V

    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/uc/base/net/HttpClientAsync;->mImpl:Lcom/uc/base/net/IHttpClientAsync;

    invoke-interface {v0, p1}, Lcom/uc/base/net/IHttpClientAsync;->setSocketTimeout(I)V

    return-void
.end method
