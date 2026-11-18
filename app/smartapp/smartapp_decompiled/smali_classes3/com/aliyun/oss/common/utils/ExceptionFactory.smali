.class public Lcom/aliyun/oss/common/utils/ExceptionFactory;
.super Ljava/lang/Object;
.source "ExceptionFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static createInvalidResponseException(Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/OSSException;
    .locals 1

    const-string v0, "InvalidResponse"

    .line 86
    invoke-static {p0, v0, p1}, Lcom/aliyun/oss/common/utils/ExceptionFactory;->createOSSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/OSSException;

    move-result-object p0

    return-object p0
.end method

.method public static createInvalidResponseException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/OSSException;
    .locals 1

    const-string v0, "InvalidResponse"

    .line 91
    invoke-static {p0, v0, p1, p2}, Lcom/aliyun/oss/common/utils/ExceptionFactory;->createOSSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/OSSException;

    move-result-object p0

    return-object p0
.end method

.method public static createInvalidResponseException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/aliyun/oss/OSSException;
    .locals 3

    .line 81
    sget-object v0, Lcom/aliyun/oss/internal/OSSUtils;->COMMON_RESOURCE_MANAGER:Lcom/aliyun/oss/common/utils/ResourceManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "FailedToParseResponse"

    invoke-virtual {v0, p2, v1}, Lcom/aliyun/oss/common/utils/ResourceManager;->getFormattedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/aliyun/oss/common/utils/ExceptionFactory;->createInvalidResponseException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/OSSException;

    move-result-object p0

    return-object p0
.end method

.method public static createInvalidResponseException(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/aliyun/oss/OSSException;
    .locals 3

    .line 75
    sget-object v0, Lcom/aliyun/oss/internal/OSSUtils;->COMMON_RESOURCE_MANAGER:Lcom/aliyun/oss/common/utils/ResourceManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "FailedToParseResponse"

    invoke-virtual {v0, p1, v1}, Lcom/aliyun/oss/common/utils/ResourceManager;->getFormattedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/aliyun/oss/common/utils/ExceptionFactory;->createInvalidResponseException(Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/OSSException;

    move-result-object p0

    return-object p0
.end method

.method public static createNetworkException(Ljava/io/IOException;)Lcom/aliyun/oss/ClientException;
    .locals 4

    .line 51
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    const-string v1, "ConnectionTimeout"

    const-string v2, "Unknown"

    if-eqz v0, :cond_0

    const-string v1, "SocketTimeout"

    goto :goto_0

    .line 53
    :cond_0
    instance-of v0, p0, Ljava/net/SocketException;

    if-eqz v0, :cond_1

    const-string v1, "SocketException"

    goto :goto_0

    .line 55
    :cond_1
    instance-of v0, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 57
    :cond_2
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_3

    const-string v1, "UnknownHost"

    goto :goto_0

    .line 59
    :cond_3
    instance-of v0, p0, Lorg/apache/http/conn/HttpHostConnectException;

    if-eqz v0, :cond_4

    const-string v1, "ConnectionRefused"

    goto :goto_0

    .line 61
    :cond_4
    instance-of v0, p0, Lorg/apache/http/NoHttpResponseException;

    if-eqz v0, :cond_5

    goto :goto_0

    .line 63
    :cond_5
    instance-of v0, p0, Lorg/apache/http/client/ClientProtocolException;

    if-eqz v0, :cond_6

    .line 64
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 65
    instance-of v1, v0, Lorg/apache/http/client/NonRepeatableRequestException;

    if-eqz v1, :cond_6

    .line 67
    new-instance p0, Lcom/aliyun/oss/ClientException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NonRepeatableRequest"

    invoke-direct {p0, v1, v3, v2, v0}, Lcom/aliyun/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0

    :cond_6
    move-object v1, v2

    .line 71
    :goto_0
    new-instance v0, Lcom/aliyun/oss/ClientException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2, p0}, Lcom/aliyun/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static createOSSException(Lcom/aliyun/oss/internal/model/OSSErrorResult;)Lcom/aliyun/oss/OSSException;
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-static {p0, v0}, Lcom/aliyun/oss/common/utils/ExceptionFactory;->createOSSException(Lcom/aliyun/oss/internal/model/OSSErrorResult;Ljava/lang/String;)Lcom/aliyun/oss/OSSException;

    move-result-object p0

    return-object p0
.end method

.method public static createOSSException(Lcom/aliyun/oss/internal/model/OSSErrorResult;Ljava/lang/String;)Lcom/aliyun/oss/OSSException;
    .locals 10

    .line 99
    new-instance v9, Lcom/aliyun/oss/OSSException;

    iget-object v1, p0, Lcom/aliyun/oss/internal/model/OSSErrorResult;->Message:Ljava/lang/String;

    iget-object v2, p0, Lcom/aliyun/oss/internal/model/OSSErrorResult;->Code:Ljava/lang/String;

    iget-object v3, p0, Lcom/aliyun/oss/internal/model/OSSErrorResult;->RequestId:Ljava/lang/String;

    iget-object v4, p0, Lcom/aliyun/oss/internal/model/OSSErrorResult;->HostId:Ljava/lang/String;

    iget-object v5, p0, Lcom/aliyun/oss/internal/model/OSSErrorResult;->Header:Ljava/lang/String;

    iget-object v6, p0, Lcom/aliyun/oss/internal/model/OSSErrorResult;->ResourceType:Ljava/lang/String;

    iget-object v7, p0, Lcom/aliyun/oss/internal/model/OSSErrorResult;->Method:Ljava/lang/String;

    move-object v0, v9

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/aliyun/oss/OSSException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method public static createOSSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/OSSException;
    .locals 9

    .line 104
    new-instance v8, Lcom/aliyun/oss/OSSException;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p2

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/aliyun/oss/OSSException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public static createOSSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/OSSException;
    .locals 10

    .line 109
    new-instance v9, Lcom/aliyun/oss/OSSException;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    move-object v1, p2

    move-object v2, p1

    move-object v3, p0

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/aliyun/oss/OSSException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method public static createUnknownOSSException(Ljava/lang/String;I)Lcom/aliyun/oss/OSSException;
    .locals 9

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No body in response, http status code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    new-instance p1, Lcom/aliyun/oss/OSSException;

    const-string v3, "Unknown"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v4, p0

    invoke-direct/range {v1 .. v8}, Lcom/aliyun/oss/OSSException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
