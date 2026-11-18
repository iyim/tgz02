.class public Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "CustomRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView$OnScrollListenerWrapper;
    }
.end annotation


# instance fields
.field private isUpMove:Z

.field private mInitialMotionY:F

.field private mScrollListener:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/OnRecycleViewScrollListener;

.field private mScrollListenerWrapper:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView$OnScrollListenerWrapper;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->init(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->setScrollBar()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 38
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView$OnScrollListenerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView$OnScrollListenerWrapper;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView$1;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->mScrollListenerWrapper:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView$OnScrollListenerWrapper;

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->mScrollListenerWrapper:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView$OnScrollListenerWrapper;

    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 41
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->mTouchSlop:I

    const/4 p1, 0x1

    .line 44
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->setFocusableInTouchMode(Z)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->setFocusable(Z)V

    return-void
.end method

.method private isFirstViewAtTop()Z
    .locals 4

    .line 71
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 74
    :cond_0
    instance-of v2, v0, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 75
    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 78
    :cond_2
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private setScrollBar()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->mScrollListener:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/OnRecycleViewScrollListener;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 125
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->computeVerticalScrollOffset()I

    move-result v1

    .line 127
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->computeVerticalScrollRange()I

    move-result v0

    .line 128
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->computeVerticalScrollExtent()I

    move-result v2

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->computeHorizontalScrollOffset()I

    move-result v1

    .line 131
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->computeHorizontalScrollRange()I

    move-result v0

    .line 132
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->computeHorizontalScrollExtent()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    sub-int/2addr v0, v2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    int-to-float v0, v0

    div-float v2, v1, v0

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->mScrollListener:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/OnRecycleViewScrollListener;

    invoke-interface {v0, v2}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/OnRecycleViewScrollListener;->onScrollPercentChanged(F)V

    :cond_3
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->mInitialMotionY:F

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->isUpMove:Z

    .line 56
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->mInitialMotionY:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->isUpMove:Z

    .line 67
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->mScrollListenerWrapper:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView$OnScrollListenerWrapper;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView$OnScrollListenerWrapper;->access$102(Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView$OnScrollListenerWrapper;Landroid/support/v7/widget/RecyclerView$OnScrollListener;)Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method public setScrollBarListener(Lcom/alibaba/ailabs/genie/custom/contacts/common/view/OnRecycleViewScrollListener;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->mScrollListener:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/OnRecycleViewScrollListener;

    return-void
.end method
