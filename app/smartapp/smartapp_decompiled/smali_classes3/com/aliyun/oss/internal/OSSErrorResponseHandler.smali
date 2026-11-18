.class public Lcom/aliyun/oss/internal/OSSErrorResponseHandler;
.super Ljava/lang/Object;
.source "OSSErrorResponseHandler.java"

# interfaces
.implements Lcom/aliyun/oss/common/comm/ResponseHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
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
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 44
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getRequestId()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getStatusCode()I

    move-result v1

    .line 50
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getContent()Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_4

    const/16 p1, 0x194

    if-eq v1, p1, :cond_3

    const/16 p1, 0x130

    if-eq v1, p1, :cond_2

    const/16 p1, 0x19c

    if-ne v1, p1, :cond_1

    const-string p1, "PreconditionFailed"

    const-string v1, "Precondition Failed"

    .line 60
    invoke-static {v0, p1, v1}, Lcom/aliyun/oss/common/utils/ExceptionFactory;->createOSSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/OSSException;

    move-result-object p1

    throw p1

    .line 62
    :cond_1
    invoke-static {v0, v1}, Lcom/aliyun/oss/common/utils/ExceptionFactory;->createUnknownOSSException(Ljava/lang/String;I)Lcom/aliyun/oss/OSSException;

    move-result-object p1

    throw p1

    :cond_2
    const-string p1, "NotModified"

    const-string v1, "Not Modified"

    .line 58
    invoke-static {v0, p1, v1}, Lcom/aliyun/oss/common/utils/ExceptionFactory;->createOSSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/OSSException;

    move-result-object p1

    throw p1

    :cond_3
    const-string p1, "NoSuchKey"

    const-string v1, "Not Found"

    .line 56
    invoke-static {v0, p1, v1}, Lcom/aliyun/oss/common/utils/ExceptionFactory;->createOSSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/OSSException;

    move-result-object p1

    throw p1

    .line 66
    :cond_4
    new-instance v1, Lcom/aliyun/oss/common/parser/JAXBResponseParser;

    const-class v2, Lcom/aliyun/oss/internal/model/OSSErrorResult;

    invoke-direct {v1, v2}, Lcom/aliyun/oss/common/parser/JAXBResponseParser;-><init>(Ljava/lang/Class;)V

    .line 68
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/aliyun/oss/common/parser/JAXBResponseParser;->parse(Lcom/aliyun/oss/common/comm/ResponseMessage;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aliyun/oss/internal/model/OSSErrorResult;

    .line 69
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getErrorResponseAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aliyun/oss/common/utils/ExceptionFactory;->createOSSException(Lcom/aliyun/oss/internal/model/OSSErrorResult;Ljava/lang/String;)Lcom/aliyun/oss/OSSException;

    move-result-object v1

    throw v1
    :try_end_0
    .catch Lcom/aliyun/oss/common/parser/ResponseParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 71
    :try_start_1
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getErrorResponseAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/aliyun/oss/common/utils/ExceptionFactory;->createInvalidResponseException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/aliyun/oss/OSSException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :goto_0
    invoke-static {p1}, Lcom/aliyun/oss/internal/OSSUtils;->safeCloseResponse(Lcom/aliyun/oss/common/comm/ResponseMessage;)V

    throw v0
.end method
