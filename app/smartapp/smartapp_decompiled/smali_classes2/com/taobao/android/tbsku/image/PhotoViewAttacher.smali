.class public Lcom/taobao/android/tbsku/image/PhotoViewAttacher;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/tbsku/image/PhotoViewAttacher$FlingRunnable;,
        Lcom/taobao/android/tbsku/image/PhotoViewAttacher$AnimatedZoomRunnable;
    }
.end annotation


# static fields
.field private static DEFAULT_MAX_SCALE:F = 3.0f

.field private static DEFAULT_MID_SCALE:F = 1.75f

.field private static DEFAULT_MIN_SCALE:F = 1.0f

.field private static DEFAULT_ZOOM_DURATION:I = 0xc8

.field private static final HORIZONTAL_EDGE_BOTH:I = 0x2

.field private static final HORIZONTAL_EDGE_LEFT:I = 0x0

.field private static final HORIZONTAL_EDGE_NONE:I = -0x1

.field private static final HORIZONTAL_EDGE_RIGHT:I = 0x1

.field private static SINGLE_TOUCH:I = 0x1

.field private static final VERTICAL_EDGE_BOTH:I = 0x2

.field private static final VERTICAL_EDGE_BOTTOM:I = 0x1

.field private static final VERTICAL_EDGE_NONE:I = -0x1

.field private static final VERTICAL_EDGE_TOP:I


# instance fields
.field private mAllowParentInterceptOnEdge:Z

.field private final mBaseMatrix:Landroid/graphics/Matrix;

.field private mBaseRotation:F

.field private mBlockParentIntercept:Z

.field private mCurrentFlingRunnable:Lcom/taobao/android/tbsku/image/PhotoViewAttacher$FlingRunnable;

.field private final mDisplayRect:Landroid/graphics/RectF;

.field private final mDrawMatrix:Landroid/graphics/Matrix;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHorizontalScrollEdge:I

.field private mImageView:Landroid/widget/ImageView;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMatrixChangeListener:Lcom/taobao/android/tbsku/image/OnMatrixChangedListener;

