.class public Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "TBSwipeRefreshLayout.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPushLoadMoreListener;,
        Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPullRefreshListener;
    }
.end annotation


# static fields
.field private static final ANIMATE_TO_BOTTOM_DURATION:I = 0x12c

.field private static final ANIMATE_TO_START_DURATION:I = 0x12c

.field private static final ANIMATE_TO_TRIGGER_DURATION:I = 0x12c

.field private static final DECELERATE_INTERPOLATION_FACTOR:F = 2.0f

.field private static final DRAG_RATE:F = 1.0f

.field private static FOOTER_VIEW_HEIGHT:I = 0x32

.field private static FOOTER_VIEW_MAX_HEIGHT:I = 0x64

.field private static HEADER_VIEW_HEIGHT:I = 0x48

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_ATTRS:[I

.field private static MIN_GAP_DISTANCE_TO_SECOND_FLOOR:I = 0x14

.field private static final TAG:Ljava/lang/String; = "TBSwipeRefreshLayout"


# instance fields
.field private mActivePointerId:I

.field private mAutoRefreshDuration:J

.field private mContentHeight:I

.field protected mCurrentTargetOffsetTop:I

.field private mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mDensity:F

.field protected mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDistance:I

.field private mDragRate:F

.field private mEnableTargetOffset:Z

.field private mFooterView:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;

.field protected mFooterViewHeight:I

.field private mFooterViewIndex:I

.field protected mFooterViewWidth:I

.field protected mFrom:I

.field private mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

.field protected mHeaderViewHeight:I

.field private mHeaderViewIndex:I

.field protected mHeaderViewWidth:I

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mIsMultiPointer:Z

.field private mLastMotionY:F

.field private mLazyLoadMoreEnable:Z

.field private mLazyPullRefreshEnable:Z

.field private mLoadMoreEnabled:Z

.field private mLoadingMore:Z

.field private mMaxPushDistance:I

.field private mNavigationBarHeight:I

.field private mNotify:Z

.field private mOnPushLoadMoreListener:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPushLoadMoreListener;

.field private mOriginalOffsetCalculated:Z

.field protected mOriginalOffsetTop:I

.field private mPositionY:I

.field private mPreActivePointerId:I

.field private mPreDistance:I

.field private mPrePositionY:I

.field private mPullRefreshEnabled:Z

.field private mPullRefreshListener:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPullRefreshListener;

.field private mPushDistance:I

.field private mRefreshListener:Landroid/animation/Animator$AnimatorListener;

.field protected mRefreshOffset:I

.field private mRefreshing:Z

.field private mSecondFloorDistance:I

.field private mSecondFloorEnabled:Z

.field private mStartY:I

.field private mTarget:Landroid/view/View;

.field private mTargetScrollWithLayout:Z

.field private mTotalDragDistance:I

.field protected mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    .line 82
    new-array v0, v0, [I

    sget v1, Lcom/taobao/uikit/extend/R$attr;->uik_swipeRefreshPullRefresh:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/taobao/uikit/extend/R$attr;->uik_swipeRefreshPushLoad:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/taobao/uikit/extend/R$attr;->uik_swipeRefreshSecondFloor:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/taobao/uikit/extend/R$attr;->uik_swipeRefreshHeaderHeight:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/taobao/uikit/extend/R$attr;->uik_swipeRefreshFooterHeight:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lcom/taobao/uikit/extend/R$attr;->uik_swipeRefreshLazyPullRefresh:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sget v1, Lcom/taobao/uikit/extend/R$attr;->uik_swipeRefreshLazyPushLoad:I

    const/4 v2, 0x6

    aput v1, v0, v2

    sput-object v0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->LAYOUT_ATTRS:[I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 275
    invoke-direct {p0, p1, v0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 279
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 101
    iput v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderViewIndex:I

    .line 102
    iput v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterViewIndex:I

    const/4 v1, 0x0

    .line 123
    iput-boolean v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mLazyPullRefreshEnable:Z

    .line 124
    iput-boolean v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mLazyLoadMoreEnable:Z

    const/4 v2, 0x1

    .line 128
    iput-boolean v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mTargetScrollWithLayout:Z

    .line 135
    iput v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mActivePointerId:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 143
    iput v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mDragRate:F

    .line 144
    iput v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mTotalDragDistance:I

    .line 145
    iput v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mSecondFloorDistance:I

    .line 158
    iput-boolean v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mEnableTargetOffset:Z

    .line 160
    iput v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPushDistance:I

    const-wide/16 v3, 0x7d0

    .line 171
    iput-wide v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mAutoRefreshDuration:J

    .line 174
    iput-boolean v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mIsMultiPointer:Z

    .line 184
    iput v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPositionY:I

    .line 186
    iput v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPrePositionY:I

    .line 189
    iput v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPreActivePointerId:I

    .line 191
    iput v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mContentHeight:I

    .line 192
    iput v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mNavigationBarHeight:I

    .line 197
    new-instance v3, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$1;

    invoke-direct {v3, p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$1;-><init>(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)V

    iput-object v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mRefreshListener:Landroid/animation/Animator$AnimatorListener;

    .line 282
    invoke-virtual {p0, v1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->setWillNotDraw(Z)V

    .line 294
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/uikit/extend/utils/DisplayUtil;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v3

    iput-object v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 296
    iget-object v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mDensity:F

    .line 298
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/taobao/uikit/extend/R$dimen;->uik_refresh_header_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sput v3, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->HEADER_VIEW_HEIGHT:I

    .line 299
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/taobao/uikit/extend/R$dimen;->uik_refresh_second_floor_gap:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sput v3, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->MIN_GAP_DISTANCE_TO_SECOND_FLOOR:I

    .line 300
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/taobao/uikit/extend/R$dimen;->uik_refresh_footer_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sput v3, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->FOOTER_VIEW_HEIGHT:I

    .line 301
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/taobao/uikit/extend/R$dimen;->uik_refresh_footer_max_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sput v3, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->FOOTER_VIEW_MAX_HEIGHT:I

    .line 304
    sget-object v3, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->LAYOUT_ATTRS:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 305
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPullRefreshEnabled:Z

    .line 306
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mLoadMoreEnabled:Z

    const/4 v3, 0x2

    .line 307
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mSecondFloorEnabled:Z

    const/4 v3, 0x5

    .line 308
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mLazyPullRefreshEnable:Z

    const/4 v3, 0x6

    .line 309
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mLazyLoadMoreEnable:Z

    .line 311
    iget-boolean v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mSecondFloorEnabled:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPullRefreshEnabled:Z

    if-nez v3, :cond_0

    const-string p1, "TBSwipeRefreshLayout"

    const-string p2, "Cannot enable second floor when pull to refresh disabled!"

    .line 313
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 317
    :cond_0
    iget-object v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderViewWidth:I

    const/4 v3, 0x3

    .line 318
    sget v4, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->HEADER_VIEW_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderViewHeight:I

    .line 319
    iget-object v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterViewWidth:I

    const/4 v3, 0x4

    .line 320
    sget v4, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->FOOTER_VIEW_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterViewHeight:I

    .line 322
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 324
    iget p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mNavigationBarHeight:I

    if-ne p2, v0, :cond_1

    .line 325
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    invoke-static {p2}, Lcom/taobao/uikit/extend/utils/NavigationBarUtils;->getNavigationBarHeight(Landroid/app/Activity;)I

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mNavigationBarHeight:I

    .line 328
    :cond_1
    iget p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mContentHeight:I

    if-ne p2, v0, :cond_2

    .line 329
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    invoke-static {p2}, Lcom/taobao/uikit/extend/utils/NavigationBarUtils;->getContentHeight(Landroid/app/Activity;)I

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mContentHeight:I

    .line 333
    :cond_2
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p2, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 336
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mTouchSlop:I

    .line 339
    iget-boolean p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mLazyPullRefreshEnable:Z

    if-nez p1, :cond_3

    .line 340
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->createHeaderView()V

    .line 343
    :cond_3
    iget-boolean p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mLazyLoadMoreEnable:Z

    if-nez p1, :cond_4

    .line 344
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->createFooterView()V

    .line 348
    :cond_4
    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V

    .line 350
    iput v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mRefreshOffset:I

    .line 352
    sget p1, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->HEADER_VIEW_HEIGHT:I

    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mTotalDragDistance:I

    .line 354
    iget p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mTotalDragDistance:I

    sget p2, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->MIN_GAP_DISTANCE_TO_SECOND_FLOOR:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mSecondFloorDistance:I

    .line 356
    sget p1, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->FOOTER_VIEW_MAX_HEIGHT:I

    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mMaxPushDistance:I

    .line 358
    iget p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mContentHeight:I

    neg-int p1, p1

    iget p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mRefreshOffset:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mOriginalOffsetTop:I

    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mRefreshing:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPushLoadMoreListener;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mOnPushLoadMoreListener:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPushLoadMoreListener;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mLoadingMore:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterView:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mNotify:Z

    return p0
.end method

.method static synthetic access$300(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPullRefreshListener;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPullRefreshListener:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPullRefreshListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->updateHeaderPosition(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$500(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->updatePullListenerCallBack()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$600(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mRefreshListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)J
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mAutoRefreshDuration:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPushDistance:I

    return p1
.end method

.method static synthetic access$900(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->updateFooterPosition()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private animateOffsetToBottomPosition(ILandroid/animation/Animator$AnimatorListener;)V
    .locals 2

    .line 1301
    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFrom:I

    .line 1302
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 p1, 0x2

    new-array p1, p1, [I

    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFrom:I

    const/4 v1, 0x0

    aput v0, p1, v1

    const/4 v0, 0x1

    aput v1, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1304
    new-instance v0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$8;

    invoke-direct {v0, p0, p1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$8;-><init>(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x12c

    .line 1312
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1313
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p2, :cond_0

    .line 1315
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1318
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private animateOffsetToCorrectPosition(ILandroid/animation/Animator$AnimatorListener;)V
    .locals 3

    .line 1236
    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFrom:I

    .line 1240
    iget-boolean p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mEnableTargetOffset:Z

    if-eqz p1, :cond_0

    .line 1241
    iget p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderViewHeight:I

    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mOriginalOffsetTop:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mRefreshOffset:I

    goto :goto_0

    .line 1243
    :cond_0
    iget p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderViewHeight:I

    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mOriginalOffsetTop:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    :goto_0
    sub-int/2addr p1, v0

    const/4 v0, 0x2

    .line 1246
    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFrom:I

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 1249
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1252
    :cond_1
    new-instance p2, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$6;

    invoke-direct {p2, p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$6;-><init>(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x12c

    .line 1260
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1261
    iget-object p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1263
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private animateOffsetToStartPosition(ILandroid/animation/Animator$AnimatorListener;)V
    .locals 2

    .line 1271
    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFrom:I

    const/4 p1, 0x2

    .line 1273
    new-array p1, p1, [I

    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFrom:I

    const/4 v1, 0x0

    aput v0, p1, v1

    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mOriginalOffsetTop:I

    const/4 v1, 0x1

    aput v0, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1275
    new-instance v0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$7;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$7;-><init>(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x12c

    .line 1287
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1288
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p2, :cond_0

    .line 1290
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1293
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private animatorFooterToBottom(II)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v0, 0x2

    .line 1201
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    .line 1202
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1203
    new-instance v0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$4;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$4;-><init>(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1213
    new-instance v0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$5;

    invoke-direct {v0, p0, p2}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$5;-><init>(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1227
    iget-object p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1228
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private ensureTarget()V
    .locals 3

    .line 961
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 962
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 963
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 964
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterView:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;

    .line 965
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 966
    iput-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mTarget:Landroid/view/View;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private getMotionEventY(Landroid/view/MotionEvent;I)F
    .locals 0

    .line 654
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result p2

    if-gez p2, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    .line 658
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    return p1
.end method

.method private getPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 0

    .line 1685
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 1687
    iput p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mActivePointerId:I

    :cond_0
    return p1
.end method

.method private handlePullTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 7

    const/4 v0, 0x1

    if-eqz p2, :cond_10

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_b

    const/4 v3, 0x2

    if-eq p2, v3, :cond_3

    const/4 v3, 0x3

    if-eq p2, v3, :cond_b

    const/4 v1, 0x5

    if-eq p2, v1, :cond_1

    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    goto/16 :goto_3

    .line 799
    :cond_0
    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 788
    :cond_1
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result p2

    if-gez p2, :cond_2

    return v2

    .line 792
    :cond_2
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mLastMotionY:F

    .line 793
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mActivePointerId:I

    .line 794
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mIsMultiPointer:Z

    goto/16 :goto_3

    .line 712
    :cond_3
    iget p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mActivePointerId:I

    if-ne p2, v1, :cond_4

    .line 713
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result p2

    .line 714
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mActivePointerId:I

    .line 715
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mLastMotionY:F

    .line 716
    iget p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mActivePointerId:I

    iput p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPreActivePointerId:I

    .line 722
    :cond_4
    :try_start_0
    iget p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mActivePointerId:I

    invoke-direct {p0, p1, p2}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result p2

    .line 723
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    float-to-int p1, p1

    .line 731
    iget-boolean p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mIsMultiPointer:Z

    if-eqz p2, :cond_6

    .line 732
    iget p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPreActivePointerId:I

    iget v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mActivePointerId:I

    if-ne p2, v1, :cond_5

    .line 733
    iget p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mDistance:I

    int-to-float p2, p2

    int-to-float p1, p1

    iget v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mLastMotionY:F

    sub-float v3, p1, v1

    add-float/2addr p2, v3

    float-to-int p2, p2

    .line 734
    iget v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPositionY:I

    int-to-float v3, v3

    sub-float/2addr p1, v1

    add-float/2addr v3, p1

    float-to-int p1, v3

    .line 735
    iput p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPreDistance:I

    .line 736
    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPrePositionY:I

    goto :goto_0

    .line 738
    :cond_5
    iget p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPreDistance:I

    int-to-float v3, p2

    int-to-float p1, p1

    iget v4, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mLastMotionY:F

    sub-float/2addr p1, v4

    add-float/2addr v3, p1

    float-to-int p1, v3

    .line 739
    iget v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPrePositionY:I

    .line 740
    iput v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPreActivePointerId:I

    .line 741
    iput p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mDistance:I

    .line 742
    iput v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPositionY:I

    move p2, p1

    goto :goto_0

    .line 745
    :cond_6
    iget p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mStartY:I

    sub-int p2, p1, p2

    iput p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mDistance:I

    iput p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPreDistance:I

    .line 746
    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPositionY:I

    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPrePositionY:I

    .line 749
    :goto_0
    iget-boolean p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz p1, :cond_10

    int-to-float p1, p2

    .line 750
    iget p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mDragRate:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 752
    iget-object p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p2, p2

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/2addr v1, p1

    int-to-float v1, v1

    div-float/2addr p2, v1

    float-to-double v3, p2

    const-wide v5, 0x3ff199999999999aL    # 1.1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    double-to-float p2, v3

    int-to-float p1, p1

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 756
    iget-object p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p2, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float p2, p2, v1

    .line 758
    iget v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mTotalDragDistance:I

    int-to-float v3, v3

    div-float/2addr p2, v3

    const/4 v3, 0x0

    cmpg-float v3, p2, v3

    if-gez v3, :cond_7

    return v2

    .line 763
    :cond_7
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 765
    iget v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mTotalDragDistance:I

    if-ge p1, v1, :cond_8

    .line 766
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    sget-object v2, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->PULL_TO_REFRESH:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    invoke-virtual {v1, v2}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->changeToState(Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;)V

    goto :goto_1

    .line 769
    :cond_8
    iget-boolean v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mSecondFloorEnabled:Z

    if-eqz v1, :cond_a

    .line 770
    iget v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mSecondFloorDistance:I

    if-le p1, v1, :cond_9

    .line 771
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    sget-object v2, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->PREPARE_TO_SECOND_FLOOR:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    invoke-virtual {v1, v2}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->changeToState(Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;)V

    goto :goto_1

    .line 773
    :cond_9
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    sget-object v2, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->RELEASE_TO_REFRESH:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    invoke-virtual {v1, v2}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->changeToState(Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;)V

    goto :goto_1

    .line 776
    :cond_a
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    sget-object v2, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->RELEASE_TO_REFRESH:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    invoke-virtual {v1, v2}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->changeToState(Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;)V

    .line 781
    :goto_1
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    invoke-virtual {v1, p2}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->setProgress(F)V

    .line 783
    iget p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iget v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mOriginalOffsetTop:I

    sub-int/2addr p2, v1

    sub-int/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->updateHeaderPosition(I)V

    goto :goto_3

    :catch_0
    move-exception p1

    .line 725
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    .line 805
    :cond_b
    iget p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mActivePointerId:I

    if-ne p1, v1, :cond_d

    if-ne p2, v0, :cond_c

    const-string p1, "TBSwipeRefreshLayout"

    const-string p2, "Got ACTION_UP event but don\'t have an active pointer id."

    .line 807
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return v2

    .line 812
    :cond_d
    iput-boolean v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mIsBeingDragged:Z

    .line 814
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->getCurrentState()Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    move-result-object p1

    sget-object p2, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->PREPARE_TO_SECOND_FLOOR:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    if-ne p1, p2, :cond_e

    iget-boolean p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mSecondFloorEnabled:Z

    if-eqz p1, :cond_e

    .line 816
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    sget-object p2, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->SECOND_FLOOR_START:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    invoke-virtual {p1, p2}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->changeToState(Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;)V

    .line 818
    new-instance p1, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$2;

    invoke-direct {p1, p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$2;-><init>(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)V

    .line 843
    iget p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    invoke-direct {p0, p2, p1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->animateOffsetToBottomPosition(ILandroid/animation/Animator$AnimatorListener;)V

    goto :goto_2

    .line 844
    :cond_e
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->getCurrentState()Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    move-result-object p1

    sget-object p2, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->RELEASE_TO_REFRESH:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    if-ne p1, p2, :cond_f

    .line 847
    invoke-direct {p0, v0, v0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->setRefreshing(ZZ)V

    goto :goto_2

    .line 852
    :cond_f
    iput-boolean v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mRefreshing:Z

    .line 854
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    sget-object p2, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->NONE:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    invoke-virtual {p1, p2}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->changeToState(Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;)V

    .line 855
    iget p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->animateOffsetToStartPosition(ILandroid/animation/Animator$AnimatorListener;)V

    .line 858
    :goto_2
    iput v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mActivePointerId:I

    .line 859
    iput-boolean v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mIsMultiPointer:Z

    .line 861
    iput v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mDistance:I

    .line 862
    iput v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPositionY:I

    return v2

    :cond_10
    :goto_3
    return v0
.end method

.method private handlePushTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_c

    const-string v2, "TBSwipeRefreshLayout"

    if-eq p2, v0, :cond_6

    const/4 v3, 0x2

    if-eq p2, v3, :cond_2

    const/4 v3, 0x3

    if-eq p2, v3, :cond_6

    const/4 v1, 0x5

    if-eq p2, v1, :cond_1

    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    goto/16 :goto_2

    .line 918
    :cond_0
    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 912
    :cond_1
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result p2

    .line 913
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mActivePointerId:I

    goto/16 :goto_2

    .line 884
    :cond_2
    iget p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mActivePointerId:I

    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result p2

    if-gez p2, :cond_3

    const-string p1, "Got ACTION_MOVE event but have an invalid active pointer id."

    .line 886
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 890
    :cond_3
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 891
    iget p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mInitialMotionY:F

    sub-float/2addr p2, p1

    iget p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mDragRate:F

    mul-float p2, p2, p1

    .line 893
    iget-boolean p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz p1, :cond_d

    float-to-int p1, p2

    .line 895
    iget p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mMaxPushDistance:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPushDistance:I

    .line 897
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->updateFooterPosition()V

    .line 898
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mOnPushLoadMoreListener:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPushLoadMoreListener;

    if-eqz p1, :cond_d

    .line 900
    iget p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPushDistance:I

    iget p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterViewHeight:I

    if-lt p1, p2, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    .line 903
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterView:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;

    sget-object p2, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;->RELEASE_TO_LOAD:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    invoke-virtual {p1, p2}, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;->changeToState(Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;)V

    goto :goto_2

    .line 905
    :cond_5
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterView:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;

    sget-object p2, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;->PUSH_TO_LOAD:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    invoke-virtual {p1, p2}, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;->changeToState(Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;)V

    goto :goto_2

    .line 923
    :cond_6
    iget v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mActivePointerId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_8

    if-ne p2, v0, :cond_7

    const-string p1, "Got ACTION_UP event but don\'t have an active pointer id."

    .line 925
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v1

    .line 929
    :cond_8
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result p2

    if-gez p2, :cond_9

    return v1

    .line 935
    :cond_9
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 936
    iget p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mInitialMotionY:F

    sub-float/2addr p2, p1

    iget p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mDragRate:F

    mul-float p2, p2, p1

    iget p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mMaxPushDistance:I

    int-to-float p1, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 938
    iput-boolean v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mIsBeingDragged:Z

    .line 939
    iput v4, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mActivePointerId:I

    .line 941
    iget p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterViewHeight:I

    int-to-float v0, p2

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_b

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mOnPushLoadMoreListener:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPushLoadMoreListener;

    if-nez v0, :cond_a

    goto :goto_0

    .line 944
    :cond_a
    iput p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPushDistance:I

    goto :goto_1

    .line 942
    :cond_b
    :goto_0
    iput v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPushDistance:I

    :goto_1
    float-to-int p1, p1

    .line 947
    iget p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPushDistance:I

    invoke-direct {p0, p1, p2}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->animatorFooterToBottom(II)V

    return v1

    .line 880
    :cond_c
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mActivePointerId:I

    .line 881
    iput-boolean v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mIsBeingDragged:Z

    :cond_d
    :goto_2
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1374
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1375
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 1376
    iget v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1380
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mLastMotionY:F

    .line 1381
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mActivePointerId:I

    .line 1383
    :cond_1
    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mActivePointerId:I

    invoke-direct {p0, p1, v0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1384
    iget v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mActivePointerId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    return-void

    .line 1387
    :cond_2
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mLastMotionY:F

    return-void
.end method

.method private setRefreshing(ZZ)V
    .locals 2

    .line 1135
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    if-nez v0, :cond_0

    return-void

    .line 1139
    :cond_0
    iget-boolean v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mRefreshing:Z

    if-eq v1, p1, :cond_2

    .line 1140
    iput-boolean p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mNotify:Z

    .line 1141
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->ensureTarget()V

    .line 1142
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mRefreshing:Z

    .line 1143
    iget-boolean p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mRefreshing:Z

    if-eqz p1, :cond_1

    .line 1144
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    sget-object p2, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->REFRESHING:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    invoke-virtual {p1, p2}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->changeToState(Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;)V

    .line 1145
    iget p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iget-object p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mRefreshListener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, p1, p2}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->animateOffsetToCorrectPosition(ILandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 1147
    :cond_1
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    sget-object p2, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->NONE:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    invoke-virtual {p1, p2}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->changeToState(Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;)V

    .line 1148
    iget p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iget-object p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mRefreshListener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, p1, p2}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->animateOffsetToStartPosition(ILandroid/animation/Animator$AnimatorListener;)V

    .line 1150
    invoke-static {}, Lcom/taobao/tao/util/TBSoundPlayer;->getInstance()Lcom/taobao/tao/util/TBSoundPlayer;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/taobao/tao/util/TBSoundPlayer;->playScene(I)V

    goto :goto_0

    .line 1152
    :cond_2
    invoke-virtual {v0}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->getCurrentState()Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    move-result-object p1

    sget-object p2, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->SECOND_FLOOR_END:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    if-ne p1, p2, :cond_3

    const/4 p1, 0x0

    .line 1154
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mRefreshing:Z

    .line 1155
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    sget-object p2, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->NONE:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    invoke-virtual {p1, p2}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->changeToState(Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;)V

    .line 1156
    iget p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iget-object p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mRefreshListener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, p1, p2}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->animateOffsetToStartPosition(ILandroid/animation/Animator$AnimatorListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private startScaleUpAnimation(Landroid/animation/Animator$AnimatorListener;)V
    .locals 3

    .line 1172
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->setVisibility(I)V

    const/4 v0, 0x2

    .line 1174
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1176
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    if-eqz p1, :cond_0

    .line 1179
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1182
    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private updateFooterPosition()V
    .locals 2

    .line 1337
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterView:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;->setVisibility(I)V

    .line 1338
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterView:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;

    invoke-virtual {v0}, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;->bringToFront()V

    .line 1341
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 1342
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterView:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;

    invoke-virtual {v0}, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 1345
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterView:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;

    iget v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPushDistance:I

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;->offsetTopAndBottom(I)V

    .line 1346
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->updateLoadMoreListener()V

    return-void
.end method

.method private updateHeaderPosition(I)V
    .locals 1

    .line 1326
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    invoke-virtual {v0}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->bringToFront()V

    .line 1327
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->offsetTopAndBottom(I)V

    .line 1328
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1329
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->getTop()I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 1330
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->updatePullListenerCallBack()V

    return-void
.end method

.method private updateLoadMoreListener()V
    .locals 2

    .line 1365
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mOnPushLoadMoreListener:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPushLoadMoreListener;

    if-eqz v0, :cond_0

    .line 1366
    iget v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPushDistance:I

    invoke-interface {v0, v1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPushLoadMoreListener;->onPushDistance(I)V

    :cond_0
    return-void
.end method

.method private updatePullListenerCallBack()V
    .locals 2

    .line 1354
    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iget v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mOriginalOffsetTop:I

    sub-int/2addr v0, v1

    .line 1356
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPullRefreshListener:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPullRefreshListener;

    if-eqz v1, :cond_0

    .line 1357
    invoke-interface {v1, v0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPullRefreshListener;->onPullDistance(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createFooterView()V
    .locals 3

    .line 381
    new-instance v0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/uikit/extend/component/refresh/TBDefaultLoadMoreFooter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterView:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;

    .line 382
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mOnPushLoadMoreListener:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPushLoadMoreListener;

    if-eqz v0, :cond_0

    .line 383
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterView:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;

    invoke-virtual {v1, v0}, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;->setPushLoadMoreListener(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPushLoadMoreListener;)V

    .line 385
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterViewHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    .line 386
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xa

    .line 387
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 388
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterView:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;

    invoke-virtual {p0, v1, v0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected createHeaderView()V
    .locals 3

    .line 367
    new-instance v0, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/uikit/extend/component/refresh/TBOldRefreshHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    .line 368
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPullRefreshListener:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPullRefreshListener;

    if-eqz v0, :cond_0

    .line 369
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    invoke-virtual {v1, v0}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->setPullRefreshListener(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPullRefreshListener;)V

    .line 371
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    .line 372
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xc

    .line 373
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 374
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    invoke-virtual {p0, v1, v0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public enableLoadMore(Z)V
    .locals 0

    .line 1423
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mLoadMoreEnabled:Z

    if-eqz p1, :cond_0

    .line 1424
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterView:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;

    if-nez p1, :cond_0

    .line 1425
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->createFooterView()V

    :cond_0
    return-void
.end method

.method public enablePullRefresh(Z)V
    .locals 0

    .line 1413
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPullRefreshEnabled:Z

    if-eqz p1, :cond_0

    .line 1414
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    if-nez p1, :cond_0

    .line 1415
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->createHeaderView()V

    :cond_0
    return-void
.end method

.method public enableSecondFloor(Z)V
    .locals 0

    .line 1433
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mSecondFloorEnabled:Z

    return-void
.end method

.method public enableTargetOffset(Z)V
    .locals 0

    .line 1542
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mEnableTargetOffset:Z

    return-void
.end method

.method protected getChildDrawingOrder(II)I
    .locals 3

    .line 401
    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderViewIndex:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterViewIndex:I

    if-gez v0, :cond_0

    return p2

    .line 405
    :cond_0
    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderViewIndex:I

    if-ltz v0, :cond_9

    iget v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterViewIndex:I

    if-gez v1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, p1, -0x2

    if-ne p2, v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_3

    return v1

    :cond_3
    if-le v1, v0, :cond_4

    move v0, v1

    .line 428
    :cond_4
    iget p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterViewIndex:I

    iget v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderViewIndex:I

    if-ge p1, v1, :cond_5

    goto :goto_0

    :cond_5
    move p1, v1

    :goto_0
    if-lt p2, p1, :cond_6

    add-int/lit8 p1, v0, -0x1

    if-ge p2, p1, :cond_6

    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_6
    if-ge p2, v0, :cond_8

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_7

    goto :goto_1

    :cond_7
    return p2

    :cond_8
    :goto_1
    add-int/lit8 p2, p2, 0x2

    return p2

    .line 407
    :cond_9
    :goto_2
    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderViewIndex:I

    if-gez v0, :cond_a

    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterViewIndex:I

    :cond_a
    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_b

    return v0

    :cond_b
    if-lt p2, v0, :cond_c

    add-int/lit8 p2, p2, 0x1

    :cond_c
    return p2
.end method

.method public getDistanceToRefresh()F
    .locals 1

    .line 1460
    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mTotalDragDistance:I

    int-to-float v0, v0

    return v0
.end method

.method public getDistanceToSecondFloor()F
    .locals 1

    .line 1480
    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mSecondFloorDistance:I

    int-to-float v0, v0

    return v0
.end method

.method public getFooterViewHeight()I
    .locals 1

    .line 1667
    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterViewHeight:I

    return v0
.end method

.method public getHeaderViewHeight()I
    .locals 1

    .line 1634
    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderViewHeight:I

    return v0
.end method

.method public getLoadMoreFooter()Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;
    .locals 1

    .line 1681
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterView:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;

    return-object v0
.end method

.method public getRefresHeader()Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;
    .locals 1

    .line 1674
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    return-object v0
.end method

.method public getRefreshOffset()I
    .locals 1

    .line 1549
    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mRefreshOffset:I

    return v0
.end method

.method public isChildScrollToBottom()Z
    .locals 6

    .line 990
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->isChildScrollToTop()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 993
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v2, v0, Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 994
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 995
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    .line 996
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 997
    instance-of v4, v2, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v4, :cond_1

    if-lez v0, :cond_1

    .line 998
    nop

    nop

    .line 999
    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v2

    sub-int/2addr v0, v3

    if-ne v2, v0, :cond_2

    return v3

    .line 1002
    :cond_1
    instance-of v4, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v4, :cond_2

    .line 1003
    nop

    nop

    const/4 v4, 0x2

    .line 1004
    new-array v4, v4, [I

    .line 1006
    invoke-virtual {v2, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    .line 1007
    aget v2, v4, v1

    aget v4, v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v0, v3

    if-ne v2, v0, :cond_2

    return v3

    :cond_2
    return v1

    .line 1013
    :cond_3
    instance-of v2, v0, Landroid/widget/AbsListView;

    if-eqz v2, :cond_6

    .line 1014
    nop

    nop

    .line 1015
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 1016
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v4

    if-nez v4, :cond_4

    .line 1018
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1019
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v5

    if-lt v4, v5, :cond_4

    return v1

    .line 1022
    :cond_4
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    if-lez v0, :cond_5

    if-lez v2, :cond_5

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_5

    return v3

    :cond_5
    return v1

    .line 1027
    :cond_6
    instance-of v2, v0, Landroid/widget/ScrollView;

    if-eqz v2, :cond_7

    .line 1028
    nop

    nop

    .line 1030
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1032
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    .line 1033
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    add-int/2addr v4, v0

    sub-int/2addr v2, v4

    if-nez v2, :cond_8

    return v3

    .line 1038
    :cond_7
    instance-of v2, v0, Landroid/support/v4/widget/NestedScrollView;

    if-eqz v2, :cond_8

    .line 1039
    nop

    nop

    .line 1040
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1042
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    add-int/2addr v4, v0

    sub-int/2addr v2, v4

    if-nez v2, :cond_8

    return v3

    :cond_8
    return v1
.end method

.method public isChildScrollToTop()Z
    .locals 2

    .line 981
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mTarget:Landroid/view/View;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isRefreshing()Z
    .locals 3

    .line 1190
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getRefresHeader()Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getRefresHeader()Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->getCurrentState()Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    move-result-object v0

    sget-object v2, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->NONE:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public isTargetScrollWithLayout()Z
    .locals 1

    .line 1396
    iget-boolean v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mTargetScrollWithLayout:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1694
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1696
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/uikit/extend/utils/DisplayUtil;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 1698
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mDensity:F

    .line 1699
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderViewHeight:I

    .line 1700
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterViewHeight:I

    .line 1702
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->requestLayout()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 554
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->ensureTarget()V

    .line 556
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 559
    iget-boolean v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPullRefreshEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->isChildScrollToTop()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 561
    iget-object v4, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->getCurrentState()Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    move-result-object v4

    sget-object v5, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->NONE:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    if-eq v4, v5, :cond_1

    const/4 v1, 0x1

    .line 566
    :cond_1
    iget-object v4, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->getCurrentState()Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    move-result-object v4

    sget-object v5, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->SECOND_FLOOR_START:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    .line 567
    invoke-virtual {v4}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->getCurrentState()Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    move-result-object v4

    sget-object v5, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->SECOND_FLOOR_END:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    if-ne v4, v5, :cond_3

    :cond_2
    const/4 v1, 0x0

    .line 572
    :cond_3
    iget-object v4, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterView:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;

    if-nez v4, :cond_5

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    iget-boolean v4, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mLoadMoreEnabled:Z

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->isChildScrollToBottom()Z

    move-result v4

    :goto_1
    if-nez v4, :cond_6

    .line 574
    iget-object v5, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterView:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;->getCurrentState()Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    move-result-object v5

    sget-object v6, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;->NONE:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    if-eq v5, v6, :cond_6

    const/4 v4, 0x1

    :cond_6
    if-nez v1, :cond_7

    if-nez v4, :cond_7

    return v2

    :cond_7
    const/high16 v1, -0x40800000    # -1.0f

    const/4 v4, -0x1

    if-eqz v0, :cond_e

    if-eq v0, v3, :cond_d

    const/4 v5, 0x2

    if-eq v0, v5, :cond_9

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    const/4 v1, 0x6

    if-eq v0, v1, :cond_8

    goto/16 :goto_2

    .line 639
    :cond_8
    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 614
    :cond_9
    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mActivePointerId:I

    if-ne v0, v4, :cond_a

    const-string p1, "TBSwipeRefreshLayout"

    const-string v0, "Got ACTION_MOVE event but don\'t have an active pointer id."

    .line 615
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 619
    :cond_a
    invoke-direct {p0, p1, v0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getMotionEventY(Landroid/view/MotionEvent;I)F

    move-result p1

    cmpl-float v0, p1, v1

    if-nez v0, :cond_b

    return v2

    .line 625
    :cond_b
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->isChildScrollToBottom()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 626
    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mInitialMotionY:F

    sub-float/2addr v0, p1

    .line 627
    iget p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mTouchSlop:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_12

    iget-boolean p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mIsBeingDragged:Z

    if-nez p1, :cond_12

    .line 628
    iput-boolean v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mIsBeingDragged:Z

    goto :goto_2

    .line 630
    :cond_c
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->isChildScrollToTop()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 631
    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mInitialMotionY:F

    sub-float/2addr p1, v0

    .line 632
    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_12

    iget-boolean p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mIsBeingDragged:Z

    if-nez p1, :cond_12

    .line 633
    iput-boolean v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mIsBeingDragged:Z

    goto :goto_2

    .line 643
    :cond_d
    iput-boolean v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mIsBeingDragged:Z

    .line 644
    iput v4, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mActivePointerId:I

    goto :goto_2

    .line 586
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mStartY:I

    .line 587
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 588
    iget v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mActivePointerId:I

    if-ne v3, v4, :cond_f

    .line 589
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mActivePointerId:I

    .line 590
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mLastMotionY:F

    .line 591
    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mActivePointerId:I

    iput v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPreActivePointerId:I

    .line 594
    :cond_f
    iput-boolean v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mIsBeingDragged:Z

    .line 596
    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mActivePointerId:I

    invoke-direct {p0, p1, v0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getMotionEventY(Landroid/view/MotionEvent;I)F

    move-result p1

    cmpl-float v0, p1, v1

    if-nez v0, :cond_10

    return v2

    .line 600
    :cond_10
    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mInitialMotionY:F

    .line 602
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->getCurrentState()Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    move-result-object p1

    sget-object v0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->REFRESHING:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    if-ne p1, v0, :cond_11

    .line 603
    invoke-virtual {p0, v2}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->setRefreshing(Z)V

    .line 606
    :cond_11
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterView:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;->getCurrentState()Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    move-result-object p1

    sget-object v0, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;->LOADING:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    if-ne p1, v0, :cond_12

    .line 607
    invoke-virtual {p0, v2}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->setLoadMore(Z)V

    .line 647
    :cond_12
    :goto_2
    iget-boolean p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mIsBeingDragged:Z

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 492
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getMeasuredWidth()I

    move-result p1

    .line 493
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getMeasuredHeight()I

    move-result p2

    .line 495
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getChildCount()I

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 499
    :cond_0
    iget-object p3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez p3, :cond_1

    .line 500
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->ensureTarget()V

    .line 503
    :cond_1
    iget-object p3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez p3, :cond_2

    return-void

    .line 508
    :cond_2
    iget p3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iget p4, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mContentHeight:I

    add-int/2addr p3, p4

    .line 510
    iget-boolean p4, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mTargetScrollWithLayout:Z

    const/4 p5, 0x0

    if-nez p4, :cond_3

    const/4 p3, 0x0

    .line 516
    :cond_3
    iget-object p4, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 517
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getPaddingLeft()I

    move-result v0

    .line 518
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, p3

    iget p3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPushDistance:I

    sub-int/2addr v1, p3

    .line 520
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    .line 521
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getPaddingTop()I

    move-result p3

    sub-int p3, p2, p3

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr p3, v2

    .line 522
    iget-boolean v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mEnableTargetOffset:Z

    if-eqz v2, :cond_4

    move v2, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mRefreshOffset:I

    sub-int v2, v1, v2

    :goto_0
    add-int/2addr p1, v0

    add-int/2addr v1, p3

    iget p3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mRefreshOffset:I

    sub-int/2addr v1, p3

    invoke-virtual {p4, v0, v2, p1, v1}, Landroid/view/View;->layout(IIII)V

    .line 525
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    if-eqz p1, :cond_5

    .line 526
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/uikit/extend/utils/DisplayUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderViewWidth:I

    .line 527
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    iget p3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iget p4, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderViewWidth:I

    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mContentHeight:I

    add-int/2addr v0, p3

    invoke-virtual {p1, p5, p3, p4, v0}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->layout(IIII)V

    .line 534
    :cond_5
    iget-boolean p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mSecondFloorEnabled:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    if-eqz p1, :cond_6

    .line 535
    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->getSecondFloorView()Landroid/view/View;

    move-result-object p1

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 539
    :cond_6
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterView:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;

    if-eqz p1, :cond_7

    .line 540
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/uikit/extend/utils/DisplayUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterViewWidth:I

    .line 542
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterView:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;

    iget p3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPushDistance:I

    sub-int p4, p2, p3

    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterViewWidth:I

    iget v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mMaxPushDistance:I

    add-int/2addr p2, v1

    sub-int/2addr p2, p3

    invoke-virtual {p1, p5, p4, v0, p2}, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;->layout(IIII)V

    :cond_7
    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    .line 442
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 443
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez p1, :cond_0

    .line 444
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->ensureTarget()V

    .line 446
    :cond_0
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez p1, :cond_1

    return-void

    .line 451
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 452
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 451
    invoke-virtual {p1, p2, v1}, Landroid/view/View;->measure(II)V

    const/4 p1, -0x1

    .line 455
    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderViewIndex:I

    .line 457
    iget-object p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 458
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/taobao/uikit/extend/utils/DisplayUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderViewWidth:I

    .line 460
    iget-object p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    iget v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderViewWidth:I

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mContentHeight:I

    .line 461
    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 460
    invoke-virtual {p2, v2, v3}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->measure(II)V

    const/4 p2, 0x0

    .line 463
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getChildCount()I

    move-result v2

    if-ge p2, v2, :cond_3

    .line 464
    invoke-virtual {p0, p2}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    if-ne v2, v3, :cond_2

    .line 465
    iput p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderViewIndex:I

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 473
    :cond_3
    :goto_1
    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterViewIndex:I

    .line 474
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterView:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;

    if-eqz p1, :cond_5

    .line 475
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/uikit/extend/utils/DisplayUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterViewWidth:I

    .line 477
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterView:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;

    iget p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterViewWidth:I

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mMaxPushDistance:I

    .line 478
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 477
    invoke-virtual {p1, p2, v0}, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;->measure(II)V

    .line 480
    :goto_2
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_5

    .line 481
    invoke-virtual {p0, v1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterView:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;

    if-ne p1, p2, :cond_4

    .line 482
    iput v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterViewIndex:I

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 664
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 667
    iget-boolean v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPullRefreshEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->isChildScrollToTop()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 669
    iget-object v4, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->getCurrentState()Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    move-result-object v4

    sget-object v5, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->NONE:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    if-eq v4, v5, :cond_1

    const/4 v1, 0x1

    .line 674
    :cond_1
    iget-object v4, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->getCurrentState()Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    move-result-object v4

    sget-object v5, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->SECOND_FLOOR_START:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    .line 675
    invoke-virtual {v4}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->getCurrentState()Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    move-result-object v4

    sget-object v5, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->SECOND_FLOOR_END:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    if-ne v4, v5, :cond_3

    :cond_2
    const/4 v1, 0x0

    .line 680
    :cond_3
    iget-object v4, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterView:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;

    if-nez v4, :cond_5

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    iget-boolean v4, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mLoadMoreEnabled:Z

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->isChildScrollToBottom()Z

    move-result v4

    :goto_1
    if-nez v4, :cond_6

    .line 682
    iget-object v5, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterView:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;->getCurrentState()Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    move-result-object v5

    sget-object v6, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;->NONE:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    if-eq v5, v6, :cond_6

    goto :goto_2

    :cond_6
    move v3, v4

    :goto_2
    if-nez v1, :cond_7

    if-nez v3, :cond_7

    return v2

    :cond_7
    if-eqz v1, :cond_8

    .line 693
    invoke-direct {p0, p1, v0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->handlePullTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result p1

    return p1

    :cond_8
    if-eqz v3, :cond_9

    .line 696
    invoke-direct {p0, p1, v0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->handlePushTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result p1

    return p1

    :cond_9
    return v2
.end method

.method public setAutoRefreshing(Z)V
    .locals 1

    .line 1080
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    if-nez v0, :cond_0

    return-void

    .line 1084
    :cond_0
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mNotify:Z

    .line 1086
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->ensureTarget()V

    const/4 p1, 0x1

    .line 1088
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mRefreshing:Z

    .line 1089
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    sget-object v0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->REFRESHING:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->changeToState(Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;)V

    .line 1090
    iget p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    new-instance v0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$3;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$3;-><init>(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)V

    invoke-direct {p0, p1, v0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->animateOffsetToCorrectPosition(ILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setAutoRefreshingDuration(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 1130
    iput-wide p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mAutoRefreshDuration:J

    :cond_0
    return-void
.end method

.method public setDistanceToRefresh(I)V
    .locals 3

    int-to-float p1, p1

    .line 1442
    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mDensity:F

    mul-float v1, p1, v0

    float-to-int v1, v1

    iget v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderViewHeight:I

    if-ge v1, v2, :cond_0

    return-void

    :cond_0
    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 1447
    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mTotalDragDistance:I

    .line 1449
    iget p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mSecondFloorDistance:I

    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mTotalDragDistance:I

    sub-int/2addr p1, v0

    sget v1, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->MIN_GAP_DISTANCE_TO_SECOND_FLOOR:I

    if-ge p1, v1, :cond_1

    add-int/2addr v0, v1

    .line 1451
    iput v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mSecondFloorDistance:I

    :cond_1
    return-void
.end method

.method public setDistanceToSecondFloor(I)V
    .locals 3

    int-to-float p1, p1

    .line 1468
    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mDensity:F

    mul-float v1, p1, v0

    float-to-int v1, v1

    iget v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mTotalDragDistance:I

    sub-int/2addr v1, v2

    sget v2, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->MIN_GAP_DISTANCE_TO_SECOND_FLOOR:I

    if-ge v1, v2, :cond_0

    const-string p1, "TBSwipeRefreshLayout"

    const-string v0, "Distance to second floor must be more than 50dp longer than distance to refresh"

    .line 1469
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 1472
    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mSecondFloorDistance:I

    return-void
.end method

.method public setDragRate(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1584
    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mDragRate:F

    return-void

    :cond_0
    const-string p1, "TBSwipeRefreshLayout"

    const-string v0, "Drag rate must be larger than 0 and smaller than 1!"

    .line 1586
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setFooterView(Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1643
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterView:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;

    invoke-virtual {p0, v0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1644
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterView:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    if-eq v0, v2, :cond_0

    .line 1645
    invoke-virtual {p0, v1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->removeView(Landroid/view/View;)V

    .line 1648
    :cond_0
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterView:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;

    .line 1649
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterView:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mOnPushLoadMoreListener:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPushLoadMoreListener;

    invoke-virtual {p1, v1}, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;->setPushLoadMoreListener(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPushLoadMoreListener;)V

    .line 1650
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterViewHeight:I

    invoke-direct {p1, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1651
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterView:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;

    invoke-virtual {p0, v1, v0, p1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setFooterViewHeight(I)V
    .locals 3

    int-to-float p1, p1

    .line 1660
    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mDensity:F

    mul-float v1, p1, v0

    float-to-int v1, v1

    iget v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mMaxPushDistance:I

    if-le v1, v2, :cond_0

    mul-float v0, v0, p1

    float-to-int v0, v0

    .line 1661
    iput v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mMaxPushDistance:I

    .line 1663
    :cond_0
    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mDensity:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterViewHeight:I

    return-void
.end method

.method public setHeaderView(Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1597
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    invoke-virtual {p0, v0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1599
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    if-eq v0, v2, :cond_0

    .line 1600
    invoke-virtual {p0, v1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->removeView(Landroid/view/View;)V

    .line 1602
    :cond_0
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    .line 1603
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPullRefreshListener:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPullRefreshListener;

    invoke-virtual {p1, v1}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->setPullRefreshListener(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPullRefreshListener;)V

    .line 1604
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderViewHeight:I

    invoke-direct {p1, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1605
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    invoke-virtual {p0, v1, v0, p1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setHeaderViewHeight(I)V
    .locals 3

    int-to-float p1, p1

    .line 1615
    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mDensity:F

    mul-float v1, p1, v0

    float-to-int v1, v1

    iget v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mRefreshOffset:I

    if-ge v1, v2, :cond_0

    const-string p1, "TBSwipeRefreshLayout"

    const-string v0, "HeaderView height cannot be smaller than refresh offset."

    .line 1616
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 1620
    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderViewHeight:I

    .line 1622
    iget p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mTotalDragDistance:I

    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderViewHeight:I

    if-ge p1, v0, :cond_1

    .line 1623
    iput v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mTotalDragDistance:I

    .line 1626
    :cond_1
    iget p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mSecondFloorDistance:I

    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mTotalDragDistance:I

    if-ge p1, v0, :cond_2

    .line 1628
    sget p1, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->MIN_GAP_DISTANCE_TO_SECOND_FLOOR:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mSecondFloorDistance:I

    :cond_2
    return-void
.end method

.method public setLoadMore(Z)V
    .locals 1

    .line 1166
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterView:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mLoadingMore:Z

    if-eqz p1, :cond_0

    .line 1167
    iget p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterViewHeight:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->animatorFooterToBottom(II)V

    :cond_0
    return-void
.end method

.method public setMaxPushDistance(I)V
    .locals 3

    int-to-float p1, p1

    .line 1489
    iget v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mDensity:F

    mul-float v1, p1, v0

    float-to-int v1, v1

    iget v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterViewHeight:I

    if-ge v1, v2, :cond_0

    const-string p1, "TBSwipeRefreshLayout"

    const-string v0, "Max push distance must be larger than footer view height!"

    .line 1490
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 1493
    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mMaxPushDistance:I

    return-void
.end method

.method public setOnPullRefreshListener(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPullRefreshListener;)V
    .locals 1

    .line 1558
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPullRefreshListener:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPullRefreshListener;

    .line 1560
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    if-eqz p1, :cond_0

    .line 1561
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mPullRefreshListener:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPullRefreshListener;

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->setPullRefreshListener(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPullRefreshListener;)V

    :cond_0
    return-void
.end method

.method public setOnPushLoadMoreListener(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPushLoadMoreListener;)V
    .locals 1

    .line 1571
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mOnPushLoadMoreListener:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPushLoadMoreListener;

    .line 1573
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFooterView:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;

    if-eqz p1, :cond_0

    .line 1574
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mOnPushLoadMoreListener:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPushLoadMoreListener;

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;->setPushLoadMoreListener(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPushLoadMoreListener;)V

    :cond_0
    return-void
.end method

.method public setRefreshOffset(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1501
    invoke-virtual {p0, p1, v0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->setRefreshOffset(IZ)V

    return-void
.end method

.method public setRefreshOffset(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    int-to-float p1, p1

    .line 1513
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/taobao/tao/util/SystemBarDecorator;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mRefreshOffset:I

    .line 1514
    iget p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderViewHeight:I

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/taobao/tao/util/SystemBarDecorator;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderViewHeight:I

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    .line 1518
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mRefreshOffset:I

    .line 1522
    :goto_0
    iget p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mContentHeight:I

    neg-int p1, p1

    iget p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mRefreshOffset:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mOriginalOffsetTop:I

    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 1524
    iget p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderViewHeight:I

    if-ge p1, p2, :cond_1

    const-string p1, "TBSwipeRefreshLayout"

    const-string p2, "Refresh offset cannot be larger than header view height."

    .line 1525
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    iget p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mRefreshOffset:I

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41c00000    # 24.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderViewHeight:I

    .line 1530
    :cond_1
    iget p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mTotalDragDistance:I

    iget p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderViewHeight:I

    if-ge p1, p2, :cond_2

    .line 1531
    iput p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mTotalDragDistance:I

    .line 1534
    :cond_2
    iget p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mSecondFloorDistance:I

    iget p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mTotalDragDistance:I

    if-ge p1, p2, :cond_3

    .line 1536
    sget p1, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->MIN_GAP_DISTANCE_TO_SECOND_FLOOR:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mSecondFloorDistance:I

    :cond_3
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 2

    .line 1059
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderView:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1062
    iget-boolean v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mRefreshing:Z

    if-eq v1, p1, :cond_1

    .line 1064
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mRefreshing:Z

    .line 1065
    iget p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mHeaderViewHeight:I

    iget v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mOriginalOffsetTop:I

    add-int/2addr p1, v1

    .line 1066
    iget v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->updateHeaderPosition(I)V

    .line 1067
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mNotify:Z

    .line 1068
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mRefreshListener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->startScaleUpAnimation(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 1070
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->setRefreshing(ZZ)V

    :goto_0
    return-void
.end method

.method public setTargetScrollWithLayout(Z)V
    .locals 0

    .line 1405
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mTargetScrollWithLayout:Z

    return-void
.end method
