.class public Lcom/aliyun/ccp/api/request/file/DeleteFileRequest;
.super Lcom/aliyun/ccp/api/request/BaseRequest;
.source "DeleteFileRequest.java"


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

.field private permanently:Ljava/lang/Boolean;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "permanently"
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

    .line 29
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/DeleteFileRequest;->driverId:Ljava/lang/String;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/DeleteFileRequest;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getPermanently()Ljava/lang/Boolean;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/DeleteFileRequest;->permanently:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getShareId()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/file/DeleteFileRequest;->shareId:Ljava/lang/String;

    return-object v0
.end method

.method public setDriverId(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/DeleteFileRequest;->driverId:Ljava/lang/String;

    return-void
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/DeleteFileRequest;->fileId:Ljava/lang/String;

    return-void
.end method

.method public setPermanently(Ljava/lang/Boolean;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/DeleteFileRequest;->permanently:Ljava/lang/Boolean;

    return-void
.end method

.method public setShareId(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/file/DeleteFileRequest;->shareId:Ljava/lang/String;

    return-void
.end method
