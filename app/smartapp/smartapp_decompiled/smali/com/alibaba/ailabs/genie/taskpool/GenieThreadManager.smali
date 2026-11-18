.class public Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager;
.super Ljava/lang/Object;
.source "GenieThreadManager.java"


# static fields
.field private static final CORE_THREAD_COUNT:I = 0x2

.field private static final MAX_IDLE_TIME:J = 0x3cL

.field private static final MAX_THREAD_COUNT:I = 0xa

.field private static mExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 39
    invoke-static {}, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager;->init()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static available()Z
    .locals 1

    .line 46
    sget-object v0, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 65
    invoke-static {}, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager;->available()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static init()V
    .locals 9

    .line 50
    invoke-static {}, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager;->available()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    const/16 v3, 0xa

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/alibaba/ailabs/genie/taskpool/SDKThreadFactory;

    const-string/jumbo v1, "t-genie-pool-"

    invoke-direct {v8, v1}, Lcom/alibaba/ailabs/genie/taskpool/SDKThreadFactory;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 57
    sput-object v0, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public static shutdown()V
    .locals 1

    .line 106
    sget-object v0, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 107
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    sget-object v0, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    const/4 v0, 0x0

    .line 110
    sput-object v0, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static submit(Lcom/alibaba/ailabs/genie/taskpool/CancelableTask;)Lcom/alibaba/ailabs/genie/taskpool/CancelableTask;
    .locals 2

    .line 87
    invoke-static {}, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager;->available()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 91
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager$1;-><init>(Lcom/alibaba/ailabs/genie/taskpool/CancelableTask;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/taskpool/CancelableTask;->mFuture:Ljava/util/concurrent/Future;

    return-object p0
.end method

.method public static submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 77
    invoke-static {}, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager;->available()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
