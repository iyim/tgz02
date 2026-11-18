.class public Lcom/taobao/uikit/feature/features/PullToRefreshFeature;
.super Lcom/taobao/uikit/feature/features/AbsFeature;
.source "PullToRefreshFeature.java"

# interfaces
.implements Lcom/taobao/uikit/feature/callback/TouchEventCallback;
.implements Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;
.implements Lcom/taobao/uikit/feature/callback/ScrollCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/uikit/feature/features/PullToRefreshFeature$OnPullToRefreshListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/uikit/feature/features/AbsFeature<",
        "Landroid/widget/ListView;",
        ">;",
        "Lcom/taobao/uikit/feature/callback/TouchEventCallback;",
        "Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;",
        "Lcom/taobao/uikit/feature/callback/ScrollCallback;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private isAuto:Z

.field private mContext:Landroid/content/Context;

.field private mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

.field private mScroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/AbsFeature;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->isAuto:Z

    .line 46
    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mScroller:Landroid/widget/Scroller;

    .line 48
    new-instance v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    iget-object v1, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mScroller:Landroid/widget/Scroller;

    invoke-direct {v0, p0, p1, v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;-><init>(Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;Landroid/content/Context;Landroid/widget/Scroller;)V

    iput-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    .line 50
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/uikit/feature/features/PullToRefreshFeature;)Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    return-object p0
.end method

