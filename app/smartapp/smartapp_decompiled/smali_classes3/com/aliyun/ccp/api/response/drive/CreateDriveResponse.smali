.class public Lcom/aliyun/ccp/api/response/drive/CreateDriveResponse;
.super Lcom/aliyun/ccp/api/response/BaseResponse;
.source "CreateDriveResponse.java"


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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/aliyun/ccp/api/response/BaseResponse;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getDomainId()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/drive/CreateDriveResponse;->domainId:Ljava/lang/String;

    return-object v0
.end method

.method public getDriveId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/drive/CreateDriveResponse;->driveId:Ljava/lang/String;

    return-object v0
.end method

.method public setDomainId(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/drive/CreateDriveResponse;->domainId:Ljava/lang/String;

    return-void
.end method

.method public setDriveId(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/drive/CreateDriveResponse;->driveId:Ljava/lang/String;

    return-void
.end method
