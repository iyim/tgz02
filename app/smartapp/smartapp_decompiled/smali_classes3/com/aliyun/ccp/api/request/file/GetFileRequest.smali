.class public Lcom/aliyun/ccp/api/request/file/GetFileRequest;
.super Lcom/aliyun/ccp/api/request/BaseRequest;
.source "GetFileRequest.java"


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

.field private shareId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "share_id"
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
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/GetFileRequest;->driveId:Ljava/lang/String;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/GetFileRequest;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getImageThumbnailProcess()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/GetFileRequest;->imageThumbnailProcess:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrlProcess()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/GetFileRequest;->imageUrlProcess:Ljava/lang/String;

    return-object v0
.end method

.method public getShareId()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/GetFileRequest;->shareId:Ljava/lang/String;

    return-object v0
.end method

.method public setDriveId(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/GetFileRequest;->driveId:Ljava/lang/String;

    return-void
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/GetFileRequest;->fileId:Ljava/lang/String;

    return-void
.end method

.method public setImageThumbnailProcess(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/GetFileRequest;->imageThumbnailProcess:Ljava/lang/String;

    return-void
.end method

.method public setImageUrlProcess(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/GetFileRequest;->imageUrlProcess:Ljava/lang/String;

    return-void
.end method

.method public setShareId(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/GetFileRequest;->shareId:Ljava/lang/String;

    return-void
.end method
