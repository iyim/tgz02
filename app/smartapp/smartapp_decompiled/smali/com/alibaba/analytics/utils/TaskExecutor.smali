.class public Lcom/alibaba/analytics/utils/TaskExecutor;
.super Ljava/lang/Object;
.source "TaskExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/analytics/utils/TaskExecutor$TBThreadFactory;
    }
.end annotation


# static fields
.field public static final MSG_ABTEST:I = 0x3

.field public static final MSG_BACKGROUND:I = 0x4

.field public static final MSG_CLEAN:I = 0x5

.field public static final MSG_CLOSE_DB:I = 0x9

.field public static final MSG_COMMIT:I = 0x6

.field public static final MSG_CONFIG:I = 0x7

.field public static final MSG_ORANGE_CONFIG:I = 0x8

.field public static final MSG_STORE:I = 0x1

.field public static final MSG_UPLOAD:I = 0x2

.field protected static final TAG:Ljava/lang/String; = "TaskExecutor"

.field public static instance:Lcom/alibaba/analytics/utils/TaskExecutor; = null

.field private static final integer:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static prop:I = 0x1

.field private static threadPoolExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/alibaba/analytics/utils/TaskExecutor;->integer:Ljava/util/concurrent/atomic/AtomicInteger;

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
    sget-object v0, Lcom/alibaba/analytics/utils/TaskExecutor;->integer:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private static declared-synchronized getDefaulThreadPoolExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 4

    const-class v0, Lcom/alibaba/analytics/utils/TaskExecutor;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/alibaba/analytics/utils/TaskExecutor;->threadPoolExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    const/4 v1, 0x4

    .line 45
    new-instance v2, Lcom/alibaba/analytics/utils/TaskExecutor$TBThreadFactory;

    sget v3, Lcom/alibaba/analytics/utils/TaskExecutor;->prop:I

    invoke-direct {v2, v3}, Lcom/alibaba/analytics/utils/TaskExecutor$TBThreadFactory;-><init>(I)V

    invoke-static {v1, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    sput-object v1, Lcom/alibaba/analytics/utils/TaskExecutor;->threadPoolExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 47
    :cond_0
    sget-object v1, Lcom/alibaba/analytics/utils/TaskExecutor;->threadPoolExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/analytics/utils/TaskExecutor;
    .locals 2

    const-class v0, Lcom/alibaba/analytics/utils/TaskExecutor;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/alibaba/analytics/utils/TaskExecutor;->instance:Lcom/alibaba/analytics/utils/TaskExecutor;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Lcom/alibaba/analytics/utils/TaskExecutor;

    invoke-direct {v1}, Lcom/alibaba/analytics/utils/TaskExecutor;-><init>()V

    sput-object v1, Lcom/alibaba/analytics/utils/TaskExecutor;->instance:Lcom/alibaba/analytics/utils/TaskExecutor;

    .line 54
    :cond_0
    sget-object v1, Lcom/alibaba/analytics/utils/TaskExecutor;->instance:Lcom/alibaba/analytics/utils/TaskExecutor;
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

    .line 59
    invoke-interface {p1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 60
    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 62
    :cond_0
    invoke-static {}, Lcom/alibaba/analytics/utils/TaskExecutor;->getDefaulThreadPoolExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, p3, p4, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public final scheduleAtFixedRate(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;
    .locals 8

    if-eqz p1, :cond_0

    .line 68
    invoke-interface {p1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 69
    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 71
    :cond_0
    invoke-static {}, Lcom/alibaba/analytics/utils/TaskExecutor;->getDefaulThreadPoolExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    const-wide/16 v3, 0x3e8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v2, p2

    move-wide v5, p3

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/lang/Runnable;)V
    .locals 1

    .line 78
    :try_start_0
    invoke-static {}, Lcom/alibaba/analytics/utils/TaskExecutor;->getDefaulThreadPoolExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
