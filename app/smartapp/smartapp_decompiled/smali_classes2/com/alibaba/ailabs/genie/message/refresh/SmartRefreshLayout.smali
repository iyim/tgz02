.class public Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SmartRefreshLayout.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.implements Landroid/support/v4/view/NestedScrollingParent;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;,
        Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$LayoutParams;,
        Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;,
        Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$FlingRunnable;
    }
.end annotation


# static fields
.field protected static sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

.field protected static sFooterCreator:Lcom/alibaba/ailabs/genie/message/refresh/interfac/DefaultRefreshFooterCreator;

.field protected static sHeaderCreator:Lcom/alibaba/ailabs/genie/message/refresh/interfac/DefaultRefreshHeaderCreator;


# instance fields
.field protected animationRunnable:Ljava/lang/Runnable;

.field protected mAttachedToWindow:Z

.field protected mCurrentVelocity:I

.field protected mDisableContentWhenLoading:Z

.field protected mDisableContentWhenRefresh:Z

.field protected mDragDirection:C

.field protected mDragRate:F

.field protected mEnableAutoLoadMore:Z

.field protected mEnableClipFooterWhenFixedBehind:Z

.field protected mEnableClipHeaderWhenFixedBehind:Z

.field protected mEnableDisallowIntercept:Z

.field protected mEnableFooterFollowWhenNoMoreData:Z

.field protected mEnableFooterTranslationContent:Z

.field protected mEnableHeaderTranslationContent:Z

.field protected mEnableLoadMore:Z

.field protected mEnableLoadMoreWhenContentNotFull:Z

.field protected mEnableNestedScrolling:Z

.field protected mEnableOverScrollBounce:Z

.field protected mEnableOverScrollDrag:Z

.field protected mEnablePreviewInEditMode:Z

.field protected mEnablePureScrollMode:Z

.field protected mEnableRefresh:Z

.field protected mEnableScrollContentWhenLoaded:Z

.field protected mEnableScrollContentWhenRefreshed:Z

.field protected mFalsifyEvent:Landroid/view/MotionEvent;

.field protected mFixedFooterViewId:I

.field protected mFixedHeaderViewId:I

.field protected mFloorDuration:I

.field protected mFooterBackgroundColor:I

.field protected mFooterHeight:I

.field protected mFooterHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

.field protected mFooterInsetStart:I

.field protected mFooterLocked:Z

.field protected mFooterMaxDragRate:F

.field protected mFooterNeedTouchEventWhenLoading:Z

.field protected mFooterNoMoreData:Z

.field protected mFooterNoMoreDataEffective:Z

.field protected mFooterTranslationViewId:I

.field protected mFooterTriggerRate:F

.field protected mHandler:Landroid/os/Handler;

.field protected mHeaderBackgroundColor:I

.field protected mHeaderHeight:I

.field protected mHeaderHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

.field protected mHeaderInsetStart:I

.field protected mHeaderMaxDragRate:F

.field protected mHeaderNeedTouchEventWhenRefreshing:Z

.field protected mHeaderTranslationViewId:I

.field protected mHeaderTriggerRate:F

.field protected mIsBeingDragged:Z

.field protected mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

.field protected mLastOpenTime:J

.field protected mLastSpinner:I

.field protected mLastTouchX:F

.field protected mLastTouchY:F

.field protected mLoadMoreListener:Lcom/alibaba/ailabs/genie/message/refresh/listener/OnLoadMoreListener;

.field protected mManualFooterTranslationContent:Z

.field protected mManualHeaderTranslationContent:Z

.field protected mManualLoadMore:Z

.field protected mMaximumVelocity:I

.field protected mMinimumVelocity:I

.field protected mNestedChild:Landroid/support/v4/view/NestedScrollingChildHelper;

.field protected mNestedInProgress:Z

.field protected mNestedParent:Landroid/support/v4/view/NestedScrollingParentHelper;

.field protected mPaint:Landroid/graphics/Paint;

