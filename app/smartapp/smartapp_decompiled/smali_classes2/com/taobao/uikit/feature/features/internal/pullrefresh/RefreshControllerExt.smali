.class public Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;
.super Ljava/lang/Object;
.source "RefreshControllerExt.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DISTANCE_GAP:I = 0x14

.field public static final DONE:I = 0x3

.field private static final INVALID_POINTER:I = -0x1

.field public static final JUMPED:I = 0x5

.field public static final JUMPING:I = 0x4

.field public static final PULL_TO_REFRESH:I = 0x1

.field public static final REFRESHING:I = 0x2

.field public static final RELEASE_TO_REFRESH:I


# instance fields
.field protected mActivePointerId:I

.field private mAlpha:F

.field private mContext:Landroid/content/Context;

.field private mDistance:I

.field public mDistanceToJump:I

.field private mDownPullFinish:Z

.field private mEdgeJudger:Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;

.field private mEnableJump:Z

.field private mEnableScroll:Z

.field private mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

.field private mIsBack:Z

.field private mIsHeadViewHeightContainLogoImage:Z

.field private mIsMultiPointer:Z

.field private mIsRecored:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mPositionX:I

.field private mPositionY:I

.field private mPreActivePointerId:I

.field private mPreDistance:I

.field private mPrePositionX:I

.field private mPrePositionY:I

.field private mPullDownDistance:I

.field private mPullRefreshListener:Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt$OnPullToRefreshListenerExt;

.field private mScroller:Landroid/widget/Scroller;

.field private mStartX:I

.field private mStartY:I

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Scroller;Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;)V
    .locals 3

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    .line 38
    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mDistanceToJump:I

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mEnableJump:Z

    const/4 v1, 0x3

    .line 57
    iput v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    .line 62
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mDownPullFinish:Z

    .line 75
    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mPositionY:I

    .line 77
    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mPositionX:I

    .line 79
    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mPrePositionY:I

    .line 81
    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mPrePositionX:I

    const/4 v2, -0x1

    .line 83
    iput v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mPreActivePointerId:I

    .line 85
    iput v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mActivePointerId:I

    .line 88
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mIsHeadViewHeightContainLogoImage:Z

    .line 94
    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mPullDownDistance:I

    .line 98
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mIsMultiPointer:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 100
    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mAlpha:F

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mEnableScroll:Z

    .line 107
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mScroller:Landroid/widget/Scroller;

    .line 109
    iput-object p3, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mEdgeJudger:Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;

    .line 110
    iput v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    return-void
.end method

