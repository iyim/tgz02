.class final Lcom/taobao/zcache/network/DownloadTask$2;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/zcache/network/DownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    .line 76
    invoke-static {}, Lcom/taobao/zcache/network/DownloadTask;->access$000()Ljava/util/concurrent/PriorityBlockingQueue;

    move-result-object p2

    check-cast p1, Lcom/taobao/zcache/network/DownloadTask;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->put(Ljava/lang/Object;)V

    return-void
.end method
