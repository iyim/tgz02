.class public Lcom/aliyun/oss/common/comm/ResponseMessage;
.super Lcom/aliyun/oss/common/comm/HttpMesssage;
.source "ResponseMessage.java"


# static fields
.field private static final HTTP_SUCCESS_STATUS_CODE:I = 0xc8


# instance fields
.field private errorResponseAsString:Ljava/lang/String;

.field private httpResponse:Lorg/apache/http/client/methods/CloseableHttpResponse;

.field private request:Lcom/aliyun/oss/common/comm/ServiceClient$Request;

.field private statusCode:I

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/aliyun/oss/common/comm/ServiceClient$Request;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/aliyun/oss/common/comm/HttpMesssage;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/aliyun/oss/common/comm/ResponseMessage;->request:Lcom/aliyun/oss/common/comm/ServiceClient$Request;

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/ResponseMessage;->httpResponse:Lorg/apache/http/client/methods/CloseableHttpResponse;

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0}, Lorg/apache/http/client/methods/CloseableHttpResponse;->close()V

    :cond_0
    return-void
.end method

.method public getErrorResponseAsString()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/ResponseMessage;->errorResponseAsString:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpResponse()Lorg/apache/http/client/methods/CloseableHttpResponse;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/ResponseMessage;->httpResponse:Lorg/apache/http/client/methods/CloseableHttpResponse;

    return-object v0
.end method

.method public getRequest()Lcom/aliyun/oss/common/comm/ServiceClient$Request;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/ResponseMessage;->request:Lcom/aliyun/oss/common/comm/ServiceClient$Request;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "x-oss-request-id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/aliyun/oss/common/comm/ResponseMessage;->statusCode:I

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/ResponseMessage;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 2

    .line 70
    iget v0, p0, Lcom/aliyun/oss/common/comm/ResponseMessage;->statusCode:I

    div-int/lit8 v0, v0, 0x64

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setErrorResponseAsString(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/aliyun/oss/common/comm/ResponseMessage;->errorResponseAsString:Ljava/lang/String;

    return-void
.end method

.method public setHttpResponse(Lorg/apache/http/client/methods/CloseableHttpResponse;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/aliyun/oss/common/comm/ResponseMessage;->httpResponse:Lorg/apache/http/client/methods/CloseableHttpResponse;

    return-void
.end method

.method public setStatusCode(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/aliyun/oss/common/comm/ResponseMessage;->statusCode:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/aliyun/oss/common/comm/ResponseMessage;->uri:Ljava/lang/String;

    return-void
.end method
