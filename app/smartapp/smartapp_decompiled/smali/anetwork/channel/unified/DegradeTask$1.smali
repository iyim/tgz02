.class Lanetwork/channel/unified/DegradeTask$1;
.super Ljava/lang/Object;
.source "DegradeTask.java"

# interfaces
.implements Lanet/channel/RequestCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanetwork/channel/unified/DegradeTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanetwork/channel/unified/DegradeTask;


# direct methods
.method constructor <init>(Lanetwork/channel/unified/DegradeTask;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lanetwork/channel/unified/DegradeTask$1;->this$0:Lanetwork/channel/unified/DegradeTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceive(Lanet/channel/bytes/ByteArray;Z)V
    .locals 2

    .line 86
    iget-object p2, p0, Lanetwork/channel/unified/DegradeTask$1;->this$0:Lanetwork/channel/unified/DegradeTask;

    invoke-static {p2}, Lanetwork/channel/unified/DegradeTask;->access$000(Lanetwork/channel/unified/DegradeTask;)Lanetwork/channel/unified/RequestContext;

    move-result-object p2

    iget-object p2, p2, Lanetwork/channel/unified/RequestContext;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object p2, p0, Lanetwork/channel/unified/DegradeTask$1;->this$0:Lanetwork/channel/unified/DegradeTask;

    invoke-static {p2}, Lanetwork/channel/unified/DegradeTask;->access$208(Lanetwork/channel/unified/DegradeTask;)I

    .line 90
    iget-object p2, p0, Lanetwork/channel/unified/DegradeTask$1;->this$0:Lanetwork/channel/unified/DegradeTask;

    invoke-static {p2}, Lanetwork/channel/unified/DegradeTask;->access$000(Lanetwork/channel/unified/DegradeTask;)Lanetwork/channel/unified/RequestContext;

    move-result-object p2

    iget-object p2, p2, Lanetwork/channel/unified/RequestContext;->callback:Lanetwork/channel/interceptor/Callback;

    if-eqz p2, :cond_1

    .line 91
    iget-object p2, p0, Lanetwork/channel/unified/DegradeTask$1;->this$0:Lanetwork/channel/unified/DegradeTask;

    invoke-static {p2}, Lanetwork/channel/unified/DegradeTask;->access$000(Lanetwork/channel/unified/DegradeTask;)Lanetwork/channel/unified/RequestContext;

    move-result-object p2

    iget-object p2, p2, Lanetwork/channel/unified/RequestContext;->callback:Lanetwork/channel/interceptor/Callback;

    iget-object v0, p0, Lanetwork/channel/unified/DegradeTask$1;->this$0:Lanetwork/channel/unified/DegradeTask;

    invoke-static {v0}, Lanetwork/channel/unified/DegradeTask;->access$200(Lanetwork/channel/unified/DegradeTask;)I

    move-result v0

    iget-object v1, p0, Lanetwork/channel/unified/DegradeTask$1;->this$0:Lanetwork/channel/unified/DegradeTask;

    invoke-static {v1}, Lanetwork/channel/unified/DegradeTask;->access$100(Lanetwork/channel/unified/DegradeTask;)I

    move-result v1

    invoke-interface {p2, v0, v1, p1}, Lanetwork/channel/interceptor/Callback;->onDataReceiveSize(IILanet/channel/bytes/ByteArray;)V

    :cond_1
    return-void
.end method

.method public onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V
    .locals 6

    .line 97
    iget-object v0, p0, Lanetwork/channel/unified/DegradeTask$1;->this$0:Lanetwork/channel/unified/DegradeTask;

    invoke-static {v0}, Lanetwork/channel/unified/DegradeTask;->access$000(Lanetwork/channel/unified/DegradeTask;)Lanetwork/channel/unified/RequestContext;

    move-result-object v0

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 100
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    iget-object v2, p0, Lanetwork/channel/unified/DegradeTask$1;->this$0:Lanetwork/channel/unified/DegradeTask;

    invoke-static {v2}, Lanetwork/channel/unified/DegradeTask;->access$000(Lanetwork/channel/unified/DegradeTask;)Lanetwork/channel/unified/RequestContext;

    move-result-object v2

    iget-object v2, v2, Lanetwork/channel/unified/RequestContext;->seqNum:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "code"

    aput-object v5, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "msg"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object p2, v3, v0

    const-string v0, "anet.DegradeTask"

    const-string v4, "[onFinish]"

    invoke-static {v0, v4, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    :cond_1
    iget-object v0, p0, Lanetwork/channel/unified/DegradeTask$1;->this$0:Lanetwork/channel/unified/DegradeTask;

    invoke-static {v0}, Lanetwork/channel/unified/DegradeTask;->access$000(Lanetwork/channel/unified/DegradeTask;)Lanetwork/channel/unified/RequestContext;

    move-result-object v0

    invoke-virtual {v0}, Lanetwork/channel/unified/RequestContext;->cancelTimeoutTask()V

    .line 104
    iget-object v0, p3, Lanet/channel/statist/RequestStatistic;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 105
    iget-object v0, p0, Lanetwork/channel/unified/DegradeTask$1;->this$0:Lanetwork/channel/unified/DegradeTask;

    invoke-static {v0}, Lanetwork/channel/unified/DegradeTask;->access$000(Lanetwork/channel/unified/DegradeTask;)Lanetwork/channel/unified/RequestContext;

    move-result-object v0

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->callback:Lanetwork/channel/interceptor/Callback;

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lanetwork/channel/unified/DegradeTask$1;->this$0:Lanetwork/channel/unified/DegradeTask;

    invoke-static {v0}, Lanetwork/channel/unified/DegradeTask;->access$000(Lanetwork/channel/unified/DegradeTask;)Lanetwork/channel/unified/RequestContext;

    move-result-object v0

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->callback:Lanetwork/channel/interceptor/Callback;

    new-instance v1, Lanetwork/channel/aidl/DefaultFinishEvent;

    invoke-direct {v1, p1, p2, p3}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    invoke-interface {v0, v1}, Lanetwork/channel/interceptor/Callback;->onFinish(Lanetwork/channel/aidl/DefaultFinishEvent;)V

    :cond_2
    return-void
.end method

.method public onResponseCode(ILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lanetwork/channel/unified/DegradeTask$1;->this$0:Lanetwork/channel/unified/DegradeTask;

    invoke-static {v0}, Lanetwork/channel/unified/DegradeTask;->access$000(Lanetwork/channel/unified/DegradeTask;)Lanetwork/channel/unified/RequestContext;

    move-result-object v0

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lanetwork/channel/unified/DegradeTask$1;->this$0:Lanetwork/channel/unified/DegradeTask;

    invoke-static {v0}, Lanetwork/channel/unified/DegradeTask;->access$000(Lanetwork/channel/unified/DegradeTask;)Lanetwork/channel/unified/RequestContext;

    move-result-object v0

    invoke-virtual {v0}, Lanetwork/channel/unified/RequestContext;->cancelTimeoutTask()V

    .line 77
    iget-object v0, p0, Lanetwork/channel/unified/DegradeTask$1;->this$0:Lanetwork/channel/unified/DegradeTask;

    invoke-static {v0}, Lanetwork/channel/unified/DegradeTask;->access$000(Lanetwork/channel/unified/DegradeTask;)Lanetwork/channel/unified/RequestContext;

    move-result-object v0

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->getUrlString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lanetwork/channel/cookie/CookieManager;->setCookie(Ljava/lang/String;Ljava/util/Map;)V

    .line 78
    iget-object v0, p0, Lanetwork/channel/unified/DegradeTask$1;->this$0:Lanetwork/channel/unified/DegradeTask;

    invoke-static {p2}, Lanet/channel/util/HttpHelper;->parseContentLength(Ljava/util/Map;)I

    move-result v1

    invoke-static {v0, v1}, Lanetwork/channel/unified/DegradeTask;->access$102(Lanetwork/channel/unified/DegradeTask;I)I

    .line 79
    iget-object v0, p0, Lanetwork/channel/unified/DegradeTask$1;->this$0:Lanetwork/channel/unified/DegradeTask;

    invoke-static {v0}, Lanetwork/channel/unified/DegradeTask;->access$000(Lanetwork/channel/unified/DegradeTask;)Lanetwork/channel/unified/RequestContext;

    move-result-object v0

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->callback:Lanetwork/channel/interceptor/Callback;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lanetwork/channel/unified/DegradeTask$1;->this$0:Lanetwork/channel/unified/DegradeTask;

    invoke-static {v0}, Lanetwork/channel/unified/DegradeTask;->access$000(Lanetwork/channel/unified/DegradeTask;)Lanetwork/channel/unified/RequestContext;

    move-result-object v0

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->callback:Lanetwork/channel/interceptor/Callback;

    invoke-interface {v0, p1, p2}, Lanetwork/channel/interceptor/Callback;->onResponseCode(ILjava/util/Map;)V

    :cond_1
    return-void
.end method
