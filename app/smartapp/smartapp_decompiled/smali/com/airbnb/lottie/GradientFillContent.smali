.class Lcom/airbnb/lottie/GradientFillContent;
.super Ljava/lang/Object;
.source "GradientFillContent.java"

# interfaces
.implements Lcom/airbnb/lottie/DrawingContent;
.implements Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;


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

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final name:Ljava/lang/String;

.field private final opacityAnimation:Lcom/airbnb/lottie/KeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/KeyframeAnimation<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/PathContent;",
            ">;"
        }
    .end annotation
.end field

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
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/GradientFill;)V
    .locals 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->linearGradientCache:Landroid/support/v4/util/LongSparseArray;

    .line 26
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->radialGradientCache:Landroid/support/v4/util/LongSparseArray;

    .line 27
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->path:Landroid/graphics/Path;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->paint:Landroid/graphics/Paint;

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->paths:Ljava/util/List;

    .line 40
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientFill;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->name:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/airbnb/lottie/GradientFillContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 42
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientFill;->getGradientType()Lcom/airbnb/lottie/GradientType;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->type:Lcom/airbnb/lottie/GradientType;

    .line 43
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->path:Landroid/graphics/Path;

    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientFill;->getFillType()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 44
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    div-long/2addr v0, v2

    long-to-int p1, v0

    iput p1, p0, Lcom/airbnb/lottie/GradientFillContent;->cacheSteps:I

    .line 46
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientFill;->getGradientColor()Lcom/airbnb/lottie/AnimatableGradientColorValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/AnimatableGradientColorValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/GradientFillContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 47
    iget-object p1, p0, Lcom/airbnb/lottie/GradientFillContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/KeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 48
    iget-object p1, p0, Lcom/airbnb/lottie/GradientFillContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 50
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientFill;->getOpacity()Lcom/airbnb/lottie/AnimatableIntegerValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/AnimatableIntegerValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/GradientFillContent;->opacityAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 51
    iget-object p1, p0, Lcom/airbnb/lottie/GradientFillContent;->opacityAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/KeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 52
    iget-object p1, p0, Lcom/airbnb/lottie/GradientFillContent;->opacityAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 54
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientFill;->getStartPoint()Lcom/airbnb/lottie/AnimatablePointValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/GradientFillContent;->startPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 55
    iget-object p1, p0, Lcom/airbnb/lottie/GradientFillContent;->startPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/KeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 56
    iget-object p1, p0, Lcom/airbnb/lottie/GradientFillContent;->startPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 58
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientFill;->getEndPoint()Lcom/airbnb/lottie/AnimatablePointValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/GradientFillContent;->endPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 59
    iget-object p1, p0, Lcom/airbnb/lottie/GradientFillContent;->endPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/KeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 60
    iget-object p1, p0, Lcom/airbnb/lottie/GradientFillContent;->endPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    return-void
.end method

