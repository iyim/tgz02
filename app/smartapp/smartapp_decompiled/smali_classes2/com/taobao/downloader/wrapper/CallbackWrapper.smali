.class public Lcom/taobao/downloader/wrapper/CallbackWrapper;
.super Ljava/lang/Object;
.source "CallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private bizId:Ljava/lang/String;

.field private downloadListener:Lcom/taobao/downloader/request/DownloadListener;

.field private errorCode:Ljava/lang/String;

.field private errorMsg:Ljava/lang/String;

.field private hasError:Z

.field private onResultCount:I

.field private request:Lcom/taobao/downloader/request/DownloadRequest;

.field private task:Lcom/taobao/downloader/request/task/SingleTask;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/taobao/downloader/request/DownloadRequest;Lcom/taobao/downloader/request/DownloadListener;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->bizId:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->request:Lcom/taobao/downloader/request/DownloadRequest;

    .line 34
    iput-object p3, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->downloadListener:Lcom/taobao/downloader/request/DownloadListener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/taobao/downloader/request/task/SingleTask;Lcom/taobao/downloader/request/DownloadRequest;Lcom/taobao/downloader/request/DownloadListener;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->bizId:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->task:Lcom/taobao/downloader/request/task/SingleTask;

    .line 27
    iput-object p3, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->request:Lcom/taobao/downloader/request/DownloadRequest;

    .line 28
    iput-object p4, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->downloadListener:Lcom/taobao/downloader/request/DownloadListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->task:Lcom/taobao/downloader/request/task/SingleTask;

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->task:Lcom/taobao/downloader/request/task/SingleTask;

    iget-boolean v0, v0, Lcom/taobao/downloader/request/task/SingleTask;->success:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "task on result {}"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    :try_start_1
    const-string v0, "listener.onDownloadFinish"

    .line 50
    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->task:Lcom/taobao/downloader/request/task/SingleTask;

    aput-object v5, v4, v2

    invoke-static {v0, v1, v4}, Lcom/taobao/downloader/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->downloadListener:Lcom/taobao/downloader/request/DownloadListener;

    iget-object v1, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->task:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v1, v1, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-object v1, v1, Lcom/taobao/downloader/request/Item;->url:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->task:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v4, v4, Lcom/taobao/downloader/request/task/SingleTask;->storeFilePath:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Lcom/taobao/downloader/request/DownloadListener;->onDownloadFinish(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "listener.onDownloadError"

    .line 54
    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->task:Lcom/taobao/downloader/request/task/SingleTask;

    aput-object v5, v4, v2

    invoke-static {v0, v1, v4}, Lcom/taobao/downloader/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->downloadListener:Lcom/taobao/downloader/request/DownloadListener;

    iget-object v1, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->task:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v1, v1, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-object v1, v1, Lcom/taobao/downloader/request/Item;->url:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->task:Lcom/taobao/downloader/request/task/SingleTask;

    iget v4, v4, Lcom/taobao/downloader/request/task/SingleTask;->errorCode:I

    iget-object v5, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->task:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v5, v5, Lcom/taobao/downloader/request/task/SingleTask;->errorMsg:Ljava/lang/String;

    invoke-interface {v0, v1, v4, v5}, Lcom/taobao/downloader/request/DownloadListener;->onDownloadError(Ljava/lang/String;ILjava/lang/String;)V

    .line 56
    iput-boolean v3, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->hasError:Z

    .line 57
    iget-object v0, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->task:Lcom/taobao/downloader/request/task/SingleTask;

    iget v0, v0, Lcom/taobao/downloader/request/task/SingleTask;->errorCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->errorCode:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->task:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v0, v0, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-object v0, v0, Lcom/taobao/downloader/request/Item;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->errorMsg:Ljava/lang/String;

    .line 62
    :goto_0
    iget v0, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->onResultCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->onResultCount:I

    iget-object v1, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->request:Lcom/taobao/downloader/request/DownloadRequest;

    iget-object v1, v1, Lcom/taobao/downloader/request/DownloadRequest;->downloadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    const-string v0, "listener.onFinish"

    const-string v1, "task on result {},"

    .line 63
    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->task:Lcom/taobao/downloader/request/task/SingleTask;

    aput-object v5, v4, v2

    invoke-static {v0, v1, v4}, Lcom/taobao/downloader/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iget-boolean v0, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->hasError:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "allcallback"

    if-eqz v0, :cond_2

    .line 66
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->task:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v4, v4, Lcom/taobao/downloader/request/task/SingleTask;->param:Lcom/taobao/downloader/request/Param;

    iget-object v4, v4, Lcom/taobao/downloader/request/Param;->from:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->bizId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->errorCode:Ljava/lang/String;

    iget-object v5, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->errorMsg:Ljava/lang/String;

    invoke-static {v1, v0, v4, v5}, Lcom/taobao/downloader/util/MonitorUtil;->monitorFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 68
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->task:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v4, v4, Lcom/taobao/downloader/request/task/SingleTask;->param:Lcom/taobao/downloader/request/Param;

    iget-object v4, v4, Lcom/taobao/downloader/request/Param;->from:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->bizId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/downloader/util/MonitorUtil;->monitorSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_1
    iget-object v0, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->downloadListener:Lcom/taobao/downloader/request/DownloadListener;

    iget-boolean v1, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->hasError:Z

    if-nez v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-interface {v0, v2}, Lcom/taobao/downloader/request/DownloadListener;->onFinish(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "callbak"

    const-string v2, "on callback "

    .line 74
    invoke-static {v1, v2, v0}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public setTask(Lcom/taobao/downloader/request/task/SingleTask;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/taobao/downloader/wrapper/CallbackWrapper;->task:Lcom/taobao/downloader/request/task/SingleTask;

    return-void
.end method
