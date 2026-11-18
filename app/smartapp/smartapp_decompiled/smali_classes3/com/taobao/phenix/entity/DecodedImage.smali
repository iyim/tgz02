.class public Lcom/taobao/phenix/entity/DecodedImage;
.super Ljava/lang/Object;
.source "DecodedImage.java"

# interfaces
.implements Lcom/taobao/rxm/common/Releasable;


# static fields
.field public static final ANIMATE_IMAGE:I = 0x2

.field public static final STATIC_BITMAP:I = 0x1


# instance fields
.field private final mAnimatedImage:Lcom/taobao/pexode/animate/AnimatedImage;

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mBitmapPadding:Landroid/graphics/Rect;

.field private mEncodedImage:Lcom/taobao/phenix/entity/EncodedImage;

.field private final mType:I


# direct methods
.method public constructor <init>(Lcom/taobao/phenix/entity/EncodedImage;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/taobao/phenix/entity/DecodedImage;-><init>(Lcom/taobao/phenix/entity/EncodedImage;Landroid/graphics/Bitmap;Lcom/taobao/pexode/animate/AnimatedImage;Landroid/graphics/Rect;)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/phenix/entity/EncodedImage;Landroid/graphics/Bitmap;Lcom/taobao/pexode/animate/AnimatedImage;Landroid/graphics/Rect;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lcom/taobao/phenix/entity/DecodedImage;->mType:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 27
    iput v0, p0, Lcom/taobao/phenix/entity/DecodedImage;->mType:I

    .line 29
    :goto_0
    iput-object p1, p0, Lcom/taobao/phenix/entity/DecodedImage;->mEncodedImage:Lcom/taobao/phenix/entity/EncodedImage;

    .line 30
    iput-object p2, p0, Lcom/taobao/phenix/entity/DecodedImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 31
    iput-object p3, p0, Lcom/taobao/phenix/entity/DecodedImage;->mAnimatedImage:Lcom/taobao/pexode/animate/AnimatedImage;

    .line 32
    iput-object p4, p0, Lcom/taobao/phenix/entity/DecodedImage;->mBitmapPadding:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getAnimatedImage()Lcom/taobao/pexode/animate/AnimatedImage;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/taobao/phenix/entity/DecodedImage;->mAnimatedImage:Lcom/taobao/pexode/animate/AnimatedImage;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/taobao/phenix/entity/DecodedImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmapPadding()Landroid/graphics/Rect;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/taobao/phenix/entity/DecodedImage;->mBitmapPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getEncodedImage()Lcom/taobao/phenix/entity/EncodedImage;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/taobao/phenix/entity/DecodedImage;->mEncodedImage:Lcom/taobao/phenix/entity/EncodedImage;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/taobao/phenix/entity/DecodedImage;->mType:I

    return v0
.end method

.method public isAvailable()Z
    .locals 3

    .line 64
    iget v0, p0, Lcom/taobao/phenix/entity/DecodedImage;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/taobao/phenix/entity/DecodedImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/taobao/phenix/entity/DecodedImage;->mType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/taobao/phenix/entity/DecodedImage;->mAnimatedImage:Lcom/taobao/pexode/animate/AnimatedImage;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public isStaticBitmap()Z
    .locals 2

    .line 60
    iget v0, p0, Lcom/taobao/phenix/entity/DecodedImage;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public needCached()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/taobao/phenix/entity/DecodedImage;->mEncodedImage:Lcom/taobao/phenix/entity/EncodedImage;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/taobao/phenix/entity/EncodedImage;->completed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public release()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/taobao/phenix/entity/DecodedImage;->mEncodedImage:Lcom/taobao/phenix/entity/EncodedImage;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/taobao/phenix/entity/EncodedImage;->release()V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/taobao/phenix/entity/DecodedImage;->mAnimatedImage:Lcom/taobao/pexode/animate/AnimatedImage;

    if-eqz v0, :cond_1

    .line 73
    invoke-interface {v0}, Lcom/taobao/pexode/animate/AnimatedImage;->dispose()V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DecodedImage(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/phenix/entity/DecodedImage;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/phenix/entity/DecodedImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", animated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/phenix/entity/DecodedImage;->mAnimatedImage:Lcom/taobao/pexode/animate/AnimatedImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
