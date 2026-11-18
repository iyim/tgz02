.class public Lcom/taobao/downloader/wrapper/ListenerWrapper;
.super Ljava/lang/Object;
.source "ListenerWrapper.java"

# interfaces
.implements Lcom/taobao/downloader/request/task/TaskListener;


# instance fields
.field private bizId:Ljava/lang/String;

.field private callbackWrapper:Lcom/taobao/downloader/wrapper/CallbackWrapper;

.field private downloadListener:Lcom/taobao/downloader/request/DownloadListener;

.field private mFinishSize:J

.field private mTotalSize:J

.field private request:Lcom/taobao/downloader/request/DownloadRequest;


# direct methods
.method public constructor <init>(Lcom/taobao/downloader/request/DownloadRequest;Lcom/taobao/downloader/request/DownloadListener;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/taobao/downloader/wrapper/ListenerWrapper;->request:Lcom/taobao/downloader/request/DownloadRequest;

    .line 24
    iput-object p2, p0, Lcom/taobao/downloader/wrapper/ListenerWrapper;->downloadListener:Lcom/taobao/downloader/request/DownloadListener;

    .line 25
    iget-object p2, p1, Lcom/taobao/downloader/request/DownloadRequest;->downloadParam:Lcom/taobao/downloader/request/Param;

    iget-object p2, p2, Lcom/taobao/downloader/request/Param;->bizId:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/downloader/wrapper/ListenerWrapper;->bizId:Ljava/lang/String;

    .line 27
    new-instance p2, Lcom/taobao/downloader/wrapper/CallbackWrapper;

    iget-object v0, p0, Lcom/taobao/downloader/wrapper/ListenerWrapper;->bizId:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/downloader/wrapper/ListenerWrapper;->downloadListener:Lcom/taobao/downloader/request/DownloadListener;

    invoke-direct {p2, v0, p1, v1}, Lcom/taobao/downloader/wrapper/CallbackWrapper;-><init>(Ljava/lang/String;Lcom/taobao/downloader/request/DownloadRequest;Lcom/taobao/downloader/request/DownloadListener;)V

    iput-object p2, p0, Lcom/taobao/downloader/wrapper/ListenerWrapper;->callbackWrapper:Lcom/taobao/downloader/wrapper/CallbackWrapper;

    return-void
.end method

.method private geDLTotalSize()J
    .locals 9

    .line 44
    iget-wide v0, p0, Lcom/taobao/downloader/wrapper/ListenerWrapper;->mTotalSize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    return-wide v0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/taobao/downloader/wrapper/ListenerWrapper;->request:Lcom/taobao/downloader/request/DownloadRequest;

    iget-object v0, v0, Lcom/taobao/downloader/request/DownloadRequest;->downloadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide v4, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/downloader/request/Item;

    .line 49
    iget-wide v6, v1, Lcom/taobao/downloader/request/Item;->size:J

    cmp-long v8, v6, v2

    if-lez v8, :cond_1

    .line 50
    iget-wide v6, v1, Lcom/taobao/downloader/request/Item;->size:J

    add-long/2addr v4, v6

    goto :goto_0

    :cond_1
    return-wide v2

    .line 55
    :cond_2
    iput-wide v4, p0, Lcom/taobao/downloader/wrapper/ListenerWrapper;->mTotalSize:J

    .line 56
    iget-wide v0, p0, Lcom/taobao/downloader/wrapper/ListenerWrapper;->mTotalSize:J

    return-wide v0
.end method


# virtual methods
.method public onDownloadStateChange(Ljava/lang/String;Z)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/taobao/downloader/wrapper/ListenerWrapper;->downloadListener:Lcom/taobao/downloader/request/DownloadListener;

    invoke-interface {v0, p1, p2}, Lcom/taobao/downloader/request/DownloadListener;->onDownloadStateChange(Ljava/lang/String;Z)V

    return-void
.end method

.method public onNetworkLimit(ILcom/taobao/downloader/request/Param;Lcom/taobao/downloader/request/DownloadListener$NetworkLimitCallback;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/taobao/downloader/wrapper/ListenerWrapper;->downloadListener:Lcom/taobao/downloader/request/DownloadListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/downloader/request/DownloadListener;->onNetworkLimit(ILcom/taobao/downloader/request/Param;Lcom/taobao/downloader/request/DownloadListener$NetworkLimitCallback;)V

    return-void
.end method

.method public onProgress(J)V
    .locals 5

    .line 32
    invoke-direct {p0}, Lcom/taobao/downloader/wrapper/ListenerWrapper;->geDLTotalSize()J

    .line 33
    iget-wide v0, p0, Lcom/taobao/downloader/wrapper/ListenerWrapper;->mTotalSize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    return-void

    .line 36
    :cond_0
    iget-object v2, p0, Lcom/taobao/downloader/wrapper/ListenerWrapper;->downloadListener:Lcom/taobao/downloader/request/DownloadListener;

    if-eqz v2, :cond_2

    .line 37
    iget-wide v2, p0, Lcom/taobao/downloader/wrapper/ListenerWrapper;->mFinishSize:J

    add-long/2addr v2, p1

    const-wide/16 p1, 0x64

    mul-long v2, v2, p1

    div-long/2addr v2, v0

    long-to-int p1, v2

    const/16 p2, 0x64

    if-le p1, p2, :cond_1

    const/16 p1, 0x64

    .line 39
    :cond_1
    iget-object p2, p0, Lcom/taobao/downloader/wrapper/ListenerWrapper;->downloadListener:Lcom/taobao/downloader/request/DownloadListener;

    invoke-interface {p2, p1}, Lcom/taobao/downloader/request/DownloadListener;->onDownloadProgress(I)V

    :cond_2
    return-void
.end method

.method public onResult(Lcom/taobao/downloader/request/task/SingleTask;)V
    .locals 4

    .line 63
    iget-wide v0, p0, Lcom/taobao/downloader/wrapper/ListenerWrapper;->mFinishSize:J

    iget-object v2, p1, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-wide v2, v2, Lcom/taobao/downloader/request/Item;->size:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/taobao/downloader/wrapper/ListenerWrapper;->mFinishSize:J

    .line 65
    iget-object v0, p0, Lcom/taobao/downloader/wrapper/ListenerWrapper;->downloadListener:Lcom/taobao/downloader/request/DownloadListener;

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/taobao/downloader/wrapper/ListenerWrapper;->callbackWrapper:Lcom/taobao/downloader/wrapper/CallbackWrapper;

    invoke-virtual {v0, p1}, Lcom/taobao/downloader/wrapper/CallbackWrapper;->setTask(Lcom/taobao/downloader/request/task/SingleTask;)V

    .line 70
    iget-object p1, p0, Lcom/taobao/downloader/wrapper/ListenerWrapper;->callbackWrapper:Lcom/taobao/downloader/wrapper/CallbackWrapper;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/taobao/downloader/util/ThreadUtil;->execute(Ljava/lang/Runnable;Z)V

    return-void
.end method
