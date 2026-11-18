.class synthetic Lcom/taobao/tao/util/TBImageUrlStrategy$1;
.super Ljava/lang/Object;
.source "TBImageUrlStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/util/TBImageUrlStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$taobao$tao$util$TBImageUrlStrategy$CutType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 279
    invoke-static {}, Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;->values()[Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/taobao/tao/util/TBImageUrlStrategy$1;->$SwitchMap$com$taobao$tao$util$TBImageUrlStrategy$CutType:[I

    :try_start_0
    sget-object v0, Lcom/taobao/tao/util/TBImageUrlStrategy$1;->$SwitchMap$com$taobao$tao$util$TBImageUrlStrategy$CutType:[I

    sget-object v1, Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;->xz:Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;

    invoke-virtual {v1}, Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
