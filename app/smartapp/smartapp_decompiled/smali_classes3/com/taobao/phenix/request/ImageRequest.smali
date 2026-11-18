.class public Lcom/taobao/phenix/request/ImageRequest;
.super Lcom/taobao/rxm/request/RequestContext;
.source "ImageRequest.java"


# static fields
.field private static final ONLY_CACHE_FLAG:I = 0x2

.field private static final ONLY_MEMORY_FLAG:I = 0x4

.field private static final SKIP_CACHE_FLAG:I = 0x1


# instance fields
.field private mAllowedSizeLevel:I

.field private mBitmapProcessors:[Lcom/taobao/phenix/bitmap/BitmapProcessor;

.field private mBlockingFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mDiskCachePriority:I

.field private mForcedAnimationStatic:Z

.field private mImageUriInfo:Lcom/taobao/phenix/request/ImageUriInfo;

.field private mIsRetrying:Z

.field private mLoaderExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxViewHeight:I

.field private mMaxViewWidth:I

.field private mMemoryCachePriority:I

.field private mModuleName:Ljava/lang/String;

.field private mMultiplexKey:Ljava/lang/String;

.field private mMultiplexKeySuffix:Ljava/lang/String;

.field private mPexodeOptions:Lcom/taobao/pexode/PexodeOptions;

.field private final mPhenixTicket:Lcom/taobao/phenix/intf/PhenixTicket;

.field private mProgressUpdateStep:I

.field private mReleasableDrawableSpecified:Z

.field private mRequestStartTime:J

.field private mSecondaryUriInfo:Lcom/taobao/phenix/request/ImageUriInfo;

.field private mStatistics:Lcom/taobao/phenix/request/ImageStatistics;

.field private mSwitchFlags:I

.field private mWorkThreadEndTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/taobao/phenix/cache/CacheKeyInspector;)V
    .locals 1

    const/4 v0, 0x1

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/phenix/request/ImageRequest;-><init>(Ljava/lang/String;Lcom/taobao/phenix/cache/CacheKeyInspector;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/taobao/phenix/cache/CacheKeyInspector;Z)V
    .locals 0

    .line 55
    invoke-direct {p0, p3}, Lcom/taobao/rxm/request/RequestContext;-><init>(Z)V

    const/16 p3, 0x11

    .line 42
    iput p3, p0, Lcom/taobao/phenix/request/ImageRequest;->mDiskCachePriority:I

    .line 43
    iput p3, p0, Lcom/taobao/phenix/request/ImageRequest;->mMemoryCachePriority:I

    const/4 p3, 0x0

    .line 46
    iput p3, p0, Lcom/taobao/phenix/request/ImageRequest;->mSwitchFlags:I

    .line 56
    new-instance p3, Lcom/taobao/phenix/request/ImageUriInfo;

    invoke-direct {p3, p1, p2}, Lcom/taobao/phenix/request/ImageUriInfo;-><init>(Ljava/lang/String;Lcom/taobao/phenix/cache/CacheKeyInspector;)V

    iput-object p3, p0, Lcom/taobao/phenix/request/ImageRequest;->mImageUriInfo:Lcom/taobao/phenix/request/ImageUriInfo;

    .line 57
    new-instance p1, Lcom/taobao/phenix/request/ImageStatistics;

    iget-object p2, p0, Lcom/taobao/phenix/request/ImageRequest;->mImageUriInfo:Lcom/taobao/phenix/request/ImageUriInfo;

    invoke-direct {p1, p2}, Lcom/taobao/phenix/request/ImageStatistics;-><init>(Lcom/taobao/phenix/request/ImageUriInfo;)V

    iput-object p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mStatistics:Lcom/taobao/phenix/request/ImageStatistics;

    .line 58
    new-instance p1, Lcom/taobao/phenix/intf/PhenixTicket;

    invoke-direct {p1, p0}, Lcom/taobao/phenix/intf/PhenixTicket;-><init>(Lcom/taobao/rxm/request/RequestContext;)V

    iput-object p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mPhenixTicket:Lcom/taobao/phenix/intf/PhenixTicket;

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mRequestStartTime:J

    const/4 p1, 0x1

    .line 60
    iput p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mAllowedSizeLevel:I

    .line 61
    iget-object p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mStatistics:Lcom/taobao/phenix/request/ImageStatistics;

    iget-wide p2, p0, Lcom/taobao/phenix/request/ImageRequest;->mRequestStartTime:J

    invoke-virtual {p1, p2, p3}, Lcom/taobao/phenix/request/ImageStatistics;->setRequestStartTime(J)V

    .line 62
    iget-object p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mStatistics:Lcom/taobao/phenix/request/ImageStatistics;

    iget p2, p0, Lcom/taobao/phenix/request/ImageRequest;->mDiskCachePriority:I

    invoke-virtual {p1, p2}, Lcom/taobao/phenix/request/ImageStatistics;->setDiskCachePriority(I)V

    return-void
