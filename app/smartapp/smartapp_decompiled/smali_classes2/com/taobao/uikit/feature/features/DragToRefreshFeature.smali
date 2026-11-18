.class public Lcom/taobao/uikit/feature/features/DragToRefreshFeature;
.super Lcom/taobao/uikit/feature/features/AbsFeature;
.source "DragToRefreshFeature.java"

# interfaces
.implements Lcom/taobao/uikit/feature/callback/TouchEventCallback;
.implements Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;
.implements Lcom/taobao/uikit/feature/callback/ScrollCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/uikit/feature/features/DragToRefreshFeature$OnDragToRefreshListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/uikit/feature/features/AbsFeature<",
        "Landroid/support/v7/widget/RecyclerView;",
        ">;",
        "Lcom/taobao/uikit/feature/callback/TouchEventCallback;",
        "Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;",
        "Lcom/taobao/uikit/feature/callback/ScrollCallback;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mAutoLoadScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private mEnableNegative:Z

.field private mEnablePositive:Z

.field private mIntArray:[I

.field private mIntArray2:[I

.field private mIsAuto:Z

.field private mOrientation:I

.field private mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

.field private mScroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 54
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/AbsFeature;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mIsAuto:Z

    const/4 v0, 0x1

    .line 49
    iput v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mOrientation:I

    .line 55
    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mScroller:Landroid/widget/Scroller;

    .line 56
    new-instance v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    iget-object v1, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mScroller:Landroid/widget/Scroller;

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;-><init>(Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;Landroid/content/Context;Landroid/widget/Scroller;I)V

    iput-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    .line 57
    iput p2, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mOrientation:I

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/uikit/feature/features/DragToRefreshFeature;)Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/uikit/feature/features/DragToRefreshFeature;Landroid/support/v7/widget/RecyclerView;)I
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->getSpanCount(Landroid/support/v7/widget/RecyclerView;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/taobao/uikit/feature/features/DragToRefreshFeature;I)Z
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->hasArrivedBottomEdgeOffset(I)Z

    move-result p0

    return p0
.end method

