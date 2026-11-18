.class public Lcom/aliyun/ccp/api/request/file/CompleteFileRequest;
.super Lcom/aliyun/ccp/api/request/BaseRequest;
.source "CompleteFileRequest.java"


# instance fields
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

    .line 26
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/CompleteFileRequest;->driverId:Ljava/lang/String;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/CompleteFileRequest;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getShareId()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/CompleteFileRequest;->shareId:Ljava/lang/String;

    return-object v0
.end method

.method public setDriverId(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/CompleteFileRequest;->driverId:Ljava/lang/String;

    return-void
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/CompleteFileRequest;->fileId:Ljava/lang/String;

    return-void
.end method

.method public setShareId(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/CompleteFileRequest;->shareId:Ljava/lang/String;

    return-void
.end method
