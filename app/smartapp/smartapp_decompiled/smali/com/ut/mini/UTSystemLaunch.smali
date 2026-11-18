.class Lcom/ut/mini/UTSystemLaunch;
.super Ljava/lang/Object;
.source "UTSystemLaunch.java"


# static fields
.field private static volatile bSend:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()V
    .locals 0

    .line 13
    invoke-static {}, Lcom/ut/mini/UTSystemLaunch;->send()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static send()V
    .locals 5

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 49
    new-instance v2, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    const-string v3, "BootTime"

    invoke-direct {v2, v3}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bootTime"

    invoke-virtual {v2, v1, v0}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 53
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    invoke-virtual {v2}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    return-void
.end method

.method static sendBootTime(Landroid/content/Context;)V
    .locals 2

    .line 17
    const-class v0, Lcom/ut/mini/UTSystemLaunch;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-boolean v1, Lcom/ut/mini/UTSystemLaunch;->bSend:Z

    if-eqz v1, :cond_0

    .line 19
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 22
    sput-boolean v1, Lcom/ut/mini/UTSystemLaunch;->bSend:Z

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-static {}, Lcom/alibaba/analytics/utils/TaskExecutor;->getInstance()Lcom/alibaba/analytics/utils/TaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/ut/mini/UTSystemLaunch$1;

    invoke-direct {v1, p0}, Lcom/ut/mini/UTSystemLaunch$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/utils/TaskExecutor;->submit(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 23
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