.field protected mParentOffsetInWindow:[I

.field protected mPrimaryColors:[I

.field protected mReboundDuration:I

.field protected mReboundInterpolator:Landroid/view/animation/Interpolator;

.field protected mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

.field protected mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

.field protected mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

.field protected mRefreshListener:Lcom/alibaba/ailabs/genie/message/refresh/listener/OnRefreshListener;

.field protected mScreenHeightPixels:I

.field protected mScrollBoundaryDecider:Lcom/alibaba/ailabs/genie/message/refresh/interfac/ScrollBoundaryDecider;

.field protected mScroller:Landroid/widget/Scroller;

.field protected mSpinner:I

.field protected mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

.field protected mSuperDispatchTouchEvent:Z

.field protected mTotalUnconsumed:I

.field protected mTouchSlop:I

.field protected mTouchSpinner:I

.field protected mTouchX:F

.field protected mTouchY:F

.field protected mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mVerticalPermit:Z

.field protected mViceState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

.field protected reboundAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 203
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 208
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 212
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x12c

    .line 83
    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFloorDuration:I

    .line 84
    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mReboundDuration:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 90
    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mDragRate:F

    const/16 v0, 0x6e

    .line 91
    iput-char v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mDragDirection:C

    const/4 v0, -0x1

    .line 95
    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFixedHeaderViewId:I

    .line 96
    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFixedFooterViewId:I

    .line 97
    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderTranslationViewId:I

    .line 98
    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterTranslationViewId:I

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableRefresh:Z

    const/4 v1, 0x0

    .line 111
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 112
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    .line 113
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    .line 114
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    .line 115
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    .line 116
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    .line 117
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    .line 118
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableOverScrollBounce:Z

    .line 119
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    .line 120
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    .line 121
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnablePureScrollMode:Z

    .line 122
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableScrollContentWhenLoaded:Z

    .line 123
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableScrollContentWhenRefreshed:Z

    .line 124
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    .line 125
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableNestedScrolling:Z

    .line 126
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mDisableContentWhenRefresh:Z

    .line 127
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mDisableContentWhenLoading:Z

    .line 128
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNoMoreData:Z

    .line 129
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    .line 131
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mManualLoadMore:Z

    .line 133
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mManualHeaderTranslationContent:Z

    .line 134
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mManualFooterTranslationContent:Z

    const/4 v2, 0x2

    .line 146
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mParentOffsetInWindow:[I

    .line 147
    new-instance v3, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v3, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mNestedChild:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 148
    new-instance v3, Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {v3, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mNestedParent:Landroid/support/v4/view/NestedScrollingParentHelper;

    .line 153
    sget-object v3, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->DEFAULT_UN_NOTIFY:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    iput-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    .line 155
    sget-object v3, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->DEFAULT_UN_NOTIFY:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    iput-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    const/high16 v3, 0x40200000    # 2.5f

    .line 160
    iput v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderMaxDragRate:F

    .line 161
    iput v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterMaxDragRate:F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 162
    iput v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderTriggerRate:F

    .line 163
    iput v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterTriggerRate:F

    .line 172
    new-instance v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;

    invoke-direct {v3, p0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;-><init>(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;)V

    iput-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    .line 177
    sget-object v3, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->None:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iput-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    .line 186
    sget-object v3, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->None:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iput-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mViceState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const-wide/16 v3, 0x0

    .line 188
    iput-wide v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastOpenTime:J

    .line 190
    iput v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderBackgroundColor:I

    .line 191
    iput v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterBackgroundColor:I

    .line 198
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterLocked:Z

    .line 783
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mVerticalPermit:Z

    const/4 v3, 0x0

    .line 818
    iput-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    .line 214
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 216
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    .line 217
    new-instance v4, Landroid/widget/Scroller;

    invoke-direct {v4, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    .line 218
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mScreenHeightPixels:I

    .line 220
    new-instance v4, Lcom/alibaba/ailabs/genie/message/refresh/utils/SmartUtil;

    sget v5, Lcom/alibaba/ailabs/genie/message/refresh/utils/SmartUtil;->INTERPOLATOR_VISCOUS_FLUID:I

    invoke-direct {v4, v5}, Lcom/alibaba/ailabs/genie/message/refresh/utils/SmartUtil;-><init>(I)V

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mReboundInterpolator:Landroid/view/animation/Interpolator;

    .line 223
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchSlop:I

    .line 226
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mMinimumVelocity:I

    .line 229
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mMaximumVelocity:I

    const/high16 v3, 0x42700000    # 60.0f

    .line 231
    invoke-static {v3}, Lcom/alibaba/ailabs/genie/message/refresh/utils/SmartUtil;->dp2px(F)I

    move-result v3

    iput v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeight:I

    const/high16 v3, 0x42c80000    # 100.0f

    .line 232
    invoke-static {v3}, Lcom/alibaba/ailabs/genie/message/refresh/utils/SmartUtil;->dp2px(F)I

    move-result v3

    iput v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeight:I

    .line 234
    sget-object v3, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 236
    sget p2, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_android_clipToPadding:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 237
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 239
    :cond_0
    sget p2, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_android_clipChildren:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-nez p2, :cond_1

    .line 240
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 243
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setInitResource(Landroid/content/res/TypedArray;)V

    .line 245
    sget p2, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlAccentColor:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 246
    sget v3, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlPrimaryColor:I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p2, :cond_2

    .line 249
    new-array v2, v2, [I

    aput v3, v2, v1

    aput p2, v2, v0

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mPrimaryColors:[I

    goto :goto_0

    .line 251
    :cond_2
    new-array p2, v0, [I

    aput v3, p2, v1

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mPrimaryColors:[I

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 254
    new-array v2, v2, [I

    aput v1, v2, v1

    aput p2, v2, v0

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mPrimaryColors:[I

    .line 257
    :cond_4
    :goto_0
    iget-boolean p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnablePureScrollMode:Z

    if-eqz p2, :cond_5

    iget-boolean p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mManualLoadMore:Z

    if-nez p2, :cond_5

    iget-boolean p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez p2, :cond_5

    .line 258
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 261
    :cond_5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$001(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 77
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$101(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 77
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$201(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 77
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$301(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 77
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$401(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 77
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$501(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 77
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static setDefaultRefreshFooterCreator(Lcom/alibaba/ailabs/genie/message/refresh/interfac/DefaultRefreshFooterCreator;)V
    .locals 0
    .param p0    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/DefaultRefreshFooterCreator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 3025
    sput-object p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->sFooterCreator:Lcom/alibaba/ailabs/genie/message/refresh/interfac/DefaultRefreshFooterCreator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setDefaultRefreshHeaderCreator(Lcom/alibaba/ailabs/genie/message/refresh/interfac/DefaultRefreshHeaderCreator;)V
    .locals 0
    .param p0    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/DefaultRefreshHeaderCreator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 3016
    sput-object p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->sHeaderCreator:Lcom/alibaba/ailabs/genie/message/refresh/interfac/DefaultRefreshHeaderCreator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private setInitResource(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 265
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlDragRate:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mDragRate:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mDragRate:F

    .line 266
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlHeaderMaxDragRate:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderMaxDragRate:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderMaxDragRate:F

    .line 267
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlFooterMaxDragRate:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterMaxDragRate:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterMaxDragRate:F

    .line 268
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlHeaderTriggerRate:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderTriggerRate:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderTriggerRate:F

    .line 269
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlFooterTriggerRate:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterTriggerRate:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterTriggerRate:F

    .line 270
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlEnableRefresh:I

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableRefresh:Z

    .line 271
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlReboundDuration:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mReboundDuration:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mReboundDuration:I

    .line 272
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlEnableLoadMore:I

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 273
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlHeaderHeight:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeight:I

    .line 274
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlFooterHeight:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeight:I

    .line 275
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlHeaderInsetStart:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderInsetStart:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderInsetStart:I

    .line 276
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlFooterInsetStart:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterInsetStart:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterInsetStart:I

    .line 277
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlDisableContentWhenRefresh:I

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mDisableContentWhenRefresh:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mDisableContentWhenRefresh:Z

    .line 278
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlDisableContentWhenLoading:I

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mDisableContentWhenLoading:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mDisableContentWhenLoading:Z

    .line 279
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlEnableHeaderTranslationContent:I

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    .line 280
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlEnableFooterTranslationContent:I

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    .line 281
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlEnablePreviewInEditMode:I

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    .line 282
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlEnableAutoLoadMore:I

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    .line 283
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlEnableOverScrollBounce:I

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableOverScrollBounce:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableOverScrollBounce:Z

    .line 284
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlEnablePureScrollMode:I

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnablePureScrollMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnablePureScrollMode:Z

    .line 285
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlEnableScrollContentWhenLoaded:I

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableScrollContentWhenLoaded:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableScrollContentWhenLoaded:Z

    .line 286
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlEnableScrollContentWhenRefreshed:I

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableScrollContentWhenRefreshed:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableScrollContentWhenRefreshed:Z

    .line 287
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlEnableLoadMoreWhenContentNotFull:I

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    .line 288
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlEnableFooterFollowWhenLoadFinished:I

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    .line 289
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlEnableFooterFollowWhenNoMoreData:I

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    .line 290
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlEnableClipHeaderWhenFixedBehind:I

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    .line 291
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlEnableClipFooterWhenFixedBehind:I

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    .line 292
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlEnableOverScrollDrag:I

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    .line 293
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlFixedHeaderViewId:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFixedHeaderViewId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFixedHeaderViewId:I

    .line 294
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlFixedFooterViewId:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFixedFooterViewId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFixedFooterViewId:I

    .line 295
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlHeaderTranslationViewId:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderTranslationViewId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderTranslationViewId:I

    .line 296
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlFooterTranslationViewId:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterTranslationViewId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterTranslationViewId:I

    .line 297
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlEnableNestedScrolling:I

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableNestedScrolling:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableNestedScrolling:Z

    .line 298
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mNestedChild:Landroid/support/v4/view/NestedScrollingChildHelper;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableNestedScrolling:Z

    invoke-virtual {v0, v1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 300
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mManualLoadMore:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlEnableLoadMore:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mManualLoadMore:Z

    .line 301
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mManualHeaderTranslationContent:Z

    if-nez v0, :cond_3

    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlEnableHeaderTranslationContent:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mManualHeaderTranslationContent:Z

    .line 302
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mManualFooterTranslationContent:Z

    if-nez v0, :cond_4

    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlEnableFooterTranslationContent:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mManualFooterTranslationContent:Z

    .line 303
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlHeaderHeight:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->XML_LAYOUT_UN_NOTIFY:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    :goto_4
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    .line 304
    sget v0, Lcom/alibaba/ailabs/genie/message/R$styleable;->SmartRefreshLayout_srlFooterHeight:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->XML_LAYOUT_UN_NOTIFY:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    goto :goto_5

    :cond_7
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    :goto_5
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    return-void
.end method


# virtual methods
.method protected animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;
    .locals 4

    .line 1444
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    .line 1445
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    .line 1446
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1447
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1448
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 1450
    :cond_0
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x2

    .line 1451
    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 1452
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1453
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1454
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$3;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$3;-><init>(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1478
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$4;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$4;-><init>(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1486
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1488
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 1489
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    return-object p1

    :cond_1
    return-object v1
.end method

.method protected animSpinnerBounce(F)V
    .locals 3

    .line 1500
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    .line 1501
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Refreshing:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->TwoLevel:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v1, v2, :cond_1

    .line 1502
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeight:I

    invoke-direct {v0, p0, p1, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;-><init>(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;FI)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    cmpg-float v0, p1, v0

    if-gez v0, :cond_4

    .line 1503
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Loading:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 1504
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 1505
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Refreshing:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-eq v0, v1, :cond_4

    .line 1506
    :cond_3
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeight:I

    neg-int v1, v1

    invoke-direct {v0, p0, p1, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;-><init>(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;FI)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 1507
    :cond_4
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableOverScrollBounce:Z

    if-eqz v0, :cond_5

    .line 1508
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;-><init>(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;FI)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    :cond_5
    :goto_0
    return-void
.end method

.method public autoLoadMore()Z
    .locals 5

    .line 2907
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mReboundDuration:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeight:I

    int-to-float v2, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterMaxDragRate:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    mul-float v2, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    int-to-float v1, v1

    div-float/2addr v2, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v2, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->autoLoadMore(IIFZ)Z

    move-result v0

    return v0
.end method

.method public autoLoadMore(IIFZ)Z
    .locals 2

    .line 2947
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->None:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v0, :cond_1

    .line 2948
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$9;

    invoke-direct {v0, p0, p3, p2, p4}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$9;-><init>(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;FIZ)V

    .line 2998
    sget-object p2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Loading:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setViceState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    if-lez p1, :cond_0

    .line 3000
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    int-to-long p3, p1

    invoke-virtual {p2, v0, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3002
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public autoLoadMoreAnimationOnly()Z
    .locals 5

    .line 2932
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mReboundDuration:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeight:I

    int-to-float v2, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterMaxDragRate:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    mul-float v2, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    int-to-float v1, v1

    div-float/2addr v2, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->autoLoadMore(IIFZ)Z

    move-result v0

    return v0
.end method

.method public autoRefresh()Z
    .locals 7

    .line 2792
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mAttachedToWindow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x190

    :goto_0
    iget v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mReboundDuration:I

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderMaxDragRate:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    iget v5, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v6, v5

    mul-float v4, v4, v6

    mul-float v4, v4, v3

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :cond_1
    int-to-float v3, v5

    div-float/2addr v4, v3

    invoke-virtual {p0, v0, v2, v4, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->autoRefresh(IIFZ)Z

    move-result v0

    return v0
.end method

.method public autoRefresh(I)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2806
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mReboundDuration:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderMaxDragRate:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    iget v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v3, v2

    mul-float v1, v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v1, v1, v3

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :cond_0
    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->autoRefresh(IIFZ)Z

    move-result p1

    return p1
.end method

.method public autoRefresh(IIFZ)Z
    .locals 2

    .line 2835
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->None:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2836
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$8;

    invoke-direct {v0, p0, p3, p2, p4}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$8;-><init>(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;FIZ)V

    .line 2886
    sget-object p2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Refreshing:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setViceState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    if-lez p1, :cond_0

    .line 2888
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    int-to-long p3, p1

    invoke-virtual {p2, v0, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2890
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public autoRefreshAnimationOnly()Z
    .locals 6

    .line 2819
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mAttachedToWindow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x190

    :goto_0
    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mReboundDuration:I

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderMaxDragRate:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    iget v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v5, v4

    mul-float v3, v3, v5

    mul-float v3, v3, v2

    const/4 v2, 0x1

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :cond_1
    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->autoRefresh(IIFZ)Z

    move-result v0

    return v0
.end method

.method public closeHeaderOrFooter()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 2

    .line 2756
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->None:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mViceState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Refreshing:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mViceState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Loading:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v0, v1, :cond_1

    .line 2758
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->None:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mViceState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    .line 2760
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Refreshing:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v0, v1, :cond_2

    .line 2761
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->finishRefresh()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    goto :goto_0

    .line 2762
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Loading:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v0, v1, :cond_3

    .line 2763
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->finishLoadMore()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    goto :goto_0

    .line 2770
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-nez v0, :cond_4

    .line 2771
    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->None:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->notifyStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    goto :goto_0

    .line 2773
    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isHeader:Z

    if-eqz v0, :cond_5

    .line 2774
    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullDownCanceled:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->notifyStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    goto :goto_0

    .line 2776
    :cond_5
    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullUpCanceled:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->notifyStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    :goto_0
    return-object p0
.end method

.method public computeScroll()V
    .locals 4

    .line 792
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    .line 793
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 794
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    const/4 v1, 0x1

    if-gez v0, :cond_1

    .line 795
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableRefresh:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    invoke-interface {v2}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;->canRefresh()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    if-lez v0, :cond_7

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-eqz v2, :cond_7

    :cond_2
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    .line 796
    invoke-interface {v2}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;->canLoadMore()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 797
    :cond_3
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mVerticalPermit:Z

    if-eqz v2, :cond_6

    .line 799
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_5

    if-lez v0, :cond_4

    .line 800
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    goto :goto_0

    :cond_5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 802
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v0, v3

    mul-float v0, v0, v2

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getDuration()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->timePassed()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 804
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->animSpinnerBounce(F)V

    .line 806
    :cond_6
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 808
    :cond_7
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mVerticalPermit:Z

    .line 810
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_8
    :goto_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 834
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v2, 0x6

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v6, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 836
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    .line 840
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_2
    if-ge v8, v5, :cond_3

    if-ne v4, v8, :cond_2

    goto :goto_3

    .line 845
    :cond_2
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    add-float/2addr v9, v13

    .line 846
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    add-float/2addr v12, v13

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    add-int/lit8 v5, v5, -0x1

    :cond_4
    int-to-float v3, v5

    div-float/2addr v9, v3

    div-float v8, v12, v3

    if-eq v6, v2, :cond_5

    const/4 v2, 0x5

    if-ne v6, v2, :cond_6

    .line 851
    :cond_5
    iget-boolean v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_6

    .line 853
    iget v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchY:F

    iget v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastTouchY:F

    sub-float v3, v8, v3

    add-float/2addr v2, v3

    iput v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchY:F

    .line 855
    :cond_6
    iput v9, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastTouchX:F

    .line 856
    iput v8, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastTouchY:F

    .line 865
    iget-boolean v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mNestedInProgress:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_a

    .line 866
    iget v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTotalUnconsumed:I

    .line 867
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-ne v6, v3, :cond_9

    .line 869
    iget v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTotalUnconsumed:I

    if-ne v2, v3, :cond_9

    .line 870
    iget v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastTouchX:F

    float-to-int v2, v2

    .line 871
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 872
    iget v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastTouchX:F

    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    move v11, v3

    :goto_4
    int-to-float v5, v11

    div-float/2addr v4, v5

    .line 873
    iget-boolean v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v0, v5}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v5

    if-eqz v5, :cond_8

    iget v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    if-lez v5, :cond_8

    iget-object v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v5, :cond_8

    invoke-interface {v5}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->isSupportHorizontalDrag()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 874
    iget-object v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v5, v4, v2, v3}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->onHorizontalDrag(FII)V

    goto :goto_5

    .line 875
    :cond_8
    iget-boolean v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v5}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    if-gez v5, :cond_9

    iget-object v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v5, :cond_9

    invoke-interface {v5}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->isSupportHorizontalDrag()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 876
    iget-object v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v5, v4, v2, v3}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->onHorizontalDrag(FII)V

    :cond_9
    :goto_5
    return v1

    .line 881
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_37

    iget-boolean v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableRefresh:Z

    if-nez v2, :cond_b

    iget-boolean v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v2, :cond_b

    iget-boolean v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-eqz v2, :cond_37

    :cond_b
    iget-boolean v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderNeedTouchEventWhenRefreshing:Z

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isOpening:Z

    if-nez v2, :cond_c

    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isFinishing:Z

    if-eqz v2, :cond_d

    :cond_c
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isHeader:Z

    if-nez v2, :cond_37

    :cond_d
    iget-boolean v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNeedTouchEventWhenLoading:Z

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isOpening:Z

    if-nez v2, :cond_e

    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isFinishing:Z

    if-eqz v2, :cond_f

    :cond_e
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isFooter:Z

    if-eqz v2, :cond_f

    goto/16 :goto_f

    .line 888
    :cond_f
    invoke-virtual {v0, v6}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->interceptAnimatorByAction(I)Z

    move-result v2

    if-nez v2, :cond_36

    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isFinishing:Z

    if-nez v2, :cond_36

    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v4, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Loading:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v2, v4, :cond_10

    iget-boolean v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mDisableContentWhenLoading:Z

    if-nez v2, :cond_36

    :cond_10
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v4, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Refreshing:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v2, v4, :cond_11

    iget-boolean v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mDisableContentWhenRefresh:Z

    if-eqz v2, :cond_11

    goto/16 :goto_e

    :cond_11
    const/16 v2, 0x68

    if-eqz v6, :cond_33

    const/4 v4, 0x0

    if-eq v6, v11, :cond_2f

    const/4 v5, 0x3

    if-eq v6, v3, :cond_12

    if-eq v6, v5, :cond_30

    goto/16 :goto_d

    .line 926
    :cond_12
    iget v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchX:F

    sub-float/2addr v9, v3

    .line 927
    iget v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchY:F

    sub-float v3, v8, v3

    .line 928
    iget-object v6, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 929
    iget-boolean v6, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mIsBeingDragged:Z

    if-nez v6, :cond_1f

    iget-boolean v6, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableDisallowIntercept:Z

    if-nez v6, :cond_1f

    iget-char v6, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mDragDirection:C

    if-eq v6, v2, :cond_1f

    iget-object v12, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    if-eqz v12, :cond_1f

    const/16 v12, 0x76

    if-eq v6, v12, :cond_14

    .line 930
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v13, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchSlop:I

    int-to-float v13, v13

    cmpl-float v6, v6, v13

    if-ltz v6, :cond_13

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v13

    cmpg-float v6, v6, v13

    if-gez v6, :cond_13

    goto :goto_6

    .line 952
    :cond_13
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v13, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchSlop:I

    int-to-float v13, v13

    cmpl-float v6, v6, v13

    if-ltz v6, :cond_1f

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v13

    cmpl-float v6, v6, v13

    if-lez v6, :cond_1f

    iget-char v6, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mDragDirection:C

    if-eq v6, v12, :cond_1f

    .line 953
    iput-char v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mDragDirection:C

    goto/16 :goto_a

    .line 931
    :cond_14
    :goto_6
    iput-char v12, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mDragDirection:C

    cmpl-float v2, v3, v7

    if-lez v2, :cond_17

    .line 932
    iget v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    if-ltz v2, :cond_16

    iget-boolean v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v2, :cond_15

    iget-boolean v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableRefresh:Z

    if-eqz v2, :cond_17

    :cond_15
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    invoke-interface {v2}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;->canRefresh()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 933
    :cond_16
    iput-boolean v11, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mIsBeingDragged:Z

    .line 934
    iget v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchSlop:I

    int-to-float v2, v2

    sub-float v2, v8, v2

    iput v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchY:F

    goto :goto_7

    :cond_17
    cmpg-float v2, v3, v7

    if-gez v2, :cond_1b

    .line 935
    iget v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    if-gtz v2, :cond_1a

    iget-boolean v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v2, :cond_18

    iget-boolean v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    if-eqz v2, :cond_1b

    :cond_18
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v6, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Loading:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v2, v6, :cond_19

    iget-boolean v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterLocked:Z

    if-nez v2, :cond_1a

    :cond_19
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    invoke-interface {v2}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;->canLoadMore()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 936
    :cond_1a
    iput-boolean v11, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mIsBeingDragged:Z

    .line 937
    iget v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchSlop:I

    int-to-float v2, v2

    add-float/2addr v2, v8

    iput v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchY:F

    .line 939
    :cond_1b
    :goto_7
    iget-boolean v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_1f

    .line 940
    iget v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchY:F

    sub-float v3, v8, v2

    .line 941
    iget-boolean v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSuperDispatchTouchEvent:Z

    if-eqz v2, :cond_1c

    .line 942
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 943
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 945
    :cond_1c
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    iget v6, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    if-gtz v6, :cond_1e

    if-nez v6, :cond_1d

    cmpl-float v6, v3, v7

    if-lez v6, :cond_1d

    goto :goto_8

    :cond_1d
    sget-object v6, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullUpToLoad:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    goto :goto_9

    :cond_1e
    :goto_8
    sget-object v6, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullDownToRefresh:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    :goto_9
    invoke-interface {v2, v6}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->setState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    .line 946
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 947
    instance-of v6, v2, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1f

    .line 949
    nop

    nop

    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 956
    :cond_1f
    :goto_a
    iget-boolean v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_2e

    float-to-int v2, v3

    .line 957
    iget v6, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchSpinner:I

    add-int/2addr v2, v6

    .line 958
    iget-object v6, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mViceState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean v6, v6, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isHeader:Z

    if-eqz v6, :cond_20

    if-ltz v2, :cond_21

    iget v6, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastSpinner:I

    if-ltz v6, :cond_21

    :cond_20
    iget-object v6, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mViceState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean v6, v6, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isFooter:Z

    if-eqz v6, :cond_2d

    if-gtz v2, :cond_21

    iget v6, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastSpinner:I

    if-lez v6, :cond_2d

    .line 959
    :cond_21
    iput v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastSpinner:I

    .line 960
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    .line 961
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    if-nez v1, :cond_22

    const/16 v16, 0x0

    .line 962
    iget v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchX:F

    add-float v17, v1, v9

    iget v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchY:F

    const/16 v19, 0x0

    move-wide/from16 v12, v20

    move-wide/from16 v14, v20

    move/from16 v18, v1

    invoke-static/range {v12 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    .line 963
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_22
    const/16 v16, 0x2

    .line 965
    iget v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchX:F

    add-float v17, v1, v9

    iget v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchY:F

    int-to-float v6, v2

    add-float v18, v1, v6

    const/16 v19, 0x0

    move-wide/from16 v12, v20

    move-wide/from16 v14, v20

    invoke-static/range {v12 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 966
    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 967
    iget-boolean v6, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterLocked:Z

    if-eqz v6, :cond_23

    iget v6, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_23

    iget v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    if-gez v3, :cond_23

    .line 968
    iput-boolean v10, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterLocked:Z

    :cond_23
    if-lez v2, :cond_25

    .line 970
    iget-boolean v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v3, :cond_24

    iget-boolean v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableRefresh:Z

    if-eqz v3, :cond_25

    :cond_24
    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    invoke-interface {v3}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;->canRefresh()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 971
    iput v8, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastTouchY:F

    iput v8, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchY:F

    .line 972
    iput v10, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchSpinner:I

    .line 973
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    sget-object v3, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullDownToRefresh:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-interface {v2, v3}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->setState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    :goto_b
    const/4 v2, 0x0

    goto :goto_c

    :cond_25
    if-gez v2, :cond_27

    .line 974
    iget-boolean v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v3, :cond_26

    iget-boolean v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    if-eqz v3, :cond_27

    :cond_26
    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    invoke-interface {v3}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;->canLoadMore()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 975
    iput v8, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastTouchY:F

    iput v8, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchY:F

    .line 976
    iput v10, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchSpinner:I

    .line 977
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    sget-object v3, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullUpToLoad:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-interface {v2, v3}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->setState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    goto :goto_b

    .line 979
    :cond_27
    :goto_c
    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mViceState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isHeader:Z

    if-eqz v3, :cond_28

    if-ltz v2, :cond_29

    :cond_28
    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mViceState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isFooter:Z

    if-eqz v3, :cond_2b

    if-lez v2, :cond_2b

    .line 980
    :cond_29
    iget v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    if-eqz v1, :cond_2a

    .line 981
    invoke-virtual {v0, v7}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->moveSpinnerInfinitely(F)V

    :cond_2a
    return v11

    .line 984
    :cond_2b
    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_2c

    .line 985
    iput-object v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    .line 986
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 987
    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 989
    :cond_2c
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_2d
    int-to-float v1, v2

    .line 991
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->moveSpinnerInfinitely(F)V

    return v11

    .line 993
    :cond_2e
    iget-boolean v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterLocked:Z

    if-eqz v2, :cond_32

    iget v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v2, v3, v2

    if-lez v2, :cond_32

    iget v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    if-gez v2, :cond_32

    .line 994
    iput-boolean v10, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterLocked:Z

    goto :goto_d

    .line 998
    :cond_2f
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 999
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mMaximumVelocity:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1000
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mCurrentVelocity:I

    .line 1001
    invoke-virtual {v0, v7}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->startFlingIfNeed(F)Z

    .line 1003
    :cond_30
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    const/16 v2, 0x6e

    .line 1004
    iput-char v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mDragDirection:C

    .line 1005
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_31

    .line 1006
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1007
    iput-object v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    .line 1008
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 1009
    iget v7, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchX:F

    const/4 v9, 0x0

    move-wide v2, v4

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 1010
    invoke-super {v0, v2}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1011
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1013
    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->overSpinner()V

    .line 1014
    iget-boolean v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_32

    .line 1015
    iput-boolean v10, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mIsBeingDragged:Z

    return v11

    .line 1023
    :cond_32
    :goto_d
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 902
    :cond_33
    iput v10, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mCurrentVelocity:I

    .line 903
    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 904
    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v11}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 908
    iput v9, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchX:F

    .line 909
    iput v8, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchY:F

    .line 910
    iput v10, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastSpinner:I

    .line 911
    iget v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    iput v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchSpinner:I

    .line 912
    iput-boolean v10, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mIsBeingDragged:Z

    .line 913
    iput-boolean v10, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableDisallowIntercept:Z

    .line 915
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSuperDispatchTouchEvent:Z

    .line 916
    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v4, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->TwoLevel:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v3, v4, :cond_34

    iget v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchY:F

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v4

    const/high16 v4, 0x40c00000    # 6.0f

    div-float/2addr v5, v4

    cmpg-float v3, v3, v5

    if-gez v3, :cond_34

    .line 917
    iput-char v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mDragDirection:C

    .line 918
    iget-boolean v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSuperDispatchTouchEvent:Z

    return v1

    .line 920
    :cond_34
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    if-eqz v2, :cond_35

    .line 922
    invoke-interface {v2, v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;->onActionDown(Landroid/view/MotionEvent;)V

    :cond_35
    return v11

    :cond_36
    :goto_e
    return v10

    .line 885
    :cond_37
    :goto_f
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9

    .line 721
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 722
    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p2, :cond_8

    .line 723
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz v0, :cond_8

    .line 727
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    add-int/2addr v1, v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 728
    iget v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderBackgroundColor:I

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz v4, :cond_4

    .line 729
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 730
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v3}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    move-result-object v3

    iget-boolean v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->scale:Z

    if-eqz v3, :cond_2

    .line 731
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    goto :goto_1

    .line 732
    :cond_2
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v3}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    move-result-object v3

    sget-object v4, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->Translate:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    if-ne v3, v4, :cond_3

    .line 733
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    add-int/2addr v1, v3

    :cond_3
    :goto_1
    const/4 v4, 0x0

    .line 735
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v5, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v6, v3

    int-to-float v7, v1

    iget-object v8, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 738
    :cond_4
    iget-boolean v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v3}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    move-result-object v3

    sget-object v4, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->FIXED_BEHIND:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    if-eq v3, v4, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v3}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    move-result-object v3

    iget-boolean v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->scale:Z

    if-eqz v3, :cond_8

    .line 739
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 740
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 741
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 742
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_7
    :goto_2
    return v2

    .line 747
    :cond_8
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v1, :cond_10

    invoke-interface {v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p2, :cond_10

    .line 748
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-nez v1, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_4

    :cond_9
    if-eqz v0, :cond_10

    .line 752
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    add-int/2addr v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 753
    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterBackgroundColor:I

    if-eqz v1, :cond_c

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_c

    .line 754
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 755
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    move-result-object v1

    iget-boolean v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->scale:Z

    if-eqz v1, :cond_a

    .line 756
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_3

    .line 757
    :cond_a
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    move-result-object v1

    sget-object v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->Translate:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    if-ne v1, v2, :cond_b

    .line 758
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    add-int/2addr v0, v1

    :cond_b
    :goto_3
    const/4 v2, 0x0

    int-to-float v3, v0

    .line 760
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 768
    :cond_c
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    move-result-object v1

    sget-object v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->FIXED_BEHIND:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    if-eq v1, v2, :cond_e

    :cond_d
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    move-result-object v1

    iget-boolean v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->scale:Z

    if-eqz v1, :cond_10

    .line 769
    :cond_e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 770
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 771
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 772
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_f
    :goto_4
    return v2

    .line 778
    :cond_10
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public finishLoadMore()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 1

    const/4 v0, 0x1

    .line 2417
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->finishLoadMore(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public finishLoadMore(I)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2574
    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->finishLoadMore(IZZ)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public finishLoadMore(IZZ)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 4

    shr-int/lit8 v0, p1, 0x10

    shl-int/lit8 p1, p1, 0x10

    shr-int/lit8 p1, p1, 0x10

    .line 2603
    new-instance v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;

    invoke-direct {v1, p0, v0, p3, p2}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;-><init>(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;IZZ)V

    if-lez p1, :cond_0

    .line 2729
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2731
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-object p0
.end method

.method public finishLoadMore(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 4

    .line 2586
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastOpenTime:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    long-to-int v1, v0

    const/16 v0, 0x12c

    rsub-int v1, v1, 0x12c

    .line 2587
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1, v2}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->finishLoadMore(IZZ)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public finishLoadMoreWithNoMoreData()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 4

    .line 2744
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastOpenTime:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    const/16 v0, 0x12c

    rsub-int v1, v1, 0x12c

    const/4 v2, 0x0

    .line 2745
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->finishLoadMore(IZZ)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public finishRefresh()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 1

    const/4 v0, 0x1

    .line 2406
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->finishRefresh(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public finishRefresh(I)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 2

    .line 2429
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->finishRefresh(IZLjava/lang/Boolean;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public finishRefresh(IZLjava/lang/Boolean;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 4

    shr-int/lit8 v0, p1, 0x10

    shl-int/lit8 p1, p1, 0x10

    shr-int/lit8 p1, p1, 0x10

    .line 2462
    new-instance v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;

    invoke-direct {v1, p0, v0, p3, p2}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;-><init>(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;ILjava/lang/Boolean;Z)V

    if-lez p1, :cond_0

    .line 2546
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2548
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-object p0
.end method

.method public finishRefresh(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2442
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastOpenTime:J

    sub-long/2addr v1, v3

    long-to-int p1, v1

    const/16 v1, 0x12c

    rsub-int p1, p1, 0x12c

    .line 2443
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    const/4 v0, 0x1

    .line 2444
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->finishRefresh(IZLjava/lang/Boolean;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 2446
    invoke-virtual {p0, v0, v0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->finishRefresh(IZLjava/lang/Boolean;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public finishRefreshWithNoMoreData()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 4

    .line 2561
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastOpenTime:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    const/16 v0, 0x12c

    rsub-int v1, v1, 0x12c

    const/4 v2, 0x0

    .line 2562
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->finishRefresh(IZLjava/lang/Boolean;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1667
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getLayout()Landroid/view/ViewGroup;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    return-object p0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 1703
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mNestedParent:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getRefreshFooter()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshFooter;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2214
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    instance-of v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshFooter;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshFooter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRefreshHeader()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshHeader;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2226
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    instance-of v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshHeader;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshHeader;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getState()Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 2238
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    return-object v0
.end method

.method protected interceptAnimatorByAction(I)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_5

    .line 1105
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1106
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isFinishing:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->TwoLevelReleased:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-eq p1, v2, :cond_3

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->RefreshReleased:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-eq p1, v2, :cond_3

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->LoadReleased:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne p1, v2, :cond_0

    goto :goto_1

    .line 1109
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullDownCanceled:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne p1, v2, :cond_1

    .line 1110
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    sget-object v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullDownToRefresh:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-interface {p1, v2}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->setState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    goto :goto_0

    .line 1111
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullUpCanceled:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne p1, v2, :cond_2

    .line 1112
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    sget-object v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullUpToLoad:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-interface {p1, v2}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->setState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    .line 1114
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1115
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1116
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    goto :goto_2

    :cond_3
    :goto_1
    return v0

    .line 1118
    :cond_4
    :goto_2
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    .line 1120
    :cond_5
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method protected isEnableRefreshOrLoadMore(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1295
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnablePureScrollMode:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isEnableTranslationContent(ZLcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;)Z
    .locals 0

    if-nez p1, :cond_1

    .line 1284
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnablePureScrollMode:Z

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    move-result-object p1

    sget-object p2, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->FIXED_BEHIND:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1824
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableNestedScrolling:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableRefresh:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected moveSpinnerInfinitely(F)V
    .locals 18

    move-object/from16 v0, p0

    .line 1571
    iget-boolean v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mNestedInProgress:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    if-nez v1, :cond_0

    cmpg-float v1, p1, v2

    if-gez v1, :cond_0

    .line 1572
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    invoke-interface {v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;->canLoadMore()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    .line 1604
    :goto_0
    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v4, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->TwoLevel:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1

    .line 1605
    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    float-to-int v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-interface {v3, v4, v5}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->moveSpinner(IZ)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    goto/16 :goto_1

    .line 1606
    :cond_1
    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v4, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Refreshing:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const/high16 v6, 0x3f800000    # 1.0f

    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    if-ne v3, v4, :cond_4

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_4

    .line 1607
    iget v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v4, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_2

    .line 1608
    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    float-to-int v4, v1

    invoke-interface {v3, v4, v5}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->moveSpinner(IZ)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    goto/16 :goto_1

    .line 1610
    :cond_2
    iget v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderMaxDragRate:F

    sub-float/2addr v4, v6

    int-to-float v3, v3

    mul-float v4, v4, v3

    float-to-double v3, v4

    .line 1611
    iget v6, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mScreenHeightPixels:I

    mul-int/lit8 v6, v6, 0x4

    div-int/lit8 v6, v6, 0x3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v13

    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v13, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeight:I

    sub-int/2addr v6, v13

    int-to-double v14, v6

    int-to-float v6, v13

    sub-float v6, v1, v6

    .line 1612
    iget v13, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mDragRate:F

    mul-float v6, v6, v13

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-double v5, v6

    .line 1613
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-wide/from16 v16, v3

    neg-double v2, v5

    cmpl-double v4, v14, v7

    if-nez v4, :cond_3

    move-wide v14, v11

    :cond_3
    div-double/2addr v2, v14

    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v11, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v16, v11

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 1614
    iget-object v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    double-to-int v2, v2

    iget v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeight:I

    add-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-interface {v4, v2, v3}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->moveSpinner(IZ)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    goto/16 :goto_1

    :cond_4
    cmpg-float v3, v1, v2

    if-gez v3, :cond_9

    .line 1616
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v3, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Loading:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-eq v2, v3, :cond_6

    iget-boolean v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v2, :cond_5

    iget-boolean v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v2, :cond_5

    iget-boolean v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-eqz v2, :cond_5

    iget-boolean v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 1617
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    iget-boolean v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    if-eqz v2, :cond_9

    iget-boolean v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v2, :cond_9

    iget-boolean v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 1618
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1619
    :cond_6
    iget v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeight:I

    neg-int v3, v2

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_7

    .line 1620
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    float-to-int v3, v1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->moveSpinner(IZ)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    goto/16 :goto_1

    .line 1622
    :cond_7
    iget v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterMaxDragRate:F

    sub-float/2addr v3, v6

    int-to-float v2, v2

    mul-float v3, v3, v2

    float-to-double v2, v3

    .line 1623
    iget v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mScreenHeightPixels:I

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeight:I

    sub-int/2addr v4, v5

    int-to-double v14, v4

    int-to-float v4, v5

    add-float/2addr v4, v1

    .line 1624
    iget v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mDragRate:F

    mul-float v4, v4, v5

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    neg-float v4, v4

    float-to-double v4, v4

    .line 1625
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    neg-double v11, v4

    cmpl-double v6, v14, v7

    if-nez v6, :cond_8

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    :cond_8
    div-double/2addr v11, v14

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v11, v8, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v11

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    neg-double v2, v2

    .line 1626
    iget-object v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    double-to-int v2, v2

    iget v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeight:I

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-interface {v4, v2, v3}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->moveSpinner(IZ)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_b

    .line 1629
    iget v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderMaxDragRate:F

    iget v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    float-to-double v2, v2

    .line 1630
    iget v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mScreenHeightPixels:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v11, v4

    .line 1631
    iget v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mDragRate:F

    mul-float v4, v4, v1

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-double v4, v4

    .line 1632
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    neg-double v14, v4

    cmpl-double v6, v11, v7

    if-nez v6, :cond_a

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    :cond_a
    div-double/2addr v14, v11

    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v11, v8, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v11

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 1633
    iget-object v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    double-to-int v2, v2

    const/4 v3, 0x1

    invoke-interface {v4, v2, v3}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->moveSpinner(IZ)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    goto :goto_1

    .line 1635
    :cond_b
    iget v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterMaxDragRate:F

    iget v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeight:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    float-to-double v2, v2

    .line 1636
    iget v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mScreenHeightPixels:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v11, v4

    .line 1637
    iget v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mDragRate:F

    mul-float v4, v4, v1

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    neg-float v4, v4

    float-to-double v4, v4

    .line 1638
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    neg-double v14, v4

    cmpl-double v6, v11, v7

    if-nez v6, :cond_c

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    :cond_c
    div-double/2addr v14, v11

    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v11, v8, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v11

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    neg-double v2, v2

    .line 1639
    iget-object v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    double-to-int v2, v2

    const/4 v3, 0x1

    invoke-interface {v4, v2, v3}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->moveSpinner(IZ)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    .line 1641
    :goto_1
    iget-boolean v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    if-eqz v2, :cond_e

    iget-boolean v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v2, :cond_e

    iget-boolean v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_e

    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Refreshing:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-eq v1, v2, :cond_e

    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Loading:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-eq v1, v2, :cond_e

    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->LoadFinish:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-eq v1, v2, :cond_e

    .line 1645
    iget-boolean v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mDisableContentWhenLoading:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    .line 1646
    iput-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    .line 1647
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    iget v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeight:I

    neg-int v2, v2

    invoke-interface {v1, v2}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    :cond_d
    const/4 v1, 0x0

    .line 1649
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setStateDirectLoading(Z)V

    .line 1653
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$5;

    invoke-direct {v2, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$5;-><init>(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;)V

    iget v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mReboundDuration:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_e
    return-void
.end method

.method protected notifyStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V
    .locals 3

    .line 1133
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-eq v0, p1, :cond_2

    .line 1135
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    .line 1136
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mViceState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    .line 1137
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    .line 1138
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v1, :cond_0

    .line 1140
    invoke-interface {v1, p0, v0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/listener/OnStateChangedListener;->onStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    :cond_0
    if-eqz v2, :cond_1

    .line 1143
    invoke-interface {v2, p0, v0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/listener/OnStateChangedListener;->onStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    .line 1145
    :cond_1
    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->LoadFinish:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    .line 1146
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterLocked:Z

    goto :goto_0

    .line 1148
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mViceState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-eq p1, v0, :cond_3

    .line 1152
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mViceState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    :cond_3
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 367
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 368
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mAttachedToWindow:Z

    .line 371
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_b

    .line 373
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-nez v1, :cond_1

    .line 374
    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->sHeaderCreator:Lcom/alibaba/ailabs/genie/message/refresh/interfac/DefaultRefreshHeaderCreator;

    if-eqz v1, :cond_0

    .line 375
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/DefaultRefreshHeaderCreator;->createRefreshHeader(Landroid/content/Context;Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshHeader;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setRefreshHeader(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshHeader;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    goto :goto_0

    .line 377
    :cond_0
    new-instance v1, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setRefreshHeader(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshHeader;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    .line 380
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 381
    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->sFooterCreator:Lcom/alibaba/ailabs/genie/message/refresh/interfac/DefaultRefreshFooterCreator;

    if-eqz v0, :cond_2

    .line 382
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/DefaultRefreshFooterCreator;->createRefreshFooter(Landroid/content/Context;Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshFooter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setRefreshFooter(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshFooter;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    goto :goto_2

    .line 384
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 385
    new-instance v1, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsFooter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsFooter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setRefreshFooter(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshFooter;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    .line 386
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    goto :goto_2

    .line 389
    :cond_3
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mManualLoadMore:Z

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_1
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 392
    :goto_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    if-nez v0, :cond_9

    .line 393
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_9

    .line 394
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 395
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v4, :cond_6

    invoke-interface {v4}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v4

    if-eq v3, v4, :cond_8

    :cond_6
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v4, :cond_7

    .line 396
    invoke-interface {v4}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v4

    if-eq v3, v4, :cond_8

    .line 397
    :cond_7
    new-instance v4, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;

    invoke-direct {v4, v3}, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 401
    :cond_9
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    if-nez v0, :cond_a

    const/high16 v0, 0x41a00000    # 20.0f

    .line 402
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/refresh/utils/SmartUtil;->dp2px(F)I

    move-result v1

    .line 403
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v4, -0x9a00

    .line 404
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x11

    .line 405
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 406
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 407
    sget v0, Lcom/alibaba/ailabs/genie/message/R$string;->srl_content_empty:I

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 408
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v0, v4, v4}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v3, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 409
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;

    invoke-direct {v0, v3}, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    .line 410
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 413
    :cond_a
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFixedHeaderViewId:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 414
    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFixedFooterViewId:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 416
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mScrollBoundaryDecider:Lcom/alibaba/ailabs/genie/message/refresh/interfac/ScrollBoundaryDecider;

    invoke-interface {v3, v4}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;->setScrollBoundaryDecider(Lcom/alibaba/ailabs/genie/message/refresh/interfac/ScrollBoundaryDecider;)V

    .line 417
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    iget-boolean v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    invoke-interface {v3, v4}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;->setEnableLoadMoreWhenContentNotFull(Z)V

    .line 418
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    invoke-interface {v3, v4, v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;->setUpComponent(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;Landroid/view/View;Landroid/view/View;)V

    .line 420
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    if-eqz v0, :cond_b

    .line 421
    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->None:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->notifyStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    .line 422
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    iput v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderTranslationViewId:I

    iget v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterTranslationViewId:I

    invoke-interface {v0, v2, v1, v3}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;->moveSpinner(III)V

    .line 426
    :cond_b
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mPrimaryColors:[I

    if-eqz v0, :cond_d

    .line 427
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v1, :cond_c

    .line 428
    invoke-interface {v1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->setPrimaryColors([I)V

    .line 430
    :cond_c
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v0, :cond_d

    .line 431
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mPrimaryColors:[I

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->setPrimaryColors([I)V

    .line 436
    :cond_d
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    if-eqz v0, :cond_e

    .line 437
    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 439
    :cond_e
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->front:Z

    if-eqz v0, :cond_f

    .line 440
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 442
    :cond_f
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->front:Z

    if-eqz v0, :cond_10

    .line 443
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_10
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 6

    .line 688
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 689
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mAttachedToWindow:Z

    .line 690
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->moveSpinner(IZ)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    .line 691
    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->None:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->notifyStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    .line 692
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 693
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 695
    :cond_0
    iput-boolean v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mManualLoadMore:Z

    .line 697
    iput-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    .line 698
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 700
    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 701
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 702
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 703
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 704
    iput-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 706
    :cond_1
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterLocked:Z

    return-void
.end method

.method public onFinishInflate()V
    .locals 11

    .line 313
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 314
    invoke-super {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_11

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v4, v0, :cond_4

    .line 322
    invoke-super {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 323
    invoke-static {v9}, Lcom/alibaba/ailabs/genie/message/refresh/utils/SmartUtil;->isContentView(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-lt v6, v7, :cond_0

    if-ne v4, v8, :cond_1

    :cond_0
    move v5, v4

    const/4 v6, 0x2

    goto :goto_2

    .line 326
    :cond_1
    instance-of v7, v9, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-nez v7, :cond_3

    if-ge v6, v8, :cond_3

    if-lez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    move v5, v4

    move v6, v8

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-ltz v5, :cond_7

    .line 335
    new-instance v4, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;

    invoke-super {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshContentWrapper;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    if-ne v5, v8, :cond_6

    if-ne v0, v1, :cond_5

    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    if-ne v0, v7, :cond_7

    const/4 v1, -0x1

    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    const/4 v1, -0x1

    :goto_3
    const/4 v7, -0x1

    :goto_4
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v0, :cond_10

    .line 347
    invoke-super {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eq v4, v1, :cond_d

    if-eq v4, v7, :cond_8

    if-ne v1, v2, :cond_8

    .line 348
    iget-object v6, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-nez v6, :cond_8

    instance-of v6, v5, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshHeader;

    if-eqz v6, :cond_8

    goto :goto_9

    :cond_8
    if-eq v4, v7, :cond_9

    if-ne v7, v2, :cond_f

    .line 350
    instance-of v6, v5, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshFooter;

    if-eqz v6, :cond_f

    .line 351
    :cond_9
    iget-boolean v6, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v6, :cond_b

    iget-boolean v6, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mManualLoadMore:Z

    if-nez v6, :cond_a

    goto :goto_6

    :cond_a
    const/4 v6, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    const/4 v6, 0x1

    :goto_7
    iput-boolean v6, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 352
    instance-of v6, v5, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshFooter;

    if-eqz v6, :cond_c

    check-cast v5, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshFooter;

    goto :goto_8

    :cond_c
    new-instance v6, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshFooterWrapper;

    invoke-direct {v6, v5}, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshFooterWrapper;-><init>(Landroid/view/View;)V

    move-object v5, v6

    :goto_8
    iput-object v5, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    goto :goto_b

    .line 349
    :cond_d
    :goto_9
    instance-of v6, v5, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshHeader;

    if-eqz v6, :cond_e

    check-cast v5, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshHeader;

    goto :goto_a

    :cond_e
    new-instance v6, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshHeaderWrapper;

    invoke-direct {v6, v5}, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshHeaderWrapper;-><init>(Landroid/view/View;)V

    move-object v5, v6

    :goto_a
    iput-object v5, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    :cond_f
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_10
    return-void

    .line 316
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u6700\u591a\u53ea\u652f\u63013\u4e2a\u5b50View\uff0cMost only support three sub view"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_d

    :goto_c
    throw v0

    :goto_d
    goto :goto_c
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .line 603
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    .line 604
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    .line 605
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 607
    invoke-super {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 p4, 0x0

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p3, :cond_13

    .line 608
    invoke-super {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 610
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_12

    sget v1, Lcom/alibaba/ailabs/genie/message/R$string;->srl_component_falsify:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    goto/16 :goto_c

    .line 614
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_4

    .line 615
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 616
    :goto_1
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    invoke-interface {v3}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;->getView()Landroid/view/View;

    move-result-object v3

    .line 617
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 618
    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_2

    nop

    nop

    goto :goto_2

    :cond_2
    sget-object v4, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 619
    :goto_2
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, p1

    .line 620
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, p2

    .line 621
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    .line 622
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    if-eqz v1, :cond_3

    .line 623
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    iget-object v8, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-virtual {p0, v1, v8}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 624
    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeight:I

    add-int/2addr v4, v1

    add-int/2addr v7, v1

    .line 628
    :cond_3
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 630
    :cond_4
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_8

    .line 631
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 632
    :goto_3
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v3}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v3

    .line 633
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 634
    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_6

    nop

    nop

    goto :goto_4

    :cond_6
    sget-object v4, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 635
    :goto_4
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 636
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderInsetStart:I

    add-int/2addr v4, v6

    .line 637
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    .line 638
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    if-nez v1, :cond_7

    .line 640
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    move-result-object v1

    sget-object v8, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->Translate:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    if-ne v1, v8, :cond_7

    .line 641
    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeight:I

    sub-int/2addr v4, v1

    sub-int/2addr v7, v1

    .line 645
    :cond_7
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 647
    :cond_8
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_12

    .line 648
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    .line 649
    :goto_5
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    .line 650
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 651
    instance-of v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_a

    nop

    nop

    goto :goto_6

    :cond_a
    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 652
    :goto_6
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v3}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    move-result-object v3

    .line 653
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 654
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterInsetStart:I

    sub-int/2addr v5, v6

    .line 655
    iget-boolean v6, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v6, :cond_c

    iget-boolean v6, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-eqz v6, :cond_c

    iget-boolean v6, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    .line 656
    invoke-interface {v6}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    move-result-object v6

    sget-object v7, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->Translate:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    if-ne v6, v7, :cond_c

    iget-boolean v6, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 657
    invoke-virtual {p0, v6}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 658
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    invoke-interface {v5}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;->getView()Landroid/view/View;

    move-result-object v5

    .line 659
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 660
    instance-of v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_b

    nop

    nop

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_7

    :cond_b
    const/4 v6, 0x0

    :goto_7
    add-int v7, p2, p2

    add-int/2addr v7, v6

    .line 661
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v7

    .line 664
    :cond_c
    sget-object v6, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->MATCH_LAYOUT:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    if-ne v3, v6, :cond_d

    .line 665
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterInsetStart:I

    sub-int v5, v1, v2

    goto :goto_b

    :cond_d
    if-nez v2, :cond_10

    .line 666
    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->FIXED_FRONT:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    if-eq v3, v1, :cond_10

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->FIXED_BEHIND:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    if-ne v3, v1, :cond_e

    goto :goto_9

    .line 670
    :cond_e
    iget-boolean v1, v3, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->scale:Z

    if-eqz v1, :cond_11

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    if-gez v1, :cond_11

    .line 671
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-eqz v1, :cond_f

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    neg-int v1, v1

    goto :goto_8

    :cond_f
    const/4 v1, 0x0

    :goto_8
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_a

    .line 669
    :cond_10
    :goto_9
    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeight:I

    :goto_a
    sub-int/2addr v5, v1

    .line 674
    :cond_11
    :goto_b
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v4

    .line 675
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v5

    .line 676
    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_12
    :goto_c
    add-int/lit8 p5, p5, 0x1

    goto/16 :goto_0

    :cond_13
    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 461
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 463
    :goto_0
    invoke-super/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v7, v6, :cond_20

    .line 464
    invoke-super {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 466
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_1e

    sget v10, Lcom/alibaba/ailabs/genie/message/R$string;->srl_component_falsify:I

    invoke-virtual {v9, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v9, :cond_1

    goto/16 :goto_12

    .line 470
    :cond_1
    iget-object v10, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    const/4 v13, -0x2

    if-eqz v10, :cond_c

    invoke-interface {v10}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v10

    if-ne v10, v9, :cond_c

    .line 471
    iget-object v10, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v10}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v10

    .line 472
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 473
    instance-of v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_2

    move-object v4, v15

    nop

    nop

    goto :goto_2

    :cond_2
    sget-object v4, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 474
    :goto_2
    iget v12, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v14, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v12, v14

    iget v14, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v12, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v12

    .line 475
    iget v14, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeight:I

    .line 477
    iget-object v11, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    iget v11, v11, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->ordinal:I

    sget-object v5, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->XML_LAYOUT_UN_NOTIFY:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    iget v5, v5, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->ordinal:I

    if-ge v11, v5, :cond_6

    .line 478
    iget v5, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_3

    .line 479
    iget v5, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v11

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v14, v5, v11

    .line 480
    iget-object v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    sget-object v11, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->XML_EXACT_UN_NOTIFY:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    invoke-virtual {v5, v11}, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->canReplaceWith(Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 481
    iget v5, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v11

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v11

    iput v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeight:I

    .line 482
    sget-object v5, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->XML_EXACT_UN_NOTIFY:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    iput-object v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    goto :goto_3

    .line 484
    :cond_3
    iget v5, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v5, v13, :cond_6

    iget-object v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v5}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    move-result-object v5

    sget-object v11, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->MATCH_LAYOUT:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    if-ne v5, v11, :cond_4

    iget-object v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    iget-boolean v5, v5, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->notified:Z

    if-nez v5, :cond_6

    .line 485
    :cond_4
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v11

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v11

    const/4 v11, 0x0

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v11, -0x80000000

    .line 486
    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v10, v12, v15}, Landroid/view/View;->measure(II)V

    .line 487
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    if-lez v11, :cond_6

    if-eq v11, v5, :cond_5

    .line 490
    iget-object v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    sget-object v14, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->XML_WRAP_UN_NOTIFY:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    invoke-virtual {v5, v14}, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->canReplaceWith(Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 491
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v11, v5

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v11, v5

    iput v11, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeight:I

    .line 492
    sget-object v5, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->XML_WRAP_UN_NOTIFY:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    iput-object v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    :cond_5
    const/4 v14, -0x1

    .line 498
    :cond_6
    :goto_3
    iget-object v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v5}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    move-result-object v5

    sget-object v11, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->MATCH_LAYOUT:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    if-ne v5, v11, :cond_7

    .line 499
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    const/4 v5, -0x1

    const/4 v11, 0x0

    goto :goto_6

    .line 500
    :cond_7
    iget-object v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v5}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    move-result-object v5

    iget-boolean v5, v5, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->scale:Z

    if-eqz v5, :cond_9

    if-nez v3, :cond_9

    .line 501
    iget-boolean v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v0, v5}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v5

    if-eqz v5, :cond_8

    iget v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    const/4 v11, 0x0

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_5

    :cond_9
    const/4 v11, 0x0

    :goto_5
    const/4 v5, -0x1

    :goto_6
    if-eq v14, v5, :cond_a

    .line 505
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v14, v5

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v14, v4

    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v10, v12, v4}, Landroid/view/View;->measure(II)V

    .line 508
    :cond_a
    iget-object v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    iget-boolean v4, v4, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->notified:Z

    if-nez v4, :cond_b

    .line 509
    iget-object v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->notified()Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    .line 510
    iget-object v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    iget-object v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    iget v11, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeight:I

    iget v12, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderMaxDragRate:F

    int-to-float v14, v11

    mul-float v12, v12, v14

    float-to-int v12, v12

    invoke-interface {v4, v5, v11, v12}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->onInitialized(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;II)V

    :cond_b
    if-eqz v3, :cond_c

    .line 513
    iget-boolean v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v0, v4}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 514
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v8, v4

    .line 518
    :cond_c
    iget-object v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v4, :cond_17

    invoke-interface {v4}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v4

    if-ne v4, v9, :cond_17

    .line 519
    iget-object v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v4}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v4

    .line 520
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 521
    instance-of v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v10, :cond_d

    move-object v10, v5

    nop

    nop

    goto :goto_7

    :cond_d
    sget-object v10, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 522
    :goto_7
    iget v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v11, v12

    iget v12, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v11, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v11

    .line 523
    iget v14, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeight:I

    .line 525
    iget-object v12, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    iget v12, v12, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->ordinal:I

    sget-object v15, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->XML_LAYOUT_UN_NOTIFY:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    iget v15, v15, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->ordinal:I

    if-ge v12, v15, :cond_11

    .line 526
    iget v12, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v12, :cond_e

    .line 527
    iget v12, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v12, v13

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v14, v12, v13

    .line 528
    iget-object v12, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    sget-object v13, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->XML_EXACT_UN_NOTIFY:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    invoke-virtual {v12, v13}, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->canReplaceWith(Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 529
    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v12

    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v12

    iput v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeight:I

    .line 530
    sget-object v5, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->XML_EXACT_UN_NOTIFY:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    iput-object v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    goto :goto_8

    .line 532
    :cond_e
    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v5, v13, :cond_11

    iget-object v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v5}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    move-result-object v5

    sget-object v12, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->MATCH_LAYOUT:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    if-ne v5, v12, :cond_f

    iget-object v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    iget-boolean v5, v5, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->notified:Z

    if-nez v5, :cond_11

    .line 533
    :cond_f
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v12

    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v12

    const/4 v12, 0x0

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v12, -0x80000000

    .line 534
    invoke-static {v5, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v4, v11, v12}, Landroid/view/View;->measure(II)V

    .line 535
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    if-lez v12, :cond_11

    if-eq v12, v5, :cond_10

    .line 538
    iget-object v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    sget-object v13, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->XML_WRAP_UN_NOTIFY:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    invoke-virtual {v5, v13}, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->canReplaceWith(Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 539
    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v12, v5

    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v12, v5

    iput v12, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeight:I

    .line 540
    sget-object v5, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->XML_WRAP_UN_NOTIFY:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    iput-object v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    :cond_10
    const/4 v14, -0x1

    .line 546
    :cond_11
    :goto_8
    iget-object v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v5}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    move-result-object v5

    sget-object v12, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->MATCH_LAYOUT:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    if-ne v5, v12, :cond_12

    .line 547
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    const/4 v5, -0x1

    const/4 v12, 0x0

    goto :goto_b

    .line 548
    :cond_12
    iget-object v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v5}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    move-result-object v5

    iget-boolean v5, v5, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->scale:Z

    if-eqz v5, :cond_14

    if-nez v3, :cond_14

    .line 549
    iget-boolean v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v5}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v5

    if-eqz v5, :cond_13

    iget v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    neg-int v5, v5

    goto :goto_9

    :cond_13
    const/4 v5, 0x0

    :goto_9
    const/4 v12, 0x0

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_a

    :cond_14
    const/4 v12, 0x0

    :goto_a
    const/4 v5, -0x1

    :goto_b
    if-eq v14, v5, :cond_15

    .line 553
    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v14, v5

    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v14, v5

    invoke-static {v14, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v11, v5}, Landroid/view/View;->measure(II)V

    .line 556
    :cond_15
    iget-object v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    iget-boolean v5, v5, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->notified:Z

    if-nez v5, :cond_16

    .line 557
    iget-object v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->notified()Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    move-result-object v5

    iput-object v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    .line 558
    iget-object v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    iget-object v10, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    iget v11, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeight:I

    iget v13, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterMaxDragRate:F

    int-to-float v14, v11

    mul-float v13, v13, v14

    float-to-int v13, v13

    invoke-interface {v5, v10, v11, v13}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->onInitialized(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;II)V

    :cond_16
    if-eqz v3, :cond_18

    .line 561
    iget-boolean v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v5}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 562
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v8, v4

    goto :goto_c

    :cond_17
    const/4 v12, 0x0

    .line 566
    :cond_18
    :goto_c
    iget-object v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    if-eqz v4, :cond_1f

    invoke-interface {v4}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;->getView()Landroid/view/View;

    move-result-object v4

    if-ne v4, v9, :cond_1f

    .line 567
    iget-object v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    invoke-interface {v4}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;->getView()Landroid/view/View;

    move-result-object v4

    .line 568
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 569
    instance-of v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v9, :cond_19

    move-object v9, v5

    nop

    nop

    goto :goto_d

    :cond_19
    sget-object v9, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 570
    :goto_d
    iget-object v10, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v10, :cond_1a

    iget-boolean v10, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v0, v10}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v10

    if-eqz v10, :cond_1a

    iget-boolean v10, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    iget-object v11, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-virtual {v0, v10, v11}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;)Z

    move-result v10

    if-eqz v10, :cond_1a

    const/4 v10, 0x1

    goto :goto_e

    :cond_1a
    const/4 v10, 0x0

    .line 571
    :goto_e
    iget-object v11, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v11, :cond_1b

    iget-boolean v11, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v11}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v11

    if-eqz v11, :cond_1b

    iget-boolean v11, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    iget-object v13, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-virtual {v0, v11, v13}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;)Z

    move-result v11

    if-eqz v11, :cond_1b

    const/4 v11, 0x1

    goto :goto_f

    :cond_1b
    const/4 v11, 0x0

    .line 573
    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v14

    add-int/2addr v13, v14

    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v13, v14

    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v13, v14

    iget v14, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 572
    invoke-static {v1, v13, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v13

    .line 575
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v15

    add-int/2addr v14, v15

    iget v15, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v15

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v9

    if-eqz v3, :cond_1c

    if-eqz v10, :cond_1c

    iget v9, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeight:I

    goto :goto_10

    :cond_1c
    const/4 v9, 0x0

    :goto_10
    add-int/2addr v14, v9

    if-eqz v3, :cond_1d

    if-eqz v11, :cond_1d

    iget v9, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeight:I

    goto :goto_11

    :cond_1d
    const/4 v9, 0x0

    :goto_11
    add-int/2addr v14, v9

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 574
    invoke-static {v2, v14, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 578
    invoke-virtual {v4, v13, v5}, Landroid/view/View;->measure(II)V

    .line 579
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v8, v4

    goto :goto_13

    :cond_1e
    :goto_12
    const/4 v12, 0x0

    :cond_1f
    :goto_13
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 584
    :cond_20
    invoke-super/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    .line 585
    invoke-static {v8, v2}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    .line 583
    invoke-super {v0, v1, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 587
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastTouchX:F

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1801
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mNestedChild:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1796
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterLocked:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    if-gtz p1, :cond_2

    :cond_0
    neg-float p1, p3

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->startFlingIfNeed(F)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mNestedChild:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1735
    iget p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTotalUnconsumed:I

    mul-int v0, p3, p1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 1736
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTotalUnconsumed:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le p1, v0, :cond_0

    .line 1737
    iget p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTotalUnconsumed:I

    .line 1738
    iput v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTotalUnconsumed:I

    goto :goto_0

    .line 1741
    :cond_0
    iget p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTotalUnconsumed:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTotalUnconsumed:I

    move p1, p3

    .line 1743
    :goto_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTotalUnconsumed:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->moveSpinnerInfinitely(F)V

    goto :goto_1

    :cond_1
    if-lez p3, :cond_2

    .line 1744
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterLocked:Z

    if-eqz v0, :cond_2

    sub-int/2addr p1, p3

    .line 1746
    iput p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTotalUnconsumed:I

    .line 1747
    iget p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTotalUnconsumed:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->moveSpinnerInfinitely(F)V

    move p1, p3

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 1751
    :goto_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mNestedChild:Landroid/support/v4/view/NestedScrollingChildHelper;

    sub-int/2addr p3, p1

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, p4, v1}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    const/4 p2, 0x1

    .line 1752
    aget p3, p4, p2

    add-int/2addr p3, p1

    aput p3, p4, p2

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1759
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mNestedChild:Landroid/support/v4/view/NestedScrollingChildHelper;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mParentOffsetInWindow:[I

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    .line 1766
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mParentOffsetInWindow:[I

    const/4 p4, 0x1

    aget p2, p2, p4

    add-int/2addr p5, p2

    if-gez p5, :cond_1

    .line 1767
    iget-boolean p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableRefresh:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-eqz p2, :cond_1

    :cond_0
    iget p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTotalUnconsumed:I

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mScrollBoundaryDecider:Lcom/alibaba/ailabs/genie/message/refresh/interfac/ScrollBoundaryDecider;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/ScrollBoundaryDecider;->canRefresh(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_3

    :cond_1
    if-lez p5, :cond_7

    iget-boolean p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-eqz p2, :cond_7

    :cond_2
    iget p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTotalUnconsumed:I

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mScrollBoundaryDecider:Lcom/alibaba/ailabs/genie/message/refresh/interfac/ScrollBoundaryDecider;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    .line 1768
    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/ScrollBoundaryDecider;->canLoadMore(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1769
    :cond_3
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mViceState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->None:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-eq p2, v0, :cond_4

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mViceState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean p2, p2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isOpening:Z

    if-eqz p2, :cond_6

    .line 1774
    :cond_4
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    if-lez p5, :cond_5

    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullUpToLoad:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullDownToRefresh:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    :goto_0
    invoke-interface {p2, v0}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->setState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    if-nez p1, :cond_6

    .line 1777
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 1778
    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_6

    .line 1781
    nop

    nop

    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1785
    :cond_6
    iget p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTotalUnconsumed:I

    sub-int/2addr p1, p5

    iput p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTotalUnconsumed:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->moveSpinnerInfinitely(F)V

    .line 1788
    :cond_7
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterLocked:Z

    if-eqz p1, :cond_8

    if-gez p3, :cond_8

    const/4 p1, 0x0

    .line 1789
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterLocked:Z

    :cond_8
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1717
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mNestedParent:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 1719
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mNestedChild:Landroid/support/v4/view/NestedScrollingChildHelper;

    and-int/lit8 p2, p3, 0x2

    invoke-virtual {p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    .line 1721
    iget p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    iput p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTotalUnconsumed:I

    const/4 p1, 0x1

    .line 1722
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mNestedInProgress:Z

    const/4 p1, 0x0

    .line 1724
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->interceptAnimatorByAction(I)Z

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1709
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isNestedScrollingEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 1710
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableRefresh:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :cond_2
    :goto_1
    return p2
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1806
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mNestedParent:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 1807
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mNestedInProgress:Z

    .line 1808
    iput p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTotalUnconsumed:I

    .line 1809
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->overSpinner()V

    .line 1810
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mNestedChild:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

.method protected overSpinner()V
    .locals 4

    .line 1518
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->TwoLevel:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v0, v1, :cond_1

    .line 1520
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mCurrentVelocity:I

    const/16 v1, -0x3e8

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    .line 1521
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1523
    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFloorDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    .line 1525
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v0, :cond_e

    .line 1526
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->finishTwoLevel()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    goto/16 :goto_1

    .line 1528
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Loading:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    if-gez v0, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 1529
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 1535
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Refreshing:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v0, v1, :cond_4

    .line 1536
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeight:I

    if-le v0, v1, :cond_3

    .line 1537
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    :cond_3
    if-gez v0, :cond_e

    .line 1539
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    invoke-interface {v0, v2}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    .line 1541
    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullDownToRefresh:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v0, v1, :cond_5

    .line 1542
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullDownCanceled:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->setState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    goto/16 :goto_1

    .line 1543
    :cond_5
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullUpToLoad:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v0, v1, :cond_6

    .line 1544
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullUpCanceled:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->setState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    goto/16 :goto_1

    .line 1545
    :cond_6
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->ReleaseToRefresh:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v0, v1, :cond_7

    .line 1546
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Refreshing:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->setState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    goto :goto_1

    .line 1547
    :cond_7
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->ReleaseToLoad:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v0, v1, :cond_8

    .line 1548
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Loading:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->setState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    goto :goto_1

    .line 1549
    :cond_8
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->ReleaseToTwoLevel:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v0, v1, :cond_9

    .line 1550
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->TwoLevelReleased:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->setState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    goto :goto_1

    .line 1551
    :cond_9
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->RefreshReleased:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v0, v1, :cond_a

    .line 1552
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_e

    .line 1553
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeight:I

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 1555
    :cond_a
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->LoadReleased:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v0, v1, :cond_b

    .line 1556
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_e

    .line 1557
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeight:I

    neg-int v1, v1

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 1559
    :cond_b
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    if-eqz v0, :cond_e

    .line 1560
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    invoke-interface {v0, v2}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 1530
    :cond_c
    :goto_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeight:I

    neg-int v3, v1

    if-ge v0, v3, :cond_d

    .line 1531
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    neg-int v1, v1

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_d
    if-lez v0, :cond_e

    .line 1533
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    invoke-interface {v0, v2}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    :cond_e
    :goto_1
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    .line 1036
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;->getScrollableView()Landroid/view/View;

    move-result-object v0

    .line 1037
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    instance-of v1, v0, Landroid/widget/AbsListView;

    if-nez v1, :cond_1

    .line 1038
    :cond_0
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1039
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableDisallowIntercept:Z

    .line 1040
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    return-void
.end method

.method public resetNoMoreData()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 1

    const/4 v0, 0x0

    .line 2395
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setNoMoreData(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public setDisableContentWhenLoading(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 0

    .line 2078
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mDisableContentWhenLoading:Z

    return-object p0
.end method

.method public setDisableContentWhenRefresh(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 0

    .line 2065
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mDisableContentWhenRefresh:Z

    return-object p0
.end method

.method public setEnableAutoLoadMore(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 0

    .line 1904
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    return-object p0
.end method

.method public setEnableClipFooterWhenFixedBehind(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 0

    .line 2039
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    return-object p0
.end method

.method public setEnableClipHeaderWhenFixedBehind(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 0

    .line 2026
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    return-object p0
.end method

.method public setEnableFooterFollowWhenLoadFinished(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2000
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    return-object p0
.end method

.method public setEnableFooterFollowWhenNoMoreData(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 0

    .line 2013
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    return-object p0
.end method

.method public setEnableFooterTranslationContent(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 0

    .line 1890
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    const/4 p1, 0x1

    .line 1891
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mManualFooterTranslationContent:Z

    return-object p0
.end method

.method public setEnableHeaderTranslationContent(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 0

    .line 1876
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    const/4 p1, 0x1

    .line 1877
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mManualHeaderTranslationContent:Z

    return-object p0
.end method

.method public setEnableLoadMore(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 1

    const/4 v0, 0x1

    .line 1850
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mManualLoadMore:Z

    .line 1851
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    return-object p0
.end method

.method public setEnableLoadMoreWhenContentNotFull(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 1

    .line 1969
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    .line 1970
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    if-eqz v0, :cond_0

    .line 1971
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;->setEnableLoadMoreWhenContentNotFull(Z)V

    :cond_0
    return-object p0
.end method

.method public setEnableNestedScroll(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 0

    .line 2052
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setNestedScrollingEnabled(Z)V

    return-object p0
.end method

.method public setEnableOverScrollBounce(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 0

    .line 1917
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableOverScrollBounce:Z

    return-object p0
.end method

.method public setEnableOverScrollDrag(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 0

    .line 1985
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    return-object p0
.end method

.method public setEnablePureScrollMode(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 0

    .line 1930
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnablePureScrollMode:Z

    return-object p0
.end method

.method public setEnableRefresh(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 0

    .line 1863
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableRefresh:Z

    return-object p0
.end method

.method public setEnableScrollContentWhenLoaded(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 0

    .line 1943
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableScrollContentWhenLoaded:Z

    return-object p0
.end method

.method public setEnableScrollContentWhenRefreshed(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 0

    .line 1956
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableScrollContentWhenRefreshed:Z

    return-object p0
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 1815
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableNestedScrolling:Z

    .line 1816
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mNestedChild:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setNoMoreData(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 2

    .line 2360
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Refreshing:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 2361
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->finishRefreshWithNoMoreData()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    goto/16 :goto_0

    .line 2362
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Loading:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    .line 2363
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->finishLoadMoreWithNoMoreData()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    goto :goto_0

    .line 2364
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eq v0, p1, :cond_3

    .line 2365
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNoMoreData:Z

    .line 2366
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    instance-of v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshFooter;

    if-eqz v1, :cond_3

    .line 2367
    check-cast v0, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshFooter;

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshFooter;->setNoMoreData(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 2368
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    .line 2369
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    .line 2370
    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    move-result-object p1

    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->Translate:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    if-ne p1, v0, :cond_3

    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 2371
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableRefresh:Z

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    .line 2372
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2373
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 2376
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    .line 2377
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Footer:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " NoMoreData is not supported.(\u4e0d\u652f\u6301NoMoreData\uff0c\u8bf7\u4f7f\u7528[ClassicsFooter]\u6216\u8005[\u81ea\u5b9a\u4e49Footer\u5e76\u5b9e\u73b0setNoMoreData\u65b9\u6cd5\u4e14\u8fd4\u56detrue])"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2378
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2379
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-object p0
.end method

.method public setOnLoadMoreListener(Lcom/alibaba/ailabs/genie/message/refresh/listener/OnLoadMoreListener;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 1

    .line 2275
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLoadMoreListener:Lcom/alibaba/ailabs/genie/message/refresh/listener/OnLoadMoreListener;

    .line 2276
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mManualLoadMore:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    return-object p0
.end method

.method public setOnRefreshListener(Lcom/alibaba/ailabs/genie/message/refresh/listener/OnRefreshListener;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 0

    .line 2262
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshListener:Lcom/alibaba/ailabs/genie/message/refresh/listener/OnRefreshListener;

    return-object p0
.end method

.method public setOnRefreshLoadMoreListener(Lcom/alibaba/ailabs/genie/message/refresh/listener/OnRefreshLoadMoreListener;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 1

    .line 2289
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshListener:Lcom/alibaba/ailabs/genie/message/refresh/listener/OnRefreshListener;

    .line 2290
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLoadMoreListener:Lcom/alibaba/ailabs/genie/message/refresh/listener/OnLoadMoreListener;

    .line 2291
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mManualLoadMore:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    return-object p0
.end method

.method public varargs setPrimaryColors([I)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 1
    .param p1    # [I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 2305
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v0, :cond_0

    .line 2306
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->setPrimaryColors([I)V

    .line 2308
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v0, :cond_1

    .line 2309
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->setPrimaryColors([I)V

    .line 2311
    :cond_1
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mPrimaryColors:[I

    return-object p0
.end method

.method public varargs setPrimaryColorsId([I)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 4
    .param p1    # [I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 2325
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 2326
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 2327
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    aget v3, p1, v1

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2329
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setPrimaryColors([I)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    return-object p0
.end method

.method public setReboundDuration(I)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 0

    .line 1837
    iput p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mReboundDuration:I

    return-object p0
.end method

.method public setRefreshFooter(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshFooter;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 1
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshFooter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2151
    invoke-virtual {p0, p1, v0, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setRefreshFooter(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshFooter;II)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public setRefreshFooter(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshFooter;II)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 2
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshFooter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2167
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v0, :cond_0

    .line 2168
    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2170
    :cond_0
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    const/4 v0, 0x0

    .line 2171
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterLocked:Z

    .line 2172
    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterBackgroundColor:I

    .line 2173
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    .line 2174
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNeedTouchEventWhenLoading:Z

    .line 2175
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->unNotify()Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    .line 2176
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mManualLoadMore:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 2181
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v1, :cond_7

    if-nez p2, :cond_3

    const/4 p2, -0x1

    :cond_3
    if-nez p3, :cond_4

    const/4 p3, -0x2

    .line 2187
    :cond_4
    new-instance v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$LayoutParams;

    invoke-direct {v1, p2, p3}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$LayoutParams;-><init>(II)V

    .line 2188
    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshFooter;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 2189
    instance-of p2, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$LayoutParams;

    if-eqz p2, :cond_5

    .line 2190
    move-object v1, p1

    nop

    nop

    .line 2192
    :cond_5
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    move-result-object p1

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->front:Z

    if-eqz p1, :cond_6

    .line 2194
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    invoke-super {p0, p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 2196
    :cond_6
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2198
    :goto_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mPrimaryColors:[I

    if-eqz p1, :cond_7

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz p2, :cond_7

    .line 2199
    invoke-interface {p2, p1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->setPrimaryColors([I)V

    :cond_7
    return-object p0
.end method

.method public setRefreshHeader(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshHeader;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 1
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshHeader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2091
    invoke-virtual {p0, p1, v0, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setRefreshHeader(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshHeader;II)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public setRefreshHeader(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshHeader;II)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 2
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshHeader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2107
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v0, :cond_0

    .line 2108
    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2110
    :cond_0
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    const/4 v0, 0x0

    .line 2111
    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderBackgroundColor:I

    .line 2112
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderNeedTouchEventWhenRefreshing:Z

    .line 2113
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->unNotify()Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    .line 2118
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v1, :cond_5

    if-nez p2, :cond_1

    const/4 p2, -0x1

    :cond_1
    if-nez p3, :cond_2

    const/4 p3, -0x2

    .line 2124
    :cond_2
    new-instance v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$LayoutParams;

    invoke-direct {v1, p2, p3}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$LayoutParams;-><init>(II)V

    .line 2125
    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshHeader;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 2126
    instance-of p2, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$LayoutParams;

    if-eqz p2, :cond_3

    .line 2127
    move-object v1, p1

    nop

    nop

    .line 2129
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    move-result-object p1

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->front:Z

    if-eqz p1, :cond_4

    .line 2131
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    invoke-super {p0, p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2133
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2135
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mPrimaryColors:[I

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz p2, :cond_5

    .line 2136
    invoke-interface {p2, p1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->setPrimaryColors([I)V

    :cond_5
    return-object p0
.end method

.method public setScrollBoundaryDecider(Lcom/alibaba/ailabs/genie/message/refresh/interfac/ScrollBoundaryDecider;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 1

    .line 2344
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mScrollBoundaryDecider:Lcom/alibaba/ailabs/genie/message/refresh/interfac/ScrollBoundaryDecider;

    .line 2345
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    if-eqz v0, :cond_0

    .line 2346
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;->setScrollBoundaryDecider(Lcom/alibaba/ailabs/genie/message/refresh/interfac/ScrollBoundaryDecider;)V

    :cond_0
    return-object p0
.end method

.method protected setStateDirectLoading(Z)V
    .locals 3

    .line 1162
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Loading:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-eq v0, v1, :cond_1

    .line 1163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastOpenTime:J

    const/4 v0, 0x1

    .line 1164
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterLocked:Z

    .line 1165
    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Loading:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->notifyStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    .line 1166
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLoadMoreListener:Lcom/alibaba/ailabs/genie/message/refresh/listener/OnLoadMoreListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1168
    invoke-interface {v0, p0}, Lcom/alibaba/ailabs/genie/message/refresh/listener/OnLoadMoreListener;->onLoadMore(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;)V

    .line 1171
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz p1, :cond_1

    .line 1172
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeight:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterMaxDragRate:F

    int-to-float v2, v0

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-interface {p1, p0, v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->onStartAnimator(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;II)V

    :cond_1
    return-void
.end method

.method protected setStateLoading(Z)V
    .locals 5

    .line 1183
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$1;-><init>(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;Z)V

    .line 1192
    sget-object p1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->LoadReleased:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->notifyStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    .line 1193
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeight:I

    neg-int v1, v1

    invoke-interface {p1, v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1195
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1197
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v1, :cond_1

    .line 1200
    iget v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeight:I

    iget v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterMaxDragRate:F

    int-to-float v4, v2

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-interface {v1, p0, v2, v3}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->onReleased(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;II)V

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 1204
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_2
    return-void
.end method

.method protected setStateRefreshing(Z)V
    .locals 5

    .line 1214
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$2;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$2;-><init>(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;Z)V

    .line 1232
    sget-object p1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->RefreshReleased:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->notifyStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    .line 1233
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeight:I

    invoke-interface {p1, v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1235
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1237
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v1, :cond_1

    .line 1240
    iget v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeight:I

    iget v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderMaxDragRate:F

    int-to-float v4, v2

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-interface {v1, p0, v2, v3}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->onReleased(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;II)V

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 1244
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_2
    return-void
.end method

.method protected setViceState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V
    .locals 2

    .line 1268
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isDragging:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isHeader:Z

    iget-boolean v1, p1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isHeader:Z

    if-eq v0, v1, :cond_0

    .line 1269
    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->None:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->notifyStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    .line 1271
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mViceState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-eq v0, p1, :cond_1

    .line 1272
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mViceState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    :cond_1
    return-void
.end method

.method protected startFlingIfNeed(F)Z
    .locals 13

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    .line 1051
    iget p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mCurrentVelocity:I

    int-to-float p1, p1

    .line 1052
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    if-eqz v1, :cond_1

    .line 1056
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->getScaleY()F

    .line 1058
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    invoke-interface {v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;->getView()Landroid/view/View;

    move-result-object v1

    .line 1059
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    neg-float p1, p1

    .line 1063
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mMinimumVelocity:I

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_a

    .line 1064
    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_4

    .line 1071
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Refreshing:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const/4 v4, 0x1

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Loading:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    if-gez v1, :cond_2

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1074
    :cond_2
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isReleaseToOpening:Z

    if-eqz v1, :cond_4

    return v4

    .line 1072
    :cond_3
    :goto_0
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$FlingRunnable;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$FlingRunnable;-><init>(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;F)V

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$FlingRunnable;->start()Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    return v4

    :cond_4
    cmpg-float v1, p1, v0

    if-gez v1, :cond_7

    .line 1078
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableOverScrollBounce:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v1, :cond_9

    :cond_5
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Loading:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v1, v2, :cond_6

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    if-gez v1, :cond_9

    :cond_6
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_7
    cmpl-float v0, p1, v0

    if-lez v0, :cond_a

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableOverScrollBounce:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableRefresh:Z

    if-nez v0, :cond_9

    :cond_8
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Refreshing:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v0, v1, :cond_a

    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    if-gtz v0, :cond_a

    .line 1087
    :cond_9
    iput-boolean v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mVerticalPermit:Z

    .line 1088
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    neg-float p1, p1

    float-to-int v8, p1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, -0x7fffffff

    const v12, 0x7fffffff

    invoke-virtual/range {v4 .. v12}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1089
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1091
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_a
    return v3
.end method
