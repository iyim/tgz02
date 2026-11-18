.class public abstract Lcom/taobao/rxm/produce/ChainProducer;
.super Ljava/lang/Object;
.source "ChainProducer.java"

# interfaces
.implements Lcom/taobao/rxm/produce/Producer;
.implements Lcom/taobao/rxm/consume/ChainConsumer;


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
        "Ljava/lang/Object;",
        "Lcom/taobao/rxm/produce/Producer<",
        "TOUT;TCONTEXT;>;",
        "Lcom/taobao/rxm/consume/ChainConsumer<",
        "TOUT;TNEXT_OUT;TCONTEXT;>;"
    }
.end annotation


# instance fields
.field private mConsumeScheduler:Lcom/taobao/rxm/schedule/Scheduler;

.field private final mConsumeType:Lcom/taobao/rxm/consume/ConsumeType;

.field private mGenericTypes:[Ljava/lang/reflect/Type;

.field private final mName:Ljava/lang/String;

.field private mNextProducer:Lcom/taobao/rxm/produce/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/rxm/produce/Producer<",
            "TNEXT_OUT;TCONTEXT;>;"
        }
    .end annotation
.end field

.field private mProduceScheduler:Lcom/taobao/rxm/schedule/Scheduler;

.field private final mProduceType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-direct {p0, p1}, Lcom/taobao/rxm/produce/ChainProducer;->getDefaultName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/rxm/produce/ChainProducer;->mName:Ljava/lang/String;

    .line 37
    iput p2, p0, Lcom/taobao/rxm/produce/ChainProducer;->mProduceType:I

    .line 38
    new-instance p1, Lcom/taobao/rxm/consume/ConsumeType;

    invoke-direct {p1, p3}, Lcom/taobao/rxm/consume/ConsumeType;-><init>(I)V

    iput-object p1, p0, Lcom/taobao/rxm/produce/ChainProducer;->mConsumeType:Lcom/taobao/rxm/consume/ConsumeType;

    return-void
.end method

