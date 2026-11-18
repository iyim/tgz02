.class abstract Lcom/airbnb/lottie/BaseLayer;
.super Ljava/lang/Object;
.source "BaseLayer.java"

# interfaces
.implements Lcom/airbnb/lottie/DrawingContent;
.implements Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;


# static fields
.field private static final SAVE_FLAGS:I = 0x13


# instance fields
.field private final animations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/BaseKeyframeAnimation<",
            "**>;>;"
        }
    .end annotation
.end field

.field final boundsMatrix:Landroid/graphics/Matrix;

.field private final clearPaint:Landroid/graphics/Paint;

.field private final contentPaint:Landroid/graphics/Paint;

.field final layerModel:Lcom/airbnb/lottie/Layer;

.field final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final maskBoundsRect:Landroid/graphics/RectF;

.field private final maskPaint:Landroid/graphics/Paint;

.field private final matrix:Landroid/graphics/Matrix;

.field private final matteBoundsRect:Landroid/graphics/RectF;

.field private matteLayer:Lcom/airbnb/lottie/BaseLayer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mattePaint:Landroid/graphics/Paint;

.field private parentLayer:Lcom/airbnb/lottie/BaseLayer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private parentLayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/BaseLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;

.field private final rect:Landroid/graphics/RectF;

.field private final tempMaskBoundsRect:Landroid/graphics/RectF;

.field final transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

.field private visible:Z


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;)V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->path:Landroid/graphics/Path;

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->maskPaint:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->clearPaint:Landroid/graphics/Paint;

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 58
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->animations:Ljava/util/List;

    .line 68
    iput-boolean v1, p0, Lcom/airbnb/lottie/BaseLayer;->visible:Z

    .line 71
    iput-object p1, p0, Lcom/airbnb/lottie/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 72
    iput-object p2, p0, Lcom/airbnb/lottie/BaseLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    .line 73
    iget-object p1, p0, Lcom/airbnb/lottie/BaseLayer;->clearPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 74
    iget-object p1, p0, Lcom/airbnb/lottie/BaseLayer;->maskPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 75
    invoke-virtual {p2}, Lcom/airbnb/lottie/Layer;->getMatteType()Lcom/airbnb/lottie/Layer$MatteType;

    move-result-object p1

    sget-object v0, Lcom/airbnb/lottie/Layer$MatteType;->Invert:Lcom/airbnb/lottie/Layer$MatteType;

    if-ne p1, v0, :cond_0

    .line 76
    iget-object p1, p0, Lcom/airbnb/lottie/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/airbnb/lottie/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 81
    :goto_0
    invoke-virtual {p2}, Lcom/airbnb/lottie/Layer;->getTransform()Lcom/airbnb/lottie/AnimatableTransform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/AnimatableTransform;->createAnimation()Lcom/airbnb/lottie/TransformKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/BaseLayer;->transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    .line 82
    iget-object p1, p0, Lcom/airbnb/lottie/BaseLayer;->transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->addListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 83
    iget-object p1, p0, Lcom/airbnb/lottie/BaseLayer;->transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->addAnimationsToLayer(Lcom/airbnb/lottie/BaseLayer;)V

    .line 85
    invoke-virtual {p2}, Lcom/airbnb/lottie/Layer;->getMasks()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/airbnb/lottie/Layer;->getMasks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 86
    new-instance p1, Lcom/airbnb/lottie/MaskKeyframeAnimation;

    invoke-virtual {p2}, Lcom/airbnb/lottie/Layer;->getMasks()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/airbnb/lottie/MaskKeyframeAnimation;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/airbnb/lottie/BaseLayer;->mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;

    .line 87
    iget-object p1, p0, Lcom/airbnb/lottie/BaseLayer;->mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;

    invoke-virtual {p1}, Lcom/airbnb/lottie/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 88
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 89
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    goto :goto_1

    .line 92
    :cond_1
    invoke-direct {p0}, Lcom/airbnb/lottie/BaseLayer;->setupInOutAnimations()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/lottie/BaseLayer;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/BaseLayer;->setVisible(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private applyMasks(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 5

    .line 268
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->maskPaint:Landroid/graphics/Paint;

    const/16 v2, 0x13

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 269
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/BaseLayer;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 272
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 274
    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/Mask;

    .line 275
    iget-object v3, p0, Lcom/airbnb/lottie/BaseLayer;->mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 276
    invoke-virtual {v3}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    .line 277
    iget-object v4, p0, Lcom/airbnb/lottie/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v4, v3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 278
    iget-object v3, p0, Lcom/airbnb/lottie/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 280
    sget-object v3, Lcom/airbnb/lottie/BaseLayer$2;->$SwitchMap$com$airbnb$lottie$Mask$MaskMode:[I

    invoke-virtual {v2}, Lcom/airbnb/lottie/Mask;->getMaskMode()Lcom/airbnb/lottie/Mask$MaskMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/Mask$MaskMode;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 286
    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->path:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_1

    .line 282
    :cond_0
    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->path:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 288
    :goto_1
    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/airbnb/lottie/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private buildParentLayerListIfNeeded()V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->parentLayers:Ljava/util/List;

    if-eqz v0, :cond_0

    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->parentLayer:Lcom/airbnb/lottie/BaseLayer;

    if-nez v0, :cond_1

    .line 318
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->parentLayers:Ljava/util/List;

    return-void

    .line 322
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->parentLayers:Ljava/util/List;

    .line 323
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->parentLayer:Lcom/airbnb/lottie/BaseLayer;

    :goto_0
    if-eqz v0, :cond_2

    .line 325
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->parentLayers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object v0, v0, Lcom/airbnb/lottie/BaseLayer;->parentLayer:Lcom/airbnb/lottie/BaseLayer;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private clearCanvas(Landroid/graphics/Canvas;)V
    .locals 8

    .line 197
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v3, v0, v1

    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v4, v0, v1

    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float v5, v0, v1

    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float v6, v0, v1

    iget-object v7, p0, Lcom/airbnb/lottie/BaseLayer;->clearPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method static forModel(Lcom/airbnb/lottie/Layer;Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/BaseLayer;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 27
    sget-object v0, Lcom/airbnb/lottie/BaseLayer$2;->$SwitchMap$com$airbnb$lottie$Layer$LayerType:[I

    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getLayerType()Lcom/airbnb/lottie/Layer$LayerType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/Layer$LayerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 p2, 0x5

    if-eq v0, p2, :cond_0

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown layer type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getLayerType()Lcom/airbnb/lottie/Layer$LayerType;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LOTTIE"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 38
    :cond_0
    new-instance p2, Lcom/airbnb/lottie/NullLayer;

    invoke-direct {p2, p1, p0}, Lcom/airbnb/lottie/NullLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;)V

    return-object p2

    .line 36
    :cond_1
    new-instance v0, Lcom/airbnb/lottie/ImageLayer;

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result p2

    invoke-direct {v0, p1, p0, p2}, Lcom/airbnb/lottie/ImageLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;F)V

    return-object v0

    .line 34
    :cond_2
    new-instance p2, Lcom/airbnb/lottie/SolidLayer;

    invoke-direct {p2, p1, p0}, Lcom/airbnb/lottie/SolidLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;)V

    return-object p2

    .line 31
    :cond_3
    new-instance v0, Lcom/airbnb/lottie/CompositionLayer;

    .line 32
    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getRefId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/LottieComposition;->getPrecomps(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1, p2}, Lcom/airbnb/lottie/CompositionLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;)V

    return-object v0

    .line 29
    :cond_4
    new-instance p2, Lcom/airbnb/lottie/ShapeLayer;

    invoke-direct {p2, p1, p0}, Lcom/airbnb/lottie/ShapeLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;)V

    return-object p2
