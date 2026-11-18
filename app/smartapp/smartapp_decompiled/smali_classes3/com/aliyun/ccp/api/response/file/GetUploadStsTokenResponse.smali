.class public Lcom/aliyun/ccp/api/response/file/GetUploadStsTokenResponse;
.super Lcom/aliyun/ccp/api/response/BaseResponse;
.source "GetUploadStsTokenResponse.java"


# instance fields
.field private accessKeyId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "access_key_id"
    .end annotation
.end field

.field private accessKeySecret:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "access_key_secret"
    .end annotation
.end field

.field private bucket:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "bucket"
    .end annotation
.end field

.field private expiration:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "expiration"
    .end annotation
.end field

.field private key:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "key"
    .end annotation
.end field

.field private region:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "region"
    .end annotation
.end field

.field private securityToken:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "security_token"
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
.method public getAccessKeyId()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/file/GetUploadStsTokenResponse;->accessKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getAccessKeySecret()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/file/GetUploadStsTokenResponse;->accessKeySecret:Ljava/lang/String;

    return-object v0
.end method

.method public getBucket()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/file/GetUploadStsTokenResponse;->bucket:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiration()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/file/GetUploadStsTokenResponse;->expiration:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/file/GetUploadStsTokenResponse;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/file/GetUploadStsTokenResponse;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityToken()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/file/GetUploadStsTokenResponse;->securityToken:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessKeyId(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/file/GetUploadStsTokenResponse;->accessKeyId:Ljava/lang/String;

    return-void
.end method

.method public setAccessKeySecret(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/file/GetUploadStsTokenResponse;->accessKeySecret:Ljava/lang/String;

    return-void
.end method

.method public setBucket(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/file/GetUploadStsTokenResponse;->bucket:Ljava/lang/String;

    return-void
.end method

.method public setExpiration(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/file/GetUploadStsTokenResponse;->expiration:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/file/GetUploadStsTokenResponse;->key:Ljava/lang/String;

    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/file/GetUploadStsTokenResponse;->region:Ljava/lang/String;

    return-void
.end method

.method public setSecurityToken(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/file/GetUploadStsTokenResponse;->securityToken:Ljava/lang/String;

    return-void
.end method
