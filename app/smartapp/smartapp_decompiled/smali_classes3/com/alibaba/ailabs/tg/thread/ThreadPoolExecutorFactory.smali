.class public Lcom/alibaba/ailabs/tg/thread/ThreadPoolExecutorFactory;
.super Ljava/lang/Object;
.source "ThreadPoolExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/tg/thread/ThreadPoolExecutorFactory$TBThreadFactory;
    }
.end annotation


# static fields
.field private static CORE_POOL_SIZE:I = 0x3

.field private static KEEP_ALIVE_TIME:I = 0x3c

.field private static MAX_POOL_SIZE:I = 0x5

.field private static final QUEENCOUNT:I = 0x1e

.field private static final integer:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static prop:I = 0x5

.field private static threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/tg/thread/ThreadPoolExecutorFactory;->integer:Ljava/util/concurrent/atomic/AtomicInteger;

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
    sget-object v0, Lcom/alibaba/ailabs/tg/thread/ThreadPoolExecutorFactory;->integer:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static createExecutor(IIIII)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10

    if-lez p4, :cond_0

    .line 42
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    :goto_0
    move-object v7, v0

    .line 46
    new-instance v8, Lcom/alibaba/ailabs/tg/thread/ThreadPoolExecutorFactory$TBThreadFactory;

    invoke-direct {v8, p0}, Lcom/alibaba/ailabs/tg/thread/ThreadPoolExecutorFactory$TBThreadFactory;-><init>(I)V

    .line 48
    new-instance p0, Ljava/util/concurrent/ThreadPoolExecutor;

    int-to-long v4, p3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object p0
.end method

.method public static declared-synchronized getDefaulThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 6

    const-class v0, Lcom/alibaba/ailabs/tg/thread/ThreadPoolExecutorFactory;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/tg/thread/ThreadPoolExecutorFactory;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_1

    .line 56
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    .line 59
    sget v1, Lcom/alibaba/ailabs/tg/thread/ThreadPoolExecutorFactory;->CORE_POOL_SIZE:I

    .line 60
    sget v2, Lcom/alibaba/ailabs/tg/thread/ThreadPoolExecutorFactory;->MAX_POOL_SIZE:I

    .line 62
    :cond_0
    sget v3, Lcom/alibaba/ailabs/tg/thread/ThreadPoolExecutorFactory;->prop:I

    sget v4, Lcom/alibaba/ailabs/tg/thread/ThreadPoolExecutorFactory;->KEEP_ALIVE_TIME:I

    const/16 v5, 0x1e

    invoke-static {v3, v1, v2, v4, v5}, Lcom/alibaba/ailabs/tg/thread/ThreadPoolExecutorFactory;->createExecutor(IIIII)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    sput-object v1, Lcom/alibaba/ailabs/tg/thread/ThreadPoolExecutorFactory;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 64
    :cond_1
    sget-object v1, Lcom/alibaba/ailabs/tg/thread/ThreadPoolExecutorFactory;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
