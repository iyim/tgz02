.class public abstract Lcom/aliyun/oss/common/comm/ServiceClient;
.super Ljava/lang/Object;
.source "ServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/oss/common/comm/ServiceClient$Request;
    }
.end annotation


# instance fields
.field protected config:Lcom/aliyun/oss/ClientConfiguration;


# direct methods
.method protected constructor <init>(Lcom/aliyun/oss/ClientConfiguration;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/aliyun/oss/common/comm/ServiceClient;->config:Lcom/aliyun/oss/ClientConfiguration;

    return-void
.end method

.method private buildRequest(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/comm/ExecutionContext;)Lcom/aliyun/oss/common/comm/ServiceClient$Request;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 174
    new-instance v0, Lcom/aliyun/oss/common/comm/ServiceClient$Request;

    invoke-direct {v0}, Lcom/aliyun/oss/common/comm/ServiceClient$Request;-><init>()V

    .line 175
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->getMethod()Lcom/aliyun/oss/HttpMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->setMethod(Lcom/aliyun/oss/HttpMethod;)V

    .line 176
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->isUseChunkEncoding()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->setUseChunkEncoding(Z)V

    .line 178
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->isUseUrlSignature()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->getAbsoluteUrl()Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->setUrl(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0, v2}, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->setUseUrlSignature(Z)V

    .line 182
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->getContent()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->setContent(Ljava/io/InputStream;)V

    .line 183
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->getContentLength()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->setContentLength(J)V

    .line 184
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->setHeaders(Ljava/util/Map;)V

    return-object v0

    .line 189
    :cond_0
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->setHeaders(Ljava/util/Map;)V

    .line 192
    invoke-virtual {v0}, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->getHeaders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 193
    invoke-virtual {v0}, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/aliyun/oss/common/utils/HttpUtil;->convertHeaderCharsetToIso88591(Ljava/util/Map;)V

    .line 197
    :cond_1
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->getEndpoint()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    .line 198
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->getResourcePath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->getResourcePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 201
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    :cond_3
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->getResourcePath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->getResourcePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    :cond_4
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p2}, Lcom/aliyun/oss/common/comm/ExecutionContext;->getCharset()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/aliyun/oss/common/utils/HttpUtil;->paramToQueryString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 216
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->getContent()Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    .line 217
    :goto_0
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->getMethod()Lcom/aliyun/oss/HttpMethod;

    move-result-object v6

    sget-object v7, Lcom/aliyun/oss/HttpMethod;->POST:Lcom/aliyun/oss/HttpMethod;

    if-ne v6, v7, :cond_6

    const/4 v6, 0x1

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_8

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v4, 0x1

    :goto_3
    if-eqz v3, :cond_9

    if-eqz v4, :cond_9

    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    :cond_9
    invoke-virtual {v0, v1}, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->setUrl(Ljava/lang/String;)V

    if-eqz v6, :cond_a

    .line 225
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->getContent()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_a

    if-eqz v3, :cond_a

    .line 229
    :try_start_0
    invoke-virtual {p2}, Lcom/aliyun/oss/common/comm/ExecutionContext;->getCharset()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 230
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 231
    invoke-virtual {v0, p2}, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->setContent(Ljava/io/InputStream;)V

    .line 232
    array-length p1, p1

    int-to-long p1, p1

    invoke-virtual {v0, p1, p2}, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->setContentLength(J)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 234
    new-instance p2, Ljava/lang/RuntimeException;

    sget-object v0, Lcom/aliyun/oss/internal/OSSUtils;->COMMON_RESOURCE_MANAGER:Lcom/aliyun/oss/common/utils/ResourceManager;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    const-string p1, "EncodingFailed"

    invoke-virtual {v0, p1, v1}, Lcom/aliyun/oss/common/utils/ResourceManager;->getFormattedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 238
    :cond_a
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->getContent()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->setContent(Ljava/io/InputStream;)V

    .line 239
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->getContentLength()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->setContentLength(J)V

    :goto_4
    return-object v0
.end method

