.class public Lanet/channel/statist/SessionStatistic;
.super Lanet/channel/statist/StatObject;
.source "SessionStatistic.java"


# annotations
.annotation runtime Lanet/channel/statist/Monitor;
    module = "networkPrefer"
    monitorPoint = "session"
.end annotation


# static fields
.field public static maxRetryTime:I


# instance fields
.field public ackTime:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public authTime:J
    .annotation runtime Lanet/channel/statist/Measure;
        max = 15000.0
    .end annotation
.end field

.field public cfRCount:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public closeReason:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public connectionTime:J
    .annotation runtime Lanet/channel/statist/Measure;
        max = 15000.0
        name = "connTime"
    .end annotation
.end field

.field public conntype:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
        name = "protocolType"
    .end annotation
.end field

.field public errorCode:J
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public extra:Lorg/json/JSONObject;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public host:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public inceptCount:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public ip:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public ipRefer:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public ipType:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public isBackground:Z
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public isCommitted:Z

.field public isKL:J
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public isProxy:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public isTunnel:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public lastPingInterval:I
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public liveTime:J
    .annotation runtime Lanet/channel/statist/Measure;
        max = 86400.0
    .end annotation
.end field

.field public netType:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public pRate:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public port:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public ppkgCount:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public recvSizeCount:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public requestCount:J
    .annotation runtime Lanet/channel/statist/Measure;
        constantValue = 1.0
    .end annotation
.end field

.field public ret:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public retryTimes:J
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public sdkv:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public sendSizeCount:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public sslCalTime:J
    .annotation runtime Lanet/channel/statist/Measure;
        max = 15000.0
    .end annotation
.end field

.field public sslTime:J
    .annotation runtime Lanet/channel/statist/Measure;
        max = 15000.0
    .end annotation
.end field

.field public stdRCount:J
    .annotation runtime Lanet/channel/statist/Measure;
        constantValue = 0.0
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lanet/channel/entity/ConnInfo;)V
    .locals 3

    .line 57
    invoke-direct {p0}, Lanet/channel/statist/StatObject;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lanet/channel/statist/SessionStatistic;->isProxy:I

    .line 28
    iput v0, p0, Lanet/channel/statist/SessionStatistic;->ipRefer:I

    const/4 v1, 0x1

    .line 29
    iput v1, p0, Lanet/channel/statist/SessionStatistic;->ipType:I

    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Lanet/channel/statist/SessionStatistic;->extra:Lorg/json/JSONObject;

    const-wide/16 v1, 0x0

    .line 40
    iput-wide v1, p0, Lanet/channel/statist/SessionStatistic;->liveTime:J

    const-wide/16 v1, 0x1

    .line 41
    iput-wide v1, p0, Lanet/channel/statist/SessionStatistic;->requestCount:J

    .line 43
    iput-wide v1, p0, Lanet/channel/statist/SessionStatistic;->stdRCount:J

    .line 54
    iput-boolean v0, p0, Lanet/channel/statist/SessionStatistic;->isCommitted:Z

    if-nez p1, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-virtual {p1}, Lanet/channel/entity/ConnInfo;->getIp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/statist/SessionStatistic;->ip:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lanet/channel/entity/ConnInfo;->getPort()I

    move-result v0

    iput v0, p0, Lanet/channel/statist/SessionStatistic;->port:I

    .line 64
    iget-object v0, p1, Lanet/channel/entity/ConnInfo;->strategy:Lanet/channel/strategy/IConnStrategy;

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p1, Lanet/channel/entity/ConnInfo;->strategy:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getIpSource()I

    move-result v0

    iput v0, p0, Lanet/channel/statist/SessionStatistic;->ipRefer:I

    .line 66
    iget-object v0, p1, Lanet/channel/entity/ConnInfo;->strategy:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getIpType()I

    move-result v0

    iput v0, p0, Lanet/channel/statist/SessionStatistic;->ipType:I

    .line 68
    :cond_1
    invoke-virtual {p1}, Lanet/channel/entity/ConnInfo;->getHeartbeat()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lanet/channel/statist/SessionStatistic;->pRate:J

    .line 69
    invoke-virtual {p1}, Lanet/channel/entity/ConnInfo;->getConnType()Lanet/channel/entity/ConnType;

    move-result-object v0

    invoke-virtual {v0}, Lanet/channel/entity/ConnType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/statist/SessionStatistic;->conntype:Ljava/lang/String;

    .line 70
    iget v0, p1, Lanet/channel/entity/ConnInfo;->retryTime:I

    int-to-long v0, v0

    iput-wide v0, p0, Lanet/channel/statist/SessionStatistic;->retryTimes:J

    .line 71
    iget p1, p1, Lanet/channel/entity/ConnInfo;->maxRetryTime:I

    sput p1, Lanet/channel/statist/SessionStatistic;->maxRetryTime:I

    return-void
