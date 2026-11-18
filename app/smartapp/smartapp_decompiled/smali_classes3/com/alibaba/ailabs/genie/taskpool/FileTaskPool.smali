.class public Lcom/alibaba/ailabs/genie/taskpool/FileTaskPool;
.super Ljava/lang/Object;
.source "FileTaskPool.java"


# static fields
.field private static mExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 33
    invoke-static {}, Lcom/alibaba/ailabs/genie/taskpool/FileTaskPool;->init()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static available()Z
    .locals 1

    .line 40
    sget-object v0, Lcom/alibaba/ailabs/genie/taskpool/FileTaskPool;->mExecutor:Ljava/util/concurrent/ExecutorService;

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

    .line 59
    invoke-static {}, Lcom/alibaba/ailabs/genie/taskpool/FileTaskPool;->available()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/alibaba/ailabs/genie/taskpool/FileTaskPool;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static init()V
    .locals 9

    .line 47
    invoke-static {}, Lcom/alibaba/ailabs/genie/taskpool/FileTaskPool;->available()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/alibaba/ailabs/genie/taskpool/SDKThreadFactory;

    const-string v1, "ft-file-pool-"

    invoke-direct {v8, v1}, Lcom/alibaba/ailabs/genie/taskpool/SDKThreadFactory;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/taskpool/FileTaskPool;->mExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static shutdown()V
    .locals 1

    .line 100
    sget-object v0, Lcom/alibaba/ailabs/genie/taskpool/FileTaskPool;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 101
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    sget-object v0, Lcom/alibaba/ailabs/genie/taskpool/FileTaskPool;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    const/4 v0, 0x0

    .line 104
    sput-object v0, Lcom/alibaba/ailabs/genie/taskpool/FileTaskPool;->mExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static submit(Lcom/alibaba/ailabs/genie/taskpool/CancelableTask;)Lcom/alibaba/ailabs/genie/taskpool/CancelableTask;
    .locals 2

    .line 81
    invoke-static {}, Lcom/alibaba/ailabs/genie/taskpool/FileTaskPool;->available()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 85
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/taskpool/FileTaskPool;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/alibaba/ailabs/genie/taskpool/FileTaskPool$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/taskpool/FileTaskPool$1;-><init>(Lcom/alibaba/ailabs/genie/taskpool/CancelableTask;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/taskpool/CancelableTask;->mFuture:Ljava/util/concurrent/Future;

    return-object p0
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 71
    invoke-static {}, Lcom/alibaba/ailabs/genie/taskpool/FileTaskPool;->available()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/ailabs/genie/taskpool/FileTaskPool;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
