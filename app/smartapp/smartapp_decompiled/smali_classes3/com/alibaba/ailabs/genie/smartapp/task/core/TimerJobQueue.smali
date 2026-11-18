.class public Lcom/alibaba/ailabs/genie/smartapp/task/core/TimerJobQueue;
.super Ljava/lang/Thread;
.source "TimerJobQueue.java"


# instance fields
.field public mLocker:Ljava/lang/Object;

.field public mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 11
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/task/core/TimerJobQueue;->mQueue:Ljava/util/LinkedList;

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/task/core/TimerJobQueue;->mLocker:Ljava/lang/Object;

    const-string v0, "Thread_TimerJobQueue"

    .line 16
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/smartapp/task/core/TimerJobQueue;->setName(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/smartapp/task/core/TimerJobQueue;->setDaemon(Z)V

    .line 18
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/smartapp/task/core/TimerJobQueue;->start()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/task/core/TimerJobQueue;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/smartapp/task/core/TimerJobQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/smartapp/task/core/TimerJobQueue;->mLocker:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 55
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public exec(Ljava/lang/String;)V
    .locals 1

    .line 66
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 75
    instance-of v0, v0, Lcom/alibaba/ailabs/genie/smartapp/task/core/TimerJob;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/smartapp/task/core/TimerJob;

    if-eqz p1, :cond_0

    .line 77
    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/smartapp/task/core/TimerJob;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/smartapp/task/core/TimerJob;->work()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public recycle()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/task/core/TimerJobQueue;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/smartapp/task/core/TimerJobQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 61
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 3

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/task/core/TimerJobQueue;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 27
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/smartapp/task/core/TimerJobQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 29
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/smartapp/task/core/TimerJobQueue;->mLocker:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 31
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 35
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/smartapp/task/core/TimerJobQueue;->mQueue:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 36
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/smartapp/task/core/TimerJobQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 37
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 44
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 45
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/smartapp/task/core/TimerJobQueue;->exec(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 37
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