.end method

.method private intersectBoundsWithMask(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 9

    .line 201
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 202
    invoke-virtual {p0}, Lcom/airbnb/lottie/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 208
    iget-object v3, p0, Lcom/airbnb/lottie/BaseLayer;->mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/Mask;

    .line 209
    iget-object v4, p0, Lcom/airbnb/lottie/BaseLayer;->mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 210
    invoke-virtual {v4}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    .line 211
    iget-object v5, p0, Lcom/airbnb/lottie/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v5, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 212
    iget-object v4, p0, Lcom/airbnb/lottie/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v4, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 214
    sget-object v4, Lcom/airbnb/lottie/BaseLayer$2;->$SwitchMap$com$airbnb$lottie$Mask$MaskMode:[I

    invoke-virtual {v3}, Lcom/airbnb/lottie/Mask;->getMaskMode()Lcom/airbnb/lottie/Mask$MaskMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/lottie/Mask$MaskMode;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 221
    iget-object v3, p0, Lcom/airbnb/lottie/BaseLayer;->path:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/airbnb/lottie/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    if-nez v2, :cond_1

    .line 226
    iget-object v3, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/airbnb/lottie/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_1

    .line 228
    :cond_1
    iget-object v3, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/airbnb/lottie/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    .line 229
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v5, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/airbnb/lottie/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    .line 230
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-object v6, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/airbnb/lottie/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    .line 231
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget-object v7, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/airbnb/lottie/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    .line 232
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 228
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 238
    :cond_3
    iget p2, p1, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 239
    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 240
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    .line 241
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 242
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 238
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private intersectBoundsWithMatte(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 4

    .line 247
    invoke-virtual {p0}, Lcom/airbnb/lottie/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/Layer;->getMatteType()Lcom/airbnb/lottie/Layer$MatteType;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/Layer$MatteType;->Invert:Lcom/airbnb/lottie/Layer$MatteType;

    if-ne v0, v1, :cond_1

    return-void

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->matteLayer:Lcom/airbnb/lottie/BaseLayer;

    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, p2}, Lcom/airbnb/lottie/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 257
    iget p2, p1, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 258
    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 259
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    .line 260
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/airbnb/lottie/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 261
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 257
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private invalidateSelf()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method private setVisible(Z)V
    .locals 1

    .line 298
    iget-boolean v0, p0, Lcom/airbnb/lottie/BaseLayer;->visible:Z

    if-eq p1, v0, :cond_0

    .line 299
    iput-boolean p1, p0, Lcom/airbnb/lottie/BaseLayer;->visible:Z

    .line 300
    invoke-direct {p0}, Lcom/airbnb/lottie/BaseLayer;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method private setupInOutAnimations()V
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/Layer;->getInOutKeyframes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 117
    new-instance v0, Lcom/airbnb/lottie/FloatKeyframeAnimation;

    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    .line 118
    invoke-virtual {v2}, Lcom/airbnb/lottie/Layer;->getInOutKeyframes()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/airbnb/lottie/FloatKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 119
    invoke-virtual {v0}, Lcom/airbnb/lottie/FloatKeyframeAnimation;->setIsDiscrete()V

    .line 120
    new-instance v2, Lcom/airbnb/lottie/BaseLayer$1;

    invoke-direct {v2, p0, v0}, Lcom/airbnb/lottie/BaseLayer$1;-><init>(Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/FloatKeyframeAnimation;)V

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/FloatKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 125
    invoke-virtual {v0}, Lcom/airbnb/lottie/FloatKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/airbnb/lottie/BaseLayer;->setVisible(Z)V

    .line 126
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    goto :goto_1

    .line 128
    :cond_1
    invoke-direct {p0, v1}, Lcom/airbnb/lottie/BaseLayer;->setVisible(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/BaseKeyframeAnimation<",
            "**>;)V"
        }
    .end annotation

    .line 137
    instance-of v0, p1, Lcom/airbnb/lottie/StaticKeyframeAnimation;

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->animations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    .line 149
    iget-boolean v0, p0, Lcom/airbnb/lottie/BaseLayer;->visible:Z

    if-nez v0, :cond_0

    return-void

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/BaseLayer;->buildParentLayerListIfNeeded()V

    .line 153
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 154
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 155
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->parentLayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 156
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->parentLayers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/BaseLayer;

    iget-object v2, v2, Lcom/airbnb/lottie/BaseLayer;->transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    int-to-float p3, p3

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p3, v0

    .line 158
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    .line 159
    invoke-virtual {v1}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float p3, p3, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p3, v1

    mul-float p3, p3, v0

    float-to-int p3, p3

    .line 160
    invoke-virtual {p0}, Lcom/airbnb/lottie/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/airbnb/lottie/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v0

    if-nez v0, :cond_2

    .line 161
    iget-object p2, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 162
    iget-object p2, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/lottie/BaseLayer;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 167
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, v2}, Lcom/airbnb/lottie/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 168
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v2}, Lcom/airbnb/lottie/BaseLayer;->intersectBoundsWithMatte(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 170
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 171
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v2}, Lcom/airbnb/lottie/BaseLayer;->intersectBoundsWithMask(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 173
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 175
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 177
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/BaseLayer;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 178
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v0, p3}, Lcom/airbnb/lottie/BaseLayer;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 180
    invoke-virtual {p0}, Lcom/airbnb/lottie/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/BaseLayer;->applyMasks(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 184
    :cond_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 185
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    const/16 v2, 0x13

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 186
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/BaseLayer;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 188
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->matteLayer:Lcom/airbnb/lottie/BaseLayer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/airbnb/lottie/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 189
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 192
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method abstract drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 143
    iget-object p1, p0, Lcom/airbnb/lottie/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 144
    iget-object p1, p0, Lcom/airbnb/lottie/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/airbnb/lottie/BaseLayer;->transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    invoke-virtual {p2}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method getLayerModel()Lcom/airbnb/lottie/Layer;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/Layer;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasMasksOnThisLayer()Z
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasMatteOnThisLayer()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->matteLayer:Lcom/airbnb/lottie/BaseLayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onValueChanged()V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/airbnb/lottie/BaseLayer;->invalidateSelf()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/Content;",
            ">;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/Content;",
            ">;)V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method setMatteLayer(Lcom/airbnb/lottie/BaseLayer;)V
    .locals 0
    .param p1    # Lcom/airbnb/lottie/BaseLayer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 104
    iput-object p1, p0, Lcom/airbnb/lottie/BaseLayer;->matteLayer:Lcom/airbnb/lottie/BaseLayer;

    return-void
.end method

.method setParentLayer(Lcom/airbnb/lottie/BaseLayer;)V
    .locals 0
    .param p1    # Lcom/airbnb/lottie/BaseLayer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 112
    iput-object p1, p0, Lcom/airbnb/lottie/BaseLayer;->parentLayer:Lcom/airbnb/lottie/BaseLayer;

    return-void
.end method

.method setProgress(F)V
    .locals 2
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 305
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->matteLayer:Lcom/airbnb/lottie/BaseLayer;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/BaseLayer;->setProgress(F)V

    :cond_0
    const/4 v0, 0x0

    .line 308
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->animations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 309
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->animations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->setProgress(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
