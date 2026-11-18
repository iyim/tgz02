.class public Lcom/aliyun/ccp/api/request/trash/UnTrashRequest;
.super Lcom/aliyun/ccp/api/request/BaseRequest;
.source "UnTrashRequest.java"


# instance fields
.field private driveId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "drive_id"
    .end annotation
.end field

.field private fileId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "file_id"
    .end annotation
.end field

.field private newName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "new_name"
    .end annotation
.end field

.field private overwrite:Ljava/lang/Boolean;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "overwrite"
    .end annotation
.end field

.field private toParentFileId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "to_parent_file_id"
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
.method public getDriveId()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/trash/UnTrashRequest;->driveId:Ljava/lang/String;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/trash/UnTrashRequest;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getNewName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/trash/UnTrashRequest;->newName:Ljava/lang/String;

    return-object v0
.end method

.method public getOverwrite()Ljava/lang/Boolean;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/trash/UnTrashRequest;->overwrite:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getToParentFileId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/trash/UnTrashRequest;->toParentFileId:Ljava/lang/String;

    return-object v0
.end method

.method public setDriveId(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/trash/UnTrashRequest;->driveId:Ljava/lang/String;

    return-void
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/trash/UnTrashRequest;->fileId:Ljava/lang/String;

    return-void
.end method

.method public setNewName(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/trash/UnTrashRequest;->newName:Ljava/lang/String;

    return-void
.end method

.method public setOverwrite(Ljava/lang/Boolean;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/trash/UnTrashRequest;->overwrite:Ljava/lang/Boolean;

    return-void
.end method

.method public setToParentFileId(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/trash/UnTrashRequest;->toParentFileId:Ljava/lang/String;

    return-void
.end method