.method private getGradientHash()I
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->startPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/KeyframeAnimation;->getProgress()F

    move-result v0

    iget v1, p0, Lcom/airbnb/lottie/GradientFillContent;->cacheSteps:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 163
    iget-object v1, p0, Lcom/airbnb/lottie/GradientFillContent;->endPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/KeyframeAnimation;->getProgress()F

    move-result v1

    iget v2, p0, Lcom/airbnb/lottie/GradientFillContent;->cacheSteps:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 164
    iget-object v2, p0, Lcom/airbnb/lottie/GradientFillContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/KeyframeAnimation;->getProgress()F

    move-result v2

    iget v3, p0, Lcom/airbnb/lottie/GradientFillContent;->cacheSteps:I

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

    .line 121
    invoke-direct {p0}, Lcom/airbnb/lottie/GradientFillContent;->getGradientHash()I

    move-result v0

    .line 122
    iget-object v1, p0, Lcom/airbnb/lottie/GradientFillContent;->linearGradientCache:Landroid/support/v4/util/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_0

    return-object v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->startPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 127
    iget-object v1, p0, Lcom/airbnb/lottie/GradientFillContent;->endPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 128
    iget-object v4, p0, Lcom/airbnb/lottie/GradientFillContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/GradientColor;

    .line 129
    invoke-virtual {v4}, Lcom/airbnb/lottie/GradientColor;->getColors()[I

    move-result-object v10

    .line 130
    invoke-virtual {v4}, Lcom/airbnb/lottie/GradientColor;->getPositions()[F

    move-result-object v11

    .line 131
    iget-object v4, p0, Lcom/airbnb/lottie/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/airbnb/lottie/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 132
    iget-object v5, p0, Lcom/airbnb/lottie/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/airbnb/lottie/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v6

    add-float/2addr v5, v7

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v0

    float-to-int v0, v5

    .line 133
    iget-object v5, p0, Lcom/airbnb/lottie/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/airbnb/lottie/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v6

    add-float/2addr v5, v7

    iget v7, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v7

    float-to-int v5, v5

    .line 134
    iget-object v7, p0, Lcom/airbnb/lottie/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/airbnb/lottie/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v8, v6

    add-float/2addr v7, v8

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v1

    float-to-int v1, v7

    .line 135
    new-instance v13, Landroid/graphics/LinearGradient;

    int-to-float v6, v4

    int-to-float v7, v0

    int-to-float v8, v5

    int-to-float v9, v1

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 136
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->linearGradientCache:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v2, v3, v13}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v13
.end method

.method private getRadialGradient()Landroid/graphics/RadialGradient;
    .locals 12

    .line 141
    invoke-direct {p0}, Lcom/airbnb/lottie/GradientFillContent;->getGradientHash()I

    move-result v0

    .line 142
    iget-object v1, p0, Lcom/airbnb/lottie/GradientFillContent;->radialGradientCache:Landroid/support/v4/util/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_0

    return-object v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->startPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 147
    iget-object v1, p0, Lcom/airbnb/lottie/GradientFillContent;->endPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 148
    iget-object v4, p0, Lcom/airbnb/lottie/GradientFillContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/GradientColor;

    .line 149
    invoke-virtual {v4}, Lcom/airbnb/lottie/GradientColor;->getColors()[I

    move-result-object v9

    .line 150
    invoke-virtual {v4}, Lcom/airbnb/lottie/GradientColor;->getPositions()[F

    move-result-object v10

    .line 151
    iget-object v4, p0, Lcom/airbnb/lottie/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/airbnb/lottie/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 152
    iget-object v5, p0, Lcom/airbnb/lottie/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/airbnb/lottie/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v6

    add-float/2addr v5, v7

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v0

    float-to-int v0, v5

    .line 153
    iget-object v5, p0, Lcom/airbnb/lottie/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/airbnb/lottie/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v6

    add-float/2addr v5, v7

    iget v7, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v7

    float-to-int v5, v5

    .line 154
    iget-object v7, p0, Lcom/airbnb/lottie/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/airbnb/lottie/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

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

    .line 155
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v8, v5

    .line 156
    new-instance v1, Landroid/graphics/RadialGradient;

    int-to-float v6, v4

    int-to-float v7, v0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 157
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->radialGradientCache:Landroid/support/v4/util/LongSparseArray;

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
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 78
    :goto_0
    iget-object v2, p0, Lcom/airbnb/lottie/GradientFillContent;->paths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/airbnb/lottie/GradientFillContent;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/airbnb/lottie/GradientFillContent;->paths:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/PathContent;

    invoke-interface {v3}, Lcom/airbnb/lottie/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :cond_0
    iget-object p2, p0, Lcom/airbnb/lottie/GradientFillContent;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/airbnb/lottie/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 84
    iget-object p2, p0, Lcom/airbnb/lottie/GradientFillContent;->type:Lcom/airbnb/lottie/GradientType;

    sget-object v0, Lcom/airbnb/lottie/GradientType;->Linear:Lcom/airbnb/lottie/GradientType;

    if-ne p2, v0, :cond_1

    .line 85
    iget-object p2, p0, Lcom/airbnb/lottie/GradientFillContent;->paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/airbnb/lottie/GradientFillContent;->getLinearGradient()Landroid/graphics/LinearGradient;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1

    .line 87
    :cond_1
    iget-object p2, p0, Lcom/airbnb/lottie/GradientFillContent;->paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/airbnb/lottie/GradientFillContent;->getRadialGradient()Landroid/graphics/RadialGradient;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_1
    int-to-float p2, p3

    const/high16 p3, 0x437f0000    # 255.0f

    div-float/2addr p2, p3

    .line 89
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->opacityAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float p2, p2, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    mul-float p2, p2, p3

    float-to-int p2, p2

    .line 90
    iget-object p3, p0, Lcom/airbnb/lottie/GradientFillContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 92
    iget-object p2, p0, Lcom/airbnb/lottie/GradientFillContent;->path:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/airbnb/lottie/GradientFillContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 97
    :goto_0
    iget-object v2, p0, Lcom/airbnb/lottie/GradientFillContent;->paths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/airbnb/lottie/GradientFillContent;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/airbnb/lottie/GradientFillContent;->paths:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/PathContent;

    invoke-interface {v3}, Lcom/airbnb/lottie/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_0
    iget-object p2, p0, Lcom/airbnb/lottie/GradientFillContent;->path:Landroid/graphics/Path;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 103
    iget p2, p1, Landroid/graphics/RectF;->left:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p2, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v0

    iget v2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v0

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v0

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public onValueChanged()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 2
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

    const/4 p1, 0x0

    .line 68
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 69
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Content;

    .line 70
    instance-of v1, v0, Lcom/airbnb/lottie/PathContent;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/airbnb/lottie/GradientFillContent;->paths:Ljava/util/List;

    check-cast v0, Lcom/airbnb/lottie/PathContent;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
