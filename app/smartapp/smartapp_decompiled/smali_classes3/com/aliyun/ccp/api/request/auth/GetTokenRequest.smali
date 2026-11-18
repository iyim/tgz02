.class public Lcom/aliyun/ccp/api/request/auth/GetTokenRequest;
.super Lcom/aliyun/ccp/api/request/BaseRequest;
.source "GetTokenRequest.java"


# instance fields
.field private avatar:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "avatar"
    .end annotation
.end field

.field private clientId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "client_id"
    .end annotation
.end field

.field private date:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "date"
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "description"
    .end annotation
.end field

.field private domainId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "domain_id"
    .end annotation
.end field

.field private grantType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "grant_type"
    .end annotation
.end field

.field private nickName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "nick_name"
    .end annotation
.end field

.field private responseType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "response_type"
    .end annotation
.end field

.field private role:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "role"
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "user_id"
    .end annotation
.end field

.field private userName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "uset_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/aliyun/ccp/api/request/BaseRequest;-><init>()V

    const-string v0, "client_credentials"

    .line 10
    iput-object v0, p0, Lcom/aliyun/ccp/api/request/auth/GetTokenRequest;->grantType:Ljava/lang/String;

    .line 22
    invoke-static {}, Lcom/aliyun/ccp/api/util/DateUtil;->getDate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aliyun/ccp/api/request/auth/GetTokenRequest;->date:Ljava/lang/String;

    const-string v0, "access_token"

    .line 25
    iput-object v0, p0, Lcom/aliyun/ccp/api/request/auth/GetTokenRequest;->responseType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/auth/GetTokenRequest;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/auth/GetTokenRequest;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/auth/GetTokenRequest;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/auth/GetTokenRequest;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDomainId()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/auth/GetTokenRequest;->domainId:Ljava/lang/String;

    return-object v0
.end method

.method public getGrantType()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/auth/GetTokenRequest;->grantType:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/auth/GetTokenRequest;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseType()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/auth/GetTokenRequest;->responseType:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/auth/GetTokenRequest;->role:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/auth/GetTokenRequest;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/auth/GetTokenRequest;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/auth/GetTokenRequest;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/auth/GetTokenRequest;->clientId:Ljava/lang/String;

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/auth/GetTokenRequest;->date:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/auth/GetTokenRequest;->description:Ljava/lang/String;

    return-void
.end method

.method public setDomainId(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/auth/GetTokenRequest;->domainId:Ljava/lang/String;

    return-void
.end method

.method public setGrantType(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/auth/GetTokenRequest;->grantType:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/auth/GetTokenRequest;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setResponseType(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/auth/GetTokenRequest;->responseType:Ljava/lang/String;

    return-void
.end method

.method public setRole(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/auth/GetTokenRequest;->role:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/auth/GetTokenRequest;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/auth/GetTokenRequest;->userName:Ljava/lang/String;

    return-void
.end method