.field private final mMatrixValues:[F

.field private mMaxScale:F

.field private mMidScale:F

.field private mMinScale:F

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnViewDragListener:Lcom/taobao/android/tbsku/image/OnViewDragListener;

.field private mOutsidePhotoTapListener:Lcom/taobao/android/tbsku/image/OnOutsidePhotoTapListener;

.field private mPhotoTapListener:Lcom/taobao/android/tbsku/image/OnPhotoTapListener;

.field private mScaleChangeListener:Lcom/taobao/android/tbsku/image/OnScaleChangedListener;

.field private mScaleDragDetector:Lcom/taobao/android/tbsku/image/CustomGestureDetector;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mSingleFlingListener:Lcom/taobao/android/tbsku/image/OnSingleFlingListener;

.field private final mSuppMatrix:Landroid/graphics/Matrix;

.field private mVerticalScrollEdge:I

.field private mViewTapListener:Lcom/taobao/android/tbsku/image/OnViewTapListener;

.field private mZoomDuration:I

.field private mZoomEnabled:Z

.field private onGestureListener:Lcom/taobao/android/tbsku/image/OnGestureListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 3

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 58
    sget v0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->DEFAULT_ZOOM_DURATION:I

    iput v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mZoomDuration:I

    .line 59
    sget v0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->DEFAULT_MIN_SCALE:F

    iput v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mMinScale:F

    .line 60
    sget v0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->DEFAULT_MID_SCALE:F

    iput v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mMidScale:F

    .line 61
    sget v0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->DEFAULT_MAX_SCALE:F

    iput v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mMaxScale:F

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    const/4 v1, 0x0

    .line 64
    iput-boolean v1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mBlockParentIntercept:Z

    .line 73
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 74
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 75
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 76
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    const/16 v1, 0x9

    .line 77
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mMatrixValues:[F

    const/4 v1, 0x2

    .line 91
    iput v1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mHorizontalScrollEdge:I

    .line 92
    iput v1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mVerticalScrollEdge:I

    .line 95
    iput-boolean v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mZoomEnabled:Z

    .line 96
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 98
    new-instance v0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher$1;

    invoke-direct {v0, p0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher$1;-><init>(Lcom/taobao/android/tbsku/image/PhotoViewAttacher;)V

    iput-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->onGestureListener:Lcom/taobao/android/tbsku/image/OnGestureListener;

    .line 158
    iput-object p1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    .line 159
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 160
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 161
    invoke-virtual {p1}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 164
    iput v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mBaseRotation:F

    .line 166
    new-instance v0, Lcom/taobao/android/tbsku/image/CustomGestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->onGestureListener:Lcom/taobao/android/tbsku/image/OnGestureListener;

    invoke-direct {v0, v1, v2}, Lcom/taobao/android/tbsku/image/CustomGestureDetector;-><init>(Landroid/content/Context;Lcom/taobao/android/tbsku/image/OnGestureListener;)V

    iput-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mScaleDragDetector:Lcom/taobao/android/tbsku/image/CustomGestureDetector;

    .line 167
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/taobao/android/tbsku/image/PhotoViewAttacher$2;

    invoke-direct {v1, p0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher$2;-><init>(Lcom/taobao/android/tbsku/image/PhotoViewAttacher;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    .line 193
    iget-object p1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher$3;

    invoke-direct {v0, p0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher$3;-><init>(Lcom/taobao/android/tbsku/image/PhotoViewAttacher;)V

    invoke-virtual {p1, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/android/tbsku/image/PhotoViewAttacher;)Lcom/taobao/android/tbsku/image/CustomGestureDetector;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mScaleDragDetector:Lcom/taobao/android/tbsku/image/CustomGestureDetector;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/android/tbsku/image/PhotoViewAttacher;)Lcom/taobao/android/tbsku/image/OnViewDragListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mOnViewDragListener:Lcom/taobao/android/tbsku/image/OnViewDragListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/taobao/android/tbsku/image/PhotoViewAttacher;Landroid/widget/ImageView;)I
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/taobao/android/tbsku/image/PhotoViewAttacher;Landroid/widget/ImageView;)I
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/taobao/android/tbsku/image/PhotoViewAttacher;)F
    .locals 0

    .line 39
    iget p0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mMaxScale:F

    return p0
.end method

.method static synthetic access$1300(Lcom/taobao/android/tbsku/image/PhotoViewAttacher;)Lcom/taobao/android/tbsku/image/OnScaleChangedListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mScaleChangeListener:Lcom/taobao/android/tbsku/image/OnScaleChangedListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/taobao/android/tbsku/image/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/taobao/android/tbsku/image/PhotoViewAttacher;)Lcom/taobao/android/tbsku/image/OnSingleFlingListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mSingleFlingListener:Lcom/taobao/android/tbsku/image/OnSingleFlingListener;

    return-object p0
.end method

.method static synthetic access$1600()F
    .locals 1

    .line 39
    sget v0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->DEFAULT_MIN_SCALE:F

    return v0
.end method

.method static synthetic access$1700()I
    .locals 1

    .line 39
    sget v0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->SINGLE_TOUCH:I

    return v0
.end method

.method static synthetic access$1800(Lcom/taobao/android/tbsku/image/PhotoViewAttacher;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/taobao/android/tbsku/image/PhotoViewAttacher;)Lcom/taobao/android/tbsku/image/OnViewTapListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mViewTapListener:Lcom/taobao/android/tbsku/image/OnViewTapListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/android/tbsku/image/PhotoViewAttacher;)Landroid/graphics/Matrix;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/taobao/android/tbsku/image/PhotoViewAttacher;)Lcom/taobao/android/tbsku/image/OnPhotoTapListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mPhotoTapListener:Lcom/taobao/android/tbsku/image/OnPhotoTapListener;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/taobao/android/tbsku/image/PhotoViewAttacher;)Lcom/taobao/android/tbsku/image/OnOutsidePhotoTapListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mOutsidePhotoTapListener:Lcom/taobao/android/tbsku/image/OnOutsidePhotoTapListener;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/taobao/android/tbsku/image/PhotoViewAttacher;)Lcom/taobao/android/tbsku/image/OnGestureListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->onGestureListener:Lcom/taobao/android/tbsku/image/OnGestureListener;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/taobao/android/tbsku/image/PhotoViewAttacher;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mZoomDuration:I

    return p0
