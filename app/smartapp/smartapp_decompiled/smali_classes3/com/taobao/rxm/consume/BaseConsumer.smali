.class public abstract Lcom/taobao/rxm/consume/BaseConsumer;
.super Ljava/lang/Object;
.source "BaseConsumer.java"

# interfaces
.implements Lcom/taobao/rxm/consume/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OUT:",
        "Ljava/lang/Object;",
        "CONTEXT:",
        "Lcom/taobao/rxm/request/RequestContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/taobao/rxm/consume/Consumer<",
        "TOUT;TCONTEXT;>;"
    }
.end annotation


# instance fields
.field private final mActionPool:Lcom/taobao/rxm/schedule/ScheduledActionPool;

.field final mContext:Lcom/taobao/rxm/request/RequestContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCONTEXT;"
        }
    .end annotation
.end field

.field mIsFinished:Z

.field private mScheduler:Lcom/taobao/rxm/schedule/Scheduler;


# direct methods
.method public constructor <init>(Lcom/taobao/rxm/request/RequestContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTEXT;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/taobao/tcommon/core/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iput-object p1, p0, Lcom/taobao/rxm/consume/BaseConsumer;->mContext:Lcom/taobao/rxm/request/RequestContext;

    .line 24
    new-instance p1, Lcom/taobao/rxm/schedule/ScheduledActionPool;

    invoke-direct {p1}, Lcom/taobao/rxm/schedule/ScheduledActionPool;-><init>()V

    iput-object p1, p0, Lcom/taobao/rxm/consume/BaseConsumer;->mActionPool:Lcom/taobao/rxm/schedule/ScheduledActionPool;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/rxm/consume/BaseConsumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/taobao/rxm/consume/BaseConsumer;->dispatchResultByType(Lcom/taobao/rxm/schedule/ScheduleResultWrapper;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private dispatchResultByType(Lcom/taobao/rxm/schedule/ScheduleResultWrapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/schedule/ScheduleResultWrapper<",
            "TOUT;>;)V"
        }
    .end annotation

    const/16 v0, 0x8

    .line 65
    :try_start_0
    iget v1, p1, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;->consumeType:I

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/taobao/rxm/consume/BaseConsumer;->mContext:Lcom/taobao/rxm/request/RequestContext;

    invoke-virtual {v0}, Lcom/taobao/rxm/request/RequestContext;->isCancelledInMultiplex()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    iget v0, p1, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;->consumeType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 77
    :cond_1
    iget-object p1, p1, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;->throwable:Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/taobao/rxm/consume/BaseConsumer;->onFailureImpl(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 74
    :cond_2
    iget p1, p1, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;->progress:F

    invoke-virtual {p0, p1}, Lcom/taobao/rxm/consume/BaseConsumer;->onProgressUpdateImpl(F)V

    goto :goto_1

    .line 71
    :cond_3
    iget-object v0, p1, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;->newResult:Ljava/lang/Object;

    iget-boolean p1, p1, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;->isLast:Z

    invoke-virtual {p0, v0, p1}, Lcom/taobao/rxm/consume/BaseConsumer;->onNewResultImpl(Ljava/lang/Object;Z)V

    goto :goto_1

    .line 66
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/rxm/consume/BaseConsumer;->onCancellationImpl()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/taobao/rxm/consume/BaseConsumer;->onUnhandledException(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method private scheduleConsumingResult(Lcom/taobao/rxm/schedule/ScheduleResultWrapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/schedule/ScheduleResultWrapper<",
            "TOUT;>;)V"
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/taobao/rxm/consume/BaseConsumer;->needScheduleAction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/taobao/rxm/consume/BaseConsumer;->mActionPool:Lcom/taobao/rxm/schedule/ScheduledActionPool;

    invoke-virtual {v0}, Lcom/taobao/rxm/schedule/ScheduledActionPool;->offer()Lcom/taobao/rxm/schedule/ScheduledAction;

    move-result-object v0

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/taobao/rxm/consume/BaseConsumer$1;

    invoke-virtual {p0}, Lcom/taobao/rxm/consume/BaseConsumer;->getContext()Lcom/taobao/rxm/request/RequestContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/rxm/request/RequestContext;->getSchedulePriority()I

    move-result v1

    invoke-direct {v0, p0, v1, p0, p1}, Lcom/taobao/rxm/consume/BaseConsumer$1;-><init>(Lcom/taobao/rxm/consume/BaseConsumer;ILcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;)V

    .line 51
    iget-object p1, p0, Lcom/taobao/rxm/consume/BaseConsumer;->mActionPool:Lcom/taobao/rxm/schedule/ScheduledActionPool;

    invoke-virtual {v0, p1}, Lcom/taobao/rxm/schedule/ScheduledAction;->setScheduledActionPool(Lcom/taobao/rxm/schedule/ScheduledActionPool;)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/rxm/consume/BaseConsumer;->getContext()Lcom/taobao/rxm/request/RequestContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/rxm/request/RequestContext;->getSchedulePriority()I

    move-result v1

    invoke-virtual {v0, v1, p0, p1}, Lcom/taobao/rxm/schedule/ScheduledAction;->reset(ILcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;)Lcom/taobao/rxm/schedule/ScheduledAction;

    .line 55
    :goto_0
    iget-object p1, p0, Lcom/taobao/rxm/consume/BaseConsumer;->mScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    invoke-interface {p1, v0}, Lcom/taobao/rxm/schedule/Scheduler;->schedule(Lcom/taobao/rxm/schedule/ScheduledAction;)V

    goto :goto_1

    .line 58
    :cond_1
    invoke-direct {p0, p1}, Lcom/taobao/rxm/consume/BaseConsumer;->dispatchResultByType(Lcom/taobao/rxm/schedule/ScheduleResultWrapper;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public consumeOn(Lcom/taobao/rxm/schedule/Scheduler;)Lcom/taobao/rxm/consume/Consumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/schedule/Scheduler;",
            ")",
            "Lcom/taobao/rxm/consume/Consumer<",
            "TOUT;TCONTEXT;>;"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/taobao/rxm/consume/BaseConsumer;->mScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    return-object p0
.end method

.method public getContext()Lcom/taobao/rxm/request/RequestContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCONTEXT;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/taobao/rxm/consume/BaseConsumer;->mContext:Lcom/taobao/rxm/request/RequestContext;

    return-object v0
.end method

.method public bridge synthetic getContext()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/taobao/rxm/consume/BaseConsumer;->getContext()Lcom/taobao/rxm/request/RequestContext;

    move-result-object v0

    return-object v0
.end method

.method protected getScheduler()Lcom/taobao/rxm/schedule/Scheduler;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/taobao/rxm/consume/BaseConsumer;->mScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    return-object v0
.end method

.method protected needScheduleAction()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/taobao/rxm/consume/BaseConsumer;->mScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/taobao/rxm/schedule/Scheduler;->isScheduleMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/taobao/tcommon/core/RuntimeUtil;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized onCancellation()V
    .locals 3

    monitor-enter p0

    .line 117
    :try_start_0
    iget-boolean v0, p0, Lcom/taobao/rxm/consume/BaseConsumer;->mIsFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 118
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 120
    :try_start_1
    iput-boolean v0, p0, Lcom/taobao/rxm/consume/BaseConsumer;->mIsFinished:Z

    .line 121
    new-instance v1, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;-><init>(IZ)V

    .line 122
    invoke-direct {p0, v1}, Lcom/taobao/rxm/consume/BaseConsumer;->scheduleConsumingResult(Lcom/taobao/rxm/schedule/ScheduleResultWrapper;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract onCancellationImpl()V
.end method

.method public declared-synchronized onFailure(Ljava/lang/Throwable;)V
    .locals 3

    monitor-enter p0

    .line 102
    :try_start_0
    iget-boolean v0, p0, Lcom/taobao/rxm/consume/BaseConsumer;->mIsFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 103
    monitor-exit p0

    return-void

    .line 105
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/taobao/rxm/consume/BaseConsumer;->mContext:Lcom/taobao/rxm/request/RequestContext;

    invoke-virtual {v0}, Lcom/taobao/rxm/request/RequestContext;->isCancelledInMultiplex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/taobao/rxm/consume/BaseConsumer;->onCancellation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 109
    :try_start_2
    iput-boolean v0, p0, Lcom/taobao/rxm/consume/BaseConsumer;->mIsFinished:Z

    .line 110
    new-instance v1, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v0}, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;-><init>(IZ)V

    .line 111
    iput-object p1, v1, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;->throwable:Ljava/lang/Throwable;

    .line 112
    invoke-direct {p0, v1}, Lcom/taobao/rxm/consume/BaseConsumer;->scheduleConsumingResult(Lcom/taobao/rxm/schedule/ScheduleResultWrapper;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract onFailureImpl(Ljava/lang/Throwable;)V
.end method

.method public declared-synchronized onNewResult(Ljava/lang/Object;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOUT;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 87
    :try_start_0
    iget-boolean v0, p0, Lcom/taobao/rxm/consume/BaseConsumer;->mIsFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 88
    monitor-exit p0

    return-void

    .line 90
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/taobao/rxm/consume/BaseConsumer;->mContext:Lcom/taobao/rxm/request/RequestContext;

    invoke-virtual {v0}, Lcom/taobao/rxm/request/RequestContext;->isCancelledInMultiplex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/taobao/rxm/consume/BaseConsumer;->onCancellation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 94
    :cond_1
    :try_start_2
    iput-boolean p2, p0, Lcom/taobao/rxm/consume/BaseConsumer;->mIsFinished:Z

    .line 95
    new-instance p2, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/taobao/rxm/consume/BaseConsumer;->mIsFinished:Z

    invoke-direct {p2, v0, v1}, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;-><init>(IZ)V

    .line 96
    iput-object p1, p2, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;->newResult:Ljava/lang/Object;

    .line 97
    invoke-direct {p0, p2}, Lcom/taobao/rxm/consume/BaseConsumer;->scheduleConsumingResult(Lcom/taobao/rxm/schedule/ScheduleResultWrapper;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract onNewResultImpl(Ljava/lang/Object;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOUT;Z)V"
        }
    .end annotation
.end method

.method public declared-synchronized onProgressUpdate(F)V
    .locals 3

    monitor-enter p0

    .line 132
    :try_start_0
    iget-boolean v0, p0, Lcom/taobao/rxm/consume/BaseConsumer;->mIsFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 133
    monitor-exit p0

    return-void

    .line 135
    :cond_0
    :try_start_1
    new-instance v0, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;-><init>(IZ)V

    .line 136
    iput p1, v0, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;->progress:F

    .line 137
    invoke-direct {p0, v0}, Lcom/taobao/rxm/consume/BaseConsumer;->scheduleConsumingResult(Lcom/taobao/rxm/schedule/ScheduleResultWrapper;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onProgressUpdateImpl(F)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onUnhandledException(Ljava/lang/Exception;)V
    .locals 2

    const/4 v0, 0x1

    .line 141
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "RxSysLog"

    const-string v1, "UnhandledException when BaseConsumer dispatch result: %s"

    invoke-static {p1, v1, v0}, Lcom/taobao/tcommon/log/FLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/tcommon/core/RuntimeUtil;->getClassShortName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[cxt-id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/rxm/consume/BaseConsumer;->getContext()Lcom/taobao/rxm/request/RequestContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/rxm/request/RequestContext;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
