.class Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "RowScrollRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$1;->this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 116
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 121
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 123
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$1;->this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->access$000(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)Lcom/alibaba/ailabs/appbox/view/OnRecycleViewScrollListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$1;->this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 127
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$1;->this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$1;->this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->computeVerticalScrollOffset()I

    move-result p2

    .line 129
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$1;->this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->computeVerticalScrollRange()I

    move-result p1

    .line 130
    iget-object p3, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$1;->this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    invoke-virtual {p3}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->computeVerticalScrollExtent()I

    move-result p3

    goto :goto_0

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$1;->this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 132
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$1;->this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->computeHorizontalScrollOffset()I

    move-result p2

    .line 133
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$1;->this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->computeHorizontalScrollRange()I

    move-result p1

    .line 134
    iget-object p3, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$1;->this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    invoke-virtual {p3}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->computeHorizontalScrollExtent()I

    move-result p3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    sub-int/2addr p1, p3

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float p2, p2, p3

    int-to-float p1, p1

    div-float p3, p2, p1

    .line 141
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$1;->this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->access$000(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)Lcom/alibaba/ailabs/appbox/view/OnRecycleViewScrollListener;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/alibaba/ailabs/appbox/view/OnRecycleViewScrollListener;->onScrollPercentChanged(F)V

    :cond_3
    return-void
.end method
