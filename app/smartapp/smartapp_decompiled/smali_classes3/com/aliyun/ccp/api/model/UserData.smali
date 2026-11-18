.class public Lcom/aliyun/ccp/api/model/UserData;
.super Lcom/aliyun/ccp/api/response/BaseResponse;
.source "UserData.java"


# instance fields
.field private auditUUID:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "audit_uuid"
    .end annotation
.end field

.field private avatar:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "avatar"
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

.field private email:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "description"
    .end annotation
.end field

.field private nickName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "nick_name"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "status"
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "user_id"
    .end annotation
.end field

.field private userName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "user_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/aliyun/ccp/api/response/BaseResponse;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAuditUUID()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/UserData;->auditUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/UserData;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/UserData;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDomainId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/UserData;->domainId:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/UserData;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/UserData;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/UserData;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/UserData;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/UserData;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setAuditUUID(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/UserData;->auditUUID:Ljava/lang/String;

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/UserData;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/UserData;->description:Ljava/lang/String;

    return-void
.end method

.method public setDomainId(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/UserData;->domainId:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/UserData;->email:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/UserData;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/UserData;->status:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/UserData;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/UserData;->userName:Ljava/lang/String;

    return-void
.end method
