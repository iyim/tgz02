.class Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "UTRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 39
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 41
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->access$000(Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .line 47
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 48
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;

    invoke-static {p3}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->access$100(Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;)I

    move-result v0

    add-int/2addr v0, p2

    invoke-static {p3, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->access$102(Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;I)I

    .line 49
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getScrollState()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;

    .line 50
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->access$100(Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;)I

    move-result p1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->access$200(Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;)I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 p2, 0x64

    if-le p1, p2, :cond_0

    .line 51
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->access$000(Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;)V

    :cond_0
    return-void
.end method
