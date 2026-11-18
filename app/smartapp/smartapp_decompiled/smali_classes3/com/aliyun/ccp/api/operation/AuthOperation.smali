.class public Lcom/aliyun/ccp/api/operation/AuthOperation;
.super Lcom/aliyun/ccp/api/operation/BaseOperation;
.source "AuthOperation.java"


# direct methods
.method public constructor <init>(Lcom/aliyun/ccp/api/ClientProfile;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/aliyun/ccp/api/operation/BaseOperation;-><init>(Lcom/aliyun/ccp/api/ClientProfile;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getToken(Lcom/aliyun/ccp/api/request/auth/GetTokenRequest;)Lcom/aliyun/ccp/api/response/auth/GetTokenResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 24
    invoke-virtual {p1}, Lcom/aliyun/ccp/api/request/auth/GetTokenRequest;->getDomainId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aliyun/ccp/api/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/aliyun/ccp/api/operation/AuthOperation;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-virtual {v0}, Lcom/aliyun/ccp/api/ClientProfile;->getDomainId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aliyun/ccp/api/request/auth/GetTokenRequest;->setDomainId(Ljava/lang/String;)V

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/aliyun/ccp/api/request/auth/GetTokenRequest;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aliyun/ccp/api/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/aliyun/ccp/api/operation/AuthOperation;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-virtual {v0}, Lcom/aliyun/ccp/api/ClientProfile;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aliyun/ccp/api/request/auth/GetTokenRequest;->setClientId(Ljava/lang/String;)V

    .line 31
    :cond_1
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-static {}, Lcom/aliyun/ccp/OkHttpClientManager;->getInstance()Lcom/aliyun/ccp/OkHttpClientManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aliyun/ccp/api/operation/AuthOperation;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-virtual {v2}, Lcom/aliyun/ccp/api/ClientProfile;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/oauth/token"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/aliyun/ccp/api/operation/AuthOperation;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-virtual {v3}, Lcom/aliyun/ccp/api/ClientProfile;->getSecret()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/aliyun/ccp/OkHttpClientManager;->doRequestWithSign(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object p1

    .line 34
    const-class v0, Lcom/aliyun/ccp/api/response/auth/GetTokenResponse;

    invoke-virtual {p0, p1, v0}, Lcom/aliyun/ccp/api/operation/AuthOperation;->parseResponse(Lokhttp3/Response;Ljava/lang/Class;)Lcom/aliyun/ccp/api/response/BaseResponse;

    move-result-object p1

    check-cast p1, Lcom/aliyun/ccp/api/response/auth/GetTokenResponse;

    return-object p1
.end method
