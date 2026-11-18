.class public abstract Lcom/taobao/rxm/schedule/ScheduledAction;
.super Ljava/lang/Object;
.source "ScheduledAction.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lcom/taobao/rxm/schedule/ScheduledAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_REJECT_STACK_DEPTH:I = 0xa

.field private static final STATE_READY:I = 0x1

.field private static final STATE_RECYCLING:I = 0x3

.field private static final STATE_RUNNING:I = 0x2

.field static sActionCallerThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/taobao/rxm/schedule/ScheduledAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActionPool:Lcom/taobao/rxm/schedule/ScheduledActionPool;

.field private mAllowedDirectRun:Z

.field private mBranchActionListener:Lcom/taobao/rxm/schedule/ScheduledActionListener;

.field private mConsumer:Lcom/taobao/rxm/consume/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/rxm/consume/Consumer<",
            "*+",
            "Lcom/taobao/rxm/request/RequestContext;",
            ">;"
        }
    .end annotation
.end field

.field private mIsNotConsumeAction:Z

.field private mMasterActionListener:Lcom/taobao/rxm/schedule/ScheduledActionListener;

.field private mPriority:I

.field private mRejectedStackDepth:Ljava/lang/Integer;

.field private mResultWrapper:Lcom/taobao/rxm/schedule/ScheduleResultWrapper;

.field private mRunningThreadId:J

.field private mState:I

