.class Lcom/aliyun/oss/common/comm/HttpRequestFactory;
.super Ljava/lang/Object;
.source "HttpRequestFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private buildChunkedInputStreamEntity(Lcom/aliyun/oss/common/comm/ServiceClient$Request;)Lorg/apache/http/HttpEntity;
    .locals 1

    .line 85
    new-instance v0, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity;

    invoke-direct {v0, p1}, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient$Request;)V

    return-object v0
.end method

.method private configureRequestHeaders(Lcom/aliyun/oss/common/comm/ServiceClient$Request;Lcom/aliyun/oss/common/comm/ExecutionContext;Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 2

    .line 91
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->getHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 92
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Host"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 97
    :cond_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p3, v0, p2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public createHttpRequest(Lcom/aliyun/oss/common/comm/ServiceClient$Request;Lcom/aliyun/oss/common/comm/ExecutionContext;)Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 3

    .line 43
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->getMethod()Lcom/aliyun/oss/HttpMethod;

    move-result-object v1

    .line 47
    sget-object v2, Lcom/aliyun/oss/HttpMethod;->POST:Lcom/aliyun/oss/HttpMethod;

    if-ne v1, v2, :cond_0

    .line 48
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 51
    new-instance v0, Lcom/aliyun/oss/common/comm/RepeatableInputStreamEntity;

    invoke-direct {v0, p1}, Lcom/aliyun/oss/common/comm/RepeatableInputStreamEntity;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient$Request;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 55
    :cond_0
    sget-object v2, Lcom/aliyun/oss/HttpMethod;->PUT:Lcom/aliyun/oss/HttpMethod;

    if-ne v1, v2, :cond_2

    .line 56
    new-instance v1, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 59
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->isUseChunkEncoding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-direct {p0, p1}, Lcom/aliyun/oss/common/comm/HttpRequestFactory;->buildChunkedInputStreamEntity(Lcom/aliyun/oss/common/comm/ServiceClient$Request;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 62
    :cond_1
    new-instance v0, Lcom/aliyun/oss/common/comm/RepeatableInputStreamEntity;

    invoke-direct {v0, p1}, Lcom/aliyun/oss/common/comm/RepeatableInputStreamEntity;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient$Request;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 67
    :cond_2
    sget-object v2, Lcom/aliyun/oss/HttpMethod;->GET:Lcom/aliyun/oss/HttpMethod;

    if-ne v1, v2, :cond_3

    .line 68
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_3
    sget-object v2, Lcom/aliyun/oss/HttpMethod;->DELETE:Lcom/aliyun/oss/HttpMethod;

    if-ne v1, v2, :cond_4

    .line 70
    new-instance v1, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_4
    sget-object v2, Lcom/aliyun/oss/HttpMethod;->HEAD:Lcom/aliyun/oss/HttpMethod;

    if-ne v1, v2, :cond_5

    .line 72
    new-instance v1, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_5
    sget-object v2, Lcom/aliyun/oss/HttpMethod;->OPTIONS:Lcom/aliyun/oss/HttpMethod;

    if-ne v1, v2, :cond_7

    .line 74
    new-instance v1, Lorg/apache/http/client/methods/HttpOptions;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpOptions;-><init>(Ljava/lang/String;)V

    .line 79
    :cond_6
    :goto_0
    invoke-direct {p0, p1, p2, v1}, Lcom/aliyun/oss/common/comm/HttpRequestFactory;->configureRequestHeaders(Lcom/aliyun/oss/common/comm/ServiceClient$Request;Lcom/aliyun/oss/common/comm/ExecutionContext;Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-object v1

    .line 76
    :cond_7
    new-instance p1, Lcom/aliyun/oss/ClientException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown HTTP method name: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/aliyun/oss/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/aliyun/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
