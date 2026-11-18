.class public Lcom/aliyun/ccp/api/request/file/UpdateFileRequest;
.super Lcom/aliyun/ccp/api/request/BaseRequest;
.source "UpdateFileRequest.java"


# instance fields
.field private description:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "description"
    .end annotation
.end field

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

.field private hidden:Ljava/lang/Boolean;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "hidden"
    .end annotation
.end field

.field private meta:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "meta"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "name"
    .end annotation
.end field

.field private shareId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "share_id"
    .end annotation
.end field

.field private started:Ljava/lang/Boolean;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "starred"
    .end annotation
.end field

.field private tags:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "tags"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/aliyun/ccp/api/request/BaseRequest;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/UpdateFileRequest;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDriverId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/UpdateFileRequest;->driverId:Ljava/lang/String;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/UpdateFileRequest;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getHidden()Ljava/lang/Boolean;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/UpdateFileRequest;->hidden:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMeta()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/UpdateFileRequest;->meta:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/UpdateFileRequest;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getShareId()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/UpdateFileRequest;->shareId:Ljava/lang/String;

    return-object v0
.end method

.method public getStarted()Ljava/lang/Boolean;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/UpdateFileRequest;->started:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/UpdateFileRequest;->tags:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/UpdateFileRequest;->description:Ljava/lang/String;

    return-void
.end method

.method public setDriverId(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/UpdateFileRequest;->driverId:Ljava/lang/String;

    return-void
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/UpdateFileRequest;->fileId:Ljava/lang/String;

    return-void
.end method

.method public setHidden(Ljava/lang/Boolean;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/UpdateFileRequest;->hidden:Ljava/lang/Boolean;

    return-void
.end method

.method public setMeta(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/UpdateFileRequest;->meta:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/UpdateFileRequest;->name:Ljava/lang/String;

    return-void
.end method

.method public setShareId(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/UpdateFileRequest;->shareId:Ljava/lang/String;

    return-void
.end method

.method public setStarted(Ljava/lang/Boolean;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/UpdateFileRequest;->started:Ljava/lang/Boolean;

    return-void
.end method

.method public setTags(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 99
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/UpdateFileRequest;->tags:Ljava/lang/String;

    return-void
.end method
