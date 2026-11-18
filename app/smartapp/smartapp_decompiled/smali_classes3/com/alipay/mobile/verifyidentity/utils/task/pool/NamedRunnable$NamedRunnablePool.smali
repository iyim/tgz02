.class public final Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;
.super Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool;
.source "NamedRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NamedRunnablePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool<",
        "Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool;-><init>(II)V

    .line 34
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hackbyte "

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 41
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;->a(Ljava/lang/Runnable;Ljava/lang/String;I)Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/Runnable;Ljava/lang/String;I)Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;
    .locals 3

    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v0

    const-string v1, "AsyncTaskExecutor"

    const-string v2, "NamedRunnablePool.obtain(): create a new NamedRunnable obj."

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;->b(Ljava/lang/Runnable;Ljava/lang/String;I)Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;

    move-result-object p1

    goto :goto_0

    .line 50
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v0

    const-string v1, "AsyncTaskExecutor"

    const-string v2, "NamedRunnablePool.obtain(): hit a cache NamedRunnable obj."

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;

    .line 52
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->a(Ljava/lang/Runnable;)V

    .line 53
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->a(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v0

    .line 56
    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;)V
    .locals 0

    monitor-enter p0

    .line 70
    :try_start_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;->a(Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;)V

    return-void
.end method

.method b(Ljava/lang/Runnable;Ljava/lang/String;I)Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;
    .locals 2

    .line 60
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "NamedRunable_"

    if-eqz v0, :cond_0

    .line 61
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 65
    :goto_0
    new-instance v0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;

    invoke-direct {v0, p1, p2, p3}, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;I)V

    return-object v0
.end method
