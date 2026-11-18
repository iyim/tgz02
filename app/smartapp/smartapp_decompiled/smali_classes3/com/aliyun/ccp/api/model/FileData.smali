.class public Lcom/aliyun/ccp/api/model/FileData;
.super Lcom/aliyun/ccp/api/response/BaseResponse;
.source "FileData.java"


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

.field private downloadUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "download_url"
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

.field private fileId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "file_id"
    .end annotation
.end field

.field private headRevisionId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "head_revision_id"
    .end annotation
.end field

.field private hidden:Ljava/lang/Boolean;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "hidden"
    .end annotation
.end field

.field private md5:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "md5"
    .end annotation
.end field

.field private meta:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "meta"
    .end annotation
.end field

.field private mimeType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mime_type"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "name"
    .end annotation
.end field

.field private parentFileId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "parent_file_id"
    .end annotation
.end field

.field private permissions:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "permissions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private size:Ljava/lang/Long;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "size"
    .end annotation
.end field

.field private starred:Ljava/lang/Boolean;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "starred"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "status"
    .end annotation
.end field

.field private tags:Ljava/util/Map;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "tags"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private thumbnail:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "thumbnail"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "type"
    .end annotation
.end field

.field private updatedAt:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "updated_at"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/aliyun/ccp/api/response/BaseResponse;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/FileData;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/FileData;->creator:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/FileData;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDomainId()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/FileData;->domainId:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/FileData;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDriveId()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/FileData;->driveId:Ljava/lang/String;

    return-object v0
.end method

.method public getFileExtension()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/FileData;->fileExtension:Ljava/lang/String;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/FileData;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadRevisionId()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/FileData;->headRevisionId:Ljava/lang/String;

    return-object v0
.end method

.method public getHidden()Ljava/lang/Boolean;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/FileData;->hidden:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/FileData;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getMeta()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/FileData;->meta:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/FileData;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/FileData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParentFileId()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/FileData;->parentFileId:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/FileData;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public getSize()Ljava/lang/Long;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/FileData;->size:Ljava/lang/Long;

    return-object v0
.end method

.method public getStarred()Ljava/lang/Boolean;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/FileData;->starred:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/FileData;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/FileData;->tags:Ljava/util/Map;

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/FileData;->thumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/FileData;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/FileData;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/FileData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/FileData;->createdAt:Ljava/lang/String;

    return-void
.end method

.method public setCreator(Ljava/lang/String;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/FileData;->creator:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/FileData;->description:Ljava/lang/String;

    return-void
.end method

.method public setDomainId(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/FileData;->domainId:Ljava/lang/String;

    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/FileData;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setDriveId(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/FileData;->driveId:Ljava/lang/String;

    return-void
.end method

.method public setFileExtension(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/FileData;->fileExtension:Ljava/lang/String;

    return-void
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/FileData;->fileId:Ljava/lang/String;

    return-void
.end method

.method public setHeadRevisionId(Ljava/lang/String;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/FileData;->headRevisionId:Ljava/lang/String;

    return-void
.end method

.method public setHidden(Ljava/lang/Boolean;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/FileData;->hidden:Ljava/lang/Boolean;

    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/FileData;->md5:Ljava/lang/String;

    return-void
.end method

.method public setMeta(Ljava/lang/String;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/FileData;->meta:Ljava/lang/String;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/FileData;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/FileData;->name:Ljava/lang/String;

    return-void
.end method

.method public setParentFileId(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/FileData;->parentFileId:Ljava/lang/String;

    return-void
.end method

.method public setPermissions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/FileData;->permissions:Ljava/util/List;

    return-void
.end method

.method public setSize(Ljava/lang/Long;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/FileData;->size:Ljava/lang/Long;

    return-void
.end method

.method public setStarred(Ljava/lang/Boolean;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/FileData;->starred:Ljava/lang/Boolean;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/FileData;->status:Ljava/lang/String;

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

    .line 257
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/FileData;->tags:Ljava/util/Map;

    return-void
.end method

.method public setThumbnail(Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/FileData;->thumbnail:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/FileData;->type:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedAt(Ljava/lang/String;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/FileData;->updatedAt:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/FileData;->url:Ljava/lang/String;

    return-void
.end method
