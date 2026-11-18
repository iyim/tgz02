.class Lcom/taobao/android/sku/data/AliXSkuAsyncTask$2;
.super Lcom/taobao/android/sku/data/AliXSkuAsyncTask$WorkerRunnable;
.source "AliXSkuAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/sku/data/AliXSkuAsyncTask;-><init>(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/android/sku/data/AliXSkuAsyncTask$WorkerRunnable<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/sku/data/AliXSkuAsyncTask;


# direct methods
.method constructor <init>(Lcom/taobao/android/sku/data/AliXSkuAsyncTask;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$2;->this$0:Lcom/taobao/android/sku/data/AliXSkuAsyncTask;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$WorkerRunnable;-><init>(Lcom/taobao/android/sku/data/AliXSkuAsyncTask$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$2;->this$0:Lcom/taobao/android/sku/data/AliXSkuAsyncTask;

    invoke-static {v0}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->access$200(Lcom/taobao/android/sku/data/AliXSkuAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    const/4 v2, 0x0

    .line 339
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 341
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$2;->this$0:Lcom/taobao/android/sku/data/AliXSkuAsyncTask;

    iget-object v3, p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$2;->mParams:[Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 342
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$2;->this$0:Lcom/taobao/android/sku/data/AliXSkuAsyncTask;

    invoke-static {v0, v2}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->access$400(Lcom/taobao/android/sku/data/AliXSkuAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 344
    :try_start_1
    iget-object v3, p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$2;->this$0:Lcom/taobao/android/sku/data/AliXSkuAsyncTask;

    invoke-static {v3}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->access$300(Lcom/taobao/android/sku/data/AliXSkuAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 345
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    :goto_0
    iget-object v1, p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$2;->this$0:Lcom/taobao/android/sku/data/AliXSkuAsyncTask;

    invoke-static {v1, v2}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->access$400(Lcom/taobao/android/sku/data/AliXSkuAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method
