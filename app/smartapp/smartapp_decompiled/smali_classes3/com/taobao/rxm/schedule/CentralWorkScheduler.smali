.class public Lcom/taobao/rxm/schedule/CentralWorkScheduler;
.super Ljava/lang/Object;
.source "CentralWorkScheduler.java"

# interfaces
.implements Lcom/taobao/rxm/schedule/Scheduler;
.implements Lcom/taobao/rxm/schedule/ExecutorStateInspector;


# instance fields
.field private final mCentralQueue:Lcom/taobao/rxm/schedule/CentralSchedulerQueue;

.field private final mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final mName:Ljava/lang/String;

.field private final mThreadNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 7

    const/16 v6, 0x5dc

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 30
    invoke-direct/range {v0 .. v6}, Lcom/taobao/rxm/schedule/CentralWorkScheduler;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 9

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/rxm/schedule/CentralWorkScheduler;->mThreadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    if-ltz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "corePoolSize must be >=0"

    .line 38
    invoke-static {v2, v3}, Lcom/taobao/tcommon/core/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-lt p3, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    const-string v1, "maxPoolSize shouldn\'t be less than corePoolSize"

    .line 39
    invoke-static {v0, v1}, Lcom/taobao/tcommon/core/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 40
    iput-object p1, p0, Lcom/taobao/rxm/schedule/CentralWorkScheduler;->mName:Ljava/lang/String;

    .line 41
    new-instance p1, Lcom/taobao/rxm/schedule/CentralSchedulerQueue;

    invoke-direct {p1, p0, p5, p6}, Lcom/taobao/rxm/schedule/CentralSchedulerQueue;-><init>(Lcom/taobao/rxm/schedule/ExecutorStateInspector;II)V

    iput-object p1, p0, Lcom/taobao/rxm/schedule/CentralWorkScheduler;->mCentralQueue:Lcom/taobao/rxm/schedule/CentralSchedulerQueue;

    .line 42
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    int-to-long v3, p4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/taobao/rxm/schedule/CentralWorkScheduler;->mCentralQueue:Lcom/taobao/rxm/schedule/CentralSchedulerQueue;

    new-instance v7, Lcom/taobao/rxm/schedule/CentralWorkScheduler$1;

    invoke-direct {v7, p0}, Lcom/taobao/rxm/schedule/CentralWorkScheduler$1;-><init>(Lcom/taobao/rxm/schedule/CentralWorkScheduler;)V

    new-instance v8, Lcom/taobao/rxm/schedule/CentralWorkScheduler$2;

    invoke-direct {v8, p0}, Lcom/taobao/rxm/schedule/CentralWorkScheduler$2;-><init>(Lcom/taobao/rxm/schedule/CentralWorkScheduler;)V

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object p1, p0, Lcom/taobao/rxm/schedule/CentralWorkScheduler;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/rxm/schedule/CentralWorkScheduler;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/taobao/rxm/schedule/CentralWorkScheduler;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/rxm/schedule/CentralWorkScheduler;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/taobao/rxm/schedule/CentralWorkScheduler;->mThreadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/taobao/rxm/schedule/CentralWorkScheduler;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPoolSize()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/taobao/rxm/schedule/CentralWorkScheduler;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v0

    return v0
.end method

.method public getQueueSize()I
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/taobao/rxm/schedule/CentralWorkScheduler;->mCentralQueue:Lcom/taobao/rxm/schedule/CentralSchedulerQueue;

    invoke-virtual {v0}, Lcom/taobao/rxm/schedule/CentralSchedulerQueue;->size()I

    move-result v0

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taobao/rxm/schedule/CentralWorkScheduler;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " status: queue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/rxm/schedule/CentralWorkScheduler;->mCentralQueue:Lcom/taobao/rxm/schedule/CentralSchedulerQueue;

    .line 90
    invoke-virtual {v1}, Lcom/taobao/rxm/schedule/CentralSchedulerQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/rxm/schedule/CentralWorkScheduler;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 91
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pool="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/rxm/schedule/CentralWorkScheduler;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 92
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " largest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/rxm/schedule/CentralWorkScheduler;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 93
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getLargestPoolSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNotFull()Z
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/taobao/rxm/schedule/CentralWorkScheduler;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v0

    iget-object v1, p0, Lcom/taobao/rxm/schedule/CentralWorkScheduler;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScheduleMainThread()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public schedule(Lcom/taobao/rxm/schedule/ScheduledAction;)V
    .locals 3

    const/4 v0, 0x3

    .line 82
    invoke-static {v0}, Lcom/taobao/tcommon/log/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/taobao/rxm/schedule/CentralWorkScheduler;->getStatus()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RxSysLog"

    invoke-static {v2, v0, v1}, Lcom/taobao/tcommon/log/FLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/taobao/rxm/schedule/CentralWorkScheduler;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
