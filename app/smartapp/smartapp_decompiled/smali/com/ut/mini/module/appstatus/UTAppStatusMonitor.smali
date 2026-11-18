.class public Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;
.super Ljava/lang/Object;
.source "UTAppStatusMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ut/mini/module/appstatus/UTAppStatusMonitor$NotInForegroundRunnable;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;


# instance fields
.field private mActivitiesActive:I

.field private mAppStatusCallbacksList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppStatusCallbacksLockObj:Ljava/lang/Object;

.field private mApplicationStatusScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mIsInForeground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;

    invoke-direct {v0}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;-><init>()V

    sput-object v0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mInstance:Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mActivitiesActive:I

    .line 16
    iput-boolean v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mIsInForeground:Z

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mApplicationStatusScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksLockObj:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$100(Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksLockObj:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;)Ljava/util/List;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    return-object p0
.end method

.method private declared-synchronized clearApplicationStatusCheckExistingTimer()V
    .locals 2

    monitor-enter p0

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mApplicationStatusScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mApplicationStatusScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;
    .locals 1

    .line 27
    sget-object v0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mInstance:Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;

    return-object v0
.end method


# virtual methods
.method public isInForeground()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mIsInForeground:Z

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksLockObj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 48
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;

    .line 50
    invoke-interface {v2, p1, p2}, Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksLockObj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 57
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;

    .line 59
    invoke-interface {v2, p1}, Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksLockObj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 66
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;

    .line 68
    invoke-interface {v2, p1}, Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksLockObj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 75
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;

    .line 77
    invoke-interface {v2, p1}, Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksLockObj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 84
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;

    .line 86
    invoke-interface {v2, p1, p2}, Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    .line 92
    invoke-direct {p0}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->clearApplicationStatusCheckExistingTimer()V

    .line 93
    iget p1, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mActivitiesActive:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mActivitiesActive:I

    .line 95
    iget-boolean p1, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mIsInForeground:Z

    if-nez p1, :cond_1

    .line 97
    iget-object p1, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksLockObj:Ljava/lang/Object;

    monitor-enter p1

    const/4 v1, 0x0

    .line 98
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;

    .line 100
    invoke-interface {v2}, Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;->onSwitchForeground()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_0
    iput-boolean v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mIsInForeground:Z

    .line 103
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    .line 108
    iget p1, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mActivitiesActive:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mActivitiesActive:I

    .line 109
    iget p1, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mActivitiesActive:I

    if-nez p1, :cond_1

    .line 110
    iget-object p1, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksLockObj:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 111
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;

    .line 113
    invoke-interface {v2}, Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;->onSwitchBackground()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :cond_0
    iput-boolean v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mIsInForeground:Z

    .line 116
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-direct {p0}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->clearApplicationStatusCheckExistingTimer()V

    .line 119
    invoke-static {}, Lcom/alibaba/analytics/utils/TaskExecutor;->getInstance()Lcom/alibaba/analytics/utils/TaskExecutor;

    move-result-object p1

    new-instance v0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor$NotInForegroundRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor$NotInForegroundRunnable;-><init>(Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;Lcom/ut/mini/module/appstatus/UTAppStatusMonitor$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/alibaba/analytics/utils/TaskExecutor;->schedule(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mApplicationStatusScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 116
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method public registerAppStatusCallbacks(Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterAppStatusCallbacks(Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->mAppStatusCallbacksList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 42
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method
