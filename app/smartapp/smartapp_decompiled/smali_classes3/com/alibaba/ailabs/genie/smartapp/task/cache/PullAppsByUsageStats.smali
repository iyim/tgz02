.class public Lcom/alibaba/ailabs/genie/smartapp/task/cache/PullAppsByUsageStats;
.super Ljava/lang/Object;
.source "PullAppsByUsageStats.java"


# annotations
.annotation build Landroid/support/annotation/MainThread;
.end annotation


# static fields
.field private static volatile instance:Lcom/alibaba/ailabs/genie/smartapp/task/cache/PullAppsByUsageStats;


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/PullAppsByUsageStats;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/smartapp/task/cache/PullAppsByUsageStats;
    .locals 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 42
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/PullAppsByUsageStats;->instance:Lcom/alibaba/ailabs/genie/smartapp/task/cache/PullAppsByUsageStats;

    if-nez v0, :cond_1

    .line 43
    const-class v0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/PullAppsByUsageStats;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/smartapp/task/cache/PullAppsByUsageStats;->instance:Lcom/alibaba/ailabs/genie/smartapp/task/cache/PullAppsByUsageStats;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/task/cache/PullAppsByUsageStats;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/smartapp/task/cache/PullAppsByUsageStats;-><init>()V

    sput-object v1, Lcom/alibaba/ailabs/genie/smartapp/task/cache/PullAppsByUsageStats;->instance:Lcom/alibaba/ailabs/genie/smartapp/task/cache/PullAppsByUsageStats;

    .line 47
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 50
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/PullAppsByUsageStats;->instance:Lcom/alibaba/ailabs/genie/smartapp/task/cache/PullAppsByUsageStats;

    return-object v0
.end method

.method static synthetic lambda$pullAppByStats$0(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 2

    .line 61
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method static synthetic lambda$pullAppByStats$1(Landroid/content/Context;Ljava/util/PriorityQueue;)V
    .locals 8

    :try_start_0
    const-string v0, "activity"

    .line 80
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 85
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 86
    iget-boolean v2, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "QUICK"

    if-nez v2, :cond_5

    :try_start_1
    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v6, 0x12c00000

    cmp-long v2, v4, v6

    if-gez v2, :cond_1

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 92
    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 96
    :cond_2
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 98
    iget-object v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 99
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pullAppByStats alive "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 103
    :cond_4
    invoke-static {}, Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;->getInstance()Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;->startApp(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 87
    :cond_5
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Stop Start App caused LowMemory < 300! Mem:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 105
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public pullAppByStats(Landroid/content/Context;Ljava/util/List;I)V
    .locals 8
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;I)V"
        }
    .end annotation

    .line 57
    invoke-static {p2}, Lcom/alibaba/ailabs/tg/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 61
    :cond_0
    new-instance v0, Ljava/util/PriorityQueue;

    sget-object v1, Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$PullAppsByUsageStats$jKKUFDO4jaxgwQVf0ao2k_hJTrY;->INSTANCE:Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$PullAppsByUsageStats$jKKUFDO4jaxgwQVf0ao2k_hJTrY;

    invoke-direct {v0, v1}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    .line 63
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "QUICK"

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStats;

    .line 64
    invoke-static {}, Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;->getInstance()Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;

    move-result-object v5

    invoke-virtual {v1}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;->cached(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x3

    .line 67
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v1}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v5, v2

    const/4 v2, 0x2

    invoke-virtual {v1}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v2, "UsageStats:%s, getTotalTimeInForeground:%d, getLastTimeUsed:%d"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v2, Landroid/util/Pair;

    invoke-virtual {v1}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p1, "queue.isEmpty()"

    .line 72
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 78
    :cond_3
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/PullAppsByUsageStats;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$PullAppsByUsageStats$wii9k1_yJUL_hEXDd0X1vCoMFj8;

    invoke-direct {v1, p1, v0}, Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$PullAppsByUsageStats$wii9k1_yJUL_hEXDd0X1vCoMFj8;-><init>(Landroid/content/Context;Ljava/util/PriorityQueue;)V

    mul-int/lit8 v3, v4, 0x5

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v5, v3

    invoke-virtual {p2, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/2addr v4, v2

    .line 109
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    if-lt v4, p3, :cond_3

    :cond_4
    :goto_1
    return-void
.end method
