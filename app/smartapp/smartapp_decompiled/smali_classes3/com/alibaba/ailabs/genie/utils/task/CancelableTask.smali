.class public abstract Lcom/alibaba/ailabs/genie/utils/task/CancelableTask;
.super Ljava/lang/Object;
.source "CancelableTask.java"


# instance fields
.field public mFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public abstract Run()V
.end method

.method public cancel()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/CancelableTask;->mFuture:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/CancelableTask;->mFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/CancelableTask;->mFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/CancelableTask;->mFuture:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 71
    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/CancelableTask;->mFuture:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 89
    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    return v0
.end method

.method public isPost()Z
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/CancelableTask;->mFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
