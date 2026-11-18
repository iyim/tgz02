.class public Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;
.super Ljava/lang/Object;
.source "DefaultSchedulerSupplier.java"

# interfaces
.implements Lcom/taobao/rxm/schedule/SchedulerSupplier;
.implements Lcom/taobao/phenix/loader/network/NetworkQualityListener;


# instance fields
.field private final mCentralScheduler:Lcom/taobao/rxm/schedule/Scheduler;

.field private mDecodeScheduler:Lcom/taobao/rxm/schedule/Scheduler;

.field private mIsLastSpeedSlow:Z

.field private final mMaxNetworkRunningAtFast:I

.field private final mMaxNetworkRunningAtSlow:I

.field private mNetworkScheduler:Lcom/taobao/rxm/schedule/ThrottlingScheduler;

.field private mUiThreadScheduler:Lcom/taobao/rxm/schedule/Scheduler;


# direct methods
.method public constructor <init>()V
    .locals 11

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x6

    const/16 v4, 0x8

    const/4 v5, 0x5

    const/16 v6, 0x5dc

    const/4 v7, 0x3

    const/4 v8, 0x5

    const/4 v9, 0x2

    const/4 v10, -0x1

    move-object v0, p0

    .line 26
    invoke-direct/range {v0 .. v10}, Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;-><init>(Lcom/taobao/rxm/schedule/Scheduler;IIIIIIIII)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/rxm/schedule/Scheduler;IIIIIIII)V
    .locals 11

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 32
    invoke-direct/range {v0 .. v10}, Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;-><init>(Lcom/taobao/rxm/schedule/Scheduler;IIIIIIIII)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/rxm/schedule/Scheduler;IIIIIIIII)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p10

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/taobao/rxm/schedule/CentralWorkScheduler;

    const-string v4, "Phenix-Scheduler"

    move-object v3, v1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-direct/range {v3 .. v9}, Lcom/taobao/rxm/schedule/CentralWorkScheduler;-><init>(Ljava/lang/String;IIIII)V

    iput-object v1, v0, Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;->mCentralScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    goto :goto_0

    .line 40
    :cond_0
    new-instance v3, Lcom/taobao/rxm/schedule/MasterThrottlingScheduler;

    move v4, p3

    move v5, p5

    move/from16 v6, p6

    invoke-direct {v3, p1, p3, p5, v6}, Lcom/taobao/rxm/schedule/MasterThrottlingScheduler;-><init>(Lcom/taobao/rxm/schedule/Scheduler;III)V

    iput-object v3, v0, Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;->mCentralScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    :goto_0
    move/from16 v1, p8

    .line 43
    iput v1, v0, Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;->mMaxNetworkRunningAtFast:I

    move/from16 v1, p9

    .line 44
    iput v1, v0, Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;->mMaxNetworkRunningAtSlow:I

    if-lez v2, :cond_1

    .line 46
    new-instance v1, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;

    iget-object v3, v0, Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;->mCentralScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    iget v4, v0, Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;->mMaxNetworkRunningAtFast:I

    invoke-direct {v1, v3, v4, v2}, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;-><init>(Lcom/taobao/rxm/schedule/Scheduler;II)V

    iput-object v1, v0, Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;->mNetworkScheduler:Lcom/taobao/rxm/schedule/ThrottlingScheduler;

    goto :goto_1

    .line 48
    :cond_1
    new-instance v1, Lcom/taobao/rxm/schedule/BranchThrottlingScheduler;

    iget-object v2, v0, Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;->mCentralScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    iget v3, v0, Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;->mMaxNetworkRunningAtFast:I

    invoke-direct {v1, v2, v3}, Lcom/taobao/rxm/schedule/BranchThrottlingScheduler;-><init>(Lcom/taobao/rxm/schedule/Scheduler;I)V

    iput-object v1, v0, Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;->mNetworkScheduler:Lcom/taobao/rxm/schedule/ThrottlingScheduler;

    .line 50
    :goto_1
    new-instance v1, Lcom/taobao/rxm/schedule/BranchThrottlingScheduler;

    iget-object v2, v0, Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;->mCentralScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    move/from16 v3, p7

    invoke-direct {v1, v2, v3}, Lcom/taobao/rxm/schedule/BranchThrottlingScheduler;-><init>(Lcom/taobao/rxm/schedule/Scheduler;I)V

    iput-object v1, v0, Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;->mDecodeScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    return-void
.end method


# virtual methods
.method public forCpuBound()Lcom/taobao/rxm/schedule/Scheduler;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;->mCentralScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    return-object v0
.end method

.method public forDecode()Lcom/taobao/rxm/schedule/Scheduler;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;->mDecodeScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    return-object v0
.end method

.method public forIoBound()Lcom/taobao/rxm/schedule/Scheduler;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;->mCentralScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    return-object v0
.end method

.method public forNetwork()Lcom/taobao/rxm/schedule/Scheduler;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;->mNetworkScheduler:Lcom/taobao/rxm/schedule/ThrottlingScheduler;

    return-object v0
.end method

.method public forUiThread()Lcom/taobao/rxm/schedule/Scheduler;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;->mUiThreadScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/taobao/rxm/schedule/UiThreadScheduler;

    invoke-direct {v0}, Lcom/taobao/rxm/schedule/UiThreadScheduler;-><init>()V

    iput-object v0, p0, Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;->mUiThreadScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;->mUiThreadScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    return-object v0
.end method

.method public declared-synchronized onNetworkQualityChanged(Z)V
    .locals 4

    monitor-enter p0

    .line 55
    :try_start_0
    iget-boolean v0, p0, Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;->mIsLastSpeedSlow:Z

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1

    const-string v0, "Network"

    const-string v2, "network speed not changed, still %s"

    const/4 v3, 0x1

    .line 56
    new-array v3, v3, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string p1, "SLOW"

    goto :goto_0

    :cond_0
    const-string p1, "FAST"

    :goto_0
    aput-object p1, v3, v1

    invoke-static {v0, v2, v3}, Lcom/taobao/phenix/common/UnitedLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    const-string v0, "Network"

    const-string v2, "network speed changed from FAST to SLOW"

    .line 60
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/taobao/phenix/common/UnitedLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;->mNetworkScheduler:Lcom/taobao/rxm/schedule/ThrottlingScheduler;

    iget v1, p0, Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;->mMaxNetworkRunningAtSlow:I

    invoke-interface {v0, v1}, Lcom/taobao/rxm/schedule/ThrottlingScheduler;->setMaxRunningCount(I)V

    goto :goto_1

    :cond_2
    const-string v0, "Network"

    const-string v2, "network speed changed from SLOW to FAST"

    .line 63
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/taobao/phenix/common/UnitedLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;->mNetworkScheduler:Lcom/taobao/rxm/schedule/ThrottlingScheduler;

    iget v1, p0, Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;->mMaxNetworkRunningAtFast:I

    invoke-interface {v0, v1}, Lcom/taobao/rxm/schedule/ThrottlingScheduler;->setMaxRunningCount(I)V

    .line 66
    :goto_1
    iput-boolean p1, p0, Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;->mIsLastSpeedSlow:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
