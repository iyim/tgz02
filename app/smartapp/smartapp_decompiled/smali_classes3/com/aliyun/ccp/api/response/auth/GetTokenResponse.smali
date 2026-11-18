.class public Lcom/aliyun/ccp/api/response/auth/GetTokenResponse;
.super Lcom/aliyun/ccp/api/response/BaseResponse;
.source "GetTokenResponse.java"


# instance fields
.field private accessToken:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "access_token"
    .end annotation
.end field

.field private expiresTime:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "expires_time"
    .end annotation
.end field

.field private refreshToken:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "refresh_token"
    .end annotation
.end field

.field private role:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "role"
    .end annotation
.end field

.field private tokenType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "token_type"
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
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/auth/GetTokenResponse;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresTime()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/auth/GetTokenResponse;->expiresTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/auth/GetTokenResponse;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/auth/GetTokenResponse;->role:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenType()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/auth/GetTokenResponse;->tokenType:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/auth/GetTokenResponse;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/auth/GetTokenResponse;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public setExpiresTime(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/auth/GetTokenResponse;->expiresTime:Ljava/lang/String;

    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/auth/GetTokenResponse;->refreshToken:Ljava/lang/String;

    return-void
.end method

.method public setRole(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/auth/GetTokenResponse;->role:Ljava/lang/String;

    return-void
.end method

.method public setTokenType(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/auth/GetTokenResponse;->tokenType:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/auth/GetTokenResponse;->userId:Ljava/lang/String;

    return-void
.end method
