.class public Lcom/taobao/phenix/animate/AnimatedFramesBuffer;
.super Ljava/lang/Object;
.source "AnimatedFramesBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/phenix/animate/AnimatedFramesBuffer$WeakDecodeAction;,
        Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;
    }
.end annotation


# static fields
.field private static final MAX_CACHE_SIZE:I = 0x500000

.field private static final MAX_FREE_SIZE:I = 0x200000


# instance fields
.field private final mCachedEntities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mDecodeFlights:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mDecodeRunning:Z

.field private final mDecodeScheduler:Lcom/taobao/rxm/schedule/Scheduler;

.field private mDrawableId:Ljava/lang/String;

.field private mFrameCompositor:Lcom/taobao/phenix/animate/AnimatedFrameCompositor;

.field private final mFrameCount:I

.field private mFreeBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mImageHeight:I

.field private final mImageWidth:I

.field private final mMaxCacheCount:I

.field private final mMaxFreeCount:I

.field private final mWeakDecodeAction:Lcom/taobao/rxm/schedule/ScheduledAction;


# direct methods
.method public constructor <init>(Lcom/taobao/pexode/animate/AnimatedImage;Lcom/taobao/rxm/schedule/Scheduler;Ljava/lang/String;)V
    .locals 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer$WeakDecodeAction;

    invoke-direct {v0, p0}, Lcom/taobao/phenix/animate/AnimatedFramesBuffer$WeakDecodeAction;-><init>(Lcom/taobao/phenix/animate/AnimatedFramesBuffer;)V

    iput-object v0, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mWeakDecodeAction:Lcom/taobao/rxm/schedule/ScheduledAction;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mHandler:Landroid/os/Handler;

    .line 60
    iput-object p3, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mDrawableId:Ljava/lang/String;

    .line 61
    invoke-interface {p1}, Lcom/taobao/pexode/animate/AnimatedImage;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mImageWidth:I

    .line 62
    invoke-interface {p1}, Lcom/taobao/pexode/animate/AnimatedImage;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mImageHeight:I

    .line 63
    invoke-interface {p1}, Lcom/taobao/pexode/animate/AnimatedImage;->getFrameCount()I

    move-result v0

    iput v0, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mFrameCount:I

    .line 64
    iget v0, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mImageWidth:I

    iget v1, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mImageHeight:I

    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x4

    const/high16 v1, 0x500000

    div-int/2addr v1, v0

    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x6

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mMaxCacheCount:I

    .line 65
    iget v1, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mImageWidth:I

    iget v2, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mImageHeight:I

    mul-int v1, v1, v2

    mul-int/lit8 v1, v1, 0x4

    const/high16 v2, 0x200000

    div-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mMaxFreeCount:I

    .line 66
    iput-object p2, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mDecodeScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    .line 67
    new-instance p2, Landroid/util/SparseArray;

    iget v0, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mMaxCacheCount:I

    invoke-direct {p2, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p2, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mCachedEntities:Landroid/util/SparseArray;

    .line 68
    new-instance p2, Ljava/util/ArrayList;

    iget v0, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mMaxFreeCount:I

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mFreeBitmaps:Ljava/util/List;

    .line 69
    new-instance p2, Landroid/util/SparseArray;

    iget v0, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mMaxCacheCount:I

    invoke-direct {p2, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p2, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mDecodeFlights:Landroid/util/SparseArray;

    .line 70
    new-instance p2, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;

    invoke-direct {p2, p1, p0, p3}, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;-><init>(Lcom/taobao/pexode/animate/AnimatedImage;Lcom/taobao/phenix/animate/AnimatedFramesBuffer;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mFrameCompositor:Lcom/taobao/phenix/animate/AnimatedFrameCompositor;

    return-void
.end method

.method static synthetic access$200(Lcom/taobao/phenix/animate/AnimatedFramesBuffer;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->onDecodeActionRun()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private isInRange(III)Z
    .locals 0

    if-le p2, p1, :cond_0

    if-lt p3, p1, :cond_0

    if-lt p3, p2, :cond_1

    :cond_0
    if-gt p2, p1, :cond_2

    if-ge p3, p1, :cond_1

    if-ge p3, p2, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private newCachedEntityAt(I)Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;
    .locals 4

    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mFreeBitmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mFreeBitmaps:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 89
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 91
    invoke-static {}, Lcom/taobao/pexode/Pexode;->isAshmemSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    invoke-static {}, Lcom/taobao/pexode/common/AshmemBitmapFactory;->instance()Lcom/taobao/pexode/common/AshmemBitmapFactory;

    move-result-object v0

    iget v1, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mImageWidth:I

    iget v2, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mImageHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/pexode/common/AshmemBitmapFactory;->newBitmapWithPin(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 96
    iget v0, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mImageWidth:I

    iget v1, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mImageHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mFrameCompositor:Lcom/taobao/phenix/animate/AnimatedFrameCompositor;

    invoke-virtual {v1, p1, v0}, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->renderFrame(ILandroid/graphics/Bitmap;)V

    .line 103
    new-instance p1, Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;

    invoke-direct {p1, v0}, Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;-><init>(Landroid/graphics/Bitmap;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 89
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private onDecodeActionRun()V
    .locals 4

    .line 192
    :cond_0
    :goto_0
    monitor-enter p0

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mDecodeFlights:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    .line 194
    iput-boolean v1, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mDecodeRunning:Z

    .line 195
    monitor-exit p0

    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mDecodeFlights:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 198
    iget-object v2, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mDecodeFlights:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 199
    iget-object v3, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mDecodeFlights:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 200
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 203
    monitor-enter p0

    .line 204
    :try_start_1
    iget-object v3, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mCachedEntities:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    .line 205
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_3

    .line 208
    invoke-direct {p0, v0}, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->newCachedEntityAt(I)Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;

    move-result-object v1

    .line 209
    monitor-enter p0

    .line 210
    :try_start_2
    iget-object v3, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mCachedEntities:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    :goto_1
    if-eqz v2, :cond_0

    .line 214
    iget-object v0, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 205
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 200
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private recycleAsFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mFreeBitmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mMaxFreeCount:I

    if-ge v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 251
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mImageWidth:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mImageHeight:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mFreeBitmaps:Ljava/util/List;

    .line 252
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mFreeBitmaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized dropCaches()V
    .locals 5

    monitor-enter p0

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mFrameCompositor:Lcom/taobao/phenix/animate/AnimatedFrameCompositor;

    invoke-virtual {v0}, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->dropCaches()V

    .line 243
    iget-object v0, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mDecodeFlights:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 244
    iget-object v0, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mCachedEntities:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 245
    iget-object v0, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mFreeBitmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "AnimatedImage"

    const-string v1, "%s dropped frame caches"

    const/4 v2, 0x1

    .line 246
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mDrawableId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized freeBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    monitor-enter p0

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mCachedEntities:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 229
    iget-object v2, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mCachedEntities:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;

    if-eqz v2, :cond_0

    .line 230
    invoke-static {v2}, Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;->access$100(Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 231
    invoke-static {v2}, Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;->access$010(Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;)I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne v1, v0, :cond_2

    .line 237
    invoke-direct {p0, p1}, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->recycleAsFreeBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized getCachedBitmapAt(I)Landroid/graphics/Bitmap;
    .locals 1

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mCachedEntities:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 76
    monitor-exit p0

    return-object p1

    .line 78
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;->access$008(Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;)I

    .line 79
    invoke-static {p1}, Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;->access$100(Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startCacheFrom(IILjava/lang/Runnable;)V
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 107
    :goto_0
    :try_start_0
    invoke-static {v2}, Lcom/taobao/tcommon/core/Preconditions;->checkArgument(Z)V

    if-lez p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 108
    :goto_1
    invoke-static {v2}, Lcom/taobao/tcommon/core/Preconditions;->checkArgument(Z)V

    .line 111
    iget v2, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mMaxCacheCount:I

    if-le p2, v2, :cond_2

    .line 112
    iget p2, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mMaxCacheCount:I

    .line 122
    :cond_2
    iget-object v2, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mFrameCompositor:Lcom/taobao/phenix/animate/AnimatedFrameCompositor;

    invoke-virtual {v2, p1}, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->getFrameInfoAt(I)Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;->mDisposalMode:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    sget-object v3, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;->DISPOSE_TO_PREVIOUS:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    if-ne v2, v3, :cond_3

    add-int/lit8 v2, p1, -0x1

    .line 123
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_2

    :cond_3
    move v2, p1

    :goto_2
    move v3, v2

    :goto_3
    if-ltz v3, :cond_5

    .line 126
    iget-object v4, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mCachedEntities:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_5
    const/4 v3, -0x1

    :goto_4
    add-int v4, v2, p2

    .line 134
    iget v5, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mFrameCount:I

    rem-int/2addr v4, v5

    const/4 v5, 0x0

    .line 135
    :cond_6
    :goto_5
    iget-object v6, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mCachedEntities:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 136
    iget-object v6, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mCachedEntities:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    if-eq v6, v3, :cond_8

    .line 137
    invoke-direct {p0, v2, v4, v6}, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->isInRange(III)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_6

    .line 142
    :cond_7
    iget-object v6, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mCachedEntities:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;

    .line 143
    iget-object v7, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mCachedEntities:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->removeAt(I)V

    if-eqz v6, :cond_6

    .line 144
    invoke-static {v6}, Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;->access$000(Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;)I

    move-result v7

    if-gtz v7, :cond_6

    .line 145
    invoke-static {v6}, Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;->access$100(Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->recycleAsFreeBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5

    :cond_8
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    .line 151
    :goto_7
    iget-object v4, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mDecodeFlights:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 152
    iget-object v4, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mDecodeFlights:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 153
    invoke-direct {p0, v2, p2, v4}, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->isInRange(III)Z

    move-result v4

    if-eqz v4, :cond_a

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 156
    :cond_a
    iget-object v4, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mDecodeFlights:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_7

    :cond_b
    :goto_8
    if-ge v0, p2, :cond_f

    add-int v3, v2, v0

    .line 162
    iget v4, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mFrameCount:I

    rem-int/2addr v3, v4

    .line 163
    iget-object v4, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mCachedEntities:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_c

    if-ne p1, v3, :cond_e

    .line 165
    iget-object v3, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9

    :cond_c
    if-ne p1, v3, :cond_d

    .line 170
    iget-object v4, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mDecodeFlights:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_9

    .line 172
    :cond_d
    iget-object v4, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mDecodeFlights:Landroid/util/SparseArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_e
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 177
    :cond_f
    iget-boolean p1, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mDecodeRunning:Z

    if-nez p1, :cond_10

    .line 178
    iput-boolean v1, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mDecodeRunning:Z

    .line 179
    iget-object p1, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mDecodeScheduler:Lcom/taobao/rxm/schedule/Scheduler;

    iget-object p2, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mWeakDecodeAction:Lcom/taobao/rxm/schedule/ScheduledAction;

    invoke-interface {p1, p2}, Lcom/taobao/rxm/schedule/Scheduler;->schedule(Lcom/taobao/rxm/schedule/ScheduledAction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :cond_10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_b

    :goto_a
    throw p1

    :goto_b
    goto :goto_a
.end method

.method public startCacheFrom(ILjava/lang/Runnable;)V
    .locals 1

    .line 186
    iget v0, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->mMaxCacheCount:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->startCacheFrom(IILjava/lang/Runnable;)V

    return-void
.end method
