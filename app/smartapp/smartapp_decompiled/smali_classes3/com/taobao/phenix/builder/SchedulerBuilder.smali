.class public Lcom/taobao/phenix/builder/SchedulerBuilder;
.super Ljava/lang/Object;
.source "SchedulerBuilder.java"

# interfaces
.implements Lcom/taobao/phenix/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/phenix/builder/Builder<",
        "Lcom/taobao/rxm/schedule/SchedulerSupplier;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CORE_SIZE:I = 0x3

.field public static final DEFAULT_KEEP_ALIVE:I = 0x8

.field public static final DEFAULT_MAX_RUNNING:I = 0x6

.field public static final DEFAULT_PATIENCE_CAPACITY:I = 0x5dc

.field public static final DEFAULT_QUEUE_CAPACITY:I = 0x5

.field public static final INVALID_NETWORK_RUNNING_EXPIRED:I = -0x1

.field public static final MAX_DECODE_RUNNING:I = 0x3

.field public static final MAX_NETWORK_RUNNING_AT_FAST:I = 0x5

.field public static final MAX_NETWORK_RUNNING_AT_SLOW:I = 0x2

.field public static final MIN_PATIENCE_CAPACITY:I = 0x1f4

.field public static final VALID_NETWORK_RUNNING_EXPIRED:I = 0x61a8


# instance fields
.field private mCentralScheduler:Lcom/taobao/rxm/schedule/Scheduler;

.field private mCoreSize:I

.field private mHaveBuilt:Z

.field private mKeepAliveSeconds:I

.field private mMaxDecodeRunning:I

.field private mMaxNetworkRunningAtFast:I

.field private mMaxNetworkRunningAtSlow:I

.field private mMaxRunning:I

.field private mNetworkRunningExpired:I

.field private mPatienceSize:I

.field private mQueueSize:I

.field private mSchedulerSupplier:Lcom/taobao/rxm/schedule/SchedulerSupplier;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 25
    iput v0, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mMaxDecodeRunning:I

    const/4 v1, 0x5

    .line 26
    iput v1, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mMaxNetworkRunningAtFast:I

    const/4 v2, 0x2

    .line 27
    iput v2, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mMaxNetworkRunningAtSlow:I

    const/4 v2, -0x1

    .line 28
    iput v2, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mNetworkRunningExpired:I

    .line 29
    iput v0, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mCoreSize:I

    const/4 v0, 0x6

    .line 30
    iput v0, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mMaxRunning:I

    const/16 v0, 0x8

    .line 31
    iput v0, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mKeepAliveSeconds:I

    .line 32
    iput v1, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mQueueSize:I

    const/16 v0, 0x5dc

    .line 33
    iput v0, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mPatienceSize:I

    return-void
.end method


# virtual methods
.method public declared-synchronized build()Lcom/taobao/rxm/schedule/SchedulerSupplier;
    .locals 12

    monitor-enter p0

    .line 117
    :try_start_0
    iget-boolean v0, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mHaveBuilt:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mSchedulerSupplier:Lcom/taobao/rxm/schedule/SchedulerSupplier;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    new-instance v0, Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;

    iget-object v2, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mCentralScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    iget v3, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mCoreSize:I

    iget v4, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mMaxRunning:I

    iget v5, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mKeepAliveSeconds:I

    iget v6, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mQueueSize:I

    iget v7, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mPatienceSize:I

    iget v8, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mMaxDecodeRunning:I

    iget v9, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mMaxNetworkRunningAtFast:I

    iget v10, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mMaxNetworkRunningAtSlow:I

    iget v11, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mNetworkRunningExpired:I

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;-><init>(Lcom/taobao/rxm/schedule/Scheduler;IIIIIIIII)V

    iput-object v0, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mSchedulerSupplier:Lcom/taobao/rxm/schedule/SchedulerSupplier;

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mHaveBuilt:Z

    .line 123
    iget-object v0, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mSchedulerSupplier:Lcom/taobao/rxm/schedule/SchedulerSupplier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 118
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mSchedulerSupplier:Lcom/taobao/rxm/schedule/SchedulerSupplier;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/taobao/phenix/builder/SchedulerBuilder;->build()Lcom/taobao/rxm/schedule/SchedulerSupplier;

    move-result-object v0

    return-object v0
.end method

.method public central(Lcom/taobao/rxm/schedule/Scheduler;)Lcom/taobao/phenix/builder/SchedulerBuilder;
    .locals 2

    .line 44
    iget-boolean v0, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mHaveBuilt:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "SchedulerSupplier has been built, not allow central() now"

    invoke-static {v0, v1}, Lcom/taobao/tcommon/core/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 45
    iput-object p1, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mCentralScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    return-object p0
.end method

.method public coreSize(I)Lcom/taobao/phenix/builder/SchedulerBuilder;
    .locals 3

    .line 50
    iget-boolean v0, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mHaveBuilt:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "SchedulerSupplier has been built, not allow coreSize() now"

    invoke-static {v0, v2}, Lcom/taobao/tcommon/core/Preconditions;->checkState(ZLjava/lang/Object;)V

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "core size must be greater than zero"

    .line 51
    invoke-static {v1, v0}, Lcom/taobao/tcommon/core/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 52
    iput p1, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mCoreSize:I

    return-object p0
.end method

.method public keepAlive(I)Lcom/taobao/phenix/builder/SchedulerBuilder;
    .locals 3

    .line 68
    iget-boolean v0, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mHaveBuilt:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "SchedulerSupplier has been built, not allow keepAlive() now"

    invoke-static {v0, v2}, Lcom/taobao/tcommon/core/Preconditions;->checkState(ZLjava/lang/Object;)V

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "keep alive time must be greater than zero"

    .line 69
    invoke-static {v1, v0}, Lcom/taobao/tcommon/core/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 70
    iput p1, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mKeepAliveSeconds:I

    return-object p0