.end method

.method private declared-synchronized addMultiplexKeySuffix(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 99
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 100
    monitor-exit p0

    return-void

    .line 102
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mMultiplexKeySuffix:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 103
    iput-object p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mMultiplexKeySuffix:Ljava/lang/String;

    goto :goto_0

    .line 105
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taobao/phenix/request/ImageRequest;->mMultiplexKeySuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mMultiplexKeySuffix:Ljava/lang/String;

    .line 107
    :goto_0
    invoke-direct {p0}, Lcom/taobao/phenix/request/ImageRequest;->rebuildKeyIfChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static isAllowedSizeLevel(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private declared-synchronized rebuildKeyIfChanged()V
    .locals 1

    monitor-enter p0

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mMultiplexKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 234
    iput-object v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mMultiplexKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addLoaderExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mLoaderExtras:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 330
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mLoaderExtras:Ljava/util/Map;

    .line 331
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mStatistics:Lcom/taobao/phenix/request/ImageStatistics;

    iget-object v1, p0, Lcom/taobao/phenix/request/ImageRequest;->mLoaderExtras:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/taobao/phenix/request/ImageStatistics;->setExtras(Ljava/util/Map;)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mLoaderExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public allowSizeLevel(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 91
    iget p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mAllowedSizeLevel:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mAllowedSizeLevel:I

    goto :goto_0

    .line 93
    :cond_0
    iget p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mAllowedSizeLevel:I

    xor-int/lit8 p2, p2, -0x1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mAllowedSizeLevel:I

    .line 95
    :goto_0
    invoke-direct {p0}, Lcom/taobao/phenix/request/ImageRequest;->rebuildKeyIfChanged()V

    return-void
.end method

.method public asThumbnail(IZ)V
    .locals 2

    .line 155
    invoke-virtual {p0}, Lcom/taobao/phenix/request/ImageRequest;->getImageUriInfo()Lcom/taobao/phenix/request/ImageUriInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageUriInfo;->getSchemeInfo()Lcom/taobao/phenix/request/SchemeInfo;

    move-result-object v0

    .line 156
    iput p1, v0, Lcom/taobao/phenix/request/SchemeInfo;->thumbnailType:I

    .line 157
    iput-boolean p2, v0, Lcom/taobao/phenix/request/SchemeInfo;->useOriginIfThumbNotExist:Z

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#THUMBNAIL$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    mul-int/lit16 p1, p1, 0x2710

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-virtual {p0}, Lcom/taobao/phenix/request/ImageRequest;->getImageUriInfo()Lcom/taobao/phenix/request/ImageUriInfo;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/taobao/phenix/request/ImageUriInfo;->addMemoryCacheKeySuffix(Ljava/lang/String;)V

    .line 160
    invoke-direct {p0, p1}, Lcom/taobao/phenix/request/ImageRequest;->addMultiplexKeySuffix(Ljava/lang/String;)V

    return-void
.end method

.method public disableSecondary()V
    .locals 1

    const/4 v0, 0x0

    .line 313
    iput-object v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mSecondaryUriInfo:Lcom/taobao/phenix/request/ImageUriInfo;

    return-void
.end method

.method public forceAnimationStatic(Z)V
    .locals 1

    .line 403
    iput-boolean p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mForcedAnimationStatic:Z

    .line 404
    iget-boolean p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mForcedAnimationStatic:Z

    if-eqz p1, :cond_0

    const-string p1, "#FSTATIC"

    .line 406
    invoke-virtual {p0}, Lcom/taobao/phenix/request/ImageRequest;->getImageUriInfo()Lcom/taobao/phenix/request/ImageUriInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/request/ImageUriInfo;->addMemoryCacheKeySuffix(Ljava/lang/String;)V

    .line 407
    invoke-direct {p0, p1}, Lcom/taobao/phenix/request/ImageRequest;->addMultiplexKeySuffix(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAllowedSizeLevel()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mAllowedSizeLevel:I

    return v0
.end method

.method public getBitmapProcessors()[Lcom/taobao/phenix/bitmap/BitmapProcessor;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mBitmapProcessors:[Lcom/taobao/phenix/bitmap/BitmapProcessor;

    return-object v0
.end method

.method public getBlockingFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mBlockingFuture:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public getDiskCacheCatalog()I
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mImageUriInfo:Lcom/taobao/phenix/request/ImageUriInfo;

    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageUriInfo;->getDiskCacheCatalog()I

    move-result v0

    return v0
.end method

.method public getDiskCacheKey()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mImageUriInfo:Lcom/taobao/phenix/request/ImageUriInfo;

    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageUriInfo;->getDiskCacheKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDiskCachePriority()I
    .locals 1

    .line 221
    iget v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mDiskCachePriority:I

    return v0
.end method

.method public getImageUriInfo()Lcom/taobao/phenix/request/ImageUriInfo;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mImageUriInfo:Lcom/taobao/phenix/request/ImageUriInfo;

    return-object v0
.end method

.method public getLoaderExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mLoaderExtras:Ljava/util/Map;

    return-object v0
.end method

.method public getMaxViewHeight()I
    .locals 1

    .line 281
    iget v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mMaxViewHeight:I

    return v0
.end method

.method public getMaxViewWidth()I
    .locals 1

    .line 277
    iget v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mMaxViewWidth:I

    return v0
.end method

.method public getMemoryCacheKey()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mImageUriInfo:Lcom/taobao/phenix/request/ImageUriInfo;

    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageUriInfo;->getMemoryCacheKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMemoryCachePriority()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mMemoryCachePriority:I

    return v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mModuleName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getMultiplexKey()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mMultiplexKey:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mImageUriInfo:Lcom/taobao/phenix/request/ImageUriInfo;

    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageUriInfo;->getDiskCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "#SLEVEL$"

    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/taobao/phenix/request/ImageRequest;->mAllowedSizeLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "#FLAGS$"

    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/taobao/phenix/request/ImageRequest;->mSwitchFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "#MAXW$"

    .line 253
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/taobao/phenix/request/ImageRequest;->mMaxViewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "#MAXH$"

    .line 254
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/taobao/phenix/request/ImageRequest;->mMaxViewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "#SPRIOR$"

    .line 255
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/phenix/request/ImageRequest;->getSchedulePriority()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "#DPRIOR$"

    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/taobao/phenix/request/ImageRequest;->mDiskCachePriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "#CATALOG$"

    .line 257
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mImageUriInfo:Lcom/taobao/phenix/request/ImageUriInfo;

    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageUriInfo;->getDiskCacheCatalog()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mSecondaryUriInfo:Lcom/taobao/phenix/request/ImageUriInfo;

    if-eqz v0, :cond_0

    const-string v0, "#SECOND$"

    .line 259
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mSecondaryUriInfo:Lcom/taobao/phenix/request/ImageUriInfo;

    .line 260
    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageUriInfo;->getDiskCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x24

    .line 261
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mSecondaryUriInfo:Lcom/taobao/phenix/request/ImageUriInfo;

    .line 262
    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageUriInfo;->getDiskCacheCatalog()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mMultiplexKeySuffix:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mMultiplexKeySuffix:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v0, 0x0

    .line 267
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mMultiplexKey:Ljava/lang/String;

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mMultiplexKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mImageUriInfo:Lcom/taobao/phenix/request/ImageUriInfo;

    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageUriInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPexodeOptions()Lcom/taobao/pexode/PexodeOptions;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mPexodeOptions:Lcom/taobao/pexode/PexodeOptions;

    return-object v0
.end method

.method public declared-synchronized getPhenixTicket()Lcom/taobao/phenix/intf/PhenixTicket;
    .locals 1

    monitor-enter p0

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mPhenixTicket:Lcom/taobao/phenix/intf/PhenixTicket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProduceTimeline()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 353
    invoke-virtual {p0}, Lcom/taobao/phenix/request/ImageRequest;->getProducerListener()Lcom/taobao/rxm/produce/ProducerListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/phenix/request/ImageRequest;->getProducerListener()Lcom/taobao/rxm/produce/ProducerListener;

    move-result-object v0

    check-cast v0, Lcom/taobao/phenix/chain/PhenixProduceListener;

    invoke-virtual {v0}, Lcom/taobao/phenix/chain/PhenixProduceListener;->getProduceTimeline()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getProgressUpdateStep()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mProgressUpdateStep:I

    return v0
.end method

.method public getRequestStartTime()J
    .locals 2

    .line 285
    iget-wide v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mRequestStartTime:J

    return-wide v0
.end method

.method public getSecondaryUriInfo()Lcom/taobao/phenix/request/ImageUriInfo;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mSecondaryUriInfo:Lcom/taobao/phenix/request/ImageUriInfo;

    return-object v0
.end method

.method public declared-synchronized getStatistics()Lcom/taobao/phenix/request/ImageStatistics;
    .locals 1

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mStatistics:Lcom/taobao/phenix/request/ImageStatistics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWorkThreadEndTime()J
    .locals 2

    .line 289
    iget-wide v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mWorkThreadEndTime:J

    return-wide v0
.end method

.method public isAllowedSizeLevel(I)Z
    .locals 1

    .line 82
    iget v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mAllowedSizeLevel:I

    and-int/2addr p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isForcedAnimationStatic()Z
    .locals 1

    .line 412
    iget-boolean v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mForcedAnimationStatic:Z

    return v0
.end method

.method public isMemoryOnly()Z
    .locals 1

    .line 142
    iget v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mSwitchFlags:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOnlyCache()Z
    .locals 1

    .line 146
    iget v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mSwitchFlags:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReleasableDrawableSpecified()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mReleasableDrawableSpecified:Z

    return v0
.end method

.method public isRetrying()Z
    .locals 1

    .line 379
    iget-boolean v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mIsRetrying:Z

    return v0
.end method

.method public isSkipCache()Z
    .locals 2

    .line 150
    iget v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mSwitchFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public memoryOnly(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 112
    iget p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mSwitchFlags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mSwitchFlags:I

    goto :goto_0

    .line 114
    :cond_0
    iget p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mSwitchFlags:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mSwitchFlags:I

    .line 116
    :goto_0
    invoke-direct {p0}, Lcom/taobao/phenix/request/ImageRequest;->rebuildKeyIfChanged()V

    return-void
.end method

.method public onlyCache(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 121
    iget p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mSwitchFlags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mSwitchFlags:I

    goto :goto_0

    .line 123
    :cond_0
    iget p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mSwitchFlags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mSwitchFlags:I

    .line 125
    :goto_0
    invoke-direct {p0}, Lcom/taobao/phenix/request/ImageRequest;->rebuildKeyIfChanged()V

    return-void
.end method

.method public releasableDrawableSpecified(Z)V
    .locals 0

    .line 138
    iput-boolean p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mReleasableDrawableSpecified:Z

    return-void
.end method

.method public declared-synchronized resetBeforeRetry(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 384
    :try_start_0
    invoke-super {p0}, Lcom/taobao/rxm/request/RequestContext;->reset()V

    const/4 v0, 0x1

    .line 385
    iput-boolean v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mIsRetrying:Z

    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/taobao/phenix/request/ImageRequest;->mRequestStartTime:J

    const/4 v1, 0x0

    .line 387
    iput-object v1, p0, Lcom/taobao/phenix/request/ImageRequest;->mSecondaryUriInfo:Lcom/taobao/phenix/request/ImageUriInfo;

    .line 388
    iput-object v1, p0, Lcom/taobao/phenix/request/ImageRequest;->mBlockingFuture:Ljava/util/concurrent/Future;

    .line 389
    iget-object v2, p0, Lcom/taobao/phenix/request/ImageRequest;->mImageUriInfo:Lcom/taobao/phenix/request/ImageUriInfo;

    invoke-virtual {v2}, Lcom/taobao/phenix/request/ImageUriInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 390
    new-instance v2, Lcom/taobao/phenix/request/ImageUriInfo;

    iget-object v3, p0, Lcom/taobao/phenix/request/ImageRequest;->mImageUriInfo:Lcom/taobao/phenix/request/ImageUriInfo;

    invoke-virtual {v3}, Lcom/taobao/phenix/request/ImageUriInfo;->getCacheKeyInspector()Lcom/taobao/phenix/cache/CacheKeyInspector;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/taobao/phenix/request/ImageUriInfo;-><init>(Ljava/lang/String;Lcom/taobao/phenix/cache/CacheKeyInspector;)V

    iput-object v2, p0, Lcom/taobao/phenix/request/ImageRequest;->mImageUriInfo:Lcom/taobao/phenix/request/ImageUriInfo;

    .line 391
    iput-object v1, p0, Lcom/taobao/phenix/request/ImageRequest;->mMultiplexKey:Ljava/lang/String;

    .line 393
    :cond_0
    new-instance p1, Lcom/taobao/phenix/request/ImageStatistics;

    iget-object v1, p0, Lcom/taobao/phenix/request/ImageRequest;->mImageUriInfo:Lcom/taobao/phenix/request/ImageUriInfo;

    invoke-direct {p1, v1, v0}, Lcom/taobao/phenix/request/ImageStatistics;-><init>(Lcom/taobao/phenix/request/ImageUriInfo;Z)V

    iput-object p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mStatistics:Lcom/taobao/phenix/request/ImageStatistics;

    .line 395
    iget-object p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mLoaderExtras:Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 396
    iget-object p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mLoaderExtras:Ljava/util/Map;

    const-string v0, "inner_is_async_http"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mStatistics:Lcom/taobao/phenix/request/ImageStatistics;

    iget-object v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mLoaderExtras:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/taobao/phenix/request/ImageStatistics;->setExtras(Ljava/util/Map;)V

    .line 399
    :cond_1
    iget-object p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mStatistics:Lcom/taobao/phenix/request/ImageStatistics;

    iget v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mDiskCachePriority:I

    invoke-virtual {p1, v0}, Lcom/taobao/phenix/request/ImageStatistics;->setDiskCachePriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setBitmapProcessors([Lcom/taobao/phenix/bitmap/BitmapProcessor;)V
    .locals 5
    .param p1    # [Lcom/taobao/phenix/bitmap/BitmapProcessor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 167
    array-length v0, p1

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#PROCESSOR_"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-interface {v3}, Lcom/taobao/phenix/bitmap/BitmapProcessor;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    :cond_1
    iput-object p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mBitmapProcessors:[Lcom/taobao/phenix/bitmap/BitmapProcessor;

    .line 174
    invoke-virtual {p0}, Lcom/taobao/phenix/request/ImageRequest;->getImageUriInfo()Lcom/taobao/phenix/request/ImageUriInfo;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/taobao/phenix/request/ImageUriInfo;->addMemoryCacheKeySuffix(Ljava/lang/String;)V

    .line 175
    invoke-direct {p0, v1}, Lcom/taobao/phenix/request/ImageRequest;->addMultiplexKeySuffix(Ljava/lang/String;)V

    return-void
.end method

.method public setBlockingFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 341
    iput-object p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mBlockingFuture:Ljava/util/concurrent/Future;

    return-void
.end method

.method public setDiskCachePriority(I)V
    .locals 1

    .line 212
    iget v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mDiskCachePriority:I

    if-eq v0, p1, :cond_0

    .line 213
    iput p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mDiskCachePriority:I

    .line 214
    iget-object p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mStatistics:Lcom/taobao/phenix/request/ImageStatistics;

    iget v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mDiskCachePriority:I

    invoke-virtual {p1, v0}, Lcom/taobao/phenix/request/ImageStatistics;->setDiskCachePriority(I)V

    .line 215
    invoke-direct {p0}, Lcom/taobao/phenix/request/ImageRequest;->rebuildKeyIfChanged()V

    :cond_0
    return-void
.end method

.method public setMaxViewHeight(I)V
    .locals 2

    .line 187
    iget v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mMaxViewHeight:I

    if-eq v0, p1, :cond_0

    .line 188
    iput p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mMaxViewHeight:I

    .line 189
    iget-object p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mImageUriInfo:Lcom/taobao/phenix/request/ImageUriInfo;

    iget v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mMaxViewWidth:I

    iget v1, p0, Lcom/taobao/phenix/request/ImageRequest;->mMaxViewHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/taobao/phenix/request/ImageUriInfo;->setMaxViewSize(II)V

    .line 190
    invoke-direct {p0}, Lcom/taobao/phenix/request/ImageRequest;->rebuildKeyIfChanged()V

    :cond_0
    return-void
.end method

.method public setMaxViewWidth(I)V
    .locals 2

    .line 179
    iget v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mMaxViewWidth:I

    if-eq v0, p1, :cond_0

    .line 180
    iput p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mMaxViewWidth:I

    .line 181
    iget-object p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mImageUriInfo:Lcom/taobao/phenix/request/ImageUriInfo;

    iget v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mMaxViewWidth:I

    iget v1, p0, Lcom/taobao/phenix/request/ImageRequest;->mMaxViewHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/taobao/phenix/request/ImageUriInfo;->setMaxViewSize(II)V

    .line 182
    invoke-direct {p0}, Lcom/taobao/phenix/request/ImageRequest;->rebuildKeyIfChanged()V

    :cond_0
    return-void
.end method

.method public setMemoryCachePriority(I)V
    .locals 0

    .line 208
    iput p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mMemoryCachePriority:I

    return-void
.end method

.method public setModuleName(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mModuleName:Ljava/lang/String;

    return-void
.end method

.method public setPexodeOptions(Lcom/taobao/pexode/PexodeOptions;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mPexodeOptions:Lcom/taobao/pexode/PexodeOptions;

    return-void
.end method

.method public setProgressUpdateStep(I)V
    .locals 0

    .line 199
    iput p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mProgressUpdateStep:I

    return-void
.end method

.method public setSecondaryPath(Ljava/lang/String;)V
    .locals 2

    .line 321
    new-instance v0, Lcom/taobao/phenix/request/ImageUriInfo;

    iget-object v1, p0, Lcom/taobao/phenix/request/ImageRequest;->mImageUriInfo:Lcom/taobao/phenix/request/ImageUriInfo;

    invoke-virtual {v1}, Lcom/taobao/phenix/request/ImageUriInfo;->getCacheKeyInspector()Lcom/taobao/phenix/cache/CacheKeyInspector;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/taobao/phenix/request/ImageUriInfo;-><init>(Ljava/lang/String;Lcom/taobao/phenix/cache/CacheKeyInspector;)V

    iput-object v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mSecondaryUriInfo:Lcom/taobao/phenix/request/ImageUriInfo;

    return-void
.end method

.method public setWorkThreadEndTime(J)V
    .locals 0

    .line 293
    iput-wide p1, p0, Lcom/taobao/phenix/request/ImageRequest;->mWorkThreadEndTime:J

    return-void
.end method

.method public skipCache()V
    .locals 1

    .line 129
    iget v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mSwitchFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/phenix/request/ImageRequest;->mSwitchFlags:I

    .line 130
    invoke-direct {p0}, Lcom/taobao/phenix/request/ImageRequest;->rebuildKeyIfChanged()V

    return-void
.end method

.method public syncFrom(Lcom/taobao/rxm/request/RequestContext;)V
    .locals 3

    .line 362
    check-cast p1, Lcom/taobao/phenix/request/ImageRequest;

    .line 363
    invoke-virtual {p1}, Lcom/taobao/phenix/request/ImageRequest;->getStatistics()Lcom/taobao/phenix/request/ImageStatistics;

    move-result-object v0

    .line 364
    iget-object v1, p0, Lcom/taobao/phenix/request/ImageRequest;->mStatistics:Lcom/taobao/phenix/request/ImageStatistics;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/taobao/phenix/request/ImageStatistics;->duplicate(Z)V

    .line 365
    iget-object v1, p0, Lcom/taobao/phenix/request/ImageRequest;->mStatistics:Lcom/taobao/phenix/request/ImageStatistics;

    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageStatistics;->getFromType()Lcom/taobao/phenix/request/ImageStatistics$FromType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/phenix/request/ImageStatistics;->fromType(Lcom/taobao/phenix/request/ImageStatistics$FromType;)V

    .line 366
    iget-object v1, p0, Lcom/taobao/phenix/request/ImageRequest;->mStatistics:Lcom/taobao/phenix/request/ImageStatistics;

    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageStatistics;->getFormat()Lcom/taobao/pexode/mimetype/MimeType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/phenix/request/ImageStatistics;->setCompressFormat(Lcom/taobao/pexode/mimetype/MimeType;)V

    .line 367
    iget-object v1, p0, Lcom/taobao/phenix/request/ImageRequest;->mStatistics:Lcom/taobao/phenix/request/ImageStatistics;

    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageStatistics;->getSize()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/taobao/phenix/request/ImageStatistics;->setSize(I)V

    .line 369
    invoke-virtual {p0}, Lcom/taobao/phenix/request/ImageRequest;->getProduceTimeline()Ljava/util/Map;

    move-result-object v0

    .line 370
    invoke-virtual {p1}, Lcom/taobao/phenix/request/ImageRequest;->getProduceTimeline()Ljava/util/Map;

    move-result-object p1

    .line 371
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 372
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 373
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
