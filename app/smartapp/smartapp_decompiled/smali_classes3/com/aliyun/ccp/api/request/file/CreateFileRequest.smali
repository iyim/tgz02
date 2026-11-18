.class public Lcom/aliyun/ccp/api/request/file/CreateFileRequest;
.super Lcom/aliyun/ccp/api/request/BaseRequest;
.source "CreateFileRequest.java"


# instance fields
.field private contentMd5:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "content_md5"
    .end annotation
.end field

.field private contentType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "content_type"
    .end annotation
.end field

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

.field private expiresSec:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "expires_sec"
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

.field private parentFieldId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "parent_file_id"
    .end annotation
.end field

.field private shareId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "share_id"
    .end annotation
.end field

.field private size:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "size"
    .end annotation
.end field

.field private tags:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "tags"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "type"
    .end annotation
.end field

.field private uploadSignatureType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "upload_signature_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/aliyun/ccp/api/request/BaseRequest;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getContentMd5()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;->contentMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDriverId()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;->driverId:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresSec()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;->expiresSec:Ljava/lang/String;

    return-object v0
.end method

.method public getHidden()Ljava/lang/Boolean;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;->hidden:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMeta()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;->meta:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParentFieldId()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;->parentFieldId:Ljava/lang/String;

    return-object v0
.end method

.method public getShareId()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;->shareId:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;->tags:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadSignatureType()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;->uploadSignatureType:Ljava/lang/String;

    return-object v0
.end method

.method public setContentMd5(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;->contentMd5:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;->description:Ljava/lang/String;

    return-void
.end method

.method public setDriverId(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;->driverId:Ljava/lang/String;

    return-void
.end method

.method public setExpiresSec(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;->expiresSec:Ljava/lang/String;

    return-void
.end method

.method public setHidden(Ljava/lang/Boolean;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;->hidden:Ljava/lang/Boolean;

    return-void
.end method

.method public setMeta(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;->meta:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;->name:Ljava/lang/String;

    return-void
.end method

.method public setParentFieldId(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;->parentFieldId:Ljava/lang/String;

    return-void
.end method

.method public setShareId(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;->shareId:Ljava/lang/String;

    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;->size:Ljava/lang/String;

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

    .line 156
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;->tags:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;->type:Ljava/lang/String;

    return-void
.end method

.method public setUploadSignatureType(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;->uploadSignatureType:Ljava/lang/String;

    return-void
.end method
