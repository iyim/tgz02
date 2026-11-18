.class public Lcom/airbnb/lottie/LottieDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LottieDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LottieDrawable"


# instance fields
.field private alpha:I

.field private final animator:Landroid/animation/ValueAnimator;

.field private final colorFilterData:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;",
            ">;"
        }
    .end annotation
.end field

.field private composition:Lcom/airbnb/lottie/LottieComposition;

.field private compositionLayer:Lcom/airbnb/lottie/CompositionLayer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private enableMergePaths:Z

.field private imageAssetBitmapManager:Lcom/airbnb/lottie/ImageAssetBitmapManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private imageAssetDelegate:Lcom/airbnb/lottie/ImageAssetDelegate;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private imageAssetsFolder:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final matrix:Landroid/graphics/Matrix;

.field private playAnimationWhenCompositionAdded:Z

.field private progress:F

.field private reverseAnimationWhenCompositionAdded:Z

.field private scale:F

.field private speed:F

.field private systemAnimationsAreDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    const/4 v0, 0x2

    .line 37
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 38
    iput v0, p0, Lcom/airbnb/lottie/LottieDrawable;->speed:F

    .line 39
    iput v0, p0, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/airbnb/lottie/LottieDrawable;->progress:F

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->colorFilterData:Ljava/util/Set;

    const/16 v0, 0xff

    .line 51
    iput v0, p0, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    .line 54
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 55
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 56
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$1;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/LottieDrawable$1;-><init>(Lcom/airbnb/lottie/LottieDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/airbnb/lottie/LottieDrawable;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/airbnb/lottie/LottieDrawable;->systemAnimationsAreDisabled:Z

    return p0
.end method

.method static synthetic access$100(Lcom/airbnb/lottie/LottieDrawable;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private addColorFilterInternal(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 259
    new-instance v0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;

    invoke-direct {v0, p1, p2, p3}, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    if-nez p3, :cond_0

    .line 260
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->colorFilterData:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->colorFilterData:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->colorFilterData:Ljava/util/Set;

    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;

    invoke-direct {v1, p1, p2, p3}, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 266
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    if-nez v0, :cond_1

    return-void

    .line 270
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lcom/airbnb/lottie/CompositionLayer;->addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private applyColorFilters()V
    .locals 5

    .line 177
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    if-nez v0, :cond_0

    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->colorFilterData:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;

    .line 182
    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    iget-object v3, v1, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->layerName:Ljava/lang/String;

    iget-object v4, v1, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->contentName:Ljava/lang/String;

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v3, v4, v1}, Lcom/airbnb/lottie/CompositionLayer;->addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private buildCompositionLayer()V
    .locals 4

    .line 172
    new-instance v0, Lcom/airbnb/lottie/CompositionLayer;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 173
    invoke-static {v1}, Lcom/airbnb/lottie/Layer$Factory;->newInstance(Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/Layer;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getLayers()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/airbnb/lottie/CompositionLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    return-void
.end method

.method private clearComposition()V
    .locals 1

    .line 187
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->recycleBitmaps()V

    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    .line 189
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetBitmapManager:Lcom/airbnb/lottie/ImageAssetBitmapManager;

    .line 190
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 459
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 464
    :cond_0
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 465
    nop

    nop

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method private getImageAssetBitmapManager()Lcom/airbnb/lottie/ImageAssetBitmapManager;
    .locals 5

    .line 445
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetBitmapManager:Lcom/airbnb/lottie/ImageAssetBitmapManager;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/ImageAssetBitmapManager;->hasSameContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetBitmapManager:Lcom/airbnb/lottie/ImageAssetBitmapManager;

    invoke-virtual {v0}, Lcom/airbnb/lottie/ImageAssetBitmapManager;->recycleBitmaps()V

    const/4 v0, 0x0

    .line 447
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetBitmapManager:Lcom/airbnb/lottie/ImageAssetBitmapManager;

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetBitmapManager:Lcom/airbnb/lottie/ImageAssetBitmapManager;

    if-nez v0, :cond_1

    .line 451
    new-instance v0, Lcom/airbnb/lottie/ImageAssetBitmapManager;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetsFolder:Ljava/lang/String;

    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetDelegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    iget-object v4, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 452
    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieComposition;->getImages()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/airbnb/lottie/ImageAssetBitmapManager;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/airbnb/lottie/ImageAssetDelegate;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetBitmapManager:Lcom/airbnb/lottie/ImageAssetBitmapManager;

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetBitmapManager:Lcom/airbnb/lottie/ImageAssetBitmapManager;

    return-object v0
.end method

.method private playAnimation(Z)V
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    if-nez v0, :cond_0

    const/4 p1, 0x1

    .line 312
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->playAnimationWhenCompositionAdded:Z

    const/4 p1, 0x0

    .line 313
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->reverseAnimationWhenCompositionAdded:Z

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 317
    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable;->progress:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float v0, v0, v1

    float-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 319
    :cond_1
    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private reverseAnimation(Z)V
    .locals 3

    .line 331
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 332
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->playAnimationWhenCompositionAdded:Z

    const/4 p1, 0x1

    .line 333
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->reverseAnimationWhenCompositionAdded:Z

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 337
    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable;->progress:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float v0, v0, v1

    float-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 339
    :cond_1
    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->reverse()V

    return-void
.end method

.method private updateBounds()V
    .locals 3

    .line 402
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    return-void

    .line 405
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 406
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    .line 405
    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/airbnb/lottie/LottieDrawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public addColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    const/4 v0, 0x0

    .line 237
    invoke-direct {p0, v0, v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->addColorFilterInternal(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public addColorFilterToContent(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p3    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 220
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieDrawable;->addColorFilterInternal(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public addColorFilterToLayer(Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p2    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 229
    invoke-direct {p0, p1, v0, p2}, Lcom/airbnb/lottie/LottieDrawable;->addColorFilterInternal(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public cancelAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 410
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->playAnimationWhenCompositionAdded:Z

    .line 411
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->reverseAnimationWhenCompositionAdded:Z

    .line 412
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public clearColorFilters()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->colorFilterData:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    .line 245
    invoke-direct {p0, v0, v0, v0}, Lcom/airbnb/lottie/LottieDrawable;->addColorFilterInternal(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 278
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 282
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 283
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/airbnb/lottie/CompositionLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public enableMergePathsForKitKatAndAbove(Z)V
    .locals 2

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 95
    sget-object p1, Lcom/airbnb/lottie/LottieDrawable;->TAG:Ljava/lang/String;

    const-string v0, "Merge paths are not supported pre-Kit Kat."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 98
    :cond_0
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->enableMergePaths:Z

    .line 99
    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz p1, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->buildCompositionLayer()V

    :cond_1
    return-void
.end method

.method enableMergePathsForKitKatAndAbove()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->enableMergePaths:Z

    return v0
.end method

.method public getAlpha()I
    .locals 1

    .line 205
    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    return v0
.end method

.method public getComposition()Lcom/airbnb/lottie/LottieComposition;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    return-object v0
.end method

.method getImageAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 441
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->getImageAssetBitmapManager()Lcom/airbnb/lottie/ImageAssetBitmapManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/ImageAssetBitmapManager;->bitmapForId(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 363
    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable;->progress:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 394
    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    return v0
.end method

.method public hasMasks()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/CompositionLayer;->hasMasks()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMatte()Z
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/CompositionLayer;->hasMatte()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 475
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 479
    :cond_0
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .line 194
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isLooping()Z
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loop(Z)V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public playAnimation()V
    .locals 6

    .line 303
    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable;->progress:F

    float-to-double v1, v0

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation(Z)V

    return-void
.end method

.method public recycleBitmaps()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetBitmapManager:Lcom/airbnb/lottie/ImageAssetBitmapManager;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Lcom/airbnb/lottie/ImageAssetBitmapManager;->recycleBitmaps()V

    :cond_0
    return-void
.end method

.method public removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public removeAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public resumeAnimation()V
    .locals 1

    const/4 v0, 0x1

    .line 307
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public resumeReverseAnimation()V
    .locals 1

    const/4 v0, 0x1

    .line 323
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->reverseAnimation(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public reverseAnimation()V
    .locals 6

    .line 327
    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable;->progress:F

    float-to-double v1, v0

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->reverseAnimation(Z)V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 483
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 487
    :cond_0
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 201
    iput p1, p0, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setComposition(Lcom/airbnb/lottie/LottieComposition;)Z
    .locals 2

    .line 138
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->clearComposition()V

    .line 151
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 152
    iget p1, p0, Lcom/airbnb/lottie/LottieDrawable;->speed:F

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setSpeed(F)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 153
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setScale(F)V

    .line 154
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->updateBounds()V

    .line 155
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->buildCompositionLayer()V

    .line 156
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->applyColorFilters()V

    .line 158
    iget p1, p0, Lcom/airbnb/lottie/LottieDrawable;->progress:F

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    .line 159
    iget-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->playAnimationWhenCompositionAdded:Z

    if-eqz p1, :cond_1

    .line 160
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieDrawable;->playAnimationWhenCompositionAdded:Z

    .line 161
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation()V

    .line 163
    :cond_1
    iget-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->reverseAnimationWhenCompositionAdded:Z

    if-eqz p1, :cond_2

    .line 164
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieDrawable;->reverseAnimationWhenCompositionAdded:Z

    .line 165
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->reverseAnimation()V

    :cond_2
    const/4 p1, 0x1

    return p1

    .line 139
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You or your view must set a Drawable.Callback before setting the composition. This gets done automatically when added to an ImageView. Either call ImageView.setImageDrawable() before setComposition() or call setCallback(yourView.getCallback()) first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setImageAssetDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V
    .locals 1

    .line 387
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetDelegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    .line 388
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetBitmapManager:Lcom/airbnb/lottie/ImageAssetBitmapManager;

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/ImageAssetBitmapManager;->setAssetDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V

    :cond_0
    return-void
.end method

.method public setImagesAssetsFolder(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 118
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetsFolder:Ljava/lang/String;

    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 356
    iput p1, p0, Lcom/airbnb/lottie/LottieDrawable;->progress:F

    .line 357
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/CompositionLayer;->setProgress(F)V

    :cond_0
    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 376
    iput p1, p0, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    .line 377
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->updateBounds()V

    return-void
.end method

.method public setSpeed(F)V
    .locals 4

    .line 343
    iput p1, p0, Lcom/airbnb/lottie/LottieDrawable;->speed:F

    const/4 v0, 0x2

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 350
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v0, :cond_1

    .line 351
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getDuration()J

    move-result-wide v2

    long-to-float v0, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr v0, p1

    float-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method systemAnimationsAreDisabled()V
    .locals 1

    const/4 v0, 0x1

    .line 287
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->systemAnimationsAreDisabled:Z

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 491
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 495
    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method
