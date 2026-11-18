.class public Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;
.super Ljava/lang/Object;
.source "ResourceLoader.java"

# interfaces
.implements Lcom/alipay/android/app/smartpays/res/IResourceLoader;


# instance fields
.field private mProvider:Lcom/alipay/android/app/smartpays/api/IResourceProvider;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/smartpays/api/IResourceProvider;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;->mProvider:Lcom/alipay/android/app/smartpays/api/IResourceProvider;

    return-void
.end method


# virtual methods
.method public getDrawableId(Ljava/lang/String;)I
    .locals 1

    const-string v0, "drawable"

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getId(Ljava/lang/String;)I
    .locals 1

    const-string v0, "id"

    .line 43
    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getLayoutId(Ljava/lang/String;)I
    .locals 1

    const-string v0, "layout"

    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getPaddingDrawable(IILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5

    if-eqz p3, :cond_0

    .line 76
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    .line 77
    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 78
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 80
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const/high16 v0, 0x40c00000    # 6.0f

    .line 81
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 82
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v1, 0x140

    .line 83
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 84
    invoke-static {p3, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 85
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/2addr v0, p1

    .line 86
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 85
    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 87
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 88
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x0

    .line 89
    invoke-virtual {v0, p2, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 90
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, p3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p2

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid context"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getResourceId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;->mProvider:Lcom/alipay/android/app/smartpays/api/IResourceProvider;

    invoke-interface {v1}, Lcom/alipay/android/app/smartpays/api/IResourceProvider;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".R$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 54
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-lez v0, :cond_0

    return v0

    .line 63
    :catch_0
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;->mProvider:Lcom/alipay/android/app/smartpays/api/IResourceProvider;

    invoke-interface {v2}, Lcom/alipay/android/app/smartpays/api/IResourceProvider;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 64
    invoke-virtual {v2, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 66
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/alipay/android/app/smartpays/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    move p1, v0

    :goto_0
    return p1
.end method

.method public getStringId(Ljava/lang/String;)I
    .locals 1

    const-string v0, "string"

    .line 28
    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
