.class public abstract Lcom/taobao/android/sku/data/AliXSkuAsyncTask;
.super Ljava/lang/Object;
.source "AliXSkuAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/sku/data/AliXSkuAsyncTask$AsyncTaskResult;,
        Lcom/taobao/android/sku/data/AliXSkuAsyncTask$WorkerRunnable;,
        Lcom/taobao/android/sku/data/AliXSkuAsyncTask$InternalHandler;,
        Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;,
        Lcom/taobao/android/sku/data/AliXSkuAsyncTask$SerialExecutor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE_SECONDS:I = 0x1e

.field private static final LOG_TAG:Ljava/lang/String; = "AliXSkuAsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static sHandler:Lcom/taobao/android/sku/data/AliXSkuAsyncTask$InternalHandler;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private volatile mStatus:Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Lcom/taobao/android/sku/data/AliXSkuAsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/android/sku/data/AliXSkuAsyncTask$WorkerRunnable<",
            "TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 189
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->CPU_COUNT:I

    .line 193
    sget v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->CPU_COUNT:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->CORE_POOL_SIZE:I

    .line 194
    sget v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->MAXIMUM_POOL_SIZE:I

    .line 197
    new-instance v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$1;

    invoke-direct {v0}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$1;-><init>()V

    sput-object v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 205
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 214
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v4, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->CORE_POOL_SIZE:I

    sget v5, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->MAXIMUM_POOL_SIZE:I

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v9, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v10, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const-wide/16 v6, 0x1e

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 217
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 218
    sput-object v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 225
    new-instance v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$SerialExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$SerialExecutor;-><init>(Lcom/taobao/android/sku/data/AliXSkuAsyncTask$1;)V

    sput-object v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 230
    sget-object v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 312
    nop

    nop

    invoke-direct {p0, v0}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 321
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1    # Landroid/os/Looper;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    sget-object v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;->PENDING:Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;

    iput-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->mStatus:Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;

    .line 238
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 239
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_1

    .line 330
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->mHandler:Landroid/os/Handler;

    .line 334
    new-instance p1, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$2;

    invoke-direct {p1, p0}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$2;-><init>(Lcom/taobao/android/sku/data/AliXSkuAsyncTask;)V

    iput-object p1, p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->mWorker:Lcom/taobao/android/sku/data/AliXSkuAsyncTask$WorkerRunnable;

    .line 353
    new-instance p1, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$3;

    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->mWorker:Lcom/taobao/android/sku/data/AliXSkuAsyncTask$WorkerRunnable;

    invoke-direct {p1, p0, v0}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$3;-><init>(Lcom/taobao/android/sku/data/AliXSkuAsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object p1, p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static synthetic access$200(Lcom/taobao/android/sku/data/AliXSkuAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$300(Lcom/taobao/android/sku/data/AliXSkuAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$400(Lcom/taobao/android/sku/data/AliXSkuAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-direct {p0, p1}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/taobao/android/sku/data/AliXSkuAsyncTask;Ljava/lang/Object;)V
    .locals 0

    .line 186
    invoke-direct {p0, p1}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$600(Lcom/taobao/android/sku/data/AliXSkuAsyncTask;Ljava/lang/Object;)V
    .locals 0

    .line 186
    invoke-direct {p0, p1}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->finish(Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 657
    sget-object v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 682
    invoke-virtual {p0}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    invoke-virtual {p0, p1}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->onCancelled(Ljava/lang/Object;)V

    goto :goto_0

    .line 685
    :cond_0
    invoke-virtual {p0, p1}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 687
    :goto_0
    sget-object p1, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;->FINISHED:Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;

    iput-object p1, p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->mStatus:Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;

    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static getMainHandler()Landroid/os/Handler;
    .locals 3

    .line 289
    const-class v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;

    monitor-enter v0

    .line 290
    :try_start_0
    sget-object v1, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->sHandler:Lcom/taobao/android/sku/data/AliXSkuAsyncTask$InternalHandler;

    if-nez v1, :cond_0

    .line 291
    new-instance v1, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$InternalHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$InternalHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->sHandler:Lcom/taobao/android/sku/data/AliXSkuAsyncTask$InternalHandler;

    .line 293
    :cond_0
    sget-object v1, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->sHandler:Lcom/taobao/android/sku/data/AliXSkuAsyncTask$InternalHandler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 294
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .line 379
    invoke-direct {p0}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$AsyncTaskResult;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v3}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$AsyncTaskResult;-><init>(Lcom/taobao/android/sku/data/AliXSkuAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method private postResultIfNotInvoked(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    invoke-direct {p0, p1}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 305
    sput-object p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 527
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcom/taobao/android/sku/data/AliXSkuAsyncTask;
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/taobao/android/sku/data/AliXSkuAsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 589
    sget-object v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/taobao/android/sku/data/AliXSkuAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/taobao/android/sku/data/AliXSkuAsyncTask;
    .locals 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/taobao/android/sku/data/AliXSkuAsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 625
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->mStatus:Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;

    sget-object v1, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;->PENDING:Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;

    if-eq v0, v1, :cond_2

    .line 626
    sget-object v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$4;->$SwitchMap$com$taobao$android$sku$data$AliXSkuAsyncTask$Status:[I

    iget-object v1, p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->mStatus:Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;

    invoke-virtual {v1}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 631
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 628
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task is already running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 637
    :cond_2
    :goto_0
    sget-object v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;->RUNNING:Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;

    iput-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->mStatus:Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;

    .line 639
    invoke-virtual {p0}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->onPreExecute()V

    .line 641
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->mWorker:Lcom/taobao/android/sku/data/AliXSkuAsyncTask$WorkerRunnable;

    iput-object p2, v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 642
    iget-object p2, p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 559
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getStatus()Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->mStatus:Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 466
    invoke-virtual {p0}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->onCancelled()V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onPreExecute()V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .line 675
    invoke-virtual {p0}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 676
    invoke-direct {p0}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$AsyncTaskResult;-><init>(Lcom/taobao/android/sku/data/AliXSkuAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 677
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
