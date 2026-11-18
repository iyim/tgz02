.class public Lcom/aliyun/ccp/api/request/file/MoveFileRequest;
.super Lcom/aliyun/ccp/api/request/BaseRequest;
.source "MoveFileRequest.java"


# instance fields
.field private driverId:Ljava/lang/String;
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

.field private shareId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "share_id"
    .end annotation
.end field

.field private toParentFileId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "to_parent_file_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/aliyun/ccp/api/request/BaseRequest;-><init>()V

    const/4 v0, 0x0

    .line 22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/aliyun/ccp/api/request/file/MoveFileRequest;->overwrite:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getDriverId()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/MoveFileRequest;->driverId:Ljava/lang/String;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/MoveFileRequest;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getNewName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/MoveFileRequest;->newName:Ljava/lang/String;

    return-object v0
.end method

.method public getOverwrite()Ljava/lang/Boolean;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/MoveFileRequest;->overwrite:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getShareId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/MoveFileRequest;->shareId:Ljava/lang/String;

    return-object v0
.end method

.method public getToParentFileId()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/MoveFileRequest;->toParentFileId:Ljava/lang/String;

    return-object v0
.end method

.method public setDriverId(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/MoveFileRequest;->driverId:Ljava/lang/String;

    return-void
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/MoveFileRequest;->fileId:Ljava/lang/String;

    return-void
.end method

.method public setNewName(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/MoveFileRequest;->newName:Ljava/lang/String;

    return-void
.end method

.method public setOverwrite(Ljava/lang/Boolean;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/MoveFileRequest;->overwrite:Ljava/lang/Boolean;

    return-void
.end method

.method public setShareId(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/MoveFileRequest;->shareId:Ljava/lang/String;

    return-void
.end method

.method public setToParentFileId(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/MoveFileRequest;->toParentFileId:Ljava/lang/String;

    return-void
.end method
