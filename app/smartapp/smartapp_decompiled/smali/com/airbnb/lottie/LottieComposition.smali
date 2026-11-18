.class public Lcom/airbnb/lottie/LottieComposition;
.super Ljava/lang/Object;
.source "LottieComposition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieComposition$Factory;
    }
.end annotation


# instance fields
.field private final bounds:Landroid/graphics/Rect;

.field private final dpScale:F

.field private final endFrame:J

.field private final frameRate:I

.field private final images:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;"
        }
    .end annotation
.end field

.field private final layerMap:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray<",
            "Lcom/airbnb/lottie/Layer;",
            ">;"
        }
    .end annotation
.end field

.field private final layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/Layer;",
            ">;"
        }
    .end annotation
.end field

.field private final precomps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/Layer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final startFrame:J


# direct methods
.method private constructor <init>(Landroid/graphics/Rect;JJIF)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->precomps:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->images:Ljava/util/Map;

    .line 33
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->layerMap:Landroid/support/v4/util/LongSparseArray;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->layers:Ljava/util/List;

    .line 43
    iput-object p1, p0, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    .line 44
    iput-wide p2, p0, Lcom/airbnb/lottie/LottieComposition;->startFrame:J

    .line 45
    iput-wide p4, p0, Lcom/airbnb/lottie/LottieComposition;->endFrame:J

    .line 46
    iput p6, p0, Lcom/airbnb/lottie/LottieComposition;->frameRate:I

    .line 47
    iput p7, p0, Lcom/airbnb/lottie/LottieComposition;->dpScale:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Rect;JJIFLcom/airbnb/lottie/LottieComposition$1;)V
    .locals 0

    .line 29
    invoke-direct/range {p0 .. p7}, Lcom/airbnb/lottie/LottieComposition;-><init>(Landroid/graphics/Rect;JJIF)V

    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/lottie/LottieComposition;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/airbnb/lottie/LottieComposition;->layers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/airbnb/lottie/LottieComposition;)Landroid/support/v4/util/LongSparseArray;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/airbnb/lottie/LottieComposition;->layerMap:Landroid/support/v4/util/LongSparseArray;

    return-object p0
.end method

.method static synthetic access$300(Lcom/airbnb/lottie/LottieComposition;)Ljava/util/Map;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/airbnb/lottie/LottieComposition;->precomps:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/airbnb/lottie/LottieComposition;)Ljava/util/Map;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/airbnb/lottie/LottieComposition;->images:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDpScale()F
    .locals 1

    .line 90
    iget v0, p0, Lcom/airbnb/lottie/LottieComposition;->dpScale:F

    return v0
.end method

.method public getDuration()J
    .locals 4

    .line 59
    iget-wide v0, p0, Lcom/airbnb/lottie/LottieComposition;->endFrame:J

    iget-wide v2, p0, Lcom/airbnb/lottie/LottieComposition;->startFrame:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    .line 60
    iget v1, p0, Lcom/airbnb/lottie/LottieComposition;->frameRate:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method getDurationFrames()F
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    iget v1, p0, Lcom/airbnb/lottie/LottieComposition;->frameRate:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method getEndFrame()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/airbnb/lottie/LottieComposition;->endFrame:J

    return-wide v0
.end method

.method getImages()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->images:Ljava/util/Map;

    return-object v0
.end method

.method getLayers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/Layer;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->layers:Ljava/util/List;

    return-object v0
.end method

.method getPrecomps(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/Layer;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->precomps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method hasImages()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->images:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method layerModelForId(J)Lcom/airbnb/lottie/Layer;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->layerMap:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/Layer;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LottieComposition:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/airbnb/lottie/LottieComposition;->layers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/Layer;

    const-string v3, "\t"

    .line 96
    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/Layer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
