.class public Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;
.super Ljava/lang/Object;
.source "PairingThrottlingScheduler.java"

# interfaces
.implements Lcom/taobao/rxm/schedule/ThrottlingScheduler;
.implements Lcom/taobao/rxm/schedule/ScheduledActionListener;
.implements Lcom/taobao/rxm/request/RequestCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/rxm/schedule/PairingThrottlingScheduler$DegradationListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/rxm/schedule/ThrottlingScheduler;",
        "Lcom/taobao/rxm/schedule/ScheduledActionListener;",
        "Lcom/taobao/rxm/request/RequestCancelListener<",
        "Lcom/taobao/rxm/request/RequestContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final AUTO_DEGRADE_EXPIRED_COUNT:I = 0x3


# instance fields
.field private mCurrentRunning:I

.field private mDegradationListener:Lcom/taobao/rxm/schedule/PairingThrottlingScheduler$DegradationListener;

.field private final mExpiredNanos:J

.field private mExpiredTotal:I

.field private final mHostScheduler:Lcom/taobao/rxm/schedule/Scheduler;

.field private mLastClearTime:J

.field private mMaxRunningCount:I

.field private final mProduceTimeMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempExpiredList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mWaitProduceActions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/taobao/rxm/schedule/ScheduledAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/rxm/schedule/Scheduler;II)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mHostScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    .line 38
    iput p2, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mMaxRunningCount:I

    .line 39
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mWaitProduceActions:Ljava/util/Queue;

    .line 40
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mProduceTimeMap:Landroid/util/SparseArray;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mTempExpiredList:Ljava/util/List;

    int-to-long p1, p3

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    .line 42
    iput-wide p1, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mExpiredNanos:J

    return-void
.end method

.method private checkRunningCount()V
    .locals 4

    .line 214
    sget-object v0, Lcom/taobao/rxm/schedule/ScheduledAction;->sActionCallerThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/rxm/schedule/ScheduledAction;

    :goto_0
    const/4 v1, 0x0

    .line 217
    monitor-enter p0

    .line 218
    :try_start_0
    invoke-direct {p0}, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->clearExpiredPairs()V

    .line 219
    iget v2, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mCurrentRunning:I

    iget v3, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mMaxRunningCount:I

    if-ge v2, v3, :cond_0

    .line 220
    iget-object v1, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mWaitProduceActions:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/rxm/schedule/ScheduledAction;

    :cond_0
    if-eqz v1, :cond_1

    .line 223
    invoke-direct {p0, v1}, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->countBeforeScheduling(Lcom/taobao/rxm/schedule/ScheduledAction;)V

    .line 225
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    return-void

    .line 230
    :cond_2
    invoke-virtual {v1, p0}, Lcom/taobao/rxm/schedule/ScheduledAction;->unregisterCancelListener(Lcom/taobao/rxm/request/RequestCancelListener;)V

    .line 233
    iget-object v2, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mHostScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    invoke-interface {v2, v1}, Lcom/taobao/rxm/schedule/Scheduler;->schedule(Lcom/taobao/rxm/schedule/ScheduledAction;)V

    .line 235
    sget-object v1, Lcom/taobao/rxm/schedule/ScheduledAction;->sActionCallerThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 225
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

