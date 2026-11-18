.class public Lcom/aliyun/ccp/api/request/file/GetUploadStsTokenRequest;
.super Lcom/aliyun/ccp/api/request/BaseRequest;
.source "GetUploadStsTokenRequest.java"


# instance fields
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
.method public getDriverId()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/GetUploadStsTokenRequest;->driverId:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresSec()Ljava/lang/Long;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/GetUploadStsTokenRequest;->expiresSec:Ljava/lang/Long;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/GetUploadStsTokenRequest;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getShareId()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/GetUploadStsTokenRequest;->shareId:Ljava/lang/String;

    return-object v0
.end method

.method public setDriverId(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/GetUploadStsTokenRequest;->driverId:Ljava/lang/String;

    return-void
.end method

.method public setExpiresSec(Ljava/lang/Long;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/GetUploadStsTokenRequest;->expiresSec:Ljava/lang/Long;

    return-void
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/GetUploadStsTokenRequest;->fileId:Ljava/lang/String;

    return-void
.end method

.method public setShareId(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/GetUploadStsTokenRequest;->shareId:Ljava/lang/String;

    return-void
.end method
