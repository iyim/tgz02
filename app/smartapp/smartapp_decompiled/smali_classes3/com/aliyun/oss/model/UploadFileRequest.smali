.class public Lcom/aliyun/oss/model/UploadFileRequest;
.super Lcom/aliyun/oss/model/GenericRequest;
.source "UploadFileRequest.java"


# instance fields
.field private callback:Lcom/aliyun/oss/model/Callback;

.field private checkpointFile:Ljava/lang/String;

.field private enableCheckpoint:Z

.field private objectMetadata:Lcom/aliyun/oss/model/ObjectMetadata;

.field private partSize:J

.field private taskNum:I

.field private uploadFile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 p1, 0x19000

    .line 127
    iput-wide p1, p0, Lcom/aliyun/oss/model/UploadFileRequest;->partSize:J

    const/4 p1, 0x1

    .line 129
    iput p1, p0, Lcom/aliyun/oss/model/UploadFileRequest;->taskNum:I

    const/4 p1, 0x0

    .line 133
    iput-boolean p1, p0, Lcom/aliyun/oss/model/UploadFileRequest;->enableCheckpoint:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 p1, 0x19000

    .line 127
    iput-wide p1, p0, Lcom/aliyun/oss/model/UploadFileRequest;->partSize:J

    const/4 p1, 0x1

    .line 129
    iput p1, p0, Lcom/aliyun/oss/model/UploadFileRequest;->taskNum:I

    const/4 p1, 0x0

    .line 133
    iput-boolean p1, p0, Lcom/aliyun/oss/model/UploadFileRequest;->enableCheckpoint:Z

    .line 35
    iput-wide p4, p0, Lcom/aliyun/oss/model/UploadFileRequest;->partSize:J

    .line 36
    iput p6, p0, Lcom/aliyun/oss/model/UploadFileRequest;->taskNum:I

    .line 37
    iput-object p3, p0, Lcom/aliyun/oss/model/UploadFileRequest;->uploadFile:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZ)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 p1, 0x19000

    .line 127
    iput-wide p1, p0, Lcom/aliyun/oss/model/UploadFileRequest;->partSize:J

    const/4 p1, 0x1

    .line 129
    iput p1, p0, Lcom/aliyun/oss/model/UploadFileRequest;->taskNum:I

    const/4 p1, 0x0

    .line 133
    iput-boolean p1, p0, Lcom/aliyun/oss/model/UploadFileRequest;->enableCheckpoint:Z

    .line 43
    iput-wide p4, p0, Lcom/aliyun/oss/model/UploadFileRequest;->partSize:J

    .line 44
    iput p6, p0, Lcom/aliyun/oss/model/UploadFileRequest;->taskNum:I

    .line 45
    iput-object p3, p0, Lcom/aliyun/oss/model/UploadFileRequest;->uploadFile:Ljava/lang/String;

    .line 46
    iput-boolean p7, p0, Lcom/aliyun/oss/model/UploadFileRequest;->enableCheckpoint:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 p1, 0x19000

    .line 127
    iput-wide p1, p0, Lcom/aliyun/oss/model/UploadFileRequest;->partSize:J

    const/4 p1, 0x1

    .line 129
    iput p1, p0, Lcom/aliyun/oss/model/UploadFileRequest;->taskNum:I

    const/4 p1, 0x0

    .line 133
    iput-boolean p1, p0, Lcom/aliyun/oss/model/UploadFileRequest;->enableCheckpoint:Z

    .line 53
    iput-wide p4, p0, Lcom/aliyun/oss/model/UploadFileRequest;->partSize:J

    .line 54
    iput p6, p0, Lcom/aliyun/oss/model/UploadFileRequest;->taskNum:I

    .line 55
    iput-object p3, p0, Lcom/aliyun/oss/model/UploadFileRequest;->uploadFile:Ljava/lang/String;

    .line 56
    iput-boolean p7, p0, Lcom/aliyun/oss/model/UploadFileRequest;->enableCheckpoint:Z

    .line 57
    iput-object p8, p0, Lcom/aliyun/oss/model/UploadFileRequest;->checkpointFile:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/aliyun/oss/model/Callback;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/aliyun/oss/model/UploadFileRequest;->callback:Lcom/aliyun/oss/model/Callback;

    return-object v0
.end method

.method public getCheckpointFile()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/aliyun/oss/model/UploadFileRequest;->checkpointFile:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectMetadata()Lcom/aliyun/oss/model/ObjectMetadata;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/aliyun/oss/model/UploadFileRequest;->objectMetadata:Lcom/aliyun/oss/model/ObjectMetadata;

    return-object v0
.end method

.method public getPartSize()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/aliyun/oss/model/UploadFileRequest;->partSize:J

    return-wide v0
.end method

.method public getTaskNum()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/aliyun/oss/model/UploadFileRequest;->taskNum:I

    return v0
.end method

.method public getUploadFile()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/aliyun/oss/model/UploadFileRequest;->uploadFile:Ljava/lang/String;

    return-object v0
.end method

.method public isEnableCheckpoint()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/aliyun/oss/model/UploadFileRequest;->enableCheckpoint:Z

    return v0
.end method

.method public setCallback(Lcom/aliyun/oss/model/Callback;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/aliyun/oss/model/UploadFileRequest;->callback:Lcom/aliyun/oss/model/Callback;

    return-void
.end method

.method public setCheckpointFile(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/aliyun/oss/model/UploadFileRequest;->checkpointFile:Ljava/lang/String;

    return-void
.end method

.method public setEnableCheckpoint(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/aliyun/oss/model/UploadFileRequest;->enableCheckpoint:Z

    return-void
.end method

.method public setObjectMetadata(Lcom/aliyun/oss/model/ObjectMetadata;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/aliyun/oss/model/UploadFileRequest;->objectMetadata:Lcom/aliyun/oss/model/ObjectMetadata;

    return-void
.end method

.method public setPartSize(J)V
    .locals 3

    const-wide/32 v0, 0x19000

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 66
    iput-wide v0, p0, Lcom/aliyun/oss/model/UploadFileRequest;->partSize:J

    goto :goto_0

    .line 68
    :cond_0
    iput-wide p1, p0, Lcom/aliyun/oss/model/UploadFileRequest;->partSize:J

    :goto_0
    return-void
.end method

.method public setTaskNum(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 78
    iput v0, p0, Lcom/aliyun/oss/model/UploadFileRequest;->taskNum:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e8

    if-le p1, v0, :cond_1

    .line 80
    iput v0, p0, Lcom/aliyun/oss/model/UploadFileRequest;->taskNum:I

    goto :goto_0

    .line 82
    :cond_1
    iput p1, p0, Lcom/aliyun/oss/model/UploadFileRequest;->taskNum:I

    :goto_0
    return-void
.end method

.method public setUploadFile(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/aliyun/oss/model/UploadFileRequest;->uploadFile:Ljava/lang/String;

    return-void
.end method
