.class public Lcom/aliyun/oss/common/comm/RequestMessage;
.super Lcom/aliyun/oss/common/comm/HttpMesssage;
.source "RequestMessage.java"


# instance fields
.field private absoluteUrl:Ljava/net/URL;

.field private endpoint:Ljava/net/URI;

.field private method:Lcom/aliyun/oss/HttpMethod;

.field private final originalRequest:Lcom/aliyun/oss/model/WebServiceRequest;

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

.field private resourcePath:Ljava/lang/String;

.field private useChunkEncoding:Z

.field private useUrlSignature:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0}, Lcom/aliyun/oss/common/comm/RequestMessage;-><init>(Lcom/aliyun/oss/model/WebServiceRequest;)V

    return-void
.end method

.method public constructor <init>(Lcom/aliyun/oss/model/WebServiceRequest;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/aliyun/oss/common/comm/HttpMesssage;-><init>()V

    .line 42
    sget-object v0, Lcom/aliyun/oss/HttpMethod;->GET:Lcom/aliyun/oss/HttpMethod;

    iput-object v0, p0, Lcom/aliyun/oss/common/comm/RequestMessage;->method:Lcom/aliyun/oss/HttpMethod;

    .line 45
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/common/comm/RequestMessage;->parameters:Ljava/util/Map;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/aliyun/oss/common/comm/RequestMessage;->useUrlSignature:Z

    .line 54
    iput-boolean v0, p0, Lcom/aliyun/oss/common/comm/RequestMessage;->useChunkEncoding:Z

    if-nez p1, :cond_0

    .line 64
    sget-object p1, Lcom/aliyun/oss/model/WebServiceRequest;->NOOP:Lcom/aliyun/oss/model/WebServiceRequest;

    :cond_0
    iput-object p1, p0, Lcom/aliyun/oss/common/comm/RequestMessage;->originalRequest:Lcom/aliyun/oss/model/WebServiceRequest;

    return-void
.end method


# virtual methods
.method public addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/RequestMessage;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getAbsoluteUrl()Ljava/net/URL;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/RequestMessage;->absoluteUrl:Ljava/net/URL;

    return-object v0
.end method

.method public getEndpoint()Ljava/net/URI;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/RequestMessage;->endpoint:Ljava/net/URI;

    return-object v0
.end method

.method public getMethod()Lcom/aliyun/oss/HttpMethod;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/RequestMessage;->method:Lcom/aliyun/oss/HttpMethod;

    return-object v0
.end method

.method public getOriginalRequest()Lcom/aliyun/oss/model/WebServiceRequest;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/RequestMessage;->originalRequest:Lcom/aliyun/oss/model/WebServiceRequest;

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

    .line 93
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/RequestMessage;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/RequestMessage;->resourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public isRepeatable()Z
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/aliyun/oss/common/comm/RequestMessage;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/aliyun/oss/common/comm/RequestMessage;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isUseChunkEncoding()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/aliyun/oss/common/comm/RequestMessage;->useChunkEncoding:Z

    return v0
.end method

.method public isUseUrlSignature()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/aliyun/oss/common/comm/RequestMessage;->useUrlSignature:Z

    return v0
.end method

.method public removeParameter(Ljava/lang/String;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/RequestMessage;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAbsoluteUrl(Ljava/net/URL;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/aliyun/oss/common/comm/RequestMessage;->absoluteUrl:Ljava/net/URL;

    return-void
.end method

.method public setEndpoint(Ljava/net/URI;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/aliyun/oss/common/comm/RequestMessage;->endpoint:Ljava/net/URI;

    return-void
.end method

.method public setMethod(Lcom/aliyun/oss/HttpMethod;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/aliyun/oss/common/comm/RequestMessage;->method:Lcom/aliyun/oss/HttpMethod;

    return-void
.end method

.method public setParameters(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/RequestMessage;->parameters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_0

    .line 98
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/RequestMessage;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setResourcePath(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/aliyun/oss/common/comm/RequestMessage;->resourcePath:Ljava/lang/String;

    return-void
.end method

.method public setUseChunkEncoding(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/aliyun/oss/common/comm/RequestMessage;->useChunkEncoding:Z

    return-void
.end method

.method public setUseUrlSignature(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lcom/aliyun/oss/common/comm/RequestMessage;->useUrlSignature:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Endpoint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/common/comm/RequestMessage;->getEndpoint()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ResourcePath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/common/comm/RequestMessage;->getResourcePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Headers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/common/comm/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
