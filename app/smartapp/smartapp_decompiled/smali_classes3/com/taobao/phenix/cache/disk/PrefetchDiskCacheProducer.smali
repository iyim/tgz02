.class public Lcom/taobao/phenix/cache/disk/PrefetchDiskCacheProducer;
.super Lcom/taobao/phenix/cache/disk/BaseDiskCacheProducer;
.source "PrefetchDiskCacheProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/phenix/cache/disk/BaseDiskCacheProducer<",
        "Lcom/taobao/phenix/entity/PrefetchImage;",
        "Lcom/taobao/phenix/entity/EncodedImage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/taobao/phenix/cache/disk/DiskCacheSupplier;)V
    .locals 1

    const/4 v0, 0x1

    .line 14
    invoke-direct {p0, v0, v0, p1}, Lcom/taobao/phenix/cache/disk/BaseDiskCacheProducer;-><init>(IILcom/taobao/phenix/cache/disk/DiskCacheSupplier;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected conductResult(Lcom/taobao/rxm/consume/Consumer;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/consume/Consumer<",
            "Lcom/taobao/phenix/entity/PrefetchImage;",
            "Lcom/taobao/phenix/request/ImageRequest;",
            ">;)Z"
        }
    .end annotation

    .line 20
    invoke-interface {p1}, Lcom/taobao/rxm/consume/Consumer;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/phenix/request/ImageRequest;

    .line 22
    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->isSkipCache()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 26
    :cond_0
    invoke-virtual {p0, p1}, Lcom/taobao/phenix/cache/disk/PrefetchDiskCacheProducer;->onConductStart(Lcom/taobao/rxm/consume/Consumer;)V

    .line 28
    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->getDiskCachePriority()I

    move-result v1

    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->getDiskCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->getDiskCacheCatalog()I

    move-result v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/taobao/phenix/cache/disk/PrefetchDiskCacheProducer;->getCacheLength(ILjava/lang/String;I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const/4 v1, 0x1

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    const/4 v2, 0x1

    .line 31
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/taobao/phenix/cache/disk/PrefetchDiskCacheProducer;->onConductFinish(Lcom/taobao/rxm/consume/Consumer;Z)V

    if-eqz v2, :cond_2

    .line 34
    new-instance v5, Lcom/taobao/phenix/entity/PrefetchImage;

    invoke-direct {v5}, Lcom/taobao/phenix/entity/PrefetchImage;-><init>()V

    .line 35
    iput-boolean v1, v5, Lcom/taobao/phenix/entity/PrefetchImage;->fromDisk:Z

    .line 36
    iput-wide v3, v5, Lcom/taobao/phenix/entity/PrefetchImage;->length:J

    .line 37
    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/taobao/phenix/entity/PrefetchImage;->url:Ljava/lang/String;

    .line 38
    invoke-interface {p1, v5, v1}, Lcom/taobao/rxm/consume/Consumer;->onNewResult(Ljava/lang/Object;Z)V

    :cond_2
    if-nez v2, :cond_3

    .line 41
    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->isOnlyCache()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 42
    new-instance v0, Lcom/taobao/phenix/cache/disk/OnlyCacheFailedException;

    const-string v2, "PrefetchDiskCache"

    invoke-direct {v0, v2}, Lcom/taobao/phenix/cache/disk/OnlyCacheFailedException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/taobao/rxm/consume/Consumer;->onFailure(Ljava/lang/Throwable;)V

    return v1

    :cond_3
    return v2
.end method

.method public consumeNewResult(Lcom/taobao/rxm/consume/Consumer;ZLcom/taobao/phenix/entity/EncodedImage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/consume/Consumer<",
            "Lcom/taobao/phenix/entity/PrefetchImage;",
            "Lcom/taobao/phenix/request/ImageRequest;",
            ">;Z",
            "Lcom/taobao/phenix/entity/EncodedImage;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-interface {p1}, Lcom/taobao/rxm/consume/Consumer;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/phenix/request/ImageRequest;

    .line 54
    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->getStatistics()Lcom/taobao/phenix/request/ImageStatistics;

    move-result-object v1

    .line 55
    invoke-virtual {p3}, Lcom/taobao/phenix/entity/EncodedImage;->getMimeType()Lcom/taobao/pexode/mimetype/MimeType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/phenix/request/ImageStatistics;->setCompressFormat(Lcom/taobao/pexode/mimetype/MimeType;)V

    .line 56
    iget v2, p3, Lcom/taobao/phenix/entity/EncodedImage;->length:I

    invoke-virtual {v1, v2}, Lcom/taobao/phenix/request/ImageStatistics;->setSize(I)V

    const/4 v1, 0x1

    .line 58
    invoke-virtual {p0, v0, p3, v1}, Lcom/taobao/phenix/cache/disk/PrefetchDiskCacheProducer;->writeImage(Lcom/taobao/phenix/request/ImageRequest;Lcom/taobao/phenix/entity/EncodedImage;Z)I

    move-result v2

    if-eq v2, v1, :cond_2

    const/4 v1, 0x2

    if-eq v2, v1, :cond_2

    if-nez v2, :cond_0

    goto :goto_1

    .line 68
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->getDiskCachePriority()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/taobao/phenix/cache/disk/PrefetchDiskCacheProducer;->getPriorityDiskCache(I)Lcom/taobao/phenix/cache/disk/DiskCache;

    move-result-object p2

    .line 69
    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->getPath()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x3

    if-ne v2, v0, :cond_1

    .line 71
    new-instance v0, Lcom/taobao/phenix/cache/disk/CacheUnavailableException;

    invoke-direct {v0, p2, p3}, Lcom/taobao/phenix/cache/disk/CacheUnavailableException;-><init>(Lcom/taobao/phenix/cache/disk/DiskCache;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/taobao/rxm/consume/Consumer;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 73
    :cond_1
    new-instance v0, Lcom/taobao/phenix/cache/disk/CacheWriteFailedException;

    invoke-direct {v0, p2, p3}, Lcom/taobao/phenix/cache/disk/CacheWriteFailedException;-><init>(Lcom/taobao/phenix/cache/disk/DiskCache;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/taobao/rxm/consume/Consumer;->onFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 60
    :cond_2
    :goto_1
    new-instance v0, Lcom/taobao/phenix/entity/PrefetchImage;

    invoke-direct {v0}, Lcom/taobao/phenix/entity/PrefetchImage;-><init>()V

    .line 61
    iget-boolean v1, p3, Lcom/taobao/phenix/entity/EncodedImage;->fromDisk:Z

    iput-boolean v1, v0, Lcom/taobao/phenix/entity/PrefetchImage;->fromDisk:Z

    .line 62
    iget v1, p3, Lcom/taobao/phenix/entity/EncodedImage;->length:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/taobao/phenix/entity/PrefetchImage;->length:J

    .line 63
    iget-object p3, p3, Lcom/taobao/phenix/entity/EncodedImage;->path:Ljava/lang/String;

    iput-object p3, v0, Lcom/taobao/phenix/entity/PrefetchImage;->url:Ljava/lang/String;

    .line 64
    invoke-interface {p1, v0, p2}, Lcom/taobao/rxm/consume/Consumer;->onNewResult(Ljava/lang/Object;Z)V

    return-void
.end method

.method public bridge synthetic consumeNewResult(Lcom/taobao/rxm/consume/Consumer;ZLcom/taobao/rxm/common/Releasable;)V
    .locals 0

    .line 11
    check-cast p3, Lcom/taobao/phenix/entity/EncodedImage;

    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/phenix/cache/disk/PrefetchDiskCacheProducer;->consumeNewResult(Lcom/taobao/rxm/consume/Consumer;ZLcom/taobao/phenix/entity/EncodedImage;)V

    return-void
.end method

.method public bridge synthetic consumeNewResult(Lcom/taobao/rxm/consume/Consumer;ZLjava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p3, Lcom/taobao/phenix/entity/EncodedImage;

    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/phenix/cache/disk/PrefetchDiskCacheProducer;->consumeNewResult(Lcom/taobao/rxm/consume/Consumer;ZLcom/taobao/phenix/entity/EncodedImage;)V

    return-void
.end method
