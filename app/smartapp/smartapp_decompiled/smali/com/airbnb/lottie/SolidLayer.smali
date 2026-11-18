.class Lcom/airbnb/lottie/SolidLayer;
.super Lcom/airbnb/lottie/BaseLayer;
.source "SolidLayer.java"


# instance fields
.field private final layerModel:Lcom/airbnb/lottie/Layer;

.field private final paint:Landroid/graphics/Paint;

.field private final rect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;)V
    .locals 1

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;)V

    .line 13
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/SolidLayer;->rect:Landroid/graphics/RectF;

    .line 14
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/SolidLayer;->paint:Landroid/graphics/Paint;

    .line 19
    iput-object p2, p0, Lcom/airbnb/lottie/SolidLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    .line 21
    iget-object p1, p0, Lcom/airbnb/lottie/SolidLayer;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 22
    iget-object p1, p0, Lcom/airbnb/lottie/SolidLayer;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    iget-object p1, p0, Lcom/airbnb/lottie/SolidLayer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/airbnb/lottie/Layer;->getSolidColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private updateRect(Landroid/graphics/Matrix;)V
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/airbnb/lottie/SolidLayer;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/airbnb/lottie/SolidLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    invoke-virtual {v1}, Lcom/airbnb/lottie/Layer;->getSolidWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/airbnb/lottie/SolidLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    invoke-virtual {v2}, Lcom/airbnb/lottie/Layer;->getSolidHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 48
    iget-object v0, p0, Lcom/airbnb/lottie/SolidLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

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

    .line 53
    iget-object p1, p0, Lcom/airbnb/lottie/SolidLayer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 27
    iget-object p3, p0, Lcom/airbnb/lottie/SolidLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    invoke-virtual {p3}, Lcom/airbnb/lottie/Layer;->getSolidColor()I

    move-result p3

    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    int-to-float p3, p3

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p3, v0

    .line 32
    iget-object v1, p0, Lcom/airbnb/lottie/SolidLayer;->transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

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

    .line 33
    iget-object v0, p0, Lcom/airbnb/lottie/SolidLayer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    if-lez p3, :cond_1

    .line 35
    invoke-direct {p0, p2}, Lcom/airbnb/lottie/SolidLayer;->updateRect(Landroid/graphics/Matrix;)V

    .line 36
    iget-object p2, p0, Lcom/airbnb/lottie/SolidLayer;->rect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/airbnb/lottie/SolidLayer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 0

    .line 41
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 42
    iget-object p2, p0, Lcom/airbnb/lottie/SolidLayer;->boundsMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p2}, Lcom/airbnb/lottie/SolidLayer;->updateRect(Landroid/graphics/Matrix;)V

    .line 43
    iget-object p2, p0, Lcom/airbnb/lottie/SolidLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method
