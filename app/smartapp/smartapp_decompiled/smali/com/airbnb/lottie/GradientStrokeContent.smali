.class public Lcom/airbnb/lottie/GradientStrokeContent;
.super Lcom/airbnb/lottie/BaseStrokeContent;
.source "GradientStrokeContent.java"


# static fields
.field private static final CACHE_STEPS_MS:I = 0x20


# instance fields
.field private final boundsRect:Landroid/graphics/RectF;

.field private final cacheSteps:I

.field private final colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/KeyframeAnimation<",
            "Lcom/airbnb/lottie/GradientColor;",
            ">;"
        }
    .end annotation
.end field

.field private final endPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/KeyframeAnimation<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final linearGradientCache:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final radialGradientCache:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final startPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/KeyframeAnimation<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/airbnb/lottie/GradientType;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/GradientStroke;)V
    .locals 10

    .line 33
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientStroke;->getCapType()Lcom/airbnb/lottie/ShapeStroke$LineCapType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/ShapeStroke$LineCapType;->toPaintCap()Landroid/graphics/Paint$Cap;

    move-result-object v4

    .line 34
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientStroke;->getJoinType()Lcom/airbnb/lottie/ShapeStroke$LineJoinType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/ShapeStroke$LineJoinType;->toPaintJoin()Landroid/graphics/Paint$Join;

    move-result-object v5

    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientStroke;->getOpacity()Lcom/airbnb/lottie/AnimatableIntegerValue;

    move-result-object v6

    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientStroke;->getWidth()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v7

    .line 35
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientStroke;->getLineDashPattern()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientStroke;->getDashOffset()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 33
    invoke-direct/range {v1 .. v9}, Lcom/airbnb/lottie/BaseStrokeContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/AnimatableFloatValue;)V

    .line 21
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->linearGradientCache:Landroid/support/v4/util/LongSparseArray;

    .line 22
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->radialGradientCache:Landroid/support/v4/util/LongSparseArray;

    .line 23
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    .line 37
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientStroke;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->name:Ljava/lang/String;

    .line 38
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientStroke;->getGradientType()Lcom/airbnb/lottie/GradientType;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->type:Lcom/airbnb/lottie/GradientType;

    .line 39
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    div-long/2addr v0, v2

    long-to-int p1, v0

    iput p1, p0, Lcom/airbnb/lottie/GradientStrokeContent;->cacheSteps:I

    .line 41
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientStroke;->getGradientColor()Lcom/airbnb/lottie/AnimatableGradientColorValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/AnimatableGradientColorValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/GradientStrokeContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 42
    iget-object p1, p0, Lcom/airbnb/lottie/GradientStrokeContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/KeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 43
    iget-object p1, p0, Lcom/airbnb/lottie/GradientStrokeContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 45
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientStroke;->getStartPoint()Lcom/airbnb/lottie/AnimatablePointValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/GradientStrokeContent;->startPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 46
    iget-object p1, p0, Lcom/airbnb/lottie/GradientStrokeContent;->startPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/KeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 47
    iget-object p1, p0, Lcom/airbnb/lottie/GradientStrokeContent;->startPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 49
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientStroke;->getEndPoint()Lcom/airbnb/lottie/AnimatablePointValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/GradientStrokeContent;->endPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 50
    iget-object p1, p0, Lcom/airbnb/lottie/GradientStrokeContent;->endPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/KeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 51
    iget-object p1, p0, Lcom/airbnb/lottie/GradientStrokeContent;->endPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    return-void
.end method

.method private getGradientHash()I
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->startPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/KeyframeAnimation;->getProgress()F

    move-result v0

    iget v1, p0, Lcom/airbnb/lottie/GradientStrokeContent;->cacheSteps:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/airbnb/lottie/GradientStrokeContent;->endPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/KeyframeAnimation;->getProgress()F

    move-result v1

    iget v2, p0, Lcom/airbnb/lottie/GradientStrokeContent;->cacheSteps:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 118
    iget-object v2, p0, Lcom/airbnb/lottie/GradientStrokeContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/KeyframeAnimation;->getProgress()F

    move-result v2

    iget v3, p0, Lcom/airbnb/lottie/GradientStrokeContent;->cacheSteps:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/16 v3, 0x20f

    mul-int v3, v3, v0

    mul-int/lit8 v3, v3, 0x1f

    mul-int v3, v3, v1

    mul-int/lit8 v3, v3, 0x1f

    mul-int v3, v3, v2

    return v3
