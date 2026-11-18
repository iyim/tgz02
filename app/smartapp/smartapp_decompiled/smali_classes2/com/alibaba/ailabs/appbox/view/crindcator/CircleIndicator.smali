.class public Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;
.super Landroid/widget/LinearLayout;
.source "CircleIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$HsvEvaluator;,
        Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$PagerListener;
    }
.end annotation


# static fields
.field private static final ANIM_IN:I = 0x1001

.field private static final ANIM_IN_TIME:I = 0x12c

.field private static final ANIM_OUT:I = 0x1002

.field private static final ANIM_OUT_TIME:I = 0x190

.field private static final TAG:Ljava/lang/String; = "CircleIndicator"


# instance fields
.field private isCanMove:Z

.field private mCount:I

.field private mDefaultColor:I

.field private mLastPosition:I

.field private mMargin:I

.field private mMoveDistance:I

.field private mMoveSize:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/RectF;

.field private mRectWidth:I

.field private mScaleFactor:F

.field private mSelectedColor:I

.field private mSize:I

.field private mType:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicatorType;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 65
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 57
    iput p3, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mLastPosition:I

    .line 72
    invoke-virtual {p0, p3}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->setOrientation(I)V

    const/16 v0, 0x10

    .line 73
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->setGravity(I)V

    .line 74
    sget-object v0, Lcom/alibaba/ailabs/appbox/R$styleable;->CircleIndicator:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 76
    sget p2, Lcom/alibaba/ailabs/appbox/R$styleable;->CircleIndicator_cir_type:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    .line 77
    sget v0, Lcom/alibaba/ailabs/appbox/R$styleable;->CircleIndicator_cir_horizon_margin:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mMargin:I

    .line 78
    sget v0, Lcom/alibaba/ailabs/appbox/R$styleable;->CircleIndicator_cir_size:I

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mSize:I

    .line 79
    sget v0, Lcom/alibaba/ailabs/appbox/R$styleable;->CircleIndicator_cir_normalColor:I

    const v1, -0x777778

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mDefaultColor:I

    .line 80
    sget v0, Lcom/alibaba/ailabs/appbox/R$styleable;->CircleIndicator_cir_selectedColor:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mSelectedColor:I

    .line 81
    sget v0, Lcom/alibaba/ailabs/appbox/R$styleable;->CircleIndicator_cir_canMove:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->isCanMove:Z

    .line 82
    sget v0, Lcom/alibaba/ailabs/appbox/R$styleable;->CircleIndicator_cir_rect_width:I

    iget v2, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mSize:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mRectWidth:I

    .line 83
    sget v0, Lcom/alibaba/ailabs/appbox/R$styleable;->CircleIndicator_cir_scale_factor:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mScaleFactor:F

    .line 84
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mPaint:Landroid/graphics/Paint;

    .line 87
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mSelectedColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mRect:Landroid/graphics/RectF;

    .line 91
    invoke-static {}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicatorType;->values()[Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicatorType;

    move-result-object p1

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mType:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicatorType;

    .line 96
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mType:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicatorType;

    sget-object p2, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicatorType;->SCALE:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicatorType;

    if-ne p1, p2, :cond_0

    .line 97
    iput-boolean p3, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->isCanMove:Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->isCanMove:Z

    return p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mCount:I

    return p0
.end method

.method static synthetic access$202(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mMoveDistance:I

    return p1
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mMoveSize:I

    return p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;)Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicatorType;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mType:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicatorType;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mLastPosition:I

    return p0
.end method

.method static synthetic access$502(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mLastPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;Landroid/widget/ImageView;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->doScaleAnim(Landroid/widget/ImageView;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private doScaleAnim(Landroid/widget/ImageView;I)V
    .locals 10

    .line 291
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 295
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x1

    .line 296
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 297
    iget v3, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mSize:I

    invoke-virtual {v1, v3, v3}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    const-string v3, "color"

    const-string v4, "scaleY"

    const-string v5, "scaleX"

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/16 v9, 0x1002

    if-ne p2, v9, :cond_0

    .line 299
    new-array p2, v8, [F

    aput v6, p2, v7

    iget v9, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mScaleFactor:F

    aput v9, p2, v2

    invoke-static {p1, v5, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 300
    new-array v5, v8, [F

    aput v6, v5, v7

    iget v6, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mScaleFactor:F

    aput v6, v5, v2

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0x190

    .line 301
    invoke-virtual {v0, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 302
    new-array v5, v8, [I

    iget v6, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mDefaultColor:I

    aput v6, v5, v7

    iget v6, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mSelectedColor:I

    aput v6, v5, v2

    invoke-static {p1, v3, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    goto :goto_0

    .line 305
    :cond_0
    new-array p2, v8, [F

    iget v9, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mScaleFactor:F

    aput v9, p2, v7

    aput v6, p2, v2

    invoke-static {p1, v5, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 306
    new-array v5, v8, [F

    iget v9, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mScaleFactor:F

    aput v9, v5, v7

    aput v6, v5, v2

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 309
    new-array v5, v8, [I

    iget v6, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mSelectedColor:I

    aput v6, v5, v7

    iget v6, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mDefaultColor:I

    aput v6, v5, v2

    invoke-static {p1, v3, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v5, 0x12c

    .line 311
    invoke-virtual {v0, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 314
    :goto_0
    new-instance v3, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$HsvEvaluator;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$HsvEvaluator;-><init>(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$1;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 315
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 317
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 318
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 320
    new-instance p2, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$1;

    invoke-direct {p2, p0, v1, p1}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$1;-><init>(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;Landroid/graphics/drawable/GradientDrawable;Landroid/widget/ImageView;)V

    invoke-virtual {v2, p2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method


# virtual methods
.method public addCirBean(Lcom/alibaba/ailabs/appbox/view/crindcator/CirBean;)V
    .locals 2

    .line 194
    iget-object v0, p1, Lcom/alibaba/ailabs/appbox/view/crindcator/CirBean;->type:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicatorType;

    sget-object v1, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicatorType;->UNKNOWN:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicatorType;

    if-eq v0, v1, :cond_0

    .line 195
    iget-object v0, p1, Lcom/alibaba/ailabs/appbox/view/crindcator/CirBean;->type:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicatorType;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mType:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicatorType;

    .line 197
    :cond_0
    iget v0, p1, Lcom/alibaba/ailabs/appbox/view/crindcator/CirBean;->normalColor:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    .line 198
    iget v0, p1, Lcom/alibaba/ailabs/appbox/view/crindcator/CirBean;->normalColor:I

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mDefaultColor:I

    .line 200
    :cond_1
    iget v0, p1, Lcom/alibaba/ailabs/appbox/view/crindcator/CirBean;->selectedColor:I

    if-eq v0, v1, :cond_2

    .line 201
    iget v0, p1, Lcom/alibaba/ailabs/appbox/view/crindcator/CirBean;->selectedColor:I

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mSelectedColor:I

    .line 203
    :cond_2
    iget v0, p1, Lcom/alibaba/ailabs/appbox/view/crindcator/CirBean;->cirSize:I

    if-eqz v0, :cond_3

    .line 204
    iget v0, p1, Lcom/alibaba/ailabs/appbox/view/crindcator/CirBean;->cirSize:I

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mSize:I

    .line 206
    :cond_3
    iget v0, p1, Lcom/alibaba/ailabs/appbox/view/crindcator/CirBean;->horizonMargin:I

    if-eqz v0, :cond_4

    .line 207
    iget v0, p1, Lcom/alibaba/ailabs/appbox/view/crindcator/CirBean;->horizonMargin:I

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mMargin:I

    .line 209
    :cond_4
    iget v0, p1, Lcom/alibaba/ailabs/appbox/view/crindcator/CirBean;->scaleFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    .line 210
    iget v0, p1, Lcom/alibaba/ailabs/appbox/view/crindcator/CirBean;->scaleFactor:F

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mScaleFactor:F

    .line 213
    :cond_5
    iget v0, p1, Lcom/alibaba/ailabs/appbox/view/crindcator/CirBean;->rectWidth:I

    if-eqz v0, :cond_6

    .line 214
    iget v0, p1, Lcom/alibaba/ailabs/appbox/view/crindcator/CirBean;->rectWidth:I

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mRectWidth:I

    .line 216
    :cond_6
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->isCanMove:Z

    iget-boolean v1, p1, Lcom/alibaba/ailabs/appbox/view/crindcator/CirBean;->isCanMove:Z

    if-eq v0, v1, :cond_7

    .line 217
    iget-boolean p1, p1, Lcom/alibaba/ailabs/appbox/view/crindcator/CirBean;->isCanMove:Z

    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->isCanMove:Z

    .line 222
    :cond_7
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mType:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicatorType;

    sget-object v0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicatorType;->SCALE:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicatorType;

    if-ne p1, v0, :cond_8

    const/4 p1, 0x0

    .line 223
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->isCanMove:Z

    :cond_8
    return-void
.end method

.method public addPagerData(ILandroid/support/v4/view/ViewPager;)V
    .locals 6

    .line 112
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->removeAllViews()V

    const/4 v0, 0x0

    .line 113
    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mMoveDistance:I

    if-nez p1, :cond_0

    return-void

    .line 118
    :cond_0
    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 119
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mCount:I

    .line 121
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x1

    .line 122
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 123
    iget v2, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mSize:I

    invoke-virtual {p1, v2, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 124
    iget v2, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mDefaultColor:I

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v2, 0x0

    .line 125
    :goto_0
    iget v3, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mCount:I

    if-ge v2, v3, :cond_2

    .line 126
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 129
    iget v4, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mCount:I

    sub-int/2addr v4, v1

    if-ne v2, v4, :cond_1

    .line 130
    iget v4, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mMargin:I

    invoke-virtual {v3, v4, v0, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 132
    :cond_1
    iget v4, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mMargin:I

    invoke-virtual {v3, v4, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 135
    :goto_1
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 137
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 138
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    invoke-virtual {p0, v4}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 142
    new-instance p1, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$PagerListener;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$PagerListener;-><init>(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;)V

    invoke-virtual {p2, p1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    :cond_3
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 179
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 180
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mType:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicatorType;

    sget-object v1, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicatorType;->SCALE:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicatorType;

    if-eq v0, v1, :cond_0

    .line 181
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 182
    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mMoveDistance:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 183
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mSize:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 184
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 148
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    const/4 p1, 0x0

    .line 150
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 154
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mType:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicatorType;

    sget-object p3, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicatorType;->CIRTORECT:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicatorType;

    if-ne p2, p3, :cond_0

    .line 155
    iget p2, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mRectWidth:I

    iget p3, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mSize:I

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    .line 156
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLeft()I

    move-result p3

    sub-int/2addr p3, p2

    int-to-float p2, p3

    .line 157
    iget p3, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mRectWidth:I

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLeft()I

    move-result p2

    int-to-float p2, p2

    .line 160
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p3

    :goto_0
    int-to-float p3, p3

    add-float/2addr p3, p2

    .line 163
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result p4

    int-to-float p4, p4

    .line 165
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p5

    int-to-float p5, p5

    add-float/2addr p5, p4

    .line 166
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p2, p4, p3, p5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 167
    iget p2, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mMargin:I

    iget p3, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mSize:I

    add-int/2addr p2, p3

    iput p2, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mMoveSize:I

    .line 169
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->mType:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicatorType;

    sget-object p3, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicatorType;->SCALE:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicatorType;

    if-ne p2, p3, :cond_1

    const/16 p2, 0x1002

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->doScaleAnim(Landroid/widget/ImageView;I)V

    :cond_1
    return-void
.end method