.method private JudgeArrivedRecoredEdge(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mEdgeJudger:Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;

    if-eqz v0, :cond_1

    .line 161
    invoke-interface {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;->hasArrivedTopEdge()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mIsRecored:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mIsRecored:Z

    .line 163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mStartY:I

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mStartX:I

    .line 165
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    .line 166
    iget v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mActivePointerId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 167
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mActivePointerId:I

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mLastMotionY:F

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mLastMotionX:F

    .line 170
    iget p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mActivePointerId:I

    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mPreActivePointerId:I

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private changeHeaderAlpha(F)V
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->changeHeaderAlpha(F)V

    :cond_0
    return-void
.end method

.method private changeHeaderProgressBarState(I)V
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->changeProgressBarState(I)V

    :cond_0
    return-void
.end method

.method private changeHeaderViewByState()V
    .locals 2

    .line 411
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-nez v0, :cond_0

    return-void

    .line 415
    :cond_0
    iget v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->changeHeaderViewByState(I)V

    .line 416
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mIsBack:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 417
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mIsBack:Z

    goto :goto_0

    .line 418
    :cond_1
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 419
    invoke-direct {p0, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->resetHeadViewPadding(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 421
    invoke-direct {p0, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->resetHeadViewPadding(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private getPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 0

    .line 490
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 492
    iput p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mActivePointerId:I

    :cond_0
    return p1
.end method

.method private getTopRealScrollY(I)I
    .locals 0

    return p1
.end method

.method private onRefresh()V
    .locals 1

    .line 471
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mDownPullFinish:Z

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->onRefreshComplete()V

    goto :goto_0

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mPullRefreshListener:Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt$OnPullToRefreshListenerExt;

    if-eqz v0, :cond_1

    .line 475
    invoke-interface {v0}, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt$OnPullToRefreshListenerExt;->onPullDownToRefresh()V

    :cond_1
    :goto_0
    return-void
.end method

.method private processActionMove(II)V
    .locals 8

    .line 179
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 181
    iget v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_0

    if-lez p1, :cond_b

    .line 183
    iget-object p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mEdgeJudger:Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;

    invoke-interface {p2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;->hasArrivedTopEdge()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 184
    iput v4, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    .line 185
    iget p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    invoke-virtual {p0, p2, v5}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->onRefreshStateChanged(IZ)V

    .line 186
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->changeHeaderViewByState()V

    goto/16 :goto_4

    :cond_0
    if-ne v1, v4, :cond_4

    .line 190
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_b

    .line 193
    iget-boolean v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mIsHeadViewHeightContainLogoImage:Z

    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getHeight()I

    move-result v0

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getImageHeight()I

    move-result v0

    .line 199
    :goto_0
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->getTopRealScrollY(I)I

    move-result v1

    if-lt v1, v0, :cond_2

    .line 201
    iput v5, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    .line 202
    iget p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    invoke-virtual {p0, p2, v5}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->onRefreshStateChanged(IZ)V

    .line 203
    iput-boolean v4, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mIsBack:Z

    goto :goto_1

    .line 204
    :cond_2
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mStartY:I

    sub-int/2addr p2, v0

    if-gtz p2, :cond_3

    .line 206
    iput v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    .line 207
    iget p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    invoke-virtual {p0, p2, v5}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->onRefreshStateChanged(IZ)V

    goto :goto_1

    .line 209
    :cond_3
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->getTopRealScrollY(I)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->changeHeaderProgressBarState(I)V

    .line 212
    :goto_1
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->changeHeaderViewByState()V

    goto/16 :goto_4

    :cond_4
    const/high16 v2, 0x41a00000    # 20.0f

    if-nez v1, :cond_7

    .line 215
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v1, :cond_b

    .line 221
    iget-boolean v6, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mIsHeadViewHeightContainLogoImage:Z

    if-eqz v6, :cond_5

    .line 222
    invoke-virtual {v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getHeight()I

    move-result v1

    goto :goto_2

    .line 224
    :cond_5
    invoke-virtual {v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getImageHeight()I

    move-result v1

    .line 227
    :goto_2
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->getTopRealScrollY(I)I

    move-result v6

    if-ge v6, v1, :cond_6

    iget v6, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mStartY:I

    sub-int/2addr p2, v6

    if-lez p2, :cond_6

    .line 229
    iput v4, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    .line 230
    iget p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    invoke-virtual {p0, p2, v5}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->onRefreshStateChanged(IZ)V

    .line 231
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->changeHeaderViewByState()V

    goto/16 :goto_4

    .line 232
    :cond_6
    iget-boolean p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mEnableJump:Z

    if-eqz p2, :cond_b

    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->getTopRealScrollY(I)I

    move-result p2

    sub-int/2addr p2, v1

    int-to-float p2, p2

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v6, v6, v2

    cmpl-float p2, p2, v6

    if-lez p2, :cond_b

    .line 233
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->getTopRealScrollY(I)I

    move-result p2

    sub-int/2addr p2, v1

    int-to-float p2, p2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mDistanceToJump:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    cmpg-float p2, p2, v0

    if-gez p2, :cond_b

    .line 235
    iput v3, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    .line 236
    iget p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    invoke-virtual {p0, p2, v5}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->onRefreshStateChanged(IZ)V

    .line 237
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->changeHeaderViewByState()V

    goto/16 :goto_4

    :cond_7
    if-ne v1, v3, :cond_b

    .line 241
    iget-object p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz p2, :cond_b

    .line 244
    iget-boolean v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mIsHeadViewHeightContainLogoImage:Z

    if-eqz v1, :cond_8

    .line 245
    invoke-virtual {p2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getHeight()I

    move-result p2

    goto :goto_3

    .line 247
    :cond_8
    invoke-virtual {p2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getImageHeight()I

    move-result p2

    .line 250
    :goto_3
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->getTopRealScrollY(I)I

    move-result v1

    sub-int/2addr v1, p2

    int-to-float v1, v1

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v6, v6, v2

    cmpg-float v1, v1, v6

    if-gez v1, :cond_9

    .line 251
    iput v5, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    .line 252
    iget p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    invoke-virtual {p0, p2, v5}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->onRefreshStateChanged(IZ)V

    .line 253
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->changeHeaderViewByState()V

    goto :goto_4

    .line 254
    :cond_9
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->getTopRealScrollY(I)I

    move-result v1

    sub-int/2addr v1, p2

    int-to-float v1, v1

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    iget v7, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mDistanceToJump:I

    int-to-float v7, v7

    mul-float v6, v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v6

    if-lez v1, :cond_a

    const/4 p2, 0x5

    .line 255
    iput p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    .line 256
    iget p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    invoke-virtual {p0, p2, v5}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->onRefreshStateChanged(IZ)V

    .line 257
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->changeHeaderViewByState()V

    .line 258
    iget-object p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mPullRefreshListener:Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt$OnPullToRefreshListenerExt;

    if-eqz p2, :cond_b

    .line 259
    invoke-interface {p2, v4, v7}, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt$OnPullToRefreshListenerExt;->onReadyToJump(ZF)V

    goto :goto_4

    .line 263
    :cond_a
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->getTopRealScrollY(I)I

    move-result v1

    sub-int/2addr v1, p2

    int-to-float v1, v1

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v6, v6, v2

    sub-float/2addr v1, v6

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v6, v6, v2

    div-float/2addr v1, v6

    sub-float/2addr v7, v1

    invoke-direct {p0, v7}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->changeHeaderAlpha(F)V

    .line 265
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mPullRefreshListener:Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt$OnPullToRefreshListenerExt;

    if-eqz v1, :cond_b

    .line 267
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->getTopRealScrollY(I)I

    move-result v6

    sub-int/2addr v6, p2

    int-to-float p2, v6

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v6, v6, v2

    sub-float/2addr p2, v6

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mDistanceToJump:I

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    mul-float v0, v0, v2

    div-float/2addr p2, v0

    .line 266
    invoke-interface {v1, v5, p2}, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt$OnPullToRefreshListenerExt;->onReadyToJump(ZF)V

    .line 274
    :cond_b
    :goto_4
    iget p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    if-eq p2, v4, :cond_c

    if-eqz p2, :cond_c

    if-ne p2, v3, :cond_d

    .line 276
    :cond_c
    iget-object p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz p2, :cond_d

    .line 277
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->getTopRealScrollY(I)I

    move-result v0

    iget-object v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2, v5, v0, v5, v5}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->setPadding(IIII)V

    .line 278
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "processActionMove: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->getTopRealScrollY(I)I

    move-result p1

    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getHeight()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "weina"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void
.end method

.method private resetHeadViewPadding(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 429
    iget-object v2, v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-nez v2, :cond_0

    return-void

    .line 433
    :cond_0
    invoke-virtual {v2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v1, v4, :cond_2

    goto :goto_0

    :cond_2
    if-ne v1, v3, :cond_3

    neg-int v5, v2

    .line 448
    :cond_3
    :goto_0
    iget-boolean v2, v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mIsHeadViewHeightContainLogoImage:Z

    if-eqz v2, :cond_4

    .line 449
    iget-object v6, v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mScroller:Landroid/widget/Scroller;

    const/4 v7, 0x0

    iget-object v1, v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getPaddingTop()I

    move-result v8

    const/4 v9, 0x0

    iget-object v1, v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getPaddingTop()I

    move-result v1

    sub-int v10, v5, v1

    const/16 v11, 0x15e

    invoke-virtual/range {v6 .. v11}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_1

    :cond_4
    if-ne v1, v4, :cond_5

    .line 451
    iget-object v12, v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mScroller:Landroid/widget/Scroller;

    const/4 v13, 0x0

    iget-object v1, v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getPaddingTop()I

    move-result v14

    const/4 v15, 0x0

    iget-object v1, v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getImageHeight()I

    move-result v1

    iget-object v2, v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getHeight()I

    move-result v2

    sub-int v16, v1, v2

    const/16 v17, 0x15e

    invoke-virtual/range {v12 .. v17}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_1

    :cond_5
    if-ne v1, v3, :cond_6

    .line 453
    iget-object v1, v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v3}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getPaddingTop()I

    move-result v3

    const/4 v4, 0x0

    iget-object v6, v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v6}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    const/16 v6, 0x15e

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 455
    :cond_6
    :goto_1
    iget-object v1, v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mEdgeJudger:Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;

    invoke-interface {v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;->trigger()V

    return-void
.end method


# virtual methods
.method public addHeaderView()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mEdgeJudger:Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getView()Landroid/view/View;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;->setHeadView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public enableJump(Z)V
    .locals 0

    .line 538
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mEnableJump:Z

    return-void
.end method

.method public enablePullDownRefresh(ZILandroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 114
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->enablePullDownRefresh(ZILandroid/view/View;Z)V

    return-void
.end method

.method public enablePullDownRefresh(ZILandroid/view/View;Z)V
    .locals 6

    if-eqz p1, :cond_1

    .line 119
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-nez p1, :cond_2

    if-nez p3, :cond_0

    .line 121
    new-instance p3, Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mContext:Landroid/content/Context;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 122
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    move-object v3, p3

    .line 125
    new-instance p1, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    iget-object v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    move-object v0, p1

    move v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;-><init>(Landroid/content/Context;ILandroid/view/View;ZI)V

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    .line 129
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

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

    .line 130
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->addHeaderView()V

    goto :goto_0

    .line 133
    :cond_1
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz p1, :cond_2

    .line 134
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->removeHeaderView()V

    const/4 p1, 0x0

    .line 135
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    :cond_2
    :goto_0
    return-void
.end method

.method public getPullDownDistance()I
    .locals 1

    .line 528
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mPullDownDistance:I

    return v0
.end method

.method public getRefreshView()Landroid/view/View;
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getRefreshView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 518
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    return v0
.end method

.method public isHeadViewHeightContainImage(Z)V
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->isHeadViewHeightContainImage(Z)V

    .line 550
    :cond_0
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mIsHeadViewHeightContainLogoImage:Z

    return-void
.end method

.method public onRefreshComplete()V
    .locals 3

    const/4 v0, 0x3

    .line 481
    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    .line 482
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->onRefreshStateChanged(IZ)V

    .line 483
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_0

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6700\u8fd1\u66f4\u65b0:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->setUpdatedTextView(Ljava/lang/String;)V

    .line 485
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->changeHeaderViewByState()V

    :cond_0
    return-void
.end method

.method public onRefreshStateChanged(IZ)V
    .locals 2

    .line 570
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 571
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mEdgeJudger:Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;

    check-cast v0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->getHost()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/uikit/feature/view/TScrollView;

    nop

    nop

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/feature/view/TScrollView;->setScrollingEnabled(Z)V

    .line 572
    iput-boolean v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mEnableScroll:Z

    goto :goto_0

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mEdgeJudger:Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;

    check-cast v0, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt;->getHost()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/uikit/feature/view/TScrollView;

    nop

    nop

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/feature/view/TScrollView;->setScrollingEnabled(Z)V

    .line 575
    iput-boolean v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mEnableScroll:Z

    .line 579
    :goto_0
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mPullRefreshListener:Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt$OnPullToRefreshListenerExt;

    if-eqz v0, :cond_1

    .line 580
    invoke-interface {v0, p1, p2}, Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt$OnPullToRefreshListenerExt;->onRefreshStateChanged(IZ)V

    :cond_1
    return-void
.end method

.method public onScrollerStateChanged(IZ)V
    .locals 1

    .line 401
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mEnableScroll:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 402
    iget-object p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 403
    invoke-virtual {p2, v0, p1, v0, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->setPadding(IIII)V

    .line 404
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onScrollerStateChanged: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "weina"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7

    .line 285
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 322
    :pswitch_0
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 323
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 324
    iget v5, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mActivePointerId:I

    if-ne v2, v5, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 328
    :goto_0
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mLastMotionY:F

    .line 329
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mLastMotionX:F

    .line 330
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mActivePointerId:I

    .line 332
    :cond_1
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mActivePointerId:I

    invoke-direct {p0, p1, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 333
    iget v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mActivePointerId:I

    if-ne v2, v1, :cond_2

    goto/16 :goto_2

    .line 336
    :cond_2
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mLastMotionY:F

    .line 337
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mLastMotionX:F

    goto/16 :goto_2

    .line 314
    :pswitch_1
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 315
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mLastMotionY:F

    .line 316
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mLastMotionX:F

    .line 317
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mActivePointerId:I

    .line 318
    iput-boolean v3, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mIsMultiPointer:Z

    goto/16 :goto_2

    .line 340
    :pswitch_2
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mActivePointerId:I

    if-ne v0, v1, :cond_3

    .line 341
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 342
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mActivePointerId:I

    .line 343
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mLastMotionY:F

    .line 344
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mLastMotionX:F

    .line 345
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mActivePointerId:I

    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mPreActivePointerId:I

    .line 350
    :cond_3
    :try_start_0
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mActivePointerId:I

    invoke-direct {p0, p1, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 351
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    float-to-int v0, v0

    .line 356
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->JudgeArrivedRecoredEdge(Landroid/view/MotionEvent;)Z

    .line 359
    iget-boolean p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mIsMultiPointer:Z

    if-eqz p1, :cond_5

    .line 360
    iget p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mPreActivePointerId:I

    iget v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mActivePointerId:I

    if-ne p1, v1, :cond_4

    .line 361
    iget p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mDistance:I

    int-to-float p1, p1

    int-to-float v0, v0

    iget v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mLastMotionY:F

    sub-float v3, v0, v1

    add-float/2addr p1, v3

    float-to-int p1, p1

    .line 362
    iget v3, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mPositionY:I

    int-to-float v3, v3

    sub-float/2addr v0, v1

    add-float/2addr v3, v0

    float-to-int v0, v3

    .line 363
    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mPreDistance:I

    .line 364
    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mPrePositionY:I

    goto :goto_1

    .line 366
    :cond_4
    iget p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mPreDistance:I

    int-to-float v3, p1

    int-to-float v0, v0

    iget v4, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mLastMotionY:F

    sub-float v5, v0, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    .line 367
    iget v5, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mPrePositionY:I

    int-to-float v6, v5

    sub-float/2addr v0, v4

    add-float/2addr v6, v0

    float-to-int v0, v6

    .line 368
    iput v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mPreActivePointerId:I

    .line 369
    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mDistance:I

    .line 370
    iput v5, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mPositionY:I

    move p1, v3

    goto :goto_1

    .line 373
    :cond_5
    iget p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mStartY:I

    sub-int p1, v0, p1

    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mDistance:I

    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mPreDistance:I

    .line 374
    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mPositionY:I

    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mPrePositionY:I

    .line 377
    :goto_1
    iget v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    if-eq v1, v2, :cond_9

    iget-boolean v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mIsRecored:Z

    if-eqz v1, :cond_9

    .line 379
    invoke-direct {p0, p1, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->processActionMove(II)V

    .line 380
    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mPullDownDistance:I

    goto :goto_2

    :catch_0
    move-exception p1

    .line 353
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 292
    :pswitch_3
    iget p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    if-eq p1, v2, :cond_8

    if-ne p1, v3, :cond_6

    const/4 p1, 0x3

    .line 294
    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    .line 295
    iget p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    invoke-virtual {p0, p1, v3}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->onRefreshStateChanged(IZ)V

    .line 296
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->changeHeaderViewByState()V

    .line 298
    :cond_6
    iget p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    if-eqz p1, :cond_7

    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 299
    :cond_7
    iput v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    .line 300
    iget p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    invoke-virtual {p0, p1, v4}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->onRefreshStateChanged(IZ)V

    .line 301
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->changeHeaderViewByState()V

    .line 302
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->onRefresh()V

    .line 305
    :cond_8
    iput-boolean v4, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mIsRecored:Z

    .line 306
    iput-boolean v4, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mIsBack:Z

    .line 307
    iput-boolean v4, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mIsMultiPointer:Z

    .line 308
    iput v4, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mDistance:I

    .line 309
    iput v4, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mPositionY:I

    .line 310
    iput v4, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mPositionX:I

    .line 311
    iput v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mActivePointerId:I

    goto :goto_2

    .line 287
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->JudgeArrivedRecoredEdge(Landroid/view/MotionEvent;)Z

    :cond_9
    :goto_2
    return-void

    nop

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

.method public removeHeaderView()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mEdgeJudger:Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->getView()Landroid/view/View;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/IViewEdgeJudge;->removeHeaderView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 561
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    .line 562
    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    .line 563
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->onRefreshStateChanged(IZ)V

    .line 564
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->changeHeaderViewByState()V

    :cond_0
    return-void
.end method

.method public setDownRefreshFinish(Z)V
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_0

    .line 499
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mDownPullFinish:Z

    .line 500
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->setFinish(Z)V

    :cond_0
    return-void
.end method

.method public setDownRefreshTips([Ljava/lang/String;)V
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->setTipArray([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setIsDownRefreshing()V
    .locals 2

    .line 509
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 510
    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    .line 511
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mState:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->onRefreshStateChanged(IZ)V

    .line 512
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->changeHeaderViewByState()V

    .line 513
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public setOnRefreshListener(Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt$OnPullToRefreshListenerExt;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mPullRefreshListener:Lcom/taobao/uikit/feature/features/PullToRefreshFeatureExt$OnPullToRefreshListenerExt;

    return-void
.end method

.method public setRefreshViewColor(I)V
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshControllerExt;->mHeaderViewManager:Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;

    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadViewManager;->setRefreshViewColor(I)V

    :cond_0
    return-void
.end method
