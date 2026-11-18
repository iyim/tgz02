.class public Lcom/taobao/uikit/component/LoopViewPager;
.super Landroid/view/ViewGroup;
.source "LoopViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/uikit/component/LoopViewPager$ViewPositionComparator;,
        Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;,
        Lcom/taobao/uikit/component/LoopViewPager$PagerObserver;,
        Lcom/taobao/uikit/component/LoopViewPager$MyAccessibilityDelegate;,
        Lcom/taobao/uikit/component/LoopViewPager$SavedState;,
        Lcom/taobao/uikit/component/LoopViewPager$Decor;,
        Lcom/taobao/uikit/component/LoopViewPager$OnAdapterChangeListener;,
        Lcom/taobao/uikit/component/LoopViewPager$PageTransformer;,
        Lcom/taobao/uikit/component/LoopViewPager$SimpleOnPageChangeListener;,
        Lcom/taobao/uikit/component/LoopViewPager$OnPageChangeListener;,
        Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_ATTRS:[I

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LoopViewPager"

.field private static final USE_CACHE:Z = false

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Lcom/taobao/uikit/component/LoopViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mAdapterChangeListener:Lcom/taobao/uikit/component/LoopViewPager$OnAdapterChangeListener;

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Lcom/taobao/uikit/component/LoopViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsLeftToRight:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mObserver:Lcom/taobao/uikit/component/LoopViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lcom/taobao/uikit/component/LoopViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPageTransformer:Lcom/taobao/uikit/component/LoopViewPager$PageTransformer;

.field private mPopulatePending:Z

.field private mRatio:F

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

.field private final mTempItem:Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 72
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lcom/taobao/uikit/component/LoopViewPager;->LAYOUT_ATTRS:[I

    .line 95
    new-instance v0, Lcom/taobao/uikit/component/LoopViewPager$1;

    invoke-direct {v0}, Lcom/taobao/uikit/component/LoopViewPager$1;-><init>()V

    sput-object v0, Lcom/taobao/uikit/component/LoopViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 104
    new-instance v0, Lcom/taobao/uikit/component/LoopViewPager$2;

    invoke-direct {v0}, Lcom/taobao/uikit/component/LoopViewPager$2;-><init>()V

    sput-object v0, Lcom/taobao/uikit/component/LoopViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 243
    new-instance v0, Lcom/taobao/uikit/component/LoopViewPager$ViewPositionComparator;

    invoke-direct {v0}, Lcom/taobao/uikit/component/LoopViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Lcom/taobao/uikit/component/LoopViewPager;->sPositionComparator:Lcom/taobao/uikit/component/LoopViewPager$ViewPositionComparator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 370
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 79
    iput p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mRatio:F

    .line 113
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    .line 115
    new-instance p1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    invoke-direct {p1}, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;-><init>()V

    iput-object p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mTempItem:Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    .line 117
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 123
    iput p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mRestoredCurItem:I

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 127
    iput-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const v0, -0x800001

    .line 144
    iput v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mFirstOffset:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 146
    iput v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mLastOffset:F

    const/4 v0, 0x1

    .line 158
    iput v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mOffscreenPageLimit:I

    .line 184
    iput p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mActivePointerId:I

    .line 217
    iput-boolean v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mFirstLayout:Z

    .line 260
    new-instance p1, Lcom/taobao/uikit/component/LoopViewPager$3;

    invoke-direct {p1, p0}, Lcom/taobao/uikit/component/LoopViewPager$3;-><init>(Lcom/taobao/uikit/component/LoopViewPager;)V

    iput-object p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 269
    iput p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mScrollState:I

    .line 371
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->initViewPager()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 376
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mRatio:F

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    .line 115
    new-instance v1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    invoke-direct {v1}, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;-><init>()V

    iput-object v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mTempItem:Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    .line 117
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mTempRect:Landroid/graphics/Rect;

    const/4 v1, -0x1

    .line 123
    iput v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mRestoredCurItem:I

    const/4 v2, 0x0

    .line 125
    iput-object v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 127
    iput-object v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const v2, -0x800001

    .line 144
    iput v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mFirstOffset:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 146
    iput v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mLastOffset:F

    const/4 v2, 0x1

    .line 158
    iput v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mOffscreenPageLimit:I

    .line 184
    iput v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mActivePointerId:I

    .line 217
    iput-boolean v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mFirstLayout:Z

    .line 260
    new-instance v1, Lcom/taobao/uikit/component/LoopViewPager$3;

    invoke-direct {v1, p0}, Lcom/taobao/uikit/component/LoopViewPager$3;-><init>(Lcom/taobao/uikit/component/LoopViewPager;)V

    iput-object v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 269
    iput v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mScrollState:I

    .line 377
    sget-object v1, Lcom/taobao/uikit/R$styleable;->LoopViewPager:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 380
    sget p2, Lcom/taobao/uikit/R$styleable;->LoopViewPager_uik_ratio:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mRatio:F

    .line 381
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->initViewPager()V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/uikit/component/LoopViewPager;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/taobao/uikit/component/LoopViewPager;->setScrollState(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/taobao/uikit/component/LoopViewPager;)Landroid/support/v4/view/PagerAdapter;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/taobao/uikit/component/LoopViewPager;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    return p0
.end method

.method static synthetic access$400()[I
    .locals 1

    .line 55
    sget-object v0, Lcom/taobao/uikit/component/LoopViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private calculatePageOffsets(Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;ILcom/taobao/uikit/component/LoopViewPager$ItemInfo;)V
    .locals 9

    .line 1527
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 1528
    invoke-direct {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getClientWidth()I

    move-result v1

    if-lez v1, :cond_0

    .line 1529
    iget v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mPageMargin:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p3, :cond_6

    .line 1533
    iget v1, p3, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    .line 1535
    iget v3, p1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    if-ge v1, v3, :cond_3

    const/4 v3, 0x0

    .line 1539
    iget v4, p3, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->offset:F

    iget p3, p3, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, p3

    add-float/2addr v4, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 1540
    iget p3, p1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    if-gt v1, p3, :cond_6

    iget-object p3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v3, p3, :cond_6

    .line 1542
    iget-object p3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    .line 1543
    :goto_2
    iget v5, p3, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    if-le v1, v5, :cond_1

    iget-object v5, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 1546
    iget-object p3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    goto :goto_2

    .line 1548
    :cond_1
    :goto_3
    iget v5, p3, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    if-ge v1, v5, :cond_2

    .line 1552
    iget-object v5, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5, v1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v5

    add-float/2addr v5, v2

    add-float/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1555
    :cond_2
    iput v4, p3, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->offset:F

    .line 1556
    iget p3, p3, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->widthFactor:F

    add-float/2addr p3, v2

    add-float/2addr v4, p3

    goto :goto_1

    .line 1559
    :cond_3
    iget v3, p1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    if-le v1, v3, :cond_6

    .line 1561
    iget-object v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 1563
    iget p3, p3, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->offset:F

    add-int/lit8 v1, v1, -0x1

    .line 1564
    :goto_4
    iget v4, p1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    if-lt v1, v4, :cond_6

    if-ltz v3, :cond_6

    .line 1566
    iget-object v4, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    .line 1567
    :goto_5
    iget v5, v4, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    if-ge v1, v5, :cond_4

    if-lez v3, :cond_4

    add-int/lit8 v3, v3, -0x1

    .line 1570
    iget-object v4, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    goto :goto_5

    .line 1572
    :cond_4
    :goto_6
    iget v5, v4, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    if-le v1, v5, :cond_5

    .line 1576
    iget-object v5, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5, v1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v5

    add-float/2addr v5, v2

    sub-float/2addr p3, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 1579
    :cond_5
    iget v5, v4, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v2

    sub-float/2addr p3, v5

    .line 1580
    iput p3, v4, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->offset:F

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 1586
    :cond_6
    iget-object p3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 1587
    iget v1, p1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->offset:F

    .line 1588
    iget v3, p1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    add-int/lit8 v3, v3, -0x1

    .line 1590
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->canLoop()Z

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v4, :cond_9

    .line 1592
    iget v4, p1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    if-nez v4, :cond_7

    iget v4, p1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->offset:F

    goto :goto_7

    :cond_7
    const v4, -0x800001

    :goto_7
    iput v4, p0, Lcom/taobao/uikit/component/LoopViewPager;->mFirstOffset:F

    .line 1593
    iget v4, p1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    add-int/lit8 v6, v0, -0x1

    if-ne v4, v6, :cond_8

    iget v4, p1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->offset:F

    iget v6, p1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v6

    sub-float/2addr v4, v5

    goto :goto_8

    :cond_8
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    :goto_8
    iput v4, p0, Lcom/taobao/uikit/component/LoopViewPager;->mLastOffset:F

    :cond_9
    add-int/lit8 v4, p2, -0x1

    :goto_9
    if-ltz v4, :cond_c

    .line 1599
    iget-object v6, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    .line 1600
    :goto_a
    iget v7, v6, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    if-le v3, v7, :cond_a

    .line 1602
    iget-object v7, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v7, v3}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v3

    add-float/2addr v3, v2

    sub-float/2addr v1, v3

    move v3, v8

    goto :goto_a

    .line 1604
    :cond_a
    iget v7, v6, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v7, v2

    sub-float/2addr v1, v7

    .line 1605
    iput v1, v6, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->offset:F

    .line 1607
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->canLoop()Z

    move-result v7

    if-nez v7, :cond_b

    iget v6, v6, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    if-nez v6, :cond_b

    .line 1609
    iput v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mFirstOffset:F

    :cond_b
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    .line 1612
    :cond_c
    iget v1, p1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->offset:F

    iget v3, p1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v1, v3

    add-float/2addr v1, v2

    .line 1613
    iget p1, p1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    :goto_b
    if-ge p2, p3, :cond_f

    .line 1617
    iget-object v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    .line 1618
    :goto_c
    iget v4, v3, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    if-ge p1, v4, :cond_d

    .line 1620
    iget-object v4, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v4, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result p1

    add-float/2addr p1, v2

    add-float/2addr v1, p1

    move p1, v6

    goto :goto_c

    .line 1623
    :cond_d
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->canLoop()Z

    move-result v4

    if-nez v4, :cond_e

    iget v4, v3, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    add-int/lit8 v6, v0, -0x1

    if-ne v4, v6, :cond_e

    .line 1625
    iget v4, v3, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v1

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/taobao/uikit/component/LoopViewPager;->mLastOffset:F

    .line 1627
    :cond_e
    iput v1, v3, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->offset:F

    .line 1628
    iget v3, v3, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v2

    add-float/2addr v1, v3

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_f
    return-void
.end method

.method private completeScroll(Z)V
    .locals 7

    .line 2230
    iget v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mScrollState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2234
    invoke-direct {p0, v2}, Lcom/taobao/uikit/component/LoopViewPager;->setScrollingCacheEnabled(Z)V

    .line 2235
    iget-object v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2236
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getScrollX()I

    move-result v3

    .line 2237
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getScrollY()I

    move-result v4

    .line 2238
    iget-object v5, p0, Lcom/taobao/uikit/component/LoopViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 2239
    iget-object v6, p0, Lcom/taobao/uikit/component/LoopViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v3, v5, :cond_1

    if-eq v4, v6, :cond_2

    .line 2242
    :cond_1
    invoke-virtual {p0, v5, v6}, Lcom/taobao/uikit/component/LoopViewPager;->scrollTo(II)V

    .line 2245
    :cond_2
    iput-boolean v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mPopulatePending:Z

    move v3, v0

    const/4 v0, 0x0

    .line 2246
    :goto_1
    iget-object v4, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 2248
    iget-object v4, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    .line 2249
    iget-boolean v5, v4, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->scrolling:Z

    if-eqz v5, :cond_3

    .line 2252
    iput-boolean v2, v4, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->scrolling:Z

    const/4 v3, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_6

    if-eqz p1, :cond_5

    .line 2259
    iget-object p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 2263
    :cond_5
    iget-object p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_6
    :goto_2
    return-void
.end method

.method private determineTargetPage(IFII)I
    .locals 1

    .line 2688
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mFlingDistance:I

    if-le p4, v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mMinimumVelocity:I

    if-le p4, v0, :cond_1

    if-lez p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2694
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->canLoop()Z

    move-result p3

    const p4, 0x3ecccccd    # 0.4f

    const v0, 0x3f19999a    # 0.6f

    if-eqz p3, :cond_2

    .line 2696
    iget p3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    invoke-virtual {p0, p3}, Lcom/taobao/uikit/component/LoopViewPager;->getRightPos(I)I

    move-result p3

    if-ne p1, p3, :cond_3

    goto :goto_0

    .line 2701
    :cond_2
    iget p3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    if-lt p1, p3, :cond_3

    goto :goto_0

    :cond_3
    const p4, 0x3f19999a    # 0.6f

    :goto_0
    int-to-float p1, p1

    add-float/2addr p1, p2

    add-float/2addr p1, p4

    float-to-int p1, p1

    .line 2706
    :goto_1
    iget-object p2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x0

    if-lez p2, :cond_5

    .line 2708
    iget-object p2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    .line 2709
    iget-object p4, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    .line 2712
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->canLoop()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2714
    iget-object p2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result p2

    if-lt p1, p2, :cond_5

    const/4 p1, 0x0

    goto :goto_2

    .line 2722
    :cond_4
    iget p2, p2, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    iget p3, p4, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_5
    :goto_2
    return p1
.end method

.method private enableLayers(Z)V
    .locals 6

    .line 2275
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 2279
    :goto_1
    invoke-virtual {p0, v2}, Lcom/taobao/uikit/component/LoopViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 1

    const/4 v0, 0x0

    .line 2982
    iput-boolean v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mIsBeingDragged:Z

    .line 2983
    iput-boolean v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mIsUnableToDrag:Z

    .line 2985
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2987
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 2988
    iput-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    if-nez p1, :cond_0

    .line 3204
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 3208
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    .line 3211
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 3212
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 3213
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 3214
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 3216
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 3217
    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eq p2, p0, :cond_2

    .line 3219
    nop

    nop

    .line 3220
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 3221
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 3222
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 3223
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 3225
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private getClientWidth()I
    .locals 2

    .line 535
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private infoForCurrentScrollPosition()Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;
    .locals 13

    .line 2636
    invoke-direct {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getClientWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2637
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_1

    .line 2638
    iget v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float v0, v3, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 2645
    :goto_2
    iget-object v10, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_7

    .line 2647
    iget-object v10, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    if-nez v5, :cond_2

    .line 2650
    iget v11, v10, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    invoke-virtual {p0, v7}, Lcom/taobao/uikit/component/LoopViewPager;->getRightPosCompat(I)I

    move-result v12

    if-eq v11, v12, :cond_2

    .line 2653
    iget-object v10, p0, Lcom/taobao/uikit/component/LoopViewPager;->mTempItem:Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    add-float/2addr v8, v9

    add-float/2addr v8, v0

    .line 2654
    iput v8, v10, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->offset:F

    .line 2656
    invoke-virtual {p0, v7}, Lcom/taobao/uikit/component/LoopViewPager;->getRightPosCompat(I)I

    move-result v7

    iput v7, v10, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    .line 2657
    iget-object v7, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v8, v10, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    invoke-virtual {v7, v8}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v7

    iput v7, v10, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v1, v1, -0x1

    .line 2660
    :cond_2
    iget v8, v10, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->offset:F

    .line 2663
    iget v7, v10, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v7, v8

    add-float/2addr v7, v0

    if-nez v5, :cond_4

    cmpl-float v5, v2, v8

    if-ltz v5, :cond_3

    goto :goto_3

    :cond_3
    return-object v3

    :cond_4
    :goto_3
    cmpg-float v3, v2, v7

    if-ltz v3, :cond_6

    .line 2666
    iget-object v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v6

    if-ne v1, v3, :cond_5

    goto :goto_4

    .line 2676
    :cond_5
    iget v7, v10, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    .line 2678
    iget v9, v10, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v1, v1, 0x1

    move-object v3, v10

    const/4 v5, 0x0

    goto :goto_2

    :cond_6
    :goto_4
    return-object v10

    :cond_7
    return-object v3
.end method

.method private isGutterDrag(FF)Z
    .locals 3

    .line 2270
    iget v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mGutterSize:I

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mGutterSize:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    cmpg-float p1, p2, v1

    if-gez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 2964
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2965
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 2966
    iget v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2971
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mLastMotionX:F

    .line 2972
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mActivePointerId:I

    .line 2973
    iget-object p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 2975
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private pageScrolled(I)Z
    .locals 7

    .line 2114
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2116
    iput-boolean v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCalledSuper:Z

    const/4 p1, 0x0

    .line 2117
    invoke-virtual {p0, v2, p1, v2}, Lcom/taobao/uikit/component/LoopViewPager;->onPageScrolled(IFI)V

    .line 2118
    iget-boolean p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCalledSuper:Z

    if-eqz p1, :cond_0

    return v2

    .line 2120
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2124
    :cond_1
    invoke-direct {p0}, Lcom/taobao/uikit/component/LoopViewPager;->infoForCurrentScrollPosition()Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    move-result-object v0

    .line 2125
    invoke-direct {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getClientWidth()I

    move-result v3

    .line 2126
    iget v4, p0, Lcom/taobao/uikit/component/LoopViewPager;->mPageMargin:I

    add-int v5, v3, v4

    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    .line 2128
    iget v6, v0, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    int-to-float p1, p1

    div-float/2addr p1, v3

    .line 2129
    iget v3, v0, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->offset:F

    sub-float/2addr p1, v3

    iget v0, v0, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v4

    div-float/2addr p1, v0

    int-to-float v0, v5

    mul-float v0, v0, p1

    float-to-int v0, v0

    .line 2132
    iput-boolean v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCalledSuper:Z

    .line 2133
    invoke-virtual {p0, v6, p1, v0}, Lcom/taobao/uikit/component/LoopViewPager;->onPageScrolled(IFI)V

    .line 2134
    iget-boolean p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCalledSuper:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    .line 2136
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private performDrag(F)Z
    .locals 9

    .line 2580
    iget v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mLastMotionX:F

    sub-float/2addr v0, p1

    .line 2581
    iput p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mLastMotionX:F

    .line 2583
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    .line 2585
    invoke-direct {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getClientWidth()I

    move-result v0

    int-to-float v0, v0

    .line 2587
    iget v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mFirstOffset:F

    mul-float v1, v1, v0

    .line 2588
    iget v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mLastOffset:F

    mul-float v2, v2, v0

    .line 2592
    iget-object v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    .line 2593
    iget-object v5, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    .line 2594
    iget v6, v3, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    if-eqz v6, :cond_0

    .line 2597
    iget v1, v3, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->offset:F

    mul-float v1, v1, v0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 2599
    :goto_0
    iget v6, v5, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    iget-object v8, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v8}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v8

    sub-int/2addr v8, v7

    if-eq v6, v8, :cond_1

    .line 2602
    iget v2, v5, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->offset:F

    mul-float v2, v2, v0

    const/4 v7, 0x0

    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    cmpl-float v0, p1, v2

    if-lez v0, :cond_3

    move p1, v2

    .line 2624
    :cond_3
    :goto_1
    iget v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mLastMotionX:F

    float-to-int v1, p1

    int-to-float v2, v1

    sub-float/2addr p1, v2

    add-float/2addr v0, p1

    iput v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mLastMotionX:F

    .line 2625
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/taobao/uikit/component/LoopViewPager;->scrollTo(II)V

    .line 2626
    invoke-direct {p0, v1}, Lcom/taobao/uikit/component/LoopViewPager;->pageScrolled(I)Z

    return v4
.end method

.method private populateLeftToRight(I)I
    .locals 9

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 1264
    iget-object v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 1265
    :goto_0
    iget v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    const/4 v4, 0x0

    move v5, p1

    const/4 p1, 0x0

    .line 1266
    :goto_1
    iget v6, p0, Lcom/taobao/uikit/component/LoopViewPager;->mOffscreenPageLimit:I

    add-int/lit8 v7, v6, 0x1

    if-ge p1, v7, :cond_6

    neg-int v7, v6

    if-lt v0, v7, :cond_5

    if-nez v2, :cond_2

    .line 1272
    invoke-virtual {p0, v3}, Lcom/taobao/uikit/component/LoopViewPager;->getLeftPos(I)I

    move-result v2

    .line 1273
    invoke-virtual {p0, v2, v4}, Lcom/taobao/uikit/component/LoopViewPager;->addNewItem(II)Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 1276
    iget-object v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    goto :goto_2

    :cond_1
    move-object v3, v1

    :goto_2
    move-object v8, v3

    move v3, v2

    move-object v2, v8

    goto :goto_4

    :cond_2
    if-ne p1, v6, :cond_3

    .line 1280
    iget-object p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1281
    iget-object p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v3, v2, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    iget-object v2, v2, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {p1, p0, v3, v2}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_6

    .line 1284
    iget-object p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    goto :goto_5

    :cond_3
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_4

    .line 1290
    iget-object v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    goto :goto_3

    :cond_4
    move-object v2, v1

    :goto_3
    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_6
    :goto_5
    add-int/lit8 p1, v5, 0x1

    .line 1300
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_7

    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    goto :goto_6

    :cond_7
    move-object v0, v1

    .line 1301
    :goto_6
    iget v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    .line 1302
    :goto_7
    iget v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mOffscreenPageLimit:I

    add-int/lit8 v6, v3, 0x1

    if-ge v4, v6, :cond_e

    mul-int/lit8 v6, v3, 0x2

    add-int/lit8 v6, v6, 0x1

    if-gt p1, v6, :cond_d

    if-nez v0, :cond_a

    .line 1308
    invoke-virtual {p0, v2}, Lcom/taobao/uikit/component/LoopViewPager;->getRightPos(I)I

    move-result v0

    .line 1309
    invoke-virtual {p0, v0, p1}, Lcom/taobao/uikit/component/LoopViewPager;->addNewItem(II)Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    add-int/lit8 p1, p1, 0x1

    .line 1311
    iget-object v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_8

    iget-object v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    goto :goto_8

    :cond_8
    move-object v2, v1

    .line 1312
    :goto_8
    iget v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    if-lt p1, v3, :cond_9

    goto :goto_b

    :cond_9
    move-object v8, v2

    move v2, v0

    move-object v0, v8

    goto :goto_a

    :cond_a
    if-ne v4, v3, :cond_b

    .line 1319
    iget-object v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1320
    iget-object v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v2, v0, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    iget-object v0, v0, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v0}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    .line 1322
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_e

    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    goto :goto_b

    :cond_b
    add-int/lit8 p1, p1, 0x1

    .line 1328
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_c

    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    goto :goto_9

    :cond_c
    move-object v0, v1

    :goto_9
    if-nez v0, :cond_d

    goto :goto_b

    :cond_d
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_e
    :goto_b
    return v5
.end method

.method private populateNoLoop(IIIILcom/taobao/uikit/component/LoopViewPager$ItemInfo;)I
    .locals 10

    add-int/lit8 v0, p4, -0x1

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 1422
    iget-object v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 1423
    :goto_0
    invoke-direct {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getClientWidth()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    if-gtz v3, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    .line 1424
    :cond_1
    iget v6, p5, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->widthFactor:F

    sub-float v6, v4, v6

    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v3

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 1425
    :goto_1
    iget v7, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    add-int/lit8 v7, v7, -0x1

    move v8, v0

    move v0, p4

    const/4 p4, 0x0

    :goto_2
    if-ltz v7, :cond_7

    cmpl-float v9, p4, v6

    if-ltz v9, :cond_4

    if-ge v7, p2, :cond_4

    if-nez v2, :cond_2

    goto :goto_4

    .line 1433
    :cond_2
    iget v9, v2, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    if-ne v7, v9, :cond_6

    iget-boolean v9, v2, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->scrolling:Z

    if-nez v9, :cond_6

    .line 1435
    iget-object v9, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1436
    iget-object v9, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v2, v2, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v9, p0, v7, v2}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v0, v0, -0x1

    if-ltz v8, :cond_3

    .line 1440
    iget-object v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    goto :goto_3

    :cond_3
    move-object v2, v1

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    .line 1443
    iget v9, v2, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    if-ne v7, v9, :cond_5

    .line 1445
    iget v2, v2, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->widthFactor:F

    add-float/2addr p4, v2

    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_3

    .line 1447
    iget-object v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v8, 0x1

    .line 1451
    invoke-virtual {p0, v7, v2}, Lcom/taobao/uikit/component/LoopViewPager;->addNewItem(II)Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    move-result-object v2

    .line 1452
    iget v2, v2, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->widthFactor:F

    add-float/2addr p4, v2

    add-int/lit8 v0, v0, 0x1

    if-ltz v8, :cond_3

    .line 1454
    iget-object v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    :cond_6
    :goto_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 1458
    :cond_7
    :goto_4
    iget p2, p5, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 p4, v0, 0x1

    cmpg-float p5, p2, v4

    if-gez p5, :cond_f

    .line 1462
    iget-object p5, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-ge p4, p5, :cond_8

    iget-object p5, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    goto :goto_5

    :cond_8
    move-object p5, v1

    :goto_5
    if-gtz v3, :cond_9

    goto :goto_6

    .line 1463
    :cond_9
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float v5, v2, v4

    .line 1465
    :goto_6
    iget v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    :goto_7
    add-int/lit8 v2, v2, 0x1

    if-ge v2, p1, :cond_f

    cmpl-float v3, p2, v5

    if-ltz v3, :cond_c

    if-le v2, p3, :cond_c

    if-nez p5, :cond_a

    goto :goto_9

    .line 1473
    :cond_a
    iget v3, p5, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    if-ne v2, v3, :cond_e

    iget-boolean v3, p5, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->scrolling:Z

    if-nez v3, :cond_e

    .line 1475
    iget-object v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1476
    iget-object v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object p5, p5, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v3, p0, v2, p5}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1477
    iget-object p5, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-ge p4, p5, :cond_b

    iget-object p5, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    goto :goto_8

    :cond_b
    move-object p5, v1

    goto :goto_8

    :cond_c
    if-eqz p5, :cond_d

    .line 1480
    iget v3, p5, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    if-ne v2, v3, :cond_d

    .line 1482
    iget p5, p5, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->widthFactor:F

    add-float/2addr p2, p5

    add-int/lit8 p4, p4, 0x1

    .line 1484
    iget-object p5, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-ge p4, p5, :cond_b

    iget-object p5, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    goto :goto_8

    .line 1488
    :cond_d
    invoke-virtual {p0, v2, p4}, Lcom/taobao/uikit/component/LoopViewPager;->addNewItem(II)Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    move-result-object p5

    add-int/lit8 p4, p4, 0x1

    .line 1490
    iget p5, p5, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->widthFactor:F

    add-float/2addr p2, p5

    .line 1491
    iget-object p5, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-ge p4, p5, :cond_b

    iget-object p5, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    :cond_e
    :goto_8
    goto :goto_7

    :cond_f
    :goto_9
    return v0
.end method

.method private populateRightToLeft(I)I
    .locals 9

    add-int/lit8 v0, p1, 0x1

    .line 1342
    iget-object v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 1343
    :goto_0
    iget v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    const/4 v4, 0x0

    move v5, v3

    move-object v3, v1

    move v1, v0

    const/4 v0, 0x0

    .line 1344
    :goto_1
    iget v6, p0, Lcom/taobao/uikit/component/LoopViewPager;->mOffscreenPageLimit:I

    add-int/lit8 v7, v6, 0x1

    if-ge v0, v7, :cond_7

    mul-int/lit8 v7, v6, 0x2

    add-int/lit8 v7, v7, 0x1

    if-gt v1, v7, :cond_6

    if-nez v3, :cond_3

    .line 1350
    invoke-virtual {p0, v5}, Lcom/taobao/uikit/component/LoopViewPager;->getRightPos(I)I

    move-result v3

    .line 1351
    invoke-virtual {p0, v3, v1}, Lcom/taobao/uikit/component/LoopViewPager;->addNewItem(II)Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    add-int/lit8 v1, v1, 0x1

    .line 1353
    iget-object v5, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    iget-object v5, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    goto :goto_2

    :cond_1
    move-object v5, v2

    .line 1354
    :goto_2
    iget v6, p0, Lcom/taobao/uikit/component/LoopViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    if-lt v1, v6, :cond_2

    goto :goto_5

    :cond_2
    move-object v8, v5

    move v5, v3

    move-object v3, v8

    goto :goto_4

    :cond_3
    if-ne v0, v6, :cond_4

    .line 1361
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1362
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v5, v3, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    iget-object v3, v3, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v0, p0, v5, v3}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    .line 1364
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 1370
    iget-object v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    goto :goto_3

    :cond_5
    move-object v3, v2

    :goto_3
    if-nez v3, :cond_6

    goto :goto_5

    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    :goto_5
    add-int/lit8 v0, p1, -0x1

    if-ltz v0, :cond_8

    .line 1380
    iget-object v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    goto :goto_6

    :cond_8
    move-object v1, v2

    .line 1381
    :goto_6
    iget v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    move v5, p1

    const/4 p1, 0x0

    .line 1382
    :goto_7
    iget v6, p0, Lcom/taobao/uikit/component/LoopViewPager;->mOffscreenPageLimit:I

    add-int/lit8 v7, v6, 0x1

    if-ge p1, v7, :cond_e

    neg-int v7, v6

    if-lt v0, v7, :cond_d

    if-nez v1, :cond_a

    .line 1388
    invoke-virtual {p0, v3}, Lcom/taobao/uikit/component/LoopViewPager;->getLeftPos(I)I

    move-result v1

    .line 1389
    invoke-virtual {p0, v1, v4}, Lcom/taobao/uikit/component/LoopViewPager;->addNewItem(II)Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_9

    .line 1392
    iget-object v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    goto :goto_8

    :cond_9
    move-object v3, v2

    :goto_8
    move-object v8, v3

    move v3, v1

    move-object v1, v8

    goto :goto_a

    :cond_a
    if-ne p1, v6, :cond_b

    .line 1396
    iget-object p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1397
    iget-object p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v2, v1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    iget-object v1, v1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {p1, p0, v2, v1}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_e

    .line 1400
    iget-object p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    goto :goto_b

    :cond_b
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_c

    .line 1406
    iget-object v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    goto :goto_9

    :cond_c
    move-object v1, v2

    :goto_9
    if-nez v1, :cond_d

    goto :goto_b

    :cond_d
    :goto_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_e
    :goto_b
    return v5
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 6

    if-lez p2, :cond_0

    .line 1948
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1950
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    .line 1951
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/2addr p2, p4

    .line 1952
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getScrollX()I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    int-to-float p2, v0

    mul-float p3, p3, p2

    float-to-int v1, p3

    .line 1956
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getScrollY()I

    move-result p2

    invoke-virtual {p0, v1, p2}, Lcom/taobao/uikit/component/LoopViewPager;->scrollTo(II)V

    .line 1957
    iget-object p2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_2

    .line 1960
    iget-object p2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->getDuration()I

    move-result p2

    iget-object p3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p3}, Landroid/widget/Scroller;->timePassed()I

    move-result p3

    sub-int v5, p2, p3

    .line 1961
    iget p2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    invoke-virtual {p0, p2}, Lcom/taobao/uikit/component/LoopViewPager;->infoForPosition(I)Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    move-result-object p2

    .line 1962
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    iget p2, p2, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->offset:F

    int-to-float p1, p1

    mul-float p2, p2, p1

    float-to-int v3, p2

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_1

    .line 1967
    :cond_0
    iget p2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    invoke-virtual {p0, p2}, Lcom/taobao/uikit/component/LoopViewPager;->infoForPosition(I)Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1968
    iget p2, p2, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->offset:F

    iget p3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mLastOffset:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 1969
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float p2, p2, p1

    float-to-int p1, p2

    .line 1970
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getScrollX()I

    move-result p2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x0

    .line 1972
    invoke-direct {p0, p2}, Lcom/taobao/uikit/component/LoopViewPager;->completeScroll(Z)V

    .line 1973
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/taobao/uikit/component/LoopViewPager;->scrollTo(II)V

    :cond_2
    :goto_1
    return-void
.end method

.method private removeNonDecorViews()V
    .locals 2

    const/4 v0, 0x0

    .line 506
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 508
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/component/LoopViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 509
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;

    .line 510
    iget-boolean v1, v1, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;->isDecor:Z

    if-nez v1, :cond_0

    .line 512
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/component/LoopViewPager;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 2569
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2572
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private scrollToItem(IZIZ)V
    .locals 5

    .line 632
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/component/LoopViewPager;->infoForPosition(I)Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 636
    invoke-direct {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getClientWidth()I

    move-result v2

    int-to-float v2, v2

    .line 637
    iget v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mFirstOffset:F

    iget v0, v0, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->offset:F

    iget v4, p0, Lcom/taobao/uikit/component/LoopViewPager;->mLastOffset:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v2, v2, v0

    float-to-int v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 641
    invoke-virtual {p0, v0, v1, p3}, Lcom/taobao/uikit/component/LoopViewPager;->smoothScrollTo(III)V

    if-eqz p4, :cond_1

    .line 642
    iget-object p2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mOnPageChangeListener:Lcom/taobao/uikit/component/LoopViewPager$OnPageChangeListener;

    if-eqz p2, :cond_1

    .line 644
    invoke-interface {p2, p1}, Lcom/taobao/uikit/component/LoopViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    if-eqz p4, :cond_5

    .line 646
    iget-object p2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mInternalPageChangeListener:Lcom/taobao/uikit/component/LoopViewPager$OnPageChangeListener;

    if-eqz p2, :cond_5

    .line 648
    invoke-interface {p2, p1}, Lcom/taobao/uikit/component/LoopViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    .line 653
    iget-object p2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mOnPageChangeListener:Lcom/taobao/uikit/component/LoopViewPager$OnPageChangeListener;

    if-eqz p2, :cond_3

    .line 655
    invoke-interface {p2, p1}, Lcom/taobao/uikit/component/LoopViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_3
    if-eqz p4, :cond_4

    .line 657
    iget-object p2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mInternalPageChangeListener:Lcom/taobao/uikit/component/LoopViewPager$OnPageChangeListener;

    if-eqz p2, :cond_4

    .line 659
    invoke-interface {p2, p1}, Lcom/taobao/uikit/component/LoopViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 661
    :cond_4
    invoke-direct {p0, v1}, Lcom/taobao/uikit/component/LoopViewPager;->completeScroll(Z)V

    .line 662
    invoke-virtual {p0, v0, v1}, Lcom/taobao/uikit/component/LoopViewPager;->scrollTo(II)V

    .line 663
    invoke-direct {p0, v0}, Lcom/taobao/uikit/component/LoopViewPager;->pageScrolled(I)Z

    :cond_5
    :goto_1
    return-void
.end method

.method private setScrollState(I)V
    .locals 1

    .line 423
    iget v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 428
    :cond_0
    iput p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mScrollState:I

    .line 429
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mPageTransformer:Lcom/taobao/uikit/component/LoopViewPager$PageTransformer;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 432
    :goto_0
    invoke-direct {p0, v0}, Lcom/taobao/uikit/component/LoopViewPager;->enableLayers(Z)V

    .line 434
    :cond_2
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mOnPageChangeListener:Lcom/taobao/uikit/component/LoopViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 436
    invoke-interface {v0, p1}, Lcom/taobao/uikit/component/LoopViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_3
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .line 2994
    iget-boolean v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2996
    iput-boolean p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mScrollingCacheEnabled:Z

    :cond_0
    return-void
.end method

.method private sortChildDrawingOrder()V
    .locals 4

    .line 1505
    iget v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mDrawingOrder:I

    if-eqz v0, :cond_2

    .line 1507
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    goto :goto_0

    .line 1513
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1515
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 1518
    invoke-virtual {p0, v1}, Lcom/taobao/uikit/component/LoopViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1519
    iget-object v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1521
    :cond_1
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v1, Lcom/taobao/uikit/component/LoopViewPager;->sPositionComparator:Lcom/taobao/uikit/component/LoopViewPager$ViewPositionComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 3259
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3261
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_2

    const/4 v2, 0x0

    .line 3265
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3267
    invoke-virtual {p0, v2}, Lcom/taobao/uikit/component/LoopViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3268
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 3270
    invoke-virtual {p0, v3}, Lcom/taobao/uikit/component/LoopViewPager;->infoForChild(Landroid/view/View;)Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3271
    iget v4, v4, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    if-ne v4, v5, :cond_1

    .line 3273
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_3

    .line 3285
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_6

    .line 3289
    :cond_3
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_5

    .line 3294
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_6

    .line 3300
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method addNewItem(II)Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;
    .locals 2

    .line 948
    new-instance v0, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;-><init>()V

    .line 949
    iput p1, v0, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    .line 950
    iget-object v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 951
    iget-object v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result p1

    iput p1, v0, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->widthFactor:F

    if-ltz p2, :cond_1

    .line 952
    iget-object p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    goto :goto_0

    .line 958
    :cond_0
    iget-object p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 954
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3313
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3315
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/component/LoopViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3316
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 3318
    invoke-virtual {p0, v1}, Lcom/taobao/uikit/component/LoopViewPager;->infoForChild(Landroid/view/View;)Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3319
    iget v2, v2, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    iget v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    if-ne v2, v3, :cond_0

    .line 3321
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1730
    invoke-virtual {p0, p3}, Lcom/taobao/uikit/component/LoopViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1732
    invoke-virtual {p0, p3}, Lcom/taobao/uikit/component/LoopViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1734
    :cond_0
    move-object v0, p3

    check-cast v0, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;

    if-eqz v0, :cond_4

    .line 1738
    iget-boolean v1, v0, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Lcom/taobao/uikit/component/LoopViewPager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;->isDecor:Z

    .line 1739
    iget-boolean v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mInLayout:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 1740
    iget-boolean v1, v0, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;->isDecor:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 1741
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add pager decor view during layout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 1743
    iput-boolean v1, v0, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;->needsMeasure:Z

    .line 1744
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/uikit/component/LoopViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_1

    .line 1746
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 6

    .line 3118
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz v0, :cond_3

    .line 3126
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_0
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    if-ne v4, p0, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_3

    .line 3137
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3138
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3139
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_4

    const-string v5, " => "

    .line 3141
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3139
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v3, v0

    .line 3149
    :cond_4
    :goto_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    const/16 v4, 0x42

    const/16 v5, 0x11

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_8

    if-ne p1, v5, :cond_6

    .line 3156
    iget-object v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0}, Lcom/taobao/uikit/component/LoopViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 3157
    iget-object v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3}, Lcom/taobao/uikit/component/LoopViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v3, :cond_5

    if-lt v1, v2, :cond_5

    .line 3160
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->pageLeft()Z

    move-result v0

    goto :goto_4

    .line 3164
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    :goto_4
    move v2, v0

    goto :goto_6

    :cond_6
    if-ne p1, v4, :cond_c

    .line 3171
    iget-object v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0}, Lcom/taobao/uikit/component/LoopViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 3172
    iget-object v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3}, Lcom/taobao/uikit/component/LoopViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v3, :cond_7

    if-gt v1, v2, :cond_7

    .line 3175
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->pageRight()Z

    move-result v0

    goto :goto_4

    .line 3179
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_4

    :cond_8
    if-eq p1, v5, :cond_b

    if-ne p1, v1, :cond_9

    goto :goto_5

    :cond_9
    if-eq p1, v4, :cond_a

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 3191
    :cond_a
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->pageRight()Z

    move-result v2

    goto :goto_6

    .line 3186
    :cond_b
    :goto_5
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->pageLeft()Z

    move-result v2

    :cond_c
    :goto_6
    if-eqz v2, :cond_d

    .line 3195
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/component/LoopViewPager;->playSoundEffect(I)V

    :cond_d
    return v2
