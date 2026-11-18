.class public interface abstract Lcom/taobao/downloader/adpater/TaskManager;
.super Ljava/lang/Object;
.source "TaskManager.java"


# virtual methods
.method public abstract addTask(Ljava/util/List;Lcom/taobao/downloader/request/task/TaskParam;)V
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
.end method

.method public abstract modifyTask(II)V
.end method

.method public abstract modifyTask(ILcom/taobao/downloader/request/ModifyParam;)V
.end method
