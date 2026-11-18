.class public Lcom/uc/base/net/unet/HttpClientSync;
.super Lcom/uc/base/net/unet/HttpClientBase;
.source "HttpClientSync.java"

# interfaces
.implements Lcom/uc/base/net/IHttpClientSync;


# static fields
.field private static final DEFAULT_SYNC_REQUEST_TIMEOUT:I = 0xea60


# instance fields
.field private mFollowRedirects:Z

.field private mRequestAdaptor:Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;

.field private mRequestException:Lcom/alibaba/mbg/unet/RequestException;

.field private mRequestTimeOut:I

.field private mResponse:Lcom/alibaba/mbg/unet/Response;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/uc/base/net/unet/HttpClientBase;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/uc/base/net/unet/HttpClientSync;->mRequestAdaptor:Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;

    .line 25
    iput-object v0, p0, Lcom/uc/base/net/unet/HttpClientSync;->mResponse:Lcom/alibaba/mbg/unet/Response;

    const/4 v1, 0x1

    .line 26
    iput-boolean v1, p0, Lcom/uc/base/net/unet/HttpClientSync;->mFollowRedirects:Z

    const/4 v1, -0x1

    .line 30
    iput v1, p0, Lcom/uc/base/net/unet/HttpClientSync;->mRequestTimeOut:I

    .line 32
    iput-object v0, p0, Lcom/uc/base/net/unet/HttpClientSync;->mRequestException:Lcom/alibaba/mbg/unet/RequestException;

    return-void
.end method

