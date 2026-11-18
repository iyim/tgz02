.class public Lcom/taobao/pexode/common/AshmemBitmapFactory;
.super Ljava/lang/Object;
.source "AshmemBitmapFactory.java"

# interfaces
.implements Lcom/taobao/pexode/common/NewBitmapFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/pexode/common/AshmemBitmapFactory$Singleton;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static instance()Lcom/taobao/pexode/common/AshmemBitmapFactory;
    .locals 1

    .line 18
    invoke-static {}, Lcom/taobao/pexode/common/AshmemBitmapFactory$Singleton;->access$000()Lcom/taobao/pexode/common/AshmemBitmapFactory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public newBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 3

    .line 25
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 26
    iput-object p3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 p3, 0x1

    .line 27
    invoke-static {v0, p3}, Lcom/taobao/pexode/decoder/SystemDecoder;->setupAshmemOptions(Landroid/graphics/BitmapFactory$Options;Z)V

    .line 29
    invoke-static {}, Lcom/taobao/pexode/DecodeHelper;->instance()Lcom/taobao/pexode/DecodeHelper;

    move-result-object v1

    sget v2, Lcom/taobao/pexode/common/EmptyJpegGenerator;->FIXED_JPG_LENGTH:I

    invoke-virtual {v1, v2}, Lcom/taobao/pexode/DecodeHelper;->offerBytes(I)[B

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/taobao/pexode/common/EmptyJpegGenerator;->generateBytes(II[B)[B

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 31
    sget v1, Lcom/taobao/pexode/common/EmptyJpegGenerator;->FIXED_JPG_LENGTH:I

    invoke-static {p1, p2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 32
    invoke-static {}, Lcom/taobao/pexode/DecodeHelper;->instance()Lcom/taobao/pexode/DecodeHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/pexode/DecodeHelper;->releaseBytes([B)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 36
    invoke-virtual {p2, p3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    :cond_1
    return-object p2
.end method

.method public newBitmapWithPin(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    .line 44
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/pexode/common/AshmemBitmapFactory;->newBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 47
    :try_start_0
    invoke-static {p1}, Lcom/taobao/pexode/common/NdkCore;->nativePinBitmap(Landroid/graphics/Bitmap;)V

    .line 48
    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p3, 0x0

    const/4 v0, 0x1

    .line 51
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, p2

    const-string p1, "Pexode"

    const-string p2, "AshmemBitmapFactory native pin bitmap error=%s"

    invoke-static {p1, p2, v0}, Lcom/taobao/tcommon/log/FLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p1, p3

    :cond_0
    :goto_0
    return-object p1
.end method
