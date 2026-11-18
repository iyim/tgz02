.class public Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;
.super Ljava/lang/Object;
.source "RefreshController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController$OnPullDownRefreshCancle;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DONE:I = 0x3

.field public static final DOWN_PULL:I = 0x4

.field private static final INVALID_POINTER:I = -0x1

.field public static final LEFT_PULL:I = 0x7

.field public static final PULL_TO_REFRESH:I = 0x1

.field private static final RATIO:I = 0x3

.field private static final RATIO_X:I = 0x1

.field public static final REFRESHING:I = 0x2

.field public static final RELEASE_TO_REFRESH:I = 0x0

.field public static final RIGHT_PULL:I = 0x6

.field private static final TAG:Ljava/lang/String; = "DownRefreshControler"

.field public static final UP_PULL:I = 0x5


# instance fields
.field protected mActivePointerId:I

.field private mCancle:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController$OnPullDownRefreshCancle;

.field private mContext:Landroid/content/Context;

.field private mDistance:I

.field private mDownPullFinish:Z

.field private mDragRefreshListener:Lcom/taobao/uikit/feature/features/DragToRefreshFeature$OnDragToRefreshListener;

.field private mEdgeJudge:Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;

.field private mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

.field private mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

.field private mIsAutoLoading:Z

.field private mIsBack:Z

.field private mIsHeadViewHeightContainLogoImage:Z

.field private mIsMultiPointer:Z

.field private mIsNeedPullUpToRefresh:Z

.field private mIsRecored:Z

.field private mIsRefreshable:Z

.field private mIsScrolling:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mOrientation:I

.field private mPositionX:I

.field private mPositionY:I

.field private mPreActivePointerId:I

.field private mPreDistance:I

.field private mPrePositionX:I

.field private mPrePositionY:I

.field private mPullDirection:I

.field private mPullDownDistance:I

.field private mPullRefreshListener:Lcom/taobao/uikit/feature/features/PullToRefreshFeature$OnPullToRefreshListener;

.field private mScroller:Landroid/widget/Scroller;

.field private mStartX:I

.field private mStartY:I

.field private mState:I

.field private mUpPullFinish:Z


# direct methods
.method public constructor <init>(Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;Landroid/content/Context;Landroid/widget/Scroller;)V
    .locals 3

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mActivePointerId:I

    const/4 v1, 0x0

    .line 79
    iput-boolean v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsScrolling:Z

    .line 87
    iput-boolean v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mUpPullFinish:Z

    .line 89
    iput-boolean v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mDownPullFinish:Z

    const/4 v2, 0x1

    .line 91
    iput-boolean v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsNeedPullUpToRefresh:Z

    .line 93
    iput-boolean v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsAutoLoading:Z

    .line 95
    iput-boolean v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsHeadViewHeightContainLogoImage:Z

    .line 101
    iput-boolean v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsMultiPointer:Z

    .line 103
    iput v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPositionY:I

    .line 105
    iput v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPositionX:I

    .line 107
    iput v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPrePositionY:I

    .line 109
    iput v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPrePositionX:I

    .line 111
    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPreActivePointerId:I

    .line 114
    iput v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPullDownDistance:I

    .line 117
    iput v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mOrientation:I

    .line 125
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mEdgeJudge:Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;

    .line 126
    iput-object p3, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mScroller:Landroid/widget/Scroller;

    .line 127
    iput-object p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mContext:Landroid/content/Context;

    const/4 p1, 0x3

    .line 128
    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    .line 129
    iput-boolean v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsRefreshable:Z

    return-void
.end method

.method public constructor <init>(Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;Landroid/content/Context;Landroid/widget/Scroller;I)V
    .locals 3

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mActivePointerId:I

    const/4 v1, 0x0

    .line 79
    iput-boolean v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsScrolling:Z

    .line 87
    iput-boolean v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mUpPullFinish:Z

    .line 89
    iput-boolean v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mDownPullFinish:Z

    const/4 v2, 0x1

    .line 91
    iput-boolean v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsNeedPullUpToRefresh:Z

    .line 93
    iput-boolean v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsAutoLoading:Z

    .line 95
    iput-boolean v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsHeadViewHeightContainLogoImage:Z

    .line 101
    iput-boolean v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsMultiPointer:Z

    .line 103
    iput v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPositionY:I

    .line 105
    iput v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPositionX:I

    .line 107
    iput v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPrePositionY:I

    .line 109
    iput v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPrePositionX:I

    .line 111
    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPreActivePointerId:I

    .line 114
    iput v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPullDownDistance:I

    .line 117
    iput v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mOrientation:I

    .line 133
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mEdgeJudge:Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;

    .line 134
    iput-object p3, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mScroller:Landroid/widget/Scroller;

    .line 135
    iput-object p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mContext:Landroid/content/Context;

    const/4 p1, 0x3

    .line 136
    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    .line 137
    iput-boolean v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsRefreshable:Z

    .line 138
    iput p4, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mOrientation:I

    return-void
.end method

