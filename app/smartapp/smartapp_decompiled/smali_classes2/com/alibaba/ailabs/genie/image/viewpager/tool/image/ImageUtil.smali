.class public Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getBitmapDegree(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 79
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "Orientation"

    const/4 v2, 0x1

    .line 81
    invoke-virtual {v1, p0, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x10e

    const/16 v0, 0x10e

    goto :goto_0

    :cond_1
    const/16 p0, 0x5a

    const/16 v0, 0x5a

    goto :goto_0

    :cond_2
    const/16 p0, 0xb4

    const/16 v0, 0xb4

    goto :goto_0

    :catch_0
    move-exception p0

    .line 97
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public static getImageBitmap(Ljava/lang/String;FF)Landroid/graphics/Bitmap;
    .locals 9

    .line 31
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 32
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 33
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    .line 35
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 36
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 37
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/high16 v6, 0x3f800000    # 1.0f

    if-le v4, v5, :cond_0

    int-to-float v7, v4

    cmpl-float v8, v7, p1

    if-lez v8, :cond_0

    div-float p1, v7, p1

    goto :goto_0

    :cond_0
    if-ge v4, v5, :cond_1

    int-to-float p1, v5

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    .line 43
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float p1, p1

    div-float/2addr p1, p2

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_2
    float-to-int p1, p1

    .line 49
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 50
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 51
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 52
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 53
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    if-eqz v2, :cond_3

    .line 55
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 56
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 60
    :cond_3
    :try_start_0
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 67
    :catch_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->gc()V

    goto :goto_1

    :catch_1
    if-eqz v2, :cond_4

    .line 62
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_4

    .line 63
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 65
    :cond_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->gc()V

    :goto_1
    if-eqz v2, :cond_5

    .line 71
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->getBitmapDegree(Ljava/lang/String;)I

    move-result p0

    invoke-static {v2, p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->rotateBitmapByDegree(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_5
    return-object v2
.end method

.method public static getImageBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 5

    .line 292
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 293
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 294
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    .line 295
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/high16 v4, 0x3f800000    # 1.0f

    float-to-int v4, v4

    .line 297
    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 298
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v4, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 299
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 300
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 301
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    if-eqz v2, :cond_0

    .line 302
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 303
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 306
    :cond_0
    :try_start_0
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    goto :goto_0

    .line 315
    :catch_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    goto :goto_0

    :catch_1
    if-eqz v2, :cond_1

    .line 309
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 310
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 312
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    :goto_0
    if-eqz v1, :cond_2

    .line 319
    :try_start_1
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 321
    :catch_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 322
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    const/16 p0, 0x5a

    if-ne p1, p0, :cond_3

    add-int/lit16 p1, p1, 0xb4

    .line 329
    :cond_3
    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->rotateBitmapByDegree(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 330
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    const/16 p1, 0x438

    mul-int/lit16 p0, p0, 0x438

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/2addr p0, v0

    .line 331
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt v0, p1, :cond_4

    .line 332
    invoke-static {v2, p1, p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_4
    return-object v2
.end method

.method public static getImageTypeWithMime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 349
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 350
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 351
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 352
    iget-object p0, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 354
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    .line 357
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getLongImageMaxScale(Landroid/content/Context;Ljava/lang/String;)F
    .locals 0

    .line 269
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->getLongImageMinScale(Landroid/content/Context;Ljava/lang/String;)F

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    mul-float p0, p0, p1

    return p0
.end method

.method public static getLongImageMinScale(Landroid/content/Context;Ljava/lang/String;)F
    .locals 1

    .line 262
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->getWidthHeight(Ljava/lang/String;)[I

    move-result-object p1

    const/4 v0, 0x0

    .line 263
    aget p1, p1, v0

    int-to-float p1, p1

    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/PhoneUtil;->getPhoneWid(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p1

    return p0
.end method

.method public static getOrientation(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 162
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "Orientation"

    const/4 v2, 0x1

    .line 164
    invoke-virtual {v1, p0, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    const/16 p0, 0x10e

    return p0

    :cond_1
    const/16 p0, 0x5a

    return p0

    :cond_2
    const/16 p0, 0xb4

    return p0

    :catch_0
    move-exception p0

    .line 176
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static getSmallImageMaxScale(Landroid/content/Context;Ljava/lang/String;)F
    .locals 0

    .line 287
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->getSmallImageMinScale(Landroid/content/Context;Ljava/lang/String;)F

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    mul-float p0, p0, p1

    return p0
.end method

.method public static getSmallImageMinScale(Landroid/content/Context;Ljava/lang/String;)F
    .locals 1

    .line 280
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->getWidthHeight(Ljava/lang/String;)[I

    move-result-object p1

    const/4 v0, 0x0

    .line 281
    aget p1, p1, v0

    int-to-float p1, p1

    .line 282
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/PhoneUtil;->getPhoneWid(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p1

    return p0
.end method

.method public static getWideImageDoubleScale(Landroid/content/Context;Ljava/lang/String;)F
    .locals 1

    .line 273
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->getWidthHeight(Ljava/lang/String;)[I

    move-result-object p1

    const/4 v0, 0x1

    .line 274
    aget p1, p1, v0

    int-to-float p1, p1

    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/PhoneUtil;->getPhoneHei(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p1

    return p0
.end method

.method public static getWidthHeight(Ljava/lang/String;)[I
    .locals 6

    .line 182
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 183
    new-array p0, v1, [I

    fill-array-data p0, :array_0

    return-object p0

    .line 185
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 186
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 188
    :try_start_0
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 190
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 194
    :goto_0
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 195
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    if-ne v3, v4, :cond_2

    .line 200
    :cond_1
    :try_start_1
    new-instance v4, Landroid/media/ExifInterface;

    invoke-direct {v4, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v5, "ImageLength"

    .line 202
    invoke-virtual {v4, v5, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    const-string v5, "ImageWidth"

    .line 204
    invoke-virtual {v4, v5, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    .line 206
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_1
    if-lez v3, :cond_3

    if-gtz v0, :cond_4

    .line 212
    :cond_3
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 214
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 215
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 217
    :try_start_2
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_4

    .line 218
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v4

    .line 221
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    :cond_4
    :goto_2
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->getOrientation(Ljava/lang/String;)I

    move-result p0

    const/16 v4, 0x5a

    const/4 v5, 0x0

    if-eq p0, v4, :cond_6

    const/16 v4, 0x10e

    if-ne p0, v4, :cond_5

    goto :goto_3

    .line 229
    :cond_5
    new-array p0, v1, [I

    aput v3, p0, v5

    aput v0, p0, v2

    return-object p0

    .line 227
    :cond_6
    :goto_3
    new-array p0, v1, [I

    aput v0, p0, v5

    aput v3, p0, v2

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static isBmpImageWithMime(Ljava/lang/String;)Z
    .locals 1

    .line 367
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->getImageTypeWithMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "bmp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isGifImageWithMime(Ljava/lang/String;)Z
    .locals 1

    .line 363
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->getImageTypeWithMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "gif"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isGifImageWithUrl(Ljava/lang/String;)Z
    .locals 1

    .line 371
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "gif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isLongImage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    .line 233
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->getWidthHeight(Ljava/lang/String;)[I

    move-result-object p1

    const/4 v0, 0x0

    .line 234
    aget v1, p1, v0

    int-to-float v1, v1

    const/4 v2, 0x1

    .line 235
    aget p1, p1, v2

    int-to-float p1, p1

    div-float v3, p1, v1

    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/PhoneUtil;->getPhoneRatio(Landroid/content/Context;)F

    move-result p0

    const v4, 0x3dcccccd    # 0.1f

    add-float/2addr p0, v4

    const/4 v4, 0x0

    cmpl-float v5, v1, v4

    if-lez v5, :cond_0

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    cmpl-float p0, v3, p0

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    .line 239
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isLongImage = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImageUtil"

    invoke-static {p1, p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/common/Print;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static isSmallImage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 255
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->getWidthHeight(Ljava/lang/String;)[I

    move-result-object p1

    const/4 v0, 0x0

    .line 256
    aget p1, p1, v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/PhoneUtil;->getPhoneWid(Landroid/content/Context;)I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 v0, 0x1

    .line 257
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isSmallImage = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImageUtil"

    invoke-static {p1, p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/common/Print;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static isWideImage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .line 244
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->getWidthHeight(Ljava/lang/String;)[I

    move-result-object p0

    const/4 p1, 0x0

    .line 245
    aget v0, p0, p1

    int-to-float v0, v0

    const/4 v1, 0x1

    .line 246
    aget p0, p0, v1

    int-to-float p0, p0

    div-float v2, v0, p0

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_0

    cmpl-float v3, p0, v3

    if-lez v3, :cond_0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    const/high16 p0, 0x40000000    # 2.0f

    cmpl-float p0, v2, p0

    if-ltz p0, :cond_0

    const/4 p1, 0x1

    .line 250
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isWideImage = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ImageUtil"

    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/common/Print;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public static resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 124
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 125
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float p1, p1

    int-to-float v0, v3

    div-float/2addr p1, v0

    int-to-float p2, p2

    int-to-float v0, v4

    div-float/2addr p2, v0

    .line 128
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 129
    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 130
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 131
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_1

    .line 132
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object p1
.end method

.method public static rotateBitmapByDegree(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 104
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 105
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 107
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    move-object p1, p0

    :cond_0
    if-eq p0, p1, :cond_1

    .line 115
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object p1
.end method

.method public static saveBitmapBackPath(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/ShareLongPicture/.temp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 144
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 147
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "temp_LongPictureShare_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 152
    :cond_1
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 153
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v1, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 154
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 155
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 156
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    .line 339
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 340
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 341
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    int-to-float v0, v3

    div-float/2addr p1, v0

    int-to-float p2, p2

    int-to-float v0, v4

    div-float/2addr p2, v0

    .line 344
    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    .line 345
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
