.class public Lanet/channel/entity/ConnInfo;
.super Ljava/lang/Object;
.source "ConnInfo.java"


# instance fields
.field private host:Ljava/lang/String;

.field public maxRetryTime:I

.field public retryTime:I

.field private seq:Ljava/lang/String;

.field public final strategy:Lanet/channel/strategy/IConnStrategy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lanet/channel/entity/ConnInfo;->retryTime:I

    .line 11
    iput v0, p0, Lanet/channel/entity/ConnInfo;->maxRetryTime:I

    .line 14
    iput-object p3, p0, Lanet/channel/entity/ConnInfo;->strategy:Lanet/channel/strategy/IConnStrategy;

    .line 15
    iput-object p1, p0, Lanet/channel/entity/ConnInfo;->host:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lanet/channel/entity/ConnInfo;->seq:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConnType()Lanet/channel/entity/ConnType;
    .locals 1

    .line 36
    iget-object v0, p0, Lanet/channel/entity/ConnInfo;->strategy:Lanet/channel/strategy/IConnStrategy;

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getProtocol()Lanet/channel/strategy/ConnProtocol;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/entity/ConnType;->valueOf(Lanet/channel/strategy/ConnProtocol;)Lanet/channel/entity/ConnType;

    move-result-object v0

    return-object v0

    .line 39
    :cond_0
    sget-object v0, Lanet/channel/entity/ConnType;->HTTP:Lanet/channel/entity/ConnType;

    return-object v0
.end method

.method public getConnectionTimeout()I
    .locals 2

    .line 44
    iget-object v0, p0, Lanet/channel/entity/ConnInfo;->strategy:Lanet/channel/strategy/IConnStrategy;

    const/16 v1, 0x4e20

    if-eqz v0, :cond_1

    .line 45
    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getConnectionTimeout()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lanet/channel/entity/ConnInfo;->strategy:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getConnectionTimeout()I

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method public getHeartbeat()I
    .locals 1

    .line 71
    iget-object v0, p0, Lanet/channel/entity/ConnInfo;->strategy:Lanet/channel/strategy/IConnStrategy;

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getHeartbeat()I

    move-result v0

    return v0

    :cond_0
    const v0, 0xafc8

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lanet/channel/entity/ConnInfo;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lanet/channel/entity/ConnInfo;->strategy:Lanet/channel/strategy/IConnStrategy;

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 28
    iget-object v0, p0, Lanet/channel/entity/ConnInfo;->strategy:Lanet/channel/strategy/IConnStrategy;

    if-eqz v0, :cond_0

    .line 29
    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getPort()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getReadTimeout()I
    .locals 2

    .line 52
    iget-object v0, p0, Lanet/channel/entity/ConnInfo;->strategy:Lanet/channel/strategy/IConnStrategy;

    const/16 v1, 0x4e20

    if-eqz v0, :cond_1

    .line 53
    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getReadTimeout()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lanet/channel/entity/ConnInfo;->strategy:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getReadTimeout()I

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method public getSeq()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lanet/channel/entity/ConnInfo;->seq:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnInfo [ip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lanet/channel/entity/ConnInfo;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lanet/channel/entity/ConnInfo;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lanet/channel/entity/ConnInfo;->getConnType()Lanet/channel/entity/ConnType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",hb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lanet/channel/entity/ConnInfo;->getHeartbeat()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