.method private JudgeArrivedRecoredEdge(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 318
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mEdgeJudge:Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;

    if-eqz v0, :cond_3

    .line 319
    invoke-interface {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;->hasArrivedTopEdge()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsRecored:Z

    if-nez v0, :cond_1

    .line 320
    iput-boolean v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsRecored:Z

    .line 321
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mStartY:I

    .line 322
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mStartX:I

    .line 323
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 324
    iget v3, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mActivePointerId:I

    if-ne v3, v1, :cond_0

    .line 325
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mActivePointerId:I

    .line 326
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mLastMotionY:F

    .line 327
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mLastMotionX:F

    .line 328
    iget p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mActivePointerId:I

    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPreActivePointerId:I

    :cond_0
    return v2

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mEdgeJudge:Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;

    invoke-interface {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;->hasArrivedBottomEdge()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsRecored:Z

    if-nez v0, :cond_3

    .line 332
    iput-boolean v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsRecored:Z

    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mStartY:I

    .line 334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mStartX:I

    .line 335
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 336
    iget v3, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mActivePointerId:I

    if-ne v3, v1, :cond_2

    .line 337
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mActivePointerId:I

    .line 338
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mLastMotionY:F

    .line 339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mLastMotionX:F

    .line 340
    iget p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mActivePointerId:I

    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPreActivePointerId:I

    :cond_2
    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private changeFooterProgressBarState(I)V
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_0

    .line 698
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->changeProgressBarState(I)V

    :cond_0
    return-void
.end method

.method private changeFooterViewByState()V
    .locals 4

    .line 759
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-nez v0, :cond_0

    return-void

    .line 762
    :cond_0
    iget v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->changeHeaderViewByState(I)V

    .line 763
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsBack:Z

    if-eqz v0, :cond_1

    .line 764
    iput-boolean v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsBack:Z

    goto :goto_0

    .line 765
    :cond_1
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    const/4 v1, 0x2

    const-string v3, "DownRefreshControler"

    if-ne v0, v1, :cond_2

    .line 766
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "\u5237\u65b0\u9020\u6210scroll"

    invoke-static {v3, v1, v0}, Lcom/taobao/uikit/utils/UIKITLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 767
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    invoke-virtual {p0, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->resetFooterViewPadding(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 769
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "\u4e0d\u9700\u8981\u5237\u65b0\u6216\u8005\u5237\u65b0\u5b8c\u6210\u9020\u6210scroll"

    invoke-static {v3, v1, v0}, Lcom/taobao/uikit/utils/UIKITLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 770
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    invoke-virtual {p0, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->resetFooterViewPadding(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private changeHeaderProgressBarState(I)V
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->changeProgressBarState(I)V

    :cond_0
    return-void
.end method

.method private changeHeaderViewByState()V
    .locals 4

    .line 740
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-nez v0, :cond_0

    return-void

    .line 744
    :cond_0
    iget v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->changeHeaderViewByState(I)V

    .line 745
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsBack:Z

    if-eqz v0, :cond_1

    .line 746
    iput-boolean v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsBack:Z

    goto :goto_0

    .line 747
    :cond_1
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    const/4 v1, 0x2

    const-string v3, "DownRefreshControler"

    if-ne v0, v1, :cond_2

    .line 748
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "\u5237\u65b0\u9020\u6210scroll"

    invoke-static {v3, v1, v0}, Lcom/taobao/uikit/utils/UIKITLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 749
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    invoke-direct {p0, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->resetHeadViewPadding(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 751
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "\u4e0d\u9700\u8981\u5237\u65b0\u6216\u8005\u5237\u65b0\u5b8c\u6210\u9020\u6210scroll"

    invoke-static {v3, v1, v0}, Lcom/taobao/uikit/utils/UIKITLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 752
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    invoke-direct {p0, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->resetHeadViewPadding(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private getLeftRealScrollX(I)I
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v1, :cond_0

    .line 304
    invoke-virtual {v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getPaddingLeft()I

    move-result v1

    .line 306
    iget-object v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    .line 307
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    float-to-double v0, v1

    const-wide v2, 0x3ff4cccccccccccdL    # 1.3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-float v0, v0

    int-to-float p1, p1

    mul-float v0, v0, p1

    float-to-int p1, v0

    :cond_0
    return p1
.end method

.method private getPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 0

    .line 683
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 685
    iput p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mActivePointerId:I

    :cond_0
    return p1
.end method

.method private getTopRealScrollY(I)I
    .locals 4

    .line 290
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getPaddingTop()I

    move-result v1

    .line 293
    iget-object v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    .line 294
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    float-to-double v0, v1

    const-wide v2, 0x3ff4cccccccccccdL    # 1.3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-float v0, v0

    int-to-float p1, p1

    mul-float v0, v0, p1

    float-to-int p1, v0

    :cond_0
    return p1
.end method

.method private onRefresh()V
    .locals 2

    .line 860
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPullDirection:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    .line 872
    :cond_1
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mUpPullFinish:Z

    if-eqz v0, :cond_2

    .line 873
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->onRefreshComplete()V

    goto :goto_1

    .line 875
    :cond_2
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsNeedPullUpToRefresh:Z

    if-eqz v0, :cond_7

    .line 876
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPullRefreshListener:Lcom/taobao/uikit/feature/features/PullToRefreshFeature$OnPullToRefreshListener;

    if-eqz v0, :cond_3

    .line 877
    invoke-interface {v0}, Lcom/taobao/uikit/feature/features/PullToRefreshFeature$OnPullToRefreshListener;->onPullUpToRefresh()V

    .line 879
    :cond_3
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mDragRefreshListener:Lcom/taobao/uikit/feature/features/DragToRefreshFeature$OnDragToRefreshListener;

    if-eqz v0, :cond_7

    .line 880
    invoke-interface {v0}, Lcom/taobao/uikit/feature/features/DragToRefreshFeature$OnDragToRefreshListener;->onDragNegative()V

    goto :goto_1

    .line 861
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mDownPullFinish:Z

    if-eqz v0, :cond_5

    .line 862
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->onRefreshComplete()V

    goto :goto_1

    .line 864
    :cond_5
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPullRefreshListener:Lcom/taobao/uikit/feature/features/PullToRefreshFeature$OnPullToRefreshListener;

    if-eqz v0, :cond_6

    .line 865
    invoke-interface {v0}, Lcom/taobao/uikit/feature/features/PullToRefreshFeature$OnPullToRefreshListener;->onPullDownToRefresh()V

    .line 867
    :cond_6
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mDragRefreshListener:Lcom/taobao/uikit/feature/features/DragToRefreshFeature$OnDragToRefreshListener;

    if-eqz v0, :cond_7

    .line 868
    invoke-interface {v0}, Lcom/taobao/uikit/feature/features/DragToRefreshFeature$OnDragToRefreshListener;->onDragPositive()V

    :cond_7
    :goto_1
    return-void
.end method

.method private processActionMove(II)V
    .locals 9

    .line 349
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v0, :cond_4

    .line 351
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPullDirection:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mEdgeJudge:Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;

    invoke-interface {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;->keepTop()V

    .line 357
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsHeadViewHeightContainLogoImage:Z

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getHeight()I

    move-result v0

    goto :goto_0

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getImageHeight()I

    move-result v0

    .line 362
    :goto_0
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->getTopRealScrollY(I)I

    move-result v8

    if-ge v8, v0, :cond_16

    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mStartY:I

    sub-int/2addr p2, v0

    if-lez p2, :cond_16

    .line 364
    iput v7, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    .line 365
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->changeHeaderViewByState()V

    goto/16 :goto_8

    .line 367
    :cond_1
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPullDirection:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_2

    .line 368
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mEdgeJudge:Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;

    invoke-interface {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;->keepBottom()V

    .line 370
    div-int/lit8 v0, p1, 0x3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v8, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v8}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getHeight()I

    move-result v8

    if-ge v0, v8, :cond_16

    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mStartY:I

    sub-int/2addr p2, v0

    if-gez p2, :cond_16

    .line 372
    iput v7, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    .line 373
    iget-boolean p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsNeedPullUpToRefresh:Z

    if-eqz p2, :cond_16

    .line 374
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->changeFooterViewByState()V

    goto/16 :goto_8

    .line 377
    :cond_2
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPullDirection:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_3

    .line 378
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mEdgeJudge:Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;

    invoke-interface {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;->keepTop()V

    .line 380
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getWidth()I

    move-result v0

    .line 381
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->getLeftRealScrollX(I)I

    move-result v8

    if-ge v8, v0, :cond_16

    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mStartX:I

    sub-int/2addr p2, v0

    if-lez p2, :cond_16

    .line 383
    iput v7, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    .line 384
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->changeHeaderViewByState()V

    goto/16 :goto_8

    .line 386
    :cond_3
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPullDirection:I

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_16

    .line 387
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mEdgeJudge:Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;

    invoke-interface {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;->keepBottom()V

    .line 389
    div-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v8, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v8}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getWidth()I

    move-result v8

    if-ge v0, v8, :cond_16

    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mStartX:I

    sub-int/2addr p2, v0

    if-gez p2, :cond_16

    .line 391
    iput v7, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    .line 392
    iget-boolean p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsNeedPullUpToRefresh:Z

    if-eqz p2, :cond_16

    .line 393
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->changeFooterViewByState()V

    goto/16 :goto_8

    :cond_4
    if-ne v0, v7, :cond_11

    .line 400
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPullDirection:I

    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_8

    .line 401
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mEdgeJudge:Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;

    invoke-interface {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;->keepTop()V

    .line 403
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsHeadViewHeightContainLogoImage:Z

    if-eqz v0, :cond_5

    .line 404
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getHeight()I

    move-result v0

    goto :goto_1

    .line 406
    :cond_5
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getImageHeight()I

    move-result v0

    .line 408
    :goto_1
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->getTopRealScrollY(I)I

    move-result v8

    if-lt v8, v0, :cond_6

    .line 410
    iput v6, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    .line 411
    iput-boolean v7, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsBack:Z

    goto :goto_2

    .line 412
    :cond_6
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mStartY:I

    sub-int/2addr p2, v0

    if-gtz p2, :cond_7

    .line 414
    iput v5, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    .line 416
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->changeHeaderViewByState()V

    .line 417
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->getTopRealScrollY(I)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->changeHeaderProgressBarState(I)V

    goto/16 :goto_8

    .line 418
    :cond_8
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPullDirection:I

    if-ne v0, v3, :cond_b

    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_b

    .line 419
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mEdgeJudge:Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;

    invoke-interface {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;->keepBottom()V

    .line 420
    div-int/lit8 v0, p1, 0x3

    iget-object v8, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v8}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getHeight()I

    move-result v8

    mul-int/lit8 v8, v8, -0x1

    if-gt v0, v8, :cond_9

    .line 422
    iput v6, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    .line 423
    iput-boolean v7, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsBack:Z

    goto :goto_3

    .line 425
    :cond_9
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mStartY:I

    sub-int/2addr p2, v0

    if-ltz p2, :cond_a

    .line 427
    iput v5, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    .line 429
    :cond_a
    :goto_3
    iget-boolean p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsNeedPullUpToRefresh:Z

    if-eqz p2, :cond_16

    .line 430
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->changeFooterViewByState()V

    neg-int p2, p1

    .line 431
    div-int/2addr p2, v5

    invoke-direct {p0, p2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->changeFooterProgressBarState(I)V

    goto/16 :goto_8

    .line 433
    :cond_b
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPullDirection:I

    if-ne v0, v2, :cond_e

    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_e

    .line 434
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mEdgeJudge:Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;

    invoke-interface {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;->keepTop()V

    .line 435
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getWidth()I

    move-result v0

    .line 436
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->getLeftRealScrollX(I)I

    move-result v8

    if-lt v8, v0, :cond_c

    .line 438
    iput v6, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    .line 439
    iput-boolean v7, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsBack:Z

    goto :goto_4

    .line 440
    :cond_c
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mStartX:I

    sub-int/2addr p2, v0

    if-gtz p2, :cond_d

    .line 442
    iput v5, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    .line 444
    :cond_d
    :goto_4
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->changeHeaderViewByState()V

    .line 445
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->getLeftRealScrollX(I)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->changeHeaderProgressBarState(I)V

    goto/16 :goto_8

    .line 446
    :cond_e
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPullDirection:I

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_16

    .line 447
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mEdgeJudge:Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;

    invoke-interface {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;->keepBottom()V

    .line 448
    div-int/lit8 v0, p1, 0x1

    iget-object v8, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v8}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getWidth()I

    move-result v8

    mul-int/lit8 v8, v8, -0x1

    if-gt v0, v8, :cond_f

    .line 450
    iput v6, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    .line 451
    iput-boolean v7, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsBack:Z

    goto :goto_5

    .line 452
    :cond_f
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mStartX:I

    sub-int/2addr p2, v0

    if-ltz p2, :cond_10

    .line 454
    iput v5, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    .line 456
    :cond_10
    :goto_5
    iget-boolean p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsNeedPullUpToRefresh:Z

    if-eqz p2, :cond_16

    .line 457
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->changeFooterViewByState()V

    neg-int p2, p1

    .line 458
    div-int/2addr p2, v7

    invoke-direct {p0, p2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->changeFooterProgressBarState(I)V

    goto :goto_8

    :cond_11
    if-ne v0, v5, :cond_16

    if-lez p1, :cond_13

    .line 463
    iget-object p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mEdgeJudge:Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;

    invoke-interface {p2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;->hasArrivedTopEdge()Z

    move-result p2

    if-eqz p2, :cond_13

    .line 464
    iget p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mOrientation:I

    if-ne p2, v7, :cond_12

    const/4 p2, 0x4

    goto :goto_6

    :cond_12
    const/4 p2, 0x6

    :goto_6
    iput p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPullDirection:I

    .line 465
    iput v7, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    .line 466
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->changeHeaderViewByState()V

    goto :goto_8

    :cond_13
    if-gez p1, :cond_16

    .line 467
    iget-object p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mEdgeJudge:Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;

    invoke-interface {p2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;->hasArrivedBottomEdge()Z

    move-result p2

    if-eqz p2, :cond_16

    .line 468
    iget p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mOrientation:I

    if-ne p2, v7, :cond_14

    const/4 p2, 0x5

    goto :goto_7

    :cond_14
    const/4 p2, 0x7

    :goto_7
    iput p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPullDirection:I

    .line 469
    iget-boolean p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsNeedPullUpToRefresh:Z

    if-eqz p2, :cond_15

    .line 470
    iput v7, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    .line 471
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->changeFooterViewByState()V

    goto :goto_8

    .line 473
    :cond_15
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->autoLoadingData()V

    .line 478
    :cond_16
    :goto_8
    iget p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    if-eq p2, v7, :cond_17

    if-nez p2, :cond_1b

    .line 480
    :cond_17
    iget p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPullDirection:I

    if-ne p2, v4, :cond_18

    iget-object p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz p2, :cond_18

    .line 481
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->getTopRealScrollY(I)I

    move-result p1

    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getHeight()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p2, v6, p1, v6, v6}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->setPadding(IIII)V

    goto :goto_9

    .line 482
    :cond_18
    iget p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPullDirection:I

    if-ne p2, v3, :cond_19

    iget-object p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz p2, :cond_19

    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mUpPullFinish:Z

    if-nez v0, :cond_19

    .line 483
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsNeedPullUpToRefresh:Z

    if-eqz v0, :cond_1b

    .line 484
    invoke-virtual {p2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    div-int/2addr p1, v5

    sub-int/2addr v0, p1

    invoke-virtual {p2, v6, v6, v6, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->setPadding(IIII)V

    goto :goto_9

    .line 486
    :cond_19
    iget p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPullDirection:I

    if-ne p2, v2, :cond_1a

    iget-object p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz p2, :cond_1a

    .line 487
    invoke-virtual {p2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->getLeftRealScrollX(I)I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p2, v0, v6, v6, v6}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->setPadding(IIII)V

    goto :goto_9

    .line 488
    :cond_1a
    iget p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPullDirection:I

    if-ne p2, v1, :cond_1b

    iget-object p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz p2, :cond_1b

    .line 489
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsNeedPullUpToRefresh:Z

    if-eqz v0, :cond_1b

    .line 490
    invoke-virtual {p2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    div-int/2addr p1, v7

    sub-int/2addr v0, p1

    invoke-virtual {p2, v6, v6, v0, v6}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->setPadding(IIII)V

    :cond_1b
    :goto_9
    return-void
.end method

.method private resetHeadViewPadding(I)V
    .locals 12

    .line 818
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-nez v1, :cond_0

    return-void

    .line 821
    :cond_0
    iget v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getWidth()I

    move-result v1

    :goto_0
    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne p1, v4, :cond_3

    goto :goto_1

    :cond_3
    if-ne p1, v2, :cond_4

    neg-int v5, v1

    .line 833
    :cond_4
    :goto_1
    iput-boolean v3, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsScrolling:Z

    .line 835
    iget v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mOrientation:I

    if-ne v1, v3, :cond_7

    .line 836
    iget-boolean v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsHeadViewHeightContainLogoImage:Z

    if-eqz v1, :cond_5

    .line 837
    iget-object v6, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mScroller:Landroid/widget/Scroller;

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getPaddingTop()I

    move-result v8

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getPaddingTop()I

    move-result v0

    sub-int v10, v5, v0

    const/16 v11, 0x15e

    invoke-virtual/range {v6 .. v11}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_2

    :cond_5
    if-ne p1, v4, :cond_6

    .line 839
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getPaddingTop()I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v4}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getImageHeight()I

    move-result v4

    iget-object v5, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v5}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v5}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    const/16 v5, 0x15e

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_2

    :cond_6
    if-ne p1, v2, :cond_8

    .line 841
    iget-object v6, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mScroller:Landroid/widget/Scroller;

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getPaddingTop()I

    move-result v8

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getPaddingTop()I

    move-result v0

    sub-int v10, v5, v0

    const/16 v11, 0x15e

    invoke-virtual/range {v6 .. v11}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_2

    .line 844
    :cond_7
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mScroller:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getPaddingLeft()I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v3}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getPaddingLeft()I

    move-result v3

    sub-int v3, v5, v3

    const/4 v4, 0x0

    const/16 v5, 0x15e

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 846
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mEdgeJudge:Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;

    invoke-interface {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;->trigger()V

    return-void
.end method


# virtual methods
.method public addFooterView()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_0

    .line 253
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mEdgeJudge:Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getView()Landroid/view/View;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;->setFooterView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public addHeaderView()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_0

    .line 216
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mEdgeJudge:Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getView()Landroid/view/View;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;->setHeadView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public autoLoadingData()V
    .locals 3

    .line 267
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsNeedPullUpToRefresh:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsAutoLoading:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mUpPullFinish:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 268
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsAutoLoading:Z

    const/4 v1, 0x5

    .line 269
    iput v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPullDirection:I

    .line 270
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    .line 271
    invoke-virtual {v1, v2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->changeHeaderViewByState(I)V

    .line 273
    :cond_0
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPullRefreshListener:Lcom/taobao/uikit/feature/features/PullToRefreshFeature$OnPullToRefreshListener;

    if-eqz v1, :cond_1

    .line 274
    invoke-interface {v1}, Lcom/taobao/uikit/feature/features/PullToRefreshFeature$OnPullToRefreshListener;->onPullUpToRefresh()V

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mDragRefreshListener:Lcom/taobao/uikit/feature/features/DragToRefreshFeature$OnDragToRefreshListener;

    if-eqz v1, :cond_2

    .line 277
    invoke-interface {v1}, Lcom/taobao/uikit/feature/features/DragToRefreshFeature$OnDragToRefreshListener;->onDragNegative()V

    .line 279
    :cond_2
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v1, :cond_3

    .line 280
    invoke-virtual {v1, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->setViewPadding(Z)V

    :cond_3
    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 934
    iput-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPullRefreshListener:Lcom/taobao/uikit/feature/features/PullToRefreshFeature$OnPullToRefreshListener;

    .line 935
    iput-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mDragRefreshListener:Lcom/taobao/uikit/feature/features/DragToRefreshFeature$OnDragToRefreshListener;

    return-void
.end method

.method public enablePullDownRefresh(ZILandroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 158
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->enablePullDownRefresh(ZILandroid/view/View;Z)V

    return-void
.end method

.method public enablePullDownRefresh(ZILandroid/view/View;Z)V
    .locals 6

    if-eqz p1, :cond_2

    .line 163
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-nez p1, :cond_3

    if-nez p3, :cond_0

    .line 165
    new-instance p3, Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mContext:Landroid/content/Context;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 166
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    move-object v3, p3

    .line 169
    new-instance p1, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    iget-object v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mContext:Landroid/content/Context;

    iget p3, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mOrientation:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x3

    const/4 v5, 0x3

    :goto_0
    move-object v0, p1

    move v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;-><init>(Landroid/content/Context;ILandroid/view/View;ZI)V

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    .line 170
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u6700\u8fd1\u66f4\u65b0:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    invoke-virtual {p3}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->setUpdatedTextView(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->addHeaderView()V

    goto :goto_1

    .line 174
    :cond_2
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz p1, :cond_3

    .line 175
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->removeHeaderView()V

    const/4 p1, 0x0

    .line 176
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    :cond_3
    :goto_1
    return-void
.end method

.method public enablePullUpRefresh(ZILandroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 233
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->enablePullUpRefresh(ZILandroid/view/View;Z)V

    return-void
.end method

.method public enablePullUpRefresh(ZILandroid/view/View;Z)V
    .locals 6

    if-eqz p1, :cond_1

    .line 238
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-nez p1, :cond_2

    .line 239
    new-instance p1, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    iget-object v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mOrientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x2

    const/4 v5, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    const/4 v5, 0x4

    :goto_0
    move-object v0, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;-><init>(Landroid/content/Context;ILandroid/view/View;ZI)V

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    .line 240
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u6700\u8fd1\u66f4\u65b0:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    invoke-virtual {p3}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->setUpdatedTextView(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->addFooterView()V

    goto :goto_1

    .line 244
    :cond_1
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz p1, :cond_2

    .line 245
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->removeFooterView()V

    const/4 p1, 0x0

    .line 246
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    :cond_2
    :goto_1
    return-void
.end method

.method public getPullDirection()I
    .locals 1

    .line 930
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPullDirection:I

    return v0
.end method

.method public getPullDownDistance()I
    .locals 1

    .line 679
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPullDownDistance:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 939
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    return v0
.end method

.method public isHeadViewHeightContainImage(Z)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->isHeadViewHeightContainImage(Z)V

    .line 190
    :cond_0
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsHeadViewHeightContainLogoImage:Z

    return-void
.end method

.method public isScrollStop()Z
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public onRefreshComplete()V
    .locals 4

    const/4 v0, 0x3

    .line 888
    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    .line 889
    iget v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPullDirection:I

    const-string v2, "\u6700\u8fd1\u66f4\u65b0:"

    const/4 v3, 0x4

    if-eq v1, v3, :cond_3

    const/4 v3, 0x6

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    if-eq v1, v3, :cond_1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_4

    .line 896
    :cond_1
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v1, :cond_4

    .line 897
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->setUpdatedTextView(Ljava/lang/String;)V

    .line 898
    iget-boolean v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsNeedPullUpToRefresh:Z

    if-eqz v1, :cond_2

    .line 899
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->changeFooterViewByState()V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 901
    iput-boolean v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsAutoLoading:Z

    .line 902
    iget-boolean v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mUpPullFinish:Z

    if-nez v1, :cond_4

    .line 903
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v1, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->changeHeaderViewByState(I)V

    .line 904
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->resetFooterViewPadding(I)V

    goto :goto_1

    .line 890
    :cond_3
    :goto_0
    invoke-static {}, Lcom/taobao/tao/util/TBSoundPlayer;->getInstance()Lcom/taobao/tao/util/TBSoundPlayer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/taobao/tao/util/TBSoundPlayer;->playScene(I)V

    .line 891
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_4

    .line 892
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->setUpdatedTextView(Ljava/lang/String;)V

    .line 893
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->changeHeaderViewByState()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onScrollerStateChanged(IZ)V
    .locals 3

    .line 703
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPullDirection:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 704
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsScrolling:Z

    if-eqz v0, :cond_7

    if-eqz p2, :cond_0

    .line 705
    iget-object p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz p2, :cond_0

    .line 706
    invoke-virtual {p2, v1, p1, v1, v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->setPadding(IIII)V

    goto :goto_0

    .line 708
    :cond_0
    iput-boolean v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsScrolling:Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    .line 712
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsScrolling:Z

    if-eqz v0, :cond_7

    if-eqz p2, :cond_2

    .line 713
    iget-object p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz p2, :cond_2

    .line 714
    invoke-virtual {p2, v1, v1, v1, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->setPadding(IIII)V

    goto :goto_0

    .line 716
    :cond_2
    iput-boolean v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsScrolling:Z

    goto :goto_0

    :cond_3
    const/4 v2, 0x6

    if-ne v0, v2, :cond_5

    .line 720
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsScrolling:Z

    if-eqz v0, :cond_7

    if-eqz p2, :cond_4

    .line 721
    iget-object p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz p2, :cond_4

    .line 722
    invoke-virtual {p2, p1, v1, v1, v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->setPadding(IIII)V

    goto :goto_0

    .line 724
    :cond_4
    iput-boolean v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsScrolling:Z

    goto :goto_0

    :cond_5
    const/4 v2, 0x7

    if-ne v0, v2, :cond_7

    .line 728
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsScrolling:Z

    if-eqz v0, :cond_7

    if-eqz p2, :cond_6

    .line 729
    iget-object p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz p2, :cond_6

    .line 730
    invoke-virtual {p2, v1, v1, p1, v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->setPadding(IIII)V

    goto :goto_0

    .line 732
    :cond_6
    iput-boolean v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsScrolling:Z

    :cond_7
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 9

    .line 497
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsRefreshable:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsScrolling:Z

    if-nez v0, :cond_14

    .line 498
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const-string v1, "DownRefreshControler"

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 585
    :pswitch_0
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 586
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 587
    iget v7, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mActivePointerId:I

    if-ne v6, v7, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 591
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v6

    iput v6, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mLastMotionY:F

    .line 592
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v6

    iput v6, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mLastMotionX:F

    .line 593
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mActivePointerId:I

    .line 595
    :cond_1
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mActivePointerId:I

    invoke-direct {p0, p1, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 596
    iget v6, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mActivePointerId:I

    if-ne v6, v2, :cond_2

    goto/16 :goto_4

    .line 599
    :cond_2
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mLastMotionY:F

    .line 600
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mLastMotionX:F

    .line 602
    new-array p1, v3, [Ljava/lang/Object;

    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mActivePointerId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v4

    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mLastMotionY:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p1, v5

    const-string v0, "ACTION_POINTER_UP : mActivePointerId %d mLastMotionY position : %f"

    invoke-static {v1, v0, p1}, Lcom/taobao/uikit/utils/UIKITLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 573
    :pswitch_1
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 577
    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mActivePointerId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mLastMotionY:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "ACTION_POINTER_DOWN : mActivePointerId %d  position : %f"

    invoke-static {v1, v3, v2}, Lcom/taobao/uikit/utils/UIKITLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 578
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mLastMotionY:F

    .line 579
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mLastMotionX:F

    .line 580
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mActivePointerId:I

    .line 581
    iput-boolean v5, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsMultiPointer:Z

    goto/16 :goto_4

    .line 606
    :pswitch_2
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mActivePointerId:I

    if-ne v0, v2, :cond_3

    .line 607
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 608
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mActivePointerId:I

    .line 609
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mLastMotionY:F

    .line 610
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mLastMotionX:F

    .line 611
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mActivePointerId:I

    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPreActivePointerId:I

    .line 617
    :cond_3
    :try_start_0
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mActivePointerId:I

    invoke-direct {p0, p1, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 618
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    float-to-int v1, v1

    .line 619
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    float-to-int v0, v0

    .line 625
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->JudgeArrivedRecoredEdge(Landroid/view/MotionEvent;)Z

    .line 629
    iget-boolean p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsMultiPointer:Z

    if-eqz p1, :cond_7

    .line 630
    iget p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPreActivePointerId:I

    iget v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mActivePointerId:I

    if-ne p1, v2, :cond_5

    .line 631
    iget p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mOrientation:I

    if-ne v5, p1, :cond_4

    .line 632
    iget p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mDistance:I

    int-to-float p1, p1

    int-to-float v1, v1

    iget v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mLastMotionY:F

    sub-float v4, v1, v2

    add-float/2addr p1, v4

    float-to-int p1, p1

    .line 633
    iget v4, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPositionY:I

    int-to-float v4, v4

    sub-float/2addr v1, v2

    add-float/2addr v4, v1

    float-to-int v1, v4

    .line 634
    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPreDistance:I

    .line 635
    iput v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPrePositionY:I

    goto :goto_2

    .line 637
    :cond_4
    iget p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mDistance:I

    int-to-float p1, p1

    int-to-float v0, v0

    iget v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mLastMotionX:F

    sub-float v4, v0, v2

    add-float/2addr p1, v4

    float-to-int p1, p1

    .line 638
    iget v4, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPositionX:I

    int-to-float v4, v4

    sub-float/2addr v0, v2

    add-float/2addr v4, v0

    float-to-int v0, v4

    .line 639
    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPreDistance:I

    .line 640
    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPrePositionX:I

    goto :goto_2

    .line 643
    :cond_5
    iget p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mOrientation:I

    if-ne v5, p1, :cond_6

    .line 644
    iget p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPreDistance:I

    int-to-float v4, p1

    int-to-float v1, v1

    iget v6, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mLastMotionY:F

    sub-float v7, v1, v6

    add-float/2addr v4, v7

    float-to-int v4, v4

    .line 645
    iget v7, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPrePositionY:I

    int-to-float v8, v7

    sub-float/2addr v1, v6

    add-float/2addr v8, v1

    float-to-int v1, v8

    .line 646
    iput v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPreActivePointerId:I

    .line 647
    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mDistance:I

    .line 648
    iput v7, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPositionY:I

    goto :goto_1

    .line 650
    :cond_6
    iget p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPreDistance:I

    int-to-float v4, p1

    int-to-float v0, v0

    iget v6, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mLastMotionX:F

    sub-float v7, v0, v6

    add-float/2addr v4, v7

    float-to-int v4, v4

    .line 651
    iget v7, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPrePositionX:I

    int-to-float v8, v7

    sub-float/2addr v0, v6

    add-float/2addr v8, v0

    float-to-int v0, v8

    .line 652
    iput v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPreActivePointerId:I

    .line 653
    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mDistance:I

    .line 654
    iput v7, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPositionX:I

    :goto_1
    move p1, v4

    goto :goto_2

    .line 658
    :cond_7
    iget p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mOrientation:I

    if-ne v5, p1, :cond_8

    .line 659
    iget p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mStartY:I

    sub-int p1, v1, p1

    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mDistance:I

    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPreDistance:I

    .line 660
    iput v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPositionY:I

    iput v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPrePositionY:I

    goto :goto_2

    .line 662
    :cond_8
    iget p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mStartX:I

    sub-int p1, v0, p1

    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mDistance:I

    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPreDistance:I

    .line 663
    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPositionX:I

    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPrePositionX:I

    .line 666
    :goto_2
    iget v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    if-eq v2, v3, :cond_14

    iget-boolean v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsRecored:Z

    if-eqz v2, :cond_14

    .line 669
    iget v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mOrientation:I

    if-ne v2, v5, :cond_9

    move v0, v1

    :cond_9
    invoke-direct {p0, p1, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->processActionMove(II)V

    .line 670
    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPullDownDistance:I

    goto/16 :goto_4

    :catch_0
    move-exception p1

    .line 621
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_4

    .line 505
    :pswitch_3
    iget p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    if-eq p1, v3, :cond_13

    .line 506
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPullDirection:I

    const/4 v1, 0x4

    const/4 v6, 0x3

    if-ne v0, v1, :cond_b

    if-ne p1, v5, :cond_a

    .line 508
    iput v6, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    .line 509
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->changeHeaderViewByState()V

    .line 510
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mCancle:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController$OnPullDownRefreshCancle;

    if-eqz p1, :cond_a

    .line 511
    invoke-interface {p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController$OnPullDownRefreshCancle;->onRefreshCancle()V

    .line 514
    :cond_a
    iget p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    if-nez p1, :cond_13

    .line 515
    iput v3, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    .line 516
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->changeHeaderViewByState()V

    .line 517
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->onRefresh()V

    goto :goto_3

    :cond_b
    const/4 v1, 0x5

    if-ne v0, v1, :cond_e

    if-ne p1, v5, :cond_c

    .line 521
    iput v6, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    .line 522
    iget-boolean p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsNeedPullUpToRefresh:Z

    if-eqz p1, :cond_c

    .line 523
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->changeFooterViewByState()V

    .line 527
    :cond_c
    iget p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    if-nez p1, :cond_13

    .line 528
    iput v3, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    .line 529
    iget-boolean p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsNeedPullUpToRefresh:Z

    if-eqz p1, :cond_d

    .line 530
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->changeFooterViewByState()V

    .line 532
    :cond_d
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->onRefresh()V

    goto :goto_3

    :cond_e
    const/4 v1, 0x6

    if-ne v0, v1, :cond_10

    if-ne p1, v5, :cond_f

    .line 536
    iput v6, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    .line 537
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->changeHeaderViewByState()V

    .line 538
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mCancle:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController$OnPullDownRefreshCancle;

    if-eqz p1, :cond_f

    .line 539
    invoke-interface {p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController$OnPullDownRefreshCancle;->onRefreshCancle()V

    .line 542
    :cond_f
    iget p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    if-nez p1, :cond_13

    .line 543
    iput v3, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    .line 544
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->changeHeaderViewByState()V

    .line 545
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->onRefresh()V

    goto :goto_3

    :cond_10
    const/4 v1, 0x7

    if-ne v0, v1, :cond_13

    if-ne p1, v5, :cond_11

    .line 549
    iput v6, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    .line 550
    iget-boolean p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsNeedPullUpToRefresh:Z

    if-eqz p1, :cond_11

    .line 551
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->changeFooterViewByState()V

    .line 555
    :cond_11
    iget p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    if-nez p1, :cond_13

    .line 556
    iput v3, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    .line 557
    iget-boolean p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsNeedPullUpToRefresh:Z

    if-eqz p1, :cond_12

    .line 558
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->changeFooterViewByState()V

    .line 560
    :cond_12
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->onRefresh()V

    .line 564
    :cond_13
    :goto_3
    iput-boolean v4, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsRecored:Z

    .line 565
    iput-boolean v4, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsBack:Z

    .line 566
    iput-boolean v4, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsMultiPointer:Z

    .line 567
    iput v4, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mDistance:I

    .line 568
    iput v4, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPositionY:I

    .line 569
    iput v4, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPositionX:I

    .line 570
    iput v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mActivePointerId:I

    goto :goto_4

    .line 500
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->JudgeArrivedRecoredEdge(Landroid/view/MotionEvent;)Z

    :cond_14
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeFooterView()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_0

    .line 228
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mEdgeJudge:Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getView()Landroid/view/View;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;->removeFooterView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public removeHeaderView()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_0

    .line 222
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mEdgeJudge:Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getView()Landroid/view/View;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;->removeHeaderView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public resetFooterViewPadding(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 779
    iget-object v2, v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-nez v2, :cond_0

    return-void

    .line 782
    :cond_0
    iget v3, v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getHeight()I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getWidth()I

    move-result v2

    :goto_0
    if-nez v2, :cond_2

    return-void

    :cond_2
    const/4 v3, 0x2

    const/4 v5, 0x0

    if-ne v1, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    neg-int v5, v2

    .line 793
    :cond_4
    :goto_1
    iput-boolean v4, v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsScrolling:Z

    .line 794
    iget v1, v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mOrientation:I

    if-ne v1, v4, :cond_5

    .line 795
    iget-object v6, v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mScroller:Landroid/widget/Scroller;

    const/4 v7, 0x0

    iget-object v1, v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getPaddingBottom()I

    move-result v8

    const/4 v9, 0x0

    iget-object v1, v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getPaddingBottom()I

    move-result v1

    sub-int v10, v5, v1

    const/16 v11, 0x15e

    invoke-virtual/range {v6 .. v11}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_2

    .line 797
    :cond_5
    iget-object v12, v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mScroller:Landroid/widget/Scroller;

    iget-object v1, v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getPaddingRight()I

    move-result v13

    const/4 v14, 0x0

    iget-object v1, v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getPaddingRight()I

    move-result v1

    sub-int v15, v5, v1

    const/16 v16, 0x0

    const/16 v17, 0x15e

    invoke-virtual/range {v12 .. v17}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 799
    :goto_2
    iget-object v1, v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mEdgeJudge:Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;

    invoke-interface {v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;->trigger()V

    return-void
.end method

.method public setDownRefreshBackgroundColor(I)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->setRefreshBackground(I)V

    :cond_0
    return-void
.end method

.method public setDownRefreshFinish(Z)V
    .locals 1

    .line 803
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_0

    .line 804
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mDownPullFinish:Z

    .line 805
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->setFinish(Z)V

    :cond_0
    return-void
.end method

.method public setDownRefreshTips([Ljava/lang/String;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->setTipArray([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setIsDownRefreshing()V
    .locals 2

    .line 912
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 913
    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    .line 914
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->changeHeaderViewByState()V

    .line 915
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->setPadding(IIII)V

    const/4 v0, 0x4

    .line 916
    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPullDirection:I

    :cond_0
    return-void
.end method

.method public setIsUpRefreshing()V
    .locals 2

    .line 921
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 922
    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPullDirection:I

    const/4 v0, 0x2

    .line 923
    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mState:I

    .line 924
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->changeHeaderViewByState()V

    .line 925
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public setOnRefreshListener(Lcom/taobao/uikit/feature/features/DragToRefreshFeature$OnDragToRefreshListener;)V
    .locals 0

    .line 855
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mDragRefreshListener:Lcom/taobao/uikit/feature/features/DragToRefreshFeature$OnDragToRefreshListener;

    const/4 p1, 0x1

    .line 856
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsRefreshable:Z

    return-void
.end method

.method public setOnRefreshListener(Lcom/taobao/uikit/feature/features/PullToRefreshFeature$OnPullToRefreshListener;)V
    .locals 0

    .line 850
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mPullRefreshListener:Lcom/taobao/uikit/feature/features/PullToRefreshFeature$OnPullToRefreshListener;

    const/4 p1, 0x1

    .line 851
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsRefreshable:Z

    return-void
.end method

.method public setPullUpRefreshAuto(Z)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    .line 259
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsNeedPullUpToRefresh:Z

    .line 260
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->setProgressBarInitState(Z)V

    .line 262
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->changeHeaderViewByState(I)V

    :cond_0
    return-void
.end method

.method public setRefreshCancle(Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController$OnPullDownRefreshCancle;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mCancle:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController$OnPullDownRefreshCancle;

    return-void
.end method

.method public setRefreshViewColor(I)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->setRefreshViewColor(I)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->setRefreshViewColor(I)V

    :cond_1
    return-void
.end method

.method public setUpRefreshBackgroundColor(I)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->setRefreshBackground(I)V

    :cond_0
    return-void
.end method

.method public setUpRefreshFinish(Z)V
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_0

    .line 811
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mUpPullFinish:Z

    .line 812
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->setFinish(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 814
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mIsAutoLoading:Z

    return-void
.end method

.method public setUpRefreshTips([Ljava/lang/String;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->mFooterViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->setTipArray([Ljava/lang/String;)V

    :cond_0
    return-void
.end method
