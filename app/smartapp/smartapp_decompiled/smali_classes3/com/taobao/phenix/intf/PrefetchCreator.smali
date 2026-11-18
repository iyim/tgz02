.class public Lcom/taobao/phenix/intf/PrefetchCreator;
.super Ljava/lang/Object;
.source "PrefetchCreator.java"


# static fields
.field public static final MAX_PREFETCH_COUNT_ONCE:I = 0x64


# instance fields
.field private mCompleteListener:Lcom/taobao/phenix/intf/event/IPhenixListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/phenix/intf/event/IPhenixListener<",
            "Lcom/taobao/phenix/intf/event/PrefetchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrefetchEvent:Lcom/taobao/phenix/intf/event/PrefetchEvent;

.field private mProgressListener:Lcom/taobao/phenix/intf/event/IPhenixListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/phenix/intf/event/IPhenixListener<",
            "Lcom/taobao/phenix/intf/event/PrefetchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mStrategy:Lcom/taobao/phenix/strategy/ModuleStrategy;

.field private mUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/taobao/phenix/strategy/ModuleStrategy;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/phenix/strategy/ModuleStrategy;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "module strategy for prefetch cannot be null"

    .line 28
    invoke-static {p1, v0}, Lcom/taobao/tcommon/core/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 29
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Urls of prefetch cannot be empty"

    invoke-static {v2, v3}, Lcom/taobao/tcommon/core/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 30
    iput-object p1, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mStrategy:Lcom/taobao/phenix/strategy/ModuleStrategy;

    .line 31
    iput-object p2, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mUrls:Ljava/util/List;

    .line 32
    new-instance p1, Lcom/taobao/phenix/intf/event/PrefetchEvent;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, p2, v2}, Lcom/taobao/phenix/intf/event/PrefetchEvent;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object p1, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mPrefetchEvent:Lcom/taobao/phenix/intf/event/PrefetchEvent;

    .line 33
    iget-object p1, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mUrls:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x64

    if-le p1, p2, :cond_1

    .line 35
    iget-object v2, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mPrefetchEvent:Lcom/taobao/phenix/intf/event/PrefetchEvent;

    iget-object v2, v2, Lcom/taobao/phenix/intf/event/PrefetchEvent;->listOfFailed:Ljava/util/List;

    iget-object v3, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mUrls:Ljava/util/List;

    invoke-interface {v3, p2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    iget-object p1, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mUrls:Ljava/util/List;

    invoke-interface {p1, v1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mUrls:Ljava/util/List;

    .line 37
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "Prefetch"

    const-string v0, "fetch count exceed MAX_PREFETCH_COUNT_ONCE(%d), slice the part exceeding to list of failed"

    invoke-static {p2, v0, p1}, Lcom/taobao/phenix/common/UnitedLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mPrefetchEvent:Lcom/taobao/phenix/intf/event/PrefetchEvent;

    iget-object p2, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mUrls:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iput p2, p1, Lcom/taobao/phenix/intf/event/PrefetchEvent;->totalCount:I

    return-void
.end method

.method private newRequest(Ljava/lang/String;)Lcom/taobao/phenix/request/ImageRequest;
    .locals 3

    .line 53
    new-instance v0, Lcom/taobao/phenix/request/ImageRequest;

    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/phenix/intf/Phenix;->getCacheKeyInspector()Lcom/taobao/phenix/cache/CacheKeyInspector;

    move-result-object v1

    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/phenix/intf/Phenix;->isGenericTypeCheckEnabled()Z

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/taobao/phenix/request/ImageRequest;-><init>(Ljava/lang/String;Lcom/taobao/phenix/cache/CacheKeyInspector;Z)V

    .line 54
    iget-object p1, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mStrategy:Lcom/taobao/phenix/strategy/ModuleStrategy;

    iget-object p1, p1, Lcom/taobao/phenix/strategy/ModuleStrategy;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/request/ImageRequest;->setModuleName(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 55
    invoke-virtual {v0, p1}, Lcom/taobao/phenix/request/ImageRequest;->setSchedulePriority(I)V

    .line 56
    iget-object p1, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mStrategy:Lcom/taobao/phenix/strategy/ModuleStrategy;

    iget p1, p1, Lcom/taobao/phenix/strategy/ModuleStrategy;->memoryCachePriority:I

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/request/ImageRequest;->setMemoryCachePriority(I)V

    .line 57
    iget-object p1, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mStrategy:Lcom/taobao/phenix/strategy/ModuleStrategy;

    iget p1, p1, Lcom/taobao/phenix/strategy/ModuleStrategy;->diskCachePriority:I

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/request/ImageRequest;->setDiskCachePriority(I)V

    .line 58
    iget-object p1, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mStrategy:Lcom/taobao/phenix/strategy/ModuleStrategy;

    iget-boolean p1, p1, Lcom/taobao/phenix/strategy/ModuleStrategy;->preloadWithSmall:Z

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/taobao/phenix/request/ImageRequest;->allowSizeLevel(ZI)V

    .line 59
    iget-object p1, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mStrategy:Lcom/taobao/phenix/strategy/ModuleStrategy;

    iget-boolean p1, p1, Lcom/taobao/phenix/strategy/ModuleStrategy;->scaleFromLarge:Z

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/taobao/phenix/request/ImageRequest;->allowSizeLevel(ZI)V

    return-object v0
.end method


# virtual methods
.method public completeListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/phenix/intf/PrefetchCreator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/phenix/intf/event/IPhenixListener<",
            "Lcom/taobao/phenix/intf/event/PrefetchEvent;",
            ">;)",
            "Lcom/taobao/phenix/intf/PrefetchCreator;"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mCompleteListener:Lcom/taobao/phenix/intf/event/IPhenixListener;

    return-object p0
.end method

.method public fetch()V
    .locals 5

    const/4 v0, 0x2

    .line 64
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mStrategy:Lcom/taobao/phenix/strategy/ModuleStrategy;

    iget-object v1, v1, Lcom/taobao/phenix/strategy/ModuleStrategy;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mPrefetchEvent:Lcom/taobao/phenix/intf/event/PrefetchEvent;

    iget v1, v1, Lcom/taobao/phenix/intf/event/PrefetchEvent;->totalCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "Prefetch"

    const-string v3, "Start to prefetch with business=%s, total=%d"

    invoke-static {v1, v3, v0}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/Phenix;->getPrefetchProducerSupplier()Lcom/taobao/phenix/chain/PrefetchChainProducerSupplier;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/taobao/phenix/chain/PrefetchChainProducerSupplier;->get()Lcom/taobao/rxm/produce/Producer;

    move-result-object v3

    if-nez v3, :cond_0

    .line 69
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Cannot prefetch before Phenix.build() calling"

    invoke-static {v1, v2, v0}, Lcom/taobao/phenix/common/UnitedLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mPrefetchEvent:Lcom/taobao/phenix/intf/event/PrefetchEvent;

    iget-object v0, v0, Lcom/taobao/phenix/intf/event/PrefetchEvent;->listOfFailed:Ljava/util/List;

    iget-object v1, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mUrls:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    iget-object v0, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mCompleteListener:Lcom/taobao/phenix/intf/event/IPhenixListener;

    iget-object v1, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mPrefetchEvent:Lcom/taobao/phenix/intf/event/PrefetchEvent;

    invoke-interface {v0, v1}, Lcom/taobao/phenix/intf/event/IPhenixListener;->onHappen(Lcom/taobao/phenix/intf/event/PhenixEvent;)Z

    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mUrls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 76
    new-instance v4, Lcom/taobao/phenix/chain/PrefetchLastConsumer;

    .line 77
    invoke-direct {p0, v2}, Lcom/taobao/phenix/intf/PrefetchCreator;->newRequest(Ljava/lang/String;)Lcom/taobao/phenix/request/ImageRequest;

    move-result-object v2

    invoke-direct {v4, v2, p0}, Lcom/taobao/phenix/chain/PrefetchLastConsumer;-><init>(Lcom/taobao/phenix/request/ImageRequest;Lcom/taobao/phenix/intf/PrefetchCreator;)V

    .line 81
    invoke-virtual {v0}, Lcom/taobao/phenix/chain/PrefetchChainProducerSupplier;->getSchedulerSupplierUsedInProducer()Lcom/taobao/rxm/schedule/SchedulerSupplier;

    move-result-object v2

    invoke-interface {v2}, Lcom/taobao/rxm/schedule/SchedulerSupplier;->forUiThread()Lcom/taobao/rxm/schedule/Scheduler;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/taobao/phenix/chain/PrefetchLastConsumer;->consumeOn(Lcom/taobao/rxm/schedule/Scheduler;)Lcom/taobao/rxm/consume/Consumer;

    move-result-object v2

    .line 80
    invoke-interface {v3, v2}, Lcom/taobao/rxm/produce/Producer;->produceResults(Lcom/taobao/rxm/consume/Consumer;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onImageComplete(Lcom/taobao/phenix/request/ImageRequest;Lcom/taobao/phenix/entity/PrefetchImage;Ljava/lang/Throwable;)V
    .locals 5

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 89
    iget-object p3, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mPrefetchEvent:Lcom/taobao/phenix/intf/event/PrefetchEvent;

    iget-object p3, p3, Lcom/taobao/phenix/intf/event/PrefetchEvent;->listOfSucceeded:Ljava/util/List;

    invoke-virtual {p1}, Lcom/taobao/phenix/request/ImageRequest;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object p1, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mPrefetchEvent:Lcom/taobao/phenix/intf/event/PrefetchEvent;

    iget p3, p1, Lcom/taobao/phenix/intf/event/PrefetchEvent;->completeSize:I

    int-to-long v1, p3

    iget-wide v3, p2, Lcom/taobao/phenix/entity/PrefetchImage;->length:J

    add-long/2addr v1, v3

    long-to-int p3, v1

    iput p3, p1, Lcom/taobao/phenix/intf/event/PrefetchEvent;->completeSize:I

    .line 91
    iget-object p1, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mPrefetchEvent:Lcom/taobao/phenix/intf/event/PrefetchEvent;

    iget p3, p1, Lcom/taobao/phenix/intf/event/PrefetchEvent;->downloadSize:I

    int-to-long v1, p3

    iget-boolean p3, p2, Lcom/taobao/phenix/entity/PrefetchImage;->fromDisk:Z

    if-eqz p3, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    iget-wide v3, p2, Lcom/taobao/phenix/entity/PrefetchImage;->length:J

    :goto_0
    add-long/2addr v1, v3

    long-to-int p3, v1

    iput p3, p1, Lcom/taobao/phenix/intf/event/PrefetchEvent;->downloadSize:I

    .line 92
    iget-object p1, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mPrefetchEvent:Lcom/taobao/phenix/intf/event/PrefetchEvent;

    iget p3, p1, Lcom/taobao/phenix/intf/event/PrefetchEvent;->downloadCount:I

    iget-boolean p2, p2, Lcom/taobao/phenix/entity/PrefetchImage;->fromDisk:Z

    xor-int/2addr p2, v0

    add-int/2addr p3, p2

    iput p3, p1, Lcom/taobao/phenix/intf/event/PrefetchEvent;->downloadCount:I

    goto :goto_1

    .line 94
    :cond_1
    iget-object p2, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mPrefetchEvent:Lcom/taobao/phenix/intf/event/PrefetchEvent;

    iget-object p2, p2, Lcom/taobao/phenix/intf/event/PrefetchEvent;->listOfFailed:Ljava/util/List;

    invoke-virtual {p1}, Lcom/taobao/phenix/request/ImageRequest;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_2

    .line 96
    iget-object p1, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mPrefetchEvent:Lcom/taobao/phenix/intf/event/PrefetchEvent;

    iget-object p1, p1, Lcom/taobao/phenix/intf/event/PrefetchEvent;->listOfThrowable:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mPrefetchEvent:Lcom/taobao/phenix/intf/event/PrefetchEvent;

    iget p2, p1, Lcom/taobao/phenix/intf/event/PrefetchEvent;->completeCount:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/taobao/phenix/intf/event/PrefetchEvent;->completeCount:I

    .line 100
    iget-object p1, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mProgressListener:Lcom/taobao/phenix/intf/event/IPhenixListener;

    const/4 p2, 0x2

    const-string p3, "Prefetch"

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 101
    new-array p1, p2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mStrategy:Lcom/taobao/phenix/strategy/ModuleStrategy;

    iget-object v2, v2, Lcom/taobao/phenix/strategy/ModuleStrategy;->name:Ljava/lang/String;

    aput-object v2, p1, v1

    iget-object v2, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mPrefetchEvent:Lcom/taobao/phenix/intf/event/PrefetchEvent;

    aput-object v2, p1, v0

    const-string v2, "Progress on happen with business=%s, event=%s"

    invoke-static {p3, v2, p1}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iget-object p1, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mProgressListener:Lcom/taobao/phenix/intf/event/IPhenixListener;

    iget-object v2, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mPrefetchEvent:Lcom/taobao/phenix/intf/event/PrefetchEvent;

    invoke-interface {p1, v2}, Lcom/taobao/phenix/intf/event/IPhenixListener;->onHappen(Lcom/taobao/phenix/intf/event/PhenixEvent;)Z

    .line 104
    :cond_3
    iget-object p1, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mCompleteListener:Lcom/taobao/phenix/intf/event/IPhenixListener;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mPrefetchEvent:Lcom/taobao/phenix/intf/event/PrefetchEvent;

    iget p1, p1, Lcom/taobao/phenix/intf/event/PrefetchEvent;->completeCount:I

    iget-object v2, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mPrefetchEvent:Lcom/taobao/phenix/intf/event/PrefetchEvent;

    iget v2, v2, Lcom/taobao/phenix/intf/event/PrefetchEvent;->totalCount:I

    if-ne p1, v2, :cond_5

    .line 105
    iget-object p1, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mPrefetchEvent:Lcom/taobao/phenix/intf/event/PrefetchEvent;

    iget-object v2, p1, Lcom/taobao/phenix/intf/event/PrefetchEvent;->listOfFailed:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p1, Lcom/taobao/phenix/intf/event/PrefetchEvent;->allSucceeded:Z

    .line 106
    new-array p1, p2, [Ljava/lang/Object;

    iget-object p2, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mStrategy:Lcom/taobao/phenix/strategy/ModuleStrategy;

    iget-object p2, p2, Lcom/taobao/phenix/strategy/ModuleStrategy;->name:Ljava/lang/String;

    aput-object p2, p1, v1

    iget-object p2, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mPrefetchEvent:Lcom/taobao/phenix/intf/event/PrefetchEvent;

    aput-object p2, p1, v0

    const-string p2, "Complete on happen with business=%s, event=%s"

    invoke-static {p3, p2, p1}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iget-object p1, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mCompleteListener:Lcom/taobao/phenix/intf/event/IPhenixListener;

    iget-object p2, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mPrefetchEvent:Lcom/taobao/phenix/intf/event/PrefetchEvent;

    invoke-interface {p1, p2}, Lcom/taobao/phenix/intf/event/IPhenixListener;->onHappen(Lcom/taobao/phenix/intf/event/PhenixEvent;)Z

    :cond_5
    return-void
.end method

.method public progressListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/phenix/intf/PrefetchCreator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/phenix/intf/event/IPhenixListener<",
            "Lcom/taobao/phenix/intf/event/PrefetchEvent;",
            ">;)",
            "Lcom/taobao/phenix/intf/PrefetchCreator;"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/taobao/phenix/intf/PrefetchCreator;->mProgressListener:Lcom/taobao/phenix/intf/event/IPhenixListener;

    return-object p0
.end method