.end method


# virtual methods
.method public beforeCommit()Z
    .locals 7

    .line 75
    iget v0, p0, Lanet/channel/statist/SessionStatistic;->ret:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-wide v3, p0, Lanet/channel/statist/SessionStatistic;->retryTimes:J

    sget v0, Lanet/channel/statist/SessionStatistic;->maxRetryTime:I

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    iget-wide v3, p0, Lanet/channel/statist/SessionStatistic;->errorCode:J

    const-wide/16 v5, -0xa35

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    const-wide/16 v5, -0xa29

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    .line 79
    :cond_0
    invoke-static {v2}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v3, 0x5

    .line 80
    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p0, Lanet/channel/statist/SessionStatistic;->retryTimes:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "maxRetryTime"

    aput-object v4, v3, v2

    const/4 v2, 0x2

    sget v4, Lanet/channel/statist/SessionStatistic;->maxRetryTime:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "errorCode"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    iget-wide v4, p0, Lanet/channel/statist/SessionStatistic;->errorCode:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "SessionStat no need commit"

    const-string/jumbo v4, "retry:"

    invoke-static {v2, v0, v4, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v1

    .line 84
    :cond_2
    iget-boolean v0, p0, Lanet/channel/statist/SessionStatistic;->isCommitted:Z

    if-eqz v0, :cond_3

    return v1

    .line 87
    :cond_3
    iput-boolean v2, p0, Lanet/channel/statist/SessionStatistic;->isCommitted:Z

    return v2
.end method

.method public getAlarmObject()Lanet/channel/statist/AlarmObject;
    .locals 3

    .line 92
    new-instance v0, Lanet/channel/statist/AlarmObject;

    invoke-direct {v0}, Lanet/channel/statist/AlarmObject;-><init>()V

    const-string v1, "networkPrefer"

    .line 93
    iput-object v1, v0, Lanet/channel/statist/AlarmObject;->module:Ljava/lang/String;

    const-string v1, "connect_succ_rate"

    .line 94
    iput-object v1, v0, Lanet/channel/statist/AlarmObject;->modulePoint:Ljava/lang/String;

    .line 95
    iget v1, p0, Lanet/channel/statist/SessionStatistic;->ret:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lanet/channel/statist/AlarmObject;->isSuccess:Z

    .line 96
    iget-boolean v1, v0, Lanet/channel/statist/AlarmObject;->isSuccess:Z

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lanet/channel/statist/SessionStatistic;->closeReason:Ljava/lang/String;

    iput-object v1, v0, Lanet/channel/statist/AlarmObject;->arg:Ljava/lang/String;

    goto :goto_1

    .line 99
    :cond_1
    iget-wide v1, p0, Lanet/channel/statist/SessionStatistic;->errorCode:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanet/channel/statist/AlarmObject;->errorCode:Ljava/lang/String;

    :goto_1
    return-object v0
.end method
