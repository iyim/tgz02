.class public Lcom/taobao/pexode/PexodeResult;
.super Ljava/lang/Object;
.source "PexodeResult.java"


# instance fields
.field public animated:Lcom/taobao/pexode/animate/AnimatedImage;

.field public bitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static wrap(Landroid/graphics/Bitmap;)Lcom/taobao/pexode/PexodeResult;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 15
    :cond_0
    new-instance v0, Lcom/taobao/pexode/PexodeResult;

    invoke-direct {v0}, Lcom/taobao/pexode/PexodeResult;-><init>()V

    .line 16
    iput-object p0, v0, Lcom/taobao/pexode/PexodeResult;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static wrap(Lcom/taobao/pexode/animate/AnimatedImage;)Lcom/taobao/pexode/PexodeResult;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 24
    :cond_0
    new-instance v0, Lcom/taobao/pexode/PexodeResult;

    invoke-direct {v0}, Lcom/taobao/pexode/PexodeResult;-><init>()V

    .line 25
    iput-object p0, v0, Lcom/taobao/pexode/PexodeResult;->animated:Lcom/taobao/pexode/animate/AnimatedImage;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PexodeResult(bitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/pexode/PexodeResult;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", animated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/pexode/PexodeResult;->animated:Lcom/taobao/pexode/animate/AnimatedImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
