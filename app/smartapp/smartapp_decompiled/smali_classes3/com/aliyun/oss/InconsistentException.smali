.class public Lcom/aliyun/oss/InconsistentException;
.super Ljava/lang/RuntimeException;
.source "InconsistentException.java"


# static fields
.field private static final serialVersionUID:J = 0x1db4e55338b03d79L


# instance fields
.field private clientChecksum:Ljava/lang/Long;

.field private requestId:Ljava/lang/String;

.field private serverChecksum:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/aliyun/oss/InconsistentException;->clientChecksum:Ljava/lang/Long;

    .line 49
    iput-object p2, p0, Lcom/aliyun/oss/InconsistentException;->serverChecksum:Ljava/lang/Long;

    .line 50
    iput-object p3, p0, Lcom/aliyun/oss/InconsistentException;->requestId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClientChecksum()Ljava/lang/Long;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/aliyun/oss/InconsistentException;->clientChecksum:Ljava/lang/Long;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InconsistentException \n[RequestId]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/InconsistentException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n[ClientChecksum]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/InconsistentException;->getClientChecksum()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n[ServerChecksum]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/InconsistentException;->getServerChecksum()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/aliyun/oss/InconsistentException;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerChecksum()Ljava/lang/Long;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/aliyun/oss/InconsistentException;->serverChecksum:Ljava/lang/Long;

    return-object v0
.end method

.method public setClientChecksum(Ljava/lang/Long;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/aliyun/oss/InconsistentException;->clientChecksum:Ljava/lang/Long;

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/aliyun/oss/InconsistentException;->requestId:Ljava/lang/String;

    return-void
.end method

.method public setServerChecksum(Ljava/lang/Long;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/aliyun/oss/InconsistentException;->serverChecksum:Ljava/lang/Long;

    return-void
.end method
