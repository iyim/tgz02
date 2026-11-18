.class public final Lcom/alibaba/ailabs/genie/contacts/common/utils/QrUtils;
.super Ljava/lang/Object;
.source "QrUtils.java"


# static fields
.field private static final BLACK:I = -0x1000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static addLogo(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 76
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 77
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 78
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eqz v1, :cond_5

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    int-to-float v5, v1

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v5, v5, v6

    const/high16 v6, 0x40a00000    # 5.0f

    div-float/2addr v5, v6

    int-to-float v6, v3

    div-float/2addr v5, v6

    .line 88
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 90
    :try_start_0
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v8, 0x0

    .line 91
    invoke-virtual {v7, p0, v8, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 92
    div-int/lit8 p0, v1, 0x2

    int-to-float p0, p0

    div-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    invoke-virtual {v7, v5, v5, p0, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    sub-int/2addr v1, v3

    .line 93
    div-int/lit8 v1, v1, 0x2

    int-to-float p0, v1

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    invoke-virtual {v7, p1, p0, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/16 p0, 0x1f

    .line 94
    invoke-virtual {v7, p0}, Landroid/graphics/Canvas;->save(I)I

    .line 95
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    goto :goto_0

    :catch_0
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    :goto_0
    return-object v0

    :cond_4
    :goto_1
    return-object p0

    :cond_5
    :goto_2
    return-object v0
.end method

.method public static create2DCode(Ljava/lang/String;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    .line 19
    :try_start_0
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 20
    sget-object v0, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v1, "utf-8"

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v0, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v6

    .line 25
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    mul-int p1, v6, v7

    .line 26
    new-array v1, p1, [I

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v7, :cond_2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_1

    .line 29
    invoke-virtual {p0, v0, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_0

    mul-int v2, p2, v6

    add-int/2addr v2, v0

    const/high16 v3, -0x1000000

    .line 30
    aput v3, v1, v2

    goto :goto_2

    :cond_0
    mul-int v2, p2, v6

    add-int/2addr v2, v0

    const/4 v3, -0x1

    .line 32
    aput v3, v1, v2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 36
    :cond_2
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, v6

    .line 37
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    if-eqz p3, :cond_3

    .line 39
    invoke-static {p0, p3}, Lcom/alibaba/ailabs/genie/contacts/common/utils/QrUtils;->addLogo(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static deleteWhite(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .locals 10

    .line 49
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getEnclosingRectangle()[I

    move-result-object v0

    const/4 v1, 0x2

    .line 50
    aget v1, v0, v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x3

    .line 51
    aget v3, v0, v3

    add-int/2addr v3, v2

    .line 53
    new-instance v4, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v4, v1, v3}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 54
    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->clear()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_2

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v3, :cond_1

    .line 57
    aget v8, v0, v5

    add-int/2addr v8, v6

    aget v9, v0, v2

    add-int/2addr v9, v7

    invoke-virtual {p0, v8, v9}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 58
    invoke-virtual {v4, v6, v7}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-object v4
.end method
