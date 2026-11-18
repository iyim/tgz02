.class public Lcom/aliyun/ccp/api/request/trash/DeleteTrashRequest;
.super Lcom/aliyun/ccp/api/request/BaseRequest;
.source "DeleteTrashRequest.java"


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

    .line 15
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/trash/DeleteTrashRequest;->driveId:Ljava/lang/String;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/trash/DeleteTrashRequest;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public setDriveId(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/trash/DeleteTrashRequest;->driveId:Ljava/lang/String;

    return-void
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/trash/DeleteTrashRequest;->fileId:Ljava/lang/String;

    return-void
.end method
