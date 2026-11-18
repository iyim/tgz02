.class public Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;
.super Landroid/widget/FrameLayout;
.source "FingerCursorView.java"


# static fields
.field private static final DEFAULT_COUNTDOWN_DURATION:I = 0x7d0

.field private static final FINGER_ICON_PERCENT:I = 0x35

.field private static final PROGRESS_PERCENT:I = 0x4b

.field public static final STATE_CLICK:I = 0x2

.field public static final STATE_CLICK_END:I = 0x3

.field public static final STATE_DISABLE:I = -0x1

.field public static final STATE_HOVER:I = 0x1

.field public static final STATE_MOVE:I


# instance fields
.field private mAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mBackgroundDrawable:Landroid/graphics/drawable/LevelListDrawable;

.field private mCountdownDuration:J

.field private mFingerIcon:Landroid/widget/ImageView;

.field private mMoveAnimator:Landroid/animation/ObjectAnimator;

.field private mPendingState:I

.field private mProgressAnimator:Landroid/animation/ObjectAnimator;

.field private mProgressView:Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;

.field private mScaleAnimator:Landroid/animation/AnimatorSet;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x7d0

    .line 44
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mCountdownDuration:J

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, 0x7d0

    .line 44
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mCountdownDuration:J

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, 0x7d0

    .line 44
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mCountdownDuration:J

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mPendingState:I

    return p0
.end method

.method private beat()V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mScaleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 261
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mScaleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private endCountdown(I)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mProgressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 212
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mProgressView:Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;->setProgress(I)V

    return-void
.end method

.method private hide()V
    .locals 6

    .line 232
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mProgressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 233
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mScaleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 234
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 235
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->getAlpha()F

    move-result v0

    const/high16 v1, 0x43480000    # 200.0f

    mul-float v1, v1, v0

    float-to-long v1, v1

    .line 238
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v0, 0x1

    const/4 v5, 0x0

    aput v5, v4, v0

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 239
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 240
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView$4;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView$4;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 255
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$drawable;->finger_cursor:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/LevelListDrawable;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mBackgroundDrawable:Landroid/graphics/drawable/LevelListDrawable;

    .line 63
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mBackgroundDrawable:Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/alibaba/ailabs/genie/agui/adapter/R$layout;->finger_cursor_layout:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 65
    sget p1, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->finger_cursor_icon:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mFingerIcon:Landroid/widget/ImageView;

    .line 66
    sget p1, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->finger_cursor_progress_bar:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mProgressView:Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;

    const/16 p1, 0x8

    .line 67
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->setVisibility(I)V

    const/4 p1, -0x1

    .line 68
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mPendingState:I

    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mState:I

    .line 69
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->initAnimator()V

    return-void
.end method

