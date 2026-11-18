.class public Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;
.super Ljava/lang/Object;
.source "OSSRequestMessageBuilder.java"


# instance fields
.field private bucket:Ljava/lang/String;

.field private endpoint:Ljava/net/URI;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private innerClient:Lcom/aliyun/oss/common/comm/ServiceClient;

.field private inputSize:J

.field private inputStream:Ljava/io/InputStream;

.field private key:Ljava/lang/String;

.field private method:Lcom/aliyun/oss/HttpMethod;

.field private originalRequest:Lcom/aliyun/oss/model/WebServiceRequest;

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private useChunkEncoding:Z


# direct methods
.method public constructor <init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Lcom/aliyun/oss/HttpMethod;->GET:Lcom/aliyun/oss/HttpMethod;

    iput-object v0, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->method:Lcom/aliyun/oss/HttpMethod;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->headers:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->parameters:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 55
    iput-wide v0, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->inputSize:J

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->useChunkEncoding:Z

    .line 62
    iput-object p1, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->innerClient:Lcom/aliyun/oss/common/comm/ServiceClient;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Lcom/aliyun/oss/common/comm/RequestMessage;
    .locals 6

    .line 170
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->headers:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 171
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcom/aliyun/oss/common/utils/DateUtil;->formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Date"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    new-instance v1, Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->parameters:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 174
    new-instance v2, Lcom/aliyun/oss/common/comm/RequestMessage;

    iget-object v3, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->originalRequest:Lcom/aliyun/oss/model/WebServiceRequest;

    invoke-direct {v2, v3}, Lcom/aliyun/oss/common/comm/RequestMessage;-><init>(Lcom/aliyun/oss/model/WebServiceRequest;)V

    .line 175
    iget-object v3, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->innerClient:Lcom/aliyun/oss/common/comm/ServiceClient;

    invoke-virtual {v3}, Lcom/aliyun/oss/common/comm/ServiceClient;->getClientConfiguration()Lcom/aliyun/oss/ClientConfiguration;

    move-result-object v3

    .line 176
    iget-object v4, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->endpoint:Ljava/net/URI;

    iget-object v5, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->bucket:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Lcom/aliyun/oss/internal/OSSUtils;->determineFinalEndpoint(Ljava/net/URI;Ljava/lang/String;Lcom/aliyun/oss/ClientConfiguration;)Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/aliyun/oss/common/comm/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    .line 177
    iget-object v4, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->bucket:Ljava/lang/String;

    iget-object v5, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->key:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/aliyun/oss/ClientConfiguration;->isSLDEnabled()Z

    move-result v3

    invoke-static {v4, v5, v3}, Lcom/aliyun/oss/internal/OSSUtils;->determineResourcePath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/common/comm/RequestMessage;->setResourcePath(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v2, v0}, Lcom/aliyun/oss/common/comm/RequestMessage;->setHeaders(Ljava/util/Map;)V

    .line 179
    invoke-virtual {v2, v1}, Lcom/aliyun/oss/common/comm/RequestMessage;->setParameters(Ljava/util/Map;)V

    .line 180
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->method:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v2, v0}, Lcom/aliyun/oss/common/comm/RequestMessage;->setMethod(Lcom/aliyun/oss/HttpMethod;)V

    .line 181
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Lcom/aliyun/oss/common/comm/RequestMessage;->setContent(Ljava/io/InputStream;)V

    .line 182
    iget-wide v0, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->inputSize:J

    invoke-virtual {v2, v0, v1}, Lcom/aliyun/oss/common/comm/RequestMessage;->setContentLength(J)V

    .line 183
    iget-wide v0, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->inputSize:J

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->useChunkEncoding:Z

    :goto_0
    invoke-virtual {v2, v0}, Lcom/aliyun/oss/common/comm/RequestMessage;->setUseChunkEncoding(Z)V

    return-object v2
.end method

.method public getBucket()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->bucket:Ljava/lang/String;

    return-object v0
.end method

.method public getEndpoint()Ljava/net/URI;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->endpoint:Ljava/net/URI;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->headers:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getInputSize()J
    .locals 2

    .line 146
    iget-wide v0, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->inputSize:J

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Lcom/aliyun/oss/HttpMethod;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->method:Lcom/aliyun/oss/HttpMethod;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->parameters:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public isUseChunkEncoding()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->useChunkEncoding:Z

    return v0
.end method

.method public setBucket(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->bucket:Ljava/lang/String;

    return-object p0
.end method

.method public setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->endpoint:Ljava/net/URI;

    return-object p0
.end method

.method public setHeaders(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->headers:Ljava/util/Map;

    return-object p0
.end method

.method public setInputSize(J)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;
    .locals 6

    const-wide/16 v2, -0x1

    const-wide v4, 0x140000000L

    move-wide v0, p1

    .line 150
    invoke-static/range {v0 .. v5}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterInRange(JJJ)V

    .line 151
    iput-wide p1, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->inputSize:J

    return-object p0
.end method

.method public setInputStream(Ljava/io/InputStream;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->inputStream:Ljava/io/InputStream;

    return-object p0
.end method

.method public setInputStreamWithLength(Lcom/aliyun/oss/common/comm/io/FixedLengthInputStream;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;
    .locals 6

    .line 139
    iget-wide v0, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->inputSize:J

    const-wide/16 v2, -0x1

    const-wide v4, 0x140000000L

    invoke-static/range {v0 .. v5}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterInRange(JJJ)V

    .line 140
    iput-object p1, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->inputStream:Ljava/io/InputStream;

    .line 141
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/io/FixedLengthInputStream;->getLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->inputSize:J

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->key:Ljava/lang/String;

    return-object p0
.end method

.method public setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->method:Lcom/aliyun/oss/HttpMethod;

    return-object p0
.end method

.method public setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->originalRequest:Lcom/aliyun/oss/model/WebServiceRequest;

    return-object p0
.end method

.method public setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->parameters:Ljava/util/Map;

    return-object p0
.end method

.method public setUseChunkEncoding(Z)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;
    .locals 0

    .line 160
    iput-boolean p1, p0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->useChunkEncoding:Z

    return-object p0
.end method
