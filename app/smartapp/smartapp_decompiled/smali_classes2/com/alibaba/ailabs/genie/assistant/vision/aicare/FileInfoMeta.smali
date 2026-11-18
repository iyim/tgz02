.class public Lcom/alibaba/ailabs/genie/assistant/vision/aicare/FileInfoMeta;
.super Ljava/lang/Object;
.source "FileInfoMeta.java"


# instance fields
.field private businessType:Ljava/lang/String;

.field private driveId:Ljava/lang/String;

.field private ext:Ljava/lang/String;

.field private fileId:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private index:I

.field private timeStamp:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/FileInfoMeta;->index:I

    .line 55
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/FileInfoMeta;->timeStamp:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/FileInfoMeta;->ext:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/FileInfoMeta;->fileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBusinessType()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/FileInfoMeta;->businessType:Ljava/lang/String;

    return-object v0
.end method

.method public getDriveId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/FileInfoMeta;->driveId:Ljava/lang/String;

    return-object v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/FileInfoMeta;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/FileInfoMeta;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/FileInfoMeta;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/FileInfoMeta;->index:I

    return v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/FileInfoMeta;->timeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/FileInfoMeta;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setBusinessType(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/FileInfoMeta;->businessType:Ljava/lang/String;

    return-void
.end method

.method public setDriveId(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/FileInfoMeta;->driveId:Ljava/lang/String;

    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/FileInfoMeta;->ext:Ljava/lang/String;

    return-void
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/FileInfoMeta;->fileId:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/FileInfoMeta;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/FileInfoMeta;->index:I

    return-void
.end method

.method public setTimeStamp(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/FileInfoMeta;->timeStamp:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/FileInfoMeta;->version:Ljava/lang/String;

    return-void
.end method
