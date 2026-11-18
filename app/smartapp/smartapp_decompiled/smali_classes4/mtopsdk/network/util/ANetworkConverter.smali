.class public final Lmtopsdk/network/util/ANetworkConverter;
.super Ljava/lang/Object;
.source "ANetworkConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static convertNetworkStats(Lanetwork/channel/statist/StatisticData;)Lmtopsdk/network/domain/NetworkStats;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 106
    :cond_0
    new-instance v0, Lmtopsdk/network/domain/NetworkStats;

    invoke-direct {v0}, Lmtopsdk/network/domain/NetworkStats;-><init>()V

    .line 107
    iget v1, p0, Lanetwork/channel/statist/StatisticData;->resultCode:I

    iput v1, v0, Lmtopsdk/network/domain/NetworkStats;->resultCode:I

    .line 108
    iget-boolean v1, p0, Lanetwork/channel/statist/StatisticData;->isRequestSuccess:Z

    iput-boolean v1, v0, Lmtopsdk/network/domain/NetworkStats;->isRequestSuccess:Z

    .line 109
    iget-object v1, p0, Lanetwork/channel/statist/StatisticData;->host:Ljava/lang/String;

    iput-object v1, v0, Lmtopsdk/network/domain/NetworkStats;->host:Ljava/lang/String;

    .line 110
    iget-object v1, p0, Lanetwork/channel/statist/StatisticData;->ip_port:Ljava/lang/String;

    iput-object v1, v0, Lmtopsdk/network/domain/NetworkStats;->ip_port:Ljava/lang/String;

    .line 111
    iget-object v1, p0, Lanetwork/channel/statist/StatisticData;->connectionType:Ljava/lang/String;

    iput-object v1, v0, Lmtopsdk/network/domain/NetworkStats;->connectionType:Ljava/lang/String;

    .line 112
    iget-boolean v1, p0, Lanetwork/channel/statist/StatisticData;->isSSL:Z

    iput-boolean v1, v0, Lmtopsdk/network/domain/NetworkStats;->isSSL:Z

    .line 113
    iget-wide v1, p0, Lanetwork/channel/statist/StatisticData;->oneWayTime_ANet:J

    iput-wide v1, v0, Lmtopsdk/network/domain/NetworkStats;->oneWayTime_ANet:J

    .line 114
    iget-wide v1, p0, Lanetwork/channel/statist/StatisticData;->firstDataTime:J

    iput-wide v1, v0, Lmtopsdk/network/domain/NetworkStats;->firstDataTime:J

    .line 115
    iget-wide v1, p0, Lanetwork/channel/statist/StatisticData;->sendBeforeTime:J

    iput-wide v1, v0, Lmtopsdk/network/domain/NetworkStats;->sendWaitTime:J

    .line 116
    iget-wide v1, p0, Lanetwork/channel/statist/StatisticData;->recDataTime:J

    iput-wide v1, v0, Lmtopsdk/network/domain/NetworkStats;->recDataTime:J

    .line 117
    iget-wide v1, p0, Lanetwork/channel/statist/StatisticData;->sendSize:J

    iput-wide v1, v0, Lmtopsdk/network/domain/NetworkStats;->sendSize:J

    .line 118
    iget-wide v1, p0, Lanetwork/channel/statist/StatisticData;->totalSize:J

    iput-wide v1, v0, Lmtopsdk/network/domain/NetworkStats;->recvSize:J

    .line 119
    iget-wide v1, p0, Lanetwork/channel/statist/StatisticData;->serverRT:J

    iput-wide v1, v0, Lmtopsdk/network/domain/NetworkStats;->serverRT:J

    .line 120
    iget-wide v1, p0, Lanetwork/channel/statist/StatisticData;->dataSpeed:J

    iput-wide v1, v0, Lmtopsdk/network/domain/NetworkStats;->dataSpeed:J

    .line 121
    iget p0, p0, Lanetwork/channel/statist/StatisticData;->retryTime:I

    iput p0, v0, Lmtopsdk/network/domain/NetworkStats;->retryTimes:I

    return-object v0
.end method

