.class public Lcom/taobao/phenix/animate/AnimatedFrameCompositor;
.super Ljava/lang/Object;
.source "AnimatedFrameCompositor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/phenix/animate/AnimatedFrameCompositor$Callback;,
        Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;
    }
.end annotation


# instance fields
.field private final mAnimatedFramesBuffer:Lcom/taobao/phenix/animate/AnimatedFramesBuffer;

.field private final mAnimatedImage:Lcom/taobao/pexode/animate/AnimatedImage;

.field private mDrawableId:Ljava/lang/String;

.field private final mFrameInfos:[Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;

.field private final mImageHeight:I

.field private final mImageWidth:I

.field private mTempRenderBitmap:Landroid/graphics/Bitmap;

.field private final mTransparentFillPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/taobao/pexode/animate/AnimatedImage;Lcom/taobao/phenix/animate/AnimatedFramesBuffer;Ljava/lang/String;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mAnimatedImage:Lcom/taobao/pexode/animate/AnimatedImage;

    .line 30
    iput-object p3, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mDrawableId:Ljava/lang/String;

    .line 31
    iget-object p1, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mAnimatedImage:Lcom/taobao/pexode/animate/AnimatedImage;

    invoke-interface {p1}, Lcom/taobao/pexode/animate/AnimatedImage;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mImageWidth:I

    .line 32
    iget-object p1, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mAnimatedImage:Lcom/taobao/pexode/animate/AnimatedImage;

    invoke-interface {p1}, Lcom/taobao/pexode/animate/AnimatedImage;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mImageHeight:I

    .line 33
    iput-object p2, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mAnimatedFramesBuffer:Lcom/taobao/phenix/animate/AnimatedFramesBuffer;

    .line 34
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mTransparentFillPaint:Landroid/graphics/Paint;

    .line 35
    iget-object p1, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mTransparentFillPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iget-object p1, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mTransparentFillPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    iget-object p1, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mTransparentFillPaint:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 38
    iget-object p1, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mAnimatedImage:Lcom/taobao/pexode/animate/AnimatedImage;

    invoke-interface {p1}, Lcom/taobao/pexode/animate/AnimatedImage;->getFrameCount()I

    move-result p1

    new-array p1, p1, [Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;

    iput-object p1, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mFrameInfos:[Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;

    .line 39
    :goto_0
    iget-object p1, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mAnimatedImage:Lcom/taobao/pexode/animate/AnimatedImage;

    invoke-interface {p1}, Lcom/taobao/pexode/animate/AnimatedImage;->getFrameCount()I

    move-result p1

    if-ge p2, p1, :cond_0

    .line 40
    iget-object p1, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mAnimatedImage:Lcom/taobao/pexode/animate/AnimatedImage;

    invoke-interface {p1, p2}, Lcom/taobao/pexode/animate/AnimatedImage;->getFrame(I)Lcom/taobao/pexode/animate/AnimatedImageFrame;

    move-result-object p1

    .line 42
    :try_start_0
    iget-object p3, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mFrameInfos:[Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;

    invoke-interface {p1}, Lcom/taobao/pexode/animate/AnimatedImageFrame;->getFrameInfo()Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;

    move-result-object v0

    aput-object v0, p3, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-interface {p1}, Lcom/taobao/pexode/animate/AnimatedImageFrame;->dispose()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lcom/taobao/pexode/animate/AnimatedImageFrame;->dispose()V

    throw p2

    :cond_0
    return-void
.end method

.method private disposeToBackground(Landroid/graphics/Canvas;Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;)V
    .locals 7

    .line 207
    iget v0, p2, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;->xOffset:I

    int-to-float v2, v0

    iget v0, p2, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;->yOffset:I

    int-to-float v3, v0

    iget v0, p2, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;->xOffset:I

    iget v1, p2, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;->width:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p2, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;->yOffset:I

    iget p2, p2, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;->height:I

    add-int/2addr v0, p2

    int-to-float v5, v0

    iget-object v6, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mTransparentFillPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private ensureTempRenderBitmap()V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mTempRenderBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 99
    invoke-static {}, Lcom/taobao/phenix/bitmap/BitmapSupplier;->getInstance()Lcom/taobao/phenix/bitmap/BitmapSupplier;

    move-result-object v0

    iget v1, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mImageWidth:I

    iget v2, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mImageHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/phenix/bitmap/BitmapSupplier;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mTempRenderBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 101
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :goto_0
    return-void
.end method

.method private getCompositedFrameRenderingType(I)Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mFrameInfos:[Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;

    aget-object p1, v0, p1

    .line 165
    iget-object v0, p1, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;->mDisposalMode:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    .line 166
    sget-object v1, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;->DISPOSE_DO_NOT:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    if-ne v0, v1, :cond_0

    .line 167
    sget-object p1, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->REQUIRED:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    return-object p1

    .line 169
    :cond_0
    sget-object v1, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;->DISPOSE_TO_BACKGROUND:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    if-ne v0, v1, :cond_2

    .line 170
    invoke-direct {p0, p1}, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->isFullFrame(Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 171
    sget-object p1, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->NOT_REQUIRED:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    return-object p1

    .line 173
    :cond_1
    sget-object p1, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->REQUIRED:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    return-object p1

    .line 175
    :cond_2
    sget-object p1, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;->DISPOSE_TO_PREVIOUS:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    if-ne v0, p1, :cond_3

    .line 176
    sget-object p1, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->SKIP:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    return-object p1

    .line 178
    :cond_3
    sget-object p1, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->ABORT:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    return-object p1
.end method

.method private isFullFrame(Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;)Z
    .locals 2

    .line 200
    iget v0, p1, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;->xOffset:I

    if-nez v0, :cond_0

    iget v0, p1, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;->yOffset:I

    if-nez v0, :cond_0

    iget v0, p1, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;->width:I

    iget v1, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mImageWidth:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;->height:I

    iget v0, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mImageHeight:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isKeyFrame(I)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mFrameInfos:[Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;

    aget-object v2, v1, p1

    sub-int/2addr p1, v0

    .line 190
    aget-object p1, v1, p1

    .line 192
    iget-object v1, v2, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;->mBlendMode:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$BlendMode;

    sget-object v3, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$BlendMode;->NO_BLEND:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$BlendMode;

    if-ne v1, v3, :cond_1

    invoke-direct {p0, v2}, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->isFullFrame(Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    iget-object v1, p1, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;->mDisposalMode:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    sget-object v2, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;->DISPOSE_TO_BACKGROUND:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    if-ne v1, v2, :cond_2

    .line 193
    invoke-direct {p0, p1}, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->isFullFrame(Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

.method private prepareWithClosestCompositedFrame(ILandroid/graphics/Canvas;)I
    .locals 5

    :goto_0
    if-ltz p1, :cond_6

    .line 130
    invoke-direct {p0, p1}, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->getCompositedFrameRenderingType(I)Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    move-result-object v0

    .line 131
    sget-object v1, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$1;->$SwitchMap$com$taobao$phenix$animate$AnimatedFrameCompositor$CompositedFrameRenderingType:[I

    invoke-virtual {v0}, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    return p1

    :cond_1
    add-int/2addr p1, v1

    return p1

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mFrameInfos:[Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;

    aget-object v0, v0, p1

    .line 134
    iget-object v2, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mAnimatedFramesBuffer:Lcom/taobao/phenix/animate/AnimatedFramesBuffer;

    invoke-virtual {v2, p1}, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->getCachedBitmapAt(I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 136
    invoke-virtual {p2, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 137
    iget-object v3, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mAnimatedFramesBuffer:Lcom/taobao/phenix/animate/AnimatedFramesBuffer;

    invoke-virtual {v3, v2}, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->freeBitmap(Landroid/graphics/Bitmap;)V

    .line 138
    iget-object v2, v0, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;->mDisposalMode:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    sget-object v3, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;->DISPOSE_TO_BACKGROUND:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    if-ne v2, v3, :cond_3

    .line 139
    invoke-direct {p0, p2, v0}, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->disposeToBackground(Landroid/graphics/Canvas;Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;)V

    :cond_3
    add-int/2addr p1, v1

    return p1

    .line 143
    :cond_4
    invoke-direct {p0, p1}, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->isKeyFrame(I)Z

    move-result v0

    if-eqz v0, :cond_5

    return p1

    :cond_5
    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method private renderFrameAt(ILandroid/graphics/Canvas;)V
    .locals 6

    .line 106
    iget-object v0, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mAnimatedImage:Lcom/taobao/pexode/animate/AnimatedImage;

    invoke-interface {v0, p1}, Lcom/taobao/pexode/animate/AnimatedImage;->getFrame(I)Lcom/taobao/pexode/animate/AnimatedImageFrame;

    move-result-object v0

    .line 108
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    :try_start_1
    invoke-direct {p0}, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->ensureTempRenderBitmap()V

    .line 110
    invoke-interface {v0}, Lcom/taobao/pexode/animate/AnimatedImageFrame;->getWidth()I

    move-result v1

    invoke-interface {v0}, Lcom/taobao/pexode/animate/AnimatedImageFrame;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mTempRenderBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2, v3}, Lcom/taobao/pexode/animate/AnimatedImageFrame;->renderFrame(IILandroid/graphics/Bitmap;)V

    .line 111
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 112
    invoke-interface {v0}, Lcom/taobao/pexode/animate/AnimatedImageFrame;->getXOffset()I

    move-result v1

    int-to-float v1, v1

    invoke-interface {v0}, Lcom/taobao/pexode/animate/AnimatedImageFrame;->getYOffset()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 113
    iget-object v1, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mTempRenderBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 114
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 115
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_3
    const-string v1, "AnimatedImage"

    const-string v2, "%s compositor render frame[%d] error=%s"

    const/4 v3, 0x3

    .line 117
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mDrawableId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x2

    aput-object p2, v3, p1

    invoke-static {v1, v2, v3}, Lcom/taobao/phenix/common/UnitedLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    :goto_0
    invoke-interface {v0}, Lcom/taobao/pexode/animate/AnimatedImageFrame;->dispose()V

    return-void

    :goto_1
    invoke-interface {v0}, Lcom/taobao/pexode/animate/AnimatedImageFrame;->dispose()V

    throw p1
.end method


# virtual methods
.method public declared-synchronized dropCaches()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 54
    :try_start_0
    iput-object v0, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mTempRenderBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFrameInfoAt(I)Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mFrameInfos:[Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public renderFrame(ILandroid/graphics/Bitmap;)V
    .locals 5

    .line 61
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 62
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->isKeyFrame(I)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p1, -0x1

    .line 69
    invoke-direct {p0, p2, v0}, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->prepareWithClosestCompositedFrame(ILandroid/graphics/Canvas;)I

    move-result p2

    :goto_0
    if-ge p2, p1, :cond_4

    .line 76
    iget-object v1, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mFrameInfos:[Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;

    aget-object v1, v1, p2

    .line 77
    iget-object v2, v1, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;->mDisposalMode:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    .line 78
    sget-object v3, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;->DISPOSE_TO_PREVIOUS:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 81
    :cond_1
    iget-object v3, v1, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;->mBlendMode:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$BlendMode;

    sget-object v4, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$BlendMode;->NO_BLEND:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$BlendMode;

    if-ne v3, v4, :cond_2

    .line 82
    invoke-direct {p0, v0, v1}, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->disposeToBackground(Landroid/graphics/Canvas;Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;)V

    .line 84
    :cond_2
    invoke-direct {p0, p2, v0}, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->renderFrameAt(ILandroid/graphics/Canvas;)V

    .line 85
    sget-object v3, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;->DISPOSE_TO_BACKGROUND:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    if-ne v2, v3, :cond_3

    .line 86
    invoke-direct {p0, v0, v1}, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->disposeToBackground(Landroid/graphics/Canvas;Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;)V

    :cond_3
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 90
    :cond_4
    iget-object p2, p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->mFrameInfos:[Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;

    aget-object p2, p2, p1

    .line 91
    iget-object v1, p2, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;->mBlendMode:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$BlendMode;

    sget-object v2, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$BlendMode;->NO_BLEND:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$BlendMode;

    if-ne v1, v2, :cond_5

    .line 92
    invoke-direct {p0, v0, p2}, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->disposeToBackground(Landroid/graphics/Canvas;Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;)V

    .line 94
    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/taobao/phenix/animate/AnimatedFrameCompositor;->renderFrameAt(ILandroid/graphics/Canvas;)V

    return-void
.end method
