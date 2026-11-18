.class public final Lcom/alibaba/ailabs/genie/load/image/common/GenieDownsampler;
.super Ljava/lang/Object;
.source "GenieDownsampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/load/image/common/GenieDownsampler$Holder;
    }
.end annotation


# instance fields
.field private mArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private mDownsampler:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/load/image/common/GenieDownsampler$1;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/load/image/common/GenieDownsampler;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/load/image/common/GenieDownsampler;
    .locals 1

    .line 33
    invoke-static {}, Lcom/alibaba/ailabs/genie/load/image/common/GenieDownsampler$Holder;->access$100()Lcom/alibaba/ailabs/genie/load/image/common/GenieDownsampler;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public decode([BIILcom/bumptech/glide/load/Options;)Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 50
    :try_start_0
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 51
    sget-object p3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p3, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 p3, 0x0

    .line 52
    array-length p4, p1

    invoke-static {p1, p3, p4, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getArrayPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/load/image/common/GenieDownsampler;->mArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    return-object v0
.end method

.method public init(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Landroid/util/DisplayMetrics;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")V"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/load/image/common/GenieDownsampler;->mDownsampler:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    .line 39
    iput-object p4, p0, Lcom/alibaba/ailabs/genie/load/image/common/GenieDownsampler;->mArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    return-void
.end method
