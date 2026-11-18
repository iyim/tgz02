.class public Lcom/taobao/downloader/request/Param;
.super Ljava/lang/Object;
.source "Param.java"


# static fields
.field public static final TYPE_AUTO:I = 0x0

.field public static final TYPE_DM:I = 0x1

.field public static final TYPE_HUC:I = 0x2

.field public static final TYPE_TNET:I = 0x3


# instance fields
.field public askIfNetLimit:Z

.field public bizId:Ljava/lang/String;

.field public callbackCondition:I

.field public callbackType:I

.field public description:Ljava/lang/String;

.field public downloadStrategy:I

.field public fileStorePath:Ljava/lang/String;

.field public foreground:Z

.field public from:Ljava/lang/String;

.field public network:I

.field public notificationUI:Z

.field public notificationVisibility:I

.field public priority:I

.field public retryTimes:I

.field public title:Ljava/lang/String;

.field public useCache:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 23
    iput v0, p0, Lcom/taobao/downloader/request/Param;->priority:I

    const/4 v0, 0x7

    .line 28
    iput v0, p0, Lcom/taobao/downloader/request/Param;->network:I

    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lcom/taobao/downloader/request/Param;->callbackCondition:I

    .line 38
    iput v0, p0, Lcom/taobao/downloader/request/Param;->callbackType:I

    const/4 v1, 0x0

    .line 43
    iput-boolean v1, p0, Lcom/taobao/downloader/request/Param;->askIfNetLimit:Z

    const/4 v1, 0x3

    .line 81
    iput v1, p0, Lcom/taobao/downloader/request/Param;->retryTimes:I

    .line 84
    iput-boolean v0, p0, Lcom/taobao/downloader/request/Param;->useCache:Z

    const-string v0, ""

    .line 87
    iput-object v0, p0, Lcom/taobao/downloader/request/Param;->from:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadParams{priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/downloader/request/Param;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/downloader/request/Param;->network:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callbackCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/downloader/request/Param;->callbackCondition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callbackType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/downloader/request/Param;->callbackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fileStorePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/downloader/request/Param;->fileStorePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
