.class public Lcom/taobao/rxm/schedule/BranchThrottlingScheduler;
.super Ljava/lang/Object;
.source "BranchThrottlingScheduler.java"

# interfaces
.implements Lcom/taobao/rxm/schedule/ThrottlingScheduler;
.implements Lcom/taobao/rxm/schedule/ScheduledActionListener;


# instance fields
.field private mCurrentRunning:I

.field private final mHostScheduler:Lcom/taobao/rxm/schedule/Scheduler;

.field private mMaxRunningCount:I

.field private final mWaitQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/taobao/rxm/schedule/ScheduledAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/rxm/schedule/Scheduler;I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/taobao/rxm/schedule/BranchThrottlingScheduler;->mHostScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    .line 17
    iput p2, p0, Lcom/taobao/rxm/schedule/BranchThrottlingScheduler;->mMaxRunningCount:I

    .line 18
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/taobao/rxm/schedule/BranchThrottlingScheduler;->mWaitQueue:Ljava/util/Queue;

    return-void
.end method

.method private checkRunningCount()V
    .locals 4

    .line 54
    sget-object v0, Lcom/taobao/rxm/schedule/ScheduledAction;->sActionCallerThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/rxm/schedule/ScheduledAction;

    :goto_0
    const/4 v1, 0x0

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget v2, p0, Lcom/taobao/rxm/schedule/BranchThrottlingScheduler;->mCurrentRunning:I

    iget v3, p0, Lcom/taobao/rxm/schedule/BranchThrottlingScheduler;->mMaxRunningCount:I

    if-ge v2, v3, :cond_0

    .line 59
    iget-object v1, p0, Lcom/taobao/rxm/schedule/BranchThrottlingScheduler;->mWaitQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/rxm/schedule/ScheduledAction;

    :cond_0
    if-eqz v1, :cond_1

    .line 62
    iget v2, p0, Lcom/taobao/rxm/schedule/BranchThrottlingScheduler;->mCurrentRunning:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/taobao/rxm/schedule/BranchThrottlingScheduler;->mCurrentRunning:I

    .line 64
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    return-void

    .line 68
    :cond_2
    iget-object v2, p0, Lcom/taobao/rxm/schedule/BranchThrottlingScheduler;->mHostScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    invoke-interface {v2, v1}, Lcom/taobao/rxm/schedule/Scheduler;->schedule(Lcom/taobao/rxm/schedule/ScheduledAction;)V

    .line 70
    sget-object v1, Lcom/taobao/rxm/schedule/ScheduledAction;->sActionCallerThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 64
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public getQueueSize()I
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/taobao/rxm/schedule/BranchThrottlingScheduler;->mWaitQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getStatus()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/taobao/rxm/schedule/BranchThrottlingScheduler;->mHostScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    invoke-interface {v0}, Lcom/taobao/rxm/schedule/Scheduler;->getStatus()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isScheduleMainThread()Z
    .locals 1

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/taobao/rxm/schedule/BranchThrottlingScheduler;->mHostScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    invoke-interface {v0}, Lcom/taobao/rxm/schedule/Scheduler;->isScheduleMainThread()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onActionFinished(Lcom/taobao/rxm/schedule/ScheduledAction;)V
    .locals 0

    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iget p1, p0, Lcom/taobao/rxm/schedule/BranchThrottlingScheduler;->mCurrentRunning:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/taobao/rxm/schedule/BranchThrottlingScheduler;->mCurrentRunning:I

    .line 95
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-direct {p0}, Lcom/taobao/rxm/schedule/BranchThrottlingScheduler;->checkRunningCount()V

    return-void

    :catchall_0
    move-exception p1

    .line 95
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public schedule(Lcom/taobao/rxm/schedule/ScheduledAction;)V
    .locals 3

    .line 23
    invoke-virtual {p1, p0}, Lcom/taobao/rxm/schedule/ScheduledAction;->setBranchActionListener(Lcom/taobao/rxm/schedule/ScheduledActionListener;)V

    .line 25
    monitor-enter p0

    .line 31
    :try_start_0
    iget v0, p0, Lcom/taobao/rxm/schedule/BranchThrottlingScheduler;->mCurrentRunning:I

    iget v1, p0, Lcom/taobao/rxm/schedule/BranchThrottlingScheduler;->mMaxRunningCount:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/taobao/rxm/schedule/BranchThrottlingScheduler;->mWaitQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 33
    iget v1, p0, Lcom/taobao/rxm/schedule/BranchThrottlingScheduler;->mCurrentRunning:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/taobao/rxm/schedule/BranchThrottlingScheduler;->mCurrentRunning:I

    .line 35
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 37
    iget-object v0, p0, Lcom/taobao/rxm/schedule/BranchThrottlingScheduler;->mHostScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    invoke-interface {v0, p1}, Lcom/taobao/rxm/schedule/Scheduler;->schedule(Lcom/taobao/rxm/schedule/ScheduledAction;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 35
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setMaxRunningCount(I)V
    .locals 0

    .line 47
    monitor-enter p0

    .line 48
    :try_start_0
    iput p1, p0, Lcom/taobao/rxm/schedule/BranchThrottlingScheduler;->mMaxRunningCount:I

    .line 49
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-direct {p0}, Lcom/taobao/rxm/schedule/BranchThrottlingScheduler;->checkRunningCount()V

    return-void

    :catchall_0
    move-exception p1

    .line 49
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
