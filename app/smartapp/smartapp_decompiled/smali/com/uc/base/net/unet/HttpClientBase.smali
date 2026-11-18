.class abstract Lcom/uc/base/net/unet/HttpClientBase;
.super Ljava/lang/Object;
.source "HttpClientBase.java"


# instance fields
.field protected mConnectTimeOut:I

.field protected mMetrics:Lcom/uc/base/net/metrics/HttpConnectionMetrics;

.field protected mMetricsConnection:Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;

.field private mMetricsTag:Ljava/lang/String;

.field protected mPassword:Ljava/lang/String;

.field private mProxyHost:Ljava/lang/String;

.field private mProxyPort:I

.field mShellManager:Lcom/alibaba/mbg/unet/UnetManager;

.field protected mSocketTimeOut:I

.field protected mUsername:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/uc/base/net/unet/HttpClientBase;->mConnectTimeOut:I

    const v0, 0xea60

    .line 48
    iput v0, p0, Lcom/uc/base/net/unet/HttpClientBase;->mSocketTimeOut:I

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/uc/base/net/unet/HttpClientBase;->mMetricsConnection:Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;

    .line 74
    iput-object v0, p0, Lcom/uc/base/net/unet/HttpClientBase;->mMetrics:Lcom/uc/base/net/metrics/HttpConnectionMetrics;

    .line 76
    iput-object v0, p0, Lcom/uc/base/net/unet/HttpClientBase;->mShellManager:Lcom/alibaba/mbg/unet/UnetManager;

    return-void
.end method


# virtual methods
.method protected CreateMetrics()V
    .locals 2

    .line 179
    new-instance v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;

    iget-object v1, p0, Lcom/uc/base/net/unet/HttpClientBase;->mMetricsTag:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/uc/base/net/unet/HttpClientBase;->mMetricsConnection:Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;

    .line 180
    new-instance v0, Lcom/uc/base/net/metrics/HttpConnectionMetrics;

    iget-object v1, p0, Lcom/uc/base/net/unet/HttpClientBase;->mMetricsConnection:Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;

    invoke-direct {v0, v1}, Lcom/uc/base/net/metrics/HttpConnectionMetrics;-><init>(Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;)V

    iput-object v0, p0, Lcom/uc/base/net/unet/HttpClientBase;->mMetrics:Lcom/uc/base/net/metrics/HttpConnectionMetrics;

    return-void
.end method

