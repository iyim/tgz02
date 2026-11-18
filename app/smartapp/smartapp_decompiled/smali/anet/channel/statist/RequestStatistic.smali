.class public Lanet/channel/statist/RequestStatistic;
.super Lanet/channel/statist/StatObject;
.source "RequestStatistic.java"


# annotations
.annotation runtime Lanet/channel/statist/Monitor;
    module = "networkPrefer"
    monitorPoint = "network"
.end annotation


# instance fields
.field public accuracy:F
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile bizId:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile bssid:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile cacheTime:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public volatile callbackTime:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public volatile connWaitTime:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public volatile contentEncoding:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile contentLength:J

.field public volatile contentType:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile degraded:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public deviceLevel:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile errorTrace:Ljava/lang/StringBuilder;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public extra:Lorg/json/JSONObject;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile f_refer:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile firstDataTime:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public volatile host:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile ip:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile ipRefer:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile ipType:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile isBg:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile isDNS:Z
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public final isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public isFromExternal:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile isProxy:Z
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile isSSL:Z
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile lastProcessTime:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public lat:D
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public lng:D
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public mnc:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile msg:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
        name = "errorMsg"
    .end annotation
.end field

.field public volatile netReqStart:J

.field public volatile netType:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile oneWayTime:J
    .annotation runtime Lanet/channel/statist/Measure;
        max = 60000.0
    .end annotation
.end field

.field public volatile port:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile processTime:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public volatile protocolType:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile proxyType:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile recDataSize:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public volatile recDataTime:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public volatile reqBodyDeflateSize:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public volatile reqBodyInflateSize:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public volatile reqHeadDeflateSize:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public volatile reqHeadInflateSize:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public volatile reqServiceTransmissionEnd:J

.field public volatile reqStart:J

.field public volatile ret:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile retryCostTime:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public volatile retryTimes:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public roaming:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile rspBodyDeflateSize:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public volatile rspBodyInflateSize:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public volatile rspCbDispatch:J

.field public volatile rspCbEnd:J

.field public volatile rspCbStart:J

.field public volatile rspEnd:J

.field public volatile rspHeadDeflateSize:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public volatile rspHeadInflateSize:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public volatile rspStart:J

.field public volatile sendBeforeTime:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public volatile sendDataSize:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public volatile sendDataTime:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public volatile sendEnd:J

.field public volatile sendStart:J

.field public volatile serializeTransferTime:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public volatile serverRT:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public sinceInitTime:J
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public sinceLastLaunchTime:J
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile spdyRequestSend:Z

.field public volatile start:J

.field public startType:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile statusCode:I
    .annotation runtime Lanet/channel/statist/Dimension;
        name = "errorCode"
    .end annotation
.end field

.field public volatile tnetErrorCode:I

.field public traceId:Ljava/lang/String;

.field public unit:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile url:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
        name = "URL"
    .end annotation
.end field

