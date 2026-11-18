.class public Lcom/taobao/rxm/schedule/UiThreadScheduler;
.super Ljava/lang/Object;
.source "UiThreadScheduler.java"

# interfaces
.implements Lcom/taobao/rxm/schedule/Scheduler;
.implements Ljava/lang/Runnable;


# static fields
.field private static final MAX_RECURSIVE_DEPTH:I = 0xa

.field private static final PRIORITY_QUEUE_CAPACITY:I = 0xc8


# instance fields
.field private mCurrRecursiveDepth:I

.field private mExecutionInProgress:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mPriorityQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/taobao/rxm/schedule/ScheduledAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/PriorityQueue;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/rxm/schedule/UiThreadScheduler;->mPriorityQueue:Ljava/util/PriorityQueue;

    .line 14
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/taobao/rxm/schedule/UiThreadScheduler;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getQueueSize()I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/taobao/rxm/schedule/UiThreadScheduler;->mPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ui thread scheduler status:\nqueue size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p0}, Lcom/taobao/rxm/schedule/UiThreadScheduler;->getQueueSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nexecuting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taobao/rxm/schedule/UiThreadScheduler;->mExecutionInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isScheduleMainThread()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 3

    .line 22
    iget v0, p0, Lcom/taobao/rxm/schedule/UiThreadScheduler;->mCurrRecursiveDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/rxm/schedule/UiThreadScheduler;->mCurrRecursiveDepth:I

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-le v0, v2, :cond_1

    .line 23
    iput v1, p0, Lcom/taobao/rxm/schedule/UiThreadScheduler;->mCurrRecursiveDepth:I

    .line 24
    monitor-enter p0

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/taobao/rxm/schedule/UiThreadScheduler;->mPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/taobao/rxm/schedule/UiThreadScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 28
    :cond_0
    iput-boolean v1, p0, Lcom/taobao/rxm/schedule/UiThreadScheduler;->mExecutionInProgress:Z

    .line 30
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 34
    :cond_1
    monitor-enter p0

    .line 35
    :try_start_1
    iget-object v0, p0, Lcom/taobao/rxm/schedule/UiThreadScheduler;->mPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/rxm/schedule/ScheduledAction;

    .line 36
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {v0}, Lcom/taobao/rxm/schedule/ScheduledAction;->run()V

    .line 39
    invoke-virtual {p0}, Lcom/taobao/rxm/schedule/UiThreadScheduler;->run()V

    goto :goto_1

    .line 41
    :cond_2
    monitor-enter p0

    .line 42
    :try_start_2
    iput-boolean v1, p0, Lcom/taobao/rxm/schedule/UiThreadScheduler;->mExecutionInProgress:Z

    .line 43
    monitor-exit p0

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 36
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method public declared-synchronized schedule(Lcom/taobao/rxm/schedule/ScheduledAction;)V
    .locals 1

    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/taobao/rxm/schedule/UiThreadScheduler;->mPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 51
    iget-boolean p1, p0, Lcom/taobao/rxm/schedule/UiThreadScheduler;->mExecutionInProgress:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/taobao/rxm/schedule/UiThreadScheduler;->mPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/taobao/rxm/schedule/UiThreadScheduler;->mExecutionInProgress:Z

    .line 55
    iget-object p1, p0, Lcom/taobao/rxm/schedule/UiThreadScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 52
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
