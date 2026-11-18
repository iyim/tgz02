.class public abstract Lcom/alibaba/ailabs/genie/utils/task/LocalReadTask;
.super Lcom/alibaba/ailabs/genie/utils/task/Task;
.source "LocalReadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/ailabs/genie/utils/task/Task;"
    }
.end annotation


# instance fields
.field private mInputStreamable:Lcom/alibaba/ailabs/genie/utils/stream/InputStreamable;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/utils/stream/InputStreamable;Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/utils/stream/InputStreamable;",
            "Lcom/alibaba/ailabs/genie/utils/task/Task$Callback<",
            "TResult;>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/utils/task/Task;-><init>(Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;)V

    .line 23
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/task/LocalReadTask;->mInputStreamable:Lcom/alibaba/ailabs/genie/utils/stream/InputStreamable;

    return-void
.end method


# virtual methods
.method protected isSuccess(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected notifyDone(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/utils/task/LocalReadTask;->getCallback()Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/utils/task/LocalReadTask;->isSuccess(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 40
    :cond_1
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;->onFailed(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected abstract parseStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TResult;"
        }
    .end annotation
.end method

.method public run()V
    .locals 1

    .line 59
    new-instance v0, Lcom/alibaba/ailabs/genie/utils/task/LocalReadTask$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/utils/task/LocalReadTask$1;-><init>(Lcom/alibaba/ailabs/genie/utils/task/LocalReadTask;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/FileTaskPool;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected runReading()V
    .locals 2

    const/4 v0, 0x0

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/utils/task/LocalReadTask;->mInputStreamable:Lcom/alibaba/ailabs/genie/utils/stream/InputStreamable;

    invoke-interface {v1}, Lcom/alibaba/ailabs/genie/utils/stream/InputStreamable;->toInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 48
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/utils/task/LocalReadTask;->parseStream(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/utils/stream/StreamUtil;->close(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 51
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/utils/task/LocalReadTask;->notifyDone(Ljava/lang/Object;)V

    return-void

    :goto_1
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/utils/task/LocalReadTask;->notifyDone(Ljava/lang/Object;)V

    throw v1
.end method
