.class public Lcom/taobao/phenix/cache/memory/MemoryCacheProducer;
.super Lcom/taobao/rxm/produce/BaseChainProducer;
.source "MemoryCacheProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/rxm/produce/BaseChainProducer<",
        "Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;",
        "Lcom/taobao/phenix/entity/DecodedImage;",
        "Lcom/taobao/phenix/request/ImageRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MemoryCache"

.field private static final sStaticImageRecycleListener:Lcom/taobao/phenix/cache/memory/StaticCachedImage$StaticImageRecycleListener;


# instance fields
.field private final mMemoryCache:Lcom/taobao/phenix/cache/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/phenix/cache/LruCache<",
            "Ljava/lang/String;",
            "Lcom/taobao/phenix/cache/memory/CachedRootImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/taobao/phenix/cache/memory/MemoryCacheProducer$1;

    invoke-direct {v0}, Lcom/taobao/phenix/cache/memory/MemoryCacheProducer$1;-><init>()V

    sput-object v0, Lcom/taobao/phenix/cache/memory/MemoryCacheProducer;->sStaticImageRecycleListener:Lcom/taobao/phenix/cache/memory/StaticCachedImage$StaticImageRecycleListener;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/taobao/phenix/cache/LruCache;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/phenix/cache/LruCache<",
            "Ljava/lang/String;",
            "Lcom/taobao/phenix/cache/memory/CachedRootImage;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 34
    invoke-direct {p0, v0, v0}, Lcom/taobao/rxm/produce/BaseChainProducer;-><init>(II)V

    .line 35
    invoke-static {p1}, Lcom/taobao/tcommon/core/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iput-object p1, p0, Lcom/taobao/phenix/cache/memory/MemoryCacheProducer;->mMemoryCache:Lcom/taobao/phenix/cache/LruCache;

    return-void
.end method

.method public static getFilteredCache(Lcom/taobao/phenix/cache/LruCache;Ljava/lang/String;Z)Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/phenix/cache/LruCache<",
            "Ljava/lang/String;",
            "Lcom/taobao/phenix/cache/memory/CachedRootImage;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;"
        }
    .end annotation

    .line 46
    invoke-interface {p0, p1}, Lcom/taobao/phenix/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/phenix/cache/memory/CachedRootImage;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 52
    :cond_0
    invoke-static {v0, p2}, Lcom/taobao/phenix/cache/memory/MemoryCacheProducer;->newDrawableWithRootImage(Lcom/taobao/phenix/cache/memory/CachedRootImage;Z)Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 54
    invoke-virtual {v0, v2}, Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;->fromMemory(Z)V

    .line 58
    invoke-virtual {v0}, Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 59
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    invoke-interface {p0, p1}, Lcom/taobao/phenix/cache/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x2

    .line 62
    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p0, v2

    const-string p1, "MemoryCache"

    const-string p2, "remove image(exist cache but bitmap is recycled), key=%s, releasable=%b"

    invoke-static {p1, p2, p0}, Lcom/taobao/phenix/common/UnitedLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method private static newCachedRootImage(Lcom/taobao/phenix/request/ImageRequest;Lcom/taobao/phenix/entity/DecodedImage;Lcom/taobao/phenix/cache/memory/StaticCachedImage$StaticImageRecycleListener;)Lcom/taobao/phenix/cache/memory/CachedRootImage;
    .locals 9

    .line 107
    invoke-virtual {p0}, Lcom/taobao/phenix/request/ImageRequest;->getImageUriInfo()Lcom/taobao/phenix/request/ImageUriInfo;

    move-result-object v0

    .line 108
    invoke-virtual {p1}, Lcom/taobao/phenix/entity/DecodedImage;->isStaticBitmap()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    new-instance v1, Lcom/taobao/phenix/cache/memory/StaticCachedImage;

    invoke-virtual {p1}, Lcom/taobao/phenix/entity/DecodedImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/phenix/entity/DecodedImage;->getBitmapPadding()Landroid/graphics/Rect;

    move-result-object v4

    .line 110
    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageUriInfo;->getMemoryCacheKey()Ljava/lang/String;

    move-result-object v5

    .line 111
    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageUriInfo;->getDiskCacheKey()Ljava/lang/String;

    move-result-object v6

    .line 112
    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageUriInfo;->getDiskCacheCatalog()I

    move-result v7

    .line 113
    invoke-virtual {p0}, Lcom/taobao/phenix/request/ImageRequest;->getDiskCachePriority()I

    move-result v8

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/taobao/phenix/cache/memory/StaticCachedImage;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v1, p2}, Lcom/taobao/phenix/cache/memory/StaticCachedImage;->setStaticImageRecycleListener(Lcom/taobao/phenix/cache/memory/StaticCachedImage$StaticImageRecycleListener;)Lcom/taobao/phenix/cache/memory/StaticCachedImage;

    move-result-object p0

    return-object p0

    .line 115
    :cond_0
    new-instance p2, Lcom/taobao/phenix/cache/memory/AnimatedCachedImage;

    invoke-virtual {p1}, Lcom/taobao/phenix/entity/DecodedImage;->getAnimatedImage()Lcom/taobao/pexode/animate/AnimatedImage;

    move-result-object v1

    .line 116
    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageUriInfo;->getMemoryCacheKey()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageUriInfo;->getDiskCacheKey()Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageUriInfo;->getDiskCacheCatalog()I

    move-result v4

    .line 119
    invoke-virtual {p0}, Lcom/taobao/phenix/request/ImageRequest;->getDiskCachePriority()I

    move-result v5

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/taobao/phenix/cache/memory/AnimatedCachedImage;-><init>(Lcom/taobao/pexode/animate/AnimatedImage;Ljava/lang/String;Ljava/lang/String;II)V

    return-object p2
