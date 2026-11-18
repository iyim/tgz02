.class public Lcom/taobao/uikit/extend/feature/view/TZoomImageView;
.super Lcom/taobao/uikit/extend/feature/view/TUrlImageView;
.source "TZoomImageView.java"


# static fields
.field private static final MAX_SCALE_X:I = 0x5

.field private static final MAX_SCALE_Y:I = 0x5

.field private static final TYPE_DRAG:I = 0x1

.field private static final TYPE_NONE:I = 0x0

.field private static final TYPE_ZOOM:I = 0x2


# instance fields
.field private mBottom:F

.field private mCurMatrix:Landroid/graphics/Matrix;

.field private mFirst:Z

.field private mIgnoreUpEvent:Z

.field private mLeft:F

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMidPoint:Landroid/graphics/PointF;

.field private mOriginalMatrix:Landroid/graphics/Matrix;

.field private mOriginalValues:[F

.field private mOverMaxScale:Z

.field private mPreMatrix:Landroid/graphics/Matrix;

.field private mRect:Landroid/graphics/Rect;

.field private mRight:F

.field private mScaleLarge:Z

.field private mScaleSmall:Z

.field private mScroller:Lcom/taobao/uikit/extend/feature/view/TZoomScroller;

.field private mStartDist:F

.field private mStartPoint:Landroid/graphics/PointF;

.field private mTop:F

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mType:I

    .line 22
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mStartPoint:Landroid/graphics/PointF;

    .line 23
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mMidPoint:Landroid/graphics/PointF;

    .line 26
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mOriginalMatrix:Landroid/graphics/Matrix;

    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 28
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mCurMatrix:Landroid/graphics/Matrix;

    .line 29
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mPreMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mFirst:Z

    .line 32
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mScaleSmall:Z

    .line 33
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mScaleLarge:Z

    .line 34
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mOverMaxScale:Z

    .line 46
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mIgnoreUpEvent:Z

    const/16 p1, 0x9

    .line 48
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mOriginalValues:[F

    .line 54
    invoke-direct {p0}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mType:I

    .line 22
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mStartPoint:Landroid/graphics/PointF;

    .line 23
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mMidPoint:Landroid/graphics/PointF;

    .line 26
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mOriginalMatrix:Landroid/graphics/Matrix;

    .line 27
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 28
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mCurMatrix:Landroid/graphics/Matrix;

    .line 29
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mPreMatrix:Landroid/graphics/Matrix;

    const/4 p2, 0x1

    .line 31
    iput-boolean p2, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mFirst:Z

    .line 32
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mScaleSmall:Z

    .line 33
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mScaleLarge:Z

    .line 34
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mOverMaxScale:Z

    .line 46
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mIgnoreUpEvent:Z

    const/16 p1, 0x9

    .line 48
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mOriginalValues:[F

    .line 59
    invoke-direct {p0}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mType:I

    .line 22
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mStartPoint:Landroid/graphics/PointF;

    .line 23
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mMidPoint:Landroid/graphics/PointF;

    .line 26
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mOriginalMatrix:Landroid/graphics/Matrix;

    .line 27
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 28
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mCurMatrix:Landroid/graphics/Matrix;

    .line 29
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mPreMatrix:Landroid/graphics/Matrix;

    const/4 p2, 0x1

    .line 31
    iput-boolean p2, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mFirst:Z

    .line 32
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mScaleSmall:Z

    .line 33
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mScaleLarge:Z

    .line 34
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mOverMaxScale:Z

    .line 46
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mIgnoreUpEvent:Z

    const/16 p1, 0x9

    .line 48
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mOriginalValues:[F

    .line 64
    invoke-direct {p0}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->init()V

    return-void
.end method

.method private distance(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v0, 0x1

    .line 248
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 249
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float v1, v1, v1

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 250
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private init()V
    .locals 2

    .line 68
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 69
    new-instance v0, Lcom/taobao/uikit/extend/feature/view/TZoomScroller;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1}, Lcom/taobao/uikit/extend/feature/view/TZoomScroller;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mScroller:Lcom/taobao/uikit/extend/feature/view/TZoomScroller;

    return-void
.end method

.method private midPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .locals 4

    const/4 v0, 0x1

    .line 254
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    .line 255
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr v0, p1

    div-float/2addr v0, v3

    .line 256
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method private startScroll(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .locals 10

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/16 v0, 0x9

    .line 277
    new-array v1, v0, [F

    .line 278
    new-array v0, v0, [F

    .line 279
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 280
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 p1, 0x2

    .line 282
    aget v3, v1, p1

    .line 283
    aget p1, v0, p1

    const/4 p2, 0x5

    .line 284
    aget v4, v1, p2

    .line 285
    aget p2, v0, p2

    const/4 v2, 0x0

    .line 286
    aget v5, v1, v2

    .line 287
    aget v0, v0, v2

    .line 289
    iget-object v2, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mScroller:Lcom/taobao/uikit/extend/feature/view/TZoomScroller;

    sub-float v6, p1, v3

    sub-float v7, p2, v4

    sub-float v8, v0, v5

    const/16 v9, 0x12c

    invoke-virtual/range {v2 .. v9}, Lcom/taobao/uikit/extend/feature/view/TZoomScroller;->startScroll(FFFFFFI)V

    .line 291
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 3

    .line 261
    invoke-super {p0}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;->computeScroll()V

    .line 262
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mScroller:Lcom/taobao/uikit/extend/feature/view/TZoomScroller;

    invoke-virtual {v0}, Lcom/taobao/uikit/extend/feature/view/TZoomScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    .line 263
    new-array v0, v0, [F

    .line 264
    iget-object v1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x2

    .line 265
    iget-object v2, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mScroller:Lcom/taobao/uikit/extend/feature/view/TZoomScroller;

    invoke-virtual {v2}, Lcom/taobao/uikit/extend/feature/view/TZoomScroller;->getCurrX()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 266
    iget-object v2, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mScroller:Lcom/taobao/uikit/extend/feature/view/TZoomScroller;

    invoke-virtual {v2}, Lcom/taobao/uikit/extend/feature/view/TZoomScroller;->getCurrY()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x0

    .line 267
    iget-object v2, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mScroller:Lcom/taobao/uikit/extend/feature/view/TZoomScroller;

    invoke-virtual {v2}, Lcom/taobao/uikit/extend/feature/view/TZoomScroller;->getCurrZ()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 268
    iget-object v2, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mScroller:Lcom/taobao/uikit/extend/feature/view/TZoomScroller;

    invoke-virtual {v2}, Lcom/taobao/uikit/extend/feature/view/TZoomScroller;->getCurrZ()F

    move-result v2

    aput v2, v0, v1

    .line 269
    iget-object v1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 270
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 271
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 75
    invoke-super/range {p0 .. p5}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    .line 76
    iput p4, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mMaxWidth:I

    sub-int/2addr p5, p3

    .line 77
    iput p5, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mMaxHeight:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 93
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 94
    invoke-super {p0, p1}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 97
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x9

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_18

    if-eq v0, v5, :cond_13

    const/high16 v7, 0x41200000    # 10.0f

    if-eq v0, v4, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_14

    goto/16 :goto_8

    .line 209
    :cond_1
    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->distance(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mStartDist:F

    .line 210
    iget v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mStartDist:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_1a

    .line 211
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mCurMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 212
    iput v4, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mType:I

    .line 213
    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->midPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mMidPoint:Landroid/graphics/PointF;

    goto/16 :goto_8

    .line 122
    :cond_2
    iget v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mType:I

    if-nez v0, :cond_4

    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mStartPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mStartPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    .line 125
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v7

    if-gtz v0, :cond_3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v7

    if-lez v0, :cond_1a

    .line 126
    :cond_3
    iput v5, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mType:I

    goto/16 :goto_8

    :cond_4
    if-ne v0, v5, :cond_d

    .line 128
    iget-boolean v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mScaleLarge:Z

    if-eqz v0, :cond_d

    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mStartPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mStartPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_6

    .line 133
    iget v3, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mLeft:F

    cmpl-float v3, v3, v2

    if-ltz v3, :cond_5

    .line 134
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 137
    :cond_5
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 138
    iget v3, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mLeft:F

    add-float v4, v3, v0

    cmpl-float v4, v4, v2

    if-lez v4, :cond_8

    neg-float v0, v3

    goto :goto_1

    .line 143
    :cond_6
    iget v3, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mRight:F

    iget v4, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mMaxWidth:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_7

    .line 144
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 147
    :cond_7
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 148
    iget v3, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mRight:F

    add-float v4, v3, v0

    iget v5, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mMaxWidth:I

    int-to-float v6, v5

    cmpg-float v4, v4, v6

    if-gez v4, :cond_8

    int-to-float v0, v5

    sub-float/2addr v0, v3

    :cond_8
    :goto_1
    cmpl-float v3, v1, v2

    if-lez v3, :cond_a

    .line 155
    iget v3, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mTop:F

    cmpl-float v4, v3, v2

    if-lez v4, :cond_9

    goto :goto_2

    :cond_9
    add-float v4, v3, v1

    cmpl-float v2, v4, v2

    if-lez v2, :cond_c

    neg-float v1, v3

    goto :goto_3

    .line 164
    :cond_a
    iget v3, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mBottom:F

    iget v4, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mMaxHeight:I

    int-to-float v5, v4

    cmpg-float v5, v3, v5

    if-gez v5, :cond_b

    :goto_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_b
    add-float v2, v3, v1

    int-to-float v5, v4

    cmpg-float v2, v2, v5

    if-gez v2, :cond_c

    int-to-float v1, v4

    sub-float/2addr v1, v3

    .line 172
    :cond_c
    :goto_3
    iget-object v2, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mCurMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 173
    iget-object v2, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 174
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 175
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_8

    .line 177
    :cond_d
    iget v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mType:I

    if-ne v0, v4, :cond_1a

    .line 178
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 179
    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->distance(Landroid/view/MotionEvent;)F

    move-result v0

    cmpl-float v2, v0, v7

    if-lez v2, :cond_12

    .line 181
    iget-object v2, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mCurMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 182
    iget v2, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mStartDist:F

    div-float/2addr v0, v2

    .line 183
    iget-object v2, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mMidPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mMidPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v0, v0, v4, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 184
    new-array v0, v1, [F

    .line 185
    iget-object v1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 186
    aget v1, v0, v6

    iget-object v2, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mOriginalValues:[F

    aget v4, v2, v6

    div-float/2addr v1, v4

    float-to-double v7, v1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v7, v9

    if-ltz v1, :cond_f

    aget v1, v0, v3

    aget v2, v2, v3

    div-float/2addr v1, v2

    float-to-double v1, v1

    cmpg-double v4, v1, v9

    if-gez v4, :cond_e

    goto :goto_4

    .line 191
    :cond_e
    iput-boolean v6, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mScaleSmall:Z

    .line 192
    iput-boolean v5, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mScaleLarge:Z

    goto :goto_5

    .line 188
    :cond_f
    :goto_4
    iput-boolean v5, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mScaleSmall:Z

    .line 189
    iput-boolean v6, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mScaleLarge:Z

    .line 195
    :goto_5
    aget v1, v0, v6

    iget-object v2, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mOriginalValues:[F

    aget v4, v2, v6

    div-float/2addr v1, v4

    const/high16 v4, 0x40a00000    # 5.0f

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_11

    aget v0, v0, v3

    aget v1, v2, v3

    div-float/2addr v0, v1

    cmpl-float v0, v0, v4

    if-lez v0, :cond_10

    goto :goto_6

    .line 200
    :cond_10
    iput-boolean v6, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mOverMaxScale:Z

    goto :goto_7

    .line 197
    :cond_11
    :goto_6
    iput-boolean v5, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mOverMaxScale:Z

    .line 198
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mPreMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mCurMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 203
    :cond_12
    :goto_7
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 204
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_8

    .line 217
    :cond_13
    iget-boolean v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mIgnoreUpEvent:Z

    if-eqz v0, :cond_14

    .line 218
    iput-boolean v6, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mIgnoreUpEvent:Z

    return v5

    .line 222
    :cond_14
    iget v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mType:I

    if-ne v0, v5, :cond_15

    .line 223
    iput v6, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mType:I

    return v5

    :cond_15
    if-ne v0, v4, :cond_1a

    .line 226
    iput v6, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mType:I

    .line 227
    iput-boolean v5, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mIgnoreUpEvent:Z

    .line 228
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 229
    iget-boolean p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mScaleSmall:Z

    if-eqz p1, :cond_16

    .line 230
    iput-boolean v6, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mScaleSmall:Z

    .line 231
    iput-boolean v6, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mScaleLarge:Z

    .line 232
    iget-object p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mOriginalMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->startScroll(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    .line 234
    :cond_16
    iget-boolean p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mOverMaxScale:Z

    if-eqz p1, :cond_17

    .line 235
    iput-boolean v6, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mOverMaxScale:Z

    .line 236
    iget-object p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mPreMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->startScroll(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    :cond_17
    return v5

    .line 99
    :cond_18
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mStartPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 100
    iget-boolean v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mFirst:Z

    if-eqz v0, :cond_19

    .line 101
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mOriginalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 102
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 103
    iput-boolean v6, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mFirst:Z

    .line 104
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mOriginalMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mOriginalValues:[F

    invoke-virtual {v0, v7}, Landroid/graphics/Matrix;->getValues([F)V

    .line 106
    :cond_19
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mCurMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v7}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 107
    iput v6, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mType:I

    .line 109
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mRect:Landroid/graphics/Rect;

    .line 110
    new-array v0, v1, [F

    .line 111
    iget-object v1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mCurMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 112
    aget v1, v0, v4

    iput v1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mLeft:F

    .line 113
    aget v1, v0, v2

    iput v1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mTop:F

    .line 114
    iget v1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mLeft:F

    iget-object v2, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    aget v4, v0, v6

    mul-float v2, v2, v4

    add-float/2addr v1, v2

    iput v1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mRight:F

    .line 115
    iget v1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mTop:F

    iget-object v2, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    aget v0, v0, v3

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mBottom:F

    .line 117
    iget-boolean v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mScaleLarge:Z

    if-eqz v0, :cond_1a

    .line 118
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 244
    :cond_1a
    :goto_8
    invoke-super {p0, p1}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mFirst:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mFirst:Z

    .line 84
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 85
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mPreMatrix:Landroid/graphics/Matrix;

    .line 86
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->mCurMatrix:Landroid/graphics/Matrix;

    .line 87
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method
