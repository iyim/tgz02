.class public Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;
.super Ljava/lang/Object;
.source "HttpManager.java"

# interfaces
.implements Lcom/alipay/vi/android/phone/mrpc/core/Transport;


# static fields
.field public static final TAG:Ljava/lang/String; = "HttpManager"

.field private static a:Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;

.field private static final h:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private c:Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;

.field private d:J

.field private e:J

.field private f:J

.field private g:I

.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 198
    new-instance v0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager$2;

    invoke-direct {v0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager$2;-><init>()V

    sput-object v0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->h:Ljava/util/concurrent/ThreadFactory;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->mContext:Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->a()V

    .line 59
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hackbyte "

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static final declared-synchronized a(Landroid/content/Context;)Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;
    .locals 2

    const-class v0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;

    monitor-enter v0

    .line 76
    :try_start_0
    sget-object v1, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->a:Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;

    if-eqz v1, :cond_0

    .line 77
    sget-object p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->a:Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 79
    :cond_0
    :try_start_1
    new-instance v1, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;

    invoke-direct {v1, p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->a:Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;

    .line 80
    sget-object p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->a:Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a(Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;)Ljava/util/concurrent/FutureTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;",
            ")",
            "Ljava/util/concurrent/FutureTask<",
            "Lcom/alipay/vi/android/phone/mrpc/core/Response;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager$1;

    invoke-direct {v0, p0, p1, p1}, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager$1;-><init>(Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;Ljava/util/concurrent/Callable;Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;)V

    return-object v0
.end method

.method private a()V
    .locals 11

    const-string v0, "HttpManager"

    const-string v1, "init 1"

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android"

    .line 88
    invoke-static {v1}, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->newInstance(Ljava/lang/String;)Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->c:Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;

    const-string v1, "init 2"

    .line 89
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0x14

    invoke-direct {v8, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sget-object v9, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->h:Ljava/util/concurrent/ThreadFactory;

    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v10}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    const/16 v3, 0xa

    const/16 v4, 0xb

    const-wide/16 v5, 0x3

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    .line 95
    :try_start_0
    iget-object v2, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v2, "init 3"

    .line 96
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 99
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;
    .locals 1

    .line 69
    sget-object v0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->a:Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;

    if-eqz v0, :cond_0

    return-object v0

    .line 72
    :cond_0
    invoke-static {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->a(Landroid/content/Context;)Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addConnectTime(J)V
    .locals 2

    .line 229
    iget-wide v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->e:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->e:J

    .line 230
    iget p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->g:I

    return-void
.end method

.method public addDataSize(J)V
    .locals 2

    .line 219
    iget-wide v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->d:J

    return-void
.end method

.method public addSocketTime(J)V
    .locals 2

    .line 240
    iget-wide v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->f:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->f:J

    return-void
.end method

.method public close()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 288
    iput-object v1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->c:Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;

    if-eqz v0, :cond_1

    .line 292
    invoke-virtual {v0}, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->close()V

    .line 293
    :cond_1
    iput-object v1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->c:Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;

    return-void
.end method

.method public dumpPerf()Ljava/lang/String;
    .locals 4

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": Active Task = %d, Completed Task = %d, All Task = %d,Avarage Speed = %d KB/S, Connetct Time = %d ms, All data size = %d bytes, All enqueueConnect time = %d ms, All socket time = %d ms, All request times = %d times"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 276
    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 277
    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getTaskCount()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->getAverageSpeed()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->getAverageConnectTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->d:J

    .line 278
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iget v2, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 272
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcom/alipay/vi/android/phone/mrpc/core/Request;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/vi/android/phone/mrpc/core/Request;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/alipay/vi/android/phone/mrpc/core/Response;",
            ">;"
        }
    .end annotation

    .line 103
    instance-of v0, p1, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

    if-eqz v0, :cond_1

    const-string v0, "HttpManager"

    const-string v1, "execute 1"

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/vi/android/phone/mrpc/core/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->dumpPerf()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    nop

    nop

    .line 114
    invoke-virtual {p0, p1}, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->generateWorker(Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;)Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;

    move-result-object p1

    .line 115
    invoke-direct {p0, p1}, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->a(Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;)Ljava/util/concurrent/FutureTask;

    move-result-object p1

    const-string v1, "execute 2"

    .line 116
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-object p1

    .line 104
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "request send error."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected generateWorker(Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;)Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;
    .locals 1

    .line 185
    new-instance v0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;

    invoke-direct {v0, p0, p1}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;-><init>(Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;)V

    return-object v0
.end method

.method public getAverageConnectTime()J
    .locals 5

    .line 261
    iget v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->g:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 263
    :cond_0
    iget-wide v1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->e:J

    int-to-long v3, v0

    div-long/2addr v1, v3

    return-wide v1
.end method

.method public getAverageSpeed()J
    .locals 6

    .line 249
    iget-wide v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 251
    :cond_0
    iget-wide v2, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->d:J

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    div-long/2addr v2, v0

    const/16 v0, 0xa

    shr-long v0, v2, v0

    return-wide v0
.end method

.method public getHttpClient()Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->c:Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;

    return-object v0
.end method
