.class public Lcom/aliyun/ccp/api/response/file/CreateFileResponse;
.super Lcom/aliyun/ccp/api/response/BaseResponse;
.source "CreateFileResponse.java"


# instance fields
.field private domainId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "domain_id"
    .end annotation
.end field

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

.field private signedUrlData:Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "signed_url"
    .end annotation
.end field

.field private stsTokenData:Lcom/aliyun/ccp/api/response/file/GetUploadStsTokenResponse;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "sts_token"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/aliyun/ccp/api/response/BaseResponse;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getDomainId()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/file/CreateFileResponse;->domainId:Ljava/lang/String;

    return-object v0
.end method

.method public getDriveId()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/file/CreateFileResponse;->driveId:Ljava/lang/String;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/file/CreateFileResponse;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getSignedUrlData()Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/file/CreateFileResponse;->signedUrlData:Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse;

    return-object v0
.end method

.method public getStsTokenData()Lcom/aliyun/ccp/api/response/file/GetUploadStsTokenResponse;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/file/CreateFileResponse;->stsTokenData:Lcom/aliyun/ccp/api/response/file/GetUploadStsTokenResponse;

    return-object v0
.end method

.method public setDomainId(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/file/CreateFileResponse;->domainId:Ljava/lang/String;

    return-void
.end method

.method public setDriveId(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/file/CreateFileResponse;->driveId:Ljava/lang/String;

    return-void
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/file/CreateFileResponse;->fileId:Ljava/lang/String;

    return-void
.end method

.method public setSignedUrlData(Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/file/CreateFileResponse;->signedUrlData:Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse;

    return-void
.end method

.method public setStsTokenData(Lcom/aliyun/ccp/api/response/file/GetUploadStsTokenResponse;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/file/CreateFileResponse;->stsTokenData:Lcom/aliyun/ccp/api/response/file/GetUploadStsTokenResponse;

    return-void
.end method
