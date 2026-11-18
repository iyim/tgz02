.class Lcom/ut/mini/UTMI1010_2001Event;
.super Ljava/lang/Object;
.source "UTMI1010_2001Event.java"

# interfaces
.implements Lcom/ut/mini/module/appstatus/UTAppStatusDelayCallbacks;


# static fields
.field private static mInstance:Lcom/ut/mini/UTMI1010_2001Event;


# instance fields
.field private mToBackgroundTimestamp:J

.field private mToForegroundTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/ut/mini/UTMI1010_2001Event;

    invoke-direct {v0}, Lcom/ut/mini/UTMI1010_2001Event;-><init>()V

    sput-object v0, Lcom/ut/mini/UTMI1010_2001Event;->mInstance:Lcom/ut/mini/UTMI1010_2001Event;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lcom/ut/mini/UTMI1010_2001Event;->mToForegroundTimestamp:J

    .line 27
    iput-wide v0, p0, Lcom/ut/mini/UTMI1010_2001Event;->mToBackgroundTimestamp:J

    return-void
.end method

.method private _send1010Hit(J)V
    .locals 10

    .line 31
    invoke-static {}, Lcom/alibaba/analytics/core/ClientVariables;->getInstance()Lcom/alibaba/analytics/core/ClientVariables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/ClientVariables;->is1010AutoTrackClosed()Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 34
    iget-wide v2, p0, Lcom/ut/mini/UTMI1010_2001Event;->mToBackgroundTimestamp:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ut/mini/UTMI1010_2001Event;->mToBackgroundTimestamp:J

    sub-long/2addr v0, v2

    .line 37
    :cond_0
    new-instance v9, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const/16 v4, 0x3f2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v3, "UT"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string p1, "_priority"

    const-string p2, "5"

    .line 40
    invoke-virtual {v9, p1, p2}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 42
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 44
    invoke-virtual {v9}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 46
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "Fatal Error,must call setRequestAuthentication method first."

    aput-object v0, p1, p2

    const-string p2, "Record app display event error"

    invoke-static {p2, p1}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/ut/mini/UTMI1010_2001Event;
    .locals 1

    .line 23
    sget-object v0, Lcom/ut/mini/UTMI1010_2001Event;->mInstance:Lcom/ut/mini/UTMI1010_2001Event;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 87
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTPageHitHelper;->pageDestroyed(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 92
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTPageHitHelper;->pageDisAppearByAuto(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 97
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTPageHitHelper;->pageAppearByAuto(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onSwitchBackground()V
    .locals 1

    .line 54
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper;->pageSwitchBackground()V

    return-void
.end method

.method public onSwitchBackgroundDelay()V
    .locals 5

    .line 62
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ut/mini/UTMI1010_2001Event;->mToForegroundTimestamp:J

    sub-long/2addr v0, v2

    .line 63
    invoke-direct {p0, v0, v1}, Lcom/ut/mini/UTMI1010_2001Event;->_send1010Hit(J)V

    .line 64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ut/mini/UTMI1010_2001Event;->mToBackgroundTimestamp:J

    .line 65
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->dispatchSaveCacheDataToLocal()V

    .line 67
    invoke-static {}, Lcom/alibaba/analytics/utils/TaskExecutor;->getInstance()Lcom/alibaba/analytics/utils/TaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/ut/mini/UTMI1010_2001Event$1;

    invoke-direct {v1, p0}, Lcom/ut/mini/UTMI1010_2001Event$1;-><init>(Lcom/ut/mini/UTMI1010_2001Event;)V

    const/4 v2, 0x0

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/alibaba/analytics/utils/TaskExecutor;->schedule(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public onSwitchForeground()V
    .locals 2

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ut/mini/UTMI1010_2001Event;->mToForegroundTimestamp:J

    return-void
.end method
