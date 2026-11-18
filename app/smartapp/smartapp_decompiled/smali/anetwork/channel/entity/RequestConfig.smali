.class public Lanetwork/channel/entity/RequestConfig;
.super Ljava/lang/Object;
.source "RequestConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "anet.RequestConfig"


# instance fields
.field private awcnRequest:Lanet/channel/request/Request;

.field public final connectTimeout:I

.field public currentRetryTimes:I

.field private final isSync:Z

.field private mRedirectTimes:I

.field private maxRetryTime:I

.field public final readTimeout:I

.field private request:Lanetwork/channel/aidl/ParcelableRequest;

.field public final requestType:I

.field public rs:Lanet/channel/statist/RequestStatistic;

.field public final seqNo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lanetwork/channel/aidl/ParcelableRequest;IZ)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lanetwork/channel/entity/RequestConfig;->awcnRequest:Lanet/channel/request/Request;

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lanetwork/channel/entity/RequestConfig;->mRedirectTimes:I

    .line 31
    iput v0, p0, Lanetwork/channel/entity/RequestConfig;->maxRetryTime:I

    .line 32
    iput v0, p0, Lanetwork/channel/entity/RequestConfig;->currentRetryTimes:I

    if-eqz p1, :cond_5

    .line 46
    iput-object p1, p0, Lanetwork/channel/entity/RequestConfig;->request:Lanetwork/channel/aidl/ParcelableRequest;

    .line 47
    iput p2, p0, Lanetwork/channel/entity/RequestConfig;->requestType:I

    .line 48
    iput-boolean p3, p0, Lanetwork/channel/entity/RequestConfig;->isSync:Z

    .line 49
    iget-object p2, p1, Lanetwork/channel/aidl/ParcelableRequest;->seqNo:Ljava/lang/String;

    iget p3, p0, Lanetwork/channel/entity/RequestConfig;->requestType:I

    if-nez p3, :cond_0

    const-string p3, "HTTP"

    goto :goto_0

    :cond_0
    const-string p3, "DGRD"

    :goto_0
    invoke-static {p2, p3}, Lanetwork/channel/util/SeqGen;->createSeqNo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lanetwork/channel/entity/RequestConfig;->seqNo:Ljava/lang/String;

    .line 51
    iget p2, p1, Lanetwork/channel/aidl/ParcelableRequest;->connectTimeout:I

    const p3, 0x463b8000    # 12000.0f

    if-gtz p2, :cond_1

    invoke-static {}, Lanet/channel/util/Utils;->getNetworkTimeFactor()F

    move-result p2

    mul-float p2, p2, p3

    float-to-int p2, p2

    goto :goto_1

    :cond_1
    iget p2, p1, Lanetwork/channel/aidl/ParcelableRequest;->connectTimeout:I

    :goto_1
    iput p2, p0, Lanetwork/channel/entity/RequestConfig;->connectTimeout:I

    .line 54
    iget p2, p1, Lanetwork/channel/aidl/ParcelableRequest;->readTimeout:I

    if-gtz p2, :cond_2

    invoke-static {}, Lanet/channel/util/Utils;->getNetworkTimeFactor()F

    move-result p2

    mul-float p2, p2, p3

    float-to-int p2, p2

    goto :goto_2

    :cond_2
    iget p2, p1, Lanetwork/channel/aidl/ParcelableRequest;->readTimeout:I

    :goto_2
    iput p2, p0, Lanetwork/channel/entity/RequestConfig;->readTimeout:I

    .line 57
    iget p2, p1, Lanetwork/channel/aidl/ParcelableRequest;->retryTime:I

    if-ltz p2, :cond_4

    iget p2, p1, Lanetwork/channel/aidl/ParcelableRequest;->retryTime:I

    const/4 p3, 0x3

    if-le p2, p3, :cond_3

    goto :goto_3

    :cond_3
    iget p2, p1, Lanetwork/channel/aidl/ParcelableRequest;->retryTime:I

    goto :goto_4

    :cond_4
    :goto_3
    const/4 p2, 0x2

    :goto_4
    iput p2, p0, Lanetwork/channel/entity/RequestConfig;->maxRetryTime:I

    .line 59
    invoke-direct {p0}, Lanetwork/channel/entity/RequestConfig;->initHttpUrl()Lanet/channel/util/HttpUrl;

    move-result-object p2

    .line 61
    new-instance p3, Lanet/channel/statist/RequestStatistic;

    invoke-virtual {p2}, Lanet/channel/util/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lanetwork/channel/aidl/ParcelableRequest;->bizId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, v0, p1}, Lanet/channel/statist/RequestStatistic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lanetwork/channel/entity/RequestConfig;->rs:Lanet/channel/statist/RequestStatistic;

    .line 62
    iget-object p1, p0, Lanetwork/channel/entity/RequestConfig;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-virtual {p2}, Lanet/channel/util/HttpUrl;->simpleUrlString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lanet/channel/statist/RequestStatistic;->url:Ljava/lang/String;

    .line 64
    invoke-direct {p0, p2}, Lanetwork/channel/entity/RequestConfig;->buildRequest(Lanet/channel/util/HttpUrl;)Lanet/channel/request/Request;

    move-result-object p1

    iput-object p1, p0, Lanetwork/channel/entity/RequestConfig;->awcnRequest:Lanet/channel/request/Request;

    return-void

    .line 43
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "request is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private buildRequest(Lanet/channel/util/HttpUrl;)Lanet/channel/request/Request;
    .locals 2

    .line 90
    new-instance v0, Lanet/channel/request/Request$Builder;

    invoke-direct {v0}, Lanet/channel/request/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lanet/channel/request/Request$Builder;->setUrl(Lanet/channel/util/HttpUrl;)Lanet/channel/request/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->request:Lanetwork/channel/aidl/ParcelableRequest;

    iget-object v1, v1, Lanetwork/channel/aidl/ParcelableRequest;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setMethod(Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->request:Lanetwork/channel/aidl/ParcelableRequest;

    iget-object v1, v1, Lanetwork/channel/aidl/ParcelableRequest;->bodyEntry:Lanet/channel/request/BodyEntry;

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setBody(Lanet/channel/request/BodyEntry;)Lanet/channel/request/Request$Builder;

    move-result-object v0

    iget v1, p0, Lanetwork/channel/entity/RequestConfig;->readTimeout:I

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setReadTimeout(I)Lanet/channel/request/Request$Builder;

    move-result-object v0

    iget v1, p0, Lanetwork/channel/entity/RequestConfig;->connectTimeout:I

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setConnectTimeout(I)Lanet/channel/request/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->request:Lanetwork/channel/aidl/ParcelableRequest;

    iget-boolean v1, v1, Lanetwork/channel/aidl/ParcelableRequest;->allowRedirect:Z

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setRedirectEnable(Z)Lanet/channel/request/Request$Builder;

    move-result-object v0

    iget v1, p0, Lanetwork/channel/entity/RequestConfig;->mRedirectTimes:I

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setRedirectTimes(I)Lanet/channel/request/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->request:Lanetwork/channel/aidl/ParcelableRequest;

    iget-object v1, v1, Lanetwork/channel/aidl/ParcelableRequest;->bizId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setBizId(Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->seqNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setSeq(Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setRequestStatistic(Lanet/channel/statist/RequestStatistic;)Lanet/channel/request/Request$Builder;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->request:Lanetwork/channel/aidl/ParcelableRequest;

    iget-object v1, v1, Lanetwork/channel/aidl/ParcelableRequest;->params:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setParams(Ljava/util/Map;)Lanet/channel/request/Request$Builder;

    .line 105
    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->request:Lanetwork/channel/aidl/ParcelableRequest;

    iget-object v1, v1, Lanetwork/channel/aidl/ParcelableRequest;->charset:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->request:Lanetwork/channel/aidl/ParcelableRequest;

    iget-object v1, v1, Lanetwork/channel/aidl/ParcelableRequest;->charset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setCharset(Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    .line 109
    :cond_0
    invoke-direct {p0, p1}, Lanetwork/channel/entity/RequestConfig;->initHeaders(Lanet/channel/util/HttpUrl;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lanet/channel/request/Request$Builder;->setHeaders(Ljava/util/Map;)Lanet/channel/request/Request$Builder;

    .line 110
    invoke-virtual {v0}, Lanet/channel/request/Request$Builder;->build()Lanet/channel/request/Request;

    move-result-object p1

    return-object p1
.end method

.method private initHeaders(Lanet/channel/util/HttpUrl;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanet/channel/util/HttpUrl;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 152
    invoke-virtual {p1}, Lanet/channel/util/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-static {p1}, Lanet/channel/strategy/utils/Utils;->isIPV4Address(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-le v2, v3, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_0

    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-static {p1}, Lanet/channel/strategy/utils/Utils;->isIPV6Address(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 165
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 166
    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->request:Lanetwork/channel/aidl/ParcelableRequest;

    iget-object v1, v1, Lanetwork/channel/aidl/ParcelableRequest;->headers:Ljava/util/Map;

    if-eqz v1, :cond_5

    .line 167
    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->request:Lanetwork/channel/aidl/ParcelableRequest;

    iget-object v1, v1, Lanetwork/channel/aidl/ParcelableRequest;->headers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 168
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Host"

    .line 169
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, ":host"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 176
    :cond_2
    iget-object v4, p0, Lanetwork/channel/entity/RequestConfig;->request:Lanetwork/channel/aidl/ParcelableRequest;

    const-string v5, "KeepCustomCookie"

    invoke-virtual {v4, v5}, Lanetwork/channel/aidl/ParcelableRequest;->getExtProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "Cookie"

    .line 178
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v4, :cond_3

    goto :goto_0

    .line 181
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    :goto_1
    if-nez v0, :cond_1

    .line 171
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    return-object p1
.end method

.method private initHttpUrl()Lanet/channel/util/HttpUrl;
    .locals 3

    .line 76
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->request:Lanetwork/channel/aidl/ParcelableRequest;

    iget-object v0, v0, Lanetwork/channel/aidl/ParcelableRequest;->url:Ljava/lang/String;

    invoke-static {v0}, Lanet/channel/util/HttpUrl;->parse(Ljava/lang/String;)Lanet/channel/util/HttpUrl;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 81
    invoke-static {}, Lanetwork/channel/config/NetworkConfigCenter;->isSSLEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    invoke-virtual {v0}, Lanet/channel/util/HttpUrl;->downgradeSchemeAndLock()V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->request:Lanetwork/channel/aidl/ParcelableRequest;

    const-string v2, "EnableSchemeReplace"

    invoke-virtual {v1, v2}, Lanetwork/channel/aidl/ParcelableRequest;->getExtProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {v0}, Lanet/channel/util/HttpUrl;->lockScheme()V

    :cond_1
    :goto_0
    return-object v0

    .line 78
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "url is invalid. url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lanetwork/channel/entity/RequestConfig;->request:Lanetwork/channel/aidl/ParcelableRequest;

    iget-object v2, v2, Lanetwork/channel/aidl/ParcelableRequest;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAwcnRequest()Lanet/channel/request/Request;
    .locals 1

    .line 68
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->awcnRequest:Lanet/channel/request/Request;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->awcnRequest:Lanet/channel/request/Request;

    invoke-virtual {v0}, Lanet/channel/request/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHttpUrl()Lanet/channel/util/HttpUrl;
    .locals 1

    .line 138
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->awcnRequest:Lanet/channel/request/Request;

    invoke-virtual {v0}, Lanet/channel/request/Request;->getHttpUrl()Lanet/channel/util/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->request:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v0, p1}, Lanetwork/channel/aidl/ParcelableRequest;->getExtProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUrlString()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->awcnRequest:Lanet/channel/request/Request;

    invoke-virtual {v0}, Lanet/channel/request/Request;->getUrlString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWaitTimeout()I
    .locals 2

    .line 114
    iget v0, p0, Lanetwork/channel/entity/RequestConfig;->readTimeout:I

    iget v1, p0, Lanetwork/channel/entity/RequestConfig;->maxRetryTime:I

    add-int/lit8 v1, v1, 0x1

    mul-int v0, v0, v1

    return v0
.end method

.method public isAllowRetry()Z
    .locals 2

    .line 127
    iget v0, p0, Lanetwork/channel/entity/RequestConfig;->currentRetryTimes:I

    iget v1, p0, Lanetwork/channel/entity/RequestConfig;->maxRetryTime:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHttpSessionEnable()Z
    .locals 2

    .line 131
    invoke-static {}, Lanetwork/channel/config/NetworkConfigCenter;->isHttpSessionEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->request:Lanetwork/channel/aidl/ParcelableRequest;

    const-string v1, "EnableHttpDns"

    invoke-virtual {v0, v1}, Lanetwork/channel/aidl/ParcelableRequest;->getExtProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lanetwork/channel/config/NetworkConfigCenter;->isAllowHttpIpRetry()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lanetwork/channel/entity/RequestConfig;->currentRetryTimes:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRequestCookieEnabled()Z
    .locals 2

    .line 189
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->request:Lanetwork/channel/aidl/ParcelableRequest;

    const-string v1, "EnableCookie"

    invoke-virtual {v0, v1}, Lanetwork/channel/aidl/ParcelableRequest;->getExtProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSyncRequest()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lanetwork/channel/entity/RequestConfig;->isSync:Z

    return v0
.end method

.method public redirectToUrl(Lanet/channel/util/HttpUrl;)V
    .locals 5

    .line 202
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->seqNo:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "to url"

    aput-object v3, v1, v2

    invoke-virtual {p1}, Lanet/channel/util/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "anet.RequestConfig"

    const-string/jumbo v4, "redirect"

    invoke-static {v2, v4, v0, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    iget v0, p0, Lanetwork/channel/entity/RequestConfig;->mRedirectTimes:I

    add-int/2addr v0, v3

    iput v0, p0, Lanetwork/channel/entity/RequestConfig;->mRedirectTimes:I

    .line 204
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-virtual {p1}, Lanet/channel/util/HttpUrl;->simpleUrlString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanet/channel/statist/RequestStatistic;->url:Ljava/lang/String;

    .line 205
    invoke-direct {p0, p1}, Lanetwork/channel/entity/RequestConfig;->buildRequest(Lanet/channel/util/HttpUrl;)Lanet/channel/request/Request;

    move-result-object p1

    iput-object p1, p0, Lanetwork/channel/entity/RequestConfig;->awcnRequest:Lanet/channel/request/Request;

    return-void
.end method

.method public retryRequest()V
    .locals 2

    .line 197
    iget v0, p0, Lanetwork/channel/entity/RequestConfig;->currentRetryTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lanetwork/channel/entity/RequestConfig;->currentRetryTimes:I

    .line 198
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->rs:Lanet/channel/statist/RequestStatistic;

    iget v1, p0, Lanetwork/channel/entity/RequestConfig;->currentRetryTimes:I

    iput v1, v0, Lanet/channel/statist/RequestStatistic;->retryTimes:I

    return-void
.end method

.method public setAwcnRequest(Lanet/channel/request/Request;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lanetwork/channel/entity/RequestConfig;->awcnRequest:Lanet/channel/request/Request;

    return-void
.end method

.method public shouldCheckContentLength()Z
    .locals 2

    .line 193
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->request:Lanetwork/channel/aidl/ParcelableRequest;

    const-string v1, "CheckContentLength"

    invoke-virtual {v0, v1}, Lanetwork/channel/aidl/ParcelableRequest;->getExtProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