.end method

.method static synthetic access$2400(Lcom/taobao/android/tbsku/image/PhotoViewAttacher;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$300(Lcom/taobao/android/tbsku/image/PhotoViewAttacher;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->checkAndDisplayMatrix()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/taobao/android/tbsku/image/PhotoViewAttacher;)Landroid/widget/ImageView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/taobao/android/tbsku/image/PhotoViewAttacher;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    return p0
.end method

.method static synthetic access$600(Lcom/taobao/android/tbsku/image/PhotoViewAttacher;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mBlockParentIntercept:Z

    return p0
.end method

.method static synthetic access$700(Lcom/taobao/android/tbsku/image/PhotoViewAttacher;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mHorizontalScrollEdge:I

    return p0
.end method

.method static synthetic access$800(Lcom/taobao/android/tbsku/image/PhotoViewAttacher;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mVerticalScrollEdge:I

    return p0
.end method

.method static synthetic access$900(Lcom/taobao/android/tbsku/image/PhotoViewAttacher;)Lcom/taobao/android/tbsku/image/PhotoViewAttacher$FlingRunnable;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/taobao/android/tbsku/image/PhotoViewAttacher$FlingRunnable;

    return-object p0
.end method

.method static synthetic access$902(Lcom/taobao/android/tbsku/image/PhotoViewAttacher;Lcom/taobao/android/tbsku/image/PhotoViewAttacher$FlingRunnable;)Lcom/taobao/android/tbsku/image/PhotoViewAttacher$FlingRunnable;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/taobao/android/tbsku/image/PhotoViewAttacher$FlingRunnable;

    return-object p1
.end method

.method private cancelFling()V
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/taobao/android/tbsku/image/PhotoViewAttacher$FlingRunnable;

    if-eqz v0, :cond_0

    .line 717
    invoke-virtual {v0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher$FlingRunnable;->cancelFling()V

    const/4 v0, 0x0

    .line 718
    iput-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/taobao/android/tbsku/image/PhotoViewAttacher$FlingRunnable;

    :cond_0
    return-void
.end method

.method private checkAndDisplayMatrix()V
    .locals 1

    .line 569
    invoke-direct {p0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->checkMatrixBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    invoke-direct {p0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private checkMatrixBounds()Z
    .locals 13

    .line 650
    invoke-direct {p0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 654
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 656
    iget-object v4, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v4}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, -0x1

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    cmpg-float v11, v2, v4

    if-gtz v11, :cond_3

    .line 658
    sget-object v11, Lcom/taobao/android/tbsku/image/PhotoViewAttacher$4;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v12, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v9, :cond_2

    if-eq v11, v7, :cond_1

    sub-float/2addr v4, v2

    div-float/2addr v4, v6

    .line 666
    iget v2, v0, Landroid/graphics/RectF;->top:F

    :goto_0
    sub-float/2addr v4, v2

    goto :goto_1

    :cond_1
    sub-float/2addr v4, v2

    .line 663
    iget v2, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 660
    :cond_2
    iget v2, v0, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    move v4, v2

    .line 669
    :goto_1
    iput v9, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mVerticalScrollEdge:I

    move v2, v4

    goto :goto_2

    .line 670
    :cond_3
    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v10

    if-lez v2, :cond_4

    .line 671
    iput v1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mVerticalScrollEdge:I

    .line 672
    iget v2, v0, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    goto :goto_2

    .line 673
    :cond_4
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_5

    .line 674
    iput v8, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mVerticalScrollEdge:I

    .line 675
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v4, v2

    goto :goto_2

    .line 677
    :cond_5
    iput v5, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mVerticalScrollEdge:I

    const/4 v2, 0x0

    .line 679
    :goto_2
    iget-object v4, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v4}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v11, v3, v4

    if-gtz v11, :cond_8

    .line 681
    sget-object v1, Lcom/taobao/android/tbsku/image/PhotoViewAttacher$4;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v5, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v5

    aget v1, v1, v5

    if-eq v1, v9, :cond_7

    if-eq v1, v7, :cond_6

    sub-float/2addr v4, v3

    div-float/2addr v4, v6

    .line 689
    iget v0, v0, Landroid/graphics/RectF;->left:F

    :goto_3
    sub-float/2addr v4, v0

    move v10, v4

    goto :goto_4

    :cond_6
    sub-float/2addr v4, v3

    .line 686
    iget v0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_3

    .line 683
    :cond_7
    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    move v10, v0

    .line 692
    :goto_4
    iput v9, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mHorizontalScrollEdge:I

    goto :goto_5

    .line 693
    :cond_8
    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v10

    if-lez v3, :cond_9

    .line 694
    iput v1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mHorizontalScrollEdge:I

    .line 695
    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v10, v0

    goto :goto_5

    .line 696
    :cond_9
    iget v1, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_a

    .line 697
    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float v10, v4, v0

    .line 698
    iput v8, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mHorizontalScrollEdge:I

    goto :goto_5

    .line 700
    :cond_a
    iput v5, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mHorizontalScrollEdge:I

    .line 703
    :goto_5
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v10, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return v8
.end method

.method private getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 4

    .line 581
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 584
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    .line 583
    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 585
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 586
    iget-object p1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getDrawMatrix()Landroid/graphics/Matrix;
    .locals 2

    .line 519
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 520
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 521
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private getImageViewHeight(Landroid/widget/ImageView;)I
    .locals 2

    .line 712
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private getImageViewWidth(Landroid/widget/ImageView;)I
    .locals 2

    .line 708
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private getValue(Landroid/graphics/Matrix;I)F
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 541
    iget-object p1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mMatrixValues:[F

    aget p1, p1, p2

    return p1
.end method

.method private resetMatrix()V
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 549
    iget v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mBaseRotation:F

    invoke-virtual {p0, v0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->setRotationBy(F)V

    .line 550
    invoke-direct {p0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 551
    invoke-direct {p0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->checkMatrixBounds()Z

    return-void
.end method

.method private setImageViewMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 557
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mMatrixChangeListener:Lcom/taobao/android/tbsku/image/OnMatrixChangedListener;

    if-eqz v0, :cond_0

    .line 558
    invoke-direct {p0, p1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 560
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mMatrixChangeListener:Lcom/taobao/android/tbsku/image/OnMatrixChangedListener;

    invoke-interface {v0, p1}, Lcom/taobao/android/tbsku/image/OnMatrixChangedListener;->onMatrixChanged(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method private updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v0

    int-to-float v0, v0

    .line 601
    iget-object v1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v1

    int-to-float v1, v1

    .line 602
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 603
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 604
    iget-object v3, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    int-to-float v2, v2

    div-float v3, v0, v2

    int-to-float p1, p1

    div-float v4, v1, p1

    .line 607
    iget-object v5, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_1

    .line 608
    iget-object v3, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 611
    :cond_1
    iget-object v5, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_2

    .line 612
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 613
    iget-object v4, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 614
    iget-object v4, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float p1, p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 617
    :cond_2
    iget-object v5, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    .line 618
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 619
    iget-object v4, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 620
    iget-object v4, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float p1, p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 624
    :cond_3
    new-instance v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 625
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 626
    iget v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mBaseRotation:F

    float-to-int v0, v0

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_4

    .line 627
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v4, v4, p1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 629
    :cond_4
    sget-object p1, Lcom/taobao/android/tbsku/image/PhotoViewAttacher$4;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    goto :goto_0

    .line 640
    :cond_5
    iget-object p1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 637
    :cond_6
    iget-object p1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 634
    :cond_7
    iget-object p1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 631
    :cond_8
    iget-object p1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 646
    :goto_0
    invoke-direct {p0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->resetMatrix()V

    return-void
.end method


# virtual methods
.method public getDisplayMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    .line 508
    invoke-direct {p0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .line 269
    invoke-direct {p0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 270
    invoke-direct {p0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getMaximumScale()F
    .locals 1

    .line 311
    iget v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mMaxScale:F

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .line 307
    iget v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mMidScale:F

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .line 303
    iget v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mMinScale:F

    return v0
.end method

.method public getScale()F
    .locals 6

    .line 315
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x3

    .line 316
    invoke-direct {p0, v1, v4}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    move-result v1

    float-to-double v4, v1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 315
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getSuppMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public isZoomEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 265
    iget-boolean v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mZoomEnabled:Z

    return v0
.end method

.method public isZoomable()Z
    .locals 1

    .line 484
    iget-boolean v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mZoomEnabled:Z

    return v0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-eq p5, p9, :cond_1

    .line 328
    :cond_0
    iget-object p1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .line 335
    iget-boolean v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mZoomEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/taobao/android/tbsku/image/Util;->hasDrawable(Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 336
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_1

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v3, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mMinScale:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 353
    invoke-virtual {p0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 355
    new-instance v9, Lcom/taobao/android/tbsku/image/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->getScale()F

    move-result v5

    iget v6, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mMinScale:F

    .line 356
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcom/taobao/android/tbsku/image/PhotoViewAttacher;FFFF)V

    .line 355
    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 359
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v3, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mMaxScale:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    .line 360
    invoke-virtual {p0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 362
    new-instance v9, Lcom/taobao/android/tbsku/image/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->getScale()F

    move-result v5

    iget v6, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mMaxScale:F

    .line 363
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcom/taobao/android/tbsku/image/PhotoViewAttacher;FFFF)V

    .line 362
    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    const/4 p1, 0x1

    goto :goto_2

    .line 338
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 342
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 346
    :cond_3
    invoke-direct {p0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->cancelFling()V

    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 370
    :goto_2
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mScaleDragDetector:Lcom/taobao/android/tbsku/image/CustomGestureDetector;

    if-eqz v0, :cond_8

    .line 371
    invoke-virtual {v0}, Lcom/taobao/android/tbsku/image/CustomGestureDetector;->isScaling()Z

    move-result p1

    .line 372
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mScaleDragDetector:Lcom/taobao/android/tbsku/image/CustomGestureDetector;

    invoke-virtual {v0}, Lcom/taobao/android/tbsku/image/CustomGestureDetector;->isDragging()Z

    move-result v0

    .line 373
    iget-object v3, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mScaleDragDetector:Lcom/taobao/android/tbsku/image/CustomGestureDetector;

    invoke-virtual {v3, p2}, Lcom/taobao/android/tbsku/image/CustomGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez p1, :cond_5

    .line 374
    iget-object p1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mScaleDragDetector:Lcom/taobao/android/tbsku/image/CustomGestureDetector;

    invoke-virtual {p1}, Lcom/taobao/android/tbsku/image/CustomGestureDetector;->isScaling()Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    if-nez v0, :cond_6

    .line 375
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mScaleDragDetector:Lcom/taobao/android/tbsku/image/CustomGestureDetector;

    invoke-virtual {v0}, Lcom/taobao/android/tbsku/image/CustomGestureDetector;->isDragging()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    if-eqz p1, :cond_7

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    .line 376
    :cond_7
    iput-boolean v1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mBlockParentIntercept:Z

    move v1, v3

    goto :goto_5

    :cond_8
    move v1, p1

    .line 379
    :goto_5
    iget-object p1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz p1, :cond_9

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 v1, 0x1

    :cond_9
    return v1
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 0

    .line 388
    iput-boolean p1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    return-void
.end method

.method public setBaseRotation(F)V
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    .line 286
    iput p1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mBaseRotation:F

    .line 287
    invoke-virtual {p0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->update()V

    .line 288
    iget p1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mBaseRotation:F

    invoke-virtual {p0, p1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->setRotationBy(F)V

    .line 289
    invoke-direct {p0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method public setDisplayMatrix(Landroid/graphics/Matrix;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 277
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 281
    invoke-direct {p0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->checkAndDisplayMatrix()V

    const/4 p1, 0x1

    return p1

    .line 275
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Matrix cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaximumScale(F)V
    .locals 2

    .line 402
    iget v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mMidScale:F

    invoke-static {v0, v1, p1}, Lcom/taobao/android/tbsku/image/Util;->checkZoomLevels(FFF)V

    .line 403
    iput p1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mMaxScale:F

    return-void
.end method

.method public setMediumScale(F)V
    .locals 2

    .line 397
    iget v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mMaxScale:F

    invoke-static {v0, p1, v1}, Lcom/taobao/android/tbsku/image/Util;->checkZoomLevels(FFF)V

    .line 398
    iput p1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mMidScale:F

    return-void
.end method

.method public setMinimumScale(F)V
    .locals 2

    .line 392
    iget v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mMidScale:F

    iget v1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mMaxScale:F

    invoke-static {p1, v0, v1}, Lcom/taobao/android/tbsku/image/Util;->checkZoomLevels(FFF)V

    .line 393
    iput p1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mMinScale:F

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/taobao/android/tbsku/image/OnMatrixChangedListener;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mMatrixChangeListener:Lcom/taobao/android/tbsku/image/OnMatrixChangedListener;

    return-void
.end method

.method public setOnOutsidePhotoTapListener(Lcom/taobao/android/tbsku/image/OnOutsidePhotoTapListener;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mOutsidePhotoTapListener:Lcom/taobao/android/tbsku/image/OnOutsidePhotoTapListener;

    return-void
.end method

.method public setOnPhotoTapListener(Lcom/taobao/android/tbsku/image/OnPhotoTapListener;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mPhotoTapListener:Lcom/taobao/android/tbsku/image/OnPhotoTapListener;

    return-void
.end method

.method public setOnScaleChangeListener(Lcom/taobao/android/tbsku/image/OnScaleChangedListener;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mScaleChangeListener:Lcom/taobao/android/tbsku/image/OnScaleChangedListener;

    return-void
.end method

.method public setOnSingleFlingListener(Lcom/taobao/android/tbsku/image/OnSingleFlingListener;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mSingleFlingListener:Lcom/taobao/android/tbsku/image/OnSingleFlingListener;

    return-void
.end method

.method public setOnViewDragListener(Lcom/taobao/android/tbsku/image/OnViewDragListener;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mOnViewDragListener:Lcom/taobao/android/tbsku/image/OnViewDragListener;

    return-void
.end method

.method public setOnViewTapListener(Lcom/taobao/android/tbsku/image/OnViewTapListener;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mViewTapListener:Lcom/taobao/android/tbsku/image/OnViewTapListener;

    return-void
.end method

.method public setRotationBy(F)V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 299
    invoke-direct {p0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method public setRotationTo(F)V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 294
    invoke-direct {p0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method public setScale(F)V
    .locals 1

    const/4 v0, 0x0

    .line 442
    invoke-virtual {p0, p1, v0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->setScale(FZ)V

    return-void
.end method

.method public setScale(FFFZ)V
    .locals 7

    .line 455
    iget v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mMinScale:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mMaxScale:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    if-eqz p4, :cond_0

    .line 459
    iget-object p4, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    new-instance v6, Lcom/taobao/android/tbsku/image/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->getScale()F

    move-result v2

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcom/taobao/android/tbsku/image/PhotoViewAttacher;FFFF)V

    invoke-virtual {p4, v6}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 462
    :cond_0
    iget-object p4, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p4, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 463
    invoke-direct {p0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->checkAndDisplayMatrix()V

    :goto_0
    return-void

    .line 456
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Scale must be within the range of minScale and maxScale"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setScale(FZ)V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    .line 447
    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    .line 448
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 446
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->setScale(FFFZ)V

    return-void
.end method

.method public setScaleLevels(FFF)V
    .locals 0

    .line 407
    invoke-static {p1, p2, p3}, Lcom/taobao/android/tbsku/image/Util;->checkZoomLevels(FFF)V

    .line 408
    iput p1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mMinScale:F

    .line 409
    iput p2, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mMidScale:F

    .line 410
    iput p3, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mMaxScale:F

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 477
    invoke-static {p1}, Lcom/taobao/android/tbsku/image/Util;->isSupportedScaleType(Landroid/widget/ImageView$ScaleType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 478
    iput-object p1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 479
    invoke-virtual {p0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->update()V

    :cond_0
    return-void
.end method

.method public setZoomInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setZoomTransitionDuration(I)V
    .locals 0

    .line 529
    iput p1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mZoomDuration:I

    return-void
.end method

.method public setZoomable(Z)V
    .locals 0

    .line 488
    iput-boolean p1, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mZoomEnabled:Z

    .line 489
    invoke-virtual {p0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->update()V

    return-void
.end method

.method public update()V
    .locals 1

    .line 493
    iget-boolean v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 498
    :cond_0
    invoke-direct {p0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->resetMatrix()V

    :goto_0
    return-void
.end method
