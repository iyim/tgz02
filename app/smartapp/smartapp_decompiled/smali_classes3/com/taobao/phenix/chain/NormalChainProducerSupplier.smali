.class public Lcom/taobao/phenix/chain/NormalChainProducerSupplier;
.super Ljava/lang/Object;
.source "NormalChainProducerSupplier.java"

# interfaces
.implements Lcom/taobao/tcommon/core/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/tcommon/core/Supplier<",
        "Lcom/taobao/rxm/produce/Producer<",
        "Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;",
        "Lcom/taobao/phenix/request/ImageRequest;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mChainBuilders:Lcom/taobao/phenix/builder/ChainBuilders;

.field private mHeadProducer:Lcom/taobao/rxm/produce/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/rxm/produce/Producer<",
            "Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;",
            "Lcom/taobao/phenix/request/ImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mPreBuildProducer:Lcom/taobao/rxm/produce/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/rxm/produce/Producer<",
            "Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;",
            "Lcom/taobao/phenix/request/ImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mSchedulerSupplier:Lcom/taobao/rxm/schedule/SchedulerSupplier;


# direct methods
.method public constructor <init>(Lcom/taobao/phenix/builder/ChainBuilders;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ChainBuilders cannot be NULL when DrawableChainProducerSupplier constructed"

    .line 33
    invoke-static {p1, v0}, Lcom/taobao/tcommon/core/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iput-object p1, p0, Lcom/taobao/phenix/chain/NormalChainProducerSupplier;->mChainBuilders:Lcom/taobao/phenix/builder/ChainBuilders;

    return-void
.end method


# virtual methods
.method public declared-synchronized buildChain()V
    .locals 3

    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/chain/NormalChainProducerSupplier;->mHeadProducer:Lcom/taobao/rxm/produce/Producer;

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/taobao/phenix/chain/NormalChainProducerSupplier;->mChainBuilders:Lcom/taobao/phenix/builder/ChainBuilders;

    invoke-interface {v0}, Lcom/taobao/phenix/builder/ChainBuilders;->schedulerBuilder()Lcom/taobao/phenix/builder/SchedulerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/phenix/builder/SchedulerBuilder;->build()Lcom/taobao/rxm/schedule/SchedulerSupplier;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/phenix/chain/NormalChainProducerSupplier;->mSchedulerSupplier:Lcom/taobao/rxm/schedule/SchedulerSupplier;

    .line 44
    iget-object v0, p0, Lcom/taobao/phenix/chain/NormalChainProducerSupplier;->mChainBuilders:Lcom/taobao/phenix/builder/ChainBuilders;

    invoke-interface {v0}, Lcom/taobao/phenix/builder/ChainBuilders;->isGenericTypeCheckEnabled()Z

    move-result v0

    .line 45
    new-instance v1, Lcom/taobao/phenix/cache/memory/MemoryCacheProducer;

    iget-object v2, p0, Lcom/taobao/phenix/chain/NormalChainProducerSupplier;->mChainBuilders:Lcom/taobao/phenix/builder/ChainBuilders;

    .line 48
    invoke-interface {v2}, Lcom/taobao/phenix/builder/ChainBuilders;->memCacheBuilder()Lcom/taobao/phenix/builder/MemCacheBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/phenix/builder/MemCacheBuilder;->build()Lcom/taobao/phenix/cache/LruCache;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/taobao/phenix/cache/memory/MemoryCacheProducer;-><init>(Lcom/taobao/phenix/cache/LruCache;)V

    .line 46
    invoke-static {v1, v0}, Lcom/taobao/rxm/common/ChainProducerBuilder;->newBuilderWithHead(Lcom/taobao/rxm/produce/ChainProducer;Z)Lcom/taobao/rxm/common/ChainProducerBuilder;

    move-result-object v0

    new-instance v1, Lcom/taobao/rxm/produce/RequestMultiplexProducer;

    const-class v2, Lcom/taobao/phenix/entity/DecodedImage;

    invoke-direct {v1, v2}, Lcom/taobao/rxm/produce/RequestMultiplexProducer;-><init>(Ljava/lang/Class;)V

    .line 51
    invoke-virtual {v0, v1}, Lcom/taobao/rxm/common/ChainProducerBuilder;->next(Lcom/taobao/rxm/produce/ChainProducer;)Lcom/taobao/rxm/common/ChainProducerBuilder;

    move-result-object v0

    new-instance v1, Lcom/taobao/phenix/cache/disk/DiskCacheWriter;

    iget-object v2, p0, Lcom/taobao/phenix/chain/NormalChainProducerSupplier;->mChainBuilders:Lcom/taobao/phenix/builder/ChainBuilders;

    .line 55
    invoke-interface {v2}, Lcom/taobao/phenix/builder/ChainBuilders;->diskCacheBuilder()Lcom/taobao/phenix/builder/DiskCacheBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/phenix/builder/DiskCacheBuilder;->build()Lcom/taobao/phenix/cache/disk/DiskCacheSupplier;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/taobao/phenix/cache/disk/DiskCacheWriter;-><init>(Lcom/taobao/phenix/cache/disk/DiskCacheSupplier;)V

    iget-object v2, p0, Lcom/taobao/phenix/chain/NormalChainProducerSupplier;->mSchedulerSupplier:Lcom/taobao/rxm/schedule/SchedulerSupplier;

    .line 56
    invoke-interface {v2}, Lcom/taobao/rxm/schedule/SchedulerSupplier;->forIoBound()Lcom/taobao/rxm/schedule/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/phenix/cache/disk/DiskCacheWriter;->consumeOn(Lcom/taobao/rxm/schedule/Scheduler;)Lcom/taobao/rxm/produce/ChainProducer;

    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/taobao/rxm/common/ChainProducerBuilder;->next(Lcom/taobao/rxm/produce/ChainProducer;)Lcom/taobao/rxm/common/ChainProducerBuilder;

    move-result-object v0

    new-instance v1, Lcom/taobao/phenix/bitmap/BitmapProcessProducer;

    invoke-direct {v1}, Lcom/taobao/phenix/bitmap/BitmapProcessProducer;-><init>()V

    iget-object v2, p0, Lcom/taobao/phenix/chain/NormalChainProducerSupplier;->mSchedulerSupplier:Lcom/taobao/rxm/schedule/SchedulerSupplier;

    .line 58
    invoke-interface {v2}, Lcom/taobao/rxm/schedule/SchedulerSupplier;->forCpuBound()Lcom/taobao/rxm/schedule/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/phenix/bitmap/BitmapProcessProducer;->consumeOn(Lcom/taobao/rxm/schedule/Scheduler;)Lcom/taobao/rxm/produce/ChainProducer;

    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/taobao/rxm/common/ChainProducerBuilder;->next(Lcom/taobao/rxm/produce/ChainProducer;)Lcom/taobao/rxm/common/ChainProducerBuilder;

    move-result-object v0

    new-instance v1, Lcom/taobao/phenix/decode/DecodeProducer;

    invoke-direct {v1}, Lcom/taobao/phenix/decode/DecodeProducer;-><init>()V

    iget-object v2, p0, Lcom/taobao/phenix/chain/NormalChainProducerSupplier;->mSchedulerSupplier:Lcom/taobao/rxm/schedule/SchedulerSupplier;

    .line 60
    invoke-interface {v2}, Lcom/taobao/rxm/schedule/SchedulerSupplier;->forDecode()Lcom/taobao/rxm/schedule/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/phenix/decode/DecodeProducer;->consumeOn(Lcom/taobao/rxm/schedule/Scheduler;)Lcom/taobao/rxm/produce/ChainProducer;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/taobao/rxm/common/ChainProducerBuilder;->next(Lcom/taobao/rxm/produce/ChainProducer;)Lcom/taobao/rxm/common/ChainProducerBuilder;

    move-result-object v0

    new-instance v1, Lcom/taobao/phenix/loader/file/LocalImageProducer;

    iget-object v2, p0, Lcom/taobao/phenix/chain/NormalChainProducerSupplier;->mChainBuilders:Lcom/taobao/phenix/builder/ChainBuilders;

    .line 63
    invoke-interface {v2}, Lcom/taobao/phenix/builder/ChainBuilders;->fileLoaderBuilder()Lcom/taobao/phenix/builder/FileLoaderBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/phenix/builder/FileLoaderBuilder;->build()Lcom/taobao/phenix/loader/file/FileLoader;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/taobao/phenix/loader/file/LocalImageProducer;-><init>(Lcom/taobao/phenix/loader/file/FileLoader;)V

    iget-object v2, p0, Lcom/taobao/phenix/chain/NormalChainProducerSupplier;->mSchedulerSupplier:Lcom/taobao/rxm/schedule/SchedulerSupplier;

    .line 64
    invoke-interface {v2}, Lcom/taobao/rxm/schedule/SchedulerSupplier;->forIoBound()Lcom/taobao/rxm/schedule/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/phenix/loader/file/LocalImageProducer;->produceOn(Lcom/taobao/rxm/schedule/Scheduler;)Lcom/taobao/rxm/produce/ChainProducer;

    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Lcom/taobao/rxm/common/ChainProducerBuilder;->next(Lcom/taobao/rxm/produce/ChainProducer;)Lcom/taobao/rxm/common/ChainProducerBuilder;

    move-result-object v0

    new-instance v1, Lcom/taobao/phenix/cache/disk/DiskCacheReader;

    iget-object v2, p0, Lcom/taobao/phenix/chain/NormalChainProducerSupplier;->mChainBuilders:Lcom/taobao/phenix/builder/ChainBuilders;

    .line 67
    invoke-interface {v2}, Lcom/taobao/phenix/builder/ChainBuilders;->diskCacheBuilder()Lcom/taobao/phenix/builder/DiskCacheBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/phenix/builder/DiskCacheBuilder;->build()Lcom/taobao/phenix/cache/disk/DiskCacheSupplier;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/taobao/phenix/cache/disk/DiskCacheReader;-><init>(Lcom/taobao/phenix/cache/disk/DiskCacheSupplier;)V

    .line 65
    invoke-virtual {v0, v1}, Lcom/taobao/rxm/common/ChainProducerBuilder;->next(Lcom/taobao/rxm/produce/ChainProducer;)Lcom/taobao/rxm/common/ChainProducerBuilder;

    move-result-object v0

    new-instance v1, Lcom/taobao/phenix/loader/network/NetworkImageProducer;

    iget-object v2, p0, Lcom/taobao/phenix/chain/NormalChainProducerSupplier;->mChainBuilders:Lcom/taobao/phenix/builder/ChainBuilders;

    .line 71
    invoke-interface {v2}, Lcom/taobao/phenix/builder/ChainBuilders;->httpLoaderBuilder()Lcom/taobao/phenix/builder/HttpLoaderBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/phenix/builder/HttpLoaderBuilder;->build()Lcom/taobao/phenix/loader/network/HttpLoader;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/taobao/phenix/loader/network/NetworkImageProducer;-><init>(Lcom/taobao/phenix/loader/network/HttpLoader;)V

    iget-object v2, p0, Lcom/taobao/phenix/chain/NormalChainProducerSupplier;->mSchedulerSupplier:Lcom/taobao/rxm/schedule/SchedulerSupplier;

    .line 72
    invoke-interface {v2}, Lcom/taobao/rxm/schedule/SchedulerSupplier;->forNetwork()Lcom/taobao/rxm/schedule/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/phenix/loader/network/NetworkImageProducer;->produceOn(Lcom/taobao/rxm/schedule/Scheduler;)Lcom/taobao/rxm/produce/ChainProducer;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/phenix/chain/NormalChainProducerSupplier;->mSchedulerSupplier:Lcom/taobao/rxm/schedule/SchedulerSupplier;

    invoke-interface {v2}, Lcom/taobao/rxm/schedule/SchedulerSupplier;->forNetwork()Lcom/taobao/rxm/schedule/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/rxm/produce/ChainProducer;->consumeOn(Lcom/taobao/rxm/schedule/Scheduler;)Lcom/taobao/rxm/produce/ChainProducer;

    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lcom/taobao/rxm/common/ChainProducerBuilder;->next(Lcom/taobao/rxm/produce/ChainProducer;)Lcom/taobao/rxm/common/ChainProducerBuilder;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/taobao/rxm/common/ChainProducerBuilder;->build()Lcom/taobao/rxm/produce/Producer;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/phenix/chain/NormalChainProducerSupplier;->mHeadProducer:Lcom/taobao/rxm/produce/Producer;

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/taobao/phenix/chain/NormalChainProducerSupplier;->mPreBuildProducer:Lcom/taobao/rxm/produce/Producer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get()Lcom/taobao/rxm/produce/Producer;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taobao/rxm/produce/Producer<",
            "Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;",
            "Lcom/taobao/phenix/request/ImageRequest;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/chain/NormalChainProducerSupplier;->mHeadProducer:Lcom/taobao/rxm/produce/Producer;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/taobao/phenix/chain/NormalChainProducerSupplier;->mHeadProducer:Lcom/taobao/rxm/produce/Producer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 85
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/taobao/phenix/chain/NormalChainProducerSupplier;->mPreBuildProducer:Lcom/taobao/rxm/produce/Producer;

    if-nez v0, :cond_1

    .line 87
    new-instance v0, Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/16 v5, 0x8

    const/4 v6, 0x5

    const/16 v7, 0x5dc

    const/4 v8, 0x3

    const/4 v9, 0x5

    const/4 v10, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;-><init>(Lcom/taobao/rxm/schedule/Scheduler;IIIIIIII)V

    iput-object v0, p0, Lcom/taobao/phenix/chain/NormalChainProducerSupplier;->mSchedulerSupplier:Lcom/taobao/rxm/schedule/SchedulerSupplier;

    .line 99
    new-instance v0, Lcom/taobao/phenix/cache/memory/MemoryCacheProducer;

    new-instance v1, Lcom/taobao/phenix/cache/memory/NonOpMemoryCache;

    invoke-direct {v1}, Lcom/taobao/phenix/cache/memory/NonOpMemoryCache;-><init>()V

    invoke-direct {v0, v1}, Lcom/taobao/phenix/cache/memory/MemoryCacheProducer;-><init>(Lcom/taobao/phenix/cache/LruCache;)V

    iget-object v1, p0, Lcom/taobao/phenix/chain/NormalChainProducerSupplier;->mChainBuilders:Lcom/taobao/phenix/builder/ChainBuilders;

    .line 104
    invoke-interface {v1}, Lcom/taobao/phenix/builder/ChainBuilders;->isGenericTypeCheckEnabled()Z

    move-result v1

    .line 100
    invoke-static {v0, v1}, Lcom/taobao/rxm/common/ChainProducerBuilder;->newBuilderWithHead(Lcom/taobao/rxm/produce/ChainProducer;Z)Lcom/taobao/rxm/common/ChainProducerBuilder;

    move-result-object v0

    new-instance v1, Lcom/taobao/rxm/produce/RequestMultiplexProducer;

    const-class v2, Lcom/taobao/phenix/entity/DecodedImage;

    invoke-direct {v1, v2}, Lcom/taobao/rxm/produce/RequestMultiplexProducer;-><init>(Ljava/lang/Class;)V

    .line 105
    invoke-virtual {v0, v1}, Lcom/taobao/rxm/common/ChainProducerBuilder;->next(Lcom/taobao/rxm/produce/ChainProducer;)Lcom/taobao/rxm/common/ChainProducerBuilder;

    move-result-object v0

    new-instance v1, Lcom/taobao/phenix/decode/DecodeProducer;

    invoke-direct {v1}, Lcom/taobao/phenix/decode/DecodeProducer;-><init>()V

    iget-object v2, p0, Lcom/taobao/phenix/chain/NormalChainProducerSupplier;->mSchedulerSupplier:Lcom/taobao/rxm/schedule/SchedulerSupplier;

    .line 108
    invoke-interface {v2}, Lcom/taobao/rxm/schedule/SchedulerSupplier;->forDecode()Lcom/taobao/rxm/schedule/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/phenix/decode/DecodeProducer;->consumeOn(Lcom/taobao/rxm/schedule/Scheduler;)Lcom/taobao/rxm/produce/ChainProducer;

    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Lcom/taobao/rxm/common/ChainProducerBuilder;->next(Lcom/taobao/rxm/produce/ChainProducer;)Lcom/taobao/rxm/common/ChainProducerBuilder;

    move-result-object v0

    new-instance v1, Lcom/taobao/phenix/loader/file/LocalImageProducer;

    new-instance v2, Lcom/taobao/phenix/loader/file/DefaultFileLoader;

    invoke-direct {v2}, Lcom/taobao/phenix/loader/file/DefaultFileLoader;-><init>()V

    invoke-direct {v1, v2}, Lcom/taobao/phenix/loader/file/LocalImageProducer;-><init>(Lcom/taobao/phenix/loader/file/FileLoader;)V

    iget-object v2, p0, Lcom/taobao/phenix/chain/NormalChainProducerSupplier;->mSchedulerSupplier:Lcom/taobao/rxm/schedule/SchedulerSupplier;

    .line 112
    invoke-interface {v2}, Lcom/taobao/rxm/schedule/SchedulerSupplier;->forIoBound()Lcom/taobao/rxm/schedule/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/phenix/loader/file/LocalImageProducer;->produceOn(Lcom/taobao/rxm/schedule/Scheduler;)Lcom/taobao/rxm/produce/ChainProducer;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Lcom/taobao/rxm/common/ChainProducerBuilder;->next(Lcom/taobao/rxm/produce/ChainProducer;)Lcom/taobao/rxm/common/ChainProducerBuilder;

    move-result-object v0

    new-instance v1, Lcom/taobao/phenix/loader/network/NetworkImageProducer;

    new-instance v2, Lcom/taobao/phenix/loader/network/DefaultHttpLoader;

    invoke-direct {v2}, Lcom/taobao/phenix/loader/network/DefaultHttpLoader;-><init>()V

    invoke-direct {v1, v2}, Lcom/taobao/phenix/loader/network/NetworkImageProducer;-><init>(Lcom/taobao/phenix/loader/network/HttpLoader;)V

    iget-object v2, p0, Lcom/taobao/phenix/chain/NormalChainProducerSupplier;->mSchedulerSupplier:Lcom/taobao/rxm/schedule/SchedulerSupplier;

    .line 116
    invoke-interface {v2}, Lcom/taobao/rxm/schedule/SchedulerSupplier;->forNetwork()Lcom/taobao/rxm/schedule/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/phenix/loader/network/NetworkImageProducer;->produceOn(Lcom/taobao/rxm/schedule/Scheduler;)Lcom/taobao/rxm/produce/ChainProducer;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/phenix/chain/NormalChainProducerSupplier;->mSchedulerSupplier:Lcom/taobao/rxm/schedule/SchedulerSupplier;

    invoke-interface {v2}, Lcom/taobao/rxm/schedule/SchedulerSupplier;->forNetwork()Lcom/taobao/rxm/schedule/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/rxm/produce/ChainProducer;->consumeOn(Lcom/taobao/rxm/schedule/Scheduler;)Lcom/taobao/rxm/produce/ChainProducer;

    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Lcom/taobao/rxm/common/ChainProducerBuilder;->next(Lcom/taobao/rxm/produce/ChainProducer;)Lcom/taobao/rxm/common/ChainProducerBuilder;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/taobao/rxm/common/ChainProducerBuilder;->build()Lcom/taobao/rxm/produce/Producer;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/phenix/chain/NormalChainProducerSupplier;->mPreBuildProducer:Lcom/taobao/rxm/produce/Producer;

    :cond_1
    const-string v0, "NormalChain"

    const-string v1, "use temporary chain producer before Phenix.instance().build() calling"

    const/4 v2, 0x0

    .line 119
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/phenix/common/UnitedLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/taobao/phenix/chain/NormalChainProducerSupplier;->mPreBuildProducer:Lcom/taobao/rxm/produce/Producer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/taobao/phenix/chain/NormalChainProducerSupplier;->get()Lcom/taobao/rxm/produce/Producer;

    move-result-object v0

    return-object v0
.end method

.method public getSchedulerSupplierUsedInProducer()Lcom/taobao/rxm/schedule/SchedulerSupplier;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/taobao/phenix/chain/NormalChainProducerSupplier;->mSchedulerSupplier:Lcom/taobao/rxm/schedule/SchedulerSupplier;

    return-object v0
.end method
