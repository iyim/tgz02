.class public Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;
.super Lcom/taobao/phenix/cache/HotEndLruCache;
.source "ImageCacheAndPool.java"

# interfaces
.implements Lcom/taobao/phenix/bitmap/BitmapPool;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/phenix/cache/HotEndLruCache<",
        "Ljava/lang/String;",
        "Lcom/taobao/phenix/cache/memory/CachedRootImage;",
        ">;",
        "Lcom/taobao/phenix/bitmap/BitmapPool;"
    }
.end annotation


# static fields
.field public static final CEILING_SIZE_MAX_MULTIPLE:I = 0x6

.field public static final TAG:Ljava/lang/String; = "ImageCachePool"

.field public static final TAG_POOL:Ljava/lang/String; = "BitmapPool"

.field public static final TAG_RECYCLE:Ljava/lang/String; = "ImageRecycle"


# instance fields
.field private final POOL_LOCK:Ljava/lang/Object;

.field private mAvailableSize:I

.field private mCurrCount:I

.field private mHitCount:I

.field private mMissCount:I

.field private mSizeGroup:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IF)V
    .locals 2

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/taobao/phenix/cache/HotEndLruCache;-><init>(IF)V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->POOL_LOCK:Ljava/lang/Object;

    .line 35
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->mSizeGroup:Ljava/util/NavigableMap;

    const/4 v0, 0x2

    .line 36
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "ImageCachePool"

    const-string p2, "init with maxSize=%K, hotPercent=%.1f%%"

    invoke-static {p1, p2, v0}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private getByteCountFromConfig(Landroid/graphics/Bitmap$Config;)I
    .locals 2

    if-eqz p1, :cond_1

    .line 55
    sget-object v0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {p1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private getStaticImageSize4Pool(Lcom/taobao/phenix/cache/memory/CachedRootImage;)I
    .locals 2

    .line 70
    instance-of v0, p1, Lcom/taobao/phenix/cache/memory/StaticCachedImage;

    if-eqz v0, :cond_0

    .line 71
    move-object v0, p1

    nop

    nop

    iget-object v0, v0, Lcom/taobao/phenix/cache/memory/StaticCachedImage;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p1}, Lcom/taobao/phenix/cache/memory/CachedRootImage;->getSize()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->mAvailableSize:I

    return v0
.end method