.end method

.method public maxDecodeRunning(I)Lcom/taobao/phenix/builder/SchedulerBuilder;
    .locals 3

    .line 89
    iget-boolean v0, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mHaveBuilt:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "SchedulerSupplier has been built, not allow maxDecodeRunning() now"

    invoke-static {v0, v2}, Lcom/taobao/tcommon/core/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 90
    iget v0, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mMaxRunning:I

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "max decode running cannot be greater than max running"

    invoke-static {v1, v0}, Lcom/taobao/tcommon/core/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 91
    iput p1, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mMaxDecodeRunning:I

    return-object p0
.end method

.method public maxNetworkRunningAtFast(I)Lcom/taobao/phenix/builder/SchedulerBuilder;
    .locals 3

    .line 96
    iget-boolean v0, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mHaveBuilt:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "SchedulerSupplier has been built, not allow maxNetworkRunningAtFast() now"

    invoke-static {v0, v2}, Lcom/taobao/tcommon/core/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 97
    iget v0, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mMaxRunning:I

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "max network running at fast cannot be greater than max running"

    invoke-static {v1, v0}, Lcom/taobao/tcommon/core/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 98
    iput p1, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mMaxNetworkRunningAtFast:I

    return-object p0
.end method

.method public maxNetworkRunningAtSlow(I)Lcom/taobao/phenix/builder/SchedulerBuilder;
    .locals 3

    .line 103
    iget-boolean v0, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mHaveBuilt:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "SchedulerSupplier has been built, not allow maxNetworkRunningAtSlow() now"

    invoke-static {v0, v2}, Lcom/taobao/tcommon/core/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 104
    iget v0, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mMaxRunning:I

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "max network running at slow cannot be greater than max running"

    invoke-static {v1, v0}, Lcom/taobao/tcommon/core/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 105
    iput p1, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mMaxNetworkRunningAtSlow:I

    return-object p0
.end method

.method public maxRunning(I)Lcom/taobao/phenix/builder/SchedulerBuilder;
    .locals 3

    .line 57
    iget-boolean v0, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mHaveBuilt:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "SchedulerSupplier has been built, not allow maxRunning() now"

    invoke-static {v0, v2}, Lcom/taobao/tcommon/core/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mCentralScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 59
    iget v0, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mCoreSize:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "max running cannot be lower than core size"

    invoke-static {v1, v0}, Lcom/taobao/tcommon/core/Preconditions;->checkState(ZLjava/lang/Object;)V

    goto :goto_2

    :cond_1
    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const-string v0, "max running must be greater than zero"

    .line 61
    invoke-static {v1, v0}, Lcom/taobao/tcommon/core/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 63
    :goto_2
    iput p1, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mMaxRunning:I

    return-object p0
.end method

.method public networkRunningExpired(I)Lcom/taobao/phenix/builder/SchedulerBuilder;
    .locals 2

    .line 110
    iget-boolean v0, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mHaveBuilt:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "SchedulerSupplier has been built, not allow networkRunningExpired() now"

    invoke-static {v0, v1}, Lcom/taobao/tcommon/core/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 111
    iput p1, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mNetworkRunningExpired:I

    return-object p0
.end method

.method public patienceSize(I)Lcom/taobao/phenix/builder/SchedulerBuilder;
    .locals 3

    .line 82
    iget-boolean v0, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mHaveBuilt:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "SchedulerSupplier has been built, not allow patienceSize() now"

    invoke-static {v0, v2}, Lcom/taobao/tcommon/core/Preconditions;->checkState(ZLjava/lang/Object;)V

    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "patience size cannot be lower than 500"

    .line 83
    invoke-static {v1, v0}, Lcom/taobao/tcommon/core/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 84
    iput p1, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mPatienceSize:I

    return-object p0
.end method

.method public queueSize(I)Lcom/taobao/phenix/builder/SchedulerBuilder;
    .locals 3

    .line 75
    iget-boolean v0, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mHaveBuilt:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "SchedulerSupplier has been built, not allow queueSize() now"

    invoke-static {v0, v2}, Lcom/taobao/tcommon/core/Preconditions;->checkState(ZLjava/lang/Object;)V

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "queue size must be greater than zero"

    .line 76
    invoke-static {v1, v0}, Lcom/taobao/tcommon/core/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 77
    iput p1, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mQueueSize:I

    return-object p0
.end method

.method public bridge synthetic with(Ljava/lang/Object;)Lcom/taobao/phenix/builder/Builder;
    .locals 0

    .line 8
    check-cast p1, Lcom/taobao/rxm/schedule/SchedulerSupplier;

    invoke-virtual {p0, p1}, Lcom/taobao/phenix/builder/SchedulerBuilder;->with(Lcom/taobao/rxm/schedule/SchedulerSupplier;)Lcom/taobao/phenix/builder/SchedulerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public with(Lcom/taobao/rxm/schedule/SchedulerSupplier;)Lcom/taobao/phenix/builder/SchedulerBuilder;
    .locals 2

    .line 38
    iget-boolean v0, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mHaveBuilt:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "SchedulerSupplier has been built, not allow with() now"

    invoke-static {v0, v1}, Lcom/taobao/tcommon/core/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 39
    iput-object p1, p0, Lcom/taobao/phenix/builder/SchedulerBuilder;->mSchedulerSupplier:Lcom/taobao/rxm/schedule/SchedulerSupplier;

    return-object p0
.end method