.field private mTimeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/taobao/rxm/schedule/ScheduledAction;->sActionCallerThreadLocal:Ljava/lang/ThreadLocal;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(ILcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/taobao/rxm/consume/Consumer<",
            "*+",
            "Lcom/taobao/rxm/request/RequestContext;",
            ">;",
            "Lcom/taobao/rxm/schedule/ScheduleResultWrapper;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mPriority:I

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/rxm/schedule/ScheduledAction;->reset(ILcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;)Lcom/taobao/rxm/schedule/ScheduledAction;

    return-void
.end method

.method public constructor <init>(ILcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/taobao/rxm/consume/Consumer<",
            "*+",
            "Lcom/taobao/rxm/request/RequestContext;",
            ">;",
            "Lcom/taobao/rxm/schedule/ScheduleResultWrapper;",
            "Z)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mPriority:I

    .line 38
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/taobao/rxm/schedule/ScheduledAction;->reset(ILcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;Z)Lcom/taobao/rxm/schedule/ScheduledAction;

    return-void
.end method

.method private declared-synchronized getRequest()Lcom/taobao/rxm/request/RequestContext;
    .locals 1

    monitor-enter p0

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mConsumer:Lcom/taobao/rxm/consume/Consumer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mConsumer:Lcom/taobao/rxm/consume/Consumer;

    invoke-interface {v0}, Lcom/taobao/rxm/consume/Consumer;->getContext()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mConsumer:Lcom/taobao/rxm/consume/Consumer;

    invoke-interface {v0}, Lcom/taobao/rxm/consume/Consumer;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/rxm/request/RequestContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 196
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public canRunDirectly()Z
    .locals 1

    .line 85
    invoke-static {}, Lcom/taobao/tcommon/core/RuntimeUtil;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/rxm/schedule/ScheduledAction;->mayStackOverflowAfterRejected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mAllowedDirectRun:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method declared-synchronized cancelActing()V
    .locals 1

    monitor-enter p0

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mResultWrapper:Lcom/taobao/rxm/schedule/ScheduleResultWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mResultWrapper:Lcom/taobao/rxm/schedule/ScheduleResultWrapper;

    iget-object v0, v0, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;->newResult:Ljava/lang/Object;

    instance-of v0, v0, Lcom/taobao/rxm/common/Releasable;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mResultWrapper:Lcom/taobao/rxm/schedule/ScheduleResultWrapper;

    iget-object v0, v0, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;->newResult:Ljava/lang/Object;

    check-cast v0, Lcom/taobao/rxm/common/Releasable;

    invoke-interface {v0}, Lcom/taobao/rxm/common/Releasable;->release()V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mConsumer:Lcom/taobao/rxm/consume/Consumer;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mConsumer:Lcom/taobao/rxm/consume/Consumer;

    invoke-interface {v0}, Lcom/taobao/rxm/consume/Consumer;->onCancellation()V

    .line 227
    iget-object v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mActionPool:Lcom/taobao/rxm/schedule/ScheduledActionPool;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mActionPool:Lcom/taobao/rxm/schedule/ScheduledActionPool;

    invoke-virtual {v0, p0}, Lcom/taobao/rxm/schedule/ScheduledActionPool;->recycle(Lcom/taobao/rxm/schedule/ScheduledAction;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public compareTo(Lcom/taobao/rxm/schedule/ScheduledAction;)I
    .locals 4
    .param p1    # Lcom/taobao/rxm/schedule/ScheduledAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 111
    invoke-virtual {p1}, Lcom/taobao/rxm/schedule/ScheduledAction;->getPriority()I

    move-result v0

    .line 112
    invoke-virtual {p0}, Lcom/taobao/rxm/schedule/ScheduledAction;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 114
    iget-wide v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mTimeStamp:J

    invoke-virtual {p1}, Lcom/taobao/rxm/schedule/ScheduledAction;->getTimeStamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 12
    check-cast p1, Lcom/taobao/rxm/schedule/ScheduledAction;

    invoke-virtual {p0, p1}, Lcom/taobao/rxm/schedule/ScheduledAction;->compareTo(Lcom/taobao/rxm/schedule/ScheduledAction;)I

    move-result p1

    return p1
.end method

.method public getContextId()I
    .locals 1

    .line 201
    invoke-direct {p0}, Lcom/taobao/rxm/schedule/ScheduledAction;->getRequest()Lcom/taobao/rxm/request/RequestContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Lcom/taobao/rxm/request/RequestContext;->getId()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getPriority()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mPriority:I

    return v0
.end method

.method public getRejectedStackDepth()Ljava/lang/Integer;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mRejectedStackDepth:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRunningThreadId()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mRunningThreadId:J

    return-wide v0
.end method

.method public getState()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mState:I

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mTimeStamp:J

    return-wide v0
.end method

.method public isConsumeAction()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mIsNotConsumeAction:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mResultWrapper:Lcom/taobao/rxm/schedule/ScheduleResultWrapper;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isProduceAction()Z
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mResultWrapper:Lcom/taobao/rxm/schedule/ScheduleResultWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mayStackOverflowAfterRejected()Z
    .locals 7

    .line 89
    iget-object v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mRejectedStackDepth:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 91
    invoke-static {}, Lcom/taobao/tcommon/core/RuntimeUtil;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/taobao/rxm/schedule/ScheduledAction;->sActionCallerThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/rxm/schedule/ScheduledAction;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Lcom/taobao/rxm/schedule/ScheduledAction;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/taobao/rxm/schedule/ScheduledAction;->getRunningThreadId()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/taobao/rxm/schedule/ScheduledAction;->getRejectedStackDepth()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mRejectedStackDepth:Ljava/lang/Integer;

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mRejectedStackDepth:Ljava/lang/Integer;

    .line 98
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mRejectedStackDepth:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public notConsumeAction(Z)V
    .locals 0

    .line 189
    iput-boolean p1, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mIsNotConsumeAction:Z

    return-void
.end method

.method public registerCancelListener(Lcom/taobao/rxm/request/RequestCancelListener;)V
    .locals 1

    .line 209
    invoke-direct {p0}, Lcom/taobao/rxm/schedule/ScheduledAction;->getRequest()Lcom/taobao/rxm/request/RequestContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0, p1}, Lcom/taobao/rxm/request/RequestContext;->registerCancelListener(Lcom/taobao/rxm/request/RequestCancelListener;)Z

    :cond_0
    return-void
.end method

.method public reset()Lcom/taobao/rxm/schedule/ScheduledAction;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 42
    invoke-virtual {p0, v1, v0, v0}, Lcom/taobao/rxm/schedule/ScheduledAction;->reset(ILcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;)Lcom/taobao/rxm/schedule/ScheduledAction;

    return-object p0
.end method

.method public reset(ILcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;)Lcom/taobao/rxm/schedule/ScheduledAction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/taobao/rxm/consume/Consumer<",
            "*+",
            "Lcom/taobao/rxm/request/RequestContext;",
            ">;",
            "Lcom/taobao/rxm/schedule/ScheduleResultWrapper;",
            ")",
            "Lcom/taobao/rxm/schedule/ScheduledAction;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/rxm/schedule/ScheduledAction;->reset(ILcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;Z)Lcom/taobao/rxm/schedule/ScheduledAction;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized reset(ILcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;Z)Lcom/taobao/rxm/schedule/ScheduledAction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/taobao/rxm/consume/Consumer<",
            "*+",
            "Lcom/taobao/rxm/request/RequestContext;",
            ">;",
            "Lcom/taobao/rxm/schedule/ScheduleResultWrapper;",
            "Z)",
            "Lcom/taobao/rxm/schedule/ScheduledAction;"
        }
    .end annotation

    monitor-enter p0

    .line 52
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mTimeStamp:J

    .line 53
    iput p1, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mPriority:I

    .line 54
    iput-object p2, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mConsumer:Lcom/taobao/rxm/consume/Consumer;

    .line 55
    iput-object p3, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mResultWrapper:Lcom/taobao/rxm/schedule/ScheduleResultWrapper;

    .line 56
    iput-boolean p4, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mAllowedDirectRun:Z

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mRejectedStackDepth:Ljava/lang/Integer;

    const/4 p2, 0x1

    .line 58
    iput p2, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mState:I

    const-wide/16 p2, 0x0

    .line 59
    iput-wide p2, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mRunningThreadId:J

    .line 60
    iput-object p1, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mMasterActionListener:Lcom/taobao/rxm/schedule/ScheduledActionListener;

    .line 61
    iput-object p1, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mBranchActionListener:Lcom/taobao/rxm/schedule/ScheduledActionListener;

    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mIsNotConsumeAction:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run()V
    .locals 7

    .line 131
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mRunningThreadId:J

    .line 132
    invoke-static {}, Lcom/taobao/tcommon/core/RuntimeUtil;->isMainThread()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    const/16 v0, 0xa

    .line 133
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 135
    sget-object v0, Lcom/taobao/rxm/schedule/ScheduledAction;->sActionCallerThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/rxm/schedule/ScheduledAction;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/taobao/rxm/schedule/ScheduledAction;->getState()I

    move-result v3

    if-ne v3, v1, :cond_1

    invoke-virtual {v0}, Lcom/taobao/rxm/schedule/ScheduledAction;->getRunningThreadId()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mRejectedStackDepth:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mRejectedStackDepth:Ljava/lang/Integer;

    goto :goto_0

    .line 138
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mRejectedStackDepth:Ljava/lang/Integer;

    .line 140
    :goto_0
    sget-object v0, Lcom/taobao/rxm/schedule/ScheduledAction;->sActionCallerThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 144
    :cond_2
    iput v1, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mState:I

    .line 145
    iget-object v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mConsumer:Lcom/taobao/rxm/consume/Consumer;

    iget-object v1, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mResultWrapper:Lcom/taobao/rxm/schedule/ScheduleResultWrapper;

    invoke-virtual {p0, v0, v1}, Lcom/taobao/rxm/schedule/ScheduledAction;->run(Lcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;)V

    .line 147
    invoke-static {}, Lcom/taobao/tcommon/core/RuntimeUtil;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_3

    .line 148
    sget-object v0, Lcom/taobao/rxm/schedule/ScheduledAction;->sActionCallerThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mMasterActionListener:Lcom/taobao/rxm/schedule/ScheduledActionListener;

    if-eqz v0, :cond_4

    .line 151
    invoke-interface {v0, p0}, Lcom/taobao/rxm/schedule/ScheduledActionListener;->onActionFinished(Lcom/taobao/rxm/schedule/ScheduledAction;)V

    .line 153
    :cond_4
    iget-object v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mBranchActionListener:Lcom/taobao/rxm/schedule/ScheduledActionListener;

    if-eqz v0, :cond_5

    .line 154
    invoke-interface {v0, p0}, Lcom/taobao/rxm/schedule/ScheduledActionListener;->onActionFinished(Lcom/taobao/rxm/schedule/ScheduledAction;)V

    :cond_5
    const/4 v0, 0x3

    .line 156
    iput v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mState:I

    .line 157
    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mActionPool:Lcom/taobao/rxm/schedule/ScheduledActionPool;

    if-eqz v0, :cond_6

    .line 159
    iget-object v0, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mActionPool:Lcom/taobao/rxm/schedule/ScheduledActionPool;

    invoke-virtual {v0, p0}, Lcom/taobao/rxm/schedule/ScheduledActionPool;->recycle(Lcom/taobao/rxm/schedule/ScheduledAction;)Z

    .line 161
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract run(Lcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;)V
.end method

.method public setBranchActionListener(Lcom/taobao/rxm/schedule/ScheduledActionListener;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mBranchActionListener:Lcom/taobao/rxm/schedule/ScheduledActionListener;

    return-void
.end method

.method public setMasterActionListener(Lcom/taobao/rxm/schedule/ScheduledActionListener;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mMasterActionListener:Lcom/taobao/rxm/schedule/ScheduledActionListener;

    return-void
.end method

.method public declared-synchronized setScheduledActionPool(Lcom/taobao/rxm/schedule/ScheduledActionPool;)V
    .locals 0

    monitor-enter p0

    .line 126
    :try_start_0
    iput-object p1, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mActionPool:Lcom/taobao/rxm/schedule/ScheduledActionPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mConsumer:Lcom/taobao/rxm/consume/Consumer;

    if-nez v1, :cond_0

    const-string v1, "NullConsumer"

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/rxm/schedule/ScheduledAction;->mTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized unregisterCancelListener(Lcom/taobao/rxm/request/RequestCancelListener;)V
    .locals 1

    monitor-enter p0

    .line 216
    :try_start_0
    invoke-direct {p0}, Lcom/taobao/rxm/schedule/ScheduledAction;->getRequest()Lcom/taobao/rxm/request/RequestContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0, p1}, Lcom/taobao/rxm/request/RequestContext;->unregisterCancelListener(Lcom/taobao/rxm/request/RequestCancelListener;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