.method private addAutoLoadScrollListener(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mAutoLoadScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature$1;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/feature/features/DragToRefreshFeature$1;-><init>(Lcom/taobao/uikit/feature/features/DragToRefreshFeature;)V

    iput-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mAutoLoadScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 99
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mAutoLoadScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method private ensureIntArray(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mIntArray:[I

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mIntArray:[I

    goto :goto_0

    .line 135
    :cond_0
    array-length v0, v0

    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 136
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mIntArray:[I

    .line 139
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mIntArray2:[I

    if-nez v0, :cond_2

    .line 140
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mIntArray2:[I

    goto :goto_1

    .line 141
    :cond_2
    array-length v0, v0

    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 142
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mIntArray2:[I

    :cond_3
    :goto_1
    return-void
.end method

.method private getSpanCount(Landroid/support/v7/widget/RecyclerView;)I
    .locals 1

    .line 104
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 105
    instance-of v0, p1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 106
    nop

    nop

    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    .line 107
    :cond_0
    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_1

    .line 108
    nop

    nop

    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private hasArrivedBottomEdgeOffset(I)Z
    .locals 8

    .line 186
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 187
    iget-boolean v1, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mEnableNegative:Z

    .line 188
    instance-of v2, v0, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 189
    iget-object v2, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v2, Lcom/taobao/uikit/feature/view/TRecyclerView;

    invoke-virtual {v2}, Lcom/taobao/uikit/feature/view/TRecyclerView;->getTotalCount()I

    move-result v2

    sub-int/2addr v2, v4

    sub-int/2addr v2, v1

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    add-int/2addr v0, p1

    if-gt v2, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    .line 190
    :cond_0
    instance-of v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v2, :cond_3

    .line 191
    nop

    nop

    .line 192
    invoke-direct {p0, v0}, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->ensureIntArray(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    .line 193
    iget-object v2, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mIntArray:[I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 194
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 197
    iget-object v6, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mIntArray:[I

    aget v6, v6, v2

    const/4 v7, -0x1

    if-eq v7, v6, :cond_1

    .line 198
    iget-object v7, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v7, Lcom/taobao/uikit/feature/view/TRecyclerView;

    invoke-virtual {v7}, Lcom/taobao/uikit/feature/view/TRecyclerView;->getTotalCount()I

    move-result v7

    sub-int/2addr v7, v4

    sub-int/2addr v7, v1

    add-int/2addr v6, p1

    if-gt v7, v6, :cond_1

    const/4 v5, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move p1, v5

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    .line 204
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->hasArrivedTopEdge()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 v3, 0x1

    :cond_4
    return v3
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
    .locals 4

    .line 413
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-eqz v0, :cond_1

    .line 415
    iget v2, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mOrientation:I

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->onScrollerStateChanged(IZ)V

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    goto :goto_2

    .line 419
    :cond_2
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mScroller:Landroid/widget/Scroller;

    if-eqz v2, :cond_4

    .line 420
    iget v3, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mOrientation:I

    if-ne v3, v1, :cond_3

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->onScrollerStateChanged(IZ)V

    :cond_4
    :goto_2
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

    .line 115
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-eqz v0, :cond_0

    .line 116
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

.method public enableNegativeDrag(Z)V
    .locals 2

    .line 323
    sget v0, Lcom/taobao/uikit/R$string;->uik_refresh_arrow:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->enableNegativeDrag(ZILandroid/view/View;)V

    return-void
.end method

.method public enableNegativeDrag(ZILandroid/view/View;)V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-nez v0, :cond_0

    return-void

    .line 318
    :cond_0
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mEnableNegative:Z

    .line 319
    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->enablePullUpRefresh(ZILandroid/view/View;)V

    return-void
.end method

.method public enablePositiveDrag(Z)V
    .locals 2

    .line 305
    sget v0, Lcom/taobao/uikit/R$string;->uik_refresh_arrow:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->enablePositiveDrag(ZILandroid/view/View;)V

    return-void
.end method

.method public enablePositiveDrag(ZILandroid/view/View;)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-nez v0, :cond_0

    return-void

    .line 291
    :cond_0
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mEnablePositive:Z

    .line 292
    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->enablePullDownRefresh(ZILandroid/view/View;)V

    return-void
.end method

.method public enablePositiveDrag(ZLandroid/view/View;Z)V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-nez v0, :cond_0

    return-void

    .line 300
    :cond_0
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mEnablePositive:Z

    .line 301
    sget v1, Lcom/taobao/uikit/R$string;->uik_refresh_arrow:I

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->enablePullDownRefresh(ZILandroid/view/View;Z)V

    return-void
.end method

.method public getPositiveDragDistance()I
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->getPullDownDistance()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getPullDirection()I
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->getPullDirection()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public hasArrivedBottomEdge()Z
    .locals 1

    const/4 v0, 0x0

    .line 181
    invoke-direct {p0, v0}, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->hasArrivedBottomEdgeOffset(I)Z

    move-result v0

    return v0
.end method

.method public hasArrivedTopEdge()Z
    .locals 7

    .line 148
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v4, 0x1

    if-nez v1, :cond_3

    .line 151
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_1

    .line 152
    nop

    nop

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 153
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-eq v2, v1, :cond_4

    if-lt v1, v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 157
    :cond_1
    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_4

    .line 158
    nop

    nop

    .line 159
    invoke-direct {p0, v0}, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->ensureIntArray(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    .line 160
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mIntArray:[I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    .line 161
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mIntArray2:[I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstCompletelyVisibleItemPositions([I)[I

    .line 162
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 164
    iget-object v5, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mIntArray:[I

    aget v6, v5, v1

    if-eq v2, v6, :cond_2

    .line 165
    aget v5, v5, v1

    iget-object v6, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mIntArray2:[I

    aget v6, v6, v1

    if-lt v5, v6, :cond_2

    return v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-ne v2, v1, :cond_4

    .line 172
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mEnablePositive:Z

    .line 173
    iget-boolean v1, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mEnableNegative:Z

    .line 174
    iget-object v2, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v2, Lcom/taobao/uikit/feature/view/TRecyclerView;

    invoke-virtual {v2}, Lcom/taobao/uikit/feature/view/TRecyclerView;->getTotalCount()I

    move-result v2

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    if-nez v2, :cond_4

    const/4 v3, 0x1

    :cond_4
    return v3
.end method

.method public isHeadViewHeightContainImage(Z)V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->isHeadViewHeightContainImage(Z)V

    :cond_0
    return-void
.end method

.method public isScrollStop()Z
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

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

    .line 242
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :goto_0
    return-void
.end method

.method public keepTop()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public onDragRefreshComplete()V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->onRefreshComplete()V

    .line 358
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :cond_0
    return-void
.end method

.method public removeFooterView(Landroid/view/View;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mHost:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v0, Lcom/taobao/uikit/feature/view/TRecyclerView;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/view/TRecyclerView;->removeFooterView(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mHost:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v0, Lcom/taobao/uikit/feature/view/TRecyclerView;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/view/TRecyclerView;->removeHeaderView(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public setDownRefreshBackgroundColor(I)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->setDownRefreshBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setFooterView(Landroid/view/View;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mHost:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v0, Lcom/taobao/uikit/feature/view/TRecyclerView;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/view/TRecyclerView;->addFooterView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setHeadView(Landroid/view/View;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mHost:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v0, Lcom/taobao/uikit/feature/view/TRecyclerView;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/view/TRecyclerView;->addHeaderView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setHost(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Lcom/taobao/uikit/feature/features/AbsFeature;->setHost(Landroid/view/View;)V

    .line 79
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->addFooterView()V

    .line 80
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->addHeaderView()V

    const/4 v0, 0x2

    .line 81
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setOverScrollMode(I)V

    .line 82
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mIsAuto:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->addAutoLoadScrollListener(Landroid/support/v7/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setHost(Landroid/view/View;)V
    .locals 0

    .line 25
    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->setHost(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method public setIsNegativeRefreshing()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->setIsUpRefreshing()V

    :cond_0
    return-void
.end method

.method public setIsPositiveRefreshing()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->setIsDownRefreshing()V

    :cond_0
    return-void
.end method

.method public setNegativeDragAuto(Z)V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->setPullUpRefreshAuto(Z)V

    .line 380
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mIsAuto:Z

    .line 381
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->getHost()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->getHost()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->addAutoLoadScrollListener(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0

    .line 385
    :cond_0
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mAutoLoadScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz p1, :cond_1

    .line 386
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->getHost()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/uikit/feature/view/TRecyclerView;

    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mAutoLoadScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/feature/view/TRecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    const/4 p1, 0x0

    .line 387
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mAutoLoadScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    :cond_1
    :goto_0
    return-void
.end method

.method public setNegativeRefreshBackgroundColor(I)V
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->setUpRefreshBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setNegativeRefreshFinish(Z)V
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->setUpRefreshFinish(Z)V

    return-void
.end method

.method public setNegativeTips([Ljava/lang/String;)V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->setUpRefreshTips([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOnDragToRefreshListener(Lcom/taobao/uikit/feature/features/DragToRefreshFeature$OnDragToRefreshListener;)V
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->setOnRefreshListener(Lcom/taobao/uikit/feature/features/DragToRefreshFeature$OnDragToRefreshListener;)V

    :cond_0
    return-void
.end method

.method public setPositiveDragTips([Ljava/lang/String;)V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->setDownRefreshTips([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setPositiveRefreshBackgroundColor(I)V
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->setDownRefreshBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setPositiveRefreshFinish(Z)V
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->setDownRefreshFinish(Z)V

    return-void
.end method

.method public setRefreshViewColor(I)V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->setRefreshViewColor(I)V

    :cond_0
    return-void
.end method

.method public setUpRefreshBackgroundColor(I)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->setUpRefreshBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public trigger()V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeScroll()V

    return-void
.end method
