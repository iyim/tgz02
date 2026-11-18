.class public Lcom/aliyun/ccp/api/request/file/ListFileRequest;
.super Lcom/aliyun/ccp/api/request/BasePageRequest;
.source "ListFileRequest.java"


# instance fields
.field private all:Ljava/lang/Boolean;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "all"
    .end annotation
.end field

.field private driveId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "drive_id"
    .end annotation
.end field

.field private fileExtension:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "file_extension"
    .end annotation
.end field

.field private imageThumbnailProcess:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "image_thumbnail_process"
    .end annotation
.end field

.field private imageUrlProcess:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "image_url_process"
    .end annotation
.end field

.field private parentFileId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "parent_file_id"
    .end annotation
.end field

.field private shareId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "share_id"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "status"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/aliyun/ccp/api/request/BasePageRequest;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAll()Ljava/lang/Boolean;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/ListFileRequest;->all:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDriveId()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/ListFileRequest;->driveId:Ljava/lang/String;

    return-object v0
.end method

.method public getFileExtension()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/ListFileRequest;->fileExtension:Ljava/lang/String;

    return-object v0
.end method

.method public getImageThumbnailProcess()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/ListFileRequest;->imageThumbnailProcess:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrlProcess()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/ListFileRequest;->imageUrlProcess:Ljava/lang/String;

    return-object v0
.end method

.method public getParentFileId()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/ListFileRequest;->parentFileId:Ljava/lang/String;

    return-object v0
.end method

.method public getShareId()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/ListFileRequest;->shareId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/ListFileRequest;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/ListFileRequest;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAll(Ljava/lang/Boolean;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/ListFileRequest;->all:Ljava/lang/Boolean;

    return-void
.end method

.method public setDriveId(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/ListFileRequest;->driveId:Ljava/lang/String;

    return-void
.end method

.method public setFileExtension(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/ListFileRequest;->fileExtension:Ljava/lang/String;

    return-void
.end method

.method public setImageThumbnailProcess(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/ListFileRequest;->imageThumbnailProcess:Ljava/lang/String;

    return-void
.end method

.method public setImageUrlProcess(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/ListFileRequest;->imageUrlProcess:Ljava/lang/String;

    return-void
.end method

.method public setParentFileId(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/ListFileRequest;->parentFileId:Ljava/lang/String;

    return-void
.end method

.method public setShareId(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/ListFileRequest;->shareId:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/ListFileRequest;->status:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/ListFileRequest;->type:Ljava/lang/String;

    return-void
.end method
