.class Lcom/airbnb/lottie/ShapeLayer;
.super Lcom/airbnb/lottie/BaseLayer;
.source "ShapeLayer.java"


# instance fields
.field private final contentGroup:Lcom/airbnb/lottie/ContentGroup;

.field private final matrix:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;)V
    .locals 2

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;)V

    .line 13
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ShapeLayer;->matrix:Landroid/graphics/Matrix;

    .line 20
    new-instance v0, Lcom/airbnb/lottie/ShapeGroup;

    invoke-virtual {p2}, Lcom/airbnb/lottie/Layer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/airbnb/lottie/Layer;->getShapes()Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/airbnb/lottie/ShapeGroup;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 21
    new-instance p2, Lcom/airbnb/lottie/ContentGroup;

    invoke-direct {p2, p1, p0, v0}, Lcom/airbnb/lottie/ContentGroup;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/ShapeGroup;)V

    iput-object p2, p0, Lcom/airbnb/lottie/ShapeLayer;->contentGroup:Lcom/airbnb/lottie/ContentGroup;

    .line 22
    iget-object p1, p0, Lcom/airbnb/lottie/ShapeLayer;->contentGroup:Lcom/airbnb/lottie/ContentGroup;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/airbnb/lottie/ContentGroup;->setContents(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 1
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

    .line 36
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeLayer;->contentGroup:Lcom/airbnb/lottie/ContentGroup;

    invoke-virtual {v0, p1, p2, p3}, Lcom/airbnb/lottie/ContentGroup;->addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeLayer;->contentGroup:Lcom/airbnb/lottie/ContentGroup;

    invoke-virtual {v0, p1, p2, p3}, Lcom/airbnb/lottie/ContentGroup;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 1

    .line 30
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 31
    iget-object p2, p0, Lcom/airbnb/lottie/ShapeLayer;->contentGroup:Lcom/airbnb/lottie/ContentGroup;

    iget-object v0, p0, Lcom/airbnb/lottie/ShapeLayer;->boundsMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, v0}, Lcom/airbnb/lottie/ContentGroup;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    return-void
.end method
