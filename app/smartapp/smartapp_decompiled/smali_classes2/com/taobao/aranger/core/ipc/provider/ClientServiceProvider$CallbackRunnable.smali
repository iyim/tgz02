.class Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider$CallbackRunnable;
.super Ljava/lang/Object;
.source "ClientServiceProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackRunnable"
.end annotation


# instance fields
.field private final mCallback:Ljava/lang/Object;

.field private final mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mException:Ljava/lang/Exception;

.field private final mMethod:Ljava/lang/reflect/Method;

.field private final mParameters:[Ljava/lang/Object;

.field private mResult:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p1, p0, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider$CallbackRunnable;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 222
    iput-object p2, p0, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider$CallbackRunnable;->mMethod:Ljava/lang/reflect/Method;

    .line 223
    iput-object p3, p0, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider$CallbackRunnable;->mCallback:Ljava/lang/Object;

    .line 224
    iput-object p4, p0, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider$CallbackRunnable;->mParameters:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method getException()Ljava/lang/Exception;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider$CallbackRunnable;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method getResult()Ljava/lang/Object;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider$CallbackRunnable;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public run()V
    .locals 4

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider$CallbackRunnable;->mMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider$CallbackRunnable;->mCallback:Ljava/lang/Object;

    iget-object v2, p0, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider$CallbackRunnable;->mParameters:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider$CallbackRunnable;->mResult:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :goto_0
    iget-object v0, p0, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider$CallbackRunnable;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 233
    :try_start_1
    invoke-static {}, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[CallbackRunnable][run]"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/aranger/logs/IPCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 234
    iput-object v0, p0, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider$CallbackRunnable;->mException:Ljava/lang/Exception;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 237
    :goto_2
    iget-object v1, p0, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider$CallbackRunnable;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
