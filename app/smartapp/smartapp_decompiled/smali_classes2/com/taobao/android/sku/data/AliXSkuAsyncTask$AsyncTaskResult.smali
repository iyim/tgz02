.class Lcom/taobao/android/sku/data/AliXSkuAsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "AliXSkuAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/sku/data/AliXSkuAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/taobao/android/sku/data/AliXSkuAsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/taobao/android/sku/data/AliXSkuAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/sku/data/AliXSkuAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 721
    iput-object p1, p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$AsyncTaskResult;->mTask:Lcom/taobao/android/sku/data/AliXSkuAsyncTask;

    .line 722
    iput-object p2, p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    return-void
.end method
