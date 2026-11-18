.class public Lcom/taobao/android/dinamicx/widget/DXSliderLayout$SliderScrollListener;
.super Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;
.source "DXSliderLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamicx/widget/DXSliderLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SliderScrollListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 300
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 3

    .line 304
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 307
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 308
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 309
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 311
    check-cast p1, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;

    if-nez p2, :cond_1

    .line 314
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->getCurrentIndex()I

    move-result p2

    if-eq p2, v1, :cond_0

    if-ne v1, v0, :cond_0

    .line 315
    invoke-virtual {p1, v1}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->setCurrentIndex(I)V

    .line 317
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->getOnPageChangeListener()Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$OnPageChangeListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 318
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->getOnPageChangeListener()Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$OnPageChangeListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$OnPageChangeListener;->onPageSelected(I)V

    :cond_0
    return-void

    :cond_1
    if-nez v1, :cond_2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    if-ne p2, v2, :cond_2

    .line 329
    invoke-virtual {p1, v1}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->setCurrentIndex(I)V

    .line 331
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->getOnPageChangeListener()Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$OnPageChangeListener;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 332
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->getOnPageChangeListener()Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$OnPageChangeListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$OnPageChangeListener;->onPageSelected(I)V

    :cond_2
    return-void
.end method
