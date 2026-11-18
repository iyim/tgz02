.class Lcom/airbnb/lottie/CanvasPool;
.super Ljava/lang/Object;
.source "CanvasPool.java"


# instance fields
.field private final availableBitmaps:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray<",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private final bitmapCanvasMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/graphics/Bitmap;",
            "Lcom/airbnb/lottie/BitmapCanvas;",
            ">;"
        }
    .end annotation
.end field

.field private final canvasBitmapMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/airbnb/lottie/BitmapCanvas;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/CanvasPool;->availableBitmaps:Landroid/support/v4/util/LongSparseArray;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/CanvasPool;->canvasBitmapMap:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/CanvasPool;->bitmapCanvasMap:Ljava/util/Map;

    return-void
.end method

.method private getKey(IILandroid/graphics/Bitmap$Config;)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x11

    and-int/2addr p2, v0

    shl-int/lit8 p2, p2, 0x1

    or-int/2addr p1, p2

    .line 84
    invoke-virtual {p3}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result p2

    and-int/lit8 p2, p2, 0x1

    or-int/2addr p1, p2

    return p1
.end method

.method private getKey(Landroid/graphics/Bitmap;)I
    .locals 2

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/airbnb/lottie/CanvasPool;->getKey(IILandroid/graphics/Bitmap$Config;)I

    move-result p1

    return p1
.end method


# virtual methods
.method acquire(IILandroid/graphics/Bitmap$Config;)Lcom/airbnb/lottie/BitmapCanvas;
    .locals 4

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/CanvasPool;->getKey(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    .line 27
    iget-object v1, p0, Lcom/airbnb/lottie/CanvasPool;->availableBitmaps:Landroid/support/v4/util/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iget-object v1, p0, Lcom/airbnb/lottie/CanvasPool;->availableBitmaps:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 34
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 35
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 36
    new-instance p2, Lcom/airbnb/lottie/BitmapCanvas;

    invoke-direct {p2, p1}, Lcom/airbnb/lottie/BitmapCanvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 37
    iget-object p3, p0, Lcom/airbnb/lottie/CanvasPool;->canvasBitmapMap:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object p3, p0, Lcom/airbnb/lottie/CanvasPool;->bitmapCanvasMap:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 40
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 41
    iget-object p2, p0, Lcom/airbnb/lottie/CanvasPool;->bitmapCanvasMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/airbnb/lottie/BitmapCanvas;

    .line 42
    invoke-static {p2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 44
    :goto_0
    invoke-virtual {p2}, Lcom/airbnb/lottie/BitmapCanvas;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    return-object p2
.end method

.method recycleBitmaps()V
    .locals 5

    const/4 v0, 0x0

    .line 62
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/CanvasPool;->availableBitmaps:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 63
    iget-object v1, p0, Lcom/airbnb/lottie/CanvasPool;->availableBitmaps:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 64
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 65
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 67
    iget-object v3, p0, Lcom/airbnb/lottie/CanvasPool;->bitmapCanvasMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/BitmapCanvas;

    .line 68
    iget-object v4, p0, Lcom/airbnb/lottie/CanvasPool;->bitmapCanvasMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v4, p0, Lcom/airbnb/lottie/CanvasPool;->canvasBitmapMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 71
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/CanvasPool;->bitmapCanvasMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 75
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not all canvases have been released!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method release(Lcom/airbnb/lottie/BitmapCanvas;)V
    .locals 4

    .line 49
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/airbnb/lottie/CanvasPool;->canvasBitmapMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 51
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/CanvasPool;->getKey(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 53
    iget-object v1, p0, Lcom/airbnb/lottie/CanvasPool;->availableBitmaps:Landroid/support/v4/util/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 54
    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 55
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Canvas already released."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
