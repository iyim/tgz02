.class public Lcom/aliyun/ccp/api/model/DriveData;
.super Lcom/aliyun/ccp/api/response/BaseResponse;
.source "DriveData.java"


# instance fields
.field private createdAt:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "created_at"
    .end annotation
.end field

.field private creator:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "creator"
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

.field private driveId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "drive_id"
    .end annotation
.end field

.field private driveName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "drive_name"
    .end annotation
.end field

.field private owner:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "owner"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "status"
    .end annotation
.end field

.field private totalSize:Ljava/lang/Long;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "total_size"
    .end annotation
.end field

.field private updatedAt:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "updated_at"
    .end annotation
.end field

.field private usedSize:Ljava/lang/Long;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "used_size"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/aliyun/ccp/api/response/BaseResponse;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/DriveData;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/DriveData;->creator:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/DriveData;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDomainId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/DriveData;->domainId:Ljava/lang/String;

    return-object v0
.end method

.method public getDriveId()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/DriveData;->driveId:Ljava/lang/String;

    return-object v0
.end method

.method public getDriveName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/DriveData;->driveName:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/DriveData;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/DriveData;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSize()Ljava/lang/Long;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/DriveData;->totalSize:Ljava/lang/Long;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/DriveData;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public getUsedSize()Ljava/lang/Long;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/DriveData;->usedSize:Ljava/lang/Long;

    return-object v0
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/DriveData;->createdAt:Ljava/lang/String;

    return-void
.end method

.method public setCreator(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/DriveData;->creator:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/DriveData;->description:Ljava/lang/String;

    return-void
.end method

.method public setDomainId(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/DriveData;->domainId:Ljava/lang/String;

    return-void
.end method

.method public setDriveId(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/DriveData;->driveId:Ljava/lang/String;

    return-void
.end method

.method public setDriveName(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/DriveData;->driveName:Ljava/lang/String;

    return-void
.end method

.method public setOwner(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/DriveData;->owner:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/DriveData;->status:Ljava/lang/String;

    return-void
.end method

.method public setTotalSize(Ljava/lang/Long;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/DriveData;->totalSize:Ljava/lang/Long;

    return-void
.end method

.method public setUpdatedAt(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/DriveData;->updatedAt:Ljava/lang/String;

    return-void
.end method

.method public setUsedSize(Ljava/lang/Long;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/DriveData;->usedSize:Ljava/lang/Long;

    return-void
.end method