.method private declared-synchronized clearExpiredPairs()V
    .locals 10

    monitor-enter p0

    .line 112
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 113
    iget-wide v2, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mLastClearTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1c9c380

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 114
    monitor-exit p0

    return-void

    .line 116
    :cond_0
    :try_start_1
    iput-wide v0, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mLastClearTime:J

    .line 118
    iget-object v0, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mTempExpiredList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 119
    iget-object v0, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mProduceTimeMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 121
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 124
    iget-object v5, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mProduceTimeMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_1

    .line 125
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v1, v5

    iget-wide v7, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mExpiredNanos:J

    cmp-long v9, v5, v7

    if-ltz v9, :cond_1

    .line 126
    iget-object v5, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mTempExpiredList:Ljava/util/List;

    iget-object v6, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mProduceTimeMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mTempExpiredList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    const/4 v4, 0x1

    if-ge v1, v0, :cond_5

    .line 134
    iget-object v5, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mTempExpiredList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "RxSysLog"

    const-string v7, "[PairingThrottling] remove expired pair, id=%d"

    .line 135
    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v6, v7, v8}, Lcom/taobao/tcommon/log/FLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-direct {p0, v5}, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->updateRunningStatus(I)Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v2, 0x1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 140
    :cond_5
    iget v1, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mExpiredTotal:I

    const/4 v5, 0x3

    if-ge v1, v5, :cond_6

    .line 141
    iget v1, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mExpiredTotal:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mExpiredTotal:I

    .line 142
    iget v0, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mExpiredTotal:I

    if-lt v0, v5, :cond_6

    const v0, 0x7fffffff

    .line 143
    iput v0, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mMaxRunningCount:I

    const-string v0, "RxSysLog"

    const-string v1, "[PairingThrottling] auto degrade to unlimited scheduler, expired total=%d"

    .line 144
    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mExpiredTotal:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v0, v1, v4}, Lcom/taobao/tcommon/log/FLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mDegradationListener:Lcom/taobao/rxm/schedule/PairingThrottlingScheduler$DegradationListener;

    if-eqz v0, :cond_6

    .line 146
    iget-object v0, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mDegradationListener:Lcom/taobao/rxm/schedule/PairingThrottlingScheduler$DegradationListener;

    invoke-interface {v0}, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler$DegradationListener;->onDegrade2Unlimited()V

    :cond_6
    if-eqz v2, :cond_7

    .line 152
    invoke-direct {p0}, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->checkRunningCount()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private declared-synchronized countBeforeScheduling(Lcom/taobao/rxm/schedule/ScheduledAction;)V
    .locals 3

    monitor-enter p0

    .line 175
    :try_start_0
    invoke-virtual {p1}, Lcom/taobao/rxm/schedule/ScheduledAction;->getContextId()I

    move-result v0

    if-gtz v0, :cond_0

    .line 178
    iget p1, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mCurrentRunning:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mCurrentRunning:I

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/rxm/schedule/ScheduledAction;->isProduceAction()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mProduceTimeMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 180
    iget-object p1, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mProduceTimeMap:Landroid/util/SparseArray;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    iget p1, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mCurrentRunning:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mCurrentRunning:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private isValidConsumeAction(Lcom/taobao/rxm/schedule/ScheduledAction;)Z
    .locals 1

    .line 107
    invoke-virtual {p1}, Lcom/taobao/rxm/schedule/ScheduledAction;->getContextId()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/taobao/rxm/schedule/ScheduledAction;->isProduceAction()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/taobao/rxm/schedule/ScheduledAction;->isConsumeAction()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private updateRunningStatus(I)Z
    .locals 2

    .line 198
    monitor-enter p0

    const/4 v0, 0x1

    if-gtz p1, :cond_0

    .line 200
    :try_start_0
    iget p1, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mCurrentRunning:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mCurrentRunning:I

    .line 201
    monitor-exit p0

    return v0

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mProduceTimeMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mProduceTimeMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 206
    iget p1, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mCurrentRunning:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mCurrentRunning:I

    .line 207
    monitor-exit p0

    return v0

    .line 209
    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public completePairActions(I)V
    .locals 0

    .line 191
    invoke-direct {p0, p1}, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->updateRunningStatus(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->checkRunningCount()V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public declared-synchronized getQueueSize()I
    .locals 1

    monitor-enter p0

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mWaitProduceActions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

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

.method public declared-synchronized getStatus()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mHostScheduler:Lcom/taobao/rxm/schedule/Scheduler;

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

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mHostScheduler:Lcom/taobao/rxm/schedule/Scheduler;

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
    .locals 1

    .line 256
    invoke-virtual {p1}, Lcom/taobao/rxm/schedule/ScheduledAction;->getContextId()I

    move-result v0

    if-lez v0, :cond_0

    .line 257
    invoke-virtual {p1}, Lcom/taobao/rxm/schedule/ScheduledAction;->isConsumeAction()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 259
    :cond_0
    invoke-direct {p0, v0}, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->updateRunningStatus(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 260
    invoke-direct {p0}, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->checkRunningCount()V

    :cond_1
    return-void
.end method

.method public onCancel(Lcom/taobao/rxm/request/RequestContext;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 49
    invoke-virtual {p1}, Lcom/taobao/rxm/request/RequestContext;->getId()I

    move-result p1

    const/4 v0, 0x0

    .line 52
    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mWaitProduceActions:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/rxm/schedule/ScheduledAction;

    .line 55
    invoke-virtual {v2}, Lcom/taobao/rxm/schedule/ScheduledAction;->getContextId()I

    move-result v3

    if-ne p1, v3, :cond_0

    move-object v0, v2

    :cond_1
    if-eqz v0, :cond_2

    .line 62
    iget-object v1, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mWaitProduceActions:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 64
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 67
    invoke-virtual {v0}, Lcom/taobao/rxm/schedule/ScheduledAction;->cancelActing()V

    .line 68
    invoke-virtual {v0, p0}, Lcom/taobao/rxm/schedule/ScheduledAction;->unregisterCancelListener(Lcom/taobao/rxm/request/RequestCancelListener;)V

    const/4 v0, 0x1

    .line 69
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "RxSysLog"

    const-string v1, "[PairingThrottling] ID=%d cancelled before scheduling the action in queue"

    invoke-static {p1, v1, v0}, Lcom/taobao/tcommon/log/FLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 64
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public schedule(Lcom/taobao/rxm/schedule/ScheduledAction;)V
    .locals 2

    .line 76
    invoke-virtual {p1, p0}, Lcom/taobao/rxm/schedule/ScheduledAction;->setBranchActionListener(Lcom/taobao/rxm/schedule/ScheduledActionListener;)V

    .line 78
    invoke-direct {p0, p1}, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->isValidConsumeAction(Lcom/taobao/rxm/schedule/ScheduledAction;)Z

    move-result v0

    .line 79
    monitor-enter p0

    .line 80
    :try_start_0
    invoke-virtual {p1}, Lcom/taobao/rxm/schedule/ScheduledAction;->isProduceAction()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->clearExpiredPairs()V

    :cond_0
    if-nez v0, :cond_2

    .line 90
    iget v0, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mCurrentRunning:I

    iget v1, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mMaxRunningCount:I

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mWaitProduceActions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 92
    invoke-direct {p0, p1}, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->countBeforeScheduling(Lcom/taobao/rxm/schedule/ScheduledAction;)V

    goto :goto_2

    .line 94
    :cond_3
    invoke-virtual {p1, p0}, Lcom/taobao/rxm/schedule/ScheduledAction;->registerCancelListener(Lcom/taobao/rxm/request/RequestCancelListener;)V

    .line 96
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 101
    iget-object v0, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mHostScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    invoke-interface {v0, p1}, Lcom/taobao/rxm/schedule/Scheduler;->schedule(Lcom/taobao/rxm/schedule/ScheduledAction;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 96
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setDegradationListener(Lcom/taobao/rxm/schedule/PairingThrottlingScheduler$DegradationListener;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mDegradationListener:Lcom/taobao/rxm/schedule/PairingThrottlingScheduler$DegradationListener;

    return-void
.end method

.method public declared-synchronized setMaxRunningCount(I)V
    .locals 2

    monitor-enter p0

    .line 163
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 164
    :try_start_1
    iget v0, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mExpiredTotal:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mMaxRunningCount:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 166
    iput p1, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->mMaxRunningCount:I

    .line 168
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 170
    :try_start_2
    invoke-direct {p0}, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->checkRunningCount()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 172
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 168
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
