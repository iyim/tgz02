.class public Lcom/aliyun/ccp/api/response/file/CopyFileResponse;
.super Lcom/aliyun/ccp/api/response/BaseResponse;
.source "CopyFileResponse.java"


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

    .line 18
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/file/CopyFileResponse;->domainId:Ljava/lang/String;

    return-object v0
.end method

.method public getDriveId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/file/CopyFileResponse;->driveId:Ljava/lang/String;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/file/CopyFileResponse;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public setDomainId(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/file/CopyFileResponse;->domainId:Ljava/lang/String;

    return-void
.end method

.method public setDriveId(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/file/CopyFileResponse;->driveId:Ljava/lang/String;

    return-void
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/file/CopyFileResponse;->fileId:Ljava/lang/String;

    return-void
.end method
