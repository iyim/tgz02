.class public Lcom/aliyun/oss/model/DownloadFileRequest;
.super Lcom/aliyun/oss/model/GenericRequest;
.source "DownloadFileRequest.java"


# instance fields
.field private checkpointFile:Ljava/lang/String;

.field private downloadFile:Ljava/lang/String;

.field private enableCheckpoint:Z

.field private matchingETagConstraints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private modifiedSinceConstraint:Ljava/util/Date;

.field private nonmatchingEtagConstraints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private partSize:J

.field private responseHeaders:Lcom/aliyun/oss/model/ResponseHeaderOverrides;

.field private taskNum:I

.field private unmodifiedSinceConstraint:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 p1, 0x19000

    .line 209
    iput-wide p1, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->partSize:J

    const/4 p1, 0x1

    .line 211
    iput p1, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->taskNum:I

    .line 220
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->matchingETagConstraints:Ljava/util/List;

    .line 222
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 p1, 0x19000

    .line 209
    iput-wide p1, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->partSize:J

    const/4 p1, 0x1

    .line 211
    iput p1, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->taskNum:I

    .line 220
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->matchingETagConstraints:Ljava/util/List;

    .line 222
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    .line 38
    iput-wide p4, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->partSize:J

    .line 39
    iput-object p3, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->downloadFile:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZ)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    move/from16 v7, p7

    .line 44
    invoke-direct/range {v0 .. v8}, Lcom/aliyun/oss/model/DownloadFileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 p1, 0x19000

    .line 209
    iput-wide p1, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->partSize:J

    const/4 p1, 0x1

    .line 211
    iput p1, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->taskNum:I

    .line 220
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->matchingETagConstraints:Ljava/util/List;

    .line 222
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    .line 50
    iput-wide p4, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->partSize:J

    .line 51
    iput p6, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->taskNum:I

    .line 52
    iput-object p3, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->downloadFile:Ljava/lang/String;

    .line 53
    iput-boolean p7, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->enableCheckpoint:Z

    .line 54
    iput-object p8, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->checkpointFile:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clearMatchingETagConstraints()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->matchingETagConstraints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearNonmatchingETagConstraints()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getCheckpointFile()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->checkpointFile:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadFile()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->downloadFile:Ljava/lang/String;

    return-object v0
.end method

.method public getMatchingETagConstraints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->matchingETagConstraints:Ljava/util/List;

    return-object v0
.end method

.method public getModifiedSinceConstraint()Ljava/util/Date;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->modifiedSinceConstraint:Ljava/util/Date;

    return-object v0
.end method

.method public getNonmatchingETagConstraints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    return-object v0
.end method

.method public getPartSize()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->partSize:J

    return-wide v0
.end method

.method public getResponseHeaders()Lcom/aliyun/oss/model/ResponseHeaderOverrides;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->responseHeaders:Lcom/aliyun/oss/model/ResponseHeaderOverrides;

    return-object v0
.end method

.method public getTaskNum()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->taskNum:I

    return v0
.end method

.method public getTempDownloadFile()Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->downloadFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnmodifiedSinceConstraint()Ljava/util/Date;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->unmodifiedSinceConstraint:Ljava/util/Date;

    return-object v0
.end method

.method public isEnableCheckpoint()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->enableCheckpoint:Z

    return v0
.end method

.method public setCheckpointFile(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->checkpointFile:Ljava/lang/String;

    return-void
.end method

.method public setDownloadFile(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->downloadFile:Ljava/lang/String;

    return-void
.end method

.method public setEnableCheckpoint(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->enableCheckpoint:Z

    return-void
.end method

.method public setMatchingETagConstraints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->matchingETagConstraints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 120
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->matchingETagConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setModifiedSinceConstraint(Ljava/util/Date;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->modifiedSinceConstraint:Ljava/util/Date;

    return-void
.end method

.method public setNonmatchingETagConstraints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 148
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setPartSize(J)V
    .locals 0

    .line 62
    iput-wide p1, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->partSize:J

    return-void
.end method

.method public setResponseHeaders(Lcom/aliyun/oss/model/ResponseHeaderOverrides;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->responseHeaders:Lcom/aliyun/oss/model/ResponseHeaderOverrides;

    return-void
.end method

.method public setTaskNum(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->taskNum:I

    return-void
.end method

.method public setUnmodifiedSinceConstraint(Ljava/util/Date;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/aliyun/oss/model/DownloadFileRequest;->unmodifiedSinceConstraint:Ljava/util/Date;

    return-void
.end method
