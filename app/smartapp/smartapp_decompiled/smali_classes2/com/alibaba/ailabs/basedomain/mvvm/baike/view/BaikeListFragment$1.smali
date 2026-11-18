.class Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "BaikeListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment$1;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 82
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 87
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 88
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment$1;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->access$000(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;)Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/VerticalScrollBar;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment$1;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->access$100(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 94
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment$1;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->access$100(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p2

    .line 95
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment$1;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->access$100(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p1

    .line 96
    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment$1;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;

    invoke-static {p3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->access$100(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result p3

    goto :goto_0

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment$1;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->access$100(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 98
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment$1;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->access$100(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p2

    .line 99
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment$1;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->access$100(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result p1

    .line 100
    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment$1;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;

    invoke-static {p3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->access$100(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollExtent()I

    move-result p3

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    sub-int/2addr p1, p3

    const/4 p3, 0x0

    if-eqz p1, :cond_3

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float p2, p2, p3

    int-to-float p1, p1

    div-float p3, p2, p1

    .line 107
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment$1;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->access$000(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;)Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/VerticalScrollBar;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/VerticalScrollBar;->onScrollPercentChanged(F)V

    return-void
.end method
