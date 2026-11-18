.class public Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "RowScrollRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;,
        Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollEndListener;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0xc8

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final SCALE_DEFAULT:F = 0.5f

.field private static final Smooth_Scroll_Duration:I = 0x64


# instance fields
.field private isAutoScroll:Z

.field private mActivePointerId:I

.field private mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private mContext:Landroid/content/Context;

.field private mFastFling:Z

.field private mFlingDistance:I

.field private mInitialMotionY:F

.field private mLastPosition:I

.field private mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOnScrollEndListener:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollEndListener;

.field private mOnScrollListenerWrapper:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;

.field private mScale:F

.field private mScrollAnchorDown:I

.field private mScrollAnchorUp:I

.field private mScrollH:I

.field private mScrollListener:Lcom/alibaba/ailabs/appbox/view/OnRecycleViewScrollListener;

.field private mSmoothPerInch:F

.field private mSmoothScrollDuration:F

.field private mTotalDelta:I

.field private mTouchSlop:I

.field private mUpVelocity:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x42c80000    # 100.0f

    .line 39
    iput p2, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mSmoothScrollDuration:F

    const/high16 p2, 0x41c80000    # 25.0f

    .line 40
    iput p2, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mSmoothPerInch:F

    const/4 p2, -0x1

    .line 45
    iput p2, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mActivePointerId:I

    const/high16 p2, 0x3f000000    # 0.5f

    .line 53
    iput p2, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mScale:F

    .line 83
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mContext:Landroid/content/Context;

    .line 84
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)Lcom/alibaba/ailabs/appbox/view/OnRecycleViewScrollListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mScrollListener:Lcom/alibaba/ailabs/appbox/view/OnRecycleViewScrollListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mScrollAnchorUp:I

    return p0
.end method

.method static synthetic access$1100(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mScrollAnchorDown:I

    return p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->isAutoScroll:Z

    return p0
.end method

.method static synthetic access$202(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->isAutoScroll:Z

    return p1
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollEndListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mOnScrollEndListener:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollEndListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mFastFling:Z

    return p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mScrollH:I

    return p0
.end method

.method static synthetic access$502(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mScrollH:I

    return p1
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method static synthetic access$702(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mLastPosition:I

    return p1
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mSmoothPerInch:F

    return p0
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mSmoothScrollDuration:F

    return p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    const/high16 v0, 0x43c80000    # 400.0f

    .line 96
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mMinimumVelocity:I

    .line 97
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->getMaxFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mMaximumVelocity:I

    const/high16 v0, 0x41c80000    # 25.0f

    .line 98
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mFlingDistance:I

    .line 100
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mTouchSlop:I

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    const/4 p1, 0x1

    .line 107
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mScrollAnchorUp:I

    .line 108
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mScrollAnchorDown:I

    .line 110
    new-instance p1, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;-><init>(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mOnScrollListenerWrapper:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;

    .line 111
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mOnScrollListenerWrapper:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 113
    new-instance p1, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$1;-><init>(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)V

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private isFastFling()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isFirstViewAtTop()Z
    .locals 2

    .line 240
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 245
    :cond_0
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private resetFastFling()V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 286
    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    const/4 v0, -0x1

    .line 288
    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mActivePointerId:I

    const/4 v0, 0x0

    .line 289
    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mInitialMotionY:F

    const/4 v0, 0x0

    .line 290
    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mTotalDelta:I

    return-void
.end method


# virtual methods
.method public fling(II)Z
    .locals 1

    int-to-float p2, p2

    .line 235
    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mScale:F

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 236
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->fling(II)Z

    move-result p1

    return p1
.end method

.method public nextPage()Z
    .locals 5

    .line 175
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 180
    :cond_0
    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v4, v3, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager;

    if-eqz v4, :cond_2

    .line 181
    nop

    nop

    .line 182
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 183
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iput-boolean v1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->isAutoScroll:Z

    .line 187
    :cond_1
    iput v2, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mLastPosition:I

    .line 190
    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mSmoothPerInch:F

    invoke-virtual {v3, v2, v0}, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager;->smoothScrollToPositionFromTop(IF)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 436
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onDetachedFromWindow()V

    .line 438
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mOnScrollEndListener:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollEndListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 439
    iput-object v1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mOnScrollEndListener:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollEndListener;

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mOnScrollListenerWrapper:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;

    if-eqz v0, :cond_1

    .line 442
    iput-object v1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mOnScrollListenerWrapper:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mScrollListener:Lcom/alibaba/ailabs/appbox/view/OnRecycleViewScrollListener;

    if-eqz v0, :cond_2

    .line 445
    iput-object v1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mScrollListener:Lcom/alibaba/ailabs/appbox/view/OnRecycleViewScrollListener;

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 252
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 258
    iput-boolean v1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mFastFling:Z

    .line 259
    iput-boolean v1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->isAutoScroll:Z

    .line 260
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mActivePointerId:I

    .line 261
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mInitialMotionY:F

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 263
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->getScrollState()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 265
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    .line 266
    iget v2, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 267
    iget v1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mUpVelocity:I

    .line 269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 270
    iget v1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mInitialMotionY:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mTotalDelta:I

    .line 271
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->isFastFling()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mFastFling:Z

    .line 272
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->resetFastFling()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 275
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->resetFastFling()V

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 277
    iput-boolean v1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->isAutoScroll:Z

    .line 280
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public prePage()Z
    .locals 10

    .line 198
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v1, v0, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 199
    check-cast v0, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager;

    .line 201
    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    const/4 v4, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->getHeight()I

    move-result v5

    move-object v7, v4

    const/4 v6, 0x0

    move v4, v1

    :goto_0
    const/4 v8, -0x1

    if-ltz v4, :cond_2

    .line 207
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_1

    .line 212
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v6, v9

    if-lt v6, v5, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    .line 219
    :goto_2
    iput v4, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mLastPosition:I

    if-eq v4, v8, :cond_4

    .line 222
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v1

    if-eqz v1, :cond_3

    .line 223
    iput-boolean v2, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->isAutoScroll:Z

    .line 226
    :cond_3
    iget v1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mSmoothPerInch:F

    invoke-virtual {v0, v4, v1}, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager;->smoothScrollToPositionFromTop(IF)V

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    return v2
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 149
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 151
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-void
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 160
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 161
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-void
.end method

.method public setOnScrollEndListener(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollEndListener;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mOnScrollEndListener:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollEndListener;

    return-void
.end method

.method public setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mOnScrollListenerWrapper:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 155
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mScale:F

    return-void
.end method

.method public setScrollBarListener(Lcom/alibaba/ailabs/appbox/view/OnRecycleViewScrollListener;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mScrollListener:Lcom/alibaba/ailabs/appbox/view/OnRecycleViewScrollListener;

    return-void
.end method

.method public setSmoothPerInch(F)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mSmoothPerInch:F

    return-void
.end method

.method public setSmoothScrollDuration(F)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->mSmoothScrollDuration:F

    return-void
.end method