.method protected boardPool()V
    .locals 6

    const/4 v0, 0x3

    .line 116
    invoke-static {v0}, Lcom/taobao/phenix/common/UnitedLog;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    .line 117
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->mAvailableSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->maxPreEvictedSize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/high16 v3, 0x42c80000    # 100.0f

    iget v4, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->mHitCount:I

    int-to-float v5, v4

    mul-float v5, v5, v3

    iget v3, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->mMissCount:I

    add-int/2addr v4, v3

    int-to-float v3, v4

    div-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->mHitCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x4

    iget v2, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->mMissCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x5

    iget v2, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->mCurrCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "BitmapPool"

    const-string v2, "%K/%K, rate:%.1f%%, hits:%d, misses:%d, count:%d"

    invoke-static {v0, v2, v1}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    .line 202
    :try_start_0
    invoke-super {p0}, Lcom/taobao/phenix/cache/HotEndLruCache;->clear()V

    .line 203
    iget-object v0, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->POOL_LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 204
    :try_start_1
    iput v1, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->mAvailableSize:I

    .line 205
    iput v1, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->mCurrCount:I

    .line 206
    iget-object v1, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->mSizeGroup:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->clear()V

    .line 207
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 207
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final get(Ljava/lang/String;)Lcom/taobao/phenix/cache/memory/CachedRootImage;
    .locals 1

    .line 212
    invoke-super {p0, p1}, Lcom/taobao/phenix/cache/HotEndLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/phenix/cache/memory/CachedRootImage;

    const-string v0, "ImageCachePool"

    .line 213
    invoke-virtual {p0, v0}, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->board(Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->get(Ljava/lang/String;)Lcom/taobao/phenix/cache/memory/CachedRootImage;

    move-result-object p1

    return-object p1
.end method

.method public getFromPool(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 10

    mul-int v0, p1, p2

    .line 123
    invoke-direct {p0, p3}, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->getByteCountFromConfig(Landroid/graphics/Bitmap$Config;)I

    move-result v1

    mul-int v0, v0, v1

    .line 127
    iget-object v1, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->POOL_LOCK:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v0, :cond_2

    .line 128
    :try_start_0
    iget-object v5, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->mSizeGroup:Ljava/util/NavigableMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    mul-int/lit8 v7, v0, 0x6

    if-gt v6, v7, :cond_1

    .line 131
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 132
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 133
    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 134
    iget v8, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->mAvailableSize:I

    sub-int/2addr v8, v6

    iput v8, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->mAvailableSize:I

    .line 135
    iget v8, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->mCurrCount:I

    sub-int/2addr v8, v3

    iput v8, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->mCurrCount:I

    goto :goto_0

    :cond_0
    move-object v7, v2

    .line 137
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 138
    iget-object v5, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->mSizeGroup:Ljava/util/NavigableMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v7, v2

    goto :goto_1

    :cond_2
    move-object v7, v2

    const/4 v6, 0x0

    .line 141
    :cond_3
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-eqz v7, :cond_4

    .line 146
    invoke-virtual {p0, v7, v4}, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->remove(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/phenix/cache/memory/CachedRootImage;

    .line 149
    instance-of v7, v5, Lcom/taobao/phenix/cache/memory/StaticCachedImage;

    if-eqz v7, :cond_5

    move-object v7, v5

    nop

    nop

    iget-object v7, v7, Lcom/taobao/phenix/cache/memory/StaticCachedImage;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_5

    .line 151
    :try_start_1
    invoke-virtual {v7, p1, p2, p3}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 152
    invoke-virtual {v7, v3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 153
    invoke-virtual {v7, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v7

    goto :goto_2

    :catch_0
    move-exception v8

    .line 156
    new-array v9, v1, [Ljava/lang/Object;

    aput-object v7, v9, v4

    aput-object v8, v9, v3

    const-string v7, "BitmapPool"

    const-string v8, "reconfigure error, bitmap=%s, throwable=%s"

    invoke-static {v7, v8, v9}, Lcom/taobao/phenix/common/UnitedLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    move-object v5, v2

    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    .line 161
    iget v7, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->mHitCount:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->mHitCount:I

    const/4 v7, 0x5

    .line 162
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v3

    aput-object p3, v7, v1

    const/4 p1, 0x3

    int-to-float p2, v6

    int-to-float p3, v0

    div-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v7, p1

    const/4 p1, 0x4

    aput-object v5, v7, p1

    const-string p1, "BitmapPool"

    const-string p2, "get from bitmap pool, width=%d, height=%d, config=%s, redundant=%.1f, image=%s"

    invoke-static {p1, p2, v7}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 164
    :cond_6
    iget p1, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->mMissCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->mMissCount:I

    .line 166
    :goto_3
    invoke-virtual {p0}, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->boardPool()V

    return-object v2

    :catchall_0
    move-exception p1

    .line 141
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method protected getSize(Lcom/taobao/phenix/cache/memory/CachedRootImage;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/phenix/cache/memory/CachedRootImage;->getSize()I

    move-result p1

    :goto_0
    return p1
.end method

.method protected bridge synthetic getSize(Ljava/lang/Object;)I
    .locals 0

    .line 19
    check-cast p1, Lcom/taobao/phenix/cache/memory/CachedRootImage;

    invoke-virtual {p0, p1}, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->getSize(Lcom/taobao/phenix/cache/memory/CachedRootImage;)I

    move-result p1

    return p1
.end method

.method public maxPoolSize(I)V
    .locals 2

    .line 105
    invoke-virtual {p0, p1}, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->setPreEvictedMaxSize(I)V

    const/4 v0, 0x1

    .line 106
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "BitmapPool"

    const-string v1, "set preEvictedMaxSize(maxPoolSize=%K) in ImageCacheAndPool"

    invoke-static {p1, v1, v0}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPreEvictedStateChange(ZLjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 19
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/taobao/phenix/cache/memory/CachedRootImage;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->onPreEvictedStateChange(ZLjava/lang/String;Lcom/taobao/phenix/cache/memory/CachedRootImage;Z)V

    return-void
.end method

.method protected onPreEvictedStateChange(ZLjava/lang/String;Lcom/taobao/phenix/cache/memory/CachedRootImage;Z)V
    .locals 6

    if-eqz p4, :cond_0

    .line 83
    invoke-virtual {p3}, Lcom/taobao/phenix/cache/memory/CachedRootImage;->removeFromCache()V

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p3, p1}, Lcom/taobao/phenix/cache/memory/CachedRootImage;->releaseFromCache(Z)V

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->POOL_LOCK:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_2

    .line 90
    :try_start_0
    invoke-direct {p0, p3}, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->getStaticImageSize4Pool(Lcom/taobao/phenix/cache/memory/CachedRootImage;)I

    move-result p1

    if-lez p1, :cond_2

    iget-object v1, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->mSizeGroup:Ljava/util/NavigableMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 91
    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 92
    iget p2, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->mAvailableSize:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->mAvailableSize:I

    .line 93
    iget p2, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->mCurrCount:I

    const/4 v2, 0x1

    sub-int/2addr p2, v2

    iput p2, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->mCurrCount:I

    const-string p2, "BitmapPool"

    const-string v3, "remove from bitmap pool when not pre-evicted(cache removed=%b), image=%s"

    const/4 v4, 0x2

    .line 94
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    aput-object p4, v4, v5

    aput-object p3, v4, v2

    invoke-static {p2, v3, v4}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 97
    iget-object p2, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->mSizeGroup:Ljava/util/NavigableMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putIntoPool(Lcom/taobao/phenix/cache/memory/CachedRootImage;)Z
    .locals 8

    .line 173
    invoke-virtual {p1}, Lcom/taobao/phenix/cache/memory/CachedRootImage;->getMemoryCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-virtual {p0, v0}, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 175
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "BitmapPool"

    const-string v1, "cannot put into bitmap pool(cache removed), image=%s"

    invoke-static {p1, v1, v0}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 178
    :cond_0
    invoke-direct {p0, p1}, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->getStaticImageSize4Pool(Lcom/taobao/phenix/cache/memory/CachedRootImage;)I

    move-result v0

    if-lez v0, :cond_2

    .line 180
    iget-object v3, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->POOL_LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 181
    :try_start_0
    iget-object v4, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->mSizeGroup:Ljava/util/NavigableMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_1

    .line 182
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 183
    iget-object v5, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->mSizeGroup:Ljava/util/NavigableMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_1
    iget v5, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->mAvailableSize:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->mAvailableSize:I

    .line 186
    iget v5, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->mCurrCount:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->mCurrCount:I

    const-string v5, "BitmapPool"

    const-string v6, "put into bitmap pool, size=%d, image=%s"

    const/4 v7, 0x2

    .line 187
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    aput-object p1, v7, v1

    invoke-static {v5, v6, v7}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    invoke-virtual {p1}, Lcom/taobao/phenix/cache/memory/CachedRootImage;->getMemoryCacheKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v3

    return p1

    :catchall_0
    move-exception p1

    .line 189
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    return v2
.end method

.method public trimPool(I)V
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;->trimTo(I)Z

    return-void
.end method
