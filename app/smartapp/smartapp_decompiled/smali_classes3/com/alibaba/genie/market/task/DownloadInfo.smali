.class public Lcom/alibaba/genie/market/task/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# static fields
.field public static final DOWNLOAD_STATE_DOWNLOADING:I = 0x1

.field public static final DOWNLOAD_STATE_ERROR:I = 0x3

.field public static final DOWNLOAD_STATE_FINISH:I = 0x2

.field public static final DOWNLOAD_STATE_INSTALLED:I = 0x4

.field public static final TOTAL_ERROR:J = -0x1L


# instance fields
.field private errotMsg:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private progress:I

.field public size:I

.field private state:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alibaba/genie/market/task/DownloadInfo;->url:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/alibaba/genie/market/task/DownloadInfo;->size:I

    .line 30
    iput p3, p0, Lcom/alibaba/genie/market/task/DownloadInfo;->progress:I

    .line 31
    iput p4, p0, Lcom/alibaba/genie/market/task/DownloadInfo;->state:I

    return-void
.end method


# virtual methods
.method public getErrotMsg()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/alibaba/genie/market/task/DownloadInfo;->errotMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/alibaba/genie/market/task/DownloadInfo;->progress:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/alibaba/genie/market/task/DownloadInfo;->state:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/alibaba/genie/market/task/DownloadInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setErrotMsg(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/alibaba/genie/market/task/DownloadInfo;->errotMsg:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/alibaba/genie/market/task/DownloadInfo;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/alibaba/genie/market/task/DownloadInfo;->progress:I

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/alibaba/genie/market/task/DownloadInfo;->state:I

    return-void
.end method
