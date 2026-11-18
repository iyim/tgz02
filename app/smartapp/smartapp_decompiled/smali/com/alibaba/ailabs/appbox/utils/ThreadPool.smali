.class public Lcom/alibaba/ailabs/appbox/utils/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/appbox/utils/ThreadPool$DefaultThreadFactory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThreadPool"

.field private static executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static stMax:I

.field private static stMin:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 63
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 64
    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->init()V

    .line 67
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getThreadPoolExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 71
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->init()V

    .line 75
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method private static declared-synchronized init()V
    .locals 14

    const-class v0, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_3

    .line 36
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    const/4 v2, 0x5

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 39
    sget v3, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->stMax:I

    const/16 v4, 0xf

    if-lez v3, :cond_0

    sget v3, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->stMin:I

    if-lez v3, :cond_0

    .line 40
    sget v2, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->stMin:I

    .line 41
    sget v4, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->stMax:I

    move v7, v4

    goto :goto_0

    :cond_0
    const-string v3, "ThreadPool"

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "core maybe <0 which will cause crash in specific platform: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v1, :cond_1

    const/4 v1, 0x1

    .line 48
    :cond_1
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    .line 50
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v3, v4, :cond_2

    const/16 v7, 0xf

    goto :goto_0

    :cond_2
    move v7, v3

    :goto_0
    const-string v3, "ThreadPool"

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start a ThreadPool with scale between "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "and core:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v8, 0x3c

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v11, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v11}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v12, Lcom/alibaba/ailabs/appbox/utils/ThreadPool$DefaultThreadFactory;

    invoke-direct {v12}, Lcom/alibaba/ailabs/appbox/utils/ThreadPool$DefaultThreadFactory;-><init>()V

    new-instance v13, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v13}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    move-object v5, v1

    move v6, v2

    invoke-direct/range {v5 .. v13}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 58
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v3, Lcom/alibaba/ailabs/appbox/utils/ThreadPool$DefaultThreadFactory;

    invoke-direct {v3}, Lcom/alibaba/ailabs/appbox/utils/ThreadPool$DefaultThreadFactory;-><init>()V

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 95
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 96
    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->init()V

    .line 99
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p0, p1, p2, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public static scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 103
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 104
    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->init()V

    .line 107
    :cond_0
    sget-object v1, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public static setThreadPoolSize(II)V
    .locals 0

    if-lt p1, p0, :cond_0

    if-lez p0, :cond_0

    .line 28
    sput p0, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->stMin:I

    .line 29
    sput p1, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->stMax:I

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 79
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 80
    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->init()V

    .line 83
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 87
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 88
    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->init()V

    .line 91
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
