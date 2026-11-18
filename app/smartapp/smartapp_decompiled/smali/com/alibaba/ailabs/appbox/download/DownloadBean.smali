.class public Lcom/alibaba/ailabs/appbox/download/DownloadBean;
.super Ljava/lang/Object;
.source "DownloadBean.java"


# static fields
.field public static final DOWNLOAD_STATE_DOWNLOADING:I = 0x1

.field public static final DOWNLOAD_STATE_ERROR:I = 0x3

.field public static final DOWNLOAD_STATE_FINISH:I = 0x2

.field public static final DOWNLOAD_STATE_INSTALLED:I = 0x4

.field public static final DOWNLOAD_STATE_NONE:I = 0x0

.field public static final TOTAL_ERROR:J = -0x1L


# instance fields
.field private downPath:Ljava/lang/String;

.field private errorMsg:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private progress:I

.field public size:I

.field private state:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/alibaba/ailabs/appbox/download/DownloadBean;->state:I

    .line 55
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/download/DownloadBean;->url:Ljava/lang/String;

    .line 56
    iput p2, p0, Lcom/alibaba/ailabs/appbox/download/DownloadBean;->size:I

    .line 57
    iput p3, p0, Lcom/alibaba/ailabs/appbox/download/DownloadBean;->progress:I

    .line 58
    iput p4, p0, Lcom/alibaba/ailabs/appbox/download/DownloadBean;->state:I

    return-void
.end method


# virtual methods
.method public getDownPath()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/DownloadBean;->downPath:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/DownloadBean;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/alibaba/ailabs/appbox/download/DownloadBean;->progress:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/alibaba/ailabs/appbox/download/DownloadBean;->state:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/DownloadBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setDownPath(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/download/DownloadBean;->downPath:Ljava/lang/String;

    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/download/DownloadBean;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/download/DownloadBean;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/alibaba/ailabs/appbox/download/DownloadBean;->progress:I

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/alibaba/ailabs/appbox/download/DownloadBean;->state:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadBean{url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/download/DownloadBean;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", progress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/appbox/download/DownloadBean;->progress:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fileName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/download/DownloadBean;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/appbox/download/DownloadBean;->state:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errorMsg=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/download/DownloadBean;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/appbox/download/DownloadBean;->size:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", downPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/download/DownloadBean;->downPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