.method private addScrollListener(Landroid/widget/ListView;)V
    .locals 1

    .line 289
    new-instance v0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature$1;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/feature/features/PullToRefreshFeature$1;-><init>(Lcom/taobao/uikit/feature/features/PullToRefreshFeature;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public afterComputeScroll()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public afterDispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public afterOnScrollChanged(IIII)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public afterOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeComputeScroll()V
    .locals 3

    .line 346
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-eqz v0, :cond_0

    .line 348
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mScroller:Landroid/widget/Scroller;

    .line 349
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    const/4 v2, 0x1

    .line 348
    invoke-virtual {v0, v1, v2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->onScrollerStateChanged(IZ)V

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    goto :goto_0

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mScroller:Landroid/widget/Scroller;

    if-eqz v1, :cond_2

    .line 354
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    const/4 v2, 0x0

    .line 353
    invoke-virtual {v0, v1, v2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->onScrollerStateChanged(IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public beforeDispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeOnScrollChanged(IIII)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public constructor(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public enablePullDownToRefresh(Z)V
    .locals 2

    .line 190
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 191
    sget v1, Lcom/taobao/uikit/R$drawable;->uik_list_logo:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 194
    invoke-virtual {p0, p1, v0}, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->enablePullDownToRefresh(ZLandroid/view/View;)V

    return-void
.end method

.method public enablePullDownToRefresh(ZIILandroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 253
    invoke-virtual {p0, p1, p4}, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->enablePullDownToRefresh(ZLandroid/view/View;)V

    return-void
.end method

.method public enablePullDownToRefresh(ZILandroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 218
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2, p3}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->enablePullDownRefresh(ZILandroid/view/View;)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->enablePullDownRefresh(ZILandroid/view/View;)V

    :goto_0
    return-void
.end method

.method public enablePullDownToRefresh(ZLandroid/view/View;)V
    .locals 1

    .line 202
    sget v0, Lcom/taobao/uikit/R$string;->uik_refresh_arrow:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->enablePullDownToRefresh(ZILandroid/view/View;)V

    return-void
.end method

.method public enablePullDownToRefresh(ZLandroid/view/View;Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 245
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    const/4 v0, 0x1

    sget v1, Lcom/taobao/uikit/R$string;->uik_refresh_arrow:I

    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->enablePullDownRefresh(ZILandroid/view/View;Z)V

    goto :goto_0

    .line 247
    :cond_0
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->enablePullDownRefresh(ZILandroid/view/View;)V

    :goto_0
    return-void
.end method

.method public enablePullUpToRefresh(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p0, p1, v0}, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->enablePullUpToRefresh(ZLandroid/view/View;)V

    return-void
.end method

.method public enablePullUpToRefresh(ZIILandroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 258
    invoke-virtual {p0, p1, p4}, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->enablePullUpToRefresh(ZLandroid/view/View;)V

    return-void
.end method

.method public enablePullUpToRefresh(ZILandroid/view/View;)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 237
    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->enablePullUpRefresh(ZILandroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 239
    invoke-virtual {v0, p2, p2, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->enablePullUpRefresh(ZILandroid/view/View;)V

    :goto_0
    return-void
.end method

.method public enablePullUpToRefresh(ZLandroid/view/View;)V
    .locals 1

    .line 206
    sget v0, Lcom/taobao/uikit/R$string;->uik_refresh_arrow:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->enablePullUpToRefresh(ZILandroid/view/View;)V

    return-void
.end method

.method public getPullDirection()I
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->getPullDirection()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getPullDownDistance()I
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->getPullDownDistance()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public hasArrivedBottomEdge()Z
    .locals 4

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xa

    if-le v0, v3, :cond_1

    .line 114
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v3, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v3, Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v3, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v3, Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-lt v0, v3, :cond_2

    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public hasArrivedTopEdge()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHeadViewHeightContainImage(Z)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->isHeadViewHeightContainImage(Z)V

    :cond_0
    return-void
.end method

.method public isScrollStop()Z
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->isScrollStop()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keepBottom()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method

.method public keepTop()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method

.method public onPullRefreshComplete()V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->onRefreshComplete()V

    :cond_0
    return-void
.end method

.method public removeFooterView(Landroid/view/View;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mHost:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mHost:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public setDownRefreshBackgroundColor(I)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->setDownRefreshBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setDownRefreshFinish(Z)V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->setDownRefreshFinish(Z)V

    return-void
.end method

.method public setFooterView(Landroid/view/View;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mHost:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setHeadView(Landroid/view/View;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mHost:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setHost(Landroid/view/View;)V
    .locals 0

    .line 29
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->setHost(Landroid/widget/ListView;)V

    return-void
.end method

.method public setHost(Landroid/widget/ListView;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Lcom/taobao/uikit/feature/features/AbsFeature;->setHost(Landroid/view/View;)V

    .line 78
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->addFooterView()V

    .line 79
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->addHeaderView()V

    .line 80
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->isAuto:Z

    if-eqz v0, :cond_0

    .line 81
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->addScrollListener(Landroid/widget/ListView;)V

    :cond_0
    return-void
.end method

.method public setIsDownRefreshing()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->setIsDownRefreshing()V

    :cond_0
    return-void
.end method

.method public setIsUpRefreshing()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->setIsUpRefreshing()V

    :cond_0
    return-void
.end method

.method public setOnPullToRefreshListener(Lcom/taobao/uikit/feature/features/PullToRefreshFeature$OnPullToRefreshListener;)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->setOnRefreshListener(Lcom/taobao/uikit/feature/features/PullToRefreshFeature$OnPullToRefreshListener;)V

    :cond_0
    return-void
.end method

.method public setPullDownRefreshTips([Ljava/lang/String;)V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-nez v0, :cond_0

    return-void

    .line 312
    :cond_0
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->setDownRefreshTips([Ljava/lang/String;)V

    return-void
.end method

.method public setPullUpRefreshTips([Ljava/lang/String;)V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-nez v0, :cond_0

    return-void

    .line 319
    :cond_0
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->setUpRefreshTips([Ljava/lang/String;)V

    return-void
.end method

.method public setPullUpToRefreshAuto(Z)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->setPullUpRefreshAuto(Z)V

    .line 282
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->isAuto:Z

    .line 283
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->getHost()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->getHost()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->addScrollListener(Landroid/widget/ListView;)V

    :cond_0
    return-void
.end method

.method public setRefreshViewColor(I)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->setRefreshViewColor(I)V

    :cond_0
    return-void
.end method

.method public setUpRefreshBackgroundColor(I)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->setUpRefreshBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setUpRefreshFinish(Z)V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->setUpRefreshFinish(Z)V

    return-void
.end method

.method public trigger()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->computeScroll()V

    return-void
.end method