.method private BeforeSyncRequestStart()V
    .locals 2

    const-string/jumbo v0, "shellunet"

    const-string/jumbo v1, "shellunet httpClientSync BeforeSyncRequestStart"

    .line 95
    invoke-static {v0, v1}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/uc/base/net/unet/HttpClientSync;->mRequestAdaptor:Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;

    iget-boolean v1, p0, Lcom/uc/base/net/unet/HttpClientSync;->mFollowRedirects:Z

    invoke-virtual {v0, v1}, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->setAutoFollowRedirect(Z)V

    .line 98
    iget v0, p0, Lcom/uc/base/net/unet/HttpClientSync;->mRequestTimeOut:I

    if-lez v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/uc/base/net/unet/HttpClientSync;->mRequestAdaptor:Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;

    invoke-virtual {v1, v0}, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->useSyncRequestTimeout(I)V

    .line 101
    :cond_0
    iget v0, p0, Lcom/uc/base/net/unet/HttpClientSync;->mConnectTimeOut:I

    if-lez v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/uc/base/net/unet/HttpClientSync;->mRequestAdaptor:Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;

    iget v1, p0, Lcom/uc/base/net/unet/HttpClientSync;->mConnectTimeOut:I

    invoke-virtual {v0, v1}, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->setConnectTimeout(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const-string/jumbo v0, "shellunet"

    const-string/jumbo v1, "shellunet UnetSyncRequest close"

    .line 69
    invoke-static {v0, v1}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/uc/base/net/unet/HttpClientSync;->mRequestAdaptor:Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;

    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-virtual {v0}, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->cancel()V

    return-void
.end method

.method public errorCode()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/uc/base/net/unet/HttpClientSync;->mRequestException:Lcom/alibaba/mbg/unet/RequestException;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/mbg/unet/RequestException;->getErrorCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public followRedirects(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/uc/base/net/unet/HttpClientSync;->mFollowRedirects:Z

    return-void
.end method

.method public bridge synthetic getHttpConnectionMetrics()Lcom/uc/base/net/metrics/IHttpConnectionMetrics;
    .locals 1

    .line 23
    invoke-super {p0}, Lcom/uc/base/net/unet/HttpClientBase;->getHttpConnectionMetrics()Lcom/uc/base/net/metrics/IHttpConnectionMetrics;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetricsTAG()Ljava/lang/String;
    .locals 1

    .line 23
    invoke-super {p0}, Lcom/uc/base/net/unet/HttpClientBase;->getMetricsTAG()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRequest(Ljava/lang/String;)Lcom/uc/base/net/IRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 23
    invoke-super {p0, p1}, Lcom/uc/base/net/unet/HttpClientBase;->getRequest(Ljava/lang/String;)Lcom/uc/base/net/IRequest;

    move-result-object p1

    return-object p1
.end method

.method public recycle(I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public sendRequest(Lcom/uc/base/net/IRequest;)Lcom/uc/base/net/IResponse;
    .locals 5

    const-string/jumbo v0, "shellunet"

    .line 39
    invoke-virtual {p0}, Lcom/uc/base/net/unet/HttpClientSync;->CreateMetrics()V

    .line 40
    instance-of v1, p1, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 41
    check-cast p1, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;

    iput-object p1, p0, Lcom/uc/base/net/unet/HttpClientSync;->mRequestAdaptor:Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;

    .line 42
    invoke-direct {p0}, Lcom/uc/base/net/unet/HttpClientSync;->BeforeSyncRequestStart()V

    .line 45
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shellunet UnetSyncRequest request.start mRequestAdaptor:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uc/base/net/unet/HttpClientSync;->mRequestAdaptor:Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object p1, p0, Lcom/uc/base/net/unet/HttpClientSync;->mRequestAdaptor:Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;

    invoke-virtual {p1}, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->start()Lcom/alibaba/mbg/unet/Response;

    move-result-object p1

    iput-object p1, p0, Lcom/uc/base/net/unet/HttpClientSync;->mResponse:Lcom/alibaba/mbg/unet/Response;

    .line 47
    iget-object p1, p0, Lcom/uc/base/net/unet/HttpClientSync;->mResponse:Lcom/alibaba/mbg/unet/Response;

    invoke-virtual {p0, p1}, Lcom/uc/base/net/unet/HttpClientSync;->FormatMetrics(Lcom/alibaba/mbg/unet/Response;)V

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#unet HttpClientSync end. url:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uc/base/net/unet/HttpClientSync;->mResponse:Lcom/alibaba/mbg/unet/Response;

    invoke-interface {v1}, Lcom/alibaba/mbg/unet/Response;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mRequestAdaptor:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uc/base/net/unet/HttpClientSync;->mRequestAdaptor:Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shellunet UnetSyncRequest request.start end. response:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uc/base/net/unet/HttpClientSync;->mResponse:Lcom/alibaba/mbg/unet/Response;

    invoke-interface {v1}, Lcom/alibaba/mbg/unet/Response;->getHttpStatusText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rc:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uc/base/net/unet/HttpClientSync;->mResponse:Lcom/alibaba/mbg/unet/Response;

    invoke-interface {v1}, Lcom/alibaba/mbg/unet/Response;->getHttpStatusCode()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uc/base/net/unet/HttpClientSync;->mResponse:Lcom/alibaba/mbg/unet/Response;

    invoke-interface {v1}, Lcom/alibaba/mbg/unet/Response;->getAllHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/uc/base/net/unet/HttpClientSync;->mResponse:Lcom/alibaba/mbg/unet/Response;

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/uc/base/net/unet/HttpClientSync;->mResponse:Lcom/alibaba/mbg/unet/Response;

    invoke-interface {p1}, Lcom/alibaba/mbg/unet/Response;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/uc/base/net/unet/HttpClientSync;->mResponse:Lcom/alibaba/mbg/unet/Response;

    invoke-interface {v1}, Lcom/alibaba/mbg/unet/Response;->getHttpStatusCode()I

    move-result v1

    iget-object v3, p0, Lcom/uc/base/net/unet/HttpClientSync;->mResponse:Lcom/alibaba/mbg/unet/Response;

    invoke-interface {v3}, Lcom/alibaba/mbg/unet/Response;->getHttpStatusText()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/uc/base/net/unet/HttpClientSync;->mResponse:Lcom/alibaba/mbg/unet/Response;

    invoke-interface {v4}, Lcom/alibaba/mbg/unet/Response;->getAllHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/uc/base/net/unet/HttpClientSync;->NotifyRequestComplete(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/uc/base/net/unet/HttpClientSync;->mRequestAdaptor:Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;

    invoke-virtual {p1}, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/uc/base/net/unet/HttpClientSync;->errorCode()I

    move-result v1

    invoke-virtual {p0, p1, v1, v2, v2}, Lcom/uc/base/net/unet/HttpClientSync;->NotifyRequestComplete(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 57
    :goto_0
    new-instance p1, Lcom/uc/base/net/unet/adaptor/UnetResponseAdaptor;

    iget-object v1, p0, Lcom/uc/base/net/unet/HttpClientSync;->mResponse:Lcom/alibaba/mbg/unet/Response;

    invoke-direct {p1, v1}, Lcom/uc/base/net/unet/adaptor/UnetResponseAdaptor;-><init>(Lcom/alibaba/mbg/unet/Response;)V
    :try_end_0
    .catch Lcom/alibaba/mbg/unet/RequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 59
    iput-object p1, p0, Lcom/uc/base/net/unet/HttpClientSync;->mRequestException:Lcom/alibaba/mbg/unet/RequestException;

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shellunet UnetSyncRequest request.start end. RequestException:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v2
.end method

.method public bridge synthetic setAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-super {p0, p1, p2}, Lcom/uc/base/net/unet/HttpClientBase;->setAuth(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public bridge synthetic setConnectionTimeout(I)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/uc/base/net/unet/HttpClientBase;->setConnectionTimeout(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setFollowProxy(Z)V
    .locals 0

    .line 113
    invoke-super {p0, p1}, Lcom/uc/base/net/unet/HttpClientBase;->setFollowProxy(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public bridge synthetic setMetricsTAG(Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/uc/base/net/unet/HttpClientBase;->setMetricsTAG(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setProxy(Ljava/lang/String;I)V
    .locals 0

    .line 108
    invoke-super {p0, p1, p2}, Lcom/uc/base/net/unet/HttpClientBase;->setProxy(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setRequestTimeout(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/uc/base/net/unet/HttpClientSync;->mRequestTimeOut:I

    return-void
.end method

.method public bridge synthetic setSocketTimeout(I)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/uc/base/net/unet/HttpClientBase;->setSocketTimeout(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
