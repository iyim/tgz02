.class Lanetwork/channel/unified/RequestContext;
.super Ljava/lang/Object;
.source "RequestContext.java"


# instance fields
.field public callback:Lanetwork/channel/interceptor/Callback;

.field public final config:Lanetwork/channel/entity/RequestConfig;

.field public volatile isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile runningTask:Lanetwork/channel/unified/IUnifiedTask;

.field public final seqNum:Ljava/lang/String;

.field public volatile timeoutTask:Ljava/util/concurrent/Future;


# direct methods
.method public constructor <init>(Lanetwork/channel/entity/RequestConfig;Lanetwork/channel/interceptor/Callback;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lanetwork/channel/unified/RequestContext;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lanetwork/channel/unified/RequestContext;->runningTask:Lanetwork/channel/unified/IUnifiedTask;

    .line 22
    iput-object v0, p0, Lanetwork/channel/unified/RequestContext;->timeoutTask:Ljava/util/concurrent/Future;

    .line 25
    iput-object p1, p0, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    .line 26
    iget-object p1, p1, Lanetwork/channel/entity/RequestConfig;->seqNo:Ljava/lang/String;

    iput-object p1, p0, Lanetwork/channel/unified/RequestContext;->seqNum:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lanetwork/channel/unified/RequestContext;->callback:Lanetwork/channel/interceptor/Callback;

    return-void
.end method


# virtual methods
.method public cancelRunningTask()V
    .locals 1

    .line 39
    iget-object v0, p0, Lanetwork/channel/unified/RequestContext;->runningTask:Lanetwork/channel/unified/IUnifiedTask;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lanetwork/channel/unified/RequestContext;->runningTask:Lanetwork/channel/unified/IUnifiedTask;

    invoke-interface {v0}, Lanetwork/channel/unified/IUnifiedTask;->cancel()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lanetwork/channel/unified/RequestContext;->runningTask:Lanetwork/channel/unified/IUnifiedTask;

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public cancelTimeoutTask()V
    .locals 2

    .line 31
    iget-object v0, p0, Lanetwork/channel/unified/RequestContext;->timeoutTask:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 33
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lanetwork/channel/unified/RequestContext;->timeoutTask:Ljava/util/concurrent/Future;

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
