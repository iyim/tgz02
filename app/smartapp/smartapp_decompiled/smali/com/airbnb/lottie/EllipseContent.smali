.class Lcom/airbnb/lottie/EllipseContent;
.super Ljava/lang/Object;
.source "EllipseContent.java"

# interfaces
.implements Lcom/airbnb/lottie/PathContent;
.implements Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;


# static fields
.field private static final ELLIPSE_CONTROL_POINT_PERCENTAGE:F = 0.55228f


# instance fields
.field private isPathValid:Z

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private final positionAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final sizeAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private trimPath:Lcom/airbnb/lottie/TrimPathContent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/CircleShape;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/EllipseContent;->path:Landroid/graphics/Path;

    .line 23
    invoke-virtual {p3}, Lcom/airbnb/lottie/CircleShape;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/EllipseContent;->name:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/airbnb/lottie/EllipseContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 25
    invoke-virtual {p3}, Lcom/airbnb/lottie/CircleShape;->getSize()Lcom/airbnb/lottie/AnimatablePointValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 26
    invoke-virtual {p3}, Lcom/airbnb/lottie/CircleShape;->getPosition()Lcom/airbnb/lottie/AnimatableValue;

    move-result-object p1

    invoke-interface {p1}, Lcom/airbnb/lottie/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 28
    iget-object p1, p0, Lcom/airbnb/lottie/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 29
    iget-object p1, p0, Lcom/airbnb/lottie/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 31
    iget-object p1, p0, Lcom/airbnb/lottie/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 32
    iget-object p1, p0, Lcom/airbnb/lottie/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    return-void
.end method

.method private invalidate()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/airbnb/lottie/EllipseContent;->isPathValid:Z

    .line 41
    iget-object v0, p0, Lcom/airbnb/lottie/EllipseContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/airbnb/lottie/EllipseContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 19

    move-object/from16 v0, p0

    .line 60
    iget-boolean v1, v0, Lcom/airbnb/lottie/EllipseContent;->isPathValid:Z

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, v0, Lcom/airbnb/lottie/EllipseContent;->path:Landroid/graphics/Path;

    return-object v1

    .line 64
    :cond_0
    iget-object v1, v0, Lcom/airbnb/lottie/EllipseContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 67
    iget-object v1, v0, Lcom/airbnb/lottie/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 68
    iget v2, v1, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 69
    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v3

    const v3, 0x3f0d6239    # 0.55228f

    mul-float v11, v2, v3

    mul-float v3, v3, v1

    .line 75
    iget-object v4, v0, Lcom/airbnb/lottie/EllipseContent;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 76
    iget-object v4, v0, Lcom/airbnb/lottie/EllipseContent;->path:Landroid/graphics/Path;

    neg-float v15, v1

    const/4 v12, 0x0

    invoke-virtual {v4, v12, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 77
    iget-object v4, v0, Lcom/airbnb/lottie/EllipseContent;->path:Landroid/graphics/Path;

    add-float v13, v11, v12

    sub-float v14, v12, v3

    const/4 v10, 0x0

    move v5, v13

    move v6, v15

    move v7, v2

    move v8, v14

    move v9, v2

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 78
    iget-object v4, v0, Lcom/airbnb/lottie/EllipseContent;->path:Landroid/graphics/Path;

    add-float/2addr v3, v12

    const/4 v9, 0x0

    move v5, v2

    move v6, v3

    move v7, v13

    move v8, v1

    move v10, v1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 79
    iget-object v4, v0, Lcom/airbnb/lottie/EllipseContent;->path:Landroid/graphics/Path;

    sub-float v11, v12, v11

    neg-float v13, v2

    const/4 v10, 0x0

    move v5, v11

    move v6, v1

    move v7, v13

    move v8, v3

    move v9, v13

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 80
    iget-object v12, v0, Lcom/airbnb/lottie/EllipseContent;->path:Landroid/graphics/Path;

    const/16 v17, 0x0

    move v1, v15

    move v15, v11

    move/from16 v16, v1

    move/from16 v18, v1

    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 82
    iget-object v1, v0, Lcom/airbnb/lottie/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 83
    iget-object v2, v0, Lcom/airbnb/lottie/EllipseContent;->path:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 85
    iget-object v1, v0, Lcom/airbnb/lottie/EllipseContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 87
    iget-object v1, v0, Lcom/airbnb/lottie/EllipseContent;->path:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/airbnb/lottie/EllipseContent;->trimPath:Lcom/airbnb/lottie/TrimPathContent;

    invoke-static {v1, v2}, Lcom/airbnb/lottie/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;Lcom/airbnb/lottie/TrimPathContent;)V

    const/4 v1, 0x1

    .line 89
    iput-boolean v1, v0, Lcom/airbnb/lottie/EllipseContent;->isPathValid:Z

    .line 90
    iget-object v1, v0, Lcom/airbnb/lottie/EllipseContent;->path:Landroid/graphics/Path;

    return-object v1
.end method

.method public onValueChanged()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/airbnb/lottie/EllipseContent;->invalidate()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 3
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

    const/4 p2, 0x0

    .line 45
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 46
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Content;

    .line 47
    instance-of v1, v0, Lcom/airbnb/lottie/TrimPathContent;

    if-eqz v1, :cond_0

    nop

    nop

    .line 48
    invoke-virtual {v0}, Lcom/airbnb/lottie/TrimPathContent;->getType()Lcom/airbnb/lottie/ShapeTrimPath$Type;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/ShapeTrimPath$Type;->Simultaneously:Lcom/airbnb/lottie/ShapeTrimPath$Type;

    if-ne v1, v2, :cond_0

    .line 49
    iput-object v0, p0, Lcom/airbnb/lottie/EllipseContent;->trimPath:Lcom/airbnb/lottie/TrimPathContent;

    .line 50
    iget-object v0, p0, Lcom/airbnb/lottie/EllipseContent;->trimPath:Lcom/airbnb/lottie/TrimPathContent;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/TrimPathContent;->addListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
