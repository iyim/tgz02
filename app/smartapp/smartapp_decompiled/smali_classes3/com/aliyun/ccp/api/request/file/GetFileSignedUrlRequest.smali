.class public Lcom/aliyun/ccp/api/request/file/GetFileSignedUrlRequest;
.super Lcom/aliyun/ccp/api/request/BaseRequest;
.source "GetFileSignedUrlRequest.java"


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

.field private driverId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "drive_id"
    .end annotation
.end field

.field private expiresSec:Ljava/lang/Long;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "expires_sec"
    .end annotation
.end field

.field private fileId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "file_id"
    .end annotation
.end field

.field private shareId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "share_id"
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
    invoke-direct {p0}, Lcom/aliyun/ccp/api/request/BaseRequest;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getContentMd5()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/GetFileSignedUrlRequest;->contentMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/GetFileSignedUrlRequest;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDriverId()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/GetFileSignedUrlRequest;->driverId:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresSec()Ljava/lang/Long;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/GetFileSignedUrlRequest;->expiresSec:Ljava/lang/Long;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/GetFileSignedUrlRequest;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getShareId()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/GetFileSignedUrlRequest;->shareId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/GetFileSignedUrlRequest;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setContentMd5(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/GetFileSignedUrlRequest;->contentMd5:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/GetFileSignedUrlRequest;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setDriverId(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/GetFileSignedUrlRequest;->driverId:Ljava/lang/String;

    return-void
.end method

.method public setExpiresSec(Ljava/lang/Long;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/GetFileSignedUrlRequest;->expiresSec:Ljava/lang/Long;

    return-void
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/GetFileSignedUrlRequest;->fileId:Ljava/lang/String;

    return-void
.end method

.method public setShareId(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/GetFileSignedUrlRequest;->shareId:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/GetFileSignedUrlRequest;->type:Ljava/lang/String;

    return-void
.end method
