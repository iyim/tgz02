.class public Lcom/aliyun/ccp/api/request/file/SearchFileRequest;
.super Lcom/aliyun/ccp/api/request/BasePageRequest;
.source "SearchFileRequest.java"


# instance fields
.field private driveId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "drive_id"
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

.field private query:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "query"
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
    invoke-direct {p0}, Lcom/aliyun/ccp/api/request/BasePageRequest;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getDriveId()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/SearchFileRequest;->driveId:Ljava/lang/String;

    return-object v0
.end method

.method public getImageThumbnailProcess()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/SearchFileRequest;->imageThumbnailProcess:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrlProcess()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/SearchFileRequest;->imageUrlProcess:Ljava/lang/String;

    return-object v0
.end method

.method public getParentFileId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/SearchFileRequest;->parentFileId:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/SearchFileRequest;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getShareId()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/SearchFileRequest;->shareId:Ljava/lang/String;

    return-object v0
.end method

.method public setDriveId(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/SearchFileRequest;->driveId:Ljava/lang/String;

    return-void
.end method

.method public setImageThumbnailProcess(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/SearchFileRequest;->imageThumbnailProcess:Ljava/lang/String;

    return-void
.end method

.method public setImageUrlProcess(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/SearchFileRequest;->imageUrlProcess:Ljava/lang/String;

    return-void
.end method

.method public setParentFileId(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/SearchFileRequest;->parentFileId:Ljava/lang/String;

    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/SearchFileRequest;->query:Ljava/lang/String;

    return-void
.end method

.method public setShareId(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/SearchFileRequest;->shareId:Ljava/lang/String;

    return-void
.end method
