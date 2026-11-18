.class public final Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;
.super Landroid/view/animation/Animation;
.source "AnimatorProxy.java"


# static fields
.field public static final NEEDS_PROXY:Z

.field private static final PROXIES:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAfter:Landroid/graphics/RectF;

.field private mAlpha:F

.field private final mBefore:Landroid/graphics/RectF;

.field private final mCamera:Landroid/graphics/Camera;

.field private mHasPivot:Z

.field private mPivotX:F

.field private mPivotY:F

.field private mRotationX:F

.field private mRotationY:F

.field private mRotationZ:F

.field private mScaleX:F

.field private mScaleY:F

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private mTranslationX:F

.field private mTranslationY:F

.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->NEEDS_PROXY:Z

    .line 27
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->PROXIES:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mCamera:Landroid/graphics/Camera;

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mBefore:Landroid/graphics/RectF;

    .line 31
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mAfter:Landroid/graphics/RectF;

    .line 32
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mTempMatrix:Landroid/graphics/Matrix;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 34
    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mAlpha:F

    .line 40
    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mScaleX:F

    .line 41
    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mScaleY:F

    const-wide/16 v0, 0x0

    .line 46
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->setDuration(J)V

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->setFillAfter(Z)V

    .line 48
    invoke-virtual {p1, p0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 49
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private computeRect(Landroid/graphics/RectF;Landroid/view/View;)V
    .locals 3

    .line 277
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 278
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    .line 281
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 283
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mTempMatrix:Landroid/graphics/Matrix;

    .line 284
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 285
    invoke-direct {p0, v0, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->transformMatrix(Landroid/graphics/Matrix;Landroid/view/View;)V

    .line 286
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 288
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 291
    iget p2, p1, Landroid/graphics/RectF;->right:F

    iget v0, p1, Landroid/graphics/RectF;->left:F

    cmpg-float p2, p2, v0

    if-gez p2, :cond_0

    .line 292
    iget p2, p1, Landroid/graphics/RectF;->right:F

    .line 293
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 294
    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 296
    :cond_0
    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    .line 297
    iget p2, p1, Landroid/graphics/RectF;->top:F

    .line 298
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 299
    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method private invalidateAfterUpdate()V
    .locals 7

    .line 262
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 263
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mAfter:Landroid/graphics/RectF;

    .line 268
    invoke-direct {p0, v1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->computeRect(Landroid/graphics/RectF;Landroid/view/View;)V

    .line 269
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mBefore:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 271
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    .line 272
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    .line 271
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->invalidate(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method private prepareForUpdate()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 257
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mBefore:Landroid/graphics/RectF;

    invoke-direct {p0, v1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->computeRect(Landroid/graphics/RectF;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private transformMatrix(Landroid/graphics/Matrix;Landroid/view/View;)V
    .locals 8

    .line 304
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 305
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    .line 306
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mHasPivot:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    .line 307
    iget v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mPivotX:F

    goto :goto_0

    :cond_0
    div-float v3, v0, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 308
    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mPivotY:F

    goto :goto_1

    :cond_1
    div-float v1, p2, v2

    .line 310
    :goto_1
    iget v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mRotationX:F

    .line 311
    iget v4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mRotationY:F

    .line 312
    iget v5, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mRotationZ:F

    const/4 v6, 0x0

    cmpl-float v7, v2, v6

    if-nez v7, :cond_2

    cmpl-float v7, v4, v6

    if-nez v7, :cond_2

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_3

    .line 314
    :cond_2
    iget-object v6, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mCamera:Landroid/graphics/Camera;

    .line 315
    invoke-virtual {v6}, Landroid/graphics/Camera;->save()V

    .line 316
    invoke-virtual {v6, v2}, Landroid/graphics/Camera;->rotateX(F)V

    .line 317
    invoke-virtual {v6, v4}, Landroid/graphics/Camera;->rotateY(F)V

    neg-float v2, v5

    .line 318
    invoke-virtual {v6, v2}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 319
    invoke-virtual {v6, p1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 320
    invoke-virtual {v6}, Landroid/graphics/Camera;->restore()V

    neg-float v2, v3

    neg-float v4, v1

    .line 321
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 322
    invoke-virtual {p1, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 325
    :cond_3
    iget v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mScaleX:F

    .line 326
    iget v4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mScaleY:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v6, v2, v5

    if-nez v6, :cond_4

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_5

    .line 328
    :cond_4
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    div-float/2addr v3, v0

    neg-float v3, v3

    mul-float v2, v2, v0

    sub-float/2addr v2, v0

    mul-float v3, v3, v2

    div-float/2addr v1, p2

    neg-float v0, v1

    mul-float v4, v4, p2

    sub-float/2addr v4, p2

    mul-float v0, v0, v4

    .line 331
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 334
    :cond_5
    iget p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mTranslationX:F

    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mTranslationY:F

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public static wrap(Landroid/view/View;)Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;
    .locals 2

    .line 61
    sget-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->PROXIES:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 64
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;-><init>(Landroid/view/View;)V

    .line 65
    sget-object v1, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->PROXIES:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 339
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 341
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mAlpha:F

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 342
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->transformMatrix(Landroid/graphics/Matrix;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .line 71
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mAlpha:F

    return v0
.end method

.method public getPivotX()F
    .locals 1

    .line 85
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mPivotX:F

    return v0
.end method

.method public getPivotY()F
    .locals 1

    .line 98
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mPivotY:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .line 111
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mRotationZ:F

    return v0
.end method

.method public getRotationX()F
    .locals 1

    .line 123
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mRotationX:F

    return v0
.end method

.method public getRotationY()F
    .locals 1

    .line 135
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mRotationY:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .line 147
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .line 159
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mScaleY:F

    return v0
.end method

.method public getScrollX()I
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 175
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 190
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    return v0
.end method

.method public getTranslationX()F
    .locals 1

    .line 201
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mTranslationX:F

    return v0
.end method

.method public getTranslationY()F
    .locals 1

    .line 213
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mTranslationY:F

    return v0
.end method

.method public getX()F
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 229
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mTranslationX:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getY()F
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 244
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mTranslationY:F

    add-float/2addr v0, v1

    return v0
.end method

.method public setAlpha(F)V
    .locals 1

    .line 75
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 76
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mAlpha:F

    .line 77
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setPivotX(F)V
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mHasPivot:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mPivotX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->prepareForUpdate()V

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mHasPivot:Z

    .line 92
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mPivotX:F

    .line 93
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->invalidateAfterUpdate()V

    :cond_1
    return-void
.end method

.method public setPivotY(F)V
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mHasPivot:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mPivotY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->prepareForUpdate()V

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mHasPivot:Z

    .line 105
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mPivotY:F

    .line 106
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->invalidateAfterUpdate()V

    :cond_1
    return-void
.end method

.method public setRotation(F)V
    .locals 1

    .line 115
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mRotationZ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->prepareForUpdate()V

    .line 117
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mRotationZ:F

    .line 118
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->invalidateAfterUpdate()V

    :cond_0
    return-void
.end method

.method public setRotationX(F)V
    .locals 1

    .line 127
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mRotationX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->prepareForUpdate()V

    .line 129
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mRotationX:F

    .line 130
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->invalidateAfterUpdate()V

    :cond_0
    return-void
.end method

.method public setRotationY(F)V
    .locals 1

    .line 139
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mRotationY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->prepareForUpdate()V

    .line 141
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mRotationY:F

    .line 142
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->invalidateAfterUpdate()V

    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    .line 151
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mScaleX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->prepareForUpdate()V

    .line 153
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mScaleX:F

    .line 154
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->invalidateAfterUpdate()V

    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    .line 163
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mScaleY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->prepareForUpdate()V

    .line 165
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mScaleY:F

    .line 166
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->invalidateAfterUpdate()V

    :cond_0
    return-void
.end method

.method public setScrollX(I)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public setScrollY(I)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public setTranslationX(F)V
    .locals 1

    .line 205
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mTranslationX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->prepareForUpdate()V

    .line 207
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mTranslationX:F

    .line 208
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->invalidateAfterUpdate()V

    :cond_0
    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    .line 217
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mTranslationY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->prepareForUpdate()V

    .line 219
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mTranslationY:F

    .line 220
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->invalidateAfterUpdate()V

    :cond_0
    return-void
.end method

.method public setX(F)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->setTranslationX(F)V

    :cond_0
    return-void
.end method

.method public setY(F)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/AnimatorProxy;->setTranslationY(F)V

    :cond_0
    return-void
.end method
