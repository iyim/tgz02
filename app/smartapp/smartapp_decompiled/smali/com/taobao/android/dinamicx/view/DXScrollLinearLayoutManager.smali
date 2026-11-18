.class public Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;
.super Lcom/taobao/android/dinamicx/view/DXLinearLayoutManager;
.source "DXScrollLinearLayoutManager.java"


# instance fields
.field private calculateSpeedPerPixel:F

.field private calculateTimeForScrolling:F


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/view/DXLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/high16 p1, 0x43200000    # 160.0f

    .line 16
    iput p1, p0, Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;->calculateTimeForScrolling:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 18
    iput p1, p0, Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;->calculateSpeedPerPixel:F

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;)F
    .locals 0

    .line 14
    iget p0, p0, Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;->calculateSpeedPerPixel:F

    return p0
.end method


# virtual methods
.method public calculateSpeedPerPixel(I)V
    .locals 1

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 81
    iput p1, p0, Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;->calculateSpeedPerPixel:F

    return-void

    .line 86
    :cond_0
    iget v0, p0, Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;->calculateTimeForScrolling:F

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p0, Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;->calculateSpeedPerPixel:F

    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .locals 5

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 27
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;->getWidthMode()I

    move-result v1

    iget v2, p2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    .line 28
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;->canScrollHorizontally()Z

    move-result v3

    const/4 v4, 0x0

    .line 27
    invoke-static {v0, v1, v4, v2, v3}, Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    .line 29
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;->getHeightMode()I

    move-result v2

    .line 30
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, p2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget p2, p2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    .line 32
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;->canScrollVertically()Z

    move-result p3

    .line 29
    invoke-static {v1, v2, v3, p2, p3}, Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    .line 33
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public setCalculateTimeForScrolling(F)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;->calculateTimeForScrolling:F

    return-void
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 0

    .line 38
    new-instance p2, Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager$1;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager$1;-><init>(Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;Landroid/content/Context;)V

    .line 75
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 76
    invoke-virtual {p0, p2}, Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
