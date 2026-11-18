.class public Lcom/uc/base/net/HttpClientSync;
.super Ljava/lang/Object;
.source "HttpClientSync.java"

# interfaces
.implements Lcom/uc/base/net/IHttpClientSync;


# instance fields
.field private mImpl:Lcom/uc/base/net/IHttpClientSync;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {}, Lcom/uc/base/net/NetworkManager;->getInstance()Lcom/uc/base/net/NetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/base/net/NetworkManager;->getNetClientDelegate()Lcom/uc/base/net/INetClientDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/uc/base/net/INetClientDelegate;->createSyncClient()Lcom/uc/base/net/IHttpClientSync;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/base/net/HttpClientSync;->mImpl:Lcom/uc/base/net/IHttpClientSync;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/uc/base/net/HttpClientSync;->mImpl:Lcom/uc/base/net/IHttpClientSync;

    invoke-interface {v0}, Lcom/uc/base/net/IHttpClientSync;->close()V

    return-void
.end method

.method public errorCode()I
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/uc/base/net/HttpClientSync;->mImpl:Lcom/uc/base/net/IHttpClientSync;

    invoke-interface {v0}, Lcom/uc/base/net/IHttpClientSync;->errorCode()I

    move-result v0

    return v0
.end method

.method public followRedirects(Z)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/uc/base/net/HttpClientSync;->mImpl:Lcom/uc/base/net/IHttpClientSync;

    invoke-interface {v0, p1}, Lcom/uc/base/net/IHttpClientSync;->followRedirects(Z)V

    return-void
.end method

.method public getHttpConnectionMetrics()Lcom/uc/base/net/metrics/IHttpConnectionMetrics;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/uc/base/net/HttpClientSync;->mImpl:Lcom/uc/base/net/IHttpClientSync;

    invoke-interface {v0}, Lcom/uc/base/net/IHttpClientSync;->getHttpConnectionMetrics()Lcom/uc/base/net/metrics/IHttpConnectionMetrics;

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

    .line 70
    iget-object v0, p0, Lcom/uc/base/net/HttpClientSync;->mImpl:Lcom/uc/base/net/IHttpClientSync;

    invoke-interface {v0, p1}, Lcom/uc/base/net/IHttpClientSync;->getRequest(Ljava/lang/String;)Lcom/uc/base/net/IRequest;

    move-result-object p1

    return-object p1
.end method

.method public recycle(I)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/uc/base/net/HttpClientSync;->mImpl:Lcom/uc/base/net/IHttpClientSync;

    invoke-interface {v0, p1}, Lcom/uc/base/net/IHttpClientSync;->recycle(I)V

    return-void
.end method

.method public sendRequest(Lcom/uc/base/net/IRequest;)Lcom/uc/base/net/IResponse;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/uc/base/net/HttpClientSync;->mImpl:Lcom/uc/base/net/IHttpClientSync;

    invoke-interface {v0, p1}, Lcom/uc/base/net/IHttpClientSync;->sendRequest(Lcom/uc/base/net/IRequest;)Lcom/uc/base/net/IResponse;

    move-result-object p1

    return-object p1
.end method

.method public setAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/uc/base/net/HttpClientSync;->mImpl:Lcom/uc/base/net/IHttpClientSync;

    invoke-interface {v0, p1, p2}, Lcom/uc/base/net/IHttpClientSync;->setAuth(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setConnectionTimeout(I)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/uc/base/net/HttpClientSync;->mImpl:Lcom/uc/base/net/IHttpClientSync;

    invoke-interface {v0, p1}, Lcom/uc/base/net/IHttpClientSync;->setConnectionTimeout(I)V

    return-void
.end method

.method public setFollowProxy(Z)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/uc/base/net/HttpClientSync;->mImpl:Lcom/uc/base/net/IHttpClientSync;

    invoke-interface {v0, p1}, Lcom/uc/base/net/IHttpClientSync;->setFollowProxy(Z)V

    return-void
.end method

.method public setMetricsTAG(Ljava/lang/String;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/uc/base/net/HttpClientSync;->mImpl:Lcom/uc/base/net/IHttpClientSync;

    invoke-interface {v0, p1}, Lcom/uc/base/net/IHttpClientSync;->setMetricsTAG(Ljava/lang/String;)V

    return-void
.end method

.method public setProxy(Ljava/lang/String;I)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/uc/base/net/HttpClientSync;->mImpl:Lcom/uc/base/net/IHttpClientSync;

    invoke-interface {v0, p1, p2}, Lcom/uc/base/net/IHttpClientSync;->setProxy(Ljava/lang/String;I)V

    return-void
.end method

.method public setRequestTimeout(I)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/uc/base/net/HttpClientSync;->mImpl:Lcom/uc/base/net/IHttpClientSync;

    invoke-interface {v0, p1}, Lcom/uc/base/net/IHttpClientSync;->setRequestTimeout(I)V

    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/uc/base/net/HttpClientSync;->mImpl:Lcom/uc/base/net/IHttpClientSync;

    invoke-interface {v0, p1}, Lcom/uc/base/net/IHttpClientSync;->setSocketTimeout(I)V

    return-void
.end method
