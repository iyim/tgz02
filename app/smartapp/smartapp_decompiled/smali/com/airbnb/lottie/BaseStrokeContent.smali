.class abstract Lcom/airbnb/lottie/BaseStrokeContent;
.super Ljava/lang/Object;
.source "BaseStrokeContent.java"

# interfaces
.implements Lcom/airbnb/lottie/DrawingContent;
.implements Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;
    }
.end annotation


# instance fields
.field private final dashPatternAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dashPatternOffsetAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final dashPatternValues:[F

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final opacityAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final pathGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final pm:Landroid/graphics/PathMeasure;

.field private final rect:Landroid/graphics/RectF;

.field private final trimPathPath:Landroid/graphics/Path;

.field private final widthAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/AnimatableFloatValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieDrawable;",
            "Lcom/airbnb/lottie/BaseLayer;",
            "Landroid/graphics/Paint$Cap;",
            "Landroid/graphics/Paint$Join;",
            "Lcom/airbnb/lottie/AnimatableIntegerValue;",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            ">;",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    .line 17
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->path:Landroid/graphics/Path;

    .line 18
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    .line 19
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pathGroups:Ljava/util/List;

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    .line 33
    iput-object p1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 34
    iget-object p1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    iget-object p1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 36
    iget-object p1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 38
    invoke-virtual {p5}, Lcom/airbnb/lottie/AnimatableIntegerValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 39
    invoke-virtual {p6}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    if-nez p8, :cond_0

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p8}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 46
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    .line 47
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternValues:[F

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 49
    :goto_1
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_1

    .line 50
    iget-object p4, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {p7, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/airbnb/lottie/AnimatableFloatValue;

    invoke-virtual {p5}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 53
    :cond_1
    iget-object p3, p0, Lcom/airbnb/lottie/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 54
    iget-object p3, p0, Lcom/airbnb/lottie/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    const/4 p3, 0x0

    .line 55
    :goto_2
    iget-object p4, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_2

    .line 56
    iget-object p4, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, p4}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 58
    :cond_2
    iget-object p3, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    if-eqz p3, :cond_3

    .line 59
    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 62
    :cond_3
    iget-object p2, p0, Lcom/airbnb/lottie/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 63
    iget-object p2, p0, Lcom/airbnb/lottie/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 65
    :goto_3
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 66
    iget-object p2, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 68
    :cond_4
    iget-object p1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    if-eqz p1, :cond_5

    .line 69
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    :cond_5
    return-void
.end method

.method private applyDashPatternIfNeeded(Landroid/graphics/Matrix;)V
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 229
    :cond_0
    invoke-static {p1}, Lcom/airbnb/lottie/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result p1

    const/4 v0, 0x0

    .line 230
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 231
    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternValues:[F

    iget-object v2, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v1, v0

    .line 236
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternValues:[F

    aget v2, v1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 238
    aput v3, v1, v0

    goto :goto_1

    .line 241
    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternValues:[F

    aget v2, v1, v0

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 242
    aput v3, v1, v0

    .line 245
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternValues:[F

    aget v2, v1, v0

    mul-float v2, v2, p1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_3
    iget-object p1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 248
    :goto_2
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    iget-object v2, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternValues:[F

    invoke-direct {v1, v2, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method private applyTrimPath(Landroid/graphics/Canvas;Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;Landroid/graphics/Matrix;)V
    .locals 11

    .line 139
    invoke-static {p2}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/TrimPathContent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 143
    invoke-static {p2}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 144
    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-static {p2}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/PathContent;

    invoke-interface {v2}, Lcom/airbnb/lottie/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->path:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 147
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    .line 148
    :goto_1
    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_1

    .line 151
    :cond_2
    invoke-static {p2}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/TrimPathContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/TrimPathContent;->getOffset()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float v1, v1, v0

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v1, v3

    .line 153
    invoke-static {p2}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/TrimPathContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/lottie/TrimPathContent;->getStart()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float v3, v3, v0

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v1

    .line 155
    invoke-static {p2}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/TrimPathContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/lottie/TrimPathContent;->getEnd()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float v5, v5, v0

    div-float/2addr v5, v4

    add-float/2addr v5, v1

    .line 158
    invoke-static {p2}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ltz v1, :cond_a

    .line 159
    iget-object v7, p0, Lcom/airbnb/lottie/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-static {p2}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/lottie/PathContent;

    invoke-interface {v8}, Lcom/airbnb/lottie/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 160
    iget-object v7, p0, Lcom/airbnb/lottie/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-virtual {v7, p3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 161
    iget-object v7, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    iget-object v8, p0, Lcom/airbnb/lottie/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-virtual {v7, v8, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 162
    iget-object v7, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v7}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v9, v5, v0

    if-lez v9, :cond_4

    sub-float v9, v5, v0

    add-float v10, v6, v7

    cmpg-float v10, v9, v10

    if-gez v10, :cond_4

    cmpg-float v10, v6, v9

    if-gez v10, :cond_4

    cmpl-float v10, v3, v0

    if-lez v10, :cond_3

    sub-float v10, v3, v0

    div-float/2addr v10, v7

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    div-float/2addr v9, v7

    .line 173
    invoke-static {v9, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 174
    iget-object v9, p0, Lcom/airbnb/lottie/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-static {v9, v10, v8, v4}, Lcom/airbnb/lottie/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    .line 175
    iget-object v8, p0, Lcom/airbnb/lottie/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    iget-object v9, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_6

    :cond_4
    add-float v9, v6, v7

    cmpg-float v10, v9, v3

    if-ltz v10, :cond_9

    cmpl-float v10, v6, v5

    if-lez v10, :cond_5

    goto :goto_6

    :cond_5
    cmpg-float v10, v9, v5

    if-gtz v10, :cond_6

    cmpg-float v10, v3, v6

    if-gez v10, :cond_6

    .line 180
    iget-object v8, p0, Lcom/airbnb/lottie/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    iget-object v9, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_6

    :cond_6
    cmpg-float v10, v3, v6

    if-gez v10, :cond_7

    const/4 v10, 0x0

    goto :goto_4

    :cond_7
    sub-float v10, v3, v6

    div-float/2addr v10, v7

    :goto_4
    cmpl-float v9, v5, v9

    if-lez v9, :cond_8

    goto :goto_5

    :cond_8
    sub-float v8, v5, v6

    div-float/2addr v8, v7

    .line 194
    :goto_5
    iget-object v9, p0, Lcom/airbnb/lottie/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-static {v9, v10, v8, v4}, Lcom/airbnb/lottie/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    .line 195
    iget-object v8, p0, Lcom/airbnb/lottie/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    iget-object v9, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_9
    :goto_6
    add-float/2addr v6, v7

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_2

    :cond_a
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    int-to-float p3, p3

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p3, v0

    .line 113
    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

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

    .line 114
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 115
    iget-object p3, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p2}, Lcom/airbnb/lottie/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v1

    mul-float v0, v0, v1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 116
    iget-object p3, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p3

    const/4 v0, 0x0

    cmpg-float p3, p3, v0

    if-gtz p3, :cond_0

    return-void

    .line 120
    :cond_0
    invoke-direct {p0, p2}, Lcom/airbnb/lottie/BaseStrokeContent;->applyDashPatternIfNeeded(Landroid/graphics/Matrix;)V

    const/4 p3, 0x0

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_3

    .line 123
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;

    .line 126
    invoke-static {v0}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/TrimPathContent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 127
    invoke-direct {p0, p1, v0, p2}, Lcom/airbnb/lottie/BaseStrokeContent;->applyTrimPath(Landroid/graphics/Canvas;Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;Landroid/graphics/Matrix;)V

    goto :goto_2

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 130
    invoke-static {v0}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 131
    iget-object v2, p0, Lcom/airbnb/lottie/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-static {v0}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/PathContent;

    invoke-interface {v3}, Lcom/airbnb/lottie/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 6

    .line 202
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 203
    :goto_0
    iget-object v2, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 204
    iget-object v2, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;

    const/4 v3, 0x0

    .line 205
    :goto_1
    invoke-static {v2}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 206
    iget-object v4, p0, Lcom/airbnb/lottie/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-static {v2}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/PathContent;

    invoke-interface {v5}, Lcom/airbnb/lottie/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    :cond_1
    iget-object p2, p0, Lcom/airbnb/lottie/BaseStrokeContent;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 211
    iget-object p2, p0, Lcom/airbnb/lottie/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 212
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    sub-float/2addr v1, p2

    iget-object v2, p0, Lcom/airbnb/lottie/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, p2

    iget-object v3, p0, Lcom/airbnb/lottie/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    iget-object v4, p0, Lcom/airbnb/lottie/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 214
    iget-object p2, p0, Lcom/airbnb/lottie/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 216
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

.method public onValueChanged()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 7
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

    .line 79
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 80
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/Content;

    .line 81
    instance-of v4, v3, Lcom/airbnb/lottie/TrimPathContent;

    if-eqz v4, :cond_0

    nop

    nop

    .line 82
    invoke-virtual {v3}, Lcom/airbnb/lottie/TrimPathContent;->getType()Lcom/airbnb/lottie/ShapeTrimPath$Type;

    move-result-object v4

    sget-object v5, Lcom/airbnb/lottie/ShapeTrimPath$Type;->Individually:Lcom/airbnb/lottie/ShapeTrimPath$Type;

    if-ne v4, v5, :cond_0

    move-object v2, v3

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 87
    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/TrimPathContent;->addListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 91
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    move-object v0, v1

    :goto_1
    if-ltz p1, :cond_7

    .line 92
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/Content;

    .line 93
    instance-of v4, v3, Lcom/airbnb/lottie/TrimPathContent;

    if-eqz v4, :cond_4

    move-object v4, v3

    nop

    nop

    .line 94
    invoke-virtual {v4}, Lcom/airbnb/lottie/TrimPathContent;->getType()Lcom/airbnb/lottie/ShapeTrimPath$Type;

    move-result-object v5

    sget-object v6, Lcom/airbnb/lottie/ShapeTrimPath$Type;->Individually:Lcom/airbnb/lottie/ShapeTrimPath$Type;

    if-ne v5, v6, :cond_4

    if-eqz v0, :cond_3

    .line 96
    iget-object v3, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_3
    new-instance v0, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;

    invoke-direct {v0, v4, v1}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;-><init>(Lcom/airbnb/lottie/TrimPathContent;Lcom/airbnb/lottie/BaseStrokeContent$1;)V

    .line 99
    invoke-virtual {v4, p0}, Lcom/airbnb/lottie/TrimPathContent;->addListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    goto :goto_2

    .line 100
    :cond_4
    instance-of v4, v3, Lcom/airbnb/lottie/PathContent;

    if-eqz v4, :cond_6

    if-nez v0, :cond_5

    .line 102
    new-instance v0, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;

    invoke-direct {v0, v2, v1}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;-><init>(Lcom/airbnb/lottie/TrimPathContent;Lcom/airbnb/lottie/BaseStrokeContent$1;)V

    .line 104
    :cond_5
    invoke-static {v0}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v4

    check-cast v3, Lcom/airbnb/lottie/PathContent;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    .line 108
    iget-object p1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method
