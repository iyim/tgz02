.class public Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;
.super Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;
.source "TBOldRefreshHeader.java"


# static fields
.field private static sIconfont:Landroid/graphics/Typeface;

.field private static sReference:I


# instance fields
.field private mArrowTextView:Landroid/widget/TextView;

.field private mDefaultRefreshTips:[Ljava/lang/String;

.field private mFadeAnimationSet:Landroid/animation/ObjectAnimator;

.field private mRefreshHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

.field private mRefreshHeaderView:Landroid/widget/FrameLayout;

.field private mRefreshProgressView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

.field private mRefreshTipView:Landroid/widget/TextView;

.field private mRefreshTips:[Ljava/lang/String;

.field private mSecondFloorView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 68
    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    .line 45
    new-array v1, v0, [Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/taobao/uikit/extend/R$string;->uik_pull_to_refresh:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 47
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/taobao/uikit/extend/R$string;->uik_release_to_refresh:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 48
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v5, Lcom/taobao/uikit/extend/R$string;->uik_refreshing:I

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 49
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v6, Lcom/taobao/uikit/extend/R$string;->uik_refresh_finished:I

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mDefaultRefreshTips:[Ljava/lang/String;

    .line 53
    new-array v0, v0, [Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/taobao/uikit/extend/R$string;->uik_pull_to_refresh:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 55
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/taobao/uikit/extend/R$string;->uik_release_to_refresh:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 56
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/taobao/uikit/extend/R$string;->uik_refreshing:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 57
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/taobao/uikit/extend/R$string;->uik_refresh_finished:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshTips:[Ljava/lang/String;

    .line 70
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshHeaderView:Landroid/widget/FrameLayout;

    .line 71
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 72
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshHeaderView:Landroid/widget/FrameLayout;

    sget v4, Lcom/taobao/uikit/extend/R$id;->uik_refresh_header:I

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setId(I)V

    .line 73
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshHeaderView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2, v0}, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mSecondFloorView:Landroid/view/View;

    .line 77
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 78
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mSecondFloorView:Landroid/view/View;

    sget v2, Lcom/taobao/uikit/extend/R$id;->uik_refresh_header_second_floor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 79
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshHeaderView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mSecondFloorView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    sget v0, Lcom/taobao/uikit/extend/R$color;->uik_refresh_head_bg:I

    invoke-virtual {p0, v0}, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->setBackgroundResource(I)V

    .line 89
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x51

    .line 90
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 91
    new-instance v1, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    sget v2, Lcom/taobao/uikit/extend/R$string;->uik_refresh_arrow:I

    const/4 v4, 0x0

    invoke-direct {v1, p1, v2, v4, v3}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;-><init>(Landroid/content/Context;ILandroid/view/View;Z)V

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    .line 93
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshHeaderView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    invoke-virtual {p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->getRefreshStateText()Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshTipView:Landroid/widget/TextView;

    .line 96
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    invoke-virtual {p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->getProgressbar()Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshProgressView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    .line 97
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    invoke-virtual {p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->getArrow()Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mArrowTextView:Landroid/widget/TextView;

    .line 101
    sget-object p1, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->NONE:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->changeToState(Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;)V

    return-void
.end method

.method private showArrow()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mFadeAnimationSet:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mArrowTextView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 275
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mArrowTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 276
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mArrowTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 277
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mArrowTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private startArrowAnim()V
    .locals 7

    .line 257
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mFadeAnimationSet:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 258
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 259
    new-array v2, v0, [F

    fill-array-data v2, :array_1

    const-string v3, "scaleY"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 260
    new-array v3, v0, [F

    fill-array-data v3, :array_2

    const-string v4, "alpha"

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 262
    iget-object v4, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mArrowTextView:Landroid/widget/TextView;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    aput-object v3, v5, v0

    invoke-static {v4, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mFadeAnimationSet:Landroid/animation/ObjectAnimator;

    .line 263
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mFadeAnimationSet:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 264
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mFadeAnimationSet:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mFadeAnimationSet:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public changeHeaderAlpha(F)V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    const/4 p1, 0x0

    .line 253
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->setAlpha(F)V

    return-void
.end method

.method public changeToState(Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;)V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshProgressView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mState:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    if-ne v0, p1, :cond_1

    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mPullRefreshListener:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPullRefreshListener;

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mPullRefreshListener:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPullRefreshListener;

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mState:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    invoke-interface {v0, v1, p1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPullRefreshListener;->onRefreshStateChanged(Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;)V

    .line 133
    :cond_2
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mState:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    .line 135
    sget-object p1, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader$1;->$SwitchMap$com$taobao$uikit$extend$component$refresh$TBRefreshHeader$RefreshState:[I

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mState:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    invoke-virtual {v0}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    .line 166
    :pswitch_0
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->setVisibility(I)V

    goto/16 :goto_4

    .line 157
    :pswitch_1
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshProgressView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    invoke-virtual {p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->startLoadingAnimaton()V

    .line 158
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshProgressView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->setVisibility(I)V

    .line 159
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mArrowTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshTipView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshTips:[Ljava/lang/String;

    const/4 v2, 0x2

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mDefaultRefreshTips:[Ljava/lang/String;

    aget-object v1, v1, v2

    goto :goto_0

    :cond_3
    aget-object v1, v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->setVisibility(I)V

    goto :goto_4

    .line 151
    :pswitch_2
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->startArrowAnim()V

    .line 152
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshTipView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshTips:[Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mDefaultRefreshTips:[Ljava/lang/String;

    aget-object v1, v1, v2

    goto :goto_1

    :cond_4
    aget-object v1, v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->setVisibility(I)V

    goto :goto_4

    .line 144
    :pswitch_3
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->showArrow()V

    .line 145
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshTipView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshTipView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshTips:[Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mDefaultRefreshTips:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_2

    :cond_5
    aget-object v1, v1, v0

    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->setVisibility(I)V

    goto :goto_4

    .line 137
    :pswitch_4
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshProgressView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    invoke-virtual {p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->stopLoadingAnimation()V

    .line 138
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshTipView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshTips:[Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mDefaultRefreshTips:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_3

    :cond_6
    aget-object v0, v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshProgressView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    invoke-virtual {p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->stopLoadingAnimation()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 140
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->changeHeaderAlpha(F)V

    :goto_4
    :pswitch_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public getRefreshView()Landroid/view/View;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    return-object v0
.end method

.method public getSecondFloorView()Landroid/view/View;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mSecondFloorView:Landroid/view/View;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 106
    invoke-super {p0, p1, p2}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->onMeasure(II)V

    .line 108
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshProgressView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->setPullDownDistance(I)V

    return-void
.end method

.method public setProgress(F)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mState:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    sget-object v1, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->PULL_TO_REFRESH:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    if-ne v0, v1, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshProgressView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->changeProgressBarState(I)V

    .line 117
    :cond_0
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->changeHeaderAlpha(F)V

    :cond_1
    return-void
.end method

.method public setRefreshAnimation([Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setRefreshTipColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 241
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshTipView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setRefreshTips([Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 233
    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 234
    iput-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshTips:[Ljava/lang/String;

    .line 236
    :cond_1
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshTips:[Ljava/lang/String;

    return-void
.end method

.method public setSecondFloorView(Landroid/view/View;)V
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mSecondFloorView:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x50

    const/4 v3, -0x2

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshHeaderView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 203
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    :goto_0
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 208
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshHeaderView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mSecondFloorView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 209
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshHeaderView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mSecondFloorView:Landroid/view/View;

    .line 211
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mSecondFloorView:Landroid/view/View;

    sget v0, Lcom/taobao/uikit/extend/R$id;->uik_refresh_header_second_floor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    goto :goto_2

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshHeaderView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_2

    .line 217
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    .line 219
    :cond_2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    :goto_1
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 224
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mRefreshHeaderView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 225
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mSecondFloorView:Landroid/view/View;

    .line 226
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;->mSecondFloorView:Landroid/view/View;

    sget v0, Lcom/taobao/uikit/extend/R$id;->uik_refresh_header_second_floor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    :cond_3
    :goto_2
    return-void
.end method
