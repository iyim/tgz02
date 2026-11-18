.class public Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;
.super Ljava/lang/Object;
.source "RefreshHeadViewManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RefreshHeadViewManager"

.field public static final TYPE_FOOTER:I = 0x2

.field public static final TYPE_FOOTER_HORIZONTAL:I = 0x4

.field public static final TYPE_HEADER:I = 0x1

.field public static final TYPE_HEADER_HORIZONTAL:I = 0x3


# instance fields
.field private mArrowTextView:Landroid/widget/TextView;

.field private mFadeAnimationSet:Landroid/animation/ObjectAnimator;

.field private mHeadContentHeight:I

.field private mHeadContentWidth:I

.field private mHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

.field private mIsFinish:Z

.field private mLogoImageHeight:I

.field private mProgressBar:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

.field private mTipArray:[Ljava/lang/String;

.field private mTipsTextView:Landroid/widget/TextView;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/view/View;ZI)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mIsFinish:Z

    .line 56
    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mLogoImageHeight:I

    .line 64
    new-instance v1, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;-><init>(Landroid/content/Context;ILandroid/view/View;Z)V

    iput-object v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    .line 67
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    invoke-virtual {p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->getArrow()Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mArrowTextView:Landroid/widget/TextView;

    .line 69
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    invoke-virtual {p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->getProgressbar()Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mProgressBar:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    .line 70
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    invoke-virtual {p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->getRefreshStateText()Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mTipsTextView:Landroid/widget/TextView;

    .line 73
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->measureView(Landroid/view/View;)V

    .line 74
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    invoke-virtual {p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadContentHeight:I

    .line 75
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    invoke-virtual {p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadContentWidth:I

    const/4 p1, 0x2

    const/4 p2, 0x1

    if-eq p5, p2, :cond_1

    if-ne p5, p1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object p3, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    iget p4, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadContentWidth:I

    invoke-virtual {p3, p4}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->setPullDownDistance(I)V

    goto :goto_1

    .line 78
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    iget p4, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadContentHeight:I

    invoke-virtual {p3, p4}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->setPullDownDistance(I)V

    .line 82
    :goto_1
    iput p5, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mType:I

    if-ne p5, p2, :cond_2

    .line 84
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    iget p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadContentHeight:I

    mul-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, v0, p2, v0, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->setPadding(IIII)V

    goto :goto_2

    :cond_2
    if-ne p5, p1, :cond_3

    .line 86
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    iget p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadContentHeight:I

    mul-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, v0, v0, v0, p2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->setPadding(IIII)V

    goto :goto_2

    :cond_3
    const/4 p1, 0x3

    if-ne p5, p1, :cond_4

    .line 88
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    iget p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadContentWidth:I

    mul-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2, v0, v0, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->setPadding(IIII)V

    goto :goto_2

    .line 90
    :cond_4
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    iget p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadContentWidth:I

    mul-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, v0, v0, p2, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->setPadding(IIII)V

    .line 93
    :goto_2
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    invoke-virtual {p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->invalidate()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/view/View;I)V
    .locals 6

    .line 59
    sget v2, Lcom/taobao/uikit/R$string;->uik_refresh_arrow:I

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;-><init>(Landroid/content/Context;ILandroid/view/View;ZI)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private showArrow()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mFadeAnimationSet:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mArrowTextView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 296
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mArrowTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 297
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mArrowTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 298
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mArrowTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private startArrowAnim()V
    .locals 7

    .line 278
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mFadeAnimationSet:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 279
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 280
    new-array v2, v0, [F

    fill-array-data v2, :array_1

    const-string v3, "scaleY"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 281
    new-array v3, v0, [F

    fill-array-data v3, :array_2

    const-string v4, "alpha"

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 283
    iget-object v4, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mArrowTextView:Landroid/widget/TextView;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    aput-object v3, v5, v0

    invoke-static {v4, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mFadeAnimationSet:Landroid/animation/ObjectAnimator;

    .line 284
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mFadeAnimationSet:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 285
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mFadeAnimationSet:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mFadeAnimationSet:Landroid/animation/ObjectAnimator;

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

    .line 274
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    sget v1, Lcom/taobao/uikit/R$id;->uik_refresh_header_view:I

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public changeHeaderViewByState(I)V
    .locals 7

    .line 216
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mIsFinish:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    const-string v2, "RefreshHeadViewManager"

    const/4 v3, 0x0

    if-eqz p1, :cond_b

    if-eq p1, v1, :cond_8

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x3

    if-eq p1, v0, :cond_5

    if-eq p1, v4, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto/16 :goto_8

    .line 246
    :cond_1
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    sget v0, Lcom/taobao/uikit/R$id;->uik_refresh_header_view:I

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    .line 248
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_8

    .line 252
    :cond_2
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mProgressBar:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    invoke-virtual {p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->stopLoadingAnimation()V

    .line 253
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mTipsTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mTipArray:[Ljava/lang/String;

    if-eqz v0, :cond_4

    array-length v5, v0

    if-ge v5, v4, :cond_3

    goto :goto_0

    :cond_3
    aget-object v0, v0, v4

    goto :goto_1

    :cond_4
    :goto_0
    const-string v0, "\u6570\u636e\u52a0\u8f7d\u5b8c\u6bd5"

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "\u5f53\u524d\u72b6\u6001\uff0cdone"

    invoke-static {v2, v0, p1}, Lcom/taobao/uikit/utils/UIKITLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    sget v0, Lcom/taobao/uikit/R$id;->uik_refresh_header_view:I

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 257
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_8

    .line 234
    :cond_5
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mTipsTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mTipsTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mTipArray:[Ljava/lang/String;

    if-eqz v5, :cond_7

    array-length v6, v5

    if-ge v6, v4, :cond_6

    goto :goto_2

    :cond_6
    aget-object v0, v5, v0

    goto :goto_3

    :cond_7
    :goto_2
    const-string v0, "\u6b63\u5728\u5237\u65b0..."

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mProgressBar:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    invoke-virtual {p1, v3}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->setVisibility(I)V

    .line 237
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mProgressBar:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    invoke-virtual {p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->startLoadingAnimaton()V

    .line 238
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mArrowTextView:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "\u5f53\u524d\u72b6\u6001,\u6b63\u5728\u5237\u65b0..."

    invoke-static {v2, v0, p1}, Lcom/taobao/uikit/utils/UIKITLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    sget v0, Lcom/taobao/uikit/R$id;->uik_refresh_header_view:I

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 242
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_8

    .line 228
    :cond_8
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mTipsTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mTipsTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mTipArray:[Ljava/lang/String;

    if-eqz v0, :cond_a

    array-length v4, v0

    if-ge v4, v1, :cond_9

    goto :goto_4

    :cond_9
    aget-object v0, v0, v3

    goto :goto_5

    :cond_a
    :goto_4
    const-string v0, "\u4e0b\u62c9\u5237\u65b0"

    :goto_5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->showArrow()V

    .line 231
    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "\u5f53\u524d\u72b6\u6001\uff0c\u4e0b\u62c9\u5237\u65b0"

    invoke-static {v2, v0, p1}, Lcom/taobao/uikit/utils/UIKITLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 221
    :cond_b
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mProgressBar:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    invoke-virtual {p1, v3}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->setVisibility(I)V

    .line 222
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mTipsTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mTipsTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mTipArray:[Ljava/lang/String;

    if-eqz v4, :cond_d

    array-length v5, v4

    if-ge v5, v0, :cond_c

    goto :goto_6

    :cond_c
    aget-object v0, v4, v1

    goto :goto_7

    :cond_d
    :goto_6
    const-string v0, "\u677e\u5f00\u5237\u65b0"

    :goto_7
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->startArrowAnim()V

    .line 225
    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "\u5f53\u524d\u72b6\u6001\uff0c\u677e\u5f00\u5237\u65b0"

    invoke-static {v2, v0, p1}, Lcom/taobao/uikit/utils/UIKITLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    :goto_8
    return-void
.end method

.method public changeProgressBarState(I)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mProgressBar:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->changeProgressBarState(I)V

    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadContentHeight:I

    return v0
.end method

.method public getImageHeight()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mLogoImageHeight:I

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getRefreshView()Landroid/view/View;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadContentWidth:I

    return v0
.end method

.method public isHeadViewHeightContainImage(Z)V
    .locals 1

    if-nez p1, :cond_1

    .line 98
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mLogoImageHeight:I

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mLogoImageHeight:I

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->setPullDownDistance(I)V

    :cond_1
    return-void
.end method

.method public measureView(Landroid/view/View;)V
    .locals 3

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 149
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 150
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_1

    const/high16 v2, 0x40000000    # 2.0f

    .line 153
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    .line 155
    :cond_1
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 157
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public setFinish(Z)V
    .locals 2

    .line 197
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mIsFinish:Z

    .line 198
    iget-boolean p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mIsFinish:Z

    if-eqz p1, :cond_1

    .line 199
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mArrowTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mTipsTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mProgressBar:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->setVisibility(I)V

    .line 202
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mProgressBar:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    invoke-virtual {p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->stopLoadingAnimation()V

    .line 204
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mTipArray:[Ljava/lang/String;

    if-eqz p1, :cond_2

    array-length v0, p1

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    .line 205
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mTipsTextView:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const-string p1, "\u52a0\u8f7d\u5b8c\u6210"

    goto :goto_0

    :cond_0
    aget-object p1, p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 208
    :cond_1
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mArrowTextView:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mProgressBar:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->setVisibility(I)V

    .line 210
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mTipsTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->setPadding(IIII)V

    return-void
.end method

.method public setProgressBarInitState(Z)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->setProgressBarInitState(Z)V

    :cond_0
    return-void
.end method

.method public setRefreshBackground(I)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setRefreshViewColor(I)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->setRefreshViewColor(I)V

    :cond_0
    return-void
.end method

.method public setTipArray([Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mTipArray:[Ljava/lang/String;

    return-void
.end method

.method public setUpdatedTextView(Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setViewPadding(Z)V
    .locals 2

    .line 108
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    .line 109
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->mHeadView:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->setPadding(IIII)V

    :cond_1
    return-void
.end method
