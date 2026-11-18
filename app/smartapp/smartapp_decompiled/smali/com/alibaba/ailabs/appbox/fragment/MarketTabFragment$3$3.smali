.class Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3$3;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "MarketTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3$3;->this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    .line 429
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 432
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p2

    .line 433
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p1, p1, -0x20

    if-lt p2, p1, :cond_0

    .line 436
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "currentLast = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "try 2 load next ... "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onScrollStateChanged"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3$3;->this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$900(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 445
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