.method protected FormatMetrics(Lcom/alibaba/mbg/unet/Response;)V
    .locals 6

    const-string/jumbo v0, "shellunet"

    if-nez p1, :cond_0

    const-string p1, "HttpClientBase FormatMetrics iResponse null. "

    .line 185
    invoke-static {v0, p1}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "HttpClientBase FormatMetrics "

    .line 188
    invoke-static {v0, v1}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-interface {p1}, Lcom/alibaba/mbg/unet/Response;->getMetricInfoArray()[Ljava/lang/String;

    move-result-object v0

    .line 192
    array-length v1, v0

    const/16 v2, 0xd

    if-lt v1, v2, :cond_3

    .line 193
    iget-object v1, p0, Lcom/uc/base/net/unet/HttpClientBase;->mMetricsConnection:Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;

    sget-object v3, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_SENT_BYTES_COUNT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const/4 v4, 0x5

    aget-object v4, v0, v4

    invoke-virtual {v1, v3, v4}, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->setMetrics(Lcom/uc/base/net/metrics/HttpConnectionMetricsType;Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/uc/base/net/unet/HttpClientBase;->mMetricsConnection:Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;

    sget-object v3, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_RECEIVED_BYTES_COUNT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const/4 v4, 0x6

    aget-object v4, v0, v4

    invoke-virtual {v1, v3, v4}, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->setMetrics(Lcom/uc/base/net/metrics/HttpConnectionMetricsType;Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/uc/base/net/unet/HttpClientBase;->mMetricsConnection:Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;

    sget-object v3, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_REQUEST_COUNT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->setMetrics(Lcom/uc/base/net/metrics/HttpConnectionMetricsType;Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/uc/base/net/unet/HttpClientBase;->mMetricsConnection:Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;

    sget-object v3, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_RESPONSE_COUNT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    invoke-virtual {v1, v3, v4}, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->setMetrics(Lcom/uc/base/net/metrics/HttpConnectionMetricsType;Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/uc/base/net/unet/HttpClientBase;->mMetricsConnection:Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;

    sget-object v3, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_REMOTE_ADDRESS:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const/16 v4, 0xa

    aget-object v4, v0, v4

    invoke-virtual {v1, v3, v4}, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->setMetrics(Lcom/uc/base/net/metrics/HttpConnectionMetricsType;Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/uc/base/net/unet/HttpClientBase;->mMetricsConnection:Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;

    sget-object v3, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_DNS_PARSE_TIME:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v1, v3, v4}, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->setMetrics(Lcom/uc/base/net/metrics/HttpConnectionMetricsType;Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/uc/base/net/unet/HttpClientBase;->mMetricsConnection:Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;

    sget-object v3, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_CONNECTION_TIME:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v1, v3, v4}, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->setMetrics(Lcom/uc/base/net/metrics/HttpConnectionMetricsType;Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/uc/base/net/unet/HttpClientBase;->mMetricsConnection:Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;

    sget-object v3, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_RTT_TIME:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const/4 v4, 0x4

    aget-object v4, v0, v4

    invoke-virtual {v1, v3, v4}, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->setMetrics(Lcom/uc/base/net/metrics/HttpConnectionMetricsType;Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/uc/base/net/unet/HttpClientBase;->mMetricsConnection:Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;

    sget-object v3, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_CONNECT_COUNT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const/4 v4, 0x7

    aget-object v4, v0, v4

    invoke-virtual {v1, v3, v4}, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->setMetrics(Lcom/uc/base/net/metrics/HttpConnectionMetricsType;Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/uc/base/net/unet/HttpClientBase;->mMetricsConnection:Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;

    sget-object v3, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_LINKUP_STATUS:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const/16 v4, 0x8

    aget-object v4, v0, v4

    invoke-virtual {v1, v3, v4}, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->setMetrics(Lcom/uc/base/net/metrics/HttpConnectionMetricsType;Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/uc/base/net/unet/HttpClientBase;->mMetricsConnection:Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;

    sget-object v3, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_LINKUP_ERRORCODE:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const/16 v4, 0x9

    aget-object v4, v0, v4

    invoke-virtual {v1, v3, v4}, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->setMetrics(Lcom/uc/base/net/metrics/HttpConnectionMetricsType;Ljava/lang/String;)V

    .line 206
    array-length v1, v0

    const/16 v3, 0xc

    if-lt v1, v3, :cond_1

    .line 207
    iget-object v1, p0, Lcom/uc/base/net/unet/HttpClientBase;->mMetricsConnection:Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;

    sget-object v4, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_LINKUP_URL:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const/16 v5, 0xb

    aget-object v5, v0, v5

    invoke-virtual {v1, v4, v5}, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->setMetrics(Lcom/uc/base/net/metrics/HttpConnectionMetricsType;Ljava/lang/String;)V

    .line 210
    :cond_1
    array-length v1, v0

    if-lt v1, v2, :cond_2

    .line 211
    iget-object v1, p0, Lcom/uc/base/net/unet/HttpClientBase;->mMetricsConnection:Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;

    sget-object v4, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_USERVER_MASTER_URL:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    aget-object v3, v0, v3

    invoke-virtual {v1, v4, v3}, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->setMetrics(Lcom/uc/base/net/metrics/HttpConnectionMetricsType;Ljava/lang/String;)V

    .line 213
    :cond_2
    array-length v1, v0

    const/16 v3, 0xe

    if-lt v1, v3, :cond_3

    .line 214
    iget-object v1, p0, Lcom/uc/base/net/unet/HttpClientBase;->mMetricsConnection:Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;

    sget-object v3, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_REMOTE_PORT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    aget-object v0, v0, v2

    invoke-virtual {v1, v3, v0}, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->setMetrics(Lcom/uc/base/net/metrics/HttpConnectionMetricsType;Ljava/lang/String;)V

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/uc/base/net/unet/HttpClientBase;->mMetricsConnection:Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;

    sget-object v1, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_RECEIVED_BYTES_COUNT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    invoke-interface {p1}, Lcom/alibaba/mbg/unet/Response;->getReceivedBytesCount()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->setMetrics(Lcom/uc/base/net/metrics/HttpConnectionMetricsType;Ljava/lang/String;)V

    const-string v0, "Content-Encoding"

    .line 220
    invoke-static {p1, v0}, Lcom/uc/base/net/unet/util/HttpUtil;->getHeaderFromResponse(Lcom/alibaba/mbg/unet/Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gzip"

    .line 222
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v3, "zstd"

    if-eqz v2, :cond_4

    goto :goto_0

    .line 224
    :cond_4
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Zstd-Dictid"

    .line 225
    invoke-static {p1, v0}, Lcom/uc/base/net/unet/util/HttpUtil;->getHeaderFromResponse(Lcom/alibaba/mbg/unet/Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 226
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 227
    iget-object v0, p0, Lcom/uc/base/net/unet/HttpClientBase;->mMetricsConnection:Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;

    sget-object v1, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_ZSTD_DICT_ID:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    invoke-virtual {v0, v1, p1}, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->setMetrics(Lcom/uc/base/net/metrics/HttpConnectionMetricsType;Ljava/lang/String;)V

    const-string/jumbo v1, "zstd_dict"

    goto :goto_0

    :cond_5
    move-object v1, v3

    goto :goto_0

    :cond_6
    const-string v1, "none"

    .line 233
    :goto_0
    iget-object p1, p0, Lcom/uc/base/net/unet/HttpClientBase;->mMetricsConnection:Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;

    sget-object v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_DECOMPRESS_ALG:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    invoke-virtual {p1, v0, v1}, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->setMetrics(Lcom/uc/base/net/metrics/HttpConnectionMetricsType;Ljava/lang/String;)V

    return-void
.end method

.method protected NotifyRequestComplete(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/uc/base/net/unet/HttpClientBase;->mShellManager:Lcom/alibaba/mbg/unet/UnetManager;

    if-nez v0, :cond_0

    return-void

    .line 238
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/mbg/unet/UnetManager;->getProxyDelegate()Lcom/alibaba/mbg/unet/IProxyDelegate;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 241
    :cond_1
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alibaba/mbg/unet/IProxyDelegate;->onRequestComplete(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public getHttpConnectionMetrics()Lcom/uc/base/net/metrics/IHttpConnectionMetrics;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/uc/base/net/unet/HttpClientBase;->mMetrics:Lcom/uc/base/net/metrics/HttpConnectionMetrics;

    return-object v0
.end method

.method public getMetricsTAG()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/uc/base/net/unet/HttpClientBase;->mMetricsTag:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest(Ljava/lang/String;)Lcom/uc/base/net/IRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpClientBase getRequest url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shellunet"

    invoke-static {v1, v0}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "http"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    :try_start_0
    new-instance v0, Lcom/uc/base/net/util/UrlParser;

    invoke-direct {v0, p1}, Lcom/uc/base/net/util/UrlParser;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Lcom/uc/base/net/util/UrlParser;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    :cond_0
    :goto_0
    invoke-static {}, Lcom/uc/base/net/unet/UNetContext;->getUNetManager()Lcom/alibaba/mbg/unet/UnetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/base/net/unet/HttpClientBase;->mShellManager:Lcom/alibaba/mbg/unet/UnetManager;

    .line 151
    iget-object v0, p0, Lcom/uc/base/net/unet/HttpClientBase;->mProxyHost:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/uc/base/net/unet/HttpClientBase;->mProxyHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uc/base/net/unet/HttpClientBase;->mProxyPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/uc/base/net/unet/util/ProxyMap;->addProxyInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 154
    :cond_1
    invoke-static {p1}, Lcom/uc/base/net/unet/util/ProxyMap;->removeProxyInfo(Ljava/lang/String;)V

    .line 157
    :goto_1
    new-instance v0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;

    iget-object v1, p0, Lcom/uc/base/net/unet/HttpClientBase;->mShellManager:Lcom/alibaba/mbg/unet/UnetManager;

    invoke-direct {v0, v1, p1}, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;-><init>(Lcom/alibaba/mbg/unet/UnetManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public setAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/uc/base/net/unet/HttpClientBase;->mUsername:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lcom/uc/base/net/unet/HttpClientBase;->mPassword:Ljava/lang/String;

    return-void
.end method

.method public setConnectionTimeout(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/uc/base/net/unet/HttpClientBase;->mConnectTimeOut:I

    return-void
.end method

.method public setFollowProxy(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 123
    iput-object p1, p0, Lcom/uc/base/net/unet/HttpClientBase;->mProxyHost:Ljava/lang/String;

    const/4 p1, 0x0

    .line 124
    iput p1, p0, Lcom/uc/base/net/unet/HttpClientBase;->mProxyPort:I

    :cond_0
    return-void
.end method

.method public setMetricsTAG(Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/uc/base/net/unet/HttpClientBase;->mMetricsTag:Ljava/lang/String;

    return-void
.end method

.method public setProxy(Ljava/lang/String;I)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/uc/base/net/unet/HttpClientBase;->mProxyHost:Ljava/lang/String;

    .line 118
    iput p2, p0, Lcom/uc/base/net/unet/HttpClientBase;->mProxyPort:I

    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/uc/base/net/unet/HttpClientBase;->mSocketTimeOut:I

    return-void
.end method
