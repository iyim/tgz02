.class public Lcom/aliyun/ccp/api/request/drive/CreateDriveRequest;
.super Lcom/aliyun/ccp/api/request/BaseRequest;
.source "CreateDriveRequest.java"


# instance fields
.field private description:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "description"
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/aliyun/ccp/api/request/BaseRequest;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/drive/CreateDriveRequest;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDriveName()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/drive/CreateDriveRequest;->driveName:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/drive/CreateDriveRequest;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/drive/CreateDriveRequest;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSize()Ljava/lang/Long;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/drive/CreateDriveRequest;->totalSize:Ljava/lang/Long;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/drive/CreateDriveRequest;->description:Ljava/lang/String;

    return-void
.end method

.method public setDriveName(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/drive/CreateDriveRequest;->driveName:Ljava/lang/String;

    return-void
.end method

.method public setOwner(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/drive/CreateDriveRequest;->owner:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/drive/CreateDriveRequest;->status:Ljava/lang/String;

    return-void
.end method

.method public setTotalSize(Ljava/lang/Long;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/drive/CreateDriveRequest;->totalSize:Ljava/lang/Long;

    return-void
.end method
