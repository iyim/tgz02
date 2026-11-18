.class Lcom/airbnb/lottie/CompositionLayer;
.super Lcom/airbnb/lottie/BaseLayer;
.source "CompositionLayer.java"


# instance fields
.field private final layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/BaseLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final rect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieDrawable;",
            "Lcom/airbnb/lottie/Layer;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/Layer;",
            ">;",
            "Lcom/airbnb/lottie/LottieComposition;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;)V

    .line 15
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    .line 16
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/airbnb/lottie/CompositionLayer;->rect:Landroid/graphics/RectF;

    .line 22
    new-instance p2, Landroid/support/v4/util/LongSparseArray;

    .line 23
    invoke-virtual {p4}, Lcom/airbnb/lottie/LottieComposition;->getLayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Landroid/support/v4/util/LongSparseArray;-><init>(I)V

    .line 26
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ltz v0, :cond_3

    .line 27
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/Layer;

    .line 28
    invoke-static {v5, p1, p4}, Lcom/airbnb/lottie/BaseLayer;->forModel(Lcom/airbnb/lottie/Layer;Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/BaseLayer;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {v6}, Lcom/airbnb/lottie/BaseLayer;->getLayerModel()Lcom/airbnb/lottie/Layer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/airbnb/lottie/Layer;->getId()J

    move-result-wide v7

    invoke-virtual {p2, v7, v8, v6}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    if-eqz v3, :cond_1

    .line 34
    invoke-virtual {v3, v6}, Lcom/airbnb/lottie/BaseLayer;->setMatteLayer(Lcom/airbnb/lottie/BaseLayer;)V

    move-object v3, v2

    goto :goto_1

    .line 37
    :cond_1
    iget-object v7, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v7, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 38
    sget-object v4, Lcom/airbnb/lottie/CompositionLayer$1;->$SwitchMap$com$airbnb$lottie$Layer$MatteType:[I

    invoke-virtual {v5}, Lcom/airbnb/lottie/Layer;->getMatteType()Lcom/airbnb/lottie/Layer$MatteType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/lottie/Layer$MatteType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v1, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v6

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 47
    :cond_3
    :goto_2
    invoke-virtual {p2}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result p1

    if-ge v4, p1, :cond_5

    .line 48
    invoke-virtual {p2, v4}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide p3

    .line 49
    invoke-virtual {p2, p3, p4}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/BaseLayer;

    .line 50
    invoke-virtual {p1}, Lcom/airbnb/lottie/BaseLayer;->getLayerModel()Lcom/airbnb/lottie/Layer;

    move-result-object p3

    invoke-virtual {p3}, Lcom/airbnb/lottie/Layer;->getParentId()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/airbnb/lottie/BaseLayer;

    if-eqz p3, :cond_4

    .line 52
    invoke-virtual {p1, p3}, Lcom/airbnb/lottie/BaseLayer;->setParentLayer(Lcom/airbnb/lottie/BaseLayer;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
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

    .line 117
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 118
    iget-object v1, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/BaseLayer;

    .line 119
    invoke-virtual {v1}, Lcom/airbnb/lottie/BaseLayer;->getLayerModel()Lcom/airbnb/lottie/Layer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/Layer;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 121
    invoke-virtual {v1, v2, v2, p3}, Lcom/airbnb/lottie/BaseLayer;->addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 122
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    invoke-virtual {v1, p1, p2, p3}, Lcom/airbnb/lottie/BaseLayer;->addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 59
    iget-object v1, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/BaseLayer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/airbnb/lottie/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 5

    .line 64
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 65
    iget-object p2, p0, Lcom/airbnb/lottie/CompositionLayer;->rect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 66
    iget-object p2, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_1

    .line 67
    iget-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/BaseLayer;

    .line 68
    iget-object v1, p0, Lcom/airbnb/lottie/CompositionLayer;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/CompositionLayer;->boundsMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/lottie/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 69
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_1

    .line 72
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/airbnb/lottie/CompositionLayer;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 73
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/airbnb/lottie/CompositionLayer;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    .line 74
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/airbnb/lottie/CompositionLayer;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    .line 75
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/airbnb/lottie/CompositionLayer;->rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    .line 76
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 72
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method hasMasks()Z
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 92
    iget-object v2, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/BaseLayer;

    .line 93
    instance-of v3, v2, Lcom/airbnb/lottie/ShapeLayer;

    if-eqz v3, :cond_0

    .line 94
    invoke-virtual {v2}, Lcom/airbnb/lottie/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method hasMatte()Z
    .locals 3

    .line 103
    invoke-virtual {p0}, Lcom/airbnb/lottie/CompositionLayer;->hasMatteOnThisLayer()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 108
    iget-object v2, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/BaseLayer;

    invoke-virtual {v2}, Lcom/airbnb/lottie/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public setProgress(F)V
    .locals 2
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 83
    invoke-super {p0, p1}, Lcom/airbnb/lottie/BaseLayer;->setProgress(F)V

    .line 84
    iget-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/Layer;->getStartProgress()F

    move-result v0

    sub-float/2addr p1, v0

    .line 85
    iget-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 86
    iget-object v1, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/BaseLayer;

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/BaseLayer;->setProgress(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
