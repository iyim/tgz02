.class Lcom/airbnb/lottie/MiscUtils;
.super Ljava/lang/Object;
.source "MiscUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3

    .line 9
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr p0, p1

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method static clamp(FFF)F
    .locals 0

    .line 63
    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private static floorDiv(II)I
    .locals 2

    .line 54
    div-int v0, p0, p1

    xor-int v1, p0, p1

    if-gez v1, :cond_0

    mul-int p1, p1, v0

    if-eq p1, p0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method static floorMod(FF)I
    .locals 0

    float-to-int p0, p0

    float-to-int p1, p1

    .line 40
    invoke-static {p0, p1}, Lcom/airbnb/lottie/MiscUtils;->floorMod(II)I

    move-result p0

    return p0
.end method

.method static floorMod(II)I
    .locals 1

    .line 47
    invoke-static {p0, p1}, Lcom/airbnb/lottie/MiscUtils;->floorDiv(II)I

    move-result v0

    mul-int v0, v0, p1

    sub-int/2addr p0, v0

    return p0
.end method

.method static getPathFromData(Lcom/airbnb/lottie/ShapeData;Landroid/graphics/Path;)V
    .locals 10

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 14
    invoke-virtual {p0}, Lcom/airbnb/lottie/ShapeData;->getInitialPoint()Landroid/graphics/PointF;

    move-result-object v0

    .line 15
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/airbnb/lottie/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/CubicCurveData;

    .line 18
    invoke-virtual {v1}, Lcom/airbnb/lottie/CubicCurveData;->getControlPoint1()Landroid/graphics/PointF;

    move-result-object v2

    iget v4, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1}, Lcom/airbnb/lottie/CubicCurveData;->getControlPoint1()Landroid/graphics/PointF;

    move-result-object v2

    iget v5, v2, Landroid/graphics/PointF;->y:F

    .line 19
    invoke-virtual {v1}, Lcom/airbnb/lottie/CubicCurveData;->getControlPoint2()Landroid/graphics/PointF;

    move-result-object v2

    iget v6, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1}, Lcom/airbnb/lottie/CubicCurveData;->getControlPoint2()Landroid/graphics/PointF;

    move-result-object v2

    iget v7, v2, Landroid/graphics/PointF;->y:F

    .line 20
    invoke-virtual {v1}, Lcom/airbnb/lottie/CubicCurveData;->getVertex()Landroid/graphics/PointF;

    move-result-object v2

    iget v8, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1}, Lcom/airbnb/lottie/CubicCurveData;->getVertex()Landroid/graphics/PointF;

    move-result-object v1

    iget v9, v1, Landroid/graphics/PointF;->y:F

    move-object v3, p1

    .line 18
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/ShapeData;->isClosed()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 23
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    :cond_1
    return-void
.end method

.method static lerp(DDD)D
    .locals 0
    .param p4    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    sub-double/2addr p2, p0

    mul-double p4, p4, p2

    add-double/2addr p0, p4

    return-wide p0
.end method

.method static lerp(FFF)F
    .locals 0
    .param p2    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    sub-float/2addr p1, p0

    mul-float p2, p2, p1

    add-float/2addr p0, p2

    return p0
.end method

.method static lerp(IIF)I
    .locals 1
    .param p2    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    int-to-float v0, p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float p2, p2, p0

    add-float/2addr v0, p2

    float-to-int p0, v0

    return p0
.end method
