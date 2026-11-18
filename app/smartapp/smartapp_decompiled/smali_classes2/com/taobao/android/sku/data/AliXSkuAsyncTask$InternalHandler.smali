.class Lcom/taobao/android/sku/data/AliXSkuAsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "AliXSkuAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/sku/data/AliXSkuAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 692
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 698
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$AsyncTaskResult;

    .line 699
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 705
    :cond_0
    iget-object p1, v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$AsyncTaskResult;->mTask:Lcom/taobao/android/sku/data/AliXSkuAsyncTask;

    iget-object v0, v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 702
    :cond_1
    iget-object p1, v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$AsyncTaskResult;->mTask:Lcom/taobao/android/sku/data/AliXSkuAsyncTask;

    iget-object v0, v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->access$600(Lcom/taobao/android/sku/data/AliXSkuAsyncTask;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
