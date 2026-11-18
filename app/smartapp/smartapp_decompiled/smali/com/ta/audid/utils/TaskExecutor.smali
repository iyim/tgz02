.class public Lcom/ta/audid/utils/TaskExecutor;
.super Ljava/lang/Object;
.source "TaskExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/audid/utils/TaskExecutor$TBThreadFactory;
    }
.end annotation


# static fields
.field private static instance:Lcom/ta/audid/utils/TaskExecutor;

.field private static final integer:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static threadPoolExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/ta/audid/utils/TaskExecutor;->integer:Ljava/util/concurrent/atomic/AtomicInteger;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 10
    sget-object v0, Lcom/ta/audid/utils/TaskExecutor;->integer:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private static declared-synchronized getDefaultThreadPoolExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 4

    const-class v0, Lcom/ta/audid/utils/TaskExecutor;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/ta/audid/utils/TaskExecutor;->threadPoolExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    const/4 v1, 0x3

    .line 34
    new-instance v2, Lcom/ta/audid/utils/TaskExecutor$TBThreadFactory;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/ta/audid/utils/TaskExecutor$TBThreadFactory;-><init>(I)V

    invoke-static {v1, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    sput-object v1, Lcom/ta/audid/utils/TaskExecutor;->threadPoolExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 36
    :cond_0
    sget-object v1, Lcom/ta/audid/utils/TaskExecutor;->threadPoolExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance()Lcom/ta/audid/utils/TaskExecutor;
    .locals 2

    const-class v0, Lcom/ta/audid/utils/TaskExecutor;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/ta/audid/utils/TaskExecutor;->instance:Lcom/ta/audid/utils/TaskExecutor;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/ta/audid/utils/TaskExecutor;

    invoke-direct {v1}, Lcom/ta/audid/utils/TaskExecutor;-><init>()V

    sput-object v1, Lcom/ta/audid/utils/TaskExecutor;->instance:Lcom/ta/audid/utils/TaskExecutor;

    .line 43
    :cond_0
    sget-object v1, Lcom/ta/audid/utils/TaskExecutor;->instance:Lcom/ta/audid/utils/TaskExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final schedule(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    if-eqz p1, :cond_0

    .line 48
    invoke-interface {p1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 49
    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 51
    :cond_0
    invoke-static {}, Lcom/ta/audid/utils/TaskExecutor;->getDefaultThreadPoolExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, p3, p4, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public final scheduleAtFixedRate(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;JJ)Ljava/util/concurrent/ScheduledFuture;
    .locals 8

    if-eqz p1, :cond_0

    .line 56
    invoke-interface {p1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 57
    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 59
    :cond_0
    invoke-static {}, Lcom/ta/audid/utils/TaskExecutor;->getDefaultThreadPoolExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/lang/Runnable;)V
    .locals 1

    .line 65
    :try_start_0
    invoke-static {}, Lcom/ta/audid/utils/TaskExecutor;->getDefaultThreadPoolExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
