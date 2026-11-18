.class public Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;
.super Ljava/lang/Object;
.source "MtopSDKThreadPoolExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory$MtopSDKThreadFactory;
    }
.end annotation


# static fields
.field private static final CALLBACK_EXECUTOR_SIZE:I = 0x2

.field private static final DEFAULT_CORE_POOL_SIZE:I = 0x3

.field private static final KEEP_ALIVE_TIME:I = 0x3c

.field private static final QUEENSIZE:I = 0x80

.field private static final REQUEST_CORE_POOL_SIZE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopSDKThreadPoolExecutorFactory"

.field private static volatile callbackExecutors:[Ljava/util/concurrent/ExecutorService; = null

.field private static priority:I = 0xa

.field private static volatile requestExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static volatile threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static createExecutor(IIIILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9

    if-lez p3, :cond_0

    .line 165
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    goto :goto_0

    .line 167
    :cond_0
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    :goto_0
    move-object v7, v0

    .line 169
    new-instance p3, Ljava/util/concurrent/ThreadPoolExecutor;

    int-to-long v4, p2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p3

    move v2, p0

    move v3, p1

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    if-lez p2, :cond_1

    const/4 p0, 0x1

    .line 171
    invoke-virtual {p3, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    :cond_1
    return-object p3
.end method

.method public static getCallbackExecutorServices()[Ljava/util/concurrent/ExecutorService;
    .locals 10

    .line 91
    sget-object v0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->callbackExecutors:[Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2

    .line 92
    const-class v0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;

    monitor-enter v0

    .line 93
    :try_start_0
    sget-object v1, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->callbackExecutors:[Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 94
    new-array v2, v1, [Ljava/util/concurrent/ExecutorService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    const/16 v5, 0x3c

    .line 96
    new-instance v6, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory$MtopSDKThreadFactory;

    sget v7, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->priority:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CallbackPool"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory$MtopSDKThreadFactory;-><init>(ILjava/lang/String;)V

    const/4 v7, 0x1

    invoke-static {v7, v7, v5, v3, v6}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->createExecutor(IIIILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 98
    :cond_0
    sput-object v2, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->callbackExecutors:[Ljava/util/concurrent/ExecutorService;

    .line 100
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 102
    :cond_2
    :goto_1
    sget-object v0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->callbackExecutors:[Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getDefaultThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 5

    .line 69
    sget-object v0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 70
    const-class v0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_0

    const/16 v1, 0x3c

    const/16 v2, 0x80

    .line 72
    new-instance v3, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory$MtopSDKThreadFactory;

    sget v4, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->priority:I

    invoke-direct {v3, v4}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory$MtopSDKThreadFactory;-><init>(I)V

    const/4 v4, 0x3

    invoke-static {v4, v4, v1, v2, v3}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->createExecutor(IIIILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    sput-object v1, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 74
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 76
    :cond_1
    :goto_0
    sget-object v0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static getRequestThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 6

    .line 80
    sget-object v0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->requestExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 81
    const-class v0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-object v1, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->requestExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_0

    const/16 v1, 0x3c

    const/4 v2, 0x0

    .line 83
    new-instance v3, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory$MtopSDKThreadFactory;

    sget v4, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->priority:I

    const-string v5, "RequestPool"

    invoke-direct {v3, v4, v5}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory$MtopSDKThreadFactory;-><init>(ILjava/lang/String;)V

    const/4 v4, 0x4

    invoke-static {v4, v4, v1, v2, v3}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->createExecutor(IIIILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    sput-object v1, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->requestExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 85
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 87
    :cond_1
    :goto_0
    sget-object v0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->requestExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static setCallbackExecutorServices([Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 115
    array-length v0, p0

    if-lez v0, :cond_0

    .line 116
    sput-object p0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->callbackExecutors:[Ljava/util/concurrent/ExecutorService;

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setDefaultThreadPoolExecutor(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 107
    sput-object p0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setRequestThreadPoolExecutor(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 122
    sput-object p0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->requestExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 130
    :try_start_0
    invoke-static {}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->getDefaultThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[submit]submit runnable to Mtop Default ThreadPool error ---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mtopsdk.MtopSDKThreadPoolExecutorFactory"

    invoke-static {v0, p0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static submitCallbackTask(ILjava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 141
    :try_start_0
    invoke-static {}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->getCallbackExecutorServices()[Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 142
    array-length v1, v0

    .line 143
    rem-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    .line 144
    aget-object p0, v0, p0

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[submitCallbackTask]submit runnable to Mtop Callback ThreadPool error ---"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mtopsdk.MtopSDKThreadPoolExecutorFactory"

    invoke-static {p1, p0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static submitRequestTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 155
    :try_start_0
    invoke-static {}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->getRequestThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[submitRequestTask]submit runnable to Mtop Request ThreadPool error ---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mtopsdk.MtopSDKThreadPoolExecutorFactory"

    invoke-static {v0, p0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
