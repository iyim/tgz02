.class abstract Lcom/taobao/android/sku/data/AliXSkuAsyncTask$WorkerRunnable;
.super Ljava/lang/Object;
.source "AliXSkuAsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/sku/data/AliXSkuAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "WorkerRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field mParams:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TParams;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/taobao/android/sku/data/AliXSkuAsyncTask$1;)V
    .locals 0

    .line 711
    invoke-direct {p0}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$WorkerRunnable;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
