.class Lcom/airbnb/lottie/StrokeContent;
.super Lcom/airbnb/lottie/BaseStrokeContent;
.source "StrokeContent.java"


# instance fields
.field private final colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/KeyframeAnimation<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/ShapeStroke;)V
    .locals 10

    .line 14
    invoke-virtual {p3}, Lcom/airbnb/lottie/ShapeStroke;->getCapType()Lcom/airbnb/lottie/ShapeStroke$LineCapType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/ShapeStroke$LineCapType;->toPaintCap()Landroid/graphics/Paint$Cap;

    move-result-object v4

    .line 15
    invoke-virtual {p3}, Lcom/airbnb/lottie/ShapeStroke;->getJoinType()Lcom/airbnb/lottie/ShapeStroke$LineJoinType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/ShapeStroke$LineJoinType;->toPaintJoin()Landroid/graphics/Paint$Join;

    move-result-object v5

    invoke-virtual {p3}, Lcom/airbnb/lottie/ShapeStroke;->getOpacity()Lcom/airbnb/lottie/AnimatableIntegerValue;

    move-result-object v6

    invoke-virtual {p3}, Lcom/airbnb/lottie/ShapeStroke;->getWidth()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v7

    .line 16
    invoke-virtual {p3}, Lcom/airbnb/lottie/ShapeStroke;->getLineDashPattern()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p3}, Lcom/airbnb/lottie/ShapeStroke;->getDashOffset()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 14
    invoke-direct/range {v1 .. v9}, Lcom/airbnb/lottie/BaseStrokeContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/AnimatableFloatValue;)V

    .line 17
    invoke-virtual {p3}, Lcom/airbnb/lottie/ShapeStroke;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/StrokeContent;->name:Ljava/lang/String;

    .line 18
    invoke-virtual {p3}, Lcom/airbnb/lottie/ShapeStroke;->getColor()Lcom/airbnb/lottie/AnimatableColorValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/AnimatableColorValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/StrokeContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 19
    iget-object p1, p0, Lcom/airbnb/lottie/StrokeContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/KeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 20
    iget-object p1, p0, Lcom/airbnb/lottie/StrokeContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    return-void
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

    .line 26
    iget-object p1, p0, Lcom/airbnb/lottie/StrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/airbnb/lottie/StrokeContent;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/airbnb/lottie/StrokeContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/BaseStrokeContent;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/airbnb/lottie/StrokeContent;->name:Ljava/lang/String;

    return-object v0
.end method
