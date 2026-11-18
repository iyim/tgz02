.class public Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;
.super Landroid/view/ViewGroup;
.source "TBDialogRootLayout.java"


# static fields
.field private static final INDEX_NEGATIVE:I = 0x1

.field private static final INDEX_NEUTRAL:I = 0x0

.field private static final INDEX_POSITIVE:I = 0x2


# instance fields
.field private mBottomOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mButtonBarHeight:I

.field private mButtonGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

.field private mButtonHorizontalEdgeMargin:I

.field private mButtonPaddingFull:I

.field private final mButtons:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

.field protected mCardDialog:Z

.field private mCloseButton:Landroid/view/View;

.field private mContent:Landroid/view/View;

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDividerWidth:I

.field private mDrawBottomDivider:Z

.field private mDrawTopDivider:Z

.field private mForceStack:Z

.field private mIsStacked:Z

.field private mMaxBoundedHeight:I

.field private mMaxCardHeight:I

.field private mMaxCardWidth:I

.field private mNoTitleNoPadding:Z

.field private mNoTitlePaddingFull:I

.field private mReducePaddingNoTitleNoButtons:Z

.field private mTitleBar:Landroid/view/View;

.field private mTopOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mUseFullPadding:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 73
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 36
    sget-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->START:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtonGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    const/4 v0, 0x3

    .line 42
    new-array v0, v0, [Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtons:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mDrawTopDivider:Z

    .line 46
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mDrawBottomDivider:Z

    .line 47
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mForceStack:Z

    .line 48
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mIsStacked:Z

    const/4 v1, 0x1

    .line 49
    iput-boolean v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mUseFullPadding:Z

    .line 51
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mCardDialog:Z

    .line 68
    iput v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mMaxBoundedHeight:I

    .line 69
    iput v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mMaxCardHeight:I

    .line 70
    iput v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mMaxCardWidth:I

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1, v1, v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    sget-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->START:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtonGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    const/4 v0, 0x3

    .line 42
    new-array v0, v0, [Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtons:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mDrawTopDivider:Z

    .line 46
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mDrawBottomDivider:Z

    .line 47
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mForceStack:Z

    .line 48
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mIsStacked:Z

    const/4 v1, 0x1

    .line 49
    iput-boolean v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mUseFullPadding:Z

    .line 51
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mCardDialog:Z

    .line 68
    iput v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mMaxBoundedHeight:I

    .line 69
    iput v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mMaxCardHeight:I

    .line 70
    iput v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mMaxCardWidth:I

    .line 79
    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    sget-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->START:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtonGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    const/4 v0, 0x3

    .line 42
    new-array v0, v0, [Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtons:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mDrawTopDivider:Z

    .line 46
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mDrawBottomDivider:Z

    .line 47
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mForceStack:Z

    .line 48
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mIsStacked:Z

    const/4 v1, 0x1

    .line 49
    iput-boolean v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mUseFullPadding:Z

    .line 51
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mCardDialog:Z

    .line 68
    iput v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mMaxBoundedHeight:I

    .line 69
    iput v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mMaxCardHeight:I

    .line 70
    iput v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mMaxCardWidth:I

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    sget-object p4, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->START:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    iput-object p4, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtonGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    const/4 p4, 0x3

    .line 42
    new-array p4, p4, [Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    iput-object p4, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtons:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    const/4 p4, 0x0

    .line 45
    iput-boolean p4, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mDrawTopDivider:Z

    .line 46
    iput-boolean p4, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mDrawBottomDivider:Z

    .line 47
    iput-boolean p4, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mForceStack:Z

    .line 48
    iput-boolean p4, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mIsStacked:Z

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mUseFullPadding:Z

    .line 51
    iput-boolean p4, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mCardDialog:Z

    .line 68
    iput p4, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mMaxBoundedHeight:I

    .line 69
    iput p4, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mMaxCardHeight:I

    .line 70
    iput p4, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mMaxCardWidth:I

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebView;)Z
    .locals 0

    .line 29
    invoke-static {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->canWebViewScroll(Landroid/webkit/WebView;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mDrawTopDivider:Z

    return p1
.end method

.method static synthetic access$202(Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mDrawBottomDivider:Z

    return p1
.end method

.method static synthetic access$300(Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;Landroid/view/ViewGroup;ZZ)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->addScrollListener(Landroid/view/ViewGroup;ZZ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;)[Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtons:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    return-object p0
.end method

.method static synthetic access$500(Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;Landroid/webkit/WebView;ZZZ)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->invalidateDividersForWebView(Landroid/webkit/WebView;ZZZ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$600(Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;Landroid/view/ViewGroup;ZZZ)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->invalidateDividersForScrollingView(Landroid/view/ViewGroup;ZZZ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private addScrollListener(Landroid/view/ViewGroup;ZZ)V
    .locals 1

    if-nez p3, :cond_0

    .line 505
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mTopOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mBottomOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-nez v0, :cond_3

    .line 507
    :cond_1
    new-instance v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout$2;-><init>(Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;Landroid/view/ViewGroup;ZZ)V

    if-nez p3, :cond_2

    .line 526
    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mTopOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 527
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mTopOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    goto :goto_0

    .line 529
    :cond_2
    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mBottomOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 530
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mBottomOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 532
    :goto_0
    invoke-interface {v0}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V

    :cond_3
    return-void
.end method

.method private static canAdapterViewScroll(Landroid/widget/AdapterView;)Z
    .locals 5

    .line 600
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 604
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 605
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    sub-int/2addr v4, v2

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    .line 607
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 609
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result v3

    if-ge v0, v3, :cond_3

    return v2

    .line 612
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 613
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v3, p0

    if-le v0, v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    :cond_5
    return v2
.end method

.method public static canRecyclerViewScroll(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 565
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 567
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 568
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    .line 571
    instance-of v3, v1, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v3, :cond_5

    .line 572
    nop

    nop

    .line 573
    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    return v0

    :cond_1
    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 583
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    if-le v1, v2, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0

    .line 575
    :cond_5
    new-instance p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$NotImplementedException;

    const-string v0, "Material Dialogs currently only supports LinearLayoutManager. Please report any new layout managers."

    invoke-direct {p0, v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$NotImplementedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    return v0
.end method

.method private static canScrollViewScroll(Landroid/widget/ScrollView;)Z
    .locals 4

    .line 587
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 589
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 590
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    if-ge v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static canWebViewScroll(Landroid/webkit/WebView;)Z
    .locals 2

    .line 595
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScale()F

    move-result p0

    mul-float v1, v1, p0

    cmpg-float p0, v0, v1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static getBottomView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 628
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 631
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 632
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 633
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    if-ne v3, v4, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private static getTopView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 643
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 646
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 647
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 648
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-nez v3, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 95
    sget-object v0, Lcom/taobao/uikit/extend/R$styleable;->TBDialogRootLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 96
    sget p2, Lcom/taobao/uikit/extend/R$styleable;->TBDialogRootLayout_uik_mdReducePaddingNoTitleNoButtons:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mReducePaddingNoTitleNoButtons:Z

    .line 98
    sget p2, Lcom/taobao/uikit/extend/R$styleable;->TBDialogRootLayout_uik_mdCardDialog:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mCardDialog:Z

    .line 100
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/taobao/uikit/extend/R$dimen;->uik_mdTitleVerticalPadding:I

    invoke-static {p1, p2}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mNoTitlePaddingFull:I

    .line 103
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/taobao/uikit/extend/R$dimen;->uik_mdBttonFrameVerticalPadding:I

    invoke-static {p1, p2}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtonPaddingFull:I

    .line 105
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/taobao/uikit/extend/R$dimen;->uik_mdButtonPaddingFrameSide:I

    invoke-static {p1, p2}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtonHorizontalEdgeMargin:I

    .line 106
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/taobao/uikit/extend/R$dimen;->uik_mdButtonHeight:I

    invoke-static {p1, p2}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtonBarHeight:I

    .line 108
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mDividerPaint:Landroid/graphics/Paint;

    .line 109
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/taobao/uikit/extend/R$dimen;->uik_mdDividerHeight:I

    invoke-static {p1, p2}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mDividerWidth:I

    .line 110
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/taobao/uikit/extend/R$color;->uik_mdDividerColor:I

    invoke-static {p2, p3}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    invoke-virtual {p0, v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->setWillNotDraw(Z)V

    .line 113
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/taobao/uikit/extend/R$dimen;->uik_mdMaxBoundedHeight:I

    invoke-static {p1, p2}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getDimension(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mMaxBoundedHeight:I

    .line 114
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/taobao/uikit/extend/R$dimen;->uik_mdMaxCardHeight:I

    invoke-static {p1, p2}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getDimension(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mMaxCardHeight:I

    .line 115
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/taobao/uikit/extend/R$dimen;->uik_mdMaxCardWidth:I

    invoke-static {p1, p2}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getDimension(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mMaxCardWidth:I

    return-void
.end method

.method private invalidateDividersForScrollingView(Landroid/view/ViewGroup;ZZZ)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 537
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_1

    .line 538
    iget-object p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mTitleBar:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 539
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    const/16 v2, 0x8

    if-eq p2, v2, :cond_0

    .line 541
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    add-int/2addr p2, v2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-le p2, v2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mDrawTopDivider:Z

    :cond_1
    if-eqz p3, :cond_3

    .line 544
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_3

    if-eqz p4, :cond_2

    .line 546
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    sub-int/2addr p3, v0

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-ge p2, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mDrawBottomDivider:Z

    :cond_3
    return-void
.end method

.method private invalidateDividersForWebView(Landroid/webkit/WebView;ZZZ)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 552
    iget-object p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mTitleBar:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 553
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    const/16 v2, 0x8

    if-eq p2, v2, :cond_0

    .line 555
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result p2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getPaddingTop()I

    move-result v2

    add-int/2addr p2, v2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mDrawTopDivider:Z

    :cond_1
    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    .line 560
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result p2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getScale()F

    move-result p1

    mul-float p3, p3, p1

    cmpg-float p1, p2, p3

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mDrawBottomDivider:Z

    :cond_3
    return-void
.end method

.method private invertGravityIfNecessary()V
    .locals 3

    .line 423
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    return-void

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 425
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 426
    sget-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout$3;->$SwitchMap$com$taobao$uikit$extend$component$unify$Dialog$GravityEnum:[I

    iget-object v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtonGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    invoke-virtual {v2}, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 431
    :cond_1
    sget-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->START:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtonGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    goto :goto_0

    .line 428
    :cond_2
    sget-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->END:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtonGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    :cond_3
    :goto_0
    return-void
.end method

.method private static isVisible(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 275
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 276
    instance-of v3, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    if-eqz v3, :cond_2

    .line 277
    nop

    nop

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    return v2
.end method

.method private setUpDividersVisibility(Landroid/view/View;ZZ)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 447
    :cond_0
    instance-of v0, p1, Landroid/widget/ScrollView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 448
    check-cast p1, Landroid/widget/ScrollView;

    .line 449
    invoke-static {p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->canScrollViewScroll(Landroid/widget/ScrollView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->addScrollListener(Landroid/view/ViewGroup;ZZ)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 453
    iput-boolean v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mDrawTopDivider:Z

    :cond_2
    if-eqz p3, :cond_a

    .line 455
    iput-boolean v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mDrawBottomDivider:Z

    goto :goto_0

    .line 457
    :cond_3
    instance-of v0, p1, Landroid/widget/AdapterView;

    if-eqz v0, :cond_6

    .line 458
    nop

    nop

    .line 459
    invoke-static {p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->canAdapterViewScroll(Landroid/widget/AdapterView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 460
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->addScrollListener(Landroid/view/ViewGroup;ZZ)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 463
    iput-boolean v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mDrawTopDivider:Z

    :cond_5
    if-eqz p3, :cond_a

    .line 465
    iput-boolean v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mDrawBottomDivider:Z

    goto :goto_0

    .line 467
    :cond_6
    instance-of v0, p1, Landroid/webkit/WebView;

    if-eqz v0, :cond_7

    .line 468
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout$1;-><init>(Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;Landroid/view/View;ZZ)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 485
    :cond_7
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_9

    .line 489
    nop

    nop

    invoke-static {p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->canRecyclerViewScroll(Landroid/support/v7/widget/RecyclerView;)Z

    move-result p1

    if-eqz p2, :cond_8

    .line 491
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mDrawTopDivider:Z

    :cond_8
    if-eqz p3, :cond_a

    .line 493
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mDrawBottomDivider:Z

    goto :goto_0

    .line 494
    :cond_9
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    .line 495
    nop

    nop

    invoke-static {p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->getTopView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 496
    invoke-direct {p0, v0, p2, p3}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->setUpDividersVisibility(Landroid/view/View;ZZ)V

    .line 497
    invoke-static {p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->getBottomView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eq p1, v0, :cond_a

    const/4 p2, 0x1

    .line 499
    invoke-direct {p0, p1, v1, p2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->setUpDividersVisibility(Landroid/view/View;ZZ)V

    :cond_a
    :goto_0
    return-void
.end method


# virtual methods
.method public noTitleNoPadding()V
    .locals 1

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mNoTitleNoPadding:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 283
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 285
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mContent:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 286
    iget-boolean v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mDrawTopDivider:Z

    if-eqz v1, :cond_0

    .line 287
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    const/4 v2, 0x0

    .line 288
    iget v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mDividerWidth:I

    sub-int v1, v0, v1

    int-to-float v3, v1

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mDividerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 291
    :cond_0
    iget-boolean v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mDrawBottomDivider:Z

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    const/4 v2, 0x0

    int-to-float v3, v0

    .line 293
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    iget v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mDividerWidth:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mDividerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 5

    .line 124
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 125
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 126
    invoke-virtual {p0, v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 127
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/taobao/uikit/extend/R$id;->uik_mdTitleFrame:I

    if-ne v3, v4, :cond_0

    .line 128
    iput-object v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mTitleBar:Landroid/view/View;

    goto :goto_1

    .line 129
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/taobao/uikit/extend/R$id;->uik_mdButtonDefaultNeutral:I

    if-ne v3, v4, :cond_1

    .line 130
    iget-object v3, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtons:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    check-cast v2, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    aput-object v2, v3, v0

    goto :goto_1

    .line 131
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/taobao/uikit/extend/R$id;->uik_mdButtonDefaultNegative:I

    if-ne v3, v4, :cond_2

    .line 132
    iget-object v3, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtons:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    check-cast v2, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    goto :goto_1

    .line 133
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/taobao/uikit/extend/R$id;->uik_mdButtonDefaultPositive:I

    if-ne v3, v4, :cond_3

    .line 134
    iget-object v3, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtons:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    const/4 v4, 0x2

    check-cast v2, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    aput-object v2, v3, v4

    goto :goto_1

    .line 135
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/taobao/uikit/extend/R$id;->uik_mdButtonClose:I

    if-ne v3, v4, :cond_4

    .line 136
    iput-object v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mCloseButton:Landroid/view/View;

    goto :goto_1

    .line 138
    :cond_4
    iput-object v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mContent:Landroid/view/View;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .line 301
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mTitleBar:Landroid/view/View;

    invoke-static {p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->isVisible(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 302
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mTitleBar:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 303
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mTitleBar:Landroid/view/View;

    add-int/2addr p1, p3

    invoke-virtual {v0, p2, p3, p4, p1}, Landroid/view/View;->layout(IIII)V

    move p3, p1

    goto :goto_0

    .line 305
    :cond_0
    iget-boolean p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mNoTitleNoPadding:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mUseFullPadding:Z

    if-eqz p1, :cond_1

    .line 306
    iget p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mNoTitlePaddingFull:I

    add-int/2addr p3, p1

    .line 309
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mContent:Landroid/view/View;

    invoke-static {p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->isVisible(Landroid/view/View;)Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    .line 310
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mContent:Landroid/view/View;

    sub-int v1, p4, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v1, v2

    div-int/2addr v2, v0

    iget-object v3, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/2addr v1, v0

    iget-object v3, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {p1, v2, p3, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 311
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p3, p1

    .line 314
    :cond_2
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mCloseButton:Landroid/view/View;

    invoke-static {p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->isVisible(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 315
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mCloseButton:Landroid/view/View;

    sub-int v1, p4, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v1, v2

    div-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/taobao/uikit/extend/R$dimen;->uik_mdCardMarginBottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v3, p3

    iget-object v4, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mCloseButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v1, v4

    div-int/2addr v1, v0

    iget-object v4, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mCloseButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/taobao/uikit/extend/R$dimen;->uik_mdCardMarginBottom:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr p3, v4

    iget-object v4, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mCloseButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr p3, v4

    invoke-virtual {p1, v2, v3, v1, p3}, Landroid/view/View;->layout(IIII)V

    .line 318
    :cond_3
    iget-boolean p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mIsStacked:Z

    const/4 p3, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 319
    iget p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtonPaddingFull:I

    sub-int/2addr p5, p1

    .line 320
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtons:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_11

    aget-object v2, p1, v1

    .line 321
    invoke-static {v2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 322
    invoke-virtual {v2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->getMeasuredHeight()I

    move-result v3

    sub-int v3, p5, v3

    invoke-virtual {v2, p2, v3, p4, p5}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->layout(IIII)V

    .line 323
    invoke-virtual {v2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr p5, v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 329
    :cond_5
    iget-boolean p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mUseFullPadding:Z

    if-eqz p1, :cond_6

    .line 330
    iget p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtonPaddingFull:I

    sub-int/2addr p5, p1

    .line 331
    :cond_6
    iget p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtonBarHeight:I

    sub-int p1, p5, p1

    .line 343
    iget v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtonHorizontalEdgeMargin:I

    .line 349
    iget-object v3, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtons:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_8

    .line 351
    iget-object v3, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtonGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    sget-object v5, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->END:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    if-ne v3, v5, :cond_7

    add-int v3, p2, v2

    .line 353
    iget-object v5, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtons:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v3

    const/4 v6, -0x1

    goto :goto_2

    :cond_7
    sub-int v5, p4, v2

    .line 356
    iget-object v3, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtons:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v5, v3

    move v6, v3

    .line 359
    :goto_2
    iget-object v7, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtons:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    aget-object v7, v7, v0

    invoke-virtual {v7, v3, p1, v5, p5}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->layout(IIII)V

    .line 360
    iget-object v3, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtons:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    :cond_8
    const/4 v6, -0x1

    .line 363
    :goto_3
    iget-object v3, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtons:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    aget-object v3, v3, p3

    invoke-static {v3}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 365
    iget-object v3, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtonGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    sget-object v5, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->END:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    if-ne v3, v5, :cond_9

    add-int/2addr v2, p2

    .line 367
    iget-object v3, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtons:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    :goto_4
    const/4 v5, -0x1

    goto :goto_5

    .line 368
    :cond_9
    iget-object v3, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtonGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    sget-object v5, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->START:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    if-ne v3, v5, :cond_a

    sub-int v3, p4, v2

    .line 370
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtons:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v3, v2

    goto :goto_4

    .line 372
    :cond_a
    iget v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtonHorizontalEdgeMargin:I

    add-int/2addr v2, p2

    .line 373
    iget-object v3, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtons:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    move v5, v3

    .line 376
    :goto_5
    iget-object v7, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtons:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    aget-object v7, v7, p3

    invoke-virtual {v7, v2, p1, v3, p5}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->layout(IIII)V

    goto :goto_6

    :cond_b
    const/4 v5, -0x1

    .line 379
    :goto_6
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtons:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 381
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtonGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    sget-object v3, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->END:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    if-ne v2, v3, :cond_c

    .line 382
    iget p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtonHorizontalEdgeMargin:I

    sub-int/2addr p4, p2

    .line 383
    iget-object p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtons:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    aget-object p2, p2, v1

    invoke-virtual {p2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->getMeasuredWidth()I

    move-result p2

    sub-int p2, p4, p2

    goto :goto_9

    .line 384
    :cond_c
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtonGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    sget-object v3, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->START:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    if-ne v2, v3, :cond_d

    .line 385
    iget p4, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtonHorizontalEdgeMargin:I

    add-int/2addr p2, p4

    .line 386
    iget-object p4, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtons:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    aget-object p4, p4, v1

    invoke-virtual {p4}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p2

    goto :goto_9

    :cond_d
    if-ne v5, v4, :cond_e

    if-eq v6, v4, :cond_e

    .line 389
    iget-object p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtons:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    aget-object p2, p2, v1

    invoke-virtual {p2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->getMeasuredWidth()I

    move-result p2

    sub-int v5, v6, p2

    goto :goto_8

    :cond_e
    if-ne v6, v4, :cond_f

    if-eq v5, v4, :cond_f

    .line 391
    iget-object p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtons:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    aget-object p2, p2, v1

    invoke-virtual {p2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->getMeasuredWidth()I

    move-result p2

    goto :goto_7

    :cond_f
    if-ne v6, v4, :cond_10

    sub-int/2addr p4, p2

    .line 393
    div-int/2addr p4, v0

    iget-object p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtons:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    aget-object p2, p2, v1

    invoke-virtual {p2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->getMeasuredWidth()I

    move-result p2

    div-int/2addr p2, v0

    sub-int v5, p4, p2

    .line 394
    iget-object p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtons:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    aget-object p2, p2, v1

    invoke-virtual {p2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->getMeasuredWidth()I

    move-result p2

    :goto_7
    add-int v6, v5, p2

    :cond_10
    :goto_8
    move p2, v5

    move p4, v6

    .line 400
    :goto_9
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtons:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    aget-object v0, v0, v1

    invoke-virtual {v0, p2, p1, p4, p5}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->layout(IIII)V

    .line 404
    :cond_11
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mContent:Landroid/view/View;

    invoke-direct {p0, p1, p3, p3}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->setUpDividersVisibility(Landroid/view/View;ZZ)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 11

    .line 145
    iget-boolean v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mCardDialog:Z

    if-eqz v0, :cond_3

    .line 146
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 147
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 149
    iget v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mMaxCardHeight:I

    if-lez v2, :cond_0

    if-ge v2, v1, :cond_0

    .line 151
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 152
    iget v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mMaxCardHeight:I

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 153
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 156
    :cond_0
    iget v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mMaxCardWidth:I

    if-lez v2, :cond_1

    if-ge v2, v0, :cond_1

    .line 158
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 159
    iget v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mMaxCardWidth:I

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 160
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 165
    :cond_1
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mCloseButton:Landroid/view/View;

    invoke-virtual {p0, v2, p1, p2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->measureChild(Landroid/view/View;II)V

    .line 167
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mCloseButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v2, v1, v2

    .line 169
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/taobao/uikit/extend/R$dimen;->uik_mdCardMarginBottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    .line 172
    iget-object v3, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mContent:Landroid/view/View;

    invoke-static {v3}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 173
    iget-object v3, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mContent:Landroid/view/View;

    invoke-virtual {p0, v3, p1, p2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->measureChild(Landroid/view/View;II)V

    .line 175
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr v2, p1

    :cond_2
    sub-int/2addr v1, v2

    .line 178
    invoke-virtual {p0, v0, v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->setMeasuredDimension(II)V

    goto/16 :goto_8

    .line 181
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 182
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 184
    iget v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mMaxBoundedHeight:I

    if-lez v2, :cond_4

    if-ge v2, v1, :cond_4

    .line 185
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 186
    iget v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mMaxBoundedHeight:I

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 189
    :cond_4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/4 v2, 0x1

    .line 191
    iput-boolean v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mUseFullPadding:Z

    .line 195
    iget-boolean v3, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mForceStack:Z

    const/4 v4, 0x0

    if-nez v3, :cond_8

    .line 197
    iget-object v3, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtons:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    array-length v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v6, v5, :cond_6

    aget-object v9, v3, v6

    if-eqz v9, :cond_5

    .line 198
    invoke-static {v9}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 199
    invoke-virtual {v9, v4, v4}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setStacked(ZZ)V

    .line 200
    invoke-virtual {p0, v9, p1, p2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->measureChild(Landroid/view/View;II)V

    .line 201
    invoke-virtual {v9}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 206
    :cond_6
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v5, Lcom/taobao/uikit/extend/R$dimen;->uik_mdNeutralButtonMargin:I

    invoke-static {v3, v5}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    if-le v7, v3, :cond_7

    const/4 v3, 0x1

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 214
    :goto_1
    iput-boolean v3, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mIsStacked:Z

    if-eqz v3, :cond_a

    .line 216
    iget-object v3, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtons:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    array-length v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v6, v5, :cond_b

    aget-object v9, v3, v6

    if-eqz v9, :cond_9

    .line 217
    invoke-static {v9}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 218
    invoke-virtual {v9, v2, v4}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setStacked(ZZ)V

    .line 219
    invoke-virtual {p0, v9, p1, p2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->measureChild(Landroid/view/View;II)V

    .line 220
    invoke-virtual {v9}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x1

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_a
    const/4 v7, 0x0

    :cond_b
    if-eqz v8, :cond_d

    .line 230
    iget-boolean p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mIsStacked:Z

    if-eqz p1, :cond_c

    sub-int p1, v1, v7

    .line 232
    iget p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtonPaddingFull:I

    add-int/lit8 v3, p2, 0x0

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v4

    goto :goto_4

    .line 235
    :cond_c
    iget p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtonBarHeight:I

    sub-int p1, v1, p1

    .line 236
    iget p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtonPaddingFull:I

    add-int/lit8 v3, p2, 0x0

    goto :goto_3

    .line 241
    :cond_d
    iget p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtonPaddingFull:I

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 v3, p1, 0x0

    move p1, v1

    :goto_3
    const/4 p2, 0x0

    .line 244
    :goto_4
    iget-object v5, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mTitleBar:Landroid/view/View;

    invoke-static {v5}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 245
    iget-object v5, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mTitleBar:Landroid/view/View;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v6, v4}, Landroid/view/View;->measure(II)V

    .line 247
    iget-object v5, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mTitleBar:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr p1, v5

    goto :goto_5

    .line 248
    :cond_e
    iget-boolean v5, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mNoTitleNoPadding:Z

    if-nez v5, :cond_f

    .line 249
    iget v5, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mNoTitlePaddingFull:I

    add-int/2addr v3, v5

    .line 252
    :cond_f
    :goto_5
    iget-object v5, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mContent:Landroid/view/View;

    invoke-static {v5}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 253
    iget-object v5, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mContent:Landroid/view/View;

    const/high16 v6, -0x80000000

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    sub-int v9, p1, p2

    .line 254
    invoke-static {v9, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 253
    invoke-virtual {v5, v7, v6}, Landroid/view/View;->measure(II)V

    .line 256
    iget-object v5, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mContent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int v6, p1, v3

    if-gt v5, v6, :cond_12

    .line 257
    iget-boolean v5, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mReducePaddingNoTitleNoButtons:Z

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mTitleBar:Landroid/view/View;

    invoke-static {v5}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_11

    if-eqz v8, :cond_10

    goto :goto_6

    .line 261
    :cond_10
    iput-boolean v4, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mUseFullPadding:Z

    .line 262
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p2

    sub-int v4, p1, v2

    goto :goto_7

    .line 258
    :cond_11
    :goto_6
    iput-boolean v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mUseFullPadding:Z

    .line 259
    iget-object p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mContent:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, v3

    sub-int v4, p1, p2

    goto :goto_7

    .line 265
    :cond_12
    iput-boolean v4, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mUseFullPadding:Z

    goto :goto_7

    :cond_13
    move v4, p1

    :goto_7
    sub-int/2addr v1, v4

    .line 270
    invoke-virtual {p0, v0, v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->setMeasuredDimension(II)V

    :goto_8
    return-void
.end method

.method public setButtonGravity(Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtonGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    .line 419
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->invertGravityIfNecessary()V

    return-void
.end method

.method public setButtonStackedGravity(Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;)V
    .locals 4

    .line 438
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mButtons:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 440
    invoke-virtual {v3, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setStackedGravity(Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDividerColor(I)V
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 414
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->invalidate()V

    return-void
.end method

.method public setForceStack(Z)V
    .locals 0

    .line 408
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mForceStack:Z

    .line 409
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->invalidate()V

    return-void
.end method
