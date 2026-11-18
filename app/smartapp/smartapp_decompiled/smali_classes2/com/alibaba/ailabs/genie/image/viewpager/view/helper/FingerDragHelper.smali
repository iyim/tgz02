.class public Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;
.super Landroid/widget/LinearLayout;
.source "FingerDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$onAlphaChangedListener;
    }
.end annotation


# static fields
.field private static final DURATION:J = 0xc8L

.field private static final MAX_EXIT_Y:I = 0x1f4

.field private static MAX_TRANSLATE_Y:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "FingerDragHelper"


# instance fields
.field private fadeIn:I

.field private fadeOut:I

.field private imageGif:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;

.field private imageView:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

.field private isAnimate:Z

.field private mDownY:F

.field private mLastTranslationY:F

.field private mOnAlphaChangedListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$onAlphaChangedListener;

.field private mTouchslop:I

.field private mTranslationY:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->isAnimate:Z

    .line 40
    sget p1, Lcom/alibaba/ailabs/genie/image/viewpager/R$anim;->fade_in_150:I

    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->fadeIn:I

    .line 41
    sget p1, Lcom/alibaba/ailabs/genie/image/viewpager/R$anim;->fade_out_150:I

    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->fadeOut:I

    .line 55
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->initViews()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->reset()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->fadeIn:I

    return p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->fadeOut:I

    return p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->isAnimate:Z

    return p0
.end method

.method static synthetic access$302(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->isAnimate:Z

    return p1
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;)F
    .locals 0

    .line 28
    iget p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->mTranslationY:F

    return p0
.end method

.method static synthetic access$402(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;F)F
    .locals 0

    .line 28
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->mTranslationY:F

    return p1
.end method

.method static synthetic access$502(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;F)F
    .locals 0

    .line 28
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->mLastTranslationY:F

    return p1
.end method

.method private initViews()V
    .locals 1

    .line 59
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->mTouchslop:I

    return-void
.end method

.method private onActionUp()V
    .locals 2

    .line 132
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isEnableUpDragClose()Z

    move-result v0

    const/high16 v1, 0x43fa0000    # 500.0f

    if-eqz v0, :cond_1

    .line 134
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->mTranslationY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 135
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->mTranslationY:F

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->exitWithTranslation(F)V

    goto :goto_0

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->resetCallBackAnimation()V

    goto :goto_0

    .line 140
    :cond_1
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->mTranslationY:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 141
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->exitWithTranslation(F)V

    goto :goto_0

    .line 143
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->resetCallBackAnimation()V

    :goto_0
    return-void
.end method

.method private onOneFingerPanActionMove(Landroid/view/MotionEvent;)V
    .locals 2

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    .line 122
    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->mDownY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->mLastTranslationY:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->mTranslationY:F

    .line 124
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->mOnAlphaChangedListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$onAlphaChangedListener;

    if-eqz v0, :cond_0

    .line 125
    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->mTranslationY:F

    invoke-interface {v0, p1, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$onAlphaChangedListener;->onTranslationYChanged(Landroid/view/MotionEvent;F)V

    .line 127
    :cond_0
    iget p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->mTranslationY:F

    float-to-int p1, p1

    neg-int p1, p1

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/ViewHelper;->setScrollY(Landroid/view/View;I)V

    return-void
.end method

.method private reset()V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->mOnAlphaChangedListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$onAlphaChangedListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 274
    iget v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->mTranslationY:F

    invoke-interface {v0, v1, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$onAlphaChangedListener;->onTranslationYChanged(Landroid/view/MotionEvent;F)V

    :cond_0
    return-void
.end method

.method private resetCallBackAnimation()V
    .locals 3

    const/4 v0, 0x2

    .line 224
    new-array v0, v0, [F

    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->mTranslationY:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 225
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 226
    new-instance v1, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$5;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$5;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 236
    new-instance v1, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$6;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$6;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 262
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public exitWithTranslation(F)V
    .locals 6

    const-wide/16 v0, 0xc8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    cmpl-float p1, p1, v5

    if-lez p1, :cond_0

    .line 150
    new-array p1, v4, [F

    iget v4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->mTranslationY:F

    aput v4, p1, v3

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->getHeight()I

    move-result v3

    int-to-float v3, v3

    aput v3, p1, v2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 151
    new-instance v2, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$1;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$1;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 158
    new-instance v2, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$2;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$2;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 182
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 183
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 184
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 186
    :cond_0
    new-array p1, v4, [F

    iget v4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->mTranslationY:F

    aput v4, p1, v3

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, p1, v2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 187
    new-instance v2, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$3;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$3;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 194
    new-instance v2, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$4;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$4;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 217
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 218
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 219
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 64
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->imageView:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    const/4 v0, 0x1

    .line 66
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->imageGif:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    .line 75
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->mDownY:F

    .line 77
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isEnableDragClose()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->imageGif:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;

    const v3, 0x3a83126f    # 0.001f

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->imageGif:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->getScale()F

    move-result v0

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->imageGif:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->getMinimumScale()F

    move-result v5

    add-float/2addr v5, v3

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->imageGif:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;

    .line 80
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->getMaxTouchCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->imageGif:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->getMaxTouchCount()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 81
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->mDownY:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->mTouchslop:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->imageView:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 83
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->imageView:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getScale()F

    move-result v0

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->imageView:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getMinScale()F

    move-result v5

    add-float/2addr v5, v3

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->imageView:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    .line 84
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getMaxTouchCount()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->imageView:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getMaxTouchCount()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 85
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->mDownY:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->mTouchslop:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->imageView:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->atYEdge:Z

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->onActionUp()V

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->mDownY:F

    .line 103
    :cond_2
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isEnableDragClose()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->imageGif:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 105
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->onOneFingerPanActionMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->imageView:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 107
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->onOneFingerPanActionMove(Landroid/view/MotionEvent;)V

    :cond_4
    :goto_0
    return v1
.end method

.method public setOnAlphaChangeListener(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$onAlphaChangedListener;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->mOnAlphaChangedListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$onAlphaChangedListener;

    return-void
.end method
