.class public Lcom/aliyun/ccp/api/model/ConsentData;
.super Lcom/aliyun/ccp/api/response/BaseResponse;
.source "ConsentData.java"


# instance fields
.field private clientId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "client_id"
    .end annotation
.end field

.field private consentId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "consent_id"
    .end annotation
.end field

.field private createdAt:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "created_at"
    .end annotation
.end field

.field private domainId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "domain_id"
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "user_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/aliyun/ccp/api/response/BaseResponse;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/ConsentData;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getConsentId()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/ConsentData;->consentId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/ConsentData;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getDomainId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/ConsentData;->domainId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/ConsentData;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/ConsentData;->clientId:Ljava/lang/String;

    return-void
.end method

.method public setConsentId(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/ConsentData;->consentId:Ljava/lang/String;

    return-void
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/ConsentData;->createdAt:Ljava/lang/String;

    return-void
.end method

.method public setDomainId(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/ConsentData;->domainId:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/ConsentData;->userId:Ljava/lang/String;

    return-void
.end method
