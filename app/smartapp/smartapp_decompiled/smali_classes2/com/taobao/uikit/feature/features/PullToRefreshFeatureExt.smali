.class public Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;
.super Lcom/taobao/uikit/feature/features/AbsFeature;
.source "PullToRefreshFeatureExt.java"

# interfaces
.implements Lcom/taobao/uikit/feature/callback/TouchEventCallback;
.implements Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;
.implements Lcom/taobao/uikit/feature/callback/ScrollCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt$OnPullToRefreshListenerExt;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/uikit/feature/features/AbsFeature<",
        "Landroid/widget/ScrollView;",
        ">;",
        "Lcom/taobao/uikit/feature/callback/TouchEventCallback;",
        "Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;",
        "Lcom/taobao/uikit/feature/callback/ScrollCallback;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;

.field private mScroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/AbsFeature;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mScroller:Landroid/widget/Scroller;

    .line 58
    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mScroller:Landroid/widget/Scroller;

    .line 60
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mContext:Landroid/content/Context;

    .line 62
    new-instance p1, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;

    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mScroller:Landroid/widget/Scroller;

    invoke-direct {p1, v0, v1, p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;-><init>(Landroid/content/Context;Landroid/widget/Scroller;Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;)V

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;

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

    .line 108
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;

    if-eqz v0, :cond_0

    .line 110
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mScroller:Landroid/widget/Scroller;

    .line 111
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    const/4 v2, 0x1

    .line 110
    invoke-virtual {v0, v1, v2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->onScrollerStateChanged(IZ)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->invalidate()V

    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mScroller:Landroid/widget/Scroller;

    if-eqz v1, :cond_2

    .line 116
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    const/4 v2, 0x0

    .line 115
    invoke-virtual {v0, v1, v2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->onScrollerStateChanged(IZ)V

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

    .line 137
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public constructor(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public enableJump(Z)V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->enableJump(Z)V

    :cond_0
    return-void
.end method

.method public enablePullDownToRefresh(Z)V
    .locals 2

    .line 76
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 77
    sget v1, Lcom/taobao/uikit/R$drawable;->uik_list_logo:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 80
    invoke-virtual {p0, p1, v0}, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->enablePullDownToRefresh(ZLandroid/view/View;)V

    return-void
.end method

.method public enablePullDownToRefresh(ZILandroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2, p3}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->enablePullDownRefresh(ZILandroid/view/View;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->enablePullDownRefresh(ZILandroid/view/View;)V

    :goto_0
    return-void
.end method

.method public enablePullDownToRefresh(ZLandroid/view/View;)V
    .locals 1

    .line 89
    sget v0, Lcom/taobao/uikit/R$string;->uik_refresh_arrow:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->enablePullDownToRefresh(ZILandroid/view/View;)V

    return-void
.end method

.method public getPullDownDistance()I
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->getPullDownDistance()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getRefreshView()Landroid/view/View;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->getRefreshView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasArrivedBottomEdge()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasArrivedTopEdge()Z
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHeadViewHeightContainImage(Z)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->isHeadViewHeightContainImage(Z)V

    :cond_0
    return-void
.end method

.method public keepBottom()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public keepTop()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setScrollY(I)V

    return-void
.end method

.method public onPullRefreshComplete()V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->onRefreshComplete()V

    :cond_0
    return-void
.end method

.method public removeFooterView(Landroid/view/View;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 3

    .line 233
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mHost:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 235
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mHost:Landroid/view/View;

    check-cast p1, Landroid/widget/ScrollView;

    sget v0, Lcom/taobao/uikit/R$id;->uik_refresh_layout:I

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 236
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ScrollView;

    sget v1, Lcom/taobao/uikit/R$id;->uik_refresh_header:I

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 239
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 240
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 242
    iget-object v2, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mHost:Landroid/view/View;

    check-cast v2, Landroid/widget/ScrollView;

    invoke-virtual {v2, p1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 244
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mHost:Landroid/view/View;

    check-cast p1, Landroid/widget/ScrollView;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 247
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mHost:Landroid/view/View;

    check-cast p1, Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->reset()V

    :cond_0
    return-void
.end method

.method public setDistanceToJump(I)V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;

    if-eqz v0, :cond_0

    .line 341
    iput p1, v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mDistanceToJump:I

    :cond_0
    return-void
.end method

.method public setDownRefreshFinish(Z)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->setDownRefreshFinish(Z)V

    return-void
.end method

.method public setFooterView(Landroid/view/View;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setHeadView(Landroid/view/View;)V
    .locals 5

    .line 173
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mHost:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ScrollView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 176
    sget v0, Lcom/taobao/uikit/R$id;->uik_refresh_header:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 178
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 179
    instance-of v2, v0, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 182
    instance-of v2, v0, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 183
    nop

    nop

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 185
    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 194
    iget-object v4, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mHost:Landroid/view/View;

    check-cast v4, Landroid/widget/ScrollView;

    invoke-virtual {v4, v1}, Landroid/widget/ScrollView;->removeViewAt(I)V

    .line 197
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mHost:Landroid/view/View;

    check-cast v4, Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 198
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 199
    sget v3, Lcom/taobao/uikit/R$id;->uik_refresh_layout:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 200
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mHost:Landroid/view/View;

    check-cast p1, Landroid/widget/ScrollView;

    invoke-virtual {p1, v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setHeadViewBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mHost:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ScrollView;

    sget v1, Lcom/taobao/uikit/R$id;->uik_refresh_header:I

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setHeadViewBackgroundColor(I)V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mHost:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ScrollView;

    sget v1, Lcom/taobao/uikit/R$id;->uik_refresh_header:I

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setHost(Landroid/view/View;)V
    .locals 0

    .line 27
    check-cast p1, Landroid/widget/ScrollView;

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->setHost(Landroid/widget/ScrollView;)V

    return-void
.end method

.method public setHost(Landroid/widget/ScrollView;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/taobao/uikit/feature/features/AbsFeature;->setHost(Landroid/view/View;)V

    .line 68
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;

    invoke-virtual {p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->addHeaderView()V

    return-void
.end method

.method public setOnPullToRefreshListener(Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt$OnPullToRefreshListenerExt;)V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->setOnRefreshListener(Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt$OnPullToRefreshListenerExt;)V

    :cond_0
    return-void
.end method

.method public setPullDownRefreshTips([Ljava/lang/String;)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;

    if-nez v0, :cond_0

    return-void

    .line 277
    :cond_0
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->setDownRefreshTips([Ljava/lang/String;)V

    return-void
.end method

.method public setRefreshViewColor(I)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mRefreshController:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->setRefreshViewColor(I)V

    :cond_0
    return-void
.end method

.method public trigger()V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->computeScroll()V

    return-void
.end method
