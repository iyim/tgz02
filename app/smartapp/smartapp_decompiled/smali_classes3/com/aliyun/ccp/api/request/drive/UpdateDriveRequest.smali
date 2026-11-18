.class public Lcom/aliyun/ccp/api/request/drive/UpdateDriveRequest;
.super Lcom/aliyun/ccp/api/request/BaseRequest;
.source "UpdateDriveRequest.java"


# instance fields
.field private description:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "description"
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

    .line 7
    invoke-direct {p0}, Lcom/aliyun/ccp/api/request/BaseRequest;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/drive/UpdateDriveRequest;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDriveId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/drive/UpdateDriveRequest;->driveId:Ljava/lang/String;

    return-object v0
.end method

.method public getDriveName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/drive/UpdateDriveRequest;->driveName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/drive/UpdateDriveRequest;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSize()Ljava/lang/Long;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/drive/UpdateDriveRequest;->totalSize:Ljava/lang/Long;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/drive/UpdateDriveRequest;->description:Ljava/lang/String;

    return-void
.end method

.method public setDriveId(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/drive/UpdateDriveRequest;->driveId:Ljava/lang/String;

    return-void
.end method

.method public setDriveName(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/drive/UpdateDriveRequest;->driveName:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/drive/UpdateDriveRequest;->status:Ljava/lang/String;

    return-void
.end method

.method public setTotalSize(Ljava/lang/Long;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/drive/UpdateDriveRequest;->totalSize:Ljava/lang/Long;

    return-void
.end method
