.class public Lcom/aliyun/oss/internal/OSSCallbackErrorResponseHandler;
.super Ljava/lang/Object;
.source "OSSCallbackErrorResponseHandler.java"

# interfaces
.implements Lcom/aliyun/oss/common/comm/ResponseHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public handle(Lcom/aliyun/oss/common/comm/ResponseMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/ServiceException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 39
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getStatusCode()I

    move-result v0

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_0

    return-void

    .line 40
    :cond_0
    new-instance v0, Lcom/aliyun/oss/common/parser/JAXBResponseParser;

    const-class v1, Lcom/aliyun/oss/internal/model/OSSErrorResult;

    invoke-direct {v0, v1}, Lcom/aliyun/oss/common/parser/JAXBResponseParser;-><init>(Ljava/lang/Class;)V

    .line 42
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/aliyun/oss/common/parser/JAXBResponseParser;->parse(Lcom/aliyun/oss/common/comm/ResponseMessage;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/oss/internal/model/OSSErrorResult;

    .line 43
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getErrorResponseAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aliyun/oss/common/utils/ExceptionFactory;->createOSSException(Lcom/aliyun/oss/internal/model/OSSErrorResult;Ljava/lang/String;)Lcom/aliyun/oss/OSSException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Lcom/aliyun/oss/common/parser/ResponseParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 45
    :try_start_1
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getErrorResponseAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/aliyun/oss/common/utils/ExceptionFactory;->createInvalidResponseException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/aliyun/oss/OSSException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :goto_0
    invoke-static {p1}, Lcom/aliyun/oss/internal/OSSUtils;->safeCloseResponse(Lcom/aliyun/oss/common/comm/ResponseMessage;)V

    throw v0
.end method
