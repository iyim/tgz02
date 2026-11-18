.class public Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;
.super Ljava/lang/Object;
.source "RefreshContentWrapper.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;
.implements Lcom/alibaba/ailabs/genie/message/refresh/listener/CoordinatorLayoutListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field protected mBoundaryAdapter:Lcom/alibaba/ailabs/genie/message/refresh/impl/ScrollBoundaryDeciderAdapter;

.field protected mContentView:Landroid/view/View;

.field protected mEnableLoadMore:Z

.field protected mEnableRefresh:Z

.field protected mFixedFooter:Landroid/view/View;

.field protected mFixedHeader:Landroid/view/View;

.field protected mLastSpinner:I

.field protected mOriginalContentView:Landroid/view/View;

.field protected mScrollableView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mLastSpinner:I

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mEnableRefresh:Z

    .line 48
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mEnableLoadMore:Z

    .line 50
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/impl/ScrollBoundaryDeciderAdapter;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/message/refresh/impl/ScrollBoundaryDeciderAdapter;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mBoundaryAdapter:Lcom/alibaba/ailabs/genie/message/refresh/impl/ScrollBoundaryDeciderAdapter;

    .line 53
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mOriginalContentView:Landroid/view/View;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public canLoadMore()Z
    .locals 2

    .line 182
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mEnableLoadMore:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mBoundaryAdapter:Lcom/alibaba/ailabs/genie/message/refresh/impl/ScrollBoundaryDeciderAdapter;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/impl/ScrollBoundaryDeciderAdapter;->canLoadMore(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canRefresh()Z
    .locals 2

    .line 177
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mEnableRefresh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mBoundaryAdapter:Lcom/alibaba/ailabs/genie/message/refresh/impl/ScrollBoundaryDeciderAdapter;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/impl/ScrollBoundaryDeciderAdapter;->canRefresh(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected findScrollableView(Landroid/view/View;Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;)V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    .line 60
    instance-of v2, v1, Landroid/support/v4/view/NestedScrollingParent;

    if-eqz v2, :cond_2

    instance-of v2, v1, Landroid/support/v4/view/NestedScrollingChild;

    if-nez v2, :cond_2

    :cond_0
    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 62
    :goto_1
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->findScrollableViewInternal(Landroid/view/View;Z)Landroid/view/View;

    move-result-object p1

    if-ne p1, v1, :cond_4

    :cond_2
    if-eqz v1, :cond_3

    .line 72
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    :cond_3
    return-void

    :cond_4
    if-nez v0, :cond_5

    .line 67
    invoke-static {p1, p2, p0}, Lcom/alibaba/ailabs/genie/message/refresh/utils/DesignUtil;->checkCoordinatorLayout(Landroid/view/View;Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;Lcom/alibaba/ailabs/genie/message/refresh/listener/CoordinatorLayoutListener;)V

    :cond_5
    move-object v1, p1

    goto :goto_0
.end method

.method protected findScrollableViewByPoint(Landroid/view/View;Landroid/graphics/PointF;Landroid/view/View;)Landroid/view/View;
    .locals 5

    .line 105
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 106
    nop

    nop

    .line 107
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 108
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    :goto_0
    if-lez v0, :cond_3

    add-int/lit8 v2, v0, -0x1

    .line 110
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 111
    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget v4, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v2, v3, v4, v1}, Lcom/alibaba/ailabs/genie/message/refresh/utils/SmartUtil;->isTransformedTouchPointInView(Landroid/view/View;Landroid/view/View;FFLandroid/graphics/PointF;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 112
    instance-of p1, v2, Landroid/support/v4/view/ViewPager;

    if-nez p1, :cond_0

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/message/refresh/utils/SmartUtil;->isContentView(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 113
    :cond_0
    iget p1, v1, Landroid/graphics/PointF;->x:F

    iget v0, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, p1, v0}, Landroid/graphics/PointF;->offset(FF)V

    .line 114
    invoke-virtual {p0, v2, p2, p3}, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->findScrollableViewByPoint(Landroid/view/View;Landroid/graphics/PointF;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 115
    iget p1, v1, Landroid/graphics/PointF;->x:F

    neg-float p1, p1

    iget p3, v1, Landroid/graphics/PointF;->y:F

    neg-float p3, p3

    invoke-virtual {p2, p1, p3}, Landroid/graphics/PointF;->offset(FF)V

    :cond_1
    return-object v2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-object p3
.end method

.method protected findScrollableViewInternal(Landroid/view/View;Z)Landroid/view/View;
    .locals 6

    .line 84
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 86
    move-object v1, v0

    nop

    nop

    .line 87
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 88
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    if-nez v2, :cond_3

    .line 89
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    if-nez p2, :cond_1

    if-eq v3, p1, :cond_2

    .line 91
    :cond_1
    invoke-static {v3}, Lcom/alibaba/ailabs/genie/message/refresh/utils/SmartUtil;->isContentView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v3

    goto :goto_0

    .line 93
    :cond_2
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 94
    nop

    nop

    const/4 v4, 0x0

    .line 95
    :goto_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 96
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    move-object p1, v2

    :goto_2
    return-object p1
.end method

.method public getScrollableView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public moveSpinner(III)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq p2, v1, :cond_1

    .line 141
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mOriginalContentView:Landroid/view/View;

    invoke-virtual {v4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    if-lez p1, :cond_0

    int-to-float v4, p1

    .line 145
    invoke-virtual {p2, v4}, Landroid/view/View;->setTranslationY(F)V

    const/4 p2, 0x1

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v4

    cmpl-float v4, v4, v3

    if-lez v4, :cond_1

    .line 147
    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eq p3, v1, :cond_3

    .line 152
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mOriginalContentView:Landroid/view/View;

    invoke-virtual {v1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_3

    if-gez p1, :cond_2

    int-to-float p2, p1

    .line 156
    invoke-virtual {p3, p2}, Landroid/view/View;->setTranslationY(F)V

    const/4 p2, 0x1

    goto :goto_1

    .line 157
    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    .line 158
    invoke-virtual {p3, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    :goto_1
    if-nez p2, :cond_4

    .line 163
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mOriginalContentView:Landroid/view/View;

    int-to-float p3, p1

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 165
    :cond_4
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mOriginalContentView:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 167
    :goto_2
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mFixedHeader:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 168
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 170
    :cond_5
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mFixedFooter:Landroid/view/View;

    if-eqz p2, :cond_6

    .line 171
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_6
    return-void
.end method

.method public onActionDown(Landroid/view/MotionEvent;)V
    .locals 2

    .line 189
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 190
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/PointF;->offset(FF)V

    .line 191
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    if-eq p1, v1, :cond_0

    .line 193
    invoke-virtual {p0, v1, v0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->findScrollableViewByPoint(Landroid/view/View;Landroid/graphics/PointF;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    if-ne p1, v1, :cond_1

    .line 198
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mBoundaryAdapter:Lcom/alibaba/ailabs/genie/message/refresh/impl/ScrollBoundaryDeciderAdapter;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/alibaba/ailabs/genie/message/refresh/impl/ScrollBoundaryDeciderAdapter;->mActionEvent:Landroid/graphics/PointF;

    goto :goto_0

    .line 200
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mBoundaryAdapter:Lcom/alibaba/ailabs/genie/message/refresh/impl/ScrollBoundaryDeciderAdapter;

    iput-object v0, p1, Lcom/alibaba/ailabs/genie/message/refresh/impl/ScrollBoundaryDeciderAdapter;->mActionEvent:Landroid/graphics/PointF;

    :goto_0
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 276
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 278
    :try_start_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mLastSpinner:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v1

    mul-float v0, v0, v1

    .line 279
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    check-cast v1, Landroid/widget/AbsListView;

    float-to-int v0, v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/utils/SmartUtil;->scrollListBy(Landroid/widget/AbsListView;I)V

    goto :goto_0

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    const/4 v2, 0x0

    float-to-int v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->scrollBy(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 286
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 288
    :goto_0
    iput p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mLastSpinner:I

    return-void
.end method

.method public onCoordinatorUpdate(ZZ)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mEnableRefresh:Z

    .line 79
    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mEnableLoadMore:Z

    return-void
.end method

.method public scrollContentWhenFinished(I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    if-gez p1, :cond_0

    const/4 v1, 0x1

    .line 266
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/utils/SmartUtil;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/utils/SmartUtil;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    :cond_1
    iput p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mLastSpinner:I

    return-object p0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public setEnableLoadMoreWhenContentNotFull(Z)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mBoundaryAdapter:Lcom/alibaba/ailabs/genie/message/refresh/impl/ScrollBoundaryDeciderAdapter;

    iput-boolean p1, v0, Lcom/alibaba/ailabs/genie/message/refresh/impl/ScrollBoundaryDeciderAdapter;->mEnableLoadMoreWhenContentNotFull:Z

    return-void
.end method

.method public setScrollBoundaryDecider(Lcom/alibaba/ailabs/genie/message/refresh/interfac/ScrollBoundaryDecider;)V
    .locals 1

    .line 250
    instance-of v0, p1, Lcom/alibaba/ailabs/genie/message/refresh/impl/ScrollBoundaryDeciderAdapter;

    if-eqz v0, :cond_0

    .line 251
    nop

    nop

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mBoundaryAdapter:Lcom/alibaba/ailabs/genie/message/refresh/impl/ScrollBoundaryDeciderAdapter;

    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mBoundaryAdapter:Lcom/alibaba/ailabs/genie/message/refresh/impl/ScrollBoundaryDeciderAdapter;

    iput-object p1, v0, Lcom/alibaba/ailabs/genie/message/refresh/impl/ScrollBoundaryDeciderAdapter;->boundary:Lcom/alibaba/ailabs/genie/message/refresh/interfac/ScrollBoundaryDecider;

    :goto_0
    return-void
.end method

.method public setUpComponent(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .line 208
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->findScrollableView(Landroid/view/View;Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;)V

    if-nez p2, :cond_0

    if-eqz p3, :cond_2

    .line 211
    :cond_0
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mFixedHeader:Landroid/view/View;

    .line 212
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mFixedFooter:Landroid/view/View;

    .line 213
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 214
    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->getRefreshLayout()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 215
    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->getRefreshLayout()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;->getLayout()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 216
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    const/4 v3, 0x0

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 218
    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->getRefreshLayout()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    move-result-object p1

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;->getLayout()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 219
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    const-string v1, "fixed-top"

    .line 221
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 223
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 224
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 225
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 226
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 227
    invoke-static {p2}, Lcom/alibaba/ailabs/genie/message/refresh/utils/SmartUtil;->measureViewHeight(Landroid/view/View;)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 228
    new-instance v4, Landroid/support/v4/widget/Space;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 229
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    if-eqz p3, :cond_2

    const-string p2, "fixed-bottom"

    .line 232
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 234
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 235
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 236
    invoke-virtual {v1, p3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 237
    invoke-virtual {v1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 238
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    invoke-static {p3}, Lcom/alibaba/ailabs/genie/message/refresh/utils/SmartUtil;->measureViewHeight(Landroid/view/View;)I

    move-result v4

    iput v4, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 240
    new-instance v4, Landroid/support/v4/widget/Space;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4, v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/16 p2, 0x50

    .line 241
    iput p2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 242
    invoke-virtual {v0, p3, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method
