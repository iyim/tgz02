.class public Lanet/channel/thread/ThreadPoolExecutorFactory;
.super Ljava/lang/Object;
.source "ThreadPoolExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/thread/ThreadPoolExecutorFactory$ComparableTask;,
        Lanet/channel/thread/ThreadPoolExecutorFactory$Factory;,
        Lanet/channel/thread/ThreadPoolExecutorFactory$Priority;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "awcn.ThreadPoolExecutorFactory"

.field private static backupExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static highExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static lowExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static midExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static scheduledExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 18
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lanet/channel/thread/ThreadPoolExecutorFactory$Factory;

    const-string v2, "AWCN Scheduler"

    invoke-direct {v1, v2}, Lanet/channel/thread/ThreadPoolExecutorFactory$Factory;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->scheduledExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 19
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    new-instance v10, Lanet/channel/thread/ThreadPoolExecutorFactory$Factory;

    const-string v1, "AWCN Worker(H)"

    invoke-direct {v10, v1}, Lanet/channel/thread/ThreadPoolExecutorFactory$Factory;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x2

    const-wide/16 v6, 0x3c

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->highExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 20
    new-instance v0, Lanet/channel/thread/PriorityExecutor;

    sget-object v16, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v17, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v17 .. v17}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v1, Lanet/channel/thread/ThreadPoolExecutorFactory$Factory;

    const-string v3, "AWCN Worker(M)"

    invoke-direct {v1, v3}, Lanet/channel/thread/ThreadPoolExecutorFactory$Factory;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x10

    const/16 v13, 0x10

    const-wide/16 v14, 0x3c

    move-object v11, v0

    move-object/from16 v18, v1

    invoke-direct/range {v11 .. v18}, Lanet/channel/thread/PriorityExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->midExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 21
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    new-instance v10, Lanet/channel/thread/ThreadPoolExecutorFactory$Factory;

    const-string v1, "AWCN Worker(L)"

    invoke-direct {v10, v1}, Lanet/channel/thread/ThreadPoolExecutorFactory$Factory;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->lowExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 22
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v16, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v17, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct/range {v17 .. v17}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    new-instance v1, Lanet/channel/thread/ThreadPoolExecutorFactory$Factory;

    const-string v3, "AWCN Worker(Backup)"

    invoke-direct {v1, v3}, Lanet/channel/thread/ThreadPoolExecutorFactory$Factory;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x20

    const/16 v13, 0x20

    move-object v11, v0

    move-object/from16 v18, v1

    invoke-direct/range {v11 .. v18}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->backupExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 25
    sget-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->highExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 26
    sget-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->midExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 27
    sget-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->lowExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 28
    sget-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->backupExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static removeScheduleTask(Ljava/lang/Runnable;)V
    .locals 1

    .line 60
    sget-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->scheduledExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static declared-synchronized setNormalExecutorPoolSize(I)V
    .locals 2

    const-class v0, Lanet/channel/thread/ThreadPoolExecutorFactory;

    monitor-enter v0

    const/4 v1, 0x6

    if-ge p0, v1, :cond_0

    const/4 p0, 0x6

    .line 114
    :cond_0
    :try_start_0
    sget-object v1, Lanet/channel/thread/ThreadPoolExecutorFactory;->midExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 115
    sget-object v1, Lanet/channel/thread/ThreadPoolExecutorFactory;->midExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static submitBackupTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
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

    .line 81
    sget-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->backupExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static submitPriorityTask(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 65
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 66
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "priority"

    aput-object v4, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "awcn.ThreadPoolExecutorFactory"

    const-string/jumbo v3, "submit priority task"

    invoke-static {v0, v3, v1, v2}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :cond_0
    sget v0, Lanet/channel/thread/ThreadPoolExecutorFactory$Priority;->HIGH:I

    if-lt p1, v0, :cond_1

    sget v0, Lanet/channel/thread/ThreadPoolExecutorFactory$Priority;->LOW:I

    if-le p1, v0, :cond_2

    .line 69
    :cond_1
    sget p1, Lanet/channel/thread/ThreadPoolExecutorFactory$Priority;->LOW:I

    .line 71
    :cond_2
    sget v0, Lanet/channel/thread/ThreadPoolExecutorFactory$Priority;->HIGH:I

    if-ne p1, v0, :cond_3

    .line 72
    sget-object p1, Lanet/channel/thread/ThreadPoolExecutorFactory;->highExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    .line 73
    :cond_3
    sget v0, Lanet/channel/thread/ThreadPoolExecutorFactory$Priority;->LOW:I

    if-ne p1, v0, :cond_4

    .line 74
    sget-object p1, Lanet/channel/thread/ThreadPoolExecutorFactory;->lowExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    .line 76
    :cond_4
    sget-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->midExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lanet/channel/thread/ThreadPoolExecutorFactory$ComparableTask;

    invoke-direct {v1, p0, p1}, Lanet/channel/thread/ThreadPoolExecutorFactory$ComparableTask;-><init>(Ljava/lang/Runnable;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static submitScheduledTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
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

    .line 52
    sget-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->scheduledExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static submitScheduledTask(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 56
    sget-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->scheduledExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p0, p1, p2, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method