.field public volatile waitingTime:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 105
    invoke-direct {p0}, Lanet/channel/statist/StatObject;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lanet/channel/statist/RequestStatistic;->ipRefer:I

    const/4 v1, 0x1

    .line 20
    iput v1, p0, Lanet/channel/statist/RequestStatistic;->ipType:I

    const-string v2, ""

    .line 22
    iput-object v2, p0, Lanet/channel/statist/RequestStatistic;->proxyType:Ljava/lang/String;

    .line 23
    iput-object v2, p0, Lanet/channel/statist/RequestStatistic;->netType:Ljava/lang/String;

    const/4 v3, 0x0

    .line 24
    iput-object v3, p0, Lanet/channel/statist/RequestStatistic;->bssid:Ljava/lang/String;

    .line 26
    iput-boolean v0, p0, Lanet/channel/statist/RequestStatistic;->isDNS:Z

    .line 31
    iput v0, p0, Lanet/channel/statist/RequestStatistic;->statusCode:I

    .line 32
    iput-object v2, p0, Lanet/channel/statist/RequestStatistic;->msg:Ljava/lang/String;

    .line 33
    iput-object v3, p0, Lanet/channel/statist/RequestStatistic;->contentEncoding:Ljava/lang/String;

    .line 34
    iput-object v3, p0, Lanet/channel/statist/RequestStatistic;->contentType:Ljava/lang/String;

    .line 35
    iput v0, p0, Lanet/channel/statist/RequestStatistic;->degraded:I

    .line 36
    iput-object v2, p0, Lanet/channel/statist/RequestStatistic;->isBg:Ljava/lang/String;

    .line 37
    iput-object v3, p0, Lanet/channel/statist/RequestStatistic;->errorTrace:Ljava/lang/StringBuilder;

    const-wide v4, 0x40f5f90000000000L    # 90000.0

    .line 39
    iput-wide v4, p0, Lanet/channel/statist/RequestStatistic;->lng:D

    .line 40
    iput-wide v4, p0, Lanet/channel/statist/RequestStatistic;->lat:D

    const/high16 v2, -0x40800000    # -1.0f

    .line 41
    iput v2, p0, Lanet/channel/statist/RequestStatistic;->accuracy:F

    .line 42
    iput v0, p0, Lanet/channel/statist/RequestStatistic;->roaming:I

    const-string v2, "0"

    .line 43
    iput-object v2, p0, Lanet/channel/statist/RequestStatistic;->mnc:Ljava/lang/String;

    .line 45
    iput-object v3, p0, Lanet/channel/statist/RequestStatistic;->extra:Lorg/json/JSONObject;

    .line 46
    iput v0, p0, Lanet/channel/statist/RequestStatistic;->startType:I

    .line 48
    iput v0, p0, Lanet/channel/statist/RequestStatistic;->isFromExternal:I

    const-wide/16 v2, 0x0

    .line 52
    iput-wide v2, p0, Lanet/channel/statist/RequestStatistic;->reqHeadInflateSize:J

    .line 53
    iput-wide v2, p0, Lanet/channel/statist/RequestStatistic;->reqBodyInflateSize:J

    .line 54
    iput-wide v2, p0, Lanet/channel/statist/RequestStatistic;->reqHeadDeflateSize:J

    .line 55
    iput-wide v2, p0, Lanet/channel/statist/RequestStatistic;->reqBodyDeflateSize:J

    .line 57
    iput-wide v2, p0, Lanet/channel/statist/RequestStatistic;->rspHeadDeflateSize:J

    .line 58
    iput-wide v2, p0, Lanet/channel/statist/RequestStatistic;->rspBodyDeflateSize:J

    .line 59
    iput-wide v2, p0, Lanet/channel/statist/RequestStatistic;->rspHeadInflateSize:J

    .line 60
    iput-wide v2, p0, Lanet/channel/statist/RequestStatistic;->rspBodyInflateSize:J

    .line 62
    iput-wide v2, p0, Lanet/channel/statist/RequestStatistic;->retryCostTime:J

    .line 63
    iput-wide v2, p0, Lanet/channel/statist/RequestStatistic;->connWaitTime:J

    .line 64
    iput-wide v2, p0, Lanet/channel/statist/RequestStatistic;->sendBeforeTime:J

    .line 65
    iput-wide v2, p0, Lanet/channel/statist/RequestStatistic;->processTime:J

    .line 66
    iput-wide v2, p0, Lanet/channel/statist/RequestStatistic;->sendDataTime:J

    .line 67
    iput-wide v2, p0, Lanet/channel/statist/RequestStatistic;->firstDataTime:J

    .line 68
    iput-wide v2, p0, Lanet/channel/statist/RequestStatistic;->recDataTime:J

    .line 69
    iput-wide v2, p0, Lanet/channel/statist/RequestStatistic;->serverRT:J

    .line 70
    iput-wide v2, p0, Lanet/channel/statist/RequestStatistic;->cacheTime:J

    .line 71
    iput-wide v2, p0, Lanet/channel/statist/RequestStatistic;->lastProcessTime:J

    .line 72
    iput-wide v2, p0, Lanet/channel/statist/RequestStatistic;->callbackTime:J

    .line 73
    iput-wide v2, p0, Lanet/channel/statist/RequestStatistic;->oneWayTime:J

    .line 74
    iput-wide v2, p0, Lanet/channel/statist/RequestStatistic;->sendDataSize:J

    .line 75
    iput-wide v2, p0, Lanet/channel/statist/RequestStatistic;->recDataSize:J

    .line 76
    iput-wide v2, p0, Lanet/channel/statist/RequestStatistic;->waitingTime:J

    .line 77
    iput-wide v2, p0, Lanet/channel/statist/RequestStatistic;->serializeTransferTime:J

    .line 79
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lanet/channel/statist/RequestStatistic;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    iput-boolean v0, p0, Lanet/channel/statist/RequestStatistic;->spdyRequestSend:Z

    .line 81
    iput-wide v2, p0, Lanet/channel/statist/RequestStatistic;->start:J

    .line 82
    iput-wide v2, p0, Lanet/channel/statist/RequestStatistic;->reqStart:J

    .line 83
    iput-wide v2, p0, Lanet/channel/statist/RequestStatistic;->sendStart:J

    .line 84
    iput-wide v2, p0, Lanet/channel/statist/RequestStatistic;->sendEnd:J

    .line 85
    iput-wide v2, p0, Lanet/channel/statist/RequestStatistic;->rspStart:J

    .line 86
    iput-wide v2, p0, Lanet/channel/statist/RequestStatistic;->rspEnd:J

    .line 87
    iput-wide v2, p0, Lanet/channel/statist/RequestStatistic;->contentLength:J

    .line 88
    iput v0, p0, Lanet/channel/statist/RequestStatistic;->tnetErrorCode:I

    .line 106
    iput-object p1, p0, Lanet/channel/statist/RequestStatistic;->host:Ljava/lang/String;

    .line 107
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getProxyType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/statist/RequestStatistic;->proxyType:Ljava/lang/String;

    .line 108
    iget-object p1, p0, Lanet/channel/statist/RequestStatistic;->proxyType:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lanet/channel/statist/RequestStatistic;->isProxy:Z

    .line 109
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getNetworkSubType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/statist/RequestStatistic;->netType:Ljava/lang/String;

    .line 110
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getWifiBSSID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/statist/RequestStatistic;->bssid:Ljava/lang/String;

    .line 111
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "bg"

    goto :goto_0

    :cond_0
    const-string p1, "fg"

    :goto_0
    iput-object p1, p0, Lanet/channel/statist/RequestStatistic;->isBg:Ljava/lang/String;

    .line 112
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->isRoaming()Z

    move-result p1

    iput p1, p0, Lanet/channel/statist/RequestStatistic;->roaming:I

    .line 113
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getSimOp()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/statist/RequestStatistic;->mnc:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lanet/channel/statist/RequestStatistic;->bizId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public appendErrorTrace(Ljava/lang/String;)V
    .locals 5

    .line 141
    iget-object v0, p0, Lanet/channel/statist/RequestStatistic;->errorTrace:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lanet/channel/statist/RequestStatistic;->errorTrace:Ljava/lang/StringBuilder;

    .line 144
    :cond_0
    iget-object v0, p0, Lanet/channel/statist/RequestStatistic;->errorTrace:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lanet/channel/statist/RequestStatistic;->errorTrace:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_1
    iget-object v0, p0, Lanet/channel/statist/RequestStatistic;->errorTrace:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lanet/channel/statist/RequestStatistic;->reqStart:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method public beforeCommit()Z
    .locals 2

    .line 204
    iget v0, p0, Lanet/channel/statist/RequestStatistic;->statusCode:I

    const/16 v1, -0xc8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 161
    :try_start_0
    iget-object v0, p0, Lanet/channel/statist/RequestStatistic;->extra:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lanet/channel/statist/RequestStatistic;->extra:Lorg/json/JSONObject;

    .line 164
    :cond_0
    iget-object v0, p0, Lanet/channel/statist/RequestStatistic;->extra:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 166
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public recordRedirect(ILjava/lang/String;)V
    .locals 4

    .line 152
    iput-object p2, p0, Lanet/channel/statist/RequestStatistic;->url:Ljava/lang/String;

    .line 153
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lanet/channel/statist/RequestStatistic;->appendErrorTrace(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 155
    iget-wide v0, p0, Lanet/channel/statist/RequestStatistic;->retryCostTime:J

    iget-wide v2, p0, Lanet/channel/statist/RequestStatistic;->start:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lanet/channel/statist/RequestStatistic;->retryCostTime:J

    .line 156
    iput-wide p1, p0, Lanet/channel/statist/RequestStatistic;->start:J

    return-void
.end method

.method public setConnType(Lanet/channel/entity/ConnType;)V
    .locals 1

    .line 118
    invoke-virtual {p1}, Lanet/channel/entity/ConnType;->isSSL()Z

    move-result v0

    iput-boolean v0, p0, Lanet/channel/statist/RequestStatistic;->isSSL:Z

    .line 119
    invoke-virtual {p1}, Lanet/channel/entity/ConnType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/statist/RequestStatistic;->protocolType:Ljava/lang/String;

    return-void
.end method

.method public setIPAndPort(Ljava/lang/String;I)V
    .locals 0

    .line 123
    iput-object p1, p0, Lanet/channel/statist/RequestStatistic;->ip:Ljava/lang/String;

    .line 124
    iput p2, p0, Lanet/channel/statist/RequestStatistic;->port:I

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 126
    iput-boolean p2, p0, Lanet/channel/statist/RequestStatistic;->isDNS:Z

    .line 130
    :cond_0
    iget p2, p0, Lanet/channel/statist/RequestStatistic;->retryTimes:I

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    const-string p2, "firstIp"

    .line 131
    invoke-virtual {p0, p2, p1}, Lanet/channel/statist/RequestStatistic;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setIpInfo(II)V
    .locals 0

    .line 136
    iput p1, p0, Lanet/channel/statist/RequestStatistic;->ipRefer:I

    .line 137
    iput p2, p0, Lanet/channel/statist/RequestStatistic;->ipType:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "[RequestStatistic]ret="

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lanet/channel/statist/RequestStatistic;->ret:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",statusCode="

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lanet/channel/statist/RequestStatistic;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",msg="

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanet/channel/statist/RequestStatistic;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",host="

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanet/channel/statist/RequestStatistic;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",ip="

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanet/channel/statist/RequestStatistic;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",port="

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lanet/channel/statist/RequestStatistic;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",protocolType="

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanet/channel/statist/RequestStatistic;->protocolType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",retryTime="

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lanet/channel/statist/RequestStatistic;->retryTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",retryCostTime="

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanet/channel/statist/RequestStatistic;->retryCostTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",processTime="

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanet/channel/statist/RequestStatistic;->processTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",connWaitTime="

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanet/channel/statist/RequestStatistic;->connWaitTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",cacheTime="

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanet/channel/statist/RequestStatistic;->cacheTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",sendDataTime="

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanet/channel/statist/RequestStatistic;->sendDataTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",firstDataTime="

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanet/channel/statist/RequestStatistic;->firstDataTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",recDataTime="

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanet/channel/statist/RequestStatistic;->recDataTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",lastProcessTime="

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanet/channel/statist/RequestStatistic;->lastProcessTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",oneWayTime="

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanet/channel/statist/RequestStatistic;->oneWayTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",callbackTime="

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanet/channel/statist/RequestStatistic;->callbackTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",serverRT="

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanet/channel/statist/RequestStatistic;->serverRT:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",sendSize="

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanet/channel/statist/RequestStatistic;->sendDataSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",recDataSize="

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanet/channel/statist/RequestStatistic;->recDataSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",originalDataSize="

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanet/channel/statist/RequestStatistic;->rspBodyDeflateSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 195
    iget-object v1, p0, Lanet/channel/statist/RequestStatistic;->extra:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    const-string v1, ",extra="

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanet/channel/statist/RequestStatistic;->extra:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ",url="

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanet/channel/statist/RequestStatistic;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