.method private initAnimator()V
    .locals 8

    .line 73
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mScaleAnimator:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    .line 74
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0x4b

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 75
    new-array v5, v0, [F

    fill-array-data v5, :array_1

    const-string v6, "scaleY"

    invoke-static {p0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 76
    new-array v4, v0, [F

    fill-array-data v4, :array_2

    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 77
    new-array v7, v0, [F

    fill-array-data v7, :array_3

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 78
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mScaleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 79
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mScaleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 80
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mScaleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 81
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mScaleAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView$1;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 95
    new-array v1, v0, [F

    fill-array-data v1, :array_4

    const-string v2, "alpha"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 96
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mProgressView:Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;

    new-array v2, v0, [I

    fill-array-data v2, :array_5

    const-string v3, "progress"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mProgressAnimator:Landroid/animation/ObjectAnimator;

    .line 97
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mProgressAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView$2;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView$2;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 112
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 113
    new-instance v2, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView$3;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView$3;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;)V

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "xy"

    invoke-static {p0, v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x32

    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mMoveAnimator:Landroid/animation/ObjectAnimator;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_2
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x64
    .end array-data
.end method

.method private show()V
    .locals 7

    .line 216
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 217
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 218
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->setAlpha(F)V

    :cond_0
    const/4 v0, 0x0

    .line 220
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->setVisibility(I)V

    .line 221
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 222
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->getAlpha()F

    move-result v1

    const/high16 v3, 0x43480000    # 200.0f

    sub-float v4, v2, v1

    mul-float v4, v4, v3

    float-to-long v3, v4

    .line 224
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    const/4 v6, 0x2

    new-array v6, v6, [F

    aput v1, v6, v0

    const/4 v0, 0x1

    aput v2, v6, v0

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 225
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 226
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 227
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    return-void
.end method

.method private startCountdown(J)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mProgressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 206
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mProgressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 207
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mProgressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mState:I

    return v0
.end method

.method public moveTo(II)V
    .locals 2

    .line 273
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 274
    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v1, :cond_0

    return-void

    .line 277
    :cond_0
    nop

    nop

    .line 278
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 279
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 280
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 305
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mFingerIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 292
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mFingerIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 293
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mProgressView:Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 294
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mProgressView:Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 295
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 296
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mFingerIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->getMeasuredWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x35

    div-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 297
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mFingerIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->getMeasuredHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x35

    div-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 298
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mProgressView:Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->getMeasuredWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4b

    div-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 299
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mProgressView:Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->getMeasuredHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4b

    div-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 300
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setCountdownDuration(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 129
    :cond_0
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mCountdownDuration:J

    return-void
.end method

.method public setState(I)V
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq p1, v2, :cond_c

    if-eqz p1, :cond_8

    if-eq p1, v3, :cond_4

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 181
    :cond_0
    iget v4, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mState:I

    if-eq v4, v2, :cond_1

    if-eqz v4, :cond_2

    if-eq v4, v3, :cond_2

    if-eq v4, v1, :cond_3

    if-eq v4, v0, :cond_3

    goto/16 :goto_0

    .line 183
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->show()V

    .line 186
    :cond_2
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mState:I

    iput v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mPendingState:I

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mBackgroundDrawable:Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    const/16 v0, 0x64

    .line 190
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->endCountdown(I)V

    .line 191
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->beat()V

    goto :goto_0

    .line 165
    :cond_4
    iget v4, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mState:I

    if-eq v4, v2, :cond_6

    if-eqz v4, :cond_7

    if-eq v4, v3, :cond_f

    if-eq v4, v1, :cond_5

    if-eq v4, v0, :cond_7

    goto :goto_0

    .line 167
    :cond_5
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mPendingState:I

    return-void

    .line 172
    :cond_6
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->show()V

    .line 175
    :cond_7
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mBackgroundDrawable:Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    .line 176
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mCountdownDuration:J

    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->startCountdown(J)V

    goto :goto_0

    .line 149
    :cond_8
    iget v4, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mState:I

    if-eq v4, v2, :cond_a

    if-eqz v4, :cond_f

    if-eq v4, v3, :cond_b

    if-eq v4, v1, :cond_9

    if-eq v4, v0, :cond_b

    goto :goto_0

    .line 151
    :cond_9
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mPendingState:I

    return-void

    .line 156
    :cond_a
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->show()V

    .line 159
    :cond_b
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mBackgroundDrawable:Landroid/graphics/drawable/LevelListDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    .line 160
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->endCountdown(I)V

    goto :goto_0

    .line 135
    :cond_c
    iget v4, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mState:I

    if-eq v4, v2, :cond_f

    if-eqz v4, :cond_e

    if-eq v4, v3, :cond_e

    if-eq v4, v1, :cond_d

    if-eq v4, v0, :cond_e

    goto :goto_0

    .line 137
    :cond_d
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mPendingState:I

    return-void

    .line 144
    :cond_e
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->hide()V

    .line 197
    :cond_f
    :goto_0
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->mState:I

    return-void
.end method

.method public setXy(Landroid/graphics/Point;)V
    .locals 2

    .line 265
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 266
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 267
    iget v1, p1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 268
    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 269
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
