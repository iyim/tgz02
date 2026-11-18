.class public Lcom/aliyun/ccp/api/operation/ConsentOperation;
.super Lcom/aliyun/ccp/api/operation/BaseOperation;
.source "ConsentOperation.java"


# direct methods
.method public constructor <init>(Lcom/aliyun/ccp/api/ClientProfile;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/aliyun/ccp/api/operation/BaseOperation;-><init>(Lcom/aliyun/ccp/api/ClientProfile;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public deleteConsent(Lcom/aliyun/ccp/api/request/consent/DeleteConsentRequest;)Lcom/aliyun/ccp/api/response/BaseResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aliyun/ccp/api/operation/ConsentOperation;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-virtual {v1}, Lcom/aliyun/ccp/api/ClientProfile;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/consent/delete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/aliyun/ccp/api/response/BaseResponse;

    invoke-virtual {p0, p1, v0, v1}, Lcom/aliyun/ccp/api/operation/ConsentOperation;->request(Lcom/aliyun/ccp/api/request/BaseRequest;Ljava/lang/String;Ljava/lang/Class;)Lcom/aliyun/ccp/api/response/BaseResponse;

    move-result-object p1

    return-object p1
.end method

.method public listConsent(Lcom/aliyun/ccp/api/request/consent/ListConsentRequest;)Lcom/aliyun/ccp/api/response/consent/ListConsentResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aliyun/ccp/api/operation/ConsentOperation;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-virtual {v1}, Lcom/aliyun/ccp/api/ClientProfile;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/consent/list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/aliyun/ccp/api/response/consent/ListConsentResponse;

    invoke-virtual {p0, p1, v0, v1}, Lcom/aliyun/ccp/api/operation/ConsentOperation;->request(Lcom/aliyun/ccp/api/request/BaseRequest;Ljava/lang/String;Ljava/lang/Class;)Lcom/aliyun/ccp/api/response/BaseResponse;

    move-result-object p1

    check-cast p1, Lcom/aliyun/ccp/api/response/consent/ListConsentResponse;

    return-object p1
.end method