.method private ensureGenericTypes()Z
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/taobao/rxm/produce/ChainProducer;->mGenericTypes:[Ljava/lang/reflect/Type;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 142
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/rxm/produce/ChainProducer;->mGenericTypes:[Ljava/lang/reflect/Type;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 144
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "RxSysLog"

    const-string v3, "chain producer get generic types error=%s"

    invoke-static {v0, v3, v1}, Lcom/taobao/tcommon/log/FLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    :goto_0
    return v1
.end method

.method private getDefaultName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 45
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2e

    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private isChainEndNode()Z
    .locals 2

    .line 55
    iget v0, p0, Lcom/taobao/rxm/produce/ChainProducer;->mProduceType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onProduceFinish(Lcom/taobao/rxm/consume/Consumer;ZZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/consume/Consumer<",
            "TOUT;TCONTEXT;>;ZZZ)V"
        }
    .end annotation

    .line 73
    invoke-interface {p1}, Lcom/taobao/rxm/consume/Consumer;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/rxm/request/RequestContext;

    invoke-virtual {v0}, Lcom/taobao/rxm/request/RequestContext;->getProducerListener()Lcom/taobao/rxm/produce/ProducerListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 75
    invoke-interface {p1}, Lcom/taobao/rxm/consume/Consumer;->getContext()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/taobao/rxm/request/RequestContext;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/taobao/rxm/produce/ProducerListener;->onExitOut(Lcom/taobao/rxm/request/RequestContext;Ljava/lang/Class;ZZZ)V

    :cond_0
    return-void
.end method

.method private onProduceStart(Lcom/taobao/rxm/consume/Consumer;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/consume/Consumer<",
            "TOUT;TCONTEXT;>;ZZ)V"
        }
    .end annotation

    .line 65
    invoke-interface {p1}, Lcom/taobao/rxm/consume/Consumer;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/rxm/request/RequestContext;

    invoke-virtual {v0}, Lcom/taobao/rxm/request/RequestContext;->getProducerListener()Lcom/taobao/rxm/produce/ProducerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {p1}, Lcom/taobao/rxm/consume/Consumer;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/rxm/request/RequestContext;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2, p3}, Lcom/taobao/rxm/produce/ProducerListener;->onEnterIn(Lcom/taobao/rxm/request/RequestContext;Ljava/lang/Class;ZZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected conductResult(Lcom/taobao/rxm/consume/Consumer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/consume/Consumer<",
            "TOUT;TCONTEXT;>;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method protected conductResult(Lcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduledAction;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/consume/Consumer<",
            "TOUT;TCONTEXT;>;",
            "Lcom/taobao/rxm/schedule/ScheduledAction;",
            ")Z"
        }
    .end annotation

    .line 105
    invoke-virtual {p0, p1}, Lcom/taobao/rxm/produce/ChainProducer;->conductResult(Lcom/taobao/rxm/consume/Consumer;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic consumeOn(Lcom/taobao/rxm/schedule/Scheduler;)Lcom/taobao/rxm/consume/ChainConsumer;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/taobao/rxm/produce/ChainProducer;->consumeOn(Lcom/taobao/rxm/schedule/Scheduler;)Lcom/taobao/rxm/produce/ChainProducer;

    move-result-object p1

    return-object p1
.end method

.method public consumeOn(Lcom/taobao/rxm/schedule/Scheduler;)Lcom/taobao/rxm/produce/ChainProducer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/schedule/Scheduler;",
            ")",
            "Lcom/taobao/rxm/produce/ChainProducer<",
            "TOUT;TNEXT_OUT;TCONTEXT;>;"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/taobao/rxm/produce/ChainProducer;->mConsumeScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    return-object p0
.end method

.method public getConsumeScheduler()Lcom/taobao/rxm/schedule/Scheduler;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/taobao/rxm/produce/ChainProducer;->mConsumeScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    return-object v0
.end method

.method public getConsumeType()Lcom/taobao/rxm/consume/ConsumeType;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/taobao/rxm/produce/ChainProducer;->mConsumeType:Lcom/taobao/rxm/consume/ConsumeType;

    return-object v0
.end method

.method public abstract getDelegateConsumerPool()Lcom/taobao/rxm/consume/DelegateConsumerPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taobao/rxm/consume/DelegateConsumerPool<",
            "TOUT;TNEXT_OUT;TCONTEXT;>;"
        }
    .end annotation
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/taobao/rxm/produce/ChainProducer;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNextOutType()Ljava/lang/reflect/Type;
    .locals 4

    .line 159
    invoke-direct {p0}, Lcom/taobao/rxm/produce/ChainProducer;->ensureGenericTypes()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/taobao/rxm/produce/ChainProducer;->mGenericTypes:[Ljava/lang/reflect/Type;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    const-class v3, Lcom/taobao/rxm/request/RequestContext;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x0

    .line 164
    aget-object v0, v0, v1

    return-object v0

    .line 166
    :cond_1
    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNextProducer()Lcom/taobao/rxm/produce/Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taobao/rxm/produce/Producer<",
            "TNEXT_OUT;TCONTEXT;>;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/taobao/rxm/produce/ChainProducer;->mNextProducer:Lcom/taobao/rxm/produce/Producer;

    return-object v0
.end method

.method public getOutType()Ljava/lang/reflect/Type;
    .locals 2

    .line 152
    invoke-direct {p0}, Lcom/taobao/rxm/produce/ChainProducer;->ensureGenericTypes()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/taobao/rxm/produce/ChainProducer;->mGenericTypes:[Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getProduceScheduler()Lcom/taobao/rxm/schedule/Scheduler;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/taobao/rxm/produce/ChainProducer;->mProduceScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    return-object v0
.end method

.method public getProduceType()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/taobao/rxm/produce/ChainProducer;->mProduceType:I

    return v0
.end method

.method public maySkipResultConsume()Z
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/taobao/rxm/produce/ChainProducer;->isChainEndNode()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/rxm/produce/ChainProducer;->getConsumeType()Lcom/taobao/rxm/consume/ConsumeType;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/taobao/rxm/consume/ConsumeType;->activeOn(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onConductFinish(Lcom/taobao/rxm/consume/Consumer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/consume/Consumer<",
            "TOUT;TCONTEXT;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0, p2, v0}, Lcom/taobao/rxm/produce/ChainProducer;->onProduceFinish(Lcom/taobao/rxm/consume/Consumer;ZZZ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onConductStart(Lcom/taobao/rxm/consume/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/consume/Consumer<",
            "TOUT;TCONTEXT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0, v0}, Lcom/taobao/rxm/produce/ChainProducer;->onProduceStart(Lcom/taobao/rxm/consume/Consumer;ZZ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onConsumeFinish(Lcom/taobao/rxm/consume/Consumer;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/consume/Consumer<",
            "TOUT;TCONTEXT;>;ZZ)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 92
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/taobao/rxm/produce/ChainProducer;->onProduceFinish(Lcom/taobao/rxm/consume/Consumer;ZZZ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onConsumeStart(Lcom/taobao/rxm/consume/Consumer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/consume/Consumer<",
            "TOUT;TCONTEXT;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 88
    invoke-direct {p0, p1, v0, p2}, Lcom/taobao/rxm/produce/ChainProducer;->onProduceStart(Lcom/taobao/rxm/consume/Consumer;ZZ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public produceOn(Lcom/taobao/rxm/schedule/Scheduler;)Lcom/taobao/rxm/produce/ChainProducer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/schedule/Scheduler;",
            ")",
            "Lcom/taobao/rxm/produce/ChainProducer<",
            "TOUT;TNEXT_OUT;TCONTEXT;>;"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/taobao/rxm/produce/ChainProducer;->mProduceScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    return-object p0
.end method

.method public bridge synthetic produceOn(Lcom/taobao/rxm/schedule/Scheduler;)Lcom/taobao/rxm/produce/Producer;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/taobao/rxm/produce/ChainProducer;->produceOn(Lcom/taobao/rxm/schedule/Scheduler;)Lcom/taobao/rxm/produce/ChainProducer;

    move-result-object p1

    return-object p1
.end method

.method public scheduleCancellation(Lcom/taobao/rxm/consume/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/consume/Consumer<",
            "TOUT;TCONTEXT;>;)V"
        }
    .end annotation

    .line 201
    new-instance v0, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;-><init>(IZ)V

    .line 202
    iget-object v1, p0, Lcom/taobao/rxm/produce/ChainProducer;->mConsumeScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    invoke-virtual {p0, v1, p1, v0}, Lcom/taobao/rxm/produce/ChainProducer;->scheduleConductingResult(Lcom/taobao/rxm/schedule/Scheduler;Lcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;)V

    return-void
.end method

.method protected scheduleConductingResult(Lcom/taobao/rxm/schedule/Scheduler;Lcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/schedule/Scheduler;",
            "Lcom/taobao/rxm/consume/Consumer<",
            "TOUT;TCONTEXT;>;",
            "Lcom/taobao/rxm/schedule/ScheduleResultWrapper<",
            "TNEXT_OUT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 212
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/rxm/produce/ChainProducer;->scheduleConductingResult(Lcom/taobao/rxm/schedule/Scheduler;Lcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;Z)V

    return-void
.end method

.method protected abstract scheduleConductingResult(Lcom/taobao/rxm/schedule/Scheduler;Lcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;Z)V
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
.end method

.method public scheduleFailure(Lcom/taobao/rxm/consume/Consumer;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/consume/Consumer<",
            "TOUT;TCONTEXT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 206
    new-instance v0, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;-><init>(IZ)V

    .line 207
    iput-object p2, v0, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;->throwable:Ljava/lang/Throwable;

    .line 208
    iget-object p2, p0, Lcom/taobao/rxm/produce/ChainProducer;->mConsumeScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    invoke-virtual {p0, p2, p1, v0}, Lcom/taobao/rxm/produce/ChainProducer;->scheduleConductingResult(Lcom/taobao/rxm/schedule/Scheduler;Lcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;)V

    return-void
.end method

.method public scheduleNewResult(Lcom/taobao/rxm/consume/Consumer;ZLcom/taobao/rxm/common/Releasable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/consume/Consumer<",
            "TOUT;TCONTEXT;>;ZTNEXT_OUT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 191
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/rxm/produce/ChainProducer;->scheduleNewResult(Lcom/taobao/rxm/consume/Consumer;ZLcom/taobao/rxm/common/Releasable;Z)V

    return-void
.end method

.method public scheduleNewResult(Lcom/taobao/rxm/consume/Consumer;ZLcom/taobao/rxm/common/Releasable;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/consume/Consumer<",
            "TOUT;TCONTEXT;>;ZTNEXT_OUT;Z)V"
        }
    .end annotation

    .line 185
    new-instance v0, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;-><init>(IZ)V

    .line 186
    iput-object p3, v0, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;->newResult:Ljava/lang/Object;

    .line 187
    iget-object p2, p0, Lcom/taobao/rxm/produce/ChainProducer;->mConsumeScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    invoke-virtual {p0, p2, p1, v0, p4}, Lcom/taobao/rxm/produce/ChainProducer;->scheduleConductingResult(Lcom/taobao/rxm/schedule/Scheduler;Lcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;Z)V

    return-void
.end method

.method public scheduleProgressUpdate(Lcom/taobao/rxm/consume/Consumer;F)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/consume/Consumer<",
            "TOUT;TCONTEXT;>;F)V"
        }
    .end annotation

    .line 195
    new-instance v0, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;-><init>(IZ)V

    .line 196
    iput p2, v0, Lcom/taobao/rxm/schedule/ScheduleResultWrapper;->progress:F

    .line 197
    iget-object p2, p0, Lcom/taobao/rxm/produce/ChainProducer;->mConsumeScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    invoke-virtual {p0, p2, p1, v0}, Lcom/taobao/rxm/produce/ChainProducer;->scheduleConductingResult(Lcom/taobao/rxm/schedule/Scheduler;Lcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;)V

    return-void
.end method

.method public setNextProducer(Lcom/taobao/rxm/produce/ChainProducer;)Lcom/taobao/rxm/produce/ChainProducer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NN_OUT::",
            "Lcom/taobao/rxm/common/Releasable;",
            ">(",
            "Lcom/taobao/rxm/produce/ChainProducer<",
            "TNEXT_OUT;TNN_OUT;TCONTEXT;>;)",
            "Lcom/taobao/rxm/produce/ChainProducer;"
        }
    .end annotation

    .line 174
    invoke-static {p1}, Lcom/taobao/tcommon/core/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iput-object p1, p0, Lcom/taobao/rxm/produce/ChainProducer;->mNextProducer:Lcom/taobao/rxm/produce/Producer;

    return-object p1
.end method
