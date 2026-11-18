.class Lcom/taobao/downloader/adpater/impl/SimpleTaskManager$1;
.super Ljava/lang/Object;
.source "SimpleTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/downloader/adpater/impl/SimpleTaskManager;->addTask(Ljava/util/List;Lcom/taobao/downloader/request/task/TaskParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/downloader/adpater/impl/SimpleTaskManager;

.field final synthetic val$downloader:Lcom/taobao/downloader/download/IDownloader;

.field final synthetic val$items:Ljava/util/List;

.field final synthetic val$param:Lcom/taobao/downloader/request/task/TaskParam;


# direct methods
.method constructor <init>(Lcom/taobao/downloader/adpater/impl/SimpleTaskManager;Ljava/util/List;Lcom/taobao/downloader/download/IDownloader;Lcom/taobao/downloader/request/task/TaskParam;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/taobao/downloader/adpater/impl/SimpleTaskManager$1;->this$0:Lcom/taobao/downloader/adpater/impl/SimpleTaskManager;

    iput-object p2, p0, Lcom/taobao/downloader/adpater/impl/SimpleTaskManager$1;->val$items:Ljava/util/List;

    iput-object p3, p0, Lcom/taobao/downloader/adpater/impl/SimpleTaskManager$1;->val$downloader:Lcom/taobao/downloader/download/IDownloader;

    iput-object p4, p0, Lcom/taobao/downloader/adpater/impl/SimpleTaskManager$1;->val$param:Lcom/taobao/downloader/request/task/TaskParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 31
    iget-object v0, p0, Lcom/taobao/downloader/adpater/impl/SimpleTaskManager$1;->val$items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/downloader/request/task/SingleTask;

    .line 33
    iget-object v2, p0, Lcom/taobao/downloader/adpater/impl/SimpleTaskManager$1;->val$downloader:Lcom/taobao/downloader/download/IDownloader;

    iget-object v3, p0, Lcom/taobao/downloader/adpater/impl/SimpleTaskManager$1;->val$param:Lcom/taobao/downloader/request/task/TaskParam;

    iget-object v3, v3, Lcom/taobao/downloader/request/task/TaskParam;->listener:Lcom/taobao/downloader/request/task/TaskListener;

    invoke-interface {v2, v1, v3}, Lcom/taobao/downloader/download/IDownloader;->download(Lcom/taobao/downloader/request/task/SingleTask;Lcom/taobao/downloader/download/IListener;)V

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/taobao/downloader/adpater/impl/SimpleTaskManager$1;->this$0:Lcom/taobao/downloader/adpater/impl/SimpleTaskManager;

    invoke-static {v0}, Lcom/taobao/downloader/adpater/impl/SimpleTaskManager;->access$000(Lcom/taobao/downloader/adpater/impl/SimpleTaskManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/downloader/adpater/impl/SimpleTaskManager$1;->val$param:Lcom/taobao/downloader/request/task/TaskParam;

    iget v1, v1, Lcom/taobao/downloader/request/task/TaskParam;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
