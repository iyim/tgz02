.class public Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;
.super Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;
.source "TBDefaultLoadMoreFooter.java"


# instance fields
.field private mDefaultLoadMoreTips:[Ljava/lang/String;

.field private mLoadMoreTips:[Ljava/lang/String;

.field private mLoadMoreView:Landroid/widget/TextView;

.field private mProgressbar:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

.field private mState:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 49
    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;-><init>(Landroid/content/Context;)V

    .line 30
    sget-object v0, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;->NONE:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mState:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    const/4 v0, 0x4

    .line 33
    new-array v1, v0, [Ljava/lang/String;

    .line 34
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/taobao/uikit/extend/R$string;->uik_load_more:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 35
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/taobao/uikit/extend/R$string;->uik_release_to_load:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 36
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v5, Lcom/taobao/uikit/extend/R$string;->uik_loading:I

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 37
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v6, Lcom/taobao/uikit/extend/R$string;->uik_load_more_finished:I

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mDefaultLoadMoreTips:[Ljava/lang/String;

    .line 41
    new-array v0, v0, [Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/taobao/uikit/extend/R$string;->uik_load_more:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 43
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/taobao/uikit/extend/R$string;->uik_release_to_load:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 44
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/taobao/uikit/extend/R$string;->uik_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 45
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/taobao/uikit/extend/R$string;->uik_load_more_finished:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mLoadMoreTips:[Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 54
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 56
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 58
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v5, 0x41400000    # 12.0f

    mul-float v5, v5, v0

    float-to-int v5, v5

    .line 59
    invoke-virtual {v1, v3, v5, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 60
    invoke-virtual {p0, v1, v2}, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v2, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    invoke-direct {v2, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mProgressbar:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    .line 63
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mProgressbar:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    sget v3, Lcom/taobao/uikit/extend/R$id;->uik_load_more_footer_progress:I

    invoke-virtual {v2, v3}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->setId(I)V

    .line 64
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x41e00000    # 28.0f

    mul-float v0, v0, v3

    float-to-int v0, v0

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 65
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 66
    iget-object v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mProgressbar:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->setVisibility(I)V

    .line 67
    iget-object v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mProgressbar:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mLoadMoreView:Landroid/widget/TextView;

    .line 70
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mLoadMoreView:Landroid/widget/TextView;

    sget v2, Lcom/taobao/uikit/extend/R$id;->uik_load_more_footer_text:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 71
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mLoadMoreView:Landroid/widget/TextView;

    sget v2, Lcom/taobao/uikit/extend/R$string;->uik_load_more:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 72
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mLoadMoreView:Landroid/widget/TextView;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 73
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mLoadMoreView:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 74
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mLoadMoreView:Landroid/widget/TextView;

    const-string v2, "#444444"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mLoadMoreView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    sget p1, Lcom/taobao/uikit/extend/R$color;->uik_load_more_footer_bg:I

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->setBackgroundResource(I)V

    .line 81
    sget-object p1, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;->NONE:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->changeToState(Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;)V

    return-void
.end method


# virtual methods
.method public changeToState(Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;)V
    .locals 5

    .line 91
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mLoadMoreView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mState:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    if-ne v0, p1, :cond_1

    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mPushLoadMoreListener:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPushLoadMoreListener;

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mPushLoadMoreListener:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPushLoadMoreListener;

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mState:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    invoke-interface {v0, v1, p1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPushLoadMoreListener;->onLoadMoreStateChanged(Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;)V

    .line 100
    :cond_2
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mState:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    .line 101
    sget-object p1, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter$1;->$SwitchMap$com$taobao$uikit$extend$component$refresh$TBLoadMoreFooter$LoadMoreState:[I

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mState:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    invoke-virtual {v0}, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/16 v0, 0x8

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_9

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq p1, v3, :cond_7

    if-eq p1, v1, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    goto/16 :goto_4

    .line 120
    :cond_3
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mProgressbar:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    invoke-virtual {p1, v4}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->setVisibility(I)V

    .line 121
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mProgressbar:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    invoke-virtual {p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->startLoadingAnimaton()V

    .line 122
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mLoadMoreView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mLoadMoreTips:[Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mDefaultLoadMoreTips:[Ljava/lang/String;

    aget-object v0, v0, v3

    goto :goto_0

    :cond_4
    aget-object v0, v0, v3

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {p0, v4}, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->setVisibility(I)V

    goto :goto_4

    .line 114
    :cond_5
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mProgressbar:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    invoke-virtual {p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->stopLoadingAnimation()V

    .line 115
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mProgressbar:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->setVisibility(I)V

    .line 116
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mLoadMoreView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mLoadMoreTips:[Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mDefaultLoadMoreTips:[Ljava/lang/String;

    aget-object v0, v0, v2

    goto :goto_1

    :cond_6
    aget-object v0, v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p0, v4}, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->setVisibility(I)V

    goto :goto_4

    .line 108
    :cond_7
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mProgressbar:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    invoke-virtual {p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->stopLoadingAnimation()V

    .line 109
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mProgressbar:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->setVisibility(I)V

    .line 110
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mLoadMoreView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mLoadMoreTips:[Ljava/lang/String;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mDefaultLoadMoreTips:[Ljava/lang/String;

    aget-object v0, v0, v4

    goto :goto_2

    :cond_8
    aget-object v0, v0, v4

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {p0, v4}, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->setVisibility(I)V

    goto :goto_4

    .line 103
    :cond_9
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mProgressbar:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    invoke-virtual {p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->stopLoadingAnimation()V

    .line 104
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mProgressbar:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->setVisibility(I)V

    .line 105
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mLoadMoreView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mLoadMoreTips:[Ljava/lang/String;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mDefaultLoadMoreTips:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_3

    :cond_a
    aget-object v0, v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    return-void
.end method

.method public getCurrentState()Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mState:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    return-object v0
.end method

.method public getLoadMoreTipView()Landroid/widget/TextView;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mLoadMoreView:Landroid/widget/TextView;

    return-object v0
.end method

.method public setLoadMoreTipColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 138
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mLoadMoreView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setLoadMoreTips([Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 131
    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mLoadMoreTips:[Ljava/lang/String;

    .line 133
    :cond_1
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;->mLoadMoreTips:[Ljava/lang/String;

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
