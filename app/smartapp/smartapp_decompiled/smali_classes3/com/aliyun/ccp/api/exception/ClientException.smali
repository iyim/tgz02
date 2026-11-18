.class public Lcom/aliyun/ccp/api/exception/ClientException;
.super Ljava/lang/Exception;
.source "ClientException.java"


# instance fields
.field private code:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private requestId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/aliyun/ccp/api/exception/ClientException;->requestId:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/aliyun/ccp/api/exception/ClientException;->code:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/aliyun/ccp/api/exception/ClientException;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/aliyun/ccp/api/exception/ClientException;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/aliyun/ccp/api/exception/ClientException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/aliyun/ccp/api/exception/ClientException;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/aliyun/ccp/api/exception/ClientException;->code:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/aliyun/ccp/api/exception/ClientException;->message:Ljava/lang/String;

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/aliyun/ccp/api/exception/ClientException;->requestId:Ljava/lang/String;

    return-void
.end method
