.class public Lcom/taobao/downloader/download/impl2/OutputContext;
.super Ljava/lang/Object;
.source "OutputContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;
    }
.end annotation


# instance fields
.field public downloadStat:Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;

.field public errorInfo:Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

.field public hasReadData:Z

.field public mDownloadSize:J

.field public mListener:Lcom/taobao/downloader/download/IListener;

.field public successCode:I


# direct methods
.method public constructor <init>(Lcom/taobao/downloader/download/IListener;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 19
    iput v0, p0, Lcom/taobao/downloader/download/impl2/OutputContext;->successCode:I

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lcom/taobao/downloader/download/impl2/OutputContext;->mDownloadSize:J

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/taobao/downloader/download/impl2/OutputContext;->hasReadData:Z

    .line 26
    new-instance v0, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    invoke-direct {v0}, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;-><init>()V

    iput-object v0, p0, Lcom/taobao/downloader/download/impl2/OutputContext;->errorInfo:Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    .line 27
    new-instance v0, Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;

    invoke-direct {v0}, Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;-><init>()V

    iput-object v0, p0, Lcom/taobao/downloader/download/impl2/OutputContext;->downloadStat:Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;

    .line 30
    iput-object p1, p0, Lcom/taobao/downloader/download/impl2/OutputContext;->mListener:Lcom/taobao/downloader/download/IListener;

    return-void
.end method


# virtual methods
.method public callback(Lcom/taobao/downloader/download/impl2/InputContext;)V
    .locals 7

    .line 35
    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/OutputContext;->mListener:Lcom/taobao/downloader/download/IListener;

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    iget-object v0, p1, Lcom/taobao/downloader/download/impl2/InputContext;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    .line 40
    iget-object v1, p0, Lcom/taobao/downloader/download/impl2/OutputContext;->errorInfo:Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    iget-boolean v1, v1, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->success:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 42
    iput-boolean v1, v0, Lcom/taobao/downloader/request/task/SingleTask;->success:Z

    .line 43
    iget-object v1, p1, Lcom/taobao/downloader/download/impl2/InputContext;->downloadFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/downloader/request/task/SingleTask;->storeFilePath:Ljava/lang/String;

    .line 44
    iget v1, p0, Lcom/taobao/downloader/download/impl2/OutputContext;->successCode:I

    iput v1, v0, Lcom/taobao/downloader/request/task/SingleTask;->errorCode:I

    const-string v1, "\u4e0b\u8f7d\u6210\u529f"

    .line 45
    iput-object v1, v0, Lcom/taobao/downloader/request/task/SingleTask;->errorMsg:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 47
    iput-boolean v1, v0, Lcom/taobao/downloader/request/task/SingleTask;->success:Z

    .line 48
    iget-object v1, p0, Lcom/taobao/downloader/download/impl2/OutputContext;->errorInfo:Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    iget v1, v1, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->errorCode:I

    iput v1, v0, Lcom/taobao/downloader/request/task/SingleTask;->errorCode:I

    .line 49
    iget-object v1, v0, Lcom/taobao/downloader/request/task/SingleTask;->retryStrategy:Lcom/taobao/downloader/request/task/SingleTask$RetryStrategy;

    iget-object v2, p0, Lcom/taobao/downloader/download/impl2/OutputContext;->errorInfo:Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    iget-boolean v2, v2, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->connectError:Z

    invoke-virtual {v1, v2}, Lcom/taobao/downloader/request/task/SingleTask$RetryStrategy;->increaseError(Z)V

    .line 50
    iget v1, v0, Lcom/taobao/downloader/request/task/SingleTask;->errorCode:I

    const/16 v2, -0x12

    if-eq v1, v2, :cond_2

    const/16 v2, -0xf

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25"

    .line 65
    iput-object v1, v0, Lcom/taobao/downloader/request/task/SingleTask;->errorMsg:Ljava/lang/String;

    goto :goto_0

    :pswitch_0
    const-string v1, "url\u9519\u8bef"

    .line 52
    iput-object v1, v0, Lcom/taobao/downloader/request/task/SingleTask;->errorMsg:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string v1, "\u6587\u4ef6\u8bfb\u5199\u9519\u8bef"

    .line 55
    iput-object v1, v0, Lcom/taobao/downloader/request/task/SingleTask;->errorMsg:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string v1, "\u7f51\u7edc\u9519\u8bef"

    .line 58
    iput-object v1, v0, Lcom/taobao/downloader/request/task/SingleTask;->errorMsg:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, "\u6587\u4ef6\u6821\u9a8c\u5931\u8d25"

    .line 62
    iput-object v1, v0, Lcom/taobao/downloader/request/task/SingleTask;->errorMsg:Ljava/lang/String;

    .line 70
    :goto_0
    iget-object v1, p0, Lcom/taobao/downloader/download/impl2/OutputContext;->downloadStat:Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;

    iget-object p1, p1, Lcom/taobao/downloader/download/impl2/InputContext;->url:Ljava/net/URL;

    iput-object p1, v1, Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;->url:Ljava/net/URL;

    .line 71
    iget-object p1, p0, Lcom/taobao/downloader/download/impl2/OutputContext;->downloadStat:Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;

    iget-object v1, v0, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-wide v1, v1, Lcom/taobao/downloader/request/Item;->size:J

    iput-wide v1, p1, Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;->size:J

    const-wide/16 v1, 0x0

    .line 72
    iget-object p1, p0, Lcom/taobao/downloader/download/impl2/OutputContext;->downloadStat:Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;

    iget-wide v3, p1, Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;->downloadTime:J

    cmp-long p1, v1, v3

    if-eqz p1, :cond_3

    .line 73
    iget-object p1, p0, Lcom/taobao/downloader/download/impl2/OutputContext;->downloadStat:Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;

    iget-wide v1, p1, Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;->traffic:J

    long-to-double v1, v1

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    iget-object v3, p0, Lcom/taobao/downloader/download/impl2/OutputContext;->downloadStat:Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;

    iget-wide v3, v3, Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;->downloadTime:J

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    div-double/2addr v1, v3

    iput-wide v1, p1, Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;->downloadSpeed:D

    .line 75
    :cond_3
    iget-object p1, p0, Lcom/taobao/downloader/download/impl2/OutputContext;->downloadStat:Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;

    iget-boolean v1, v0, Lcom/taobao/downloader/request/task/SingleTask;->success:Z

    iput-boolean v1, p1, Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;->success:Z

    .line 77
    iget-object p1, p0, Lcom/taobao/downloader/download/impl2/OutputContext;->downloadStat:Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;

    iget-boolean p1, p1, Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;->success:Z

    if-eqz p1, :cond_4

    .line 78
    iget-object p1, p0, Lcom/taobao/downloader/download/impl2/OutputContext;->downloadStat:Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;

    iget v1, p0, Lcom/taobao/downloader/download/impl2/OutputContext;->successCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;->error_code:Ljava/lang/String;

    goto :goto_1

    .line 80
    :cond_4
    iget-object p1, p0, Lcom/taobao/downloader/download/impl2/OutputContext;->downloadStat:Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;

    iget-object v1, p0, Lcom/taobao/downloader/download/impl2/OutputContext;->errorInfo:Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    iget v1, v1, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->errorCode:I

    mul-int/lit16 v1, v1, 0x3e8

    iget-object v2, p0, Lcom/taobao/downloader/download/impl2/OutputContext;->errorInfo:Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    iget v2, v2, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->originalErrorCode:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;->error_code:Ljava/lang/String;

    .line 82
    :goto_1
    iget-object p1, p0, Lcom/taobao/downloader/download/impl2/OutputContext;->downloadStat:Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;

    iget-object v1, p0, Lcom/taobao/downloader/download/impl2/OutputContext;->errorInfo:Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    iget-object v1, v1, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->errorMsg:Ljava/lang/String;

    iput-object v1, p1, Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;->error_msg:Ljava/lang/String;

    .line 83
    iget-object p1, p0, Lcom/taobao/downloader/download/impl2/OutputContext;->downloadStat:Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;

    iget-object v1, v0, Lcom/taobao/downloader/request/task/SingleTask;->param:Lcom/taobao/downloader/request/Param;

    iget-object v1, v1, Lcom/taobao/downloader/request/Param;->bizId:Ljava/lang/String;

    iput-object v1, p1, Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;->biz:Ljava/lang/String;

    .line 85
    iget-object p1, p0, Lcom/taobao/downloader/download/impl2/OutputContext;->downloadStat:Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;

    iput-object p1, v0, Lcom/taobao/downloader/request/task/SingleTask;->downloadStat:Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;

    .line 87
    iget-object p1, p0, Lcom/taobao/downloader/download/impl2/OutputContext;->mListener:Lcom/taobao/downloader/download/IListener;

    invoke-interface {p1, v0}, Lcom/taobao/downloader/download/IListener;->onResult(Lcom/taobao/downloader/request/task/SingleTask;)V

    return-void

    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateProgress()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/OutputContext;->mListener:Lcom/taobao/downloader/download/IListener;

    if-eqz v0, :cond_0

    .line 93
    iget-wide v1, p0, Lcom/taobao/downloader/download/impl2/OutputContext;->mDownloadSize:J

    invoke-interface {v0, v1, v2}, Lcom/taobao/downloader/download/IListener;->onProgress(J)V

    :cond_0
    return-void
.end method