.method private closeResponseSilently(Lcom/aliyun/oss/common/comm/ResponseMessage;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 296
    :try_start_0
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private formatSlowRequestLog(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/comm/ResponseMessage;J)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    .line 305
    new-array v0, v0, [Ljava/lang/Object;

    const-wide/16 v1, 0x3e8

    div-long/2addr p3, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, v0, p4

    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->getEndpoint()Ljava/net/URI;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, v0, p4

    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->getResourcePath()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, v0, p4

    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->getMethod()Lcom/aliyun/oss/HttpMethod;

    move-result-object p1

    const/4 p3, 0x3

    aput-object p1, v0, p3

    invoke-virtual {p2}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getStatusCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p3, 0x4

    aput-object p1, v0, p3

    invoke-virtual {p2}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getRequestId()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v0, p2

    const-string p1, "Request cost %d seconds, endpoint %s, resourcePath %s, method %s, statusCode %d, requestId %s."

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private handleRequest(Lcom/aliyun/oss/common/comm/RequestMessage;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aliyun/oss/common/comm/RequestMessage;",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/common/comm/RequestHandler;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/ServiceException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 254
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/oss/common/comm/RequestHandler;

    .line 255
    invoke-interface {v0, p1}, Lcom/aliyun/oss/common/comm/RequestHandler;->handle(Lcom/aliyun/oss/common/comm/RequestMessage;)V

    goto :goto_0

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private handleResponse(Lcom/aliyun/oss/common/comm/ResponseMessage;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aliyun/oss/common/comm/ResponseMessage;",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/common/comm/ResponseHandler;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/ServiceException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 247
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/oss/common/comm/ResponseHandler;

    .line 248
    invoke-interface {v0, p1}, Lcom/aliyun/oss/common/comm/ResponseHandler;->handle(Lcom/aliyun/oss/common/comm/ResponseMessage;)V

    goto :goto_0

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private pause(ILcom/aliyun/oss/common/comm/RetryStrategy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 262
    invoke-virtual {p2, p1}, Lcom/aliyun/oss/common/comm/RetryStrategy;->getPauseDelay(I)J

    move-result-wide v0

    .line 264
    invoke-static {}, Lcom/aliyun/oss/common/utils/LogUtils;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An retriable error request will be retried after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "(ms) with attempt times: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 268
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 270
    new-instance p2, Lcom/aliyun/oss/ClientException;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/aliyun/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private sendRequestImpl(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/comm/ExecutionContext;)Lcom/aliyun/oss/common/comm/ResponseMessage;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/ClientException;,
            Lcom/aliyun/oss/ServiceException;
        }
    .end annotation

    const-string v0, "Failed to reset the request input stream: "

    .line 83
    invoke-virtual {p2}, Lcom/aliyun/oss/common/comm/ExecutionContext;->getRetryStrategy()Lcom/aliyun/oss/common/comm/RetryStrategy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/aliyun/oss/common/comm/ExecutionContext;->getRetryStrategy()Lcom/aliyun/oss/common/comm/RetryStrategy;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/aliyun/oss/common/comm/ServiceClient;->getDefaultRetryStrategy()Lcom/aliyun/oss/common/comm/RetryStrategy;

    move-result-object v1

    .line 87
    :goto_0
    invoke-virtual {p2}, Lcom/aliyun/oss/common/comm/ExecutionContext;->getSigner()Lcom/aliyun/oss/common/auth/RequestSigner;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->isUseUrlSignature()Z

    move-result v2

    if-nez v2, :cond_1

    .line 88
    invoke-virtual {p2}, Lcom/aliyun/oss/common/comm/ExecutionContext;->getSigner()Lcom/aliyun/oss/common/auth/RequestSigner;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/aliyun/oss/common/auth/RequestSigner;->sign(Lcom/aliyun/oss/common/comm/RequestMessage;)V

    .line 91
    :cond_1
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->getContent()Ljava/io/InputStream;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 92
    invoke-virtual {v8}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    const/high16 v2, 0x80000

    .line 93
    invoke-virtual {v8, v2}, Ljava/io/InputStream;->mark(I)V

    :cond_2
    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    if-lez v10, :cond_3

    .line 102
    :try_start_0
    invoke-direct {p0, v10, v1}, Lcom/aliyun/oss/common/comm/ServiceClient;->pause(ILcom/aliyun/oss/common/comm/RetryStrategy;)V

    if-eqz v8, :cond_3

    .line 103
    invoke-virtual {v8}, Ljava/io/InputStream;->markSupported()Z

    move-result v3
    :try_end_0
    .catch Lcom/aliyun/oss/ServiceException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/aliyun/oss/ClientException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    .line 105
    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/aliyun/oss/ServiceException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/aliyun/oss/ClientException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 107
    :try_start_2
    invoke-static {v0, v3}, Lcom/aliyun/oss/common/utils/LogUtils;->logException(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    new-instance v4, Lcom/aliyun/oss/ClientException;

    invoke-direct {v4, v0, v3}, Lcom/aliyun/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 116
    :cond_3
    :goto_2
    invoke-virtual {p2}, Lcom/aliyun/oss/common/comm/ExecutionContext;->getResquestHandlers()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/aliyun/oss/common/comm/ServiceClient;->handleRequest(Lcom/aliyun/oss/common/comm/RequestMessage;Ljava/util/List;)V

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/aliyun/oss/common/comm/ServiceClient;->buildRequest(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/comm/ExecutionContext;)Lcom/aliyun/oss/common/comm/ServiceClient$Request;

    move-result-object v3

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 123
    invoke-virtual {p0, v3, p2}, Lcom/aliyun/oss/common/comm/ServiceClient;->sendRequestCore(Lcom/aliyun/oss/common/comm/ServiceClient$Request;Lcom/aliyun/oss/common/comm/ExecutionContext;)Lcom/aliyun/oss/common/comm/ResponseMessage;

    move-result-object v2

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 125
    iget-object v3, p0, Lcom/aliyun/oss/common/comm/ServiceClient;->config:Lcom/aliyun/oss/ClientConfiguration;

    invoke-virtual {v3}, Lcom/aliyun/oss/ClientConfiguration;->getSlowRequestsThreshold()J

    move-result-wide v3

    cmp-long v5, v6, v3

    if-lez v5, :cond_4

    .line 126
    invoke-static {}, Lcom/aliyun/oss/common/utils/LogUtils;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object v3

    invoke-direct {p0, p1, v2, v6, v7}, Lcom/aliyun/oss/common/comm/ServiceClient;->formatSlowRequestLog(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/comm/ResponseMessage;J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 130
    :cond_4
    invoke-virtual {p2}, Lcom/aliyun/oss/common/comm/ExecutionContext;->getResponseHandlers()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/aliyun/oss/common/comm/ServiceClient;->handleResponse(Lcom/aliyun/oss/common/comm/ResponseMessage;Ljava/util/List;)V
    :try_end_2
    .catch Lcom/aliyun/oss/ServiceException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/aliyun/oss/ClientException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v2

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_1
    move-exception p1

    :try_start_3
    const-string p2, "[Unknown]Unable to execute HTTP request: "

    .line 153
    invoke-static {p2, p1}, Lcom/aliyun/oss/common/utils/LogUtils;->logException(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    invoke-direct {p0, v2}, Lcom/aliyun/oss/common/comm/ServiceClient;->closeResponseSilently(Lcom/aliyun/oss/common/comm/ResponseMessage;)V

    .line 157
    new-instance p2, Lcom/aliyun/oss/ClientException;

    sget-object v0, Lcom/aliyun/oss/internal/OSSUtils;->COMMON_RESOURCE_MANAGER:Lcom/aliyun/oss/common/utils/ResourceManager;

    const-string v1, "ConnectionError"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/aliyun/oss/common/utils/ResourceManager;->getFormattedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/aliyun/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception v3

    move-object v12, v2

    move-object v11, v3

    const-string v2, "[Client]Unable to execute HTTP request: "

    .line 145
    invoke-static {v2, v11}, Lcom/aliyun/oss/common/utils/LogUtils;->logException(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    invoke-direct {p0, v12}, Lcom/aliyun/oss/common/comm/ServiceClient;->closeResponseSilently(Lcom/aliyun/oss/common/comm/ResponseMessage;)V

    move-object v2, p0

    move-object v3, v11

    move-object v4, p1

    move-object v5, v12

    move v6, v10

    move-object v7, v1

    .line 149
    invoke-direct/range {v2 .. v7}, Lcom/aliyun/oss/common/comm/ServiceClient;->shouldRetry(Ljava/lang/Exception;Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/comm/ResponseMessage;ILcom/aliyun/oss/common/comm/RetryStrategy;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    .line 150
    :cond_5
    throw v11

    :catch_3
    move-exception v3

    move-object v12, v2

    move-object v11, v3

    const-string v2, "[Server]Unable to execute HTTP request: "

    .line 134
    invoke-static {v2, v11}, Lcom/aliyun/oss/common/utils/LogUtils;->logException(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    invoke-direct {p0, v12}, Lcom/aliyun/oss/common/comm/ServiceClient;->closeResponseSilently(Lcom/aliyun/oss/common/comm/ResponseMessage;)V

    move-object v2, p0

    move-object v3, v11

    move-object v4, p1

    move-object v5, v12

    move v6, v10

    move-object v7, v1

    .line 141
    invoke-direct/range {v2 .. v7}, Lcom/aliyun/oss/common/comm/ServiceClient;->shouldRetry(Ljava/lang/Exception;Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/comm/ResponseMessage;ILcom/aliyun/oss/common/comm/RetryStrategy;)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_3
    add-int/lit8 v10, v10, 0x1

    move-object v2, v12

    goto/16 :goto_1

    .line 142
    :cond_6
    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 160
    :goto_4
    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method private shouldRetry(Ljava/lang/Exception;Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/comm/ResponseMessage;ILcom/aliyun/oss/common/comm/RetryStrategy;)Z
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/ServiceClient;->config:Lcom/aliyun/oss/ClientConfiguration;

    invoke-virtual {v0}, Lcom/aliyun/oss/ClientConfiguration;->getMaxErrorRetry()I

    move-result v0

    const/4 v1, 0x0

    if-lt p4, v0, :cond_0

    return v1

    .line 281
    :cond_0
    invoke-virtual {p2}, Lcom/aliyun/oss/common/comm/RequestMessage;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 285
    :cond_1
    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/aliyun/oss/common/comm/RetryStrategy;->shouldRetry(Ljava/lang/Exception;Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/comm/ResponseMessage;I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 286
    invoke-static {}, Lcom/aliyun/oss/common/utils/LogUtils;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Retrying on "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method


# virtual methods
.method public getClientConfiguration()Lcom/aliyun/oss/ClientConfiguration;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/ServiceClient;->config:Lcom/aliyun/oss/ClientConfiguration;

    return-object v0
.end method

.method protected abstract getDefaultRetryStrategy()Lcom/aliyun/oss/common/comm/RetryStrategy;
.end method

.method public sendRequest(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/comm/ExecutionContext;)Lcom/aliyun/oss/common/comm/ResponseMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/ServiceException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "Unexpected io exception when trying to close http request: "

    const-string v1, "request"

    .line 64
    invoke-static {p1, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    .line 65
    invoke-static {p2, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/aliyun/oss/common/comm/ServiceClient;->sendRequestImpl(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/comm/ExecutionContext;)Lcom/aliyun/oss/common/comm/ResponseMessage;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :try_start_1
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 74
    invoke-static {v0, p1}, Lcom/aliyun/oss/common/utils/LogUtils;->logException(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    new-instance p2, Lcom/aliyun/oss/ClientException;

    invoke-direct {p2, v0, p1}, Lcom/aliyun/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catchall_0
    move-exception p2

    .line 72
    :try_start_2
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 75
    throw p2

    :catch_1
    move-exception p1

    .line 74
    invoke-static {v0, p1}, Lcom/aliyun/oss/common/utils/LogUtils;->logException(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    new-instance p2, Lcom/aliyun/oss/ClientException;

    invoke-direct {p2, v0, p1}, Lcom/aliyun/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected abstract sendRequestCore(Lcom/aliyun/oss/common/comm/ServiceClient$Request;Lcom/aliyun/oss/common/comm/ExecutionContext;)Lcom/aliyun/oss/common/comm/ResponseMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract shutdown()V
.end method