.method public static convertRequest(Lmtopsdk/network/domain/Request;)Lanetwork/channel/Request;
    .locals 5

    .line 56
    new-instance v0, Lanetwork/channel/entity/RequestImpl;

    iget-object v1, p0, Lmtopsdk/network/domain/Request;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Lanetwork/channel/entity/RequestImpl;-><init>(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lmtopsdk/network/domain/Request;->seqNo:Ljava/lang/String;

    invoke-interface {v0, v1}, Lanetwork/channel/Request;->setSeqNo(Ljava/lang/String;)V

    .line 58
    iget v1, p0, Lmtopsdk/network/domain/Request;->retryTimes:I

    invoke-interface {v0, v1}, Lanetwork/channel/Request;->setRetryTime(I)V

    .line 59
    iget v1, p0, Lmtopsdk/network/domain/Request;->connectTimeoutMills:I

    invoke-interface {v0, v1}, Lanetwork/channel/Request;->setConnectTimeout(I)V

    .line 60
    iget v1, p0, Lmtopsdk/network/domain/Request;->readTimeoutMills:I

    invoke-interface {v0, v1}, Lanetwork/channel/Request;->setReadTimeout(I)V

    .line 61
    iget v1, p0, Lmtopsdk/network/domain/Request;->bizId:I

    invoke-interface {v0, v1}, Lanetwork/channel/Request;->setBizId(I)V

    .line 64
    iget-object v1, p0, Lmtopsdk/network/domain/Request;->method:Ljava/lang/String;

    invoke-interface {v0, v1}, Lanetwork/channel/Request;->setMethod(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lmtopsdk/network/domain/Request;->headers:Ljava/util/Map;

    invoke-static {v1}, Lmtopsdk/network/util/ANetworkConverter;->createRequestHeaders(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lanetwork/channel/Request;->setHeaders(Ljava/util/List;)V

    .line 66
    iget-object v1, p0, Lmtopsdk/network/domain/Request;->appKey:Ljava/lang/String;

    const-string v2, "APPKEY"

    invoke-interface {v0, v2, v1}, Lanetwork/channel/Request;->setExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lmtopsdk/network/domain/Request;->authCode:Ljava/lang/String;

    const-string v2, "AuthCode"

    invoke-interface {v0, v2, v1}, Lanetwork/channel/Request;->setExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget v1, p0, Lmtopsdk/network/domain/Request;->env:I

    const-string v2, "ENVIRONMENT"

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "test"

    .line 76
    invoke-interface {v0, v2, v1}, Lanetwork/channel/Request;->setExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "pre"

    .line 73
    invoke-interface {v0, v2, v1}, Lanetwork/channel/Request;->setExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "online"

    .line 70
    invoke-interface {v0, v2, v1}, Lanetwork/channel/Request;->setExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_0
    iget-object v1, p0, Lmtopsdk/network/domain/Request;->method:Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    iget-object p0, p0, Lmtopsdk/network/domain/Request;->body:Lmtopsdk/network/domain/RequestBody;

    check-cast p0, Lmtopsdk/network/domain/ParcelableRequestBodyImpl;

    .line 84
    new-instance v1, Lmtopsdk/network/impl/ParcelableRequestBodyEntry;

    invoke-direct {v1, p0}, Lmtopsdk/network/impl/ParcelableRequestBodyEntry;-><init>(Lmtopsdk/network/domain/ParcelableRequestBodyImpl;)V

    invoke-interface {v0, v1}, Lanetwork/channel/Request;->setBodyEntry(Lanet/channel/request/BodyEntry;)V

    .line 85
    invoke-virtual {p0}, Lmtopsdk/network/domain/ParcelableRequestBodyImpl;->contentType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-Type"

    invoke-interface {v0, v2, v1}, Lanetwork/channel/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lmtopsdk/network/domain/ParcelableRequestBodyImpl;->contentLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-lez p0, :cond_3

    .line 88
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Content-Length"

    invoke-interface {v0, v1, p0}, Lanetwork/channel/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method public static createRequestHeaders(Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lanetwork/channel/Header;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 34
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 38
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_1

    .line 40
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    new-instance v2, Lanetwork/channel/entity/BasicHeader;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lanetwork/channel/entity/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