.end method

.method private getLinearGradient()Landroid/graphics/LinearGradient;
    .locals 14

    .line 75
    invoke-direct {p0}, Lcom/airbnb/lottie/GradientStrokeContent;->getGradientHash()I

    move-result v0

    .line 76
    iget-object v1, p0, Lcom/airbnb/lottie/GradientStrokeContent;->linearGradientCache:Landroid/support/v4/util/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_0

    return-object v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->startPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 81
    iget-object v1, p0, Lcom/airbnb/lottie/GradientStrokeContent;->endPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 82
    iget-object v4, p0, Lcom/airbnb/lottie/GradientStrokeContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/GradientColor;

    .line 83
    invoke-virtual {v4}, Lcom/airbnb/lottie/GradientColor;->getColors()[I

    move-result-object v10

    .line 84
    invoke-virtual {v4}, Lcom/airbnb/lottie/GradientColor;->getPositions()[F

    move-result-object v11

    .line 85
    iget-object v4, p0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 86
    iget-object v5, p0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v6

    add-float/2addr v5, v7

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v0

    float-to-int v0, v5

    .line 87
    iget-object v5, p0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v6

    add-float/2addr v5, v7

    iget v7, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v7

    float-to-int v5, v5

    .line 88
    iget-object v7, p0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v8, v6

    add-float/2addr v7, v8

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v1

    float-to-int v1, v7

    .line 89
    new-instance v13, Landroid/graphics/LinearGradient;

    int-to-float v6, v4

    int-to-float v7, v0

    int-to-float v8, v5

    int-to-float v9, v1

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 90
    iget-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->linearGradientCache:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v2, v3, v13}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v13
.end method

.method private getRadialGradient()Landroid/graphics/RadialGradient;
    .locals 12

    .line 95
    invoke-direct {p0}, Lcom/airbnb/lottie/GradientStrokeContent;->getGradientHash()I

    move-result v0

    .line 96
    iget-object v1, p0, Lcom/airbnb/lottie/GradientStrokeContent;->radialGradientCache:Landroid/support/v4/util/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_0

    return-object v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->startPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 101
    iget-object v1, p0, Lcom/airbnb/lottie/GradientStrokeContent;->endPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 102
    iget-object v4, p0, Lcom/airbnb/lottie/GradientStrokeContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/GradientColor;

    .line 103
    invoke-virtual {v4}, Lcom/airbnb/lottie/GradientColor;->getColors()[I

    move-result-object v9

    .line 104
    invoke-virtual {v4}, Lcom/airbnb/lottie/GradientColor;->getPositions()[F

    move-result-object v10

    .line 105
    iget-object v4, p0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 106
    iget-object v5, p0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v6

    add-float/2addr v5, v7

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v0

    float-to-int v0, v5

    .line 107
    iget-object v5, p0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v6

    add-float/2addr v5, v7

    iget v7, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v7

    float-to-int v5, v5

    .line 108
    iget-object v7, p0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v8, v6

    add-float/2addr v7, v8

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v1

    float-to-int v1, v7

    sub-int/2addr v5, v4

    int-to-double v5, v5

    sub-int/2addr v1, v0

    int-to-double v7, v1

    .line 109
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v8, v5

    .line 110
    new-instance v1, Landroid/graphics/RadialGradient;

    int-to-float v6, v4

    int-to-float v7, v0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 111
    iget-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->radialGradientCache:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v1
.end method


# virtual methods
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
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, p2}, Lcom/airbnb/lottie/GradientStrokeContent;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 56
    iget-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->type:Lcom/airbnb/lottie/GradientType;

    sget-object v1, Lcom/airbnb/lottie/GradientType;->Linear:Lcom/airbnb/lottie/GradientType;

    if-ne v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/airbnb/lottie/GradientStrokeContent;->getLinearGradient()Landroid/graphics/LinearGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/airbnb/lottie/GradientStrokeContent;->getRadialGradient()Landroid/graphics/RadialGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 62
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/BaseStrokeContent;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public bridge synthetic getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 0

    .line 14
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/BaseStrokeContent;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/airbnb/lottie/GradientStrokeContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic onValueChanged()V
    .locals 0

    .line 14
    invoke-super {p0}, Lcom/airbnb/lottie/BaseStrokeContent;->onValueChanged()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public bridge synthetic setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 14
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/BaseStrokeContent;->setContents(Ljava/util/List;Ljava/util/List;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
