.class Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$MarketTabAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MarketTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MarketTabAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)V
    .locals 2

    .line 519
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$MarketTabAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MarketTabAdapter getContext():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketTabFragment"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$MarketTabAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$MarketTabAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$1100(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 537
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$MarketTabAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$400(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 538
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$MarketTabAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {v0, p1, p2}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$1200(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 528
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$MarketTabAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {p2}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$400(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 529
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$MarketTabAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->item_market_three_one_2:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 530
    new-instance p2, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$Market3Item;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$MarketTabAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-direct {p2, v0, p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$Market3Item;-><init>(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
