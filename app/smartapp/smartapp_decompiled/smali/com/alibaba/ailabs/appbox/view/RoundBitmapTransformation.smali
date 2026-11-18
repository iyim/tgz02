.class public final Lcom/alibaba/ailabs/appbox/view/RoundBitmapTransformation;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "RoundBitmapTransformation.java"


# static fields
.field private static final ID:Ljava/lang/String; = "com.bumptech.glide.load.resource.bitmap.RoundedCorners"

.field private static final ID_BYTES:[B


# instance fields
.field private final leftBottomRadius:I

.field private final leftTopRadius:I

.field private final rightBottomRadius:I

.field private final rightTopRadius:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    sget-object v0, Lcom/alibaba/ailabs/appbox/view/RoundBitmapTransformation;->CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.RoundedCorners"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/appbox/view/RoundBitmapTransformation;->ID_BYTES:[B

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 4

    .line 35
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "leftTopRadius must be greater than 0."

    .line 36
    invoke-static {v2, v3}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    if-ltz p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string/jumbo v3, "rightTopRadius must be greater than 0."

    .line 37
    invoke-static {v2, v3}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    if-ltz p3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    const-string v3, "leftBottomRadius must be greater than 0."

    .line 38
    invoke-static {v2, v3}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    if-ltz p4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    const-string/jumbo v1, "rightBottomRadius must be greater than 0."

    .line 39
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 40
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/RoundBitmapTransformation;->leftTopRadius:I

    .line 41
    iput p2, p0, Lcom/alibaba/ailabs/appbox/view/RoundBitmapTransformation;->rightTopRadius:I

    .line 42
    iput p3, p0, Lcom/alibaba/ailabs/appbox/view/RoundBitmapTransformation;->leftBottomRadius:I

    .line 43
    iput p4, p0, Lcom/alibaba/ailabs/appbox/view/RoundBitmapTransformation;->rightBottomRadius:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 59
    instance-of v0, p1, Lcom/alibaba/ailabs/appbox/view/RoundBitmapTransformation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 60
    check-cast p1, Lcom/alibaba/ailabs/appbox/view/RoundBitmapTransformation;

    .line 61
    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RoundBitmapTransformation;->leftTopRadius:I

    iget v2, p1, Lcom/alibaba/ailabs/appbox/view/RoundBitmapTransformation;->leftTopRadius:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RoundBitmapTransformation;->rightTopRadius:I

    iget v2, p1, Lcom/alibaba/ailabs/appbox/view/RoundBitmapTransformation;->rightTopRadius:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RoundBitmapTransformation;->leftBottomRadius:I

    iget v2, p1, Lcom/alibaba/ailabs/appbox/view/RoundBitmapTransformation;->leftBottomRadius:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RoundBitmapTransformation;->rightBottomRadius:I

    iget p1, p1, Lcom/alibaba/ailabs/appbox/view/RoundBitmapTransformation;->rightBottomRadius:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 5

    const-string v0, "com.bumptech.glide.load.resource.bitmap.RoundedCorners"

    .line 70
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/alibaba/ailabs/appbox/view/RoundBitmapTransformation;->leftTopRadius:I

    iget v2, p0, Lcom/alibaba/ailabs/appbox/view/RoundBitmapTransformation;->rightTopRadius:I

    iget v3, p0, Lcom/alibaba/ailabs/appbox/view/RoundBitmapTransformation;->leftBottomRadius:I

    iget v4, p0, Lcom/alibaba/ailabs/appbox/view/RoundBitmapTransformation;->rightBottomRadius:I

    .line 74
    invoke-static {v4}, Lcom/bumptech/glide/util/Util;->hashCode(I)I

    move-result v4

    .line 73
    invoke-static {v3, v4}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result v3

    .line 72
    invoke-static {v2, v3}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result v2

    .line 71
    invoke-static {v1, v2}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result v1

    .line 70
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result v0

    return v0
.end method

.method protected transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6
    .param p1    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    invoke-static {p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->centerCrop(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 53
    iget v2, p0, Lcom/alibaba/ailabs/appbox/view/RoundBitmapTransformation;->leftTopRadius:I

    iget v3, p0, Lcom/alibaba/ailabs/appbox/view/RoundBitmapTransformation;->rightTopRadius:I

    iget v4, p0, Lcom/alibaba/ailabs/appbox/view/RoundBitmapTransformation;->leftBottomRadius:I

    iget v5, p0, Lcom/alibaba/ailabs/appbox/view/RoundBitmapTransformation;->rightBottomRadius:I

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/alibaba/ailabs/appbox/view/RoundTransformationUtils;->roundedCorners(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 3
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 79
    sget-object v0, Lcom/alibaba/ailabs/appbox/view/RoundBitmapTransformation;->ID_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    const/4 v0, 0x4

    .line 81
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/ailabs/appbox/view/RoundBitmapTransformation;->leftTopRadius:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 82
    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 83
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/ailabs/appbox/view/RoundBitmapTransformation;->rightTopRadius:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 84
    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 85
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/ailabs/appbox/view/RoundBitmapTransformation;->leftBottomRadius:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 86
    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 87
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/ailabs/appbox/view/RoundBitmapTransformation;->rightBottomRadius:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 88
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
