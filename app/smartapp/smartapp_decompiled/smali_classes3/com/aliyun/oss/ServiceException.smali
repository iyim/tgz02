.class public Lcom/aliyun/oss/ServiceException;
.super Ljava/lang/RuntimeException;
.source "ServiceException.java"


# static fields
.field private static final serialVersionUID:J = 0x5fafbd1da3b48d1L


# instance fields
.field private errorCode:Ljava/lang/String;

.field private errorMessage:Ljava/lang/String;

.field private hostId:Ljava/lang/String;

.field private rawResponseError:Ljava/lang/String;

.field private requestId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    nop

    nop

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lcom/aliyun/oss/ServiceException;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 99
    invoke-direct/range {v0 .. v5}, Lcom/aliyun/oss/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 126
    invoke-direct {p0, p1, p6}, Lcom/aliyun/oss/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    iput-object p2, p0, Lcom/aliyun/oss/ServiceException;->errorCode:Ljava/lang/String;

    .line 128
    iput-object p3, p0, Lcom/aliyun/oss/ServiceException;->requestId:Ljava/lang/String;

    .line 129
    iput-object p4, p0, Lcom/aliyun/oss/ServiceException;->hostId:Ljava/lang/String;

    .line 130
    iput-object p5, p0, Lcom/aliyun/oss/ServiceException;->rawResponseError:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 112
    invoke-direct/range {v0 .. v6}, Lcom/aliyun/oss/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    iput-object p1, p0, Lcom/aliyun/oss/ServiceException;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private formatRawResponseError()Ljava/lang/String;
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/aliyun/oss/ServiceException;->rawResponseError:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 185
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/aliyun/oss/ServiceException;->rawResponseError:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "\n[ResponseError]:\n%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/aliyun/oss/ServiceException;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/aliyun/oss/ServiceException;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getHostId()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/aliyun/oss/ServiceException;->hostId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/aliyun/oss/ServiceException;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n[ErrorCode]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/ServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n[RequestId]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/ServiceException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n[HostId]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/ServiceException;->getHostId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/aliyun/oss/ServiceException;->formatRawResponseError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawResponseError()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/aliyun/oss/ServiceException;->rawResponseError:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/aliyun/oss/ServiceException;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public setRawResponseError(Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/aliyun/oss/ServiceException;->rawResponseError:Ljava/lang/String;

    return-void
.end method
