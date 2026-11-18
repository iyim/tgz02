.class Lanetwork/channel/unified/UnifiedRequestTask$UnifiedRequestChain;
.super Ljava/lang/Object;
.source "UnifiedRequestTask.java"

# interfaces
.implements Lanetwork/channel/interceptor/Interceptor$Chain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/unified/UnifiedRequestTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnifiedRequestChain"
.end annotation


# instance fields
.field private callback:Lanetwork/channel/interceptor/Callback;

.field private index:I

.field private request:Lanet/channel/request/Request;

.field final synthetic this$0:Lanetwork/channel/unified/UnifiedRequestTask;


# direct methods
.method constructor <init>(Lanetwork/channel/unified/UnifiedRequestTask;ILanet/channel/request/Request;Lanetwork/channel/interceptor/Callback;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lanetwork/channel/unified/UnifiedRequestTask$UnifiedRequestChain;->this$0:Lanetwork/channel/unified/UnifiedRequestTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lanetwork/channel/unified/UnifiedRequestTask$UnifiedRequestChain;->index:I

    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lanetwork/channel/unified/UnifiedRequestTask$UnifiedRequestChain;->request:Lanet/channel/request/Request;

    .line 49
    iput-object p1, p0, Lanetwork/channel/unified/UnifiedRequestTask$UnifiedRequestChain;->callback:Lanetwork/channel/interceptor/Callback;

    .line 52
    iput p2, p0, Lanetwork/channel/unified/UnifiedRequestTask$UnifiedRequestChain;->index:I

    .line 53
    iput-object p3, p0, Lanetwork/channel/unified/UnifiedRequestTask$UnifiedRequestChain;->request:Lanet/channel/request/Request;

    .line 54
    iput-object p4, p0, Lanetwork/channel/unified/UnifiedRequestTask$UnifiedRequestChain;->callback:Lanetwork/channel/interceptor/Callback;

    return-void
.end method


# virtual methods
.method public callback()Lanetwork/channel/interceptor/Callback;
    .locals 1

    .line 64
    iget-object v0, p0, Lanetwork/channel/unified/UnifiedRequestTask$UnifiedRequestChain;->callback:Lanetwork/channel/interceptor/Callback;

    return-object v0
.end method

.method public proceed(Lanet/channel/request/Request;Lanetwork/channel/interceptor/Callback;)Ljava/util/concurrent/Future;
    .locals 3

    .line 69
    iget-object v0, p0, Lanetwork/channel/unified/UnifiedRequestTask$UnifiedRequestChain;->this$0:Lanetwork/channel/unified/UnifiedRequestTask;

    iget-object v0, v0, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "anet.UnifiedRequestTask"

    const-string/jumbo v2, "request canneled or timeout in processing interceptor"

    invoke-static {v0, v2, p1, p2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 73
    :cond_0
    iget v0, p0, Lanetwork/channel/unified/UnifiedRequestTask$UnifiedRequestChain;->index:I

    invoke-static {}, Lanetwork/channel/interceptor/InterceptorManager;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 74
    new-instance v0, Lanetwork/channel/unified/UnifiedRequestTask$UnifiedRequestChain;

    iget-object v1, p0, Lanetwork/channel/unified/UnifiedRequestTask$UnifiedRequestChain;->this$0:Lanetwork/channel/unified/UnifiedRequestTask;

    iget v2, p0, Lanetwork/channel/unified/UnifiedRequestTask$UnifiedRequestChain;->index:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2, p1, p2}, Lanetwork/channel/unified/UnifiedRequestTask$UnifiedRequestChain;-><init>(Lanetwork/channel/unified/UnifiedRequestTask;ILanet/channel/request/Request;Lanetwork/channel/interceptor/Callback;)V

    .line 75
    iget p1, p0, Lanetwork/channel/unified/UnifiedRequestTask$UnifiedRequestChain;->index:I

    invoke-static {p1}, Lanetwork/channel/interceptor/InterceptorManager;->getInterceptor(I)Lanetwork/channel/interceptor/Interceptor;

    move-result-object p1

    invoke-interface {p1, v0}, Lanetwork/channel/interceptor/Interceptor;->intercept(Lanetwork/channel/interceptor/Interceptor$Chain;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1

    .line 77
    :cond_1
    iget-object v0, p0, Lanetwork/channel/unified/UnifiedRequestTask$UnifiedRequestChain;->this$0:Lanetwork/channel/unified/UnifiedRequestTask;

    iget-object v0, v0, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0, p1}, Lanetwork/channel/entity/RequestConfig;->setAwcnRequest(Lanet/channel/request/Request;)V

    .line 78
    iget-object p1, p0, Lanetwork/channel/unified/UnifiedRequestTask$UnifiedRequestChain;->this$0:Lanetwork/channel/unified/UnifiedRequestTask;

    iget-object p1, p1, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    iput-object p2, p1, Lanetwork/channel/unified/RequestContext;->callback:Lanetwork/channel/interceptor/Callback;

    .line 81
    invoke-static {}, Lanetwork/channel/config/NetworkConfigCenter;->isHttpCacheEnable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 82
    iget-object p1, p0, Lanetwork/channel/unified/UnifiedRequestTask$UnifiedRequestChain;->this$0:Lanetwork/channel/unified/UnifiedRequestTask;

    iget-object p1, p1, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object p1, p1, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {p1}, Lanetwork/channel/entity/RequestConfig;->getUrlString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lanetwork/channel/unified/UnifiedRequestTask$UnifiedRequestChain;->this$0:Lanetwork/channel/unified/UnifiedRequestTask;

    iget-object p2, p2, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object p2, p2, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {p2}, Lanetwork/channel/entity/RequestConfig;->getHeaders()Ljava/util/Map;

    move-result-object p2

    invoke-static {p1, p2}, Lanetwork/channel/cache/CacheManager;->getCache(Ljava/lang/String;Ljava/util/Map;)Lanetwork/channel/cache/Cache;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 85
    :goto_0
    iget-object p2, p0, Lanetwork/channel/unified/UnifiedRequestTask$UnifiedRequestChain;->this$0:Lanetwork/channel/unified/UnifiedRequestTask;

    iget-object p2, p2, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    if-eqz p1, :cond_3

    new-instance v0, Lanetwork/channel/unified/CacheTask;

    iget-object v2, p0, Lanetwork/channel/unified/UnifiedRequestTask$UnifiedRequestChain;->this$0:Lanetwork/channel/unified/UnifiedRequestTask;

    iget-object v2, v2, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    invoke-direct {v0, v2, p1}, Lanetwork/channel/unified/CacheTask;-><init>(Lanetwork/channel/unified/RequestContext;Lanetwork/channel/cache/Cache;)V

    goto :goto_1

    :cond_3
    new-instance v0, Lanetwork/channel/unified/NetworkTask;

    iget-object p1, p0, Lanetwork/channel/unified/UnifiedRequestTask$UnifiedRequestChain;->this$0:Lanetwork/channel/unified/UnifiedRequestTask;

    iget-object p1, p1, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    invoke-direct {v0, p1, v1, v1}, Lanetwork/channel/unified/NetworkTask;-><init>(Lanetwork/channel/unified/RequestContext;Lanetwork/channel/cache/Cache;Lanetwork/channel/cache/Cache$Entry;)V

    :goto_1
    iput-object v0, p2, Lanetwork/channel/unified/RequestContext;->runningTask:Lanetwork/channel/unified/IUnifiedTask;

    .line 87
    iget-object p1, p0, Lanetwork/channel/unified/UnifiedRequestTask$UnifiedRequestChain;->this$0:Lanetwork/channel/unified/UnifiedRequestTask;

    iget-object p1, p1, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object p1, p1, Lanetwork/channel/unified/RequestContext;->runningTask:Lanetwork/channel/unified/IUnifiedTask;

    invoke-interface {p1}, Lanetwork/channel/unified/IUnifiedTask;->run()V

    .line 88
    iget-object p1, p0, Lanetwork/channel/unified/UnifiedRequestTask$UnifiedRequestChain;->this$0:Lanetwork/channel/unified/UnifiedRequestTask;

    invoke-static {p1}, Lanetwork/channel/unified/UnifiedRequestTask;->access$000(Lanetwork/channel/unified/UnifiedRequestTask;)V

    return-object v1
.end method

.method public request()Lanet/channel/request/Request;
    .locals 1

    .line 59
    iget-object v0, p0, Lanetwork/channel/unified/UnifiedRequestTask$UnifiedRequestChain;->request:Lanet/channel/request/Request;

    return-object v0
.end method