.end method

.method private static newDrawableWithRootImage(Lcom/taobao/phenix/cache/memory/CachedRootImage;Z)Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;
    .locals 1

    .line 42
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/Phenix;->applicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/Phenix;->applicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/taobao/phenix/cache/memory/CachedRootImage;->newImageDrawableWith(ZLandroid/content/res/Resources;)Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected conductResult(Lcom/taobao/rxm/consume/Consumer;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/consume/Consumer<",
            "Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;",
            "Lcom/taobao/phenix/request/ImageRequest;",
            ">;)Z"
        }
    .end annotation

    .line 71
    invoke-interface {p1}, Lcom/taobao/rxm/consume/Consumer;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/phenix/request/ImageRequest;

    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->isSkipCache()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 74
    :cond_0
    invoke-virtual {p0, p1}, Lcom/taobao/phenix/cache/memory/MemoryCacheProducer;->onConductStart(Lcom/taobao/rxm/consume/Consumer;)V

    .line 75
    invoke-interface {p1}, Lcom/taobao/rxm/consume/Consumer;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/phenix/request/ImageRequest;

    .line 76
    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->getMemoryCacheKey()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->isReleasableDrawableSpecified()Z

    move-result v3

    .line 79
    iget-object v4, p0, Lcom/taobao/phenix/cache/memory/MemoryCacheProducer;->mMemoryCache:Lcom/taobao/phenix/cache/LruCache;

    invoke-static {v4, v2, v3}, Lcom/taobao/phenix/cache/memory/MemoryCacheProducer;->getFilteredCache(Lcom/taobao/phenix/cache/LruCache;Ljava/lang/String;Z)Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x2

    .line 81
    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v1

    aput-object v2, v8, v5

    const-string v2, "MemoryCache"

    const-string v9, "read from memcache, result=%B, key=%s"

    invoke-static {v2, v0, v9, v8}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Lcom/taobao/phenix/request/ImageRequest;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v6, :cond_3

    .line 83
    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->getSecondaryUriInfo()Lcom/taobao/phenix/request/ImageUriInfo;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 84
    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->getSecondaryUriInfo()Lcom/taobao/phenix/request/ImageUriInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/phenix/request/ImageUriInfo;->getMemoryCacheKey()Ljava/lang/String;

    move-result-object v4

    .line 85
    iget-object v8, p0, Lcom/taobao/phenix/cache/memory/MemoryCacheProducer;->mMemoryCache:Lcom/taobao/phenix/cache/LruCache;

    invoke-static {v8, v4, v3}, Lcom/taobao/phenix/cache/memory/MemoryCacheProducer;->getFilteredCache(Lcom/taobao/phenix/cache/LruCache;Ljava/lang/String;Z)Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;

    move-result-object v3

    .line 86
    new-array v7, v7, [Ljava/lang/Object;

    if-eqz v3, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v1

    aput-object v4, v7, v5

    const-string v1, "secondary read from memcache, result=%B, key=%s"

    invoke-static {v2, v0, v1, v7}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Lcom/taobao/phenix/request/ImageRequest;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_4

    .line 88
    invoke-virtual {v3, v5}, Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;->fromSecondary(Z)V

    .line 89
    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->disableSecondary()V

    goto :goto_2

    :cond_3
    move-object v3, v4

    .line 93
    :cond_4
    :goto_2
    invoke-virtual {p0, p1, v6}, Lcom/taobao/phenix/cache/memory/MemoryCacheProducer;->onConductFinish(Lcom/taobao/rxm/consume/Consumer;Z)V

    if-eqz v3, :cond_5

    .line 95
    invoke-interface {p1, v3, v6}, Lcom/taobao/rxm/consume/Consumer;->onNewResult(Ljava/lang/Object;Z)V

    :cond_5
    if-nez v6, :cond_6

    .line 99
    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->isMemoryOnly()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 100
    new-instance v0, Lcom/taobao/phenix/cache/memory/MemOnlyFailedException;

    invoke-direct {v0}, Lcom/taobao/phenix/cache/memory/MemOnlyFailedException;-><init>()V

    invoke-interface {p1, v0}, Lcom/taobao/rxm/consume/Consumer;->onFailure(Ljava/lang/Throwable;)V

    return v5

    :cond_6
    return v6
.end method

.method public consumeNewResult(Lcom/taobao/rxm/consume/Consumer;ZLcom/taobao/phenix/entity/DecodedImage;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/consume/Consumer<",
            "Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;",
            "Lcom/taobao/phenix/request/ImageRequest;",
            ">;Z",
            "Lcom/taobao/phenix/entity/DecodedImage;",
            ")V"
        }
    .end annotation

    .line 125
    invoke-interface {p1}, Lcom/taobao/rxm/consume/Consumer;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/phenix/request/ImageRequest;

    .line 126
    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->isReleasableDrawableSpecified()Z

    move-result v1

    .line 127
    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->getMemoryCacheKey()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->isSkipCache()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/taobao/phenix/cache/memory/MemoryCacheProducer;->mMemoryCache:Lcom/taobao/phenix/cache/LruCache;

    invoke-static {v3, v2, v1}, Lcom/taobao/phenix/cache/memory/MemoryCacheProducer;->getFilteredCache(Lcom/taobao/phenix/cache/LruCache;Ljava/lang/String;Z)Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;

    move-result-object v3

    :goto_0
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    const-string v8, "MemoryCache"

    if-eqz v7, :cond_3

    .line 134
    sget-object v3, Lcom/taobao/phenix/cache/memory/MemoryCacheProducer;->sStaticImageRecycleListener:Lcom/taobao/phenix/cache/memory/StaticCachedImage$StaticImageRecycleListener;

    invoke-static {v0, p3, v3}, Lcom/taobao/phenix/cache/memory/MemoryCacheProducer;->newCachedRootImage(Lcom/taobao/phenix/request/ImageRequest;Lcom/taobao/phenix/entity/DecodedImage;Lcom/taobao/phenix/cache/memory/StaticCachedImage$StaticImageRecycleListener;)Lcom/taobao/phenix/cache/memory/CachedRootImage;

    move-result-object v4

    .line 135
    invoke-static {v4, v1}, Lcom/taobao/phenix/cache/memory/MemoryCacheProducer;->newDrawableWithRootImage(Lcom/taobao/phenix/cache/memory/CachedRootImage;Z)Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;

    move-result-object v3

    .line 137
    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->isMultiplexPipeline()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p3}, Lcom/taobao/phenix/entity/DecodedImage;->needCached()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 140
    :goto_2
    invoke-virtual {p3}, Lcom/taobao/phenix/entity/DecodedImage;->getEncodedImage()Lcom/taobao/phenix/entity/EncodedImage;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 142
    iget-boolean v10, v9, Lcom/taobao/phenix/entity/EncodedImage;->fromDisk:Z

    invoke-virtual {v3, v10}, Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;->fromDisk(Z)V

    .line 143
    iget-boolean v10, v9, Lcom/taobao/phenix/entity/EncodedImage;->isSecondary:Z

    invoke-virtual {v3, v10}, Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;->fromSecondary(Z)V

    if-nez p2, :cond_5

    .line 146
    invoke-virtual {v9}, Lcom/taobao/phenix/entity/EncodedImage;->release()V

    goto :goto_3

    .line 149
    :cond_3
    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->isMultiplexPipeline()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 150
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v6

    const-string v9, "found existing cache before new CachedRootImage with pipeline consume result, key=%s"

    invoke-static {v8, v0, v9, v1}, Lcom/taobao/phenix/common/UnitedLog;->i(Ljava/lang/String;Lcom/taobao/phenix/request/ImageRequest;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    const/4 v1, 0x0

    .line 154
    :cond_5
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/taobao/phenix/request/ImageRequest;->setWorkThreadEndTime(J)V

    .line 155
    invoke-interface {p1, v3, p2}, Lcom/taobao/rxm/consume/Consumer;->onNewResult(Ljava/lang/Object;Z)V

    if-eqz v1, :cond_6

    .line 159
    iget-object p1, p0, Lcom/taobao/phenix/cache/memory/MemoryCacheProducer;->mMemoryCache:Lcom/taobao/phenix/cache/LruCache;

    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->getMemoryCachePriority()I

    move-result p2

    invoke-interface {p1, p2, v2, v4}, Lcom/taobao/phenix/cache/LruCache;->put(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x3

    .line 160
    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->getMemoryCachePriority()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p2, v5

    const/4 p1, 0x2

    aput-object v4, p2, p1

    const-string p1, "write into memcache with priority=%d, result=%B, value=%s"

    invoke-static {v8, v0, p1, p2}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Lcom/taobao/phenix/request/ImageRequest;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    if-eqz v7, :cond_7

    if-eqz p2, :cond_7

    .line 161
    invoke-virtual {p3}, Lcom/taobao/phenix/entity/DecodedImage;->needCached()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 162
    new-array p1, v5, [Ljava/lang/Object;

    aput-object v2, p1, v6

    const-string p2, "skip to write into memcache cause the request is not pipeline, key=%s"

    invoke-static {v8, v0, p2, p1}, Lcom/taobao/phenix/common/UnitedLog;->i(Ljava/lang/String;Lcom/taobao/phenix/request/ImageRequest;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public bridge synthetic consumeNewResult(Lcom/taobao/rxm/consume/Consumer;ZLcom/taobao/rxm/common/Releasable;)V
    .locals 0

    .line 19
    check-cast p3, Lcom/taobao/phenix/entity/DecodedImage;

    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/phenix/cache/memory/MemoryCacheProducer;->consumeNewResult(Lcom/taobao/rxm/consume/Consumer;ZLcom/taobao/phenix/entity/DecodedImage;)V

    return-void
.end method

.method public bridge synthetic consumeNewResult(Lcom/taobao/rxm/consume/Consumer;ZLjava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p3, Lcom/taobao/phenix/entity/DecodedImage;

    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/phenix/cache/memory/MemoryCacheProducer;->consumeNewResult(Lcom/taobao/rxm/consume/Consumer;ZLcom/taobao/phenix/entity/DecodedImage;)V

    return-void
.end method
