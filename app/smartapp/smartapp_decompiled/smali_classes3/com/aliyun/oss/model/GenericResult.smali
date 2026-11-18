.class public abstract Lcom/aliyun/oss/model/GenericResult;
.super Ljava/lang/Object;
.source "GenericResult.java"


# instance fields
.field private clientCRC:Ljava/lang/Long;

.field private requestId:Ljava/lang/String;

.field response:Lcom/aliyun/oss/common/comm/ResponseMessage;

.field private serverCRC:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getClientCRC()Ljava/lang/Long;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/aliyun/oss/model/GenericResult;->clientCRC:Ljava/lang/Long;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/aliyun/oss/model/GenericResult;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()Lcom/aliyun/oss/common/comm/ResponseMessage;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/aliyun/oss/model/GenericResult;->response:Lcom/aliyun/oss/common/comm/ResponseMessage;

    return-object v0
.end method

.method public getServerCRC()Ljava/lang/Long;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/aliyun/oss/model/GenericResult;->serverCRC:Ljava/lang/Long;

    return-object v0
.end method

.method public setClientCRC(Ljava/lang/Long;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/aliyun/oss/model/GenericResult;->clientCRC:Ljava/lang/Long;

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/aliyun/oss/model/GenericResult;->requestId:Ljava/lang/String;

    return-void
.end method

.method public setResponse(Lcom/aliyun/oss/common/comm/ResponseMessage;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/aliyun/oss/model/GenericResult;->response:Lcom/aliyun/oss/common/comm/ResponseMessage;

    return-void
.end method

.method public setServerCRC(Ljava/lang/Long;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/aliyun/oss/model/GenericResult;->serverCRC:Ljava/lang/Long;

    return-void
.end method
