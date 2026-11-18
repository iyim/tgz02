.class public Lcom/alibaba/ailabs/appbox/view/RoundedCornersTransform;
.super Ljava/lang/Object;
.source "RoundedCornersTransform.java"

# interfaces
.implements Lcom/bumptech/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Transformation<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private isLeftBottom:Z

.field private isLeftTop:Z

.field private isRightBotoom:Z

.field private isRightTop:Z

.field private mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private radiusLeftBot:F

.field private radiusLeftTop:F

.field private radiusRightBot:F

.field private radiusRightTop:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/view/RoundedCornersTransform;->mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 60
    iput p2, p0, Lcom/alibaba/ailabs/appbox/view/RoundedCornersTransform;->radiusLeftBot:F

    .line 61
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/RoundedCornersTransform;->radiusLeftTop:F

    .line 62
    iput p3, p0, Lcom/alibaba/ailabs/appbox/view/RoundedCornersTransform;->radiusRightTop:F

    .line 63
    iput p4, p0, Lcom/alibaba/ailabs/appbox/view/RoundedCornersTransform;->radiusRightBot:F

    return-void
.end method


# virtual methods
.method public setNeedCorner(ZZZZ)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/view/RoundedCornersTransform;->isLeftTop:Z

    .line 49
    iput-boolean p2, p0, Lcom/alibaba/ailabs/appbox/view/RoundedCornersTransform;->isRightTop:Z

    .line 50
    iput-boolean p3, p0, Lcom/alibaba/ailabs/appbox/view/RoundedCornersTransform;->isLeftBottom:Z

    .line 51
    iput-boolean p4, p0, Lcom/alibaba/ailabs/appbox/view/RoundedCornersTransform;->isRightBotoom:Z

    return-void
.end method

.method public transform(Landroid/content/Context;Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/engine/Resource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;II)",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 70
    invoke-interface {p2}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-le p3, p4, :cond_0

    int-to-float p2, p4

    int-to-float p3, p3

    div-float p4, p2, p3

    .line 78
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p4

    float-to-int p4, v1

    .line 81
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le p4, v1, :cond_3

    div-float/2addr p3, p2

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, p3

    float-to-int v0, p2

    goto :goto_0

    :cond_0
    if-ge p3, p4, :cond_2

    int-to-float p2, p3

    int-to-float p3, p4

    div-float p4, p2, p3

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p4

    float-to-int p4, v1

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le p4, v1, :cond_1

    div-float/2addr p3, p2

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, p3

    float-to-int p4, p2

    goto :goto_0

    :cond_1
    move v8, v0

    move v0, p4

    move p4, v8

    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    move p4, v0

    .line 111
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/view/RoundedCornersTransform;->mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {p2, v0, p4, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_4

    .line 113
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p4, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 116
    :cond_4
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 117
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 119
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    sub-int/2addr p1, p4

    div-int/lit8 p1, p1, 0x2

    if-nez v2, :cond_5

    if-eqz p1, :cond_6

    .line 124
    :cond_5
    new-instance p4, Landroid/graphics/Matrix;

    invoke-direct {p4}, Landroid/graphics/Matrix;-><init>()V

    neg-int v0, v2

    int-to-float v0, v0

    neg-int p1, p1

    int-to-float p1, p1

    .line 125
    invoke-virtual {p4, v0, p1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 126
    invoke-virtual {v1, p4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 129
    :cond_6
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 p1, 0x1

    .line 130
    invoke-virtual {v7, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 131
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/Canvas;->getWidth()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, p4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 134
    iget p4, p0, Lcom/alibaba/ailabs/appbox/view/RoundedCornersTransform;->radiusLeftTop:F

    invoke-virtual {p3, p1, p4, p4, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 137
    iget-boolean p1, p0, Lcom/alibaba/ailabs/appbox/view/RoundedCornersTransform;->isLeftTop:Z

    if-nez p1, :cond_7

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 138
    iget v5, p0, Lcom/alibaba/ailabs/appbox/view/RoundedCornersTransform;->radiusLeftTop:F

    move-object v1, p3

    move v4, v5

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 141
    :cond_7
    iget-boolean p1, p0, Lcom/alibaba/ailabs/appbox/view/RoundedCornersTransform;->isRightTop:Z

    if-nez p1, :cond_8

    .line 142
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget p4, p0, Lcom/alibaba/ailabs/appbox/view/RoundedCornersTransform;->radiusRightTop:F

    sub-float v2, p1, p4

    const/4 v3, 0x0

    invoke-virtual {p3}, Landroid/graphics/Canvas;->getWidth()I

    move-result p1

    int-to-float v4, p1

    iget v5, p0, Lcom/alibaba/ailabs/appbox/view/RoundedCornersTransform;->radiusRightTop:F

    move-object v1, p3

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 145
    :cond_8
    iget-boolean p1, p0, Lcom/alibaba/ailabs/appbox/view/RoundedCornersTransform;->isLeftBottom:Z

    if-nez p1, :cond_9

    const/4 v2, 0x0

    .line 146
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget v4, p0, Lcom/alibaba/ailabs/appbox/view/RoundedCornersTransform;->radiusLeftBot:F

    sub-float v3, p1, v4

    invoke-virtual {p3}, Landroid/graphics/Canvas;->getHeight()I

    move-result p1

    int-to-float v5, p1

    move-object v1, p3

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 149
    :cond_9
    iget-boolean p1, p0, Lcom/alibaba/ailabs/appbox/view/RoundedCornersTransform;->isRightBotoom:Z

    if-nez p1, :cond_a

    .line 150
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget p4, p0, Lcom/alibaba/ailabs/appbox/view/RoundedCornersTransform;->radiusRightBot:F

    sub-float v2, p1, p4

    invoke-virtual {p3}, Landroid/graphics/Canvas;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget p4, p0, Lcom/alibaba/ailabs/appbox/view/RoundedCornersTransform;->radiusRightBot:F

    sub-float v3, p1, p4

    invoke-virtual {p3}, Landroid/graphics/Canvas;->getWidth()I

    move-result p1

    int-to-float v4, p1

    invoke-virtual {p3}, Landroid/graphics/Canvas;->getHeight()I

    move-result p1

    int-to-float v5, p1

    move-object v1, p3

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 153
    :cond_a
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/RoundedCornersTransform;->mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {p2, p1}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    move-result-object p1

    return-object p1
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 0
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
