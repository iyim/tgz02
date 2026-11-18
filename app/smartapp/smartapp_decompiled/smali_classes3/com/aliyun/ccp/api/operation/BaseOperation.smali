.class public Lcom/aliyun/ccp/api/operation/BaseOperation;
.super Ljava/lang/Object;
.source "BaseOperation.java"


# instance fields
.field protected mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;


# direct methods
.method public constructor <init>(Lcom/aliyun/ccp/api/ClientProfile;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/aliyun/ccp/api/operation/BaseOperation;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    return-void
.end method


# virtual methods
.method protected getHeaderMapForToken()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    iget-object v1, p0, Lcom/aliyun/ccp/api/operation/BaseOperation;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-virtual {v1}, Lcom/aliyun/ccp/api/ClientProfile;->getTokenData()Lcom/aliyun/ccp/api/model/TokenData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/aliyun/ccp/api/operation/BaseOperation;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-virtual {v1}, Lcom/aliyun/ccp/api/ClientProfile;->getTokenData()Lcom/aliyun/ccp/api/model/TokenData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aliyun/ccp/api/model/TokenData;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method protected parseResponse(Lokhttp3/Response;Ljava/lang/Class;)Lcom/aliyun/ccp/api/response/BaseResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/aliyun/ccp/api/response/BaseResponse;",
            ">(",
            "Lokhttp3/Response;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    const-string v0, "X-Ca-Request-Id"

    .line 29
    invoke-virtual {p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 33
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v1

    .line 37
    :goto_0
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 41
    :try_start_1
    invoke-static {v2}, Lcom/aliyun/ccp/api/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 42
    invoke-static {v2, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aliyun/ccp/api/response/BaseResponse;

    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aliyun/ccp/api/response/BaseResponse;

    .line 47
    :goto_1
    invoke-virtual {p1, v0}, Lcom/aliyun/ccp/api/response/BaseResponse;->setRequestId(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 50
    new-instance p2, Lcom/aliyun/ccp/api/exception/ClientException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ParseFailed"

    invoke-direct {p2, v0, v1, p1}, Lcom/aliyun/ccp/api/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 54
    :cond_1
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p1

    const/16 p2, 0x191

    if-ne p1, p2, :cond_2

    .line 55
    new-instance p1, Lcom/aliyun/ccp/api/exception/ServerException;

    const-string p2, "InvalidToken"

    invoke-direct {p1, v0, p2, v1}, Lcom/aliyun/ccp/api/exception/ServerException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_2
    :try_start_2
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string p2, "code"

    .line 61
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "message"

    .line 62
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 66
    new-instance v1, Lcom/aliyun/ccp/api/exception/ServerException;

    invoke-direct {v1, v0, p2, p1}, Lcom/aliyun/ccp/api/exception/ServerException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 64
    :catch_2
    new-instance p1, Lcom/aliyun/ccp/api/exception/ServerException;

    invoke-direct {p1, v0, v1, v1}, Lcom/aliyun/ccp/api/exception/ServerException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method protected request(Lcom/aliyun/ccp/api/request/BaseRequest;Ljava/lang/String;Ljava/lang/Class;)Lcom/aliyun/ccp/api/response/BaseResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/aliyun/ccp/api/response/BaseResponse;",
            ">(",
            "Lcom/aliyun/ccp/api/request/BaseRequest;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 80
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-static {}, Lcom/aliyun/ccp/OkHttpClientManager;->getInstance()Lcom/aliyun/ccp/OkHttpClientManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aliyun/ccp/api/operation/BaseOperation;->getHeaderMapForToken()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Lcom/aliyun/ccp/OkHttpClientManager;->doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p1

    .line 82
    invoke-virtual {p0, p1, p3}, Lcom/aliyun/ccp/api/operation/BaseOperation;->parseResponse(Lokhttp3/Response;Ljava/lang/Class;)Lcom/aliyun/ccp/api/response/BaseResponse;

    move-result-object p1

    return-object p1
.end method
