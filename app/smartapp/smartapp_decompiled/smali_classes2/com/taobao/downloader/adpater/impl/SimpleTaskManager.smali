.class public Lcom/taobao/downloader/adpater/impl/SimpleTaskManager;
.super Ljava/lang/Object;
.source "SimpleTaskManager.java"

# interfaces
.implements Lcom/taobao/downloader/adpater/TaskManager;


# instance fields
.field private downloaderMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/taobao/downloader/download/IDownloader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/downloader/adpater/impl/SimpleTaskManager;->downloaderMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/downloader/adpater/impl/SimpleTaskManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/taobao/downloader/adpater/impl/SimpleTaskManager;->downloaderMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method


# virtual methods
.method public addTask(Ljava/util/List;Lcom/taobao/downloader/request/task/TaskParam;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/downloader/request/task/SingleTask;",
            ">;",
            "Lcom/taobao/downloader/request/task/TaskParam;",
            ")V"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/taobao/downloader/adpater/impl/SimpleDownloadFactory;

    invoke-direct {v0}, Lcom/taobao/downloader/adpater/impl/SimpleDownloadFactory;-><init>()V

    iget-object v1, p2, Lcom/taobao/downloader/request/task/TaskParam;->userParam:Lcom/taobao/downloader/request/Param;

    invoke-virtual {v0, v1}, Lcom/taobao/downloader/adpater/impl/SimpleDownloadFactory;->getDownloader(Lcom/taobao/downloader/request/Param;)Lcom/taobao/downloader/download/IDownloader;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/taobao/downloader/adpater/impl/SimpleTaskManager;->downloaderMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p2, Lcom/taobao/downloader/request/task/TaskParam;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v1, Lcom/taobao/downloader/adpater/impl/SimpleTaskManager$1;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/taobao/downloader/adpater/impl/SimpleTaskManager$1;-><init>(Lcom/taobao/downloader/adpater/impl/SimpleTaskManager;Ljava/util/List;Lcom/taobao/downloader/download/IDownloader;Lcom/taobao/downloader/request/task/TaskParam;)V

    const/4 p1, 0x0

    invoke-static {v1, p1}, Lcom/taobao/downloader/util/ThreadUtil;->execute(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public modifyTask(II)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/taobao/downloader/adpater/impl/SimpleTaskManager;->downloaderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/downloader/download/IDownloader;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    .line 47
    invoke-interface {p1}, Lcom/taobao/downloader/download/IDownloader;->pause()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p2, :cond_1

    .line 49
    invoke-interface {p1}, Lcom/taobao/downloader/download/IDownloader;->cancel()V

    :cond_1
    :goto_0
    return-void
.end method

.method public modifyTask(ILcom/taobao/downloader/request/ModifyParam;)V
    .locals 0

    .line 56
    iget-object p2, p2, Lcom/taobao/downloader/request/ModifyParam;->status:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/taobao/downloader/adpater/impl/SimpleTaskManager;->modifyTask(II)V

    return-void
.end method