.end method

.method public beginFakeDrag()Z
    .locals 12

    .line 2842
    iget-boolean v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 2846
    iput-boolean v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mFakeDragging:Z

    .line 2847
    invoke-direct {p0, v0}, Lcom/taobao/uikit/component/LoopViewPager;->setScrollState(I)V

    const/4 v1, 0x0

    .line 2848
    iput v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mLastMotionX:F

    iput v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mInitialMotionX:F

    .line 2849
    iget-object v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1

    .line 2851
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 2855
    :cond_1
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 2857
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v4, v10

    .line 2858
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 2859
    iget-object v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2860
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 2861
    iput-wide v10, p0, Lcom/taobao/uikit/component/LoopViewPager;->mFakeDragBeginTime:J

    return v0
.end method

.method canLoop()Z
    .locals 3

    .line 1048
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 12

    move-object v0, p1

    .line 3047
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 3049
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 3050
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 3051
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 3052
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    .line 3058
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    .line 3059
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p5, v4

    .line 3060
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    .line 3061
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move v9, p3

    invoke-virtual/range {v6 .. v11}, Lcom/taobao/uikit/component/LoopViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move v1, p3

    neg-int v1, v1

    .line 3068
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public canScrollHorizontally(I)Z
    .locals 4

    .line 3014
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3019
    :cond_0
    invoke-direct {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getClientWidth()I

    move-result v0

    .line 3020
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getScrollX()I

    move-result v2

    const/4 v3, 0x1

    if-gez p1, :cond_2

    int-to-float p1, v0

    .line 3023
    iget v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mFirstOffset:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-le v2, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    if-lez p1, :cond_3

    int-to-float p1, v0

    .line 3027
    iget v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mLastOffset:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-ge v2, p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 3405
    instance-of v0, p1, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public computeScroll()V
    .locals 4

    .line 2086
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2088
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getScrollX()I

    move-result v0

    .line 2089
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getScrollY()I

    move-result v1

    .line 2090
    iget-object v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 2091
    iget-object v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 2095
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/taobao/uikit/component/LoopViewPager;->scrollTo(II)V

    .line 2096
    invoke-direct {p0, v2}, Lcom/taobao/uikit/component/LoopViewPager;->pageScrolled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2098
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    .line 2099
    invoke-virtual {p0, v0, v3}, Lcom/taobao/uikit/component/LoopViewPager;->scrollTo(II)V

    .line 2104
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 2109
    invoke-direct {p0, v0}, Lcom/taobao/uikit/component/LoopViewPager;->completeScroll(Z)V

    return-void
.end method

.method dataSetChanged()V
    .locals 10

    const v0, -0x800001

    .line 966
    iput v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mFirstOffset:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 967
    iput v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mLastOffset:F

    .line 968
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 969
    iput v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mExpectedAdapterCount:I

    .line 970
    iget-object v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 971
    :goto_0
    iget v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    move v5, v1

    move v6, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 974
    :goto_1
    iget-object v7, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_7

    .line 976
    iget-object v7, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    .line 977
    iget-object v8, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v9, v7, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    goto :goto_3

    :cond_1
    const/4 v9, -0x2

    if-ne v8, v9, :cond_4

    .line 986
    iget-object v5, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    if-nez v2, :cond_2

    .line 991
    iget-object v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    const/4 v2, 0x1

    .line 995
    :cond_2
    iget-object v5, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v8, v7, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    iget-object v9, v7, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v5, p0, v8, v9}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 998
    iget v5, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    iget v7, v7, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    if-ne v5, v7, :cond_3

    .line 1001
    iget v5, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    add-int/lit8 v6, v0, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v6, v5

    :cond_3
    :goto_2
    const/4 v5, 0x1

    goto :goto_3

    .line 1007
    :cond_4
    iget v9, v7, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    if-eq v9, v8, :cond_6

    .line 1009
    iget v5, v7, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    iget v9, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    if-ne v5, v9, :cond_5

    move v6, v8

    .line 1015
    :cond_5
    iput v8, v7, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    goto :goto_2

    :cond_6
    :goto_3
    add-int/2addr v1, v3

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_8

    .line 1022
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1025
    :cond_8
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v1, Lcom/taobao/uikit/component/LoopViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v5, :cond_b

    .line 1030
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_a

    .line 1033
    invoke-virtual {p0, v1}, Lcom/taobao/uikit/component/LoopViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1034
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;

    .line 1035
    iget-boolean v5, v2, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;->isDecor:Z

    if-nez v5, :cond_9

    const/4 v5, 0x0

    .line 1037
    iput v5, v2, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;->widthFactor:F

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1041
    :cond_a
    invoke-virtual {p0, v6, v4, v3}, Lcom/taobao/uikit/component/LoopViewPager;->setCurrentItemInternal(IZZ)V

    .line 1042
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->requestLayout()V

    :cond_b
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 3074
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/component/LoopViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .line 3369
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 3371
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 3375
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3378
    invoke-virtual {p0, v2}, Lcom/taobao/uikit/component/LoopViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3379
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 3381
    invoke-virtual {p0, v3}, Lcom/taobao/uikit/component/LoopViewPager;->infoForChild(Landroid/view/View;)Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3382
    iget v4, v4, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    if-ne v4, v5, :cond_1

    .line 3383
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    .line 877
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    .line 878
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 2731
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 862
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 863
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 864
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 866
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 6

    .line 2873
    iget-boolean v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mFakeDragging:Z

    if-eqz v0, :cond_0

    .line 2878
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    .line 2879
    iget v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2880
    iget v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mActivePointerId:I

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x1

    .line 2881
    iput-boolean v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mPopulatePending:Z

    .line 2882
    invoke-direct {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getClientWidth()I

    move-result v2

    .line 2883
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getScrollX()I

    move-result v3

    .line 2884
    invoke-direct {p0}, Lcom/taobao/uikit/component/LoopViewPager;->infoForCurrentScrollPosition()Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    move-result-object v4

    .line 2885
    iget v5, v4, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 2886
    iget v2, v4, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->offset:F

    sub-float/2addr v3, v2

    iget v2, v4, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v3, v2

    .line 2887
    iget v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mLastMotionX:F

    iget v4, p0, Lcom/taobao/uikit/component/LoopViewPager;->mInitialMotionX:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 2888
    invoke-direct {p0, v5, v3, v0, v2}, Lcom/taobao/uikit/component/LoopViewPager;->determineTargetPage(IFII)I

    move-result v2

    .line 2889
    invoke-virtual {p0, v2, v1, v1, v0}, Lcom/taobao/uikit/component/LoopViewPager;->setCurrentItemInternal(IZZI)V

    .line 2890
    invoke-direct {p0}, Lcom/taobao/uikit/component/LoopViewPager;->endDrag()V

    const/4 v0, 0x0

    .line 2892
    iput-boolean v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mFakeDragging:Z

    return-void

    .line 2875
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 3086
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 3088
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_3

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3097
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    .line 3101
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    .line 3103
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/component/LoopViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 3105
    invoke-static {p1, v0}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3107
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/component/LoopViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_1

    :cond_2
    const/16 p1, 0x42

    .line 3094
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/component/LoopViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_1

    :cond_3
    const/16 p1, 0x11

    .line 3091
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/component/LoopViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public fakeDragBy(F)V
    .locals 10

    .line 2904
    iget-boolean v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mFakeDragging:Z

    if-eqz v0, :cond_4

    .line 2909
    iget v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mLastMotionX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mLastMotionX:F

    .line 2911
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    .line 2913
    invoke-direct {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getClientWidth()I

    move-result p1

    int-to-float p1, p1

    .line 2915
    iget v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mFirstOffset:F

    mul-float v1, v1, p1

    .line 2916
    iget v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mLastOffset:F

    mul-float v2, v2, p1

    .line 2918
    iget-object v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    .line 2919
    iget-object v4, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    .line 2920
    iget v5, v3, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    if-eqz v5, :cond_0

    .line 2922
    iget v1, v3, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->offset:F

    mul-float v1, v1, p1

    .line 2924
    :cond_0
    iget v3, v4, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    iget-object v5, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_1

    .line 2926
    iget v2, v4, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->offset:F

    mul-float v2, v2, p1

    :cond_1
    cmpg-float p1, v0, v1

    if-gez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    cmpl-float p1, v0, v2

    if-lez p1, :cond_3

    move v0, v2

    .line 2938
    :cond_3
    :goto_0
    iget p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mLastMotionX:F

    float-to-int v1, v0

    int-to-float v2, v1

    sub-float/2addr v0, v2

    add-float/2addr p1, v0

    iput p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mLastMotionX:F

    .line 2939
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/taobao/uikit/component/LoopViewPager;->scrollTo(II)V

    .line 2940
    invoke-direct {p0, v1}, Lcom/taobao/uikit/component/LoopViewPager;->pageScrolled(I)Z

    .line 2943
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2944
    iget-wide v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mFakeDragBeginTime:J

    const/4 v6, 0x2

    iget v7, p0, Lcom/taobao/uikit/component/LoopViewPager;->mLastMotionX:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2945
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2946
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void

    .line 2906
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 3395
    new-instance v0, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;

    invoke-direct {v0}, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 3410
    new-instance v0, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;

    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 3400
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    .line 739
    iget v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mDrawingOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    sub-int p2, p1, p2

    .line 740
    :cond_0
    iget-object p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;

    iget p1, p1, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;->childIndex:I

    return p1
.end method

.method public getCurrentItem()I
    .locals 1

    .line 566
    iget v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    return v0
.end method

.method getLeftPos(I)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_0

    .line 1056
    iget-object p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :cond_0
    return p1
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .line 765
    iget v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .line 824
    iget v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mPageMargin:I

    return v0
.end method

.method getRightPos(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 1064
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method getRightPosCompat(I)I
    .locals 1

    .line 1073
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->canLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1075
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/component/LoopViewPager;->getRightPos(I)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;
    .locals 1

    .line 1791
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_1

    .line 1793
    instance-of p1, v0, Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_1

    .line 1797
    :cond_0
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1

    .line 1799
    :cond_2
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/component/LoopViewPager;->infoForChild(Landroid/view/View;)Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    move-result-object p1

    return-object p1
.end method

.method infoForChild(Landroid/view/View;)Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;
    .locals 4

    const/4 v0, 0x0

    .line 1777
    :goto_0
    iget-object v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1779
    iget-object v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    .line 1780
    iget-object v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, v1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method infoForPosition(I)Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;
    .locals 3

    const/4 v0, 0x0

    .line 1804
    :goto_0
    iget-object v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1806
    iget-object v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    .line 1807
    iget v2, v1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method initViewPager()V
    .locals 4

    const/4 v0, 0x0

    .line 388
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/component/LoopViewPager;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    .line 389
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/component/LoopViewPager;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    .line 390
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/component/LoopViewPager;->setFocusable(Z)V

    .line 391
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 392
    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Lcom/taobao/uikit/component/LoopViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mScroller:Landroid/widget/Scroller;

    .line 393
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 394
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 396
    invoke-static {v2}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v3

    iput v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mTouchSlop:I

    const/high16 v3, 0x43c80000    # 400.0f

    mul-float v3, v3, v1

    float-to-int v3, v3

    .line 397
    iput v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mMinimumVelocity:I

    .line 398
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mMaximumVelocity:I

    const/high16 v2, 0x41c80000    # 25.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    .line 402
    iput v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mFlingDistance:I

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    .line 403
    iput v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCloseEnough:I

    const/high16 v2, 0x41800000    # 16.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 404
    iput v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mDefaultGutterSize:I

    .line 406
    new-instance v1, Lcom/taobao/uikit/component/LoopViewPager$MyAccessibilityDelegate;

    invoke-direct {v1, p0}, Lcom/taobao/uikit/component/LoopViewPager$MyAccessibilityDelegate;-><init>(Lcom/taobao/uikit/component/LoopViewPager;)V

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 408
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 410
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public isFakeDragging()Z
    .locals 1

    .line 2959
    iget-boolean v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mFakeDragging:Z

    return v0
.end method

.method isLeftToRight(II)Z
    .locals 0

    .line 1500
    invoke-virtual {p0, p2}, Lcom/taobao/uikit/component/LoopViewPager;->getLeftPos(I)I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1817
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 1818
    iput-boolean v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/taobao/uikit/component/LoopViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 418
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 2778
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2781
    iget v1, v0, Lcom/taobao/uikit/component/LoopViewPager;->mPageMargin:I

    if-lez v1, :cond_4

    iget-object v1, v0, Lcom/taobao/uikit/component/LoopViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, v0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_4

    .line 2783
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/uikit/component/LoopViewPager;->getScrollX()I

    move-result v1

    .line 2784
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/uikit/component/LoopViewPager;->getWidth()I

    move-result v2

    .line 2786
    iget v3, v0, Lcom/taobao/uikit/component/LoopViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 2788
    iget-object v5, v0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    .line 2789
    iget v7, v5, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->offset:F

    .line 2790
    iget-object v8, v0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2791
    iget v9, v5, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    .line 2792
    iget-object v10, v0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v11, v8, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    iget v10, v10, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    :goto_0
    if-ge v9, v10, :cond_4

    .line 2795
    :goto_1
    iget v11, v5, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    if-le v9, v11, :cond_0

    if-ge v6, v8, :cond_0

    .line 2797
    iget-object v5, v0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    goto :goto_1

    .line 2801
    :cond_0
    iget v11, v5, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    if-ne v9, v11, :cond_1

    .line 2803
    iget v7, v5, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->offset:F

    iget v11, v5, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v7, v11

    mul-float v7, v7, v4

    .line 2804
    iget v11, v5, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->offset:F

    iget v12, v5, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v11, v12

    add-float/2addr v11, v3

    goto :goto_2

    .line 2808
    :cond_1
    iget-object v11, v0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v11, v9}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v11

    add-float v12, v7, v11

    mul-float v12, v12, v4

    add-float/2addr v11, v3

    add-float/2addr v7, v11

    move v11, v7

    move v7, v12

    .line 2813
    :goto_2
    iget v12, v0, Lcom/taobao/uikit/component/LoopViewPager;->mPageMargin:I

    int-to-float v13, v12

    add-float/2addr v13, v7

    int-to-float v14, v1

    cmpl-float v13, v13, v14

    if-lez v13, :cond_2

    .line 2815
    iget-object v13, v0, Lcom/taobao/uikit/component/LoopViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v14, v7

    iget v15, v0, Lcom/taobao/uikit/component/LoopViewPager;->mTopPageBounds:I

    int-to-float v12, v12

    add-float/2addr v12, v7

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v12, v12, v16

    float-to-int v12, v12

    move/from16 v16, v3

    iget v3, v0, Lcom/taobao/uikit/component/LoopViewPager;->mBottomPageBounds:I

    invoke-virtual {v13, v14, v15, v12, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2816
    iget-object v3, v0, Lcom/taobao/uikit/component/LoopViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v12, p1

    invoke-virtual {v3, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_2
    move-object/from16 v12, p1

    move/from16 v16, v3

    :goto_3
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v7, v3

    if-lez v3, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v9, v9, 0x1

    move v7, v11

    move/from16 v3, v16

    goto :goto_0

    :cond_4
    :goto_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 2291
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_e

    const/4 v9, 0x1

    if-ne v0, v9, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz v0, :cond_2

    .line 2312
    iget-boolean v2, v6, Lcom/taobao/uikit/component/LoopViewPager;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    return v9

    .line 2316
    :cond_1
    iget-boolean v2, v6, Lcom/taobao/uikit/component/LoopViewPager;->mIsUnableToDrag:Z

    if-eqz v2, :cond_2

    return v8

    :cond_2
    const/4 v2, 0x2

    if-eqz v0, :cond_a

    if-eq v0, v2, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_2

    .line 2418
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/taobao/uikit/component/LoopViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 2335
    :cond_4
    iget v0, v6, Lcom/taobao/uikit/component/LoopViewPager;->mActivePointerId:I

    if-ne v0, v1, :cond_5

    goto/16 :goto_2

    .line 2342
    :cond_5
    invoke-static {v7, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 2343
    invoke-static {v7, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 2344
    iget v1, v6, Lcom/taobao/uikit/component/LoopViewPager;->mLastMotionX:F

    sub-float v11, v10, v1

    .line 2345
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 2346
    invoke-static {v7, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v13

    .line 2347
    iget v0, v6, Lcom/taobao/uikit/component/LoopViewPager;->mInitialMotionY:F

    sub-float v0, v13, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v0, v11, v15

    if-eqz v0, :cond_6

    .line 2349
    iget v0, v6, Lcom/taobao/uikit/component/LoopViewPager;->mLastMotionX:F

    invoke-direct {v6, v0, v11}, Lcom/taobao/uikit/component/LoopViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v2, 0x0

    float-to-int v3, v11

    float-to-int v4, v10

    float-to-int v5, v13

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    .line 2350
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/uikit/component/LoopViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2353
    iput v10, v6, Lcom/taobao/uikit/component/LoopViewPager;->mLastMotionX:F

    .line 2354
    iput v13, v6, Lcom/taobao/uikit/component/LoopViewPager;->mLastMotionY:F

    .line 2355
    iput-boolean v9, v6, Lcom/taobao/uikit/component/LoopViewPager;->mIsUnableToDrag:Z

    return v8

    .line 2358
    :cond_6
    iget v0, v6, Lcom/taobao/uikit/component/LoopViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v12, v0

    if-lez v0, :cond_8

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v12, v12, v0

    cmpl-float v0, v12, v14

    if-lez v0, :cond_8

    .line 2360
    iput-boolean v9, v6, Lcom/taobao/uikit/component/LoopViewPager;->mIsBeingDragged:Z

    .line 2361
    invoke-direct {v6, v9}, Lcom/taobao/uikit/component/LoopViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2362
    invoke-direct {v6, v9}, Lcom/taobao/uikit/component/LoopViewPager;->setScrollState(I)V

    cmpl-float v0, v11, v15

    if-lez v0, :cond_7

    .line 2363
    iget v0, v6, Lcom/taobao/uikit/component/LoopViewPager;->mInitialMotionX:F

    iget v1, v6, Lcom/taobao/uikit/component/LoopViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_0

    :cond_7
    iget v0, v6, Lcom/taobao/uikit/component/LoopViewPager;->mInitialMotionX:F

    iget v1, v6, Lcom/taobao/uikit/component/LoopViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_0
    iput v0, v6, Lcom/taobao/uikit/component/LoopViewPager;->mLastMotionX:F

    .line 2364
    iput v13, v6, Lcom/taobao/uikit/component/LoopViewPager;->mLastMotionY:F

    .line 2365
    invoke-direct {v6, v9}, Lcom/taobao/uikit/component/LoopViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_1

    .line 2367
    :cond_8
    iget v0, v6, Lcom/taobao/uikit/component/LoopViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v14, v0

    if-lez v0, :cond_9

    .line 2373
    iput-boolean v9, v6, Lcom/taobao/uikit/component/LoopViewPager;->mIsUnableToDrag:Z

    .line 2375
    :cond_9
    :goto_1
    iget-boolean v0, v6, Lcom/taobao/uikit/component/LoopViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_c

    .line 2378
    invoke-direct {v6, v10}, Lcom/taobao/uikit/component/LoopViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2380
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_2

    .line 2392
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Lcom/taobao/uikit/component/LoopViewPager;->mInitialMotionX:F

    iput v0, v6, Lcom/taobao/uikit/component/LoopViewPager;->mLastMotionX:F

    .line 2393
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Lcom/taobao/uikit/component/LoopViewPager;->mInitialMotionY:F

    iput v0, v6, Lcom/taobao/uikit/component/LoopViewPager;->mLastMotionY:F

    .line 2394
    invoke-static {v7, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, v6, Lcom/taobao/uikit/component/LoopViewPager;->mActivePointerId:I

    .line 2395
    iput-boolean v8, v6, Lcom/taobao/uikit/component/LoopViewPager;->mIsUnableToDrag:Z

    .line 2397
    iget-object v0, v6, Lcom/taobao/uikit/component/LoopViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 2398
    iget v0, v6, Lcom/taobao/uikit/component/LoopViewPager;->mScrollState:I

    if-ne v0, v2, :cond_b

    iget-object v0, v6, Lcom/taobao/uikit/component/LoopViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, v6, Lcom/taobao/uikit/component/LoopViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Lcom/taobao/uikit/component/LoopViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_b

    .line 2401
    iget-object v0, v6, Lcom/taobao/uikit/component/LoopViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2402
    iput-boolean v8, v6, Lcom/taobao/uikit/component/LoopViewPager;->mPopulatePending:Z

    .line 2403
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/uikit/component/LoopViewPager;->populate()V

    .line 2404
    iput-boolean v9, v6, Lcom/taobao/uikit/component/LoopViewPager;->mIsBeingDragged:Z

    .line 2405
    invoke-direct {v6, v9}, Lcom/taobao/uikit/component/LoopViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2406
    invoke-direct {v6, v9}, Lcom/taobao/uikit/component/LoopViewPager;->setScrollState(I)V

    goto :goto_2

    .line 2410
    :cond_b
    invoke-direct {v6, v8}, Lcom/taobao/uikit/component/LoopViewPager;->completeScroll(Z)V

    .line 2411
    iput-boolean v8, v6, Lcom/taobao/uikit/component/LoopViewPager;->mIsBeingDragged:Z

    .line 2422
    :cond_c
    :goto_2
    iget-object v0, v6, Lcom/taobao/uikit/component/LoopViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_d

    .line 2424
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Lcom/taobao/uikit/component/LoopViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2426
    :cond_d
    iget-object v0, v6, Lcom/taobao/uikit/component/LoopViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2432
    iget-boolean v0, v6, Lcom/taobao/uikit/component/LoopViewPager;->mIsBeingDragged:Z

    return v0

    .line 2297
    :cond_e
    :goto_3
    iput-boolean v8, v6, Lcom/taobao/uikit/component/LoopViewPager;->mIsBeingDragged:Z

    .line 2298
    iput-boolean v8, v6, Lcom/taobao/uikit/component/LoopViewPager;->mIsUnableToDrag:Z

    .line 2299
    iput v1, v6, Lcom/taobao/uikit/component/LoopViewPager;->mActivePointerId:I

    .line 2300
    iget-object v0, v6, Lcom/taobao/uikit/component/LoopViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_f

    .line 2302
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 2303
    iput-object v0, v6, Lcom/taobao/uikit/component/LoopViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_f
    return v8
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 1980
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/uikit/component/LoopViewPager;->getChildCount()I

    move-result v1

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    .line 1983
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/uikit/component/LoopViewPager;->getPaddingLeft()I

    move-result v4

    .line 1984
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/uikit/component/LoopViewPager;->getPaddingTop()I

    move-result v5

    .line 1985
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/uikit/component/LoopViewPager;->getPaddingRight()I

    move-result v6

    .line 1986
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/uikit/component/LoopViewPager;->getPaddingBottom()I

    move-result v7

    .line 1987
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/uikit/component/LoopViewPager;->getScrollX()I

    move-result v8

    move v10, v7

    const/4 v11, 0x0

    move v7, v5

    move v5, v4

    const/4 v4, 0x0

    :goto_0
    const/16 v12, 0x8

    if-ge v4, v1, :cond_7

    .line 1995
    invoke-virtual {v0, v4}, Lcom/taobao/uikit/component/LoopViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1996
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_6

    .line 1998
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;

    .line 2001
    iget-boolean v14, v12, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;->isDecor:Z

    if-eqz v14, :cond_6

    .line 2003
    iget v14, v12, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;->gravity:I

    and-int/lit8 v14, v14, 0x7

    .line 2004
    iget v12, v12, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;->gravity:I

    and-int/lit8 v12, v12, 0x70

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    const/4 v15, 0x3

    if-eq v14, v15, :cond_1

    const/4 v15, 0x5

    if-eq v14, v15, :cond_0

    move v14, v5

    goto :goto_1

    :cond_0
    sub-int v14, v2, v6

    .line 2018
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    .line 2019
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v6, v15

    goto :goto_1

    .line 2012
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v5

    move/from16 v17, v14

    move v14, v5

    move/from16 v5, v17

    goto :goto_1

    .line 2015
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v2, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_1
    const/16 v15, 0x10

    if-eq v12, v15, :cond_5

    const/16 v15, 0x30

    if-eq v12, v15, :cond_4

    const/16 v15, 0x50

    if-eq v12, v15, :cond_3

    move v12, v7

    goto :goto_2

    :cond_3
    sub-int v12, v3, v10

    .line 2035
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v12, v15

    .line 2036
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v10, v15

    goto :goto_2

    .line 2029
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v7

    move/from16 v17, v12

    move v12, v7

    move/from16 v7, v17

    goto :goto_2

    .line 2032
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v3, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_2
    add-int/2addr v14, v8

    .line 2040
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v14

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v9, v12, v16

    invoke-virtual {v13, v14, v12, v15, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v11, v11, 0x1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    sub-int/2addr v2, v5

    sub-int/2addr v2, v6

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_a

    .line 2050
    invoke-virtual {v0, v4}, Lcom/taobao/uikit/component/LoopViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2051
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v12, :cond_9

    .line 2053
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;

    .line 2055
    iget-boolean v9, v8, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;->isDecor:Z

    if-nez v9, :cond_9

    invoke-virtual {v0, v6}, Lcom/taobao/uikit/component/LoopViewPager;->infoForChild(Landroid/view/View;)Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    move-result-object v9

    if-eqz v9, :cond_9

    int-to-float v13, v2

    .line 2057
    iget v9, v9, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->offset:F

    mul-float v9, v9, v13

    float-to-int v9, v9

    add-int/2addr v9, v5

    .line 2060
    iget-boolean v14, v8, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;->needsMeasure:Z

    if-eqz v14, :cond_8

    const/4 v14, 0x0

    .line 2064
    iput-boolean v14, v8, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;->needsMeasure:Z

    .line 2065
    iget v8, v8, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;->widthFactor:F

    mul-float v13, v13, v8

    float-to-int v8, v13

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v8, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    sub-int v14, v3, v7

    sub-int/2addr v14, v10

    .line 2066
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 2067
    invoke-virtual {v6, v8, v13}, Landroid/view/View;->measure(II)V

    .line 2069
    :cond_8
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v9

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v7

    invoke-virtual {v6, v9, v7, v8, v13}, Landroid/view/View;->layout(IIII)V

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2073
    :cond_a
    iput v7, v0, Lcom/taobao/uikit/component/LoopViewPager;->mTopPageBounds:I

    sub-int/2addr v3, v10

    .line 2074
    iput v3, v0, Lcom/taobao/uikit/component/LoopViewPager;->mBottomPageBounds:I

    .line 2075
    iput v11, v0, Lcom/taobao/uikit/component/LoopViewPager;->mDecorChildCount:I

    .line 2077
    iget-boolean v1, v0, Lcom/taobao/uikit/component/LoopViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_b

    .line 2079
    iget v1, v0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/taobao/uikit/component/LoopViewPager;->scrollToItem(IZIZ)V

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    .line 2081
    :goto_4
    iput-boolean v2, v0, Lcom/taobao/uikit/component/LoopViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    .line 1828
    invoke-static {v2, v1}, Lcom/taobao/uikit/component/LoopViewPager;->getDefaultSize(II)I

    move-result v3

    move/from16 v4, p2

    .line 1829
    invoke-static {v2, v4}, Lcom/taobao/uikit/component/LoopViewPager;->getDefaultSize(II)I

    move-result v4

    .line 1830
    iget v5, v0, Lcom/taobao/uikit/component/LoopViewPager;->mRatio:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 1832
    invoke-static {v2, v1}, Lcom/taobao/uikit/component/LoopViewPager;->getDefaultSize(II)I

    move-result v3

    int-to-float v1, v3

    .line 1833
    iget v4, v0, Lcom/taobao/uikit/component/LoopViewPager;->mRatio:F

    mul-float v1, v1, v4

    float-to-int v4, v1

    .line 1837
    :cond_0
    invoke-virtual {v0, v3, v4}, Lcom/taobao/uikit/component/LoopViewPager;->setMeasuredDimension(II)V

    .line 1839
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/uikit/component/LoopViewPager;->getMeasuredWidth()I

    move-result v1

    .line 1840
    div-int/lit8 v3, v1, 0xa

    .line 1841
    iget v4, v0, Lcom/taobao/uikit/component/LoopViewPager;->mDefaultGutterSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Lcom/taobao/uikit/component/LoopViewPager;->mGutterSize:I

    .line 1844
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/uikit/component/LoopViewPager;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/uikit/component/LoopViewPager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    .line 1845
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/uikit/component/LoopViewPager;->getMeasuredHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/uikit/component/LoopViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/uikit/component/LoopViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1852
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/uikit/component/LoopViewPager;->getChildCount()I

    move-result v4

    move v5, v3

    move v3, v1

    const/4 v1, 0x0

    :goto_0
    const/16 v6, 0x8

    const/4 v7, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    if-ge v1, v4, :cond_d

    .line 1855
    invoke-virtual {v0, v1}, Lcom/taobao/uikit/component/LoopViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1856
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v6, :cond_c

    .line 1858
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;

    if-eqz v6, :cond_c

    .line 1859
    iget-boolean v10, v6, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;->isDecor:Z

    if-eqz v10, :cond_c

    .line 1861
    iget v10, v6, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;->gravity:I

    and-int/lit8 v10, v10, 0x7

    .line 1862
    iget v11, v6, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;->gravity:I

    and-int/lit8 v11, v11, 0x70

    const/16 v12, 0x30

    if-eq v11, v12, :cond_2

    const/16 v12, 0x50

    if-ne v11, v12, :cond_1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v11, 0x1

    :goto_2
    const/4 v12, 0x3

    if-eq v10, v12, :cond_4

    const/4 v12, 0x5

    if-ne v10, v12, :cond_3

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :cond_4
    :goto_3
    const/high16 v10, -0x80000000

    if-eqz v11, :cond_5

    const/high16 v10, 0x40000000    # 2.0f

    goto :goto_4

    :cond_5
    if-eqz v7, :cond_6

    const/high16 v12, 0x40000000    # 2.0f

    goto :goto_5

    :cond_6
    :goto_4
    const/high16 v12, -0x80000000

    .line 1879
    :goto_5
    iget v13, v6, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;->width:I

    const/4 v14, -0x1

    const/4 v15, -0x2

    if-eq v13, v15, :cond_8

    .line 1882
    iget v10, v6, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;->width:I

    if-eq v10, v14, :cond_7

    .line 1884
    iget v10, v6, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;->width:I

    move v13, v10

    goto :goto_6

    :cond_7
    move v13, v3

    :goto_6
    const/high16 v10, 0x40000000    # 2.0f

    goto :goto_7

    :cond_8
    move v13, v3

    .line 1887
    :goto_7
    iget v2, v6, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;->height:I

    if-eq v2, v15, :cond_a

    .line 1890
    iget v2, v6, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;->height:I

    if-eq v2, v14, :cond_9

    .line 1892
    iget v2, v6, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;->height:I

    goto :goto_8

    :cond_9
    move v2, v5

    goto :goto_8

    :cond_a
    move v2, v5

    move v8, v12

    .line 1895
    :goto_8
    invoke-static {v13, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1896
    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1897
    invoke-virtual {v9, v6, v2}, Landroid/view/View;->measure(II)V

    if-eqz v11, :cond_b

    .line 1901
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v5, v2

    goto :goto_9

    :cond_b
    if-eqz v7, :cond_c

    .line 1905
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v3, v2

    :cond_c
    :goto_9
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1911
    :cond_d
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, v0, Lcom/taobao/uikit/component/LoopViewPager;->mChildWidthMeasureSpec:I

    .line 1912
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, v0, Lcom/taobao/uikit/component/LoopViewPager;->mChildHeightMeasureSpec:I

    .line 1915
    iput-boolean v7, v0, Lcom/taobao/uikit/component/LoopViewPager;->mInLayout:Z

    .line 1916
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/uikit/component/LoopViewPager;->populate()V

    const/4 v1, 0x0

    .line 1917
    iput-boolean v1, v0, Lcom/taobao/uikit/component/LoopViewPager;->mInLayout:Z

    .line 1920
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/uikit/component/LoopViewPager;->getChildCount()I

    move-result v2

    :goto_a
    if-ge v1, v2, :cond_10

    .line 1923
    invoke-virtual {v0, v1}, Lcom/taobao/uikit/component/LoopViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1924
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_f

    .line 1926
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;

    if-eqz v4, :cond_e

    .line 1927
    iget-boolean v4, v4, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;->isDecor:Z

    if-nez v4, :cond_f

    .line 1929
    :cond_e
    iget v4, v0, Lcom/taobao/uikit/component/LoopViewPager;->mChildWidthMeasureSpec:I

    iget v5, v0, Lcom/taobao/uikit/component/LoopViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_10
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 12

    .line 2152
    iget v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mDecorChildCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_5

    .line 2154
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getScrollX()I

    move-result v0

    .line 2155
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getPaddingLeft()I

    move-result v3

    .line 2156
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getPaddingRight()I

    move-result v4

    .line 2157
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getWidth()I

    move-result v5

    .line 2158
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getChildCount()I

    move-result v6

    move v7, v4

    move v4, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_5

    .line 2161
    invoke-virtual {p0, v3}, Lcom/taobao/uikit/component/LoopViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2162
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;

    .line 2163
    iget-boolean v10, v9, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_0

    goto :goto_3

    .line 2168
    :cond_0
    iget v9, v9, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;->gravity:I

    and-int/lit8 v9, v9, 0x7

    if-eq v9, v2, :cond_3

    const/4 v10, 0x3

    if-eq v9, v10, :cond_2

    const/4 v10, 0x5

    if-eq v9, v10, :cond_1

    move v9, v4

    goto :goto_2

    :cond_1
    sub-int v9, v5, v7

    .line 2183
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    .line 2184
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v7, v10

    goto :goto_1

    .line 2177
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v4

    goto :goto_2

    .line 2180
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int v9, v5, v9

    div-int/lit8 v9, v9, 0x2

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    :goto_1
    move v11, v9

    move v9, v4

    move v4, v11

    :goto_2
    add-int/2addr v4, v0

    .line 2189
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v4, v10

    if-eqz v4, :cond_4

    .line 2192
    invoke-virtual {v8, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_4
    move v4, v9

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2197
    :cond_5
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mOnPageChangeListener:Lcom/taobao/uikit/component/LoopViewPager$OnPageChangeListener;

    if-eqz v0, :cond_6

    .line 2199
    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/uikit/component/LoopViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 2201
    :cond_6
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mInternalPageChangeListener:Lcom/taobao/uikit/component/LoopViewPager$OnPageChangeListener;

    if-eqz v0, :cond_7

    .line 2203
    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/uikit/component/LoopViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 2206
    :cond_7
    iget-object p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mPageTransformer:Lcom/taobao/uikit/component/LoopViewPager$PageTransformer;

    if-eqz p1, :cond_9

    .line 2208
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getScrollX()I

    move-result p1

    .line 2209
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getChildCount()I

    move-result p2

    :goto_4
    if-ge v1, p2, :cond_9

    .line 2212
    invoke-virtual {p0, v1}, Lcom/taobao/uikit/component/LoopViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 2213
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;

    .line 2215
    iget-boolean v0, v0, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;->isDecor:Z

    if-eqz v0, :cond_8

    goto :goto_5

    .line 2220
    :cond_8
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getClientWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 2221
    iget-object v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mPageTransformer:Lcom/taobao/uikit/component/LoopViewPager$PageTransformer;

    invoke-interface {v3, p3, v0}, Lcom/taobao/uikit/component/LoopViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2225
    :cond_9
    iput-boolean v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCalledSuper:Z

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .line 3335
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v3, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    :goto_0
    if-eq v0, v3, :cond_2

    .line 3350
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/component/LoopViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3351
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 3353
    invoke-virtual {p0, v5}, Lcom/taobao/uikit/component/LoopViewPager;->infoForChild(Landroid/view/View;)Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 3354
    iget v6, v6, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    iget v7, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    if-ne v6, v7, :cond_1

    .line 3356
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1706
    instance-of v0, p1, Lcom/taobao/uikit/component/LoopViewPager$SavedState;

    if-nez v0, :cond_0

    .line 1708
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1712
    :cond_0
    nop

    nop

    .line 1713
    invoke-virtual {p1}, Lcom/taobao/uikit/component/LoopViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1715
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_1

    .line 1717
    iget-object v1, p1, Lcom/taobao/uikit/component/LoopViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v2, p1, Lcom/taobao/uikit/component/LoopViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1718
    iget p1, p1, Lcom/taobao/uikit/component/LoopViewPager$SavedState;->position:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/taobao/uikit/component/LoopViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 1722
    :cond_1
    iget v0, p1, Lcom/taobao/uikit/component/LoopViewPager$SavedState;->position:I

    iput v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mRestoredCurItem:I

    .line 1723
    iget-object v0, p1, Lcom/taobao/uikit/component/LoopViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1724
    iget-object p1, p1, Lcom/taobao/uikit/component/LoopViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1694
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1695
    new-instance v1, Lcom/taobao/uikit/component/LoopViewPager$SavedState;

    invoke-direct {v1, v0}, Lcom/taobao/uikit/component/LoopViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1696
    iget v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    iput v0, v1, Lcom/taobao/uikit/component/LoopViewPager$SavedState;->position:I

    .line 1697
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    .line 1699
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lcom/taobao/uikit/component/LoopViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1937
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    .line 1942
    iget p2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, p2, p2}, Lcom/taobao/uikit/component/LoopViewPager;->recomputeScrollPosition(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 2437
    iget-boolean v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mFakeDragging:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2445
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 2452
    :cond_1
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 2458
    :cond_2
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    .line 2460
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2462
    :cond_3
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2464
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_b

    const/4 v3, -0x1

    if-eq v0, v1, :cond_a

    const/4 v4, 0x2

    if-eq v0, v4, :cond_7

    const/4 v4, 0x3

    if-eq v0, v4, :cond_6

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    const/4 v3, 0x6

    if-eq v0, v3, :cond_4

    goto/16 :goto_1

    .line 2556
    :cond_4
    invoke-direct {p0, p1}, Lcom/taobao/uikit/component/LoopViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2557
    iget v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mLastMotionX:F

    goto/16 :goto_1

    .line 2549
    :cond_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2550
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 2551
    iput v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mLastMotionX:F

    .line 2552
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mActivePointerId:I

    goto/16 :goto_1

    .line 2539
    :cond_6
    iget-boolean p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mIsBeingDragged:Z

    if-eqz p1, :cond_c

    .line 2541
    iget p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    invoke-direct {p0, p1, v1, v2, v2}, Lcom/taobao/uikit/component/LoopViewPager;->scrollToItem(IZIZ)V

    .line 2542
    iput v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mActivePointerId:I

    .line 2543
    invoke-direct {p0}, Lcom/taobao/uikit/component/LoopViewPager;->endDrag()V

    goto/16 :goto_1

    .line 2482
    :cond_7
    iget-boolean v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mIsBeingDragged:Z

    if-nez v0, :cond_9

    .line 2484
    iget v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 2485
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 2486
    iget v4, p0, Lcom/taobao/uikit/component/LoopViewPager;->mLastMotionX:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 2487
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 2488
    iget v5, p0, Lcom/taobao/uikit/component/LoopViewPager;->mLastMotionY:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 2489
    iget v6, p0, Lcom/taobao/uikit/component/LoopViewPager;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_9

    cmpl-float v4, v4, v5

    if-lez v4, :cond_9

    .line 2491
    iput-boolean v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mIsBeingDragged:Z

    .line 2492
    invoke-direct {p0, v1}, Lcom/taobao/uikit/component/LoopViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2493
    iget v4, p0, Lcom/taobao/uikit/component/LoopViewPager;->mInitialMotionX:F

    sub-float/2addr v3, v4

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_8

    iget v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mTouchSlop:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    goto :goto_0

    :cond_8
    iget v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mTouchSlop:I

    int-to-float v3, v3

    sub-float/2addr v4, v3

    :goto_0
    iput v4, p0, Lcom/taobao/uikit/component/LoopViewPager;->mLastMotionX:F

    .line 2494
    iput v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mLastMotionY:F

    .line 2495
    invoke-direct {p0, v1}, Lcom/taobao/uikit/component/LoopViewPager;->setScrollState(I)V

    .line 2496
    invoke-direct {p0, v1}, Lcom/taobao/uikit/component/LoopViewPager;->setScrollingCacheEnabled(Z)V

    .line 2499
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2502
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2507
    :cond_9
    iget-boolean v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_c

    .line 2510
    iget v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 2511
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 2512
    invoke-direct {p0, p1}, Lcom/taobao/uikit/component/LoopViewPager;->performDrag(F)Z

    move-result p1

    or-int/2addr v2, p1

    goto :goto_1

    .line 2516
    :cond_a
    iget-boolean v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_c

    .line 2518
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    .line 2519
    iget v5, p0, Lcom/taobao/uikit/component/LoopViewPager;->mMaximumVelocity:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2520
    iget v4, p0, Lcom/taobao/uikit/component/LoopViewPager;->mActivePointerId:I

    invoke-static {v0, v4}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    .line 2521
    iput-boolean v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mPopulatePending:Z

    .line 2522
    invoke-direct {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getClientWidth()I

    move-result v4

    .line 2523
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getScrollX()I

    move-result v5

    .line 2524
    invoke-direct {p0}, Lcom/taobao/uikit/component/LoopViewPager;->infoForCurrentScrollPosition()Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    move-result-object v6

    .line 2525
    iget v7, v6, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    int-to-float v5, v5

    int-to-float v4, v4

    div-float/2addr v5, v4

    .line 2526
    iget v4, v6, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->offset:F

    sub-float/2addr v5, v4

    iget v4, v6, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v5, v4

    .line 2527
    iget v4, p0, Lcom/taobao/uikit/component/LoopViewPager;->mActivePointerId:I

    invoke-static {p1, v4}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v4

    .line 2528
    invoke-static {p1, v4}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 2529
    iget v4, p0, Lcom/taobao/uikit/component/LoopViewPager;->mInitialMotionX:F

    sub-float/2addr p1, v4

    float-to-int p1, p1

    .line 2530
    invoke-direct {p0, v7, v5, v0, p1}, Lcom/taobao/uikit/component/LoopViewPager;->determineTargetPage(IFII)I

    move-result p1

    .line 2531
    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/taobao/uikit/component/LoopViewPager;->setCurrentItemInternal(IZZI)V

    .line 2533
    iput v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mActivePointerId:I

    .line 2534
    invoke-direct {p0}, Lcom/taobao/uikit/component/LoopViewPager;->endDrag()V

    goto :goto_1

    .line 2471
    :cond_b
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2472
    iput-boolean v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mPopulatePending:Z

    .line 2473
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->populate()V

    .line 2476
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mInitialMotionX:F

    iput v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mLastMotionX:F

    .line 2477
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mInitialMotionY:F

    iput v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mLastMotionY:F

    .line 2478
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mActivePointerId:I

    :cond_c
    :goto_1
    if-eqz v2, :cond_d

    .line 2562
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_d
    return v1

    :cond_e
    :goto_2
    return v2
.end method

.method pageLeft()Z
    .locals 2

    .line 3232
    iget v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 3234
    invoke-virtual {p0, v0, v1}, Lcom/taobao/uikit/component/LoopViewPager;->setCurrentItem(IZ)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method pageRight()Z
    .locals 3

    .line 3242
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    .line 3244
    iget v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/taobao/uikit/component/LoopViewPager;->setCurrentItem(IZ)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method populate()V
    .locals 1

    .line 1082
    iget v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/taobao/uikit/component/LoopViewPager;->populate(I)V

    return-void
.end method

.method populate(I)V
    .locals 11

    .line 1088
    iget-boolean v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mPopulatePending:Z

    if-eqz v0, :cond_0

    .line 1090
    iget v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    invoke-virtual {p0, p1, v0}, Lcom/taobao/uikit/component/LoopViewPager;->isLeftToRight(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mIsLeftToRight:Z

    :cond_0
    const/4 v0, 0x2

    .line 1095
    iget v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    const/4 v2, 0x0

    if-eq v1, p1, :cond_2

    if-ge v1, p1, :cond_1

    const/16 v0, 0x42

    goto :goto_0

    :cond_1
    const/16 v0, 0x11

    .line 1098
    :goto_0
    iget v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    invoke-virtual {p0, v1}, Lcom/taobao/uikit/component/LoopViewPager;->infoForPosition(I)Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    move-result-object v1

    .line 1099
    iput p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 1102
    :goto_1
    iget-object p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez p1, :cond_3

    .line 1104
    invoke-direct {p0}, Lcom/taobao/uikit/component/LoopViewPager;->sortChildDrawingOrder()V

    return-void

    .line 1112
    :cond_3
    iget-boolean p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mPopulatePending:Z

    if-eqz p1, :cond_4

    .line 1114
    invoke-direct {p0}, Lcom/taobao/uikit/component/LoopViewPager;->sortChildDrawingOrder()V

    return-void

    .line 1121
    :cond_4
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_5

    return-void

    .line 1126
    :cond_5
    iget-object p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p1, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 1128
    iget p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mOffscreenPageLimit:I

    .line 1129
    iget-object v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    .line 1131
    iget v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    sub-int/2addr v3, p1

    const/4 v10, 0x0

    .line 1132
    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1134
    iget v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    add-int/2addr v3, p1

    add-int/lit8 p1, v5, -0x1

    .line 1135
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1137
    iget p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mExpectedAdapterCount:I

    if-ne v5, p1, :cond_14

    const/4 v8, 0x0

    .line 1159
    :goto_2
    iget-object p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v8, p1, :cond_8

    .line 1161
    iget-object p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    .line 1163
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->canLoop()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1165
    iget v3, p1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    iget v4, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    if-lt v3, v4, :cond_7

    .line 1167
    iget v3, p1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    iget v4, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    if-ne v3, v4, :cond_8

    goto :goto_3

    .line 1176
    :cond_6
    iget v3, p1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    iget v4, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    if-ne v3, v4, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_8
    move-object p1, v2

    :goto_3
    if-nez p1, :cond_9

    if-lez v5, :cond_9

    .line 1186
    iget p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    invoke-virtual {p0, p1, v8}, Lcom/taobao/uikit/component/LoopViewPager;->addNewItem(II)Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    move-result-object p1

    :cond_9
    if-eqz p1, :cond_c

    .line 1195
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->canLoop()Z

    move-result v3

    if-nez v3, :cond_a

    move-object v4, p0

    move-object v9, p1

    .line 1197
    invoke-direct/range {v4 .. v9}, Lcom/taobao/uikit/component/LoopViewPager;->populateNoLoop(IIIILcom/taobao/uikit/component/LoopViewPager$ItemInfo;)I

    move-result v3

    goto :goto_4

    .line 1201
    :cond_a
    iget-boolean v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mIsLeftToRight:Z

    if-eqz v3, :cond_b

    .line 1203
    invoke-direct {p0, v8}, Lcom/taobao/uikit/component/LoopViewPager;->populateRightToLeft(I)I

    move-result v3

    goto :goto_4

    .line 1207
    :cond_b
    invoke-direct {p0, v8}, Lcom/taobao/uikit/component/LoopViewPager;->populateLeftToRight(I)I

    move-result v3

    .line 1211
    :goto_4
    invoke-direct {p0, p1, v3, v1}, Lcom/taobao/uikit/component/LoopViewPager;->calculatePageOffsets(Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;ILcom/taobao/uikit/component/LoopViewPager$ItemInfo;)V

    .line 1214
    :cond_c
    iget-object v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    if-eqz p1, :cond_d

    iget-object p1, p1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->object:Ljava/lang/Object;

    goto :goto_5

    :cond_d
    move-object p1, v2

    :goto_5
    invoke-virtual {v1, p0, v3, p1}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1216
    iget-object p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p1, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1220
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getChildCount()I

    move-result p1

    const/4 v1, 0x0

    :goto_6
    if-ge v1, p1, :cond_f

    .line 1223
    invoke-virtual {p0, v1}, Lcom/taobao/uikit/component/LoopViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1224
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;

    .line 1225
    iput v1, v4, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;->childIndex:I

    .line 1226
    iget-boolean v5, v4, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;->isDecor:Z

    if-nez v5, :cond_e

    iget v5, v4, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;->widthFactor:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_e

    .line 1229
    invoke-virtual {p0, v3}, Lcom/taobao/uikit/component/LoopViewPager;->infoForChild(Landroid/view/View;)Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 1232
    iget v5, v3, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->widthFactor:F

    iput v5, v4, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;->widthFactor:F

    .line 1233
    iget v3, v3, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    iput v3, v4, Lcom/taobao/uikit/component/LoopViewPager$LayoutParams;->position:I

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1237
    :cond_f
    invoke-direct {p0}, Lcom/taobao/uikit/component/LoopViewPager;->sortChildDrawingOrder()V

    .line 1239
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 1241
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 1242
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/component/LoopViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    move-result-object v2

    :cond_10
    if-eqz v2, :cond_11

    .line 1243
    iget p1, v2, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    iget v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    if-eq p1, v1, :cond_13

    .line 1245
    :cond_11
    :goto_7
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getChildCount()I

    move-result p1

    if-ge v10, p1, :cond_13

    .line 1247
    invoke-virtual {p0, v10}, Lcom/taobao/uikit/component/LoopViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1248
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/component/LoopViewPager;->infoForChild(Landroid/view/View;)Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 1249
    iget v1, v1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    iget v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    if-ne v1, v2, :cond_12

    .line 1251
    invoke-virtual {p1, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_8

    :cond_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_13
    :goto_8
    return-void

    .line 1142
    :cond_14
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    .line 1146
    :catch_0
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 1148
    :goto_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mExpectedAdapterCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Pager id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Pager class: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " Problematic adapter: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 1153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 1765
    iget-boolean v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 1767
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/component/LoopViewPager;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    .line 1771
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 7

    .line 447
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 449
    iget-object v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mObserver:Lcom/taobao/uikit/component/LoopViewPager$PagerObserver;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 450
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    const/4 v0, 0x0

    .line 451
    :goto_0
    iget-object v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 453
    iget-object v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    .line 454
    iget-object v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v4, v2, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    iget-object v2, v2, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v2}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 457
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 458
    invoke-direct {p0}, Lcom/taobao/uikit/component/LoopViewPager;->removeNonDecorViews()V

    .line 459
    iput v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    .line 460
    invoke-virtual {p0, v1, v1}, Lcom/taobao/uikit/component/LoopViewPager;->scrollTo(II)V

    const v0, -0x800001

    .line 461
    iput v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mFirstOffset:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 462
    iput v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mLastOffset:F

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 466
    iput-object p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 467
    iput v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mExpectedAdapterCount:I

    .line 469
    iget-object v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v2, :cond_5

    .line 471
    iget-object v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mObserver:Lcom/taobao/uikit/component/LoopViewPager$PagerObserver;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 473
    new-instance v2, Lcom/taobao/uikit/component/LoopViewPager$PagerObserver;

    invoke-direct {v2, p0, v3}, Lcom/taobao/uikit/component/LoopViewPager$PagerObserver;-><init>(Lcom/taobao/uikit/component/LoopViewPager;Lcom/taobao/uikit/component/LoopViewPager$1;)V

    iput-object v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mObserver:Lcom/taobao/uikit/component/LoopViewPager$PagerObserver;

    .line 475
    :cond_2
    iget-object v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v4, p0, Lcom/taobao/uikit/component/LoopViewPager;->mObserver:Lcom/taobao/uikit/component/LoopViewPager$PagerObserver;

    invoke-virtual {v2, v4}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 476
    iput-boolean v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mPopulatePending:Z

    .line 477
    iget-boolean v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mFirstLayout:Z

    const/4 v4, 0x1

    .line 478
    iput-boolean v4, p0, Lcom/taobao/uikit/component/LoopViewPager;->mFirstLayout:Z

    .line 479
    iget-object v5, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    iput v5, p0, Lcom/taobao/uikit/component/LoopViewPager;->mExpectedAdapterCount:I

    .line 480
    iget v5, p0, Lcom/taobao/uikit/component/LoopViewPager;->mRestoredCurItem:I

    if-ltz v5, :cond_3

    .line 482
    iget-object v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v5, p0, Lcom/taobao/uikit/component/LoopViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v6, p0, Lcom/taobao/uikit/component/LoopViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v5, v6}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 483
    iget v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v2, v1, v4}, Lcom/taobao/uikit/component/LoopViewPager;->setCurrentItemInternal(IZZ)V

    const/4 v1, -0x1

    .line 484
    iput v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mRestoredCurItem:I

    .line 485
    iput-object v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 486
    iput-object v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    .line 490
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->populate()V

    goto :goto_1

    .line 494
    :cond_4
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->requestLayout()V

    .line 498
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapterChangeListener:Lcom/taobao/uikit/component/LoopViewPager$OnAdapterChangeListener;

    if-eqz v1, :cond_6

    if-eq v0, p1, :cond_6

    .line 500
    invoke-interface {v1, v0, p1}, Lcom/taobao/uikit/component/LoopViewPager$OnAdapterChangeListener;->onAdapterChanged(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    :cond_6
    return-void
.end method

.method setChildrenDrawingOrderEnabledCompat(Z)V
    .locals 6

    .line 711
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    .line 713
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 717
    :try_start_0
    const-class v0, Landroid/view/ViewGroup;

    const-string v3, "setChildrenDrawingOrderEnabled"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 727
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    const/4 v0, 0x0

    .line 546
    iput-boolean v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mPopulatePending:Z

    .line 547
    iget v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    invoke-virtual {p0, p1, v1}, Lcom/taobao/uikit/component/LoopViewPager;->isLeftToRight(II)Z

    move-result v1

    iput-boolean v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mIsLeftToRight:Z

    .line 548
    iget-boolean v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mFirstLayout:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/taobao/uikit/component/LoopViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 2

    const/4 v0, 0x0

    .line 559
    iput-boolean v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mPopulatePending:Z

    .line 560
    iget v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    invoke-virtual {p0, p1, v1}, Lcom/taobao/uikit/component/LoopViewPager;->isLeftToRight(II)Z

    move-result v1

    iput-boolean v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mIsLeftToRight:Z

    .line 561
    invoke-virtual {p0, p1, p2, v0}, Lcom/taobao/uikit/component/LoopViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 571
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/uikit/component/LoopViewPager;->setCurrentItemInternal(IZZI)V

    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 4

    .line 576
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    if-nez p3, :cond_1

    .line 581
    iget p3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    if-ne p3, p1, :cond_1

    iget-object p3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_1

    .line 583
    invoke-direct {p0, v1}, Lcom/taobao/uikit/component/LoopViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_1
    const/4 p3, 0x1

    if-gez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 591
    :cond_2
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 593
    iget-object p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, p3

    .line 595
    :cond_3
    :goto_0
    iget v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mOffscreenPageLimit:I

    .line 596
    iget v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    add-int v3, v2, v0

    if-gt p1, v3, :cond_4

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_5

    :cond_4
    const/4 v0, 0x0

    .line 601
    :goto_1
    iget-object v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 603
    iget-object v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    iput-boolean p3, v2, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->scrolling:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 606
    :cond_5
    iget v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    if-eq v0, p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 p3, 0x0

    .line 608
    :goto_2
    iget-boolean v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mFirstLayout:Z

    if-eqz v0, :cond_9

    .line 612
    iput p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    if-eqz p3, :cond_7

    .line 613
    iget-object p2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mOnPageChangeListener:Lcom/taobao/uikit/component/LoopViewPager$OnPageChangeListener;

    if-eqz p2, :cond_7

    .line 615
    invoke-interface {p2, p1}, Lcom/taobao/uikit/component/LoopViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_7
    if-eqz p3, :cond_8

    .line 617
    iget-object p2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mInternalPageChangeListener:Lcom/taobao/uikit/component/LoopViewPager$OnPageChangeListener;

    if-eqz p2, :cond_8

    .line 619
    invoke-interface {p2, p1}, Lcom/taobao/uikit/component/LoopViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 621
    :cond_8
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->requestLayout()V

    goto :goto_3

    .line 625
    :cond_9
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/component/LoopViewPager;->populate(I)V

    .line 626
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/taobao/uikit/component/LoopViewPager;->scrollToItem(IZIZ)V

    :goto_3
    return-void

    .line 578
    :cond_a
    :goto_4
    invoke-direct {p0, v1}, Lcom/taobao/uikit/component/LoopViewPager;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method setInternalPageChangeListener(Lcom/taobao/uikit/component/LoopViewPager$OnPageChangeListener;)Lcom/taobao/uikit/component/LoopViewPager$OnPageChangeListener;
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mInternalPageChangeListener:Lcom/taobao/uikit/component/LoopViewPager$OnPageChangeListener;

    .line 753
    iput-object p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mInternalPageChangeListener:Lcom/taobao/uikit/component/LoopViewPager$OnPageChangeListener;

    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method setOnAdapterChangeListener(Lcom/taobao/uikit/component/LoopViewPager$OnAdapterChangeListener;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapterChangeListener:Lcom/taobao/uikit/component/LoopViewPager$OnAdapterChangeListener;

    return-void
.end method

.method public setOnPageChangeListener(Lcom/taobao/uikit/component/LoopViewPager$OnPageChangeListener;)V
    .locals 0

    .line 674
    iput-object p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mOnPageChangeListener:Lcom/taobao/uikit/component/LoopViewPager$OnPageChangeListener;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .line 808
    iget v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mPageMargin:I

    .line 809
    iput p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mPageMargin:I

    .line 811
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getWidth()I

    move-result v1

    .line 812
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/taobao/uikit/component/LoopViewPager;->recomputeScrollPosition(IIII)V

    .line 814
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    .line 850
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/component/LoopViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 834
    iput-object p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 837
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 839
    :goto_0
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/component/LoopViewPager;->setWillNotDraw(Z)V

    .line 840
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->invalidate()V

    return-void
.end method

.method public setPageTransformer(ZLcom/taobao/uikit/component/LoopViewPager$PageTransformer;)V
    .locals 4

    .line 688
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 691
    :goto_0
    iget-object v3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mPageTransformer:Lcom/taobao/uikit/component/LoopViewPager$PageTransformer;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eq v2, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 692
    :goto_2
    iput-object p2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mPageTransformer:Lcom/taobao/uikit/component/LoopViewPager$PageTransformer;

    .line 693
    invoke-virtual {p0, v2}, Lcom/taobao/uikit/component/LoopViewPager;->setChildrenDrawingOrderEnabledCompat(Z)V

    if-eqz v2, :cond_4

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    .line 696
    :cond_3
    iput v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mDrawingOrder:I

    goto :goto_3

    .line 700
    :cond_4
    iput v1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mDrawingOrder:I

    :goto_3
    if-eqz v3, :cond_5

    .line 704
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->populate()V

    :cond_5
    return-void
.end method

.method public setRatio(F)V
    .locals 0

    .line 3569
    iput p1, p0, Lcom/taobao/uikit/component/LoopViewPager;->mRatio:F

    .line 3570
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->requestLayout()V

    return-void
.end method

.method smoothScrollTo(II)V
    .locals 1

    const/4 v0, 0x0

    .line 889
    invoke-virtual {p0, p1, p2, v0}, Lcom/taobao/uikit/component/LoopViewPager;->smoothScrollTo(III)V

    return-void
.end method

.method smoothScrollTo(III)V
    .locals 8

    .line 901
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 904
    invoke-direct {p0, v1}, Lcom/taobao/uikit/component/LoopViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    .line 907
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getScrollX()I

    move-result v3

    .line 908
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getScrollY()I

    move-result v4

    sub-int v5, p1, v3

    sub-int v6, p2, v4

    if-nez v5, :cond_1

    if-nez v6, :cond_1

    .line 914
    invoke-direct {p0, v1}, Lcom/taobao/uikit/component/LoopViewPager;->completeScroll(Z)V

    .line 915
    invoke-virtual {p0}, Lcom/taobao/uikit/component/LoopViewPager;->populate()V

    .line 916
    invoke-direct {p0, v1}, Lcom/taobao/uikit/component/LoopViewPager;->setScrollState(I)V

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 920
    invoke-direct {p0, p1}, Lcom/taobao/uikit/component/LoopViewPager;->setScrollingCacheEnabled(Z)V

    const/4 p1, 0x2

    .line 921
    invoke-direct {p0, p1}, Lcom/taobao/uikit/component/LoopViewPager;->setScrollState(I)V

    .line 923
    invoke-direct {p0}, Lcom/taobao/uikit/component/LoopViewPager;->getClientWidth()I

    move-result p1

    .line 924
    div-int/lit8 p2, p1, 0x2

    .line 925
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float p2, p2

    .line 926
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/component/LoopViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v0

    mul-float v0, v0, p2

    add-float/2addr p2, v0

    .line 929
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-lez p3, :cond_2

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 932
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 936
    :cond_2
    iget-object p2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget p3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mCurItem:I

    invoke-virtual {p2, p3}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result p2

    mul-float p1, p1, p2

    .line 937
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcom/taobao/uikit/component/LoopViewPager;->mPageMargin:I

    int-to-float p3, p3

    add-float/2addr p1, p3

    div-float/2addr p2, p1

    add-float/2addr p2, v1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float p2, p2, p1

    float-to-int p1, p2

    :goto_0
    const/16 p2, 0x258

    .line 940
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 942
    iget-object v2, p0, Lcom/taobao/uikit/component/LoopViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 943
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 856
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/uikit/component/LoopViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

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
