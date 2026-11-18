.class Lcom/airbnb/lottie/TransformKeyframeAnimation;
.super Ljava/lang/Object;
.source "TransformKeyframeAnimation.java"


# instance fields
.field private final anchorPoint:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final matrix:Landroid/graphics/Matrix;

.field private final opacity:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final position:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final rotation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final scale:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation<",
            "*",
            "Lcom/airbnb/lottie/ScaleXY;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/AnimatableTransform;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    .line 16
    invoke-virtual {p1}, Lcom/airbnb/lottie/AnimatableTransform;->getAnchorPoint()Lcom/airbnb/lottie/AnimatablePathValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatablePathValue;->createAnimation()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 17
    invoke-virtual {p1}, Lcom/airbnb/lottie/AnimatableTransform;->getPosition()Lcom/airbnb/lottie/AnimatableValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/lottie/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 18
    invoke-virtual {p1}, Lcom/airbnb/lottie/AnimatableTransform;->getScale()Lcom/airbnb/lottie/AnimatableScaleValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableScaleValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 19
    invoke-virtual {p1}, Lcom/airbnb/lottie/AnimatableTransform;->getRotation()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 20
    invoke-virtual {p1}, Lcom/airbnb/lottie/AnimatableTransform;->getOpacity()Lcom/airbnb/lottie/AnimatableIntegerValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/AnimatableIntegerValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    return-void
.end method


# virtual methods
.method addAnimationsToLayer(Lcom/airbnb/lottie/BaseLayer;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 25
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 26
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 27
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 28
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    return-void
.end method

.method addListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 33
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 34
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 35
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 36
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    return-void
.end method

.method getMatrix()Landroid/graphics/Matrix;
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 45
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 46
    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v1, v0, v2

    if-eqz v1, :cond_2

    .line 52
    iget-object v1, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/ScaleXY;

    .line 56
    invoke-virtual {v0}, Lcom/airbnb/lottie/ScaleXY;->getScaleX()F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/airbnb/lottie/ScaleXY;->getScaleY()F

    move-result v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_4

    .line 57
    :cond_3
    iget-object v1, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Lcom/airbnb/lottie/ScaleXY;->getScaleX()F

    move-result v3

    invoke-virtual {v0}, Lcom/airbnb/lottie/ScaleXY;->getScaleY()F

    move-result v0

    invoke-virtual {v1, v3, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 60
    :cond_4
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 61
    iget v1, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_6

    .line 62
    :cond_5
    iget-object v1, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    neg-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 64
    :cond_6
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method getOpacity()Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    return-object v0
.end method
