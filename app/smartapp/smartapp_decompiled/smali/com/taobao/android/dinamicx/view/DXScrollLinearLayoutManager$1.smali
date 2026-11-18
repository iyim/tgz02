.class Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager$1;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "DXScrollLinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;->smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;Landroid/content/Context;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager$1;->this$0:Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .locals 1

    const/4 v0, -0x1

    if-eq p5, v0, :cond_2

    if-eqz p5, :cond_1

    const/4 p1, 0x1

    if-eq p5, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sub-int/2addr p4, p2

    return p4

    :cond_1
    sub-int/2addr p3, p1

    return p3

    :cond_2
    sub-int/2addr p3, p1

    return p3
.end method

.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager$1;->this$0:Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;

    invoke-static {p1}, Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;->access$000(Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;)F

    move-result p1

    return p1
.end method

.method protected calculateTimeForScrolling(I)I
    .locals 0

    .line 69
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result p1

    return p1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager$1;->this$0:Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;

    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
