.class Lcom/airbnb/lottie/ContentGroup;
.super Ljava/lang/Object;
.source "ContentGroup.java"

# interfaces
.implements Lcom/airbnb/lottie/DrawingContent;
.implements Lcom/airbnb/lottie/PathContent;
.implements Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentGroup"


# instance fields
.field private final contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/Content;",
            ">;"
        }
    .end annotation
.end field

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final matrix:Landroid/graphics/Matrix;

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private pathContents:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/PathContent;",
            ">;"
        }
    .end annotation
.end field

.field private final rect:Landroid/graphics/RectF;

.field private transformAnimation:Lcom/airbnb/lottie/TransformKeyframeAnimation;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/ShapeGroup;)V
    .locals 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->matrix:Landroid/graphics/Matrix;

    .line 19
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->path:Landroid/graphics/Path;

    .line 20
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->rect:Landroid/graphics/RectF;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    .line 29
    invoke-virtual {p3}, Lcom/airbnb/lottie/ShapeGroup;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->name:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/airbnb/lottie/ContentGroup;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 31
    invoke-virtual {p3}, Lcom/airbnb/lottie/ShapeGroup;->getItems()Ljava/util/List;

    move-result-object p3

    .line 32
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 37
    instance-of v1, v0, Lcom/airbnb/lottie/AnimatableTransform;

    if-eqz v1, :cond_1

    .line 38
    nop

    nop

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableTransform;->createAnimation()Lcom/airbnb/lottie/TransformKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    .line 40
    iget-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->addAnimationsToLayer(Lcom/airbnb/lottie/BaseLayer;)V

    .line 41
    iget-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->addListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    :cond_1
    const/4 v0, 0x0

    .line 44
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_e

    .line 45
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 46
    instance-of v2, v1, Lcom/airbnb/lottie/ShapeFill;

    if-eqz v2, :cond_2

    .line 47
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    new-instance v3, Lcom/airbnb/lottie/FillContent;

    nop

    nop

    invoke-direct {v3, p1, p2, v1}, Lcom/airbnb/lottie/FillContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/ShapeFill;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 48
    :cond_2
    instance-of v2, v1, Lcom/airbnb/lottie/GradientFill;

    if-eqz v2, :cond_3

    .line 49
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    new-instance v3, Lcom/airbnb/lottie/GradientFillContent;

    nop

    nop

    invoke-direct {v3, p1, p2, v1}, Lcom/airbnb/lottie/GradientFillContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/GradientFill;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 50
    :cond_3
    instance-of v2, v1, Lcom/airbnb/lottie/ShapeStroke;

    if-eqz v2, :cond_4

    .line 51
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    new-instance v3, Lcom/airbnb/lottie/StrokeContent;

    nop

    nop

    invoke-direct {v3, p1, p2, v1}, Lcom/airbnb/lottie/StrokeContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/ShapeStroke;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 52
    :cond_4
    instance-of v2, v1, Lcom/airbnb/lottie/GradientStroke;

    if-eqz v2, :cond_5

    .line 53
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    new-instance v3, Lcom/airbnb/lottie/GradientStrokeContent;

    nop

    nop

    invoke-direct {v3, p1, p2, v1}, Lcom/airbnb/lottie/GradientStrokeContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/GradientStroke;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 54
    :cond_5
    instance-of v2, v1, Lcom/airbnb/lottie/ShapeGroup;

    if-eqz v2, :cond_6

    .line 55
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    new-instance v3, Lcom/airbnb/lottie/ContentGroup;

    nop

    nop

    invoke-direct {v3, p1, p2, v1}, Lcom/airbnb/lottie/ContentGroup;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/ShapeGroup;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 56
    :cond_6
    instance-of v2, v1, Lcom/airbnb/lottie/RectangleShape;

    if-eqz v2, :cond_7

    .line 57
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    new-instance v3, Lcom/airbnb/lottie/RectangleContent;

    nop

    nop

    invoke-direct {v3, p1, p2, v1}, Lcom/airbnb/lottie/RectangleContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/RectangleShape;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 58
    :cond_7
    instance-of v2, v1, Lcom/airbnb/lottie/CircleShape;

    if-eqz v2, :cond_8

    .line 59
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    new-instance v3, Lcom/airbnb/lottie/EllipseContent;

    nop

    nop

    invoke-direct {v3, p1, p2, v1}, Lcom/airbnb/lottie/EllipseContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/CircleShape;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 60
    :cond_8
    instance-of v2, v1, Lcom/airbnb/lottie/ShapePath;

    if-eqz v2, :cond_9

    .line 61
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    new-instance v3, Lcom/airbnb/lottie/ShapeContent;

    nop

    nop

    invoke-direct {v3, p1, p2, v1}, Lcom/airbnb/lottie/ShapeContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/ShapePath;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 62
    :cond_9
    instance-of v2, v1, Lcom/airbnb/lottie/PolystarShape;

    if-eqz v2, :cond_a

    .line 63
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    new-instance v3, Lcom/airbnb/lottie/PolystarContent;

    nop

    nop

    invoke-direct {v3, p1, p2, v1}, Lcom/airbnb/lottie/PolystarContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/PolystarShape;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 64
    :cond_a
    instance-of v2, v1, Lcom/airbnb/lottie/ShapeTrimPath;

    if-eqz v2, :cond_b

    .line 65
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    new-instance v3, Lcom/airbnb/lottie/TrimPathContent;

    nop

    nop

    invoke-direct {v3, p2, v1}, Lcom/airbnb/lottie/TrimPathContent;-><init>(Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/ShapeTrimPath;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 67
    :cond_b
    instance-of v2, v1, Lcom/airbnb/lottie/MergePaths;

    if-eqz v2, :cond_d

    .line 68
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->enableMergePathsForKitKatAndAbove()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 69
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    new-instance v3, Lcom/airbnb/lottie/MergePathsContent;

    nop

    nop

    invoke-direct {v3, v1}, Lcom/airbnb/lottie/MergePathsContent;-><init>(Lcom/airbnb/lottie/MergePaths;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 71
    :cond_c
    sget-object v1, Lcom/airbnb/lottie/ContentGroup;->TAG:Ljava/lang/String;

    const-string v2, "Animation contains merge paths but they are disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 76
    :cond_e
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    .line 78
    iget-object p3, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_2
    if-ltz p3, :cond_11

    .line 79
    iget-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Content;

    .line 80
    instance-of v1, v0, Lcom/airbnb/lottie/MergePathsContent;

    if-eqz v1, :cond_f

    .line 81
    move-object p2, v0

    nop

    nop

    :cond_f
    if-eqz p2, :cond_10

    if-eq v0, p2, :cond_10

    .line 84
    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/MergePathsContent;->addContentIfNeeded(Lcom/airbnb/lottie/Content;)V

    .line 85
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    .line 89
    :cond_11
    iget-object p2, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 90
    :cond_12
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_13

    .line 91
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/airbnb/lottie/Content;

    .line 92
    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 93
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_13
    return-void
.end method


# virtual methods
.method public addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 3
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

    const/4 v0, 0x0

    .line 108
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 109
    iget-object v1, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/Content;

    .line 110
    instance-of v2, v1, Lcom/airbnb/lottie/DrawingContent;

    if-eqz v2, :cond_2

    .line 111
    move-object v2, v1

    check-cast v2, Lcom/airbnb/lottie/DrawingContent;

    if-eqz p2, :cond_1

    .line 112
    invoke-interface {v1}, Lcom/airbnb/lottie/Content;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 115
    :cond_0
    invoke-interface {v2, p1, p2, p3}, Lcom/airbnb/lottie/DrawingContent;->addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 113
    invoke-interface {v2, p1, v1, p3}, Lcom/airbnb/lottie/DrawingContent;->addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 173
    iget-object p2, p0, Lcom/airbnb/lottie/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    if-eqz p2, :cond_0

    .line 174
    iget-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 175
    iget-object p2, p0, Lcom/airbnb/lottie/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    .line 176
    invoke-virtual {p2}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object p2

    invoke-virtual {p2}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    int-to-float p3, p3

    mul-float p2, p2, p3

    const/high16 p3, 0x437f0000    # 255.0f

    div-float/2addr p2, p3

    mul-float p2, p2, p3

    float-to-int p3, p2

    .line 182
    :cond_0
    iget-object p2, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_2

    .line 183
    iget-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 184
    instance-of v1, v0, Lcom/airbnb/lottie/DrawingContent;

    if-eqz v1, :cond_1

    .line 185
    check-cast v0, Lcom/airbnb/lottie/DrawingContent;

    iget-object v1, p0, Lcom/airbnb/lottie/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v0, p1, v1, p3}, Lcom/airbnb/lottie/DrawingContent;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 5

    .line 191
    iget-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 192
    iget-object p2, p0, Lcom/airbnb/lottie/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    if-eqz p2, :cond_0

    .line 193
    iget-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 195
    :cond_0
    iget-object p2, p0, Lcom/airbnb/lottie/ContentGroup;->rect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 196
    iget-object p2, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_3

    .line 197
    iget-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Content;

    .line 198
    instance-of v1, v0, Lcom/airbnb/lottie/DrawingContent;

    if-eqz v1, :cond_2

    .line 199
    check-cast v0, Lcom/airbnb/lottie/DrawingContent;

    iget-object v1, p0, Lcom/airbnb/lottie/ContentGroup;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v0, v1, v2}, Lcom/airbnb/lottie/DrawingContent;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 200
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_1

    .line 203
    :cond_1
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/airbnb/lottie/ContentGroup;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 204
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    .line 205
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/airbnb/lottie/ContentGroup;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    .line 206
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/airbnb/lottie/ContentGroup;->rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    .line 207
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 203
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_2
    :goto_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 157
    iget-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    if-eqz v0, :cond_0

    .line 158
    iget-object v1, p0, Lcom/airbnb/lottie/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 161
    iget-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 162
    iget-object v1, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/Content;

    .line 163
    instance-of v2, v1, Lcom/airbnb/lottie/PathContent;

    if-eqz v2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->path:Landroid/graphics/Path;

    check-cast v1, Lcom/airbnb/lottie/PathContent;

    invoke-interface {v1}, Lcom/airbnb/lottie/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v1

    iget-object v3, p0, Lcom/airbnb/lottie/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->path:Landroid/graphics/Path;

    return-object v0
.end method

.method getPathList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/PathContent;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->pathContents:Ljava/util/List;

    if-nez v0, :cond_1

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->pathContents:Ljava/util/List;

    const/4 v0, 0x0

    .line 136
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/Content;

    .line 138
    instance-of v2, v1, Lcom/airbnb/lottie/PathContent;

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/airbnb/lottie/ContentGroup;->pathContents:Ljava/util/List;

    check-cast v1, Lcom/airbnb/lottie/PathContent;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->pathContents:Ljava/util/List;

    return-object v0
.end method

.method getTransformationMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 151
    iget-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public onValueChanged()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
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

    .line 123
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    iget-object p1, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Content;

    .line 128
    iget-object v1, p0, Lcom/airbnb/lottie/ContentGroup;->contents:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/airbnb/lottie/Content;->setContents(Ljava/util/List;Ljava/util/List;)V

    .line 129
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
