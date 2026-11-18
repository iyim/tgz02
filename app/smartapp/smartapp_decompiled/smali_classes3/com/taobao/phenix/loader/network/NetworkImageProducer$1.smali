.class Lcom/taobao/phenix/loader/network/NetworkImageProducer$1;
.super Ljava/lang/Object;
.source "NetworkImageProducer.java"

# interfaces
.implements Lcom/taobao/phenix/loader/network/HttpLoader$FinishCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/phenix/loader/network/NetworkImageProducer;->conductResult(Lcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduledAction;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/phenix/loader/network/NetworkImageProducer;

.field final synthetic val$conductThreadId:J

.field final synthetic val$consumer:Lcom/taobao/rxm/consume/Consumer;


# direct methods
.method constructor <init>(Lcom/taobao/phenix/loader/network/NetworkImageProducer;JLcom/taobao/rxm/consume/Consumer;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/taobao/phenix/loader/network/NetworkImageProducer$1;->this$0:Lcom/taobao/phenix/loader/network/NetworkImageProducer;

    iput-wide p2, p0, Lcom/taobao/phenix/loader/network/NetworkImageProducer$1;->val$conductThreadId:J

    iput-object p4, p0, Lcom/taobao/phenix/loader/network/NetworkImageProducer$1;->val$consumer:Lcom/taobao/rxm/consume/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/taobao/phenix/loader/network/NetworkImageProducer$1;->this$0:Lcom/taobao/phenix/loader/network/NetworkImageProducer;

    iget-object v1, p0, Lcom/taobao/phenix/loader/network/NetworkImageProducer$1;->val$consumer:Lcom/taobao/rxm/consume/Consumer;

    invoke-interface {v1}, Lcom/taobao/rxm/consume/Consumer;->getContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/phenix/request/ImageRequest;

    invoke-virtual {v1}, Lcom/taobao/phenix/request/ImageRequest;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/taobao/phenix/loader/network/NetworkImageProducer;->access$000(Lcom/taobao/phenix/loader/network/NetworkImageProducer;I)V

    .line 115
    iget-object v0, p0, Lcom/taobao/phenix/loader/network/NetworkImageProducer$1;->val$consumer:Lcom/taobao/rxm/consume/Consumer;

    invoke-interface {v0, p1}, Lcom/taobao/rxm/consume/Consumer;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onFinished(Lcom/taobao/phenix/entity/ResponseData;)V
    .locals 7

    .line 91
    iget-wide v0, p0, Lcom/taobao/phenix/loader/network/NetworkImageProducer$1;->val$conductThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmp-long v6, v0, v2

    if-eqz v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 92
    :goto_0
    iget-object v1, p0, Lcom/taobao/phenix/loader/network/NetworkImageProducer$1;->val$consumer:Lcom/taobao/rxm/consume/Consumer;

    invoke-interface {v1}, Lcom/taobao/rxm/consume/Consumer;->getContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/phenix/request/ImageRequest;

    .line 93
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "inner_is_async_http"

    invoke-virtual {v1, v3, v2}, Lcom/taobao/phenix/request/ImageRequest;->addLoaderExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1}, Lcom/taobao/phenix/request/ImageRequest;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    new-array v0, v4, [Ljava/lang/Object;

    const-string v2, "Network"

    const-string v3, "request is cancelled before consuming response data"

    invoke-static {v2, v1, v3, v0}, Lcom/taobao/phenix/common/UnitedLog;->i(Ljava/lang/String;Lcom/taobao/phenix/request/ImageRequest;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/taobao/phenix/loader/network/NetworkImageProducer$1;->val$consumer:Lcom/taobao/rxm/consume/Consumer;

    invoke-interface {v0}, Lcom/taobao/rxm/consume/Consumer;->onCancellation()V

    .line 98
    invoke-virtual {p1}, Lcom/taobao/phenix/entity/ResponseData;->release()V

    .line 100
    iget-object p1, p0, Lcom/taobao/phenix/loader/network/NetworkImageProducer$1;->this$0:Lcom/taobao/phenix/loader/network/NetworkImageProducer;

    invoke-virtual {v1}, Lcom/taobao/phenix/request/ImageRequest;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/taobao/phenix/loader/network/NetworkImageProducer;->access$000(Lcom/taobao/phenix/loader/network/NetworkImageProducer;I)V

    return-void

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/taobao/phenix/loader/network/NetworkImageProducer$1;->this$0:Lcom/taobao/phenix/loader/network/NetworkImageProducer;

    iget-object v2, p0, Lcom/taobao/phenix/loader/network/NetworkImageProducer$1;->val$consumer:Lcom/taobao/rxm/consume/Consumer;

    invoke-static {v1, v2, v5}, Lcom/taobao/phenix/loader/network/NetworkImageProducer;->access$100(Lcom/taobao/phenix/loader/network/NetworkImageProducer;Lcom/taobao/rxm/consume/Consumer;Z)V

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/taobao/phenix/loader/network/NetworkImageProducer$1;->this$0:Lcom/taobao/phenix/loader/network/NetworkImageProducer;

    iget-object v1, p0, Lcom/taobao/phenix/loader/network/NetworkImageProducer$1;->val$consumer:Lcom/taobao/rxm/consume/Consumer;

    invoke-virtual {v0, v1, v5, p1, v4}, Lcom/taobao/phenix/loader/network/NetworkImageProducer;->scheduleNewResult(Lcom/taobao/rxm/consume/Consumer;ZLcom/taobao/rxm/common/Releasable;Z)V

    goto :goto_1

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/taobao/phenix/loader/network/NetworkImageProducer$1;->this$0:Lcom/taobao/phenix/loader/network/NetworkImageProducer;

    iget-object v1, p0, Lcom/taobao/phenix/loader/network/NetworkImageProducer$1;->val$consumer:Lcom/taobao/rxm/consume/Consumer;

    invoke-virtual {v0, v1, v5, p1}, Lcom/taobao/phenix/loader/network/NetworkImageProducer;->consumeNewResult(Lcom/taobao/rxm/consume/Consumer;ZLcom/taobao/phenix/entity/ResponseData;)V

    :goto_1
    return-void
.end method
