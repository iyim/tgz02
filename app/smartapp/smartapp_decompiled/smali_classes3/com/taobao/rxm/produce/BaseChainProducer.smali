.class public abstract Lcom/taobao/rxm/produce/BaseChainProducer;
.super Lcom/taobao/rxm/produce/ChainProducer;
.source "BaseChainProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OUT:",
        "Ljava/lang/Object;",
        "NEXT_OUT::",
        "Lcom/taobao/rxm/common/Releasable;",
        "CONTEXT:",
        "Lcom/taobao/rxm/request/RequestContext;",
        ">",
        "Lcom/taobao/rxm/produce/ChainProducer<",
        "TOUT;TNEXT_OUT;TCONTEXT;>;"
    }
.end annotation


# instance fields
.field private mActionPool:Lcom/taobao/rxm/schedule/ScheduledActionPool;

.field private mDelegateConsumerPool:Lcom/taobao/rxm/consume/DelegateConsumerPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/rxm/consume/DelegateConsumerPool<",
            "TOUT;TNEXT_OUT;TCONTEXT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, v0, p1, p2}, Lcom/taobao/rxm/produce/BaseChainProducer;-><init>(Ljava/lang/String;II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/rxm/produce/ChainProducer;-><init>(Ljava/lang/String;II)V

    .line 27
    new-instance p1, Lcom/taobao/rxm/schedule/ScheduledActionPool;

    invoke-direct {p1}, Lcom/taobao/rxm/schedule/ScheduledActionPool;-><init>()V

    iput-object p1, p0, Lcom/taobao/rxm/produce/BaseChainProducer;->mActionPool:Lcom/taobao/rxm/schedule/ScheduledActionPool;

    .line 28
    new-instance p1, Lcom/taobao/rxm/consume/DelegateConsumerPool;

    invoke-direct {p1}, Lcom/taobao/rxm/consume/DelegateConsumerPool;-><init>()V

    iput-object p1, p0, Lcom/taobao/rxm/produce/BaseChainProducer;->mDelegateConsumerPool:Lcom/taobao/rxm/consume/DelegateConsumerPool;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/rxm/produce/BaseChainProducer;Lcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;Lcom/taobao/rxm/schedule/ScheduledAction;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/rxm/produce/BaseChainProducer;->dispatchResultByType(Lcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;Lcom/taobao/rxm/schedule/ScheduledAction;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private dispatchResultByType(Lcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;Lcom/taobao/rxm/schedule/ScheduledAction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/consume/Consumer<",
            "TOUT;TCONTEXT;>;",
            "Lcom/taobao/rxm/schedule/ScheduleResultWrapper<",
            "TNEXT_OUT;>;",
            "Lcom/taobao/rxm/schedule/ScheduledAction;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p2, :cond_2

    .line 58
    invoke-interface {p1}, Lcom/taobao/rxm/consume/Consumer;->getContext()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/taobao/rxm/request/RequestContext;

    invoke-virtual {p2}, Lcom/taobao/rxm/request/RequestContext;->isCancelled()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    .line 59
    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    invoke-interface {p1}, Lcom/taobao/rxm/consume/Consumer;->getContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/rxm/request/RequestContext;

    invoke-virtual {v1}, Lcom/taobao/rxm/request/RequestContext;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, p3

    invoke-virtual {p0}, Lcom/taobao/rxm/produce/BaseChainProducer;->getName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v0

    const/4 p3, 0x2

    invoke-virtual {p0}, Lcom/taobao/rxm/produce/BaseChainProducer;->getProduceType()I

    move-result v0

    invoke-static {v0}, Lcom/taobao/rxm/produce/ProduceType;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p3

    const-string p3, "RxSysLog"

    const-string v0, "[ChainProducer] ID=%d cancelled before conducting result, producer=%s type=%s"

    invoke-static {p3, v0, p2}, Lcom/taobao/tcommon/log/FLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-interface {p1}, Lcom/taobao/rxm/consume/Consumer;->onCancellation()V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/taobao/rxm/produce/BaseChainProducer;->conductResult(Lcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduledAction;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/taobao/rxm/produce/BaseChainProducer;->getProduceType()I

    move-result p2

    if-ne p2, v0, :cond_1

    .line 62
    invoke-direct {p0, p1}, Lcom/taobao/rxm/produce/BaseChainProducer;->leadToNextProducer(Lcom/taobao/rxm/consume/Consumer;)V

    :cond_1
    :goto_0
    return-void

    .line 67
    :cond_2
    iget p3, p2, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;->consumeType:I

    if-eq p3, v0, :cond_6

    const/4 v0, 0x4

    if-eq p3, v0, :cond_5

    const/16 v0, 0x8

    if-eq p3, v0, :cond_4

    const/16 v0, 0x10

    if-eq p3, v0, :cond_3

    goto :goto_1

    .line 75
    :cond_3
    iget-object p2, p2, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;->throwable:Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/rxm/produce/BaseChainProducer;->consumeFailure(Lcom/taobao/rxm/consume/Consumer;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 78
    :cond_4
    invoke-virtual {p0, p1}, Lcom/taobao/rxm/produce/BaseChainProducer;->consumeCancellation(Lcom/taobao/rxm/consume/Consumer;)V

    goto :goto_1

    .line 72
    :cond_5
    iget p2, p2, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;->progress:F

    invoke-virtual {p0, p1, p2}, Lcom/taobao/rxm/produce/BaseChainProducer;->consumeProgressUpdate(Lcom/taobao/rxm/consume/Consumer;F)V

    goto :goto_1

    .line 69
    :cond_6
    iget-boolean p3, p2, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;->isLast:Z

    iget-object p2, p2, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;->newResult:Ljava/lang/Object;

    check-cast p2, Lcom/taobao/rxm/common/Releasable;

    invoke-virtual {p0, p1, p3, p2}, Lcom/taobao/rxm/produce/BaseChainProducer;->consumeNewResult(Lcom/taobao/rxm/consume/Consumer;ZLcom/taobao/rxm/common/Releasable;)V

    :goto_1
    return-void
.end method

.method private getDelegatingConsumer(Lcom/taobao/rxm/consume/Consumer;)Lcom/taobao/rxm/consume/ChainDelegateConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/consume/Consumer<",
            "TOUT;TCONTEXT;>;)",
            "Lcom/taobao/rxm/consume/ChainDelegateConsumer<",
            "TOUT;TNEXT_OUT;TCONTEXT;>;"
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lcom/taobao/rxm/produce/BaseChainProducer;->getDelegateConsumerPool()Lcom/taobao/rxm/consume/DelegateConsumerPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/rxm/consume/DelegateConsumerPool;->offer()Lcom/taobao/rxm/consume/ChainDelegateConsumer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0, p1, p0}, Lcom/taobao/rxm/consume/ChainDelegateConsumer;->reset(Lcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/produce/ChainProducer;)Lcom/taobao/rxm/consume/ChainDelegateConsumer;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/taobao/rxm/consume/ChainDelegateConsumer;

    invoke-direct {v0, p1, p0}, Lcom/taobao/rxm/consume/ChainDelegateConsumer;-><init>(Lcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/produce/ChainProducer;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private leadToNextProducer(Lcom/taobao/rxm/consume/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/consume/Consumer<",
            "TOUT;TCONTEXT;>;)V"
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/taobao/rxm/produce/BaseChainProducer;->getNextProducer()Lcom/taobao/rxm/produce/Producer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/taobao/rxm/produce/BaseChainProducer;->getNextProducer()Lcom/taobao/rxm/produce/Producer;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/taobao/rxm/produce/BaseChainProducer;->getDelegatingConsumer(Lcom/taobao/rxm/consume/Consumer;)Lcom/taobao/rxm/consume/ChainDelegateConsumer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/taobao/rxm/produce/BaseChainProducer;->getConsumeScheduler()Lcom/taobao/rxm/schedule/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/taobao/rxm/consume/ChainDelegateConsumer;->consumeOn(Lcom/taobao/rxm/schedule/Scheduler;)Lcom/taobao/rxm/consume/Consumer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/taobao/rxm/produce/Producer;->produceResults(Lcom/taobao/rxm/consume/Consumer;)V

    return-void

    .line 104
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/taobao/rxm/produce/BaseChainProducer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can\'t conduct result while no next producer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public consumeCancellation(Lcom/taobao/rxm/consume/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/consume/Consumer<",
            "TOUT;TCONTEXT;>;)V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public consumeFailure(Lcom/taobao/rxm/consume/Consumer;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/consume/Consumer<",
            "TOUT;TCONTEXT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public consumeNewResult(Lcom/taobao/rxm/consume/Consumer;ZLcom/taobao/rxm/common/Releasable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/consume/Consumer<",
            "TOUT;TCONTEXT;>;ZTNEXT_OUT;)V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public bridge synthetic consumeNewResult(Lcom/taobao/rxm/consume/Consumer;ZLjava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p3, Lcom/taobao/rxm/common/Releasable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/rxm/produce/BaseChainProducer;->consumeNewResult(Lcom/taobao/rxm/consume/Consumer;ZLcom/taobao/rxm/common/Releasable;)V

    return-void
.end method

.method public consumeProgressUpdate(Lcom/taobao/rxm/consume/Consumer;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/consume/Consumer<",
            "TOUT;TCONTEXT;>;F)V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getDelegateConsumerPool()Lcom/taobao/rxm/consume/DelegateConsumerPool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taobao/rxm/consume/DelegateConsumerPool<",
            "TOUT;TNEXT_OUT;TCONTEXT;>;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/taobao/rxm/produce/BaseChainProducer;->mDelegateConsumerPool:Lcom/taobao/rxm/consume/DelegateConsumerPool;

    return-object v0
.end method

.method public produceResults(Lcom/taobao/rxm/consume/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/consume/Consumer<",
            "TOUT;TCONTEXT;>;)V"
        }
    .end annotation

    .line 86
    invoke-interface {p1}, Lcom/taobao/rxm/consume/Consumer;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/rxm/request/RequestContext;

    invoke-virtual {v0}, Lcom/taobao/rxm/request/RequestContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 87
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/taobao/rxm/consume/Consumer;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/rxm/request/RequestContext;

    invoke-virtual {v2}, Lcom/taobao/rxm/request/RequestContext;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/taobao/rxm/produce/BaseChainProducer;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/taobao/rxm/produce/BaseChainProducer;->getProduceType()I

    move-result v2

    invoke-static {v2}, Lcom/taobao/rxm/produce/ProduceType;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "RxSysLog"

    const-string v2, "[ChainProducer] ID=%d cancelled before leading to produce result, producer=%s type=%s"

    invoke-static {v1, v2, v0}, Lcom/taobao/tcommon/log/FLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-interface {p1}, Lcom/taobao/rxm/consume/Consumer;->onCancellation()V

    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/rxm/produce/BaseChainProducer;->getProduceType()I

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/taobao/rxm/produce/BaseChainProducer;->getProduceScheduler()Lcom/taobao/rxm/schedule/Scheduler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/taobao/rxm/produce/BaseChainProducer;->scheduleConductingResult(Lcom/taobao/rxm/schedule/Scheduler;Lcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;)V

    goto :goto_0

    .line 96
    :cond_1
    invoke-direct {p0, p1}, Lcom/taobao/rxm/produce/BaseChainProducer;->leadToNextProducer(Lcom/taobao/rxm/consume/Consumer;)V

    :goto_0
    return-void
.end method

.method protected scheduleConductingResult(Lcom/taobao/rxm/schedule/Scheduler;Lcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/schedule/Scheduler;",
            "Lcom/taobao/rxm/consume/Consumer<",
            "TOUT;TCONTEXT;>;",
            "Lcom/taobao/rxm/schedule/ScheduleResultWrapper<",
            "TNEXT_OUT;>;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p4, :cond_0

    .line 34
    invoke-interface {p1}, Lcom/taobao/rxm/schedule/Scheduler;->isScheduleMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/taobao/tcommon/core/RuntimeUtil;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/taobao/rxm/produce/BaseChainProducer;->mActionPool:Lcom/taobao/rxm/schedule/ScheduledActionPool;

    invoke-virtual {v0}, Lcom/taobao/rxm/schedule/ScheduledActionPool;->offer()Lcom/taobao/rxm/schedule/ScheduledAction;

    move-result-object v0

    if-nez v0, :cond_1

    .line 37
    new-instance v0, Lcom/taobao/rxm/produce/BaseChainProducer$1;

    invoke-interface {p2}, Lcom/taobao/rxm/consume/Consumer;->getContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/rxm/request/RequestContext;

    invoke-virtual {v1}, Lcom/taobao/rxm/request/RequestContext;->getSchedulePriority()I

    move-result v3

    move-object v1, v0

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/taobao/rxm/produce/BaseChainProducer$1;-><init>(Lcom/taobao/rxm/produce/BaseChainProducer;ILcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;Z)V

    .line 43
    iget-object p2, p0, Lcom/taobao/rxm/produce/BaseChainProducer;->mActionPool:Lcom/taobao/rxm/schedule/ScheduledActionPool;

    invoke-virtual {v0, p2}, Lcom/taobao/rxm/schedule/ScheduledAction;->setScheduledActionPool(Lcom/taobao/rxm/schedule/ScheduledActionPool;)V

    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {p2}, Lcom/taobao/rxm/consume/Consumer;->getContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/rxm/request/RequestContext;

    invoke-virtual {v1}, Lcom/taobao/rxm/request/RequestContext;->getSchedulePriority()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/taobao/rxm/schedule/ScheduledAction;->reset(ILcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;Z)Lcom/taobao/rxm/schedule/ScheduledAction;

    .line 47
    :goto_0
    invoke-interface {p1, v0}, Lcom/taobao/rxm/schedule/Scheduler;->schedule(Lcom/taobao/rxm/schedule/ScheduledAction;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 50
    invoke-direct {p0, p2, p3, p1}, Lcom/taobao/rxm/produce/BaseChainProducer;->dispatchResultByType(Lcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;Lcom/taobao/rxm/schedule/ScheduledAction;)V

    :goto_1
    return-void
.end method
