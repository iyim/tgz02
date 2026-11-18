.class public abstract Lcom/taobao/rxm/request/RequestContext;
.super Ljava/lang/Object;
.source "RequestContext.java"


# static fields
.field private static final sAtomicId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mCancelListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/taobao/rxm/request/RequestCancelListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mCancelled:Z

.field private volatile mCancelledInMultiplex:Z

.field private final mEnableGenericTypeCheck:Z

.field private final mId:I

.field private mMultiplexCancelListener:Lcom/taobao/rxm/request/MultiplexCancelListener;

.field private volatile mMultiplexPipeline:I

.field private mProducerListener:Lcom/taobao/rxm/produce/ProducerListener;

.field private mSchedulePriority:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/taobao/rxm/request/RequestContext;->sAtomicId:Ljava/util/concurrent/atomic/AtomicInteger;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 35
    invoke-direct {p0, v0}, Lcom/taobao/rxm/request/RequestContext;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 14
    iput v0, p0, Lcom/taobao/rxm/request/RequestContext;->mSchedulePriority:I

    .line 25
    sget-object v0, Lcom/taobao/rxm/request/RequestContext;->sAtomicId:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/taobao/rxm/request/RequestContext;->sAtomicId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-gez v1, :cond_0

    .line 27
    sget-object v1, Lcom/taobao/rxm/request/RequestContext;->sAtomicId:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 29
    :cond_0
    sget-object v1, Lcom/taobao/rxm/request/RequestContext;->sAtomicId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iput v1, p0, Lcom/taobao/rxm/request/RequestContext;->mId:I

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    iput-boolean p1, p0, Lcom/taobao/rxm/request/RequestContext;->mEnableGenericTypeCheck:Z

    return-void

    :catchall_0
    move-exception p1

    .line 30
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private callCancelListeners()V
    .locals 3

    .line 85
    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/taobao/rxm/request/RequestContext;->mCancelListeners:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/rxm/request/RequestContext;->mCancelListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 88
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 89
    iget-object v0, p0, Lcom/taobao/rxm/request/RequestContext;->mCancelListeners:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 91
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 93
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/rxm/request/RequestCancelListener;

    .line 95
    invoke-interface {v2, p0}, Lcom/taobao/rxm/request/RequestCancelListener;->onCancel(Lcom/taobao/rxm/request/RequestContext;)V

    goto :goto_1

    .line 97
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 91
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/taobao/rxm/request/RequestContext;->mCancelledInMultiplex:Z

    .line 57
    iget-object v1, p0, Lcom/taobao/rxm/request/RequestContext;->mMultiplexCancelListener:Lcom/taobao/rxm/request/MultiplexCancelListener;

    if-eqz v1, :cond_0

    .line 58
    invoke-interface {v1, p0}, Lcom/taobao/rxm/request/MultiplexCancelListener;->onCancelRequest(Lcom/taobao/rxm/request/RequestContext;)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/rxm/request/RequestContext;->isMultiplexPipeline()Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    invoke-virtual {p0, v0}, Lcom/taobao/rxm/request/RequestContext;->cancelInMultiplex(Z)V

    :cond_1
    return-void
.end method

.method public cancelInMultiplex(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/taobao/rxm/request/RequestContext;->mCancelled:Z

    if-eqz p1, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/taobao/rxm/request/RequestContext;->callCancelListeners()V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getId()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/taobao/rxm/request/RequestContext;->mId:I

    return v0
.end method

.method public abstract getMultiplexKey()Ljava/lang/String;
.end method

.method public getMultiplexPipeline()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/taobao/rxm/request/RequestContext;->mMultiplexPipeline:I

    return v0
.end method

.method public getProducerListener()Lcom/taobao/rxm/produce/ProducerListener;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/taobao/rxm/request/RequestContext;->mProducerListener:Lcom/taobao/rxm/produce/ProducerListener;

    return-object v0
.end method

.method public getSchedulePriority()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/taobao/rxm/request/RequestContext;->mSchedulePriority:I

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/taobao/rxm/request/RequestContext;->mCancelled:Z

    return v0
.end method

.method public isCancelledInMultiplex()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/taobao/rxm/request/RequestContext;->mCancelledInMultiplex:Z

    return v0
.end method

.method public isMultiplexPipeline()Z
    .locals 2

    .line 106
    iget v0, p0, Lcom/taobao/rxm/request/RequestContext;->mMultiplexPipeline:I

    iget v1, p0, Lcom/taobao/rxm/request/RequestContext;->mId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerCancelListener(Lcom/taobao/rxm/request/RequestCancelListener;)Z
    .locals 3

    .line 130
    iget-boolean v0, p0, Lcom/taobao/rxm/request/RequestContext;->mEnableGenericTypeCheck:Z

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 133
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    .line 134
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] CANNOT be assigned to generic["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "] of RequestCancelListener"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 138
    :cond_1
    :goto_0
    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/taobao/rxm/request/RequestContext;->mCancelListeners:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 140
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taobao/rxm/request/RequestContext;->mCancelListeners:Ljava/util/Set;

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/taobao/rxm/request/RequestContext;->mCancelListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 143
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 114
    :try_start_0
    iput v0, p0, Lcom/taobao/rxm/request/RequestContext;->mMultiplexPipeline:I

    .line 115
    iget-object v0, p0, Lcom/taobao/rxm/request/RequestContext;->mCancelListeners:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/taobao/rxm/request/RequestContext;->mCancelListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMultiplexCancelListener(Lcom/taobao/rxm/request/MultiplexCancelListener;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/taobao/rxm/request/RequestContext;->mMultiplexCancelListener:Lcom/taobao/rxm/request/MultiplexCancelListener;

    return-void
.end method

.method public setMultiplexPipeline(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/taobao/rxm/request/RequestContext;->mMultiplexPipeline:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setProducerListener(Lcom/taobao/rxm/produce/ProducerListener;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/taobao/rxm/request/RequestContext;->mProducerListener:Lcom/taobao/rxm/produce/ProducerListener;

    return-void
.end method

.method public setSchedulePriority(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/taobao/rxm/request/RequestContext;->mSchedulePriority:I

    return-void
.end method

.method public abstract syncFrom(Lcom/taobao/rxm/request/RequestContext;)V
.end method

.method public declared-synchronized unregisterCancelListener(Lcom/taobao/rxm/request/RequestCancelListener;)Z
    .locals 1

    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/taobao/rxm/request/RequestContext;->mCancelListeners:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/rxm/request/RequestContext;->mCancelListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
