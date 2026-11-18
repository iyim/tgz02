.class final Lcom/airbnb/lottie/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final SQRT_2:F

.field private static displayMetrics:Landroid/util/DisplayMetrics;

.field private static final pathMeasure:Landroid/graphics/PathMeasure;

.field private static final points:[F

.field private static final tempPath:Landroid/graphics/Path;

.field private static final tempPath2:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    .line 16
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/Utils;->tempPath:Landroid/graphics/Path;

    .line 17
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/Utils;->tempPath2:Landroid/graphics/Path;

    const/4 v0, 0x4

    .line 19
    new-array v0, v0, [F

    sput-object v0, Lcom/airbnb/lottie/Utils;->points:[F

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/airbnb/lottie/Utils;->SQRT_2:F

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V
    .locals 4

    .line 92
    sget-object v0, Lcom/airbnb/lottie/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 94
    sget-object v0, Lcom/airbnb/lottie/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    return-void

    :cond_0
    mul-float p1, p1, v0

    mul-float p2, p2, v0

    .line 100
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 101
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    mul-float p3, p3, v0

    add-float/2addr v2, p3

    add-float/2addr p1, p3

    cmpl-float p2, v2, v0

    if-ltz p2, :cond_1

    cmpl-float p2, p1, v0

    if-ltz p2, :cond_1

    .line 109
    invoke-static {v2, v0}, Lcom/airbnb/lottie/MiscUtils;->floorMod(FF)I

    move-result p2

    int-to-float v2, p2

    .line 110
    invoke-static {p1, v0}, Lcom/airbnb/lottie/MiscUtils;->floorMod(FF)I

    move-result p1

    int-to-float p1, p1

    :cond_1
    sub-float p2, p1, v2

    .line 114
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 p3, 0x3f800000    # 1.0f

    cmpg-float p2, p2, p3

    if-gez p2, :cond_2

    return-void

    :cond_2
    cmpg-float p2, v2, v1

    if-gez p2, :cond_3

    .line 119
    invoke-static {v2, v0}, Lcom/airbnb/lottie/MiscUtils;->floorMod(FF)I

    move-result p2

    int-to-float v2, p2

    :cond_3
    cmpg-float p2, p1, v1

    if-gez p2, :cond_4

    .line 122
    invoke-static {p1, v0}, Lcom/airbnb/lottie/MiscUtils;->floorMod(FF)I

    move-result p1

    int-to-float p1, p1

    :cond_4
    cmpl-float p2, v2, p1

    if-nez p2, :cond_5

    .line 127
    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    return-void

    :cond_5
    cmpl-float p2, v2, p1

    if-ltz p2, :cond_6

    sub-float/2addr v2, v0

    .line 135
    :cond_6
    sget-object p2, Lcom/airbnb/lottie/Utils;->tempPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 136
    sget-object p2, Lcom/airbnb/lottie/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    sget-object p3, Lcom/airbnb/lottie/Utils;->tempPath:Landroid/graphics/Path;

    const/4 v3, 0x1

    invoke-virtual {p2, v2, p1, p3, v3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    cmpl-float p2, p1, v0

    if-lez p2, :cond_7

    .line 143
    sget-object p2, Lcom/airbnb/lottie/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 144
    sget-object p2, Lcom/airbnb/lottie/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    rem-float/2addr p1, v0

    sget-object p3, Lcom/airbnb/lottie/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {p2, v1, p1, p3, v3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 149
    sget-object p1, Lcom/airbnb/lottie/Utils;->tempPath:Landroid/graphics/Path;

    sget-object p2, Lcom/airbnb/lottie/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_0

    :cond_7
    cmpg-float p1, v2, v1

    if-gez p1, :cond_8

    .line 151
    sget-object p1, Lcom/airbnb/lottie/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 152
    sget-object p1, Lcom/airbnb/lottie/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    add-float/2addr v2, v0

    sget-object p2, Lcom/airbnb/lottie/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {p1, v2, v0, p2, v3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 157
    sget-object p1, Lcom/airbnb/lottie/Utils;->tempPath:Landroid/graphics/Path;

    sget-object p2, Lcom/airbnb/lottie/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 159
    :cond_8
    :goto_0
    sget-object p1, Lcom/airbnb/lottie/Utils;->tempPath:Landroid/graphics/Path;

    invoke-virtual {p0, p1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    return-void
.end method

.method static applyTrimPathIfNeeded(Landroid/graphics/Path;Lcom/airbnb/lottie/TrimPathContent;)V
    .locals 3
    .param p1    # Lcom/airbnb/lottie/TrimPathContent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/TrimPathContent;->getStart()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 87
    invoke-virtual {p1}, Lcom/airbnb/lottie/TrimPathContent;->getEnd()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v2, v1

    invoke-virtual {p1}, Lcom/airbnb/lottie/TrimPathContent;->getOffset()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr p1, v1

    .line 86
    invoke-static {p0, v0, v2, p1}, Lcom/airbnb/lottie/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    return-void
.end method

.method static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 42
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 44
    throw p0

    :catch_1
    :cond_0
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static createPath(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;
    .locals 8

    .line 25
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 26
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    if-eqz p2, :cond_0

    .line 28
    invoke-virtual {p2}, Landroid/graphics/PointF;->length()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/graphics/PointF;->length()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 29
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    add-float v2, p0, p2

    iget p0, p1, Landroid/graphics/PointF;->x:F

    iget p2, p3, Landroid/graphics/PointF;->x:F

    add-float v3, p0, p2

    iget p0, p1, Landroid/graphics/PointF;->y:F

    iget p2, p3, Landroid/graphics/PointF;->y:F

    add-float v4, p0, p2

    iget v5, p1, Landroid/graphics/PointF;->x:F

    iget v6, p1, Landroid/graphics/PointF;->y:F

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0

    .line 34
    :cond_0
    iget p0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, p0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    return-object v7
.end method

.method static getScale(Landroid/graphics/Matrix;)F
    .locals 6

    .line 69
    sget-object v0, Lcom/airbnb/lottie/Utils;->points:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v3, 0x1

    .line 70
    aput v1, v0, v3

    .line 72
    sget v1, Lcom/airbnb/lottie/Utils;->SQRT_2:F

    const/4 v4, 0x2

    aput v1, v0, v4

    const/4 v5, 0x3

    .line 73
    aput v1, v0, v5

    .line 74
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 75
    sget-object p0, Lcom/airbnb/lottie/Utils;->points:[F

    aget v0, p0, v4

    aget v1, p0, v2

    sub-float/2addr v0, v1

    .line 76
    aget v1, p0, v5

    aget p0, p0, v3

    sub-float/2addr v1, p0

    float-to-double v2, v0

    float-to-double v0, v1

    .line 79
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p0, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    return p0
.end method

.method static getScreenHeight(Landroid/content/Context;)I
    .locals 1

    .line 60
    sget-object v0, Lcom/airbnb/lottie/Utils;->displayMetrics:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/Utils;->displayMetrics:Landroid/util/DisplayMetrics;

    :cond_0
    const-string/jumbo v0, "window"

    .line 63
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 64
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    sget-object v0, Lcom/airbnb/lottie/Utils;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 65
    sget-object p0, Lcom/airbnb/lottie/Utils;->displayMetrics:Landroid/util/DisplayMetrics;

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method static getScreenWidth(Landroid/content/Context;)I
    .locals 1

    .line 51
    sget-object v0, Lcom/airbnb/lottie/Utils;->displayMetrics:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/Utils;->displayMetrics:Landroid/util/DisplayMetrics;

    :cond_0
    const-string/jumbo v0, "window"

    .line 54
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 55
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    sget-object v0, Lcom/airbnb/lottie/Utils;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 56
    sget-object p0, Lcom/airbnb/lottie/Utils;->displayMetrics:Landroid/util/DisplayMetrics;

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method
