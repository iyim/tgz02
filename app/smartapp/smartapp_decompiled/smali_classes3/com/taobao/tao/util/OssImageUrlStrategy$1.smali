.class synthetic Lcom/taobao/tao/util/OssImageUrlStrategy$1;
.super Ljava/lang/Object;
.source "OssImageUrlStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/util/OssImageUrlStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$taobao$tao$image$ImageStrategyConfig$SizeLimitType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 171
    invoke-static {}, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;->values()[Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/taobao/tao/util/OssImageUrlStrategy$1;->$SwitchMap$com$taobao$tao$image$ImageStrategyConfig$SizeLimitType:[I

    :try_start_0
    sget-object v0, Lcom/taobao/tao/util/OssImageUrlStrategy$1;->$SwitchMap$com$taobao$tao$image$ImageStrategyConfig$SizeLimitType:[I

    sget-object v1, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;->WIDTH_LIMIT:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    invoke-virtual {v1}, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/taobao/tao/util/OssImageUrlStrategy$1;->$SwitchMap$com$taobao$tao$image$ImageStrategyConfig$SizeLimitType:[I

    sget-object v1, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;->HEIGHT_LIMIT:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    invoke-virtual {v1}, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/taobao/tao/util/OssImageUrlStrategy$1;->$SwitchMap$com$taobao$tao$image$ImageStrategyConfig$SizeLimitType:[I

    sget-object v1, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;->ALL_LIMIT:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    invoke-virtual {v1}, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
