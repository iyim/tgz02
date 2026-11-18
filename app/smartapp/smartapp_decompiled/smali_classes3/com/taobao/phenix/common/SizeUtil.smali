.class public Lcom/taobao/phenix/common/SizeUtil;
.super Ljava/lang/Object;
.source "SizeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static findBestSampleSize(IIII)I
    .locals 4

    int-to-double v0, p0

    int-to-double v2, p2

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    int-to-double p0, p1

    int-to-double p2, p3

    .line 23
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, p2

    .line 24
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    const/high16 p3, 0x40000000    # 2.0f

    mul-float p3, p3, p2

    float-to-double v0, p3

    cmpg-double v2, v0, p0

    if-gtz v2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    float-to-int p0, p2

    return p0
.end method

.method public static getBitmapSize(Landroid/graphics/Bitmap;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 73
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 76
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 81
    :catch_0
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result p0

    mul-int v0, v0, p0

    return v0
.end method

.method public static getResizedDimension(IIII)I
    .locals 4

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return p2

    :cond_0
    if-nez p0, :cond_1

    int-to-double p0, p1

    int-to-double v0, p3

    .line 53
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v0

    int-to-double p2, p2

    .line 54
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p2, p2, p0

    double-to-int p0, p2

    return p0

    :cond_1
    if-nez p1, :cond_2

    return p0

    :cond_2
    int-to-double v0, p3

    int-to-double p2, p2

    .line 61
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, p2

    int-to-double p2, p0

    .line 63
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p2, p2, v0

    int-to-double v2, p1

    cmpl-double p1, p2, v2

    if-lez p1, :cond_3

    .line 64
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    double-to-int p0, v2

    :cond_3
    return p0
.end method

.method public static getSplitHeight(I)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static getSplitWidth(I)I
    .locals 1

    const/high16 v0, -0x10000

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x10

    return p0
.end method

.method public static mergeWH(II)I
    .locals 1

    shl-int/lit8 p0, p0, 0x10

    const v0, 0xffff

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method
